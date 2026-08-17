#!/usr/bin/env python3
"""Mechanically lift MGC's ResolveSabreHalide AOT closure into link-time assembly.

The generated source keeps the original arm64 instructions and constants. It only replaces
page-relative references, Halide runtime calls, and the parallel-worker task pointer with normal
ELF relocations owned by the Android linker. The Android build therefore does not package or load
libgcastartup.so.
"""

from __future__ import annotations

import argparse
import hashlib
import struct
from dataclasses import dataclass
from pathlib import Path


SOURCE_SHA256 = "2103c54ebba1627733b79e3646105595ed1ccefa2b1629f63fb7e1785a48d6a0"
PAGE_SIZE = 4096
SHT_RELA = 4
R_AARCH64_RELATIVE = 0x403
HALIDE_DO_PAR_FOR = 0x05A7FEF0


@dataclass(frozen=True)
class CodeRange:
    name: str
    start: int
    entry: int
    end: int
    symbol: str | None = None


CODE_RANGES = (
    CodeRange(
        "ResolveSabreHalideWorker",
        0x0349B1B8,
        0x0349B1B8,
        0x034A55D4,
    ),
    CodeRange(
        "ResolveSabreHalide",
        0x034A55D4,
        0x034A55D4,
        0x034A6D7C,
        "photon_mgc_resolve_sabre_halide",
    ),
)

HOST_TARGETS = {
    0x05EF2634: "photon_mgc_halide_malloc",
    0x05EF2650: "photon_mgc_halide_free",
    0x05EF54BC: "photon_mgc_halide_trace",
    0x05A7FEF0: "photon_mgc_halide_do_par_for",
    0x05FB8540: "memset",
}


def page_floor(value: int) -> int:
    return value & ~(PAGE_SIZE - 1)


def page_ceil(value: int) -> int:
    return (value + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1)


def sign_extend(value: int, bits: int) -> int:
    sign = 1 << (bits - 1)
    return (value ^ sign) - sign


def adrp_target(pc: int, instruction: int) -> int:
    immediate = (((instruction >> 5) & 0x7FFFF) << 2) | ((instruction >> 29) & 0x3)
    return page_floor(pc) + (sign_extend(immediate, 21) << 12)


def adr_target(pc: int, instruction: int) -> int:
    immediate = (((instruction >> 5) & 0x7FFFF) << 2) | ((instruction >> 29) & 0x3)
    return pc + sign_extend(immediate, 21)


def branch_target(pc: int, instruction: int) -> int:
    return pc + (sign_extend(instruction & 0x03FFFFFF, 26) << 2)


def relative_imm19_target(pc: int, instruction: int) -> int:
    return pc + (sign_extend((instruction >> 5) & 0x7FFFF, 19) << 2)


def relative_imm14_target(pc: int, instruction: int) -> int:
    return pc + (sign_extend((instruction >> 5) & 0x3FFF, 14) << 2)


def range_for(address: int) -> CodeRange | None:
    return next((value for value in CODE_RANGES if value.start <= address < value.end), None)


def address_symbol(address: int) -> str:
    return f"photon_mgc_sabre_address_{address:x}"


def page_symbol(address: int) -> str:
    return f"photon_mgc_sabre_page_{address:x}"


def error_symbol(address: int) -> str:
    return f"photon_mgc_halide_error_{address:x}"


def iter_elf64_rela(source: bytes):
    section_offset = struct.unpack_from("<Q", source, 0x28)[0]
    section_entry_size = struct.unpack_from("<H", source, 0x3A)[0]
    section_count = struct.unpack_from("<H", source, 0x3C)[0]
    for index in range(section_count):
        header = section_offset + index * section_entry_size
        if struct.unpack_from("<I", source, header + 4)[0] != SHT_RELA:
            continue
        payload_offset = struct.unpack_from("<Q", source, header + 0x18)[0]
        payload_size = struct.unpack_from("<Q", source, header + 0x20)[0]
        entry_size = struct.unpack_from("<Q", source, header + 0x38)[0]
        for cursor in range(payload_offset, payload_offset + payload_size, entry_size):
            offset, info, addend = struct.unpack_from("<QQq", source, cursor)
            yield offset, info & 0xFFFFFFFF, addend


