#!/usr/bin/env python3
"""Lift the pinned MGC V25 RAISR AOT closures into static-assembly capsules.

Three AOT kernels are extracted from the pinned libgcastartup.so:
  * NanoRaisrUpscalePerShiftFRH2xInt16Opt5x5Halide  (per-shift 2x luma upscale)
  * HashFromOrientation2xThinOptHalide              (hash / filter-class image)
  * NanoRaisrCompositeHalide                        (RAISR + fallback composite)

Each closure is copied verbatim from the .so; only the Halide runtime calls and
the parallel-task pointers are re-pointed at symbols provided by this project.
Image arithmetic is untouched.

Run:  uv run scripts/research/generate_mgc_raisr_static_asm.py \
        <libgcastartup.so> <mgc_raisr_static.S.in> <mgc_raisr_capsule.bin>

Boundary evidence, ABI notes and unresolved items live in
.codex-tmp/ida/mgc_v25/raisr_recon/RAISR_KERNELS.md.
"""

from __future__ import annotations

import argparse
import hashlib
import re
import struct
from dataclasses import dataclass
from pathlib import Path

SOURCE_SHA256 = "76966e7c150dfcb2795ea5b2119827a7e90b13d8c03035dbc4de583d9d12eaa6"
PAGE_SIZE = 4096
SHT_RELA = 4
R_AARCH64_RELATIVE = 0x403

CAPSULE_PLACEHOLDER = "@MGC_RAISR_CAPSULE@"

# libgcastartup.so is linked so that these sections have address == file offset.
# A capsule copies bytes by file offset, so only these sections may be lifted.
IDENTITY_MAPPED_SECTIONS = (
    (".text", 0x20549F0, 0x20549F0 + 0x4002D64),
    (".rodata", 0x4A4100, 0x4A4100 + 0x17838DD),
    (".data.rel.ro", 0x605C078, 0x605C078 + 0x1782A0),
    (".got", 0x61D57C0, 0x61D57C0 + 0x23400),
)

# Halide runtime entry points, resolved to the host shims declared by
# app/src/main/cpp/mgc_denoise_static/mgc_denoise_static.cpp.
HOST_TARGETS = {
    0x05F91100: "photon_mgc_halide_malloc",
    0x05F9111C: "photon_mgc_halide_free",
    0x05F93F88: "photon_mgc_halide_trace",
    0x0585F89C: "photon_mgc_halide_do_par_for",
    0x05FB8540: "memset",
}

# C++ file that provides photon_mgc_halide_error_<address> shims.
ERROR_SHIM_SOURCE = Path(__file__).resolve().parents[2] / (
    "app/src/main/cpp/mgc_denoise_static/mgc_denoise_static.cpp"
)

# Relocation slots that carry Halide parallel-task pointers, on the shared
# .got page.  Every one of these must resolve inside the owning closure.
TASK_SLOTS = {
    "upscale_2x": {0x61E7068: 0x3589BF0},
    "hash": {0x61E7080: 0x358F794},
    "composite": {
        0x61E7120: 0x35BD0DC,
        0x61E7128: 0x35BF998,
        0x61E7130: 0x35C2254,
        0x61E7138: 0x35C29FC,
        0x61E7140: 0x35C2FD0,
        0x61E7148: 0x35C4A44,
        0x61E7150: 0x35C64E4,
        0x61E7158: 0x35C6C30,
        0x61E7160: 0x35C86A0,
    },
    # OrientationUint8ThinOptHalide worker; the wrapper ADRP at 0x35A1688
    # targets 0x61E7000 and loads [x1,#0x98].
    "orientation": {0x61E7098: 0x359B0A8},
    # RgbToGray3ChOptHalideU8 worker; the wrapper ADRP at 0x3C51394 targets
    # 0x61E8000 and loads [x1,#0x630] => slot 0x61E8630.
    "rgb_to_gray": {0x61E8630: 0x3C50BC8},
}


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

    @property
    def entries(self) -> tuple[int, ...]:
        return tuple(value.entry for value in self.ranges)


# ---------------------------------------------------------------------------
# Closure 1: NanoRaisrUpscalePerShiftFRH2xInt16Opt5x5Halide.
# Worker 0x3589BF0..0x358A240 was reached from the .got task pointer 0x61E7068;
# the AOT host entry 0x358A240..0x358B830 is the target of the single BL at
# 0x35899B8.  Both are CFI-free and contiguous (FDE gap 0x3589BF0..0x358F370).
UPSCALE_RANGES = (
    CodeRange("RaisrUpscale2xWorker", 0x3589BF0, 0x3589BF0, 0x358A240),
    CodeRange("RaisrUpscale2xEntry", 0x358A240, 0x358A240, 0x358B830,
              "photon_mgc_raisr_upscale_2x"),
)

