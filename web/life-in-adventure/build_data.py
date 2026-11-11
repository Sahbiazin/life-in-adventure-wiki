"""Package the complete local Portuguese event set for the static app."""
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
source = ROOT / 'dados-extraidos/1.2.47/database/events.pt.json'
events = json.loads(source.read_text(encoding='utf-8'))
data = [{'id': e['id'], 'group': e['group'], 'source': e['source_asset'], **{'data': e['raw']}} for e in events]
payload = json.dumps({'version': '1.2.47', 'events': data}, ensure_ascii=False, separators=(',', ':'))
(HERE / 'dist/events-data.js').write_text('window.ATLAS_DATA=' + payload + ';\n', encoding='utf-8')
print(f'Packaged {len(events)} events, {sum(len(e["data"].get("choice", [])) for e in data)} choices')
