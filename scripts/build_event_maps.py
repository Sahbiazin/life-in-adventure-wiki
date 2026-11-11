"""Build a complete source-faithful Portuguese Markdown event atlas and graph."""
import csv
import hashlib
import html
import json
import re
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / 'dados-extraidos/1.2.47/database/events.pt.json'
OUT = ROOT / 'mapas/1.2.47/pt'
GROUPS = {'EventMainStart': 'Inícios de aventura', 'EventMain': 'Eventos principais',
          'EventSub': 'Eventos secundários', 'EventNormal': 'Eventos normais',
          'EventTreasure': 'Eventos de tesouro', 'EventBattle': 'Eventos de combate'}


def filename(e):
    return f'{e["group"]}/{e["id"]:04d}.md'


def clean(text, limit=100):
    text = re.sub(r'<[^>]*>|\|[^|]*\|', '', str(text))
    text = re.sub(r'\s+', ' ', text).strip()
    return text[:limit] + ('…' if len(text) > limit else '')


def cell(text):
    return str(text).replace('|', '&#124;').replace('\n', '<br>').replace('\r', '')


def label(text):
    return html.escape(clean(text, 80), quote=True).replace('[', '&#91;').replace(']', '&#93;')


def destination(event, result, by_id):
    value = result.get('nextEvent')
    if type(value) is not int:
        return {'kind': 'unresolved', 'raw': value}
    if value < 0:
        return {'kind': 'special', 'raw': value}
    target = by_id.get((event['group'], value))
    if target is None:
        return {'kind': 'missing', 'raw': value}
    return {'kind': 'same_table_reference', 'raw': value, 'uid': target['uid'], 'page': filename(target),
            'scope': 'continuation_target_not_unconditional_execution'}


def state_tokens(raw):
    """Only exact positive state tests/assignments confirmed by native inspection."""
    for token in str(raw).split('|'):
        parts = token.split('_')
        if len(parts) == 3 and parts[0] in ('5', '13') and parts[1].isdigit():
            try:
                value = float(parts[2])
                if not value.is_integer():
                    continue
            except ValueError:
                continue
            yield ('chainEventList' if parts[0] == '5' else 'mainEventList', int(parts[1]), int(value))


def make_graph(events):
    by_id = {(e['group'], e['id']): e for e in events}
    if len(by_id) != len(events):
        raise ValueError('Duplicate IDs within a table')
    nodes, links, incoming, transitions = [], [], defaultdict(list), []
    state_readers, state_writers = defaultdict(list), defaultdict(list)
    for event in events:
        uid, raw = event['uid'], event['raw']
        nodes.append({'id': uid, 'kind': 'event', 'source_asset': event['source_asset'],
                      'source_id': event['id'], 'group': event['group'], 'page': filename(event), 'raw': raw})
        for key in state_tokens(raw.get('required', '')):
            state_readers[key].append({'event': uid, 'level': 'event', 'raw': raw['required']})
        for ci, choice in enumerate(raw.get('choice', [])):
            cid = f'{uid}:choice:{ci}'
            nodes.append({'id': cid, 'kind': 'choice', 'parent': uid, 'index': ci, 'raw': choice})
            links.append({'from': uid, 'to': cid, 'kind': 'contains_choice'})
            for key in state_tokens(choice.get('required', '')):
                state_readers[key].append({'event': uid, 'level': 'choice', 'choice': ci, 'raw': choice['required']})
            for ri, result in enumerate(choice.get('result', [])):
                rid = f'{cid}:result:{ri}'
                nodes.append({'id': rid, 'kind': 'result', 'parent': cid, 'index': ri, 'raw': result})
                links.append({'from': cid, 'to': rid, 'kind': 'possible_result'})
                dest = destination(event, result, by_id)
                transition = {'event': uid, 'choice': ci, 'result': ri, 'result_node': rid,
                              'destination': dest, 'choice_required_raw': choice.get('required', ''), 'raw': result}
                transitions.append(transition)
                if dest['kind'] == 'same_table_reference':
                    links.append({'from': rid, 'to': dest['uid'], 'kind': 'next_event_reference'})
                    incoming[dest['uid']].append(transition)
                elif dest['kind'] == 'special':
                    links.append({'from': rid, 'to': f'special:{dest["raw"]}', 'kind': 'special_destination'})
                for key in state_tokens(result.get('required', '')):
                    state_readers[key].append({'event': uid, 'level': 'result', 'choice': ci, 'result': ri, 'raw': result['required']})
                for key in state_tokens(result.get('reward', '')):
                    state_writers[key].append({'event': uid, 'choice': ci, 'result': ri, 'raw': result['reward']})
    specials = sorted({t['destination']['raw'] for t in transitions if t['destination']['kind'] == 'special'})
    nodes += [{'id': f'special:{s}', 'kind': 'special', 'raw': s} for s in specials]
    dependencies = [{'domain': k[0], 'index': k[1], 'value': k[2],
                     'readers': state_readers[k], 'writers': state_writers[k],
                     'scope': 'potential_dependency_not_guaranteed_unlock'}
                    for k in sorted(state_readers.keys() | state_writers.keys())]
    return {'nodes': nodes, 'links': links}, transitions, incoming, dependencies


