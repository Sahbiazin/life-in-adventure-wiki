"""Package the source records and conservative, traceable wiki annotations."""
import json
import re
import sys
import unicodedata
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
sys.path.insert(0, str(ROOT / 'scripts'))
from decode_rules import STAT, decode_required, decode_reward, exact_neutral_probabilities
from audit_rules import audit

CATALOGS = {'item': 'itemJson', 'monster': 'monsterJson', 'ability': 'abilityJson', 'trait': 'traitJson'}


def plain(text):
    return re.sub(r'\s+', ' ', re.sub(r'<[^>]*>|\|[^|]*\|', '', str(text))).strip()


def normalized(text):
    return ''.join(c for c in unicodedata.normalize('NFD', plain(text).lower()) if not unicodedata.combining(c))


def catalogs_from(database):
    catalogs = []
    for kind, name in CATALOGS.items():
        rows = json.loads((database / f'{name}.json').read_text(encoding='utf-8'))
        names = {str(r['raw']['id']): r['localized']['name'].get('pt') for r in rows
                 if kind == 'ability' and r['localized']['name'].get('pt')}
        for row in rows:
            raw, localized = row['raw'], row['localized']
            ident = str(raw['index'] if kind == 'item' else raw['id'])
            variant = str(raw['number']) if kind == 'ability' else None
            key = f'{kind}:{ident}' + (f':{variant}' if variant is not None else '')
            title = localized['name'].get('pt') or names.get(ident) or f'Registro #{ident}'
            description = '\n\n'.join(localized[k]['pt'] for k in ['desc', 'desc0', 'desc1', 'desc2']
                                      if localized.get(k, {}).get('pt'))
            catalogs.append({'key': key, 'kind': kind, 'id': ident, 'variant': variant,
                             'title': title, 'description': description, 'raw': raw})
    tables = json.loads((database / 'other_tables.json').read_text(encoding='utf-8'))
    for group, table in [('main', 'mainEp4'), ('sub', 'subEp4')]:
        source = tables[table]
        if len(source['index']) != len(source['text']):
            raise ValueError(f'Mismatched ending arrays: {table}')
        for ident, text in zip(source['index'], source['text']):
            heading = re.match(r'^\s*<([^>]+)>', text)
            title = heading[1] if heading else f'Epílogo #{ident}'
            catalogs.append({'key': f'ending:{group}:{ident}', 'kind': 'ending', 'id': str(ident),
                             'variant': None, 'ending_group': group, 'story': ident // 1000,
                             'title': title, 'description': text[heading.end():].lstrip() if heading else text,
                             'raw': {'index': ident, 'text': text, 'source_table': table}})
    assert len({c['key'] for c in catalogs}) == len(catalogs), 'Duplicate catalog keys'
    return catalogs


def amount(value):
    return f'{value:g}'


def rule_view(raw, reward=False):
    if not raw:
        return None
    decoded = decode_reward(raw) if reward else decode_required(raw)
    tokens = []
    for part in decoded['effects' if reward else 'conditions']:
        token = {'raw': part['raw'], 'known': part['decoded']}
        if not part['decoded']:
            token['text'] = 'Efeito ainda não interpretado' if reward else 'Condição ainda não interpretada'
        else:
            idx, qty = part['index'], amount(part['quantity']) if part['quantity'] is not None else ''
            op = part.get('operation')
            if reward and op in ('add_item', 'remove_item'):
                token.update(text=('Receber item' if op == 'add_item' else 'Remover item') + f' · quantidade {qty}',
                             ref=f'item:{idx}', relation='Concede item' if op == 'add_item' else 'Remove item')
            elif reward and op in ('record_main_ending', 'record_sub_ending', 'remove_main_ending', 'remove_sub_ending'):
                group = 'main' if 'main' in op else 'sub'
                token.update(text=('Remover registro de epílogo' if op.startswith('remove') else 'Registrar epílogo nesta aventura') + f' · história #{idx}, final #{qty}',
                             ref=f'ending:{group}:{part["ending_id"]}', relation='Remove epílogo' if op.startswith('remove') else 'Registra epílogo')
            elif not reward and part['domain'] == 'ability_effective':
                token.update(text=f'Habilidade efetiva: {"pelo menos" if part["comparison"] == ">=" else "menos de"} {qty}',
                             ref=f'ability:{idx}:0', relation='Requisito de habilidade')
            elif not reward and part['domain'] == 'traitList':
                token.update(text='Possuir o traço' if part['comparison'] == 'contains' else 'Não possuir o traço',
                             ref=f'trait:{idx}', relation='Exige traço' if part['comparison'] == 'contains' else 'Exige ausência de traço')
            elif not reward and part['domain'] in ('mainEpList', 'subEpList'):
                group = 'main' if part['domain'] == 'mainEpList' else 'sub'
                token.update(text=('Ter' if part['comparison'] == 'contains' else 'Não ter') + f' o registro do epílogo · história #{idx}, final #{qty}',
                             ref=f'ending:{group}:{idx * 1000 + part["quantity"]}', relation='Consulta registro de epílogo')
            elif not reward and part['domain'] == 'sex':
                token['text'] = f'Sexo do personagem deve corresponder ao código {qty}'
            elif reward and op == 'change_user_data':
                label = STAT.get(idx, f'Atributo de índice {idx} (nome não identificado)')
                token['text'] = f'{label}: {"+" if part["quantity"] >= 0 else ""}{qty}'
            elif not reward and part['domain'] == 'userData_effective':
                label = STAT.get(idx, f'Atributo de índice {idx} (nome não identificado)')
                token['text'] = f'{label}: {"pelo menos" if part["comparison"] == ">=" else "menos de"} {qty}'
            elif not reward and part['domain'] == 'inventory':
                token.update(text=f'Possuir {"pelo menos" if part["comparison"] == ">=" else "menos de"} {qty} unidade(s) do item',
                             ref=f'item:{idx}', relation='Exige item' if part['comparison'] == '>=' else 'Exige quantidade inferior de item')
            else:
                domain = {'set_main_state': 'mainEventList', 'set_sub_state': 'subEventList', 'set_chain_state': 'chainEventList'}.get(op) if reward else part['domain']
                label = {'mainEventList': 'história principal', 'subEventList': 'conto', 'chainEventList': 'cadeia de eventos'}[domain]
                state = f'Estado de {label} #{idx}'
                token['state'] = f'{domain}:{idx}'
                token['text'] = f'Definir {state.lower()} como {qty}' if reward else f'{state} {"deve ser diferente de" if part["comparison"] == "!=" else "deve ser"} {qty}'
        if part['decoded']:
            token['model'] = {key: part[key] for key in ('domain', 'operation', 'index', 'quantity', 'comparison', 'context_requirements', 'ending_id') if key in part}
        if part.get('context_requirements'):
            token['text'] += '; exige conto habilitado e compatibilidade com o conto atual quando informado pelo jogo'
        tokens.append(token)
    return {'operator': decoded.get('operator', 'AND'), 'tokens': tokens}


