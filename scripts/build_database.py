"""Normalize extracted source tables without inventing opcode meanings."""
import hashlib
import json
import re
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / 'dados-extraidos/1.2.47/TextAsset/data'
OUT = ROOT / 'dados-extraidos/1.2.47/database'
LANGS = ['ko', 'en', 'es', 'it', 'pt', 'zh-Hans', 'zh-Hant', 'ja', 'id', 'ar']


def write(name, data):
    (OUT / name).write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding='utf-8')


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    tables, invalid = {}, []
    for path in sorted(SOURCE.glob('*.txt')):
        name = path.stem.split('_', 1)[1]
        try:
            tables[name] = (path, json.loads(path.read_text(encoding='utf-8-sig')))
        except (ValueError, UnicodeError) as exc:
            invalid.append({'file': path.name, 'error': str(exc)})
    events, edges, counts, duplicates = [], [], Counter(), []
    for name, (path, table) in tables.items():
        match = re.fullmatch(r'(EventMainStart|EventMain|EventNormal|EventSub|EventBattle|EventTreasure)(\d)', name)
        if not match:
            continue
        group, lang_index = match.group(1), int(match.group(2))
        lang = LANGS[lang_index]
        seen = set()
        for raw in table['list']:
            event_id = raw['id']
            uid = f'{lang}:{group}:{event_id}'
            if uid in seen:
                duplicates.append(uid)
            seen.add(uid)
            events.append({'uid': uid, 'language': lang, 'group': group, 'id': event_id,
                           'source_asset': name, 'status': 'extracted', 'raw': raw})
            counts[f'{lang}:{group}'] += 1
            for ci, choice in enumerate(raw.get('choice', [])):
                for ri, result in enumerate(choice.get('result', [])):
                    edges.append({'from': uid, 'choice_index': ci, 'result_index': ri,
                                  'choice_text': choice.get('text', ''),
                                  'choice_required_raw': choice.get('required', ''),
                                  'next_event_raw': result.get('nextEvent'),
                                  'result': result,
                                  'target_resolution': 'pending_runtime_semantics'})
    write('events.json', events)
    write('edges.json', edges)
    for name in ['itemJson', 'monsterJson', 'abilityJson', 'traitJson', 'cosmeticsJson', 'pathMissionJson']:
        if name in tables:
            records = []
            catalog = tables[name][1]
            for raw in catalog.get('list', catalog.get('items', [])):
                localized = {key: {LANGS[i]: value for i, value in enumerate(values)}
                             for key, values in raw.items() if isinstance(values, list) and len(values) == len(LANGS)}
                records.append({'raw': raw, 'localized': localized, 'status': 'extracted'})
            write(f'{name}.json', records)
    write('other_tables.json', {name: table for name, (_, table) in tables.items() if not name.startswith('Event')})
    all_ids = {e['uid'] for e in events}
    pt_events = [e for e in events if e['language'] == 'pt']
    pt_edges = [e for e in edges if e['from'].startswith('pt:')]
    write('events.pt.json', pt_events)
    write('edges.pt.json', pt_edges)
    stats = {'version': '1.2.47', 'json_tables': len(tables), 'non_json_text_assets': invalid,
             'event_counts_by_language_and_group': dict(sorted(counts.items())),
             'events_pt': len(pt_events), 'choices_pt': sum(len(e['raw'].get('choice', [])) for e in pt_events),
             'results_pt': len(pt_edges), 'duplicate_event_ids': duplicates,
             'catalogs': {name: len(tables[name][1].get('list', [])) for name in
                          ['itemJson', 'monsterJson', 'abilityJson', 'traitJson'] if name in tables},
             'unresolved_semantics': ['required', 'chance', 'reward', 'type', 'nextEvent', 'place'],
             'input_hashes': {name: hashlib.sha256(p.read_bytes()).hexdigest() for name, (p, _) in tables.items()}}
    write('summary.json', stats)
    # A small inspection map: arrows show source nextEvent IDs, not validated runtime transitions.
    sample = [e for e in pt_events if e['group'] == 'EventMain' and e['id'] in range(6)]
    lines = ['# Primeiro mapa de inspeção — EventMain, IDs 0 a 5', '',
             'Origem: versão 1.2.47, `EventMain4`. Texto em português extraído do jogo.', '',
             'As setas abaixo representam `nextEvent` bruto. O significado de `type`, os saltos entre tabelas e os códigos negativos ainda precisam ser confirmado no código. Nenhuma Melhor Escolha foi atribuída.', '', '```mermaid', 'flowchart TD']
    for event in sample:
        eid = event['id']
        lines.append(f'  E{eid}["EventMain · {eid}"]')
        for ci, choice in enumerate(event['raw'].get('choice', [])):
            cid = f'C{eid}_{ci}'
            text = re.sub(r'["<>\[\]{}|\n\r]', ' ', choice.get('text', ''))
            lines.extend([f'  {cid}["{text}"]', f'  E{eid} --> {cid}'])
            for ri, result in enumerate(choice.get('result', [])):
                rid = f'R{eid}_{ci}_{ri}'
                label = f'type={result.get("type")} / chance={result.get("chance")} / nextEvent={result.get("nextEvent")}'
                label = label.replace('|', ' / ').replace('"', '')
                lines.extend([f'  {rid}["{label}"]', f'  {cid} --> {rid}'])
                target = result.get('nextEvent')
                if isinstance(target, int) and target in range(6):
                    lines.append(f'  {rid} -.-> E{target}')
    lines.extend(['```', ''])
    docs = ROOT / 'docs'
    docs.mkdir(exist_ok=True)
    (docs / 'primeiro-mapa.md').write_text('\n'.join(lines), encoding='utf-8')
    assert not duplicates, duplicates
    assert all(edge['from'] in all_ids for edge in edges)
    print(json.dumps({k: v for k, v in stats.items() if k not in ('input_hashes', 'non_json_text_assets', 'event_counts_by_language_and_group')}, ensure_ascii=False, indent=2))


if __name__ == '__main__':
    main()