# ---------------------------------------------------------------------------
# Closure 2: HashFromOrientation2xThinOptHalide.
# Worker 0x358F794..0x3591F3C (task pointer 0x61E7080); host entry
# 0x3591F3C..0x3592C10, target of the single BL at 0x358F5B8.
HASH_RANGES = (
    CodeRange("RaisrHashWorker", 0x358F794, 0x358F794, 0x3591F3C),
    CodeRange("RaisrHashEntry", 0x3591F3C, 0x3591F3C, 0x3592C10,
              "photon_mgc_raisr_hash"),
)

# ---------------------------------------------------------------------------
# Closure 3: NanoRaisrCompositeHalide.
# The host entry at 0x35C8C54 starts nine halide_do_par_for nests whose task
# pointers are .got slots 0x61E7120..0x61E7160.  Those nine task functions are
# reachable only through the .got, so the closure must be widened from the
# entry-only range 0x35C8C54..0x35CB418 to 0x35BD0DC..0x35CB418; the widened
# span is one contiguous CFI-free run and stops exactly at the CFI-covered
# function 0x35CB418.
COMPOSITE_RANGES = (
    CodeRange("RaisrCompositeTask0", 0x35BD0DC, 0x35BD0DC, 0x35BF998),
    CodeRange("RaisrCompositeTask1", 0x35BF998, 0x35BF998, 0x35C2254),
    CodeRange("RaisrCompositeTask2", 0x35C2254, 0x35C2254, 0x35C29FC),
    CodeRange("RaisrCompositeTask3", 0x35C29FC, 0x35C29FC, 0x35C2FD0),
    CodeRange("RaisrCompositeTask4", 0x35C2FD0, 0x35C2FD0, 0x35C4A44),
    CodeRange("RaisrCompositeTask5", 0x35C4A44, 0x35C4A44, 0x35C64E4),
    CodeRange("RaisrCompositeTask6", 0x35C64E4, 0x35C64E4, 0x35C6C30),
    CodeRange("RaisrCompositeTask7", 0x35C6C30, 0x35C6C30, 0x35C86A0),
    CodeRange("RaisrCompositeTask8", 0x35C86A0, 0x35C86A0, 0x35C8C54),
    CodeRange("RaisrCompositeEntry", 0x35C8C54, 0x35C8C54, 0x35CB418,
              "photon_mgc_raisr_composite"),
)

# ---------------------------------------------------------------------------
# Closure 4: OrientationUint8ThinOptHalide.
# The RAISR hash kernel consumes a 3-channel orientation image, so the finish
# chain needs this kernel as well.  Worker 0x359B0A8..0x359DAF4 (task pointer
# 0x61E7098), host entry 0x359DAF4..0x35A1B24; the span is one CFI-free run
# that stops exactly at the CFI-covered composite bridge 0x35A1B24.
ORIENTATION_RANGES = (
    CodeRange("RaisrOrientationWorker", 0x359B0A8, 0x359B0A8, 0x359DAF4),
    CodeRange("RaisrOrientationEntry", 0x359DAF4, 0x359DAF4, 0x35A1B24,
              "photon_mgc_raisr_orientation"),
)

# ---------------------------------------------------------------------------
# Closure 5: RgbToGray3ChOptHalideU8.
# Produces the single-channel luma the RAISR chain starts from.  Worker
# 0x3C50BC8..0x3C50CBC (task pointer 0x61E8630, a different .got page than the
# RAISR module), host entry 0x3C50CBC..0x3C516C0, where the next CFI-covered
# function begins.
RGB_TO_GRAY_RANGES = (
    CodeRange("RgbToGrayWorker", 0x3C50BC8, 0x3C50BC8, 0x3C50CBC),
    CodeRange("RgbToGrayEntry", 0x3C50CBC, 0x3C50CBC, 0x3C516C0,
              "photon_mgc_raisr_rgb_to_gray"),
)

CODE_CLOSURES = (
    CodeClosure("upscale_2x", UPSCALE_RANGES),
    CodeClosure("hash", HASH_RANGES),
    CodeClosure("composite", COMPOSITE_RANGES),
    CodeClosure("orientation", ORIENTATION_RANGES),
    CodeClosure("rgb_to_gray", RGB_TO_GRAY_RANGES),
)
CODE_RANGES = tuple(
    code_range for closure in CODE_CLOSURES for code_range in closure.ranges
)


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


def section_for(address: int) -> str | None:
    return next(
        (name for name, start, end in IDENTITY_MAPPED_SECTIONS if start <= address < end),
        None,
    )


