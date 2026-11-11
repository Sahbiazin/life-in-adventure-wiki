"""Export annotated ARM64 functions for static inspection, without execution."""
import argparse
import bisect
import json
from pathlib import Path

from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
from elftools.elf.elffile import ELFFile

ROOT = Path(__file__).resolve().parents[1]
DATA = ROOT / 'dados-extraidos/1.2.47/il2cpp'
BINARY = ROOT / 'extracao-1.2.47/arm64/lib/arm64-v8a/libil2cpp.so'


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('pattern', nargs='?', default='EventCtrl$$')
    args = parser.parse_args()
    script = json.loads((DATA / 'script.json').read_text(encoding='utf-8-sig'))
    symbols = {}
    for key in ['ScriptMethod', 'ScriptString', 'ScriptMetadata', 'ScriptMetadataMethod']:
        for row in script[key]:
            symbols[row['Address']] = row.get('Name', repr(row.get('Value')))
    addresses = sorted(set(script['Addresses']))
    md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
    out = DATA / 'asm'
    out.mkdir(exist_ok=True)
    with BINARY.open('rb') as handle:
        elf = ELFFile(handle)
        segments = [s for s in elf.iter_segments() if s['p_type'] == 'PT_LOAD']
        for section in elf.iter_sections():
            if section['sh_type'] == 'SHT_RELA':
                for relocation in section.iter_relocations():
                    target = relocation['r_addend']
                    if target in symbols:
                        symbols[relocation['r_offset']] = symbols[target]
        for row in script['ScriptMethod']:
            if args.pattern not in row['Name']:
                continue
            start = row['Address']
            pos = bisect.bisect_right(addresses, start)
            end = addresses[pos] if pos < len(addresses) else start + 4096
            seg = next(s for s in segments if s['p_vaddr'] <= start < s['p_vaddr'] + s['p_filesz'])
            handle.seek(start - seg['p_vaddr'] + seg['p_offset'])
            code = handle.read(min(end - start, 200000))
            lines = [row['Signature'], f'// RVA {start:#x} to {start + len(code):#x}; next method {end:#x}; truncated={len(code) < end - start}']
            registers = {}
            for ins in md.disasm(code, start):
                ops = ins.op_str.split(', ')
                annotation = ''
                if ins.mnemonic in ('bl', 'b') and ops[0].startswith('#'):
                    target = int(ops[0][1:], 0)
                    annotation = symbols.get(target, '')
                if ins.mnemonic in ('adrp', 'adr'):
                    registers[ops[0]] = int(ops[1].lstrip('#'), 0)
                elif ins.mnemonic == 'add' and len(ops) == 3 and ops[1] in registers and ops[2].startswith('#'):
                    registers[ops[0]] = registers[ops[1]] + int(ops[2][1:], 0)
                    annotation = symbols.get(registers[ops[0]], '')
                elif ins.mnemonic.startswith('ldr') and len(ops) >= 2:
                    import re
                    match = re.search(r'\[(x\d+)(?:, #(0x[0-9a-f]+|\d+))?\]', ins.op_str)
                    if match and match[1] in registers:
                        address = registers[match[1]] + int(match[2] or '0', 0)
                        annotation = symbols.get(address, '')
                    registers.pop(ops[0], None)
                elif ins.mnemonic == 'bl':
                    registers = {k: v for k, v in registers.items() if int(k[1:]) >= 19}
                lines.append(f'{ins.address:08x}  {ins.mnemonic:9} {ins.op_str:46} {"// " + annotation if annotation else ""}')
            name = ''.join(c if c.isalnum() or c in '._-' else '_' for c in row['Name'])
            (out / f'{name}_{start:x}.asm').write_text('\n'.join(lines), encoding='utf-8')
    print(f'Exported matching functions to {out}')


if __name__ == '__main__':
    main()