def do_par_for_task_slot(source: bytes, code_range: CodeRange, call_pc: int) -> int:
    load_pc = None
    load_instruction = 0
    for pc in range(call_pc - 4, max(code_range.start, call_pc - 32), -4):
        instruction = struct.unpack_from("<I", source, pc)[0]
        if instruction & 0xFFC003FF == 0xF9400021:  # LDR X1, [X1, #imm12 * 8]
            load_pc = pc
            load_instruction = instruction
            break
    if load_pc is None:
        raise ValueError(f"do_par_for at 0x{call_pc:x} has no nearby x1 task load")
    for pc in range(load_pc - 4, code_range.start - 1, -4):
        instruction = struct.unpack_from("<I", source, pc)[0]
        if instruction & 0x9F00001F == 0x90000001:  # ADRP X1
            return adrp_target(pc, instruction) + ((load_instruction >> 10) & 0xFFF) * 8
    raise ValueError(f"task load at 0x{load_pc:x} has no preceding ADRP x1")


class CapsuleWriter:
    def __init__(self, source: bytes) -> None:
        self.source = source
        self.capsule = bytearray()

    def emit(self, lines: list[str], start: int, end: int) -> None:
        if end <= start:
            return
        if start < 0 or end > len(self.source):
            raise ValueError(f"source range 0x{start:x}..0x{end:x} is unavailable")
        offset = len(self.capsule)
        self.capsule.extend(self.source[start:end])
        lines.append(f'    .incbin "@MGC_SABRE_CAPSULE@", 0x{offset:x}, 0x{end - start:x}')


def validate_local_pc_relative(pc: int, instruction: int, start: int, end: int) -> None:
    target = None
    kind = ""
    if instruction & 0x9F000000 == 0x10000000:
        target, kind = adr_target(pc, instruction), "ADR"
    elif instruction & 0x3B000000 == 0x18000000:
        target, kind = relative_imm19_target(pc, instruction), "literal load"
    elif instruction & 0xFF000010 == 0x54000000:
        target, kind = relative_imm19_target(pc, instruction), "conditional branch"
    elif instruction & 0x7E000000 == 0x34000000:
        target, kind = relative_imm19_target(pc, instruction), "compare branch"
    elif instruction & 0x7E000000 == 0x36000000:
        target, kind = relative_imm14_target(pc, instruction), "test branch"
    if target is not None and not (start <= target < end):
        raise ValueError(f"{kind} at 0x{pc:x} escapes code closure: 0x{target:x}")