def write_event(event, transitions, incoming):
    group, eid, raw = event['group'], event['id'], event['raw']
    rows = {(t['choice'], t['result']): t for t in transitions}
    lines = [f'# {GROUPS[group]} · {eid}', '', '[Índice da tabela](index.md) · [Índice geral](../index.md)', '',
             f'ID: `{event["uid"]}` · Fonte: `{event["source_asset"]}` · Versão: 1.2.47.', '',
             'Mapeamento estático dos arquivos; a disponibilidade e a execução dependem do estado da run.', '',
             '## Texto do evento', '', raw.get('text') or '*Sem texto no arquivo.*', '',
             '## Dados de entrada', '', '```json',
             json.dumps({k: v for k, v in raw.items() if k not in ('text', 'choice')}, ensure_ascii=False, indent=2), '```', '',
             '## Mapa das escolhas', '', '```mermaid', 'flowchart TD', f'  E["{group} · {eid}"]']
    for ci, choice in enumerate(raw.get('choice', [])):
        lines += [f'  C{ci}["{label(choice.get("text")) or "Sem texto no arquivo"}"]', f'  E --> C{ci}']
        for ri, result in enumerate(choice.get('result', [])):
            rid = f'R{ci}_{ri}'
            dest = rows[ci, ri]['destination']
            target = f'{group} {dest["raw"]}' if dest['kind'] == 'same_table_reference' else f'Destino especial {dest["raw"]}' if dest['kind'] == 'special' else f'Pendente {dest["raw"]}'
            lines += [f'  {rid}["Resultado {ri + 1} · {label(target)}"]', f'  C{ci} --> {rid}']
    lines += ['```', '', '## Escolhas e resultados', '']
    for ci, choice in enumerate(raw.get('choice', [])):
        lines += [f'### Escolha {ci + 1}', '', choice.get('text') or '*Sem texto no arquivo; o papel dessa opção depende da interface do jogo.*', '',
                  'Requisitos e outros campos da escolha:', '', '```json',
                  json.dumps({k: v for k, v in choice.items() if k not in ('text', 'result')}, ensure_ascii=False, indent=2), '```', '']
        for ri, result in enumerate(choice.get('result', [])):
            dest = rows[ci, ri]['destination']
            if dest['kind'] == 'same_table_reference':
                target = f'[Evento {dest["raw"]}]({dest["raw"]:04d}.md) na mesma tabela'
            elif dest['kind'] == 'special':
                target = f'[Destino especial `{dest["raw"]}`](../destinos-especiais.md)'
            else:
                target = f'Destino pendente: `{dest["raw"]}`'
            lines += [f'#### Resultado {ci + 1}.{ri + 1}', '', result.get('text') or '*Sem texto no arquivo.*', '',
                      f'Continuação registrada: {target}.', '', '```json',
                      json.dumps({k: v for k, v in result.items() if k != 'text'}, ensure_ascii=False, indent=2), '```', '']
    lines += ['## Referências que chegam a este evento', '']
    if not incoming:
        lines += ['Nenhum `nextEvent` positivo da mesma tabela aponta para este nó. Isso não prova que seja inacessível: sorteio e estado de história podem selecioná-lo.', '']
    for row in incoming:
        src = int(row['event'].rsplit(':', 1)[1])
        lines.append(f'- [Evento {src} · escolha {row["choice"] + 1} · resultado {row["result"] + 1}]({src:04d}.md#escolha-{row["choice"] + 1})')
    lines.append('')
    (OUT / filename(event)).write_text('\n'.join(lines), encoding='utf-8')


