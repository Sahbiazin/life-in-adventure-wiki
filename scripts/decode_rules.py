"""Conservative, partial decoder backed by ARM64 inspection of build 366."""
import json
import hashlib
import math
import struct
from collections import Counter
from fractions import Fraction
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DB = ROOT / 'dados-extraidos/1.2.47/database'
STAT = {0: 'Saúde', 1: 'Sanidade', 2: 'EXP', 4: 'Ouro', 12: 'Carisma'}


def f32(value):
    return struct.unpack('<f', struct.pack('<f', float(value)))[0]


def parse_token(raw):
    parts = raw.split('_')
    try:
        if len(parts) == 1:
            return {'raw': raw, 'length': 1, 'quantity': f32(raw)}
        if len(parts) == 3:
            return {'raw': raw, 'length': 3, 'type': int(parts[0]),
                    'target': parts[1], 'quantity': f32(parts[2])}
    except ValueError:
        pass
    return {'raw': raw, 'length': len(parts), 'parse_status': 'unsupported_preserved'}


def decode_required(raw):
    if not raw:
        return {'raw': raw, 'operator': 'AND', 'conditions': [], 'fully_decoded': True}
    tokens = raw.split('|')
    is_or = tokens[0] == '-1'
    if is_or:
        tokens = tokens[1:]
    conditions = []
    for token in tokens:
        part = parse_token(token)
        op = part.get('type')
        part['decoded'] = False
        if part['length'] == 3 and op in (1, 2, 5, 8, 10, 13):
            target = int(part['target'])
            part.update(decoded=True, index=target,
                        domain='userData_effective' if op in (1, 2) else 'inventory' if op in (8, 10) else 'chainEventList' if op == 5 else 'mainEventList',
                        comparison='>=' if op in (1, 8) else '<' if op in (2, 10) else '==')
            part['label'] = STAT.get(target, f'userData[{target}]') if op in (1, 2) else f'{part["domain"]}[{target}]'
            if op in (8, 10):
                part['quantity'] = round(part['quantity'])
            if op in (5, 13):
                part['quantity'] = math.trunc(part['quantity'])
        conditions.append(part)
    return {'raw': raw, 'operator': 'OR' if is_or else 'AND', 'conditions': conditions,
            'fully_decoded': all(p['decoded'] for p in conditions)}


def decode_reward(raw):
    parts = []
    for token in raw.split('|') if raw else []:
        part = parse_token(token)
        op = part.get('type')
        part['decoded'] = False
        if part['length'] == 3 and op in (0, 3, 4, 5, 13):
            target = int(part['target'])
            part.update(decoded=True, index=target,
                        operation={0: 'change_user_data', 3: 'add_item', 4: 'remove_item',
                                   5: 'set_chain_state', 13: 'set_main_state'}[op])
            if op == 0:
                part['label'] = STAT.get(target, f'userData[{target}]')
                part['note'] = 'Delta passed to ChangeUserData; caps and side effects depend on the index/state.'
            elif op in (5, 13):
                part['quantity'] = math.trunc(part['quantity'])
            elif op in (3, 4):
                part['quantity'] = max(0, round(part['quantity']))
        parts.append(part)
    return {'raw': raw, 'effects': parts, 'fully_decoded': all(p['decoded'] for p in parts)}


def base_weight(raw):
    """GetTotalChance only: excludes GetResultIndex's extra modifiers."""
    total, terms, parsed = 0, [], True
    for token in raw.split('|'):
        part = parse_token(token)
        parsed = parsed and 'parse_status' not in part
        if part['length'] == 1 and 'quantity' in part:
            total += math.trunc(part['quantity'])
        elif part.get('type') == 0:
            terms.append({'effective_user_data_index': int(part['target']), 'multiplier': part['quantity'], 'rounding': 'truncate_towards_zero_each_term'})
        # Other token shapes/types are ignored by GetTotalChance.
    return {'constant': total, 'dynamic_terms': terms, 'fully_parsed': parsed, 'scope': 'base_weight_before_result_modifiers'}


def exact_neutral_probabilities(results):
    """Only statically neutral results with no conditional filtering or stat terms."""
    if any(r.get('required') or r.get('type') != 2 for r in results):
        return None
    weights = [base_weight(r['chance']) for r in results]
    if any(w['dynamic_terms'] or not w['fully_parsed'] for w in weights):
        return None
    values = [max(0, w['constant']) for w in weights]
    total = sum(values)
    return [str(Fraction(w, total)) for w in values] if total else None


def main():
    events = json.loads((DB / 'events.pt.json').read_text(encoding='utf-8'))
    coverage = Counter()
    for event in events:
        raw = event['raw']
        event['decoded_required'] = decode_required(raw.get('required', ''))
        for choice in raw.get('choice', []):
            choice['decoded_required'] = decode_required(choice.get('required', ''))
            probabilities = exact_neutral_probabilities(choice['result'])
            for i, result in enumerate(choice['result']):
                result['decoded_required'] = decode_required(result.get('required', ''))
                result['decoded_reward'] = decode_reward(result.get('reward', ''))
                result['base_weight'] = base_weight(result['chance'])
                result['probability_static'] = probabilities[i] if probabilities else None
                coverage['results'] += 1
                coverage['results_reward_opcodes_resolved'] += result['decoded_reward']['fully_decoded']
                coverage['results_without_reward'] += not bool(result.get('reward'))
                coverage['results_with_exact_neutral_probability'] += probabilities is not None
        event['rules_status'] = 'partial_static_analysis_not_runtime_validated'
    (DB / 'events.pt.decoded.json').write_text(json.dumps(events, ensure_ascii=False, indent=2), encoding='utf-8')
    (DB / 'decoder-coverage.json').write_text(json.dumps(dict(coverage), indent=2), encoding='utf-8')
    inputs = [ROOT / 'extracao-1.2.47/arm64/lib/arm64-v8a/libil2cpp.so',
              ROOT / 'extracao-1.2.47/base/assets/bin/Data/Managed/Metadata/global-metadata.dat']
    evidence = {'version': '1.2.47', 'build': 366, 'metadata_version': 31,
                'runtime_validated': False,
                'input_hashes': {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest() for p in inputs},
                'functions': {'EventCtrl.GetFormatData': '0x1A9004C', 'FormatData..ctor': '0x1AAE79C',
                              'EventCtrl.CheckRequire': '0x1A95244', 'EventCtrl.GetTotalChance': '0x1A99D04',
                              'EventCtrl.GetResultIndex': '0x1A992C0', 'EventCtrl.GiveRewardAndSetRewardText': '0x1A91980',
                              'DataMgr.GetUserData': '0x1AF7748', 'DataMgr.ChangeUserData': '0x1AF7A54',
                              'Str..cctor': '0x1A41DC8', 'EventCtrl.ClickEventButton': '0x1A8D2F0'},
                'documentation': ['docs/regras-confirmadas.md', 'docs/evento-taverna-veterano.md']}
    (DB / 'rule-evidence.json').write_text(json.dumps(evidence, ensure_ascii=False, indent=2), encoding='utf-8')
    print(json.dumps(dict(coverage), indent=2))


if __name__ == '__main__':
    main()
