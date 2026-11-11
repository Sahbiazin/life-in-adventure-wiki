"""Read-only extraction of Unity text and structured objects, with provenance."""
import argparse
import hashlib
import json
import re
from collections import Counter
from pathlib import Path

import UnityPy


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--source', type=Path, default=Path('extracao-1.2.47/base/assets'))
    parser.add_argument('--output', type=Path, default=Path('dados-extraidos/1.2.47'))
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    candidates = [args.source / 'bin/Data/data.unity3d', *sorted((args.source / 'aa/Android').glob('*.bundle'))]
    inventory, errors, sources = [], [], []
    for source in candidates:
        print(f'Loading {source.name}', flush=True)
        sources.append({'file': str(source), 'sha256': hashlib.sha256(source.read_bytes()).hexdigest()})
        env = UnityPy.load(str(source))
        counts = Counter()
        for obj in env.objects:
            kind = obj.type.name
            counts[kind] += 1
            row = {'source': str(source), 'asset_file': obj.assets_file.name, 'path_id': obj.path_id, 'type': kind, 'size': obj.byte_size}
            if kind in ('TextAsset', 'MonoBehaviour', 'MonoScript'):
                try:
                    if kind == 'TextAsset':
                        data = obj.read()
                        row['name'] = data.m_Name
                        payload = data.m_Script
                        if isinstance(payload, str):
                            payload = payload.encode('utf-8', 'surrogateescape')
                        suffix = '.txt'
                    else:
                        tree = obj.read_typetree()
                        row['name'] = tree.get('m_Name', '')
                        payload = json.dumps(tree, ensure_ascii=True, indent=2).encode('utf-8')
                        suffix = '.json'
                    name = re.sub(r'[^\w.\-]', '_', row['name'])[:100] or 'unnamed'
                    folder = args.output / kind / source.stem
                    folder.mkdir(parents=True, exist_ok=True)
                    target = folder / f'{obj.path_id}_{name}{suffix}'
                    target.write_bytes(payload)
                    row['export'] = str(target)
                except Exception as exc:
                    row['error'] = str(exc)
                    errors.append(row.copy())
            inventory.append(row)
        print(dict(counts), flush=True)
    for name, data in [('inventory', inventory), ('errors', errors), ('sources', sources)]:
        (args.output / f'{name}.json').write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding='utf-8')
    print(f'{len(inventory)} objects; {len(errors)} errors', flush=True)


if __name__ == '__main__':
    main()
