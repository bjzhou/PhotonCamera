#!/usr/bin/env python3
"""Mechanically lift MGC V25's complete Spatial RGB Merge AOT closure.

The lift contains MergeRgbRaw16F16TileSize16Halide, its merge worker, the
DemosaicGreenRawBurst dispatcher, the Raw16 green reconstruction worker and
wrapper, and the uint16 buffer-copy closure used while materializing merge
intermediates. Only page-relative references, Halide runtime calls, and parallel
task pointers are replaced with Android-linker-owned relocations. The
application does not package or load libgcastartup.so.
"""

from __future__ import annotations

import argparse
import hashlib
import struct
from dataclasses import dataclass
from pathlib import Path


SOURCE_SHA256 = "76966e7c150dfcb2795ea5b2119827a7e90b13d8c03035dbc4de583d9d12eaa6"
PAGE_SIZE = 4096
SHT_RELA = 4
R_AARCH64_RELATIVE = 0x403
HALIDE_DO_PAR_FOR = 0x0585F89C
MGC_U16_COPY_DISPATCH = 0x05E4C2C8


@dataclass(frozen=True)
class CodeRange:
    name: str
    start: int
    entry: int
    end: int
    symbol: str | None = None


@dataclass(frozen=True)
class CodeClosure:
    name: str
    ranges: tuple[CodeRange, ...]

    @property
    def start(self) -> int:
        return page_floor(min(value.start for value in self.ranges))

    @property
    def end(self) -> int:
        return page_ceil(max(value.end for value in self.ranges))


MERGE_WORKER = CodeRange(
    "MergeRgbRaw16F16TileSize16Worker",
    0x0370F514,
    0x0370F514,
    0x0371990C,
)
MERGE_WRAPPER = CodeRange(
    "MergeRgbRaw16F16TileSize16Halide",
    0x0371990C,
    0x0371990C,
    0x0371D0E4,
    "photon_mgc_merge_rgb_raw16_f16_tile16_halide",
)
GREEN_DISPATCH = CodeRange(
    "DemosaicGreenRawBurst",
    0x0389EC70,
    0x0389EC70,
    0x0389EF40,
)
GREEN_WORKER = CodeRange(
    "DemosaicGreenRaw16Worker",
    0x038AA69C,
    0x038AA69C,
    0x038AEE1C,
)
GREEN_WRAPPER = CodeRange(
    "DemosaicGreenRaw16Halide",
    0x038AEE1C,
    0x038AEE1C,
    0x038B0298,
)
U16_BUFFER_VIEW_COPY = CodeRange(
    "MergeRgbUint16BufferViewCopy",
    0x0389B1B0,
    0x0389B420,
    0x0389B438,
)
U16_COPY_GENERIC = CodeRange(
    "HalideCopyUint16Generic",
    0x05E4CB58,
    0x05E4CB58,
    0x05E4DCA8,
)
U16_COPY_3D = CodeRange(
    "HalideCopyUint16ThreeDimensional",
    0x05E4DCA8,
    0x05E4DCA8,
    0x05E4EF18,
)

CODE_RANGES = (
    MERGE_WORKER,
    MERGE_WRAPPER,
    GREEN_DISPATCH,
    GREEN_WORKER,
    GREEN_WRAPPER,
    U16_BUFFER_VIEW_COPY,
    U16_COPY_GENERIC,
    U16_COPY_3D,
)
CODE_CLOSURES = (
    CodeClosure("merge", (MERGE_WORKER, MERGE_WRAPPER)),
    CodeClosure("green_dispatch", (GREEN_DISPATCH,)),
    CodeClosure("green_raw16", (GREEN_WORKER, GREEN_WRAPPER)),
    CodeClosure("u16_buffer_view_copy", (U16_BUFFER_VIEW_COPY,)),
    CodeClosure("u16_copy", (U16_COPY_GENERIC, U16_COPY_3D)),
)

