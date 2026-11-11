"""Measure static interpretation; it is not a claim of simulation readiness."""
import json
from collections import Counter, defaultdict
from pathlib import Path
from decode_rules import decode_required, decode_reward, exact_neutral_probabilities

ROOT = Path(__file__).resolve().parents[1]
STATE_OPS = {'set_chain_state': 'chainEventList', 'set_sub_state': 'subEventList', 'set_main_state': 'mainEventList'}


def fields(event):
    raw = event['raw']
    yield 'required', raw.get('required', ''), 'Entrada'
    for ci, choice in enumerate(raw.get('choice', [])):
        yield 'required', choice.get('required', ''), f'Escolha {ci+1}'
        for ri, result in enumerate(choice.get('result', [])):
            scope = f'Escolha {ci+1} · resultado {ri+1}'
            yield 'required', result.get('required', ''), scope
            yield 'reward', result.get('reward', ''), scope


def audit(events):
    counts = {k: Counter() for k in ('required', 'reward')}
    unknown = {k: defaultdict(lambda: {'count': 0, 'examples': []}) for k in counts}
    states = {}
    affected, choices, exact_choices, results, exact_results = set(), 0, 0, 0, 0
    for event in events:
        key = f'{event["group"]}:{event["id"]}'
        for kind, raw, scope in fields(event):
            if not raw:
                continue
            decoded = decode_required(raw) if kind == 'required' else decode_reward(raw)
            count = counts[kind]
            count['fields'] += 1
            count['decoded_fields'] += int(decoded['fully_decoded'])
            for token in decoded['conditions' if kind == 'required' else 'effects']:
                count['commands'] += 1
                count['decoded_commands'] += int(token['decoded'])
                if not token['decoded']:
                    affected.add(key)
                    opcode = str(token.get('type', 'invalid'))
                    row = unknown[kind][opcode]
                    row['count'] += 1
                    if len(row['examples']) < 3:
                        row['examples'].append({'event': key, 'scope': scope, 'raw': token['raw']})
                domain = token.get('domain') if kind == 'required' else STATE_OPS.get(token.get('operation'))
                if token['decoded'] and domain in STATE_OPS.values():
                    state_key = f'{domain}:{token["index"]}'
                    state = states.setdefault(state_key, {'domain': domain, 'index': token['index'], 'readers': [], 'writers': []})
                    row = {'event': key, 'scope': scope, 'value': token['quantity'], 'raw': token['raw']}
                    if kind == 'required':
                        row['comparison'] = token['comparison']
                        if token.get('context_requirements'):
                            row['context_requirements'] = token['context_requirements']
                    state['readers' if kind == 'required' else 'writers'].append(row)
        for choice in event['raw'].get('choice', []):
            choices += 1
            rows = choice.get('result', [])
            results += len(rows)
            probabilities = exact_neutral_probabilities(rows)
            exact_choices += probabilities is not None
            exact_results += len(rows) if probabilities is not None else 0
    report = {'version': '1.2.47', 'build': 366, 'runtime_validated': False,
              'simulation_ready': False, 'events': len(events), 'choices': choices, 'results': results,
              'events_with_unknown_commands': len(affected),
              'static_probability_choices': exact_choices, 'static_probability_results': exact_results,
              'coverage': {k: {**dict(counts[k]), 'unknown': dict(sorted(unknown[k].items()))} for k in counts},
              'limitations': ['Combates, sorteios modificados e seleção aleatória de encontros ainda não modelados.',
                              'Alterações de atributos podem envolver limites, equipamentos e efeitos indiretos.',
                              'Conquistas e registro permanente no catálogo têm regras externas aos campos reward.',
                              'Pontuação normal e difícil exigem modelos distintos; a fórmula completa ainda não foi validada.',
                              'Uma dependência de estado não garante que um encontro será sorteado ou desbloqueado.']}
    return report, states


if __name__ == '__main__':
    events = json.loads((ROOT / 'dados-extraidos/1.2.47/database/events.pt.json').read_text(encoding='utf-8'))
    report, _ = audit(events)
    (ROOT / 'docs/atlas-readiness.json').write_text(json.dumps(report, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({k: v for k, v in report.items() if k not in ('coverage', 'limitations')}, ensure_ascii=False))
    for kind, row in report['coverage'].items():
        print(kind, f"{row['decoded_fields']}/{row['fields']} fields; {row['decoded_commands']}/{row['commands']} commands")
