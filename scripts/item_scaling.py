"""Item attribute icons and formula terms verified in the build 366 native UI."""
from decode_rules import STAT, f32, parse_token

ABBREVIATIONS = {5: 'FOR', 6: 'DES', 7: 'INT', 12: 'CAR', 13: 'CON', 14: 'SAB'}


def decode_item_scaling(raw):
    formulas = []
    for field, label in [('dmg', 'Dano'), ('hp', 'Defesa (saúde de combate)')]:
        source = raw.get(field)
        if source is None or str(source).strip() == '':
            continue
        base, terms, unknown = 0.0, [], []
        for token in str(source).split('|'):
            part = parse_token(token)
            if 'parse_status' in part:
                unknown.append(token)
            elif part['length'] == 1:
                try:
                    base = f32(base + part['quantity'])
                except OverflowError:
                    unknown.append(token)
            elif part.get('type') == 0:
                try:
                    index = int(part['target'])
                except ValueError:
                    index = None
                if index not in ABBREVIATIONS:
                    unknown.append(token)
                else:
                    terms.append({'index': index, 'name': STAT[index],
                                  'abbreviation': ABBREVIATIONS[index],
                                  'coefficient': part['quantity'], 'raw': token})
            else:
                unknown.append(token)
        # LINQ OrderByDescending is stable. Equal weights retain source order.
        terms.sort(key=lambda term: term['coefficient'], reverse=True)
        attributes = []
        for term in terms:
            if term['index'] not in [a['index'] for a in attributes]:
                attributes.append({k: term[k] for k in ('index', 'name', 'abbreviation')})
        formulas.append({'field': field, 'label': label, 'raw': str(source),
                         'base': base, 'terms': terms, 'attributes': attributes,
                         'fully_decoded': not unknown, 'unknown': unknown})
    return formulas
