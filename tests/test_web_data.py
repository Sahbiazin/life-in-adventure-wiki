import json
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


class WebDataTests(unittest.TestCase):
    def test_packaged_events_preserve_every_original_record(self):
        source = ROOT / 'dados-extraidos/1.2.47/database/events.pt.json'
        bundle = ROOT / 'web/life-in-adventure/dist/events-data.js'
        if not source.exists() or not bundle.exists():
            self.skipTest('Local extraction or web bundle unavailable')
        text = bundle.read_text(encoding='utf-8')
        payload = json.loads(text.removeprefix('window.ATLAS_DATA=').rstrip().removesuffix(';'))
        original = json.loads(source.read_text(encoding='utf-8'))
        expected = {(e['group'], e['id']): e['raw'] for e in original}
        actual = {(e['group'], e['id']): e['data'] for e in payload['events']}
        self.assertEqual(actual, expected)
        self.assertEqual(len(actual), 3683)
        choices = [c for e in payload['events'] for c in e['data'].get('choice', [])]
        self.assertEqual(len(choices), 8043)
        self.assertEqual(sum(len(c.get('result', [])) for c in choices), 12196)


if __name__ == '__main__':
    unittest.main()
