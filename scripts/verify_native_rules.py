"""Verify dispatch addresses against the exact, SHA-256 checked build 366 ELF."""
import hashlib
import json
import struct
from pathlib import Path
from elftools.elf.elffile import ELFFile

ROOT = Path(__file__).resolve().parents[1]
BINARY = ROOT / 'extracao-1.2.47/arm64/lib/arm64-v8a/libil2cpp.so'
EXPECTED_SHA256 = '0e6d4d06293685f2516b3896f02841b8a6ee4e7326d7e153e968022f4c773f25'
REQUIRED = {11: 0x1a9618c, 12: 0x1a96334, 18: 0x1a9660c, 20: 0x1a96028,
            21: 0x1a961c4, 26: 0x1a963a4, 28: 0x1a963cc, 31: 0x1a966d8,
            32: 0x1a966b0, 33: 0x1a95fd4, 34: 0x1a96148}
REWARD = {12: 0x1a91ec4, 14: 0x1a9269c, 15: 0x1a926bc, 29: 0x1a91d28}
STAT_STORES = {5: 0x1a524b8, 6: 0x1a5266c, 7: 0x1a5280c, 8: 0x1a529b0,
               9: 0x1a52b40, 13: 0x1a531bc, 14: 0x1a53374}


def verify(binary=BINARY):
    digest = hashlib.sha256(binary.read_bytes()).hexdigest()
    if digest != EXPECTED_SHA256:
        raise ValueError('Unexpected native binary: evidence applies only to build 366, not LFS pointers or other versions.')
    with binary.open('rb') as handle:
        elf = ELFFile(handle)
        segments = [s for s in elf.iter_segments() if s['p_type'] == 'PT_LOAD']

        def read(addr, size):
            seg = next(s for s in segments if s['p_vaddr'] <= addr and addr+size <= s['p_vaddr']+s['p_filesz'])
            handle.seek(addr-seg['p_vaddr']+seg['p_offset'])
            return handle.read(size)

        for address, base, count, shift, expected in [(0xa4423c, 0x1a95f58, 35, 1, REQUIRED), (0xa44200, 0x1a91b58, 30, 0, REWARD)]:
            table = struct.unpack('<' + str(count) + 'H', read(address, count*2))
            for opcode, target in expected.items():
                if base+4*table[opcode-shift] != target:
                    raise ValueError(f'Unexpected dispatch for opcode {opcode}')
        # Reward 30 is handled after the switch by a dedicated cmp w10, #0x1e.
        assert read(0x1a9299c, 4) == bytes.fromhex('5f790071')
    return {'version': '1.2.47', 'build': 366, 'binary_sha256': digest, 'runtime_validated': False,
            'required_dispatch': {str(k): hex(v) for k, v in REQUIRED.items()},
            'reward_dispatch': {str(k): hex(v) for k, v in REWARD.items()},
            'reward_30_guard': '0x1a9299c', 'stat_pt_store_instructions': {str(k): hex(v) for k, v in STAT_STORES.items()},
            'scope': 'Dispatch and source identity verified; branch semantics documented by instruction inspection, not runtime execution.'}


if __name__ == '__main__':
    evidence = verify()
    (ROOT / 'docs/native-rules-evidence.json').write_text(json.dumps(evidence, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print('Native build hash and opcode dispatch verified.')
