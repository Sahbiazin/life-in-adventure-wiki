import json
import re
import sys
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / 'scripts'))
from build_event_maps import destination, make_graph


class EventMapTests(unittest.TestCase):
    def test_same_id_in_different_tables_stays_separate(self):
        events = [{'uid': f'pt:{g}:0', 'group': g, 'id': 0, 'source_asset': g + '4',
                   'raw': {'id': 0, 'choice': [{'text': '', 'result': [
                       {'nextEvent': 0, 'required': '1_4_50', 'chance': '13', 'reward': ''},
                       {'nextEvent': -2, 'required': '', 'chance': '1', 'reward': ''}]}]}}
                  for g in ['EventMain', 'EventSub']]
        graph, transitions, incoming, _ = make_graph(events)
        self.assertEqual(len(transitions), 4)
        self.assertEqual(transitions[0]['destination']['uid'], 'pt:EventMain:0')
        self.assertEqual(transitions[2]['destination']['uid'], 'pt:EventSub:0')
        self.assertEqual(len(incoming['pt:EventMain:0']), 1)
        self.assertEqual(transitions[0]['raw']['required'], '1_4_50')
        self.assertEqual(len([n for n in graph['nodes'] if n['kind'] == 'choice']), 2)

    def test_missing_destination_is_not_silently_linked(self):
        self.assertEqual(destination({'group': 'EventMain'}, {'nextEvent': 99}, {})['kind'], 'missing')

    def test_state_dependencies_are_not_event_transitions(self):
        events = [{'uid': 'pt:EventMain:0', 'group': 'EventMain', 'id': 0, 'source_asset': 'EventMain4',
                   'raw': {'required': '5_40_9', 'choice': [{'result': [{'nextEvent': -2, 'reward': '5_40_9'}]}]}}]
        graph, _, _, deps = make_graph(events)
        self.assertEqual(deps[0]['scope'], 'potential_dependency_not_guaranteed_unlock')
        self.assertEqual(len(deps[0]['readers']), 1)
        self.assertEqual(len(deps[0]['writers']), 1)
        self.assertFalse(any(link['kind'] == 'next_event_reference' for link in graph['links']))

    def test_generated_atlas_preserves_all_source_results(self):
        atlas = ROOT / 'mapas/1.2.47/pt'
        source = ROOT / 'dados-extraidos/1.2.47/database/events.pt.json'
        if not (atlas / 'transitions.json').exists() or not source.exists():
            self.skipTest('Local atlas not generated')
        events = json.loads(source.read_text(encoding='utf-8'))
        rows = json.loads((atlas / 'transitions.json').read_text(encoding='utf-8'))
        expected = {(e['uid'], ci, ri): r for e in events
                    for ci, c in enumerate(e['raw'].get('choice', [])) for ri, r in enumerate(c.get('result', []))}
        actual = {(t['event'], t['choice'], t['result']): t['raw'] for t in rows}
        self.assertEqual(actual, expected)
        for page in atlas.rglob('*.md'):
            text = page.read_text(encoding='utf-8')
            for target in re.findall(r'\]\(([^)]+\.md)(?:#[^)]*)?\)', text):
                self.assertTrue((page.parent / target).is_file(), f'{page}: {target}')
        self.assertEqual(len(list(atlas.glob('Event*/*.md'))), len(events) + 6)


if __name__ == '__main__':
    unittest.main()