def main():
    events = json.loads(SOURCE.read_text(encoding='utf-8'))
    OUT.mkdir(parents=True, exist_ok=True)
    graph, transitions, incoming, dependencies = make_graph(events)
    by_event = defaultdict(list)
    for t in transitions:
        by_event[t['event']].append(t)
    for group, title in GROUPS.items():
        folder = OUT / group
        folder.mkdir(exist_ok=True)
        selected = sorted([e for e in events if e['group'] == group], key=lambda e: e['id'])
        lines = [f'# {title}', '', '[Índice geral](../index.md)', '',
                 '| ID | Texto inicial | Escolhas | Resultados |', '|---|---|---:|---:|']
        for event in selected:
            raw = event['raw']
            lines.append(f'| [{event["id"]}]({event["id"]:04d}.md) | {cell(clean(raw.get("text", ""))) or "Sem texto inicial"} | {len(raw.get("choice", []))} | {len(by_event[event["uid"]])} |')
            write_event(event, by_event[event['uid']], incoming[event['uid']])
        (folder / 'index.md').write_text('\n'.join(lines) + '\n', encoding='utf-8')
    counts = Counter(t['destination']['kind'] for t in transitions)
    summary = {'version': '1.2.47', 'language': 'pt', 'events': len(events),
               'choices': sum(len(e['raw'].get('choice', [])) for e in events), 'results': len(transitions),
               'destinations': dict(counts),
               'special_destinations': dict(Counter(str(t['destination']['raw']) for t in transitions if t['destination']['kind'] == 'special')),
               'blank_choice_labels': sum(not c.get('text') for e in events for c in e['raw'].get('choice', [])),
               'groups': dict(Counter(e['group'] for e in events)), 'state_dependency_entries': len(dependencies),
               'source_sha256': hashlib.sha256(SOURCE.read_bytes()).hexdigest(),
               'scope': 'all Portuguese event nodes in the supplied APK, not a claim of runtime reachability or all server content'}
    for name, data in [('graph.json', graph), ('transitions.json', transitions), ('state-dependencies.json', dependencies), ('coverage.json', summary)]:
        (OUT / name).write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding='utf-8')
    with (OUT / 'transitions.csv').open('w', encoding='utf-8-sig', newline='') as stream:
        writer = csv.writer(stream)
        writer.writerow(['event', 'choice_index_zero_based', 'result_index_zero_based', 'destination_kind', 'next_event_raw', 'target_uid', 'choice_required', 'result_required', 'chance', 'type', 'reward', 'place', 'text'])
        for t in transitions:
            r, d = t['raw'], t['destination']
            writer.writerow([t['event'], t['choice'], t['result'], d['kind'], d['raw'], d.get('uid', ''), t['choice_required_raw'], r.get('required', ''), r.get('chance', ''), r.get('type', ''), r.get('reward', ''), r.get('place', ''), r.get('text', '')])
    lines = ['# Mapa de eventos e escolhas — Life in Adventure', '', 'Versão 1.2.47 · Português · Mapeamento dos arquivos do APK fornecido.', '',
             f'**{summary["events"]:,} nós · {summary["choices"]:,} escolhas · {summary["results"]:,} resultados.**'.replace(',', '.'), '',
             'Cada página inclui texto, requisitos, resultados, recompensas, mapa local e referências de entrada. As conexões representam possibilidades registradas, condicionadas ao estado do jogo.', '',
             '| Tabela | Nós |', '|---|---:|']
    lines += [f'| [{title}]({group}/index.md) | {summary["groups"][group]} |' for group, title in GROUPS.items()]
    lines += ['', '## Arquivos de consulta', '', '- [Tabela de todas as transições](transitions.csv)', '- [Grafo completo em JSON](graph.json)', '- [Dependências potenciais de estados](state-dependencies.json)', '- [Cobertura e contagens](coverage.json)', '- [Destinos especiais](destinos-especiais.md)', '',
              '## Limites', '', 'A cobertura abrange todos os nós em português extraídos das seis tabelas. Não comprova disponibilidade em runs normais, acesso a histórias específicas nem conteúdo remoto. Não há classificações de escolhas.', '',
              'As dependências de estado ligam leituras e gravações dos códigos conhecidos 5 e 13; não representam desbloqueio garantido. Outros códigos permanecem preservados.', '',
              f'{summary["blank_choice_labels"]} escolhas têm texto vazio na fonte. Foram mantidas com seus índices, inclusive opções que podem depender da interface de combate.', '']
    (OUT / 'index.md').write_text('\n'.join(lines), encoding='utf-8')
    lines = ['# Destinos especiais', '', '[Índice geral](index.md)', '',
             'Valores negativos são comandos de fluxo. Não criamos eventos fictícios para eles.', '', '| Código | Ocorrências | Interpretação atual |', '|---|---:|---|']
    for key, value in sorted(summary['special_destinations'].items()):
        desc = 'Continuar a aventura após o encontro; flags podem levar a outros encontros.' if key == '-2' else 'Tratamento especial encontrado no código; significado completo ainda pendente.'
        lines.append(f'| `{key}` | {value} | {desc} |')
    (OUT / 'destinos-especiais.md').write_text('\n'.join(lines) + '\n', encoding='utf-8')
    assert sum(summary['destinations'].values()) == summary['results']
    assert not counts['missing'] and not counts['unresolved'], summary['destinations']
    assert len({n['id'] for n in graph['nodes']}) == len(graph['nodes'])
    node_ids = {n['id'] for n in graph['nodes']}
    assert all(link['from'] in node_ids and link['to'] in node_ids for link in graph['links'])
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == '__main__':
    main()
