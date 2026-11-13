"""Pin native stat-check evidence to the exact game build; optional Unity data."""
import argparse
import hashlib
import json
import struct
from pathlib import Path
from elftools.elf.elffile import ELFFile

ROOT = Path(__file__).resolve().parents[1]
BINARY = ROOT / 'extracao-1.2.47/arm64/lib/arm64-v8a/libil2cpp.so'
ASSET = ROOT / 'extracao-1.2.47/base/assets/bin/Data/data.unity3d'
ELF_HASH = '0e6d4d06293685f2516b3896f02841b8a6ee4e7326d7e153e968022f4c773f25'
ASSET_HASH = 'fc411d3a597b83e32152649f2feb8fe1ff55aaa7951b5c4d56e84c777c0fa694'


def verify(assets=False):
    assert hashlib.sha256(BINARY.read_bytes()).hexdigest() == ELF_HASH
    with BINARY.open('rb') as handle:
        elf = ELFFile(handle)
        segments = [s for s in elf.iter_segments() if s['p_type'] == 'PT_LOAD']

        def read(address, count):
            seg = next(s for s in segments if s['p_vaddr'] <= address and address+count <= s['p_vaddr']+s['p_filesz'])
            handle.seek(address-seg['p_vaddr']+seg['p_offset'])
            return handle.read(count)

        rates = {}
        for address, value in [(0xa130c8, .01), (0xa130d4, .05), (0xa13158, .10)]:
            assert read(address, 4) == struct.pack('<f', value)
            rates[hex(address)] = struct.unpack('<f', read(address, 4))[0]
        # ARM64: trunc per term, add integer tickets, INT threshold, fixed bonus,
        # uniform random list position; instruction words avoid disasm drift.
        checks = {0x1a99e18: 'fmul', 0x1a99e20: 'fcvtzs', 0x1a99e2c: 'add',
                  0x1a99748: 'fcmp', 0x1a997dc: 'add', 0x1a99830: 'add',
                  0x1a998b4: 'cinc', 0x1a99c98: 'bl'}
        from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
        md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
        for address, mnemonic in checks.items():
            assert next(md.disasm(read(address, 4), address)).mnemonic == mnemonic
    result = {'version': '1.2.47', 'build': 366, 'elf_sha256': ELF_HASH, 'rates': rates,
              'native_methods': {'weight': '0x1a99d04', 'selection': '0x1a992c0', 'display': '0x1a94910', 'hard_penalty': '0x1961b44'},
              'android_runtime_validated': False}
    if assets:
        assert hashlib.sha256(ASSET.read_bytes()).hexdigest() == ASSET_HASH, 'Download the pinned Git LFS object before asset verification.'
        import UnityPy
        env = UnityPy.load(str(ASSET))
        found = []
        for obj in env.objects:
            if obj.type.name != 'MonoBehaviour' or obj.path_id != 53059 or obj.assets_file.name != 'level0':
                continue
            basic = obj.read(check_read=False)
            assert basic.m_Script.read().m_ClassName == 'HardModeMgr'
            raw = obj.get_raw_data()
            assert len(raw) == 64
            values = struct.unpack_from('<4f', raw, 0x30)
            assert raw[0x30:] == struct.pack('<4f', 1.2, 1.2, 1.2, .8)
            found.append({'file': obj.assets_file.name, 'path_id': obj.path_id, 'script_path_id': basic.m_Script.m_PathID,
                          'damage': values[0], 'hp': values[1], 'event': values[2], 'gold': values[3]})
        assert len(found) == 1
        result.update(asset_sha256=ASSET_HASH, hard_mode=found[0])
    return result


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--assets', action='store_true')
    args = parser.parse_args()
    print(json.dumps(verify(args.assets), ensure_ascii=False, indent=2))