def address_symbol(address: int) -> str:
    return f"photon_mgc_raisr_address_{address:x}"


def page_symbol(address: int) -> str:
    return f"photon_mgc_raisr_page_{address:x}"


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


def defined_error_shims() -> set[int]:
    """Addresses of photon_mgc_halide_error_<addr> shims defined by the C++ side."""
    text = ERROR_SHIM_SOURCE.read_text(encoding="utf-8")
    addresses = {int(value, 16) for value in re.findall(
        r"PHOTON_MGC_DEFINE_HALIDE_ERROR\(([0-9a-fA-F]+)\)", text)}
    addresses |= {int(value, 16) for value in re.findall(
        r"photon_mgc_halide_error_([0-9a-fA-F]{4,})\s*\(", text)}
    if not addresses:
        raise ValueError(f"no halide error shims found in {ERROR_SHIM_SOURCE}")
    return addresses


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
            f'    .incbin "{CAPSULE_PLACEHOLDER}", 0x{offset:x}, 0x{end - start:x}'
        )


def validate_local_pc_relative(pc: int, instruction: int, closure: CodeClosure) -> None:
    """Reject any PC-relative reference that leaves the lifted closure."""
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
    elif instruction & 0x7E000000 in (0x36000000, 0x37000000):
        target, kind = relative_imm14_target(pc, instruction), "test branch"
    if target is not None and not (closure.start <= target < closure.end):
        raise ValueError(
            f"{kind} at 0x{pc:x} escapes closure {closure.name}: 0x{target:x}"
        )


def validate_relocated_slot_use(
    source: bytes,
    closure: CodeClosure,
    pages: set[int],
    patched_slots: set[int],
    relocations: dict[int, int],
) -> list[int]:
    """Every relocated pointer slot read out of a lifted page must be patched.

    A slot that still resolves to the original .so image would make the capsule
    call or dereference an address outside itself.  Only pages that actually
    carry relocations are inspected, so a plain `ldr xN, [xN, #imm]` into a
    constant .rodata page is never mistaken for a pointer-table read.
    """
    relocated_pages = {page_floor(slot) for slot in relocations}
    reads: list[int] = []
    for code_range in closure.ranges:
        for pc in range(code_range.start, code_range.end, 4):
            instruction = struct.unpack_from("<I", source, pc)[0]
            if instruction & 0x9F000000 != 0x90000000:
                continue
            base = instruction & 0x1F
            page = adrp_target(pc, instruction)
            if page not in pages or page not in relocated_pages:
                continue
            for step in range(4, 4 * 256, 4):
                probe = pc + step
                if not (code_range.start <= probe < code_range.end):
                    break
                follower = struct.unpack_from("<I", source, probe)[0]
                if (follower & 0xFFC00000) != 0xF9400000:  # LDR xN, [xM, #imm]
                    continue
                if ((follower >> 5) & 0x1F) != base:
                    continue
                slot = page + ((follower >> 10) & 0xFFF) * 8
                if slot not in relocations:
                    break
                reads.append(slot)
                if slot not in patched_slots:
                    raise ValueError(
                        f"closure {closure.name} reads relocated pointer 0x{slot:x} "
                        f"at 0x{probe:x} -> 0x{relocations[slot]:x}, which is outside "
                        f"the closure"
                    )
                break
    return reads