HOST_TARGETS = {
    0x05F91100: "photon_mgc_halide_malloc",
    0x05F9111C: "photon_mgc_halide_free",
    0x05F93F88: "photon_mgc_halide_trace",
    0x0585F89C: "photon_mgc_halide_do_par_for",
    MGC_U16_COPY_DISPATCH: "photon_mgc_u16_copy_dispatch",
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


def closure_for(address: int) -> CodeClosure | None:
    return next((value for value in CODE_CLOSURES if value.start <= address < value.end), None)


def address_symbol(address: int) -> str:
    return f"photon_mgc_spatial_rgb_address_{address:x}"


def page_symbol(address: int) -> str:
    return f"photon_mgc_spatial_rgb_page_{address:x}"


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
        if instruction & 0xFFC003FF == 0xF9400021:
            load_pc = pc
            load_instruction = instruction
            break
    if load_pc is None:
        raise ValueError(f"do_par_for at 0x{call_pc:x} has no nearby x1 task load")
    for pc in range(load_pc - 4, code_range.start - 1, -4):
        instruction = struct.unpack_from("<I", source, pc)[0]
        if instruction & 0x9F00001F == 0x90000001:
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
        lines.append(
            f'    .incbin "@MGC_SPATIAL_RGB_CAPSULE@", 0x{offset:x}, 0x{end - start:x}'
        )


def validate_local_pc_relative(pc: int, instruction: int, closure: CodeClosure) -> None:
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
    if target is not None and not (closure.start <= target < closure.end):
        raise ValueError(f"{kind} at 0x{pc:x} escapes {closure.name}: 0x{target:x}")


def generate(source_path: Path, output_path: Path, capsule_path: Path) -> None:
    source = source_path.read_bytes()
    digest = hashlib.sha256(source).hexdigest()
    if digest != SOURCE_SHA256:
        raise ValueError(f"expected libgcastartup.so {SOURCE_SHA256}, got {digest}")

    code_pages = {
        page
        for closure in CODE_CLOSURES
        for page in range(closure.start, closure.end, PAGE_SIZE)
    }
    pages = set(code_pages)
    labels: dict[int, list[str]] = {}
    patches: dict[int, str] = {}
    external_errors: set[int] = set()
    par_for_calls: list[tuple[CodeRange, int]] = []

    for code_range in CODE_RANGES:
        labels.setdefault(code_range.entry, []).append(address_symbol(code_range.entry))
        if code_range.symbol:
            labels.setdefault(code_range.entry, []).append(code_range.symbol)
        closure = closure_for(code_range.entry)
        if closure is None:
            raise ValueError(f"no closure for {code_range.name}")
        for pc in range(code_range.start, code_range.end, 4):
            instruction = struct.unpack_from("<I", source, pc)[0]
            if instruction & 0x9F000000 == 0x90000000:
                target_page = adrp_target(pc, instruction)
                if not 0 <= target_page + PAGE_SIZE <= len(source):
                    raise ValueError(
                        f"ADRP at 0x{pc:x} references unavailable page 0x{target_page:x}"
                    )
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
            validate_local_pc_relative(pc, instruction, closure)

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
        "/* Generated mechanically from pinned MGC 9.7.047 V25 Spatial RGB Merge AOT.",
        " * Do not edit; regenerate with",
        " * scripts/research/generate_mgc_spatial_rgb_merge_static_asm.py.",
        " */",
        "",
        "#if !defined(__aarch64__)",
        '#error "MGC Spatial RGB Merge static lift is arm64-only"',
        "#endif",
        "",
    ]
    for target in sorted(external_errors):
        lines.append(f"    .hidden {error_symbol(target)}")
    for symbol in sorted(set(HOST_TARGETS.values()) - {"memset"}):
        lines.append(f"    .hidden {symbol}")

    # MergeRgb always calls the original buffer-view helper with element size
    # two. Preserve the exact uint16 arm of MGC's central copy dispatcher while
    # excluding its unrelated uint8/float alternatives and their much larger
    # runtime closure.
    lines.extend(
        [
            "",
            '.section .text.photon_mgc.SpatialRgb.u16_copy_dispatch,"ax",@progbits',
            "    .p2align 4",
            "    .type photon_mgc_u16_copy_dispatch, %function",
            "photon_mgc_u16_copy_dispatch:",
            "    cmp w0, #2",
            "    b.ne .Lphoton_mgc_u16_copy_unsupported",
            "    mov x0, x1",
            "    mov x1, x2",
            "    ldr w8, [x1, #0x24]",
            "    cmp w8, #3",
            f"    b.eq {address_symbol(U16_COPY_3D.entry)}",
            f"    b {address_symbol(U16_COPY_GENERIC.entry)}",
            ".Lphoton_mgc_u16_copy_unsupported:",
            "    mov w0, #-1",
            "    ret",
            "    .size photon_mgc_u16_copy_dispatch, .-photon_mgc_u16_copy_dispatch",
        ]
    )

    for closure in CODE_CLOSURES:
        lines.extend(
            [
                "",
                f'.section .text.photon_mgc.SpatialRgb.{closure.name},"ax",@progbits',
                "    .p2align 12",
            ]
        )
        if closure.name == "merge":
            lines.extend(
                [
                    "    .global photon_mgc_merge_rgb_raw16_f16_tile16_halide",
                    "    .hidden photon_mgc_merge_rgb_raw16_f16_tile16_halide",
                    "    .type photon_mgc_merge_rgb_raw16_f16_tile16_halide, %function",
                ]
            )
        events = (
            set(range(closure.start, closure.end, PAGE_SIZE))
            | {address for address in labels if closure.start <= address < closure.end}
            | {address for address in patches if closure.start <= address < closure.end}
        )
        position = closure.start
        for address in sorted(events):
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
        writer.emit(lines, position, closure.end)
        lines.append("")

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
                f'.section {section}.photon_mgc.spatial_rgb_page_{page:x},{flags},@progbits',
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
        f"capsule={capsule_path} "
        f"capsule_sha256={hashlib.sha256(writer.capsule).hexdigest()}"
    )
    if external_errors:
        print("external_errors=" + ",".join(f"{value:x}" for value in sorted(external_errors)))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("source", type=Path)
    parser.add_argument("output", type=Path)
    parser.add_argument("capsule", type=Path)
    arguments = parser.parse_args()
    generate(arguments.source, arguments.output, arguments.capsule)


if __name__ == "__main__":
    main()
