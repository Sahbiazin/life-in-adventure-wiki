import importlib.util
import json
import unittest
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('wiki_build', ROOT / 'web/life-in-adventure/build_data.py')
wiki = importlib.util.module_from_spec(spec)
spec.loader.exec_module(wiki)


class WikiDataTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        text = (ROOT / 'web/life-in-adventure/dist/events-data.js').read_text(encoding='utf-8')
        cls.payload = json.loads(text.removeprefix('window.ATLAS_DATA=').strip().removesuffix(';'))
        cls.catalogs = {c['key']: c for c in cls.payload['catalogs']}
        cls.events = {f'{e["group"]}:{e["id"]}': e for e in cls.payload['events']}

    def test_partial_rules_preserve_unknown_tokens_and_or_operator(self):
        view = wiki.rule_view('-1|1_4_50|31_43_1')
        self.assertEqual(view['operator'], 'OR')
        self.assertEqual(view['tokens'][0]['text'], 'Ouro: pelo menos 50')
        self.assertEqual(view['tokens'][1], {'raw': '31_43_1', 'known': False, 'text': 'Condição ainda não interpretada'})
        self.assertIsNone(wiki.rule_view(''))
        self.assertFalse(wiki.rule_view('0_0_1', reward=False)['tokens'][0]['known'])

    def test_item_links_distinguish_requirements_gains_and_losses(self):
        for raw, reward, relation in [('8_42_1', False, 'Exige item'), ('10_42_1', False, 'Exige quantidade inferior de item'),
                                      ('3_42_1', True, 'Concede item'), ('4_42_1', True, 'Remove item')]:
            token = wiki.rule_view(raw, reward)['tokens'][0]
            self.assertEqual((token['ref'], token['relation'], token['raw']), ('item:42', relation, raw))

    def test_all_catalog_records_preserve_raw_fields_and_variant_identity(self):
        self.assertEqual(Counter(c['kind'] for c in self.catalogs.values()), {'item': 390, 'monster': 206, 'ability': 174, 'trait': 64})
        db = ROOT / 'dados-extraidos/1.2.47/database'
        for kind, name in wiki.CATALOGS.items():
            rows = json.loads((db / f'{name}.json').read_text(encoding='utf-8'))
            for row in rows:
                raw = row['raw']
                key = f'{kind}:{raw["index"] if kind == "item" else raw["id"]}'
                if kind == 'ability':
                    key += ':' + raw['number']
                self.assertEqual(self.catalogs[key]['raw'], raw)
                self.assertTrue(self.catalogs[key]['title'])
        self.assertNotEqual(self.catalogs['ability:3:0']['description'], self.catalogs['ability:3:2']['description'])

    def test_bundle_links_resolve_and_keep_evidence_for_reverse_links(self):
        relations = Counter()
        for record in [*self.catalogs.values(), *self.events.values()]:
            for ref in record['references']:
                self.assertIn(ref['key'], self.catalogs)
                relations[ref['relation']] += 1
                if ref['relation'] != 'Menção no texto':
                    self.assertTrue(ref['raw'])
        for relation in ['Concede item', 'Remove item', 'Exige item', 'Menção no texto', 'Monstro listado no encontro']:
            self.assertGreater(relations[relation], 0)

    def test_real_tavern_has_only_supported_probabilities_and_signed_gold(self):
        event = self.events['EventTreasure:346']
        rules = event['rules']
        self.assertEqual(rules['required']['tokens'][1]['text'], 'Ouro: pelo menos 5')
        self.assertEqual([r['probability'] for r in rules['choices'][0]['results']], ['1/5'] * 5)
        effects = rules['choices'][1]['results'][0]['reward']['tokens']
        self.assertEqual(effects[1]['text'], 'Ouro: -5')
        self.assertFalse(any(r['probability'] for e in self.events.values() for cv, c in zip(e['rules']['choices'], e['data'].get('choice', []))
                             for r in cv['results'] if any(original.get('required') or original.get('type') != 2 for original in c.get('result', []))))

    def test_annotation_does_not_mutate_source_and_text_mentions_are_not_rewards(self):
        raw = {'id': 1, 'text': 'Veja esta adaga.', 'choice': [{'text': '', 'result': [
            {'required': '', 'chance': '1', 'type': 2, 'reward': '31_42_1', 'nextEvent': -2}]}]}
        event = {'raw': raw}
        before = json.dumps(raw, sort_keys=True)
        _, refs = wiki.annotate(event, self.catalogs, (wiki.re.compile(r'\badaga\b'), {'adaga': 'item:0'}))
        self.assertEqual(json.dumps(raw, sort_keys=True), before)
        self.assertEqual(refs, [{'key': 'item:0', 'relation': 'Menção no texto', 'scope': 'Texto do evento'}])


if __name__ == '__main__':
    unittest.main()