def generate(source_path: Path, output_path: Path, capsule_path: Path) -> None:
    source = source_path.read_bytes()
    digest = hashlib.sha256(source).hexdigest()
    if digest != SOURCE_SHA256:
        raise ValueError(f"expected libgcastartup.so {SOURCE_SHA256}, got {digest}")

    error_shims = defined_error_shims()

    code_pages = {
        page
        for closure in CODE_CLOSURES
        for page in range(closure.start, closure.end, PAGE_SIZE)
    }
    pages = set(code_pages)
    labels: dict[int, list[str]] = {}
    patches: dict[int, str] = {}
    external_errors: set[int] = set()

    for code_range in CODE_RANGES:
        closure = closure_for(code_range.entry)
        if closure is None:
            raise ValueError(f"no closure owns code range {code_range.name}")
        labels.setdefault(code_range.entry, []).append(address_symbol(code_range.entry))
        if code_range.symbol:
            labels.setdefault(code_range.entry, []).append(code_range.symbol)
        for pc in range(code_range.start, code_range.end, 4):
            instruction = struct.unpack_from("<I", source, pc)[0]
            if instruction & 0x9F000000 == 0x90000000:
                target_page = adrp_target(pc, instruction)
                if not 0 <= target_page + PAGE_SIZE <= len(source):
                    raise ValueError(
                        f"ADRP at 0x{pc:x} references unavailable page 0x{target_page:x}"
                    )
                if target_page not in code_pages and section_for(target_page) is None:
                    raise ValueError(
                        f"ADRP at 0x{pc:x} references page 0x{target_page:x} outside "
                        f"the identity-mapped capsule sections"
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
                elif target in HOST_TARGETS:
                    symbol = HOST_TARGETS[target]
                elif target in error_shims:
                    symbol = error_symbol(target)
                    external_errors.add(target)
                else:
                    raise ValueError(
                        f"unknown external call target 0x{target:x} from 0x{pc:x} "
                        f"in closure {closure.name}"
                    )
                patches[pc] = f"    {mnemonic} {symbol}"
                continue
            validate_local_pc_relative(pc, instruction, closure)

    relative_relocations = {
        location: target
        for location, relocation_type, target in iter_elf64_rela(source)
        if relocation_type == R_AARCH64_RELATIVE
    }

    patched_slots: dict[int, set[int]] = {}
    slot_reads: dict[str, list[int]] = {}
    for closure in CODE_CLOSURES:
        expected = TASK_SLOTS[closure.name]
        # Relocated code pointers that live on lifted pages must belong to a
        # closure; the ones owned by this closure are exactly its task pointers.
        discovered = {}
        for location, target in relative_relocations.items():
            if page_floor(location) not in pages:
                continue
            owner = None
            if range_for(target) is not None:
                owner = closure_for(target)
                if owner is None:
                    raise ValueError(
                        f"relocated code pointer 0x{location:x} -> 0x{target:x} is in "
                        f"no closure but lives on a lifted page"
                    )
            if owner is not None and owner.name == closure.name:
                discovered[location] = target
        if discovered != expected:
            raise ValueError(
                f"closure {closure.name} task pointers changed: expected "
                f"{ {hex(k): hex(v) for k, v in expected.items()} }, got "
                f"{ {hex(k): hex(v) for k, v in discovered.items()} }"
            )
        for location, target in discovered.items():
            if not (closure.start <= target < closure.end):
                raise ValueError(
                    f"task pointer 0x{location:x} -> 0x{target:x} escapes closure "
                    f"{closure.name}"
                )
            labels.setdefault(target, []).append(address_symbol(target))
        patched_slots[closure.name] = set(discovered)
        slot_reads[closure.name] = validate_relocated_slot_use(
            source, closure, pages, patched_slots[closure.name], relative_relocations
        )
        if set(slot_reads[closure.name]) != set(discovered):
            raise ValueError(
                f"closure {closure.name} task pointer slots and their read sites "
                f"disagree: slots {sorted(hex(v) for v in discovered)} vs reads "
                f"{sorted(hex(v) for v in slot_reads[closure.name])}"
            )

    writer = CapsuleWriter(source)
    lines = [
        "/* Generated mechanically from pinned MGC 9.7.047 V25 RAISR AOT.",
        " * Do not edit; regenerate with",
        " * scripts/research/generate_mgc_raisr_static_asm.py.",
        " */",
        "",
        "#if !defined(__aarch64__)",
        '#error "MGC RAISR static lift is arm64-only"',
        "#endif",
        "",
    ]
    for target in sorted(external_errors):
        lines.append(f"    .hidden {error_symbol(target)}")
    for symbol in sorted(set(HOST_TARGETS.values()) - {"memset"}):
        lines.append(f"    .hidden {symbol}")

    for closure in CODE_CLOSURES:
        lines.extend(
            [
                "",
                f'.section .text.photon_mgc.Raisr.{closure.name},"ax",@progbits',
                "    .p2align 12",
            ]
        )
        for code_range in closure.ranges:
            if code_range.symbol is None:
                continue
            lines.extend(
                [
                    f"    .global {code_range.symbol}",
                    f"    .hidden {code_range.symbol}",
                    f"    .type {code_range.symbol}, %function",
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
            for location, target in relative_relocations.items()
            if page_floor(location) == page and range_for(target) is not None
            and closure_for(target) in CODE_CLOSURES
        )
        section = ".data.rel.ro" if relocations else ".rodata"
        flags = '"aw"' if relocations else '"a"'
        lines.extend(
            [
                f'.section {section}.photon_mgc.raisr_page_{page:x},{flags},@progbits',
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
        f"generated={output_path} code_pages={len(code_pages)} data_pages="
        f"{len(pages) - len(code_pages)} patches={len(patches)} "
        f"task_pointers={sum(len(v) for v in patched_slots.values())} "
        f"halide_errors={len(external_errors)} capsule={capsule_path} "
        f"capsule_bytes={len(writer.capsule)} "
        f"capsule_sha256={hashlib.sha256(writer.capsule).hexdigest()}"
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