def annotate(event, by_key, mentions):
    raw = event['raw']
    refs = []

    def track(view, scope):
        if view:
            for token in view['tokens']:
                if token.get('ref') in by_key:
                    refs.append({'key': token['ref'], 'relation': token['relation'], 'scope': scope, 'raw': token['raw']})
        return view

    rules = {'required': track(rule_view(raw.get('required', '')), 'Entrada'), 'choices': []}
    for ci, choice in enumerate(raw.get('choice', [])):
        view = {'required': track(rule_view(choice.get('required', '')), f'Escolha {ci+1}'), 'results': []}
        probabilities = exact_neutral_probabilities(choice.get('result', []))
        for ri, result in enumerate(choice.get('result', [])):
            scope = f'Escolha {ci+1} · resultado {ri+1}'
            view['results'].append({'required': track(rule_view(result.get('required', '')), scope),
                                    'reward': track(rule_view(result.get('reward', ''), True), scope),
                                    'probability': probabilities[ri] if probabilities else None})
        rules['choices'].append(view)
    for token in str(raw.get('monster', '')).split('|'):
        ident = token.split('_')[0]
        key = f'monster:{ident}'
        if key in by_key:
            refs.append({'key': key, 'relation': 'Monstro listado no encontro', 'scope': 'Encontro', 'raw': token})
    # A textual mention is searchable evidence, never an inferred reward or requirement.
    texts = [raw.get('text', '')]
    for choice in raw.get('choice', []):
        texts.append(choice.get('text', ''))
        texts.extend(r.get('text', '') for r in choice.get('result', []))
    text = normalized(' '.join(texts))
    explicit = {r['key'] for r in refs}
    pattern, keys = mentions
    for match in pattern.finditer(text):
        key = keys[match.group()]
        if key not in explicit:
            refs.append({'key': key, 'relation': 'Menção no texto', 'scope': 'Texto do evento'})
            explicit.add(key)
    return rules, refs


def build(database, output):
    originals = json.loads((database / 'events.pt.json').read_text(encoding='utf-8'))
    catalogs = catalogs_from(database)
    by_key = {c['key']: c for c in catalogs}
    names = {}
    for c in catalogs:
        if c['kind'] != 'ending' and (c['kind'] != 'ability' or c['variant'] == '0'):
            names.setdefault(normalized(c['title']), []).append(c['key'])
    mention_keys = {name: keys[0] for name, keys in names.items()
                    if len(keys) == 1 and len(name) >= 4 and name != 'normal'}
    # Longest names first: a mention of a named sword should not also match a
    # shorter item's name inside it. Compile once rather than rescan per name.
    pattern = re.compile(r'(?<!\w)(?:' + '|'.join(re.escape(name) for name in sorted(mention_keys, key=len, reverse=True)) + r')(?!\w)')
    mentions = (pattern, mention_keys)
    data = []
    for event in originals:
        rules, refs = annotate(event, by_key, mentions)
        data.append({'id': event['id'], 'group': event['group'], 'source': event['source_asset'],
                     'data': event['raw'], 'rules': rules, 'references': refs})
    for c in catalogs:
        links = []
        for field in ('Ab', 'fixAbility', 'choiceAbility'):
            for token in str(c['raw'].get(field, '')).split('|'):
                parts = token.split('_')
                if len(parts) != 2:
                    continue
                key = f'ability:{parts[0]}:0'
                if key in by_key:
                    links.append({'key': key, 'relation': f'Habilidade no campo {field}', 'raw': token})
        c['references'] = links
    report, states = audit(originals)
    payload = {'runModelVersion': 1, 'audit': report, 'stateIndex': states, 'version': '1.2.47', 'events': data, 'catalogs': catalogs,
               'rulesStatus': 'Análise estática parcial do build 366; sem validação em jogo.'}
    temporary = output.with_suffix('.js.tmp')
    temporary.write_text('window.ATLAS_DATA=' + json.dumps(payload, ensure_ascii=False, separators=(',', ':')) + ';\n', encoding='utf-8')
    temporary.replace(output)
    print(f'Packaged {len(data)} events, {len(catalogs)} catalog records, {sum(len(e["references"]) for e in data)} links')


if __name__ == '__main__':
    build(ROOT / 'dados-extraidos/1.2.47/database', HERE / 'dist/events-data.js')