def generate(source_path: Path, output_path: Path, capsule_path: Path) -> None:
    source = source_path.read_bytes()
    digest = hashlib.sha256(source).hexdigest()
    if digest != SOURCE_SHA256:
        raise ValueError(f"expected libgcastartup.so {SOURCE_SHA256}, got {digest}")

    closure_start = page_floor(min(value.start for value in CODE_RANGES))
    closure_end = page_ceil(max(value.end for value in CODE_RANGES))
    pages = set(range(closure_start, closure_end, PAGE_SIZE))
    labels: dict[int, list[str]] = {}
    patches: dict[int, str] = {}
    external_errors: set[int] = set()
    par_for_calls: list[tuple[CodeRange, int]] = []

    for code_range in CODE_RANGES:
        labels.setdefault(code_range.entry, []).append(address_symbol(code_range.entry))
        if code_range.symbol:
            labels.setdefault(code_range.entry, []).append(code_range.symbol)
        for pc in range(code_range.start, code_range.end, 4):
            instruction = struct.unpack_from("<I", source, pc)[0]
            if instruction & 0x9F000000 == 0x90000000:
                target_page = adrp_target(pc, instruction)
                if not 0 <= target_page + PAGE_SIZE <= len(source):
                    raise ValueError(f"ADRP at 0x{pc:x} references unavailable page 0x{target_page:x}")
                pages.add(target_page)
                patches[pc] = f"    adrp x{instruction & 0x1F}, {page_symbol(target_page)}"
                continue
            if instruction & 0xFC000000 in (0x14000000, 0x94000000):
                target = branch_target(pc, instruction)
                target_range = range_for(target)
                if target_range is code_range:
                    continue
                mnemonic = "bl" if instruction & 0xFC000000 == 0x94000000 else "b"
                if target_range is not None:
                    labels.setdefault(target, []).append(address_symbol(target))
                    symbol = address_symbol(target)
                else:
                    symbol = HOST_TARGETS.get(target, error_symbol(target))
                    if target not in HOST_TARGETS:
                        external_errors.add(target)
                patches[pc] = f"    {mnemonic} {symbol}"
                if target == HALIDE_DO_PAR_FOR:
                    par_for_calls.append((code_range, pc))
                continue
            validate_local_pc_relative(pc, instruction, closure_start, closure_end)

    relative_relocations = {
        location: target
        for location, relocation_type, target in iter_elf64_rela(source)
        if relocation_type == R_AARCH64_RELATIVE
    }
    task_relocations: dict[int, int] = {}
    for code_range, call_pc in par_for_calls:
        slot = do_par_for_task_slot(source, code_range, call_pc)
        target = relative_relocations.get(slot)
        if target is None or range_for(target) is None:
            raise ValueError(f"parallel task slot 0x{slot:x} has invalid target {target!r}")
        task_relocations[slot] = target
        pages.add(page_floor(slot))
        labels.setdefault(target, []).append(address_symbol(target))

    writer = CapsuleWriter(source)
    lines = [
        "/* Generated mechanically from pinned MGC 9.6.080 V24 ResolveSabreHalide.",
        " * Do not edit; regenerate with",
        " * scripts/research/generate_mgc_sabre_resolve_static_asm.py.",
        " */",
        "",
        "#if !defined(__aarch64__)",
        '#error "MGC Sabre Resolve static lift is arm64-only"',
        "#endif",
        "",
    ]
    for target in sorted(external_errors):
        lines.append(f"    .hidden {error_symbol(target)}")
    for symbol in sorted(set(HOST_TARGETS.values()) - {"memset"}):
        lines.append(f"    .hidden {symbol}")
    lines.extend(
        [
            "",
            '.section .text.photon_mgc.ResolveSabreHalide,"ax",@progbits',
            "    .p2align 12",
            "    .global photon_mgc_resolve_sabre_halide",
            "    .hidden photon_mgc_resolve_sabre_halide",
            "    .type photon_mgc_resolve_sabre_halide, %function",
        ]
    )

    events = set(range(closure_start, closure_end, PAGE_SIZE)) | set(labels) | set(patches)
    position = closure_start
    for address in sorted(value for value in events if closure_start <= value < closure_end):
        writer.emit(lines, position, address)
        if address % PAGE_SIZE == 0:
            lines.append(f"{page_symbol(address)}:")
        for symbol in dict.fromkeys(labels.get(address, [])):
            lines.append(f"{symbol}:")
        if address in patches:
            lines.append(patches[address])
            position = address + 4
        else:
            position = address
    writer.emit(lines, position, closure_end)
    lines.append("")

    code_pages = set(range(closure_start, closure_end, PAGE_SIZE))
    for page in sorted(pages - code_pages):
        relocations = sorted(
            (location, target)
            for location, target in task_relocations.items()
            if page_floor(location) == page
        )
        section = ".data.rel.ro" if relocations else ".rodata"
        flags = '"aw"' if relocations else '"a"'
        lines.extend(
            [
                f'.section {section}.photon_mgc.sabre_page_{page:x},{flags},@progbits',
                "    .p2align 12",
                f"{page_symbol(page)}:",
            ]
        )
        position = page
        for location, target in relocations:
            writer.emit(lines, position, location)
            lines.append(f"    .xword {address_symbol(target)}")
            position = location + 8
        writer.emit(lines, position, page + PAGE_SIZE)
        lines.append("")

    lines.extend(['.section .note.GNU-stack,"",@progbits', ""])
    output_path.write_text("\n".join(lines), encoding="utf-8")
    capsule_path.write_bytes(writer.capsule)
    print(
        f"generated={output_path} pages={len(pages)} patches={len(patches)} "
        f"task_relocations={len(task_relocations)} errors={len(external_errors)} "
        f"capsule={capsule_path} capsule_sha256={hashlib.sha256(writer.capsule).hexdigest()}"
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("source", type=Path)
    parser.add_argument("output", type=Path)
    parser.add_argument("capsule", type=Path)
    arguments = parser.parse_args()
    generate(arguments.source, arguments.output, arguments.capsule)


if __name__ == "__main__":
    main()
