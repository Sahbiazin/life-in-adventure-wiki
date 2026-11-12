import json
import sys
import unittest
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'scripts'))
from item_scaling import decode_item_scaling


class ItemScalingTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        rows = json.loads((ROOT / 'dados-extraidos/1.2.47/database/itemJson.json').read_text())
        cls.raw = {str(row['raw']['index']): row['raw'] for row in rows}
        source = (ROOT / 'web/life-in-adventure/dist/events-data.js').read_text()
        cls.bundle = {c['id']: c for c in json.loads(source.removeprefix('window.ATLAS_DATA=').strip().removesuffix(';'))['catalogs'] if c['kind'] == 'item'}

    def test_native_item_examples_include_weapons_armor_and_an_unusual_attribute(self):
        for ident, field, attributes in [('0', 'dmg', ['DES']), ('18', 'dmg', ['FOR']),
                ('27', 'dmg', ['DES', 'CON']), ('3', 'hp', ['SAB', 'CON']),
                ('5', 'hp', ['CON', 'SAB']), ('107', 'hp', ['CAR', 'CON'])]:
            formula = self.bundle[ident]['scaling'][0]
            self.assertEqual(formula['field'], field)
            self.assertEqual([a['abbreviation'] for a in formula['attributes']], attributes)
            self.assertTrue(formula['fully_decoded'])
            self.assertEqual(formula['raw'], self.raw[ident][field])

    def test_all_items_preserve_sources_and_have_complete_formula_coverage(self):
        counts = Counter()
        for ident, raw in self.raw.items():
            self.assertEqual(self.bundle[ident]['raw'], raw)
            formulas = self.bundle[ident]['scaling']
            self.assertEqual(formulas, decode_item_scaling(raw))
            self.assertTrue(all(f['fully_decoded'] for f in formulas))
            counts.update([len(formulas[0]['attributes']) if formulas else 0])
        self.assertEqual(counts, {0: 152, 1: 69, 2: 169})

    def test_attribute_bonuses_and_names_do_not_invent_scaling_attributes(self):
        self.assertEqual(self.bundle['99']['scaling'], [])  # Elixir grants FOR, without damage/HP scaling.
        self.assertEqual(decode_item_scaling({'name': 'Martelo', 'category': 1, 'Ab': '5_2'}), [])
        constant = decode_item_scaling({'dmg': '10'})[0]
        self.assertTrue(constant['fully_decoded'])
        self.assertEqual(constant['attributes'], [])

    def test_coefficient_order_uses_native_float32_and_stable_ties(self):
        formula = decode_item_scaling({'dmg': '8.59|0_6_0.1000000001|0_5_0.1'})[0]
        self.assertEqual([a['index'] for a in formula['attributes']], [6, 5])
        self.assertEqual(formula['terms'][0]['coefficient'], formula['terms'][1]['coefficient'])
        self.assertEqual([a['abbreviation'] for a in self.bundle['4']['scaling'][0]['attributes']], ['CON', 'SAB'])

    def test_unknown_formula_terms_are_preserved_and_never_certified(self):
        for source in ['8|0_999_1', '8|1_5_1', '8|0_--5_1', '8|0_5_nan', '8|bad', '3e38|3e38']:
            formula = decode_item_scaling({'hp': source})[0]
            self.assertFalse(formula['fully_decoded'], source)
            self.assertEqual(formula['raw'], source)
            self.assertTrue(formula['unknown'])

class FireResourceDecoderTests(unittest.TestCase):
    def test_only_the_verified_group_is_interpreted(self):
        from decode_rules import decode_required, decode_reward
        for raw in ['23_3_1', '24_3_99']:
            part=decode_required(raw)['conditions'][0]
            self.assertTrue(part['decoded'])
            self.assertEqual(part['item_ids'], [40,42,47])
        self.assertFalse(decode_required('23_8_1')['fully_decoded'])
        part=decode_reward('25_3_1')['effects'][0]
        self.assertEqual(part['operation'],'remove_first_item')
        self.assertFalse(decode_reward('25_8_1')['fully_decoded'])


if __name__ == '__main__':
    unittest.main()
