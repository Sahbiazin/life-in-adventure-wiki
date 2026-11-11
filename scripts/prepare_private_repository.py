"""Stage the complete project, including generated data, using Git LFS."""
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
EXCLUDED_PARTS = {'.git', '.venv', '__pycache__', '.pytest_cache', 'node_modules', 'tools', '.sites-runtime'}


def run(*args):
    return subprocess.run(['git', *args], cwd=ROOT, check=True, capture_output=True, text=True)


def main():
    files = sorted(p for p in ROOT.rglob('*') if p.is_file()
                   and not (set(p.relative_to(ROOT).parts) & EXCLUDED_PARTS)
                   and not p.name.endswith('-deploy.tar.gz')
                   and not p.name.startswith('.env') and p.suffix != '.pyc')
    run('lfs', 'install', '--local')
    binary = {'.apk', '.apkm', '.zip', '.so', '.unity3d', '.resource', '.dat', '.dll'}
    lfs = [p for p in files if p.suffix.lower() in binary or p.stat().st_size >= 45_000_000]
    attributes = ['# Large binaries and generated datasets are stored with Git LFS.']
    for p in lfs:
        path = p.relative_to(ROOT).as_posix()
        escaped = path.replace('\\', '\\\\').replace('"', '\\"')
        attributes.append(f'"{escaped}" filter=lfs diff=lfs merge=lfs -text')
    attrs = ROOT / '.gitattributes'
    attrs.write_text('\n'.join(attributes) + '\n', encoding='utf-8')
    if attrs not in files:
        files.append(attrs)
    # Explicit file paths include the app's sources rather than embedding its separate Sites repository.
    for offset in range(0, len(files), 100):
        run('add', '--', *(p.relative_to(ROOT).as_posix() for p in files[offset:offset+100]))
    index = run('ls-files', '--stage').stdout
    if any(line.startswith('160000 ') for line in index.splitlines()):
        raise RuntimeError('Embedded repository detected; source must be tracked as normal files.')
    print(f'Staged {len(files)} files; {len(lfs)} LFS objects; total input {sum(p.stat().st_size for p in files)/1e6:.1f} MB')


if __name__ == '__main__':
    main()
