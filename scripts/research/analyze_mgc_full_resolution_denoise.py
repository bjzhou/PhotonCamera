#!/usr/bin/env python3
"""Analyze the verified MGC full-resolution denoise static closure.

This is intentionally a mechanical analyzer, not a reimplementation. It
records the exact arm64 Halide code ranges, every constant page referenced by
ADRP, link-time task relocations, host callbacks and recovered ABI from the
pinned MGC 9.6.080 V24 libgcastartup.so. The output is research metadata only;
it contains no executable payload and is never packaged by the Android app.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
from dataclasses import dataclass
from pathlib import Path


SOURCE_SHA256 = "2103c54ebba1627733b79e3646105595ed1ccefa2b1629f63fb7e1785a48d6a0"
PAGE_SIZE = 4096
MANIFEST_FORMAT = "mgc-full-resolution-denoise-static-lift-v1"
SHT_RELA = 4
R_AARCH64_RELATIVE = 0x403
HALIDE_DO_PAR_FOR = 0x05A7FEF0
RGB_TO_YUV_NOISE_MATRIX_VADDR = 0x0D64C24
RUN_FULL_RESOLUTION_DENOISE_ENTRY = 0x04670524
RUN_FULL_RESOLUTION_DENOISE_CALLER = 0x0466A3A0
PECAN_LUMA_WRAPPER_ENTRY = 0x04EDE4E0


@dataclass(frozen=True)
class CodeRange:
    name: str
    start: int
    entry: int
    end: int


CODE_RANGES = (
    CodeRange(
        "ComputeBayerNoiseModelF32TileSize16",
        0x037A6E14,
        0x037AAB68,
        0x037B9AF4,
    ),
    CodeRange(
        "ComputeRGBNoiseModelF32TileSize16",
        0x037B9AF4,
        0x037B9AF4,
        0x037BECDC,
    ),
    CodeRange(
        "DownsampleRawF16ToFloatTileSize16",
        0x037BECDC,
        0x037BECDC,
        0x037C1A8C,
    ),
    CodeRange(
        "DownsampleRgbF16ToFloatTileSize16",
        0x037C1A8C,
        0x037C1A8C,
        0x037DB248,
    ),
    CodeRange(
        "DownsampleRgbF16ToFloatTileSize16CopyHelper",
        0x038561A4,
        0x03856414,
        0x0385642C,
    ),
    CodeRange("BayerRawToYuv1xS16", 0x049C3484, 0x049C7B64, 0x049CAA54),
    CodeRange("RgbRawToYuv1xS16", 0x04A17EA8, 0x04A198B8, 0x04A1C3E8),
    CodeRange(
        "ChromaDenoisePyramidCompleteS16",
        0x04BE28CC,
        0x04BE28CC,
        0x04BE8764,
    ),
    CodeRange(
        "ChromaDenoisePyramidLevelS16",
        0x04BEE520,
        0x04BF1874,
        0x04BF1878,
    ),
    CodeRange(
        "ChromaDenoisePyramidDownsampleS16",
        0x04BF4CDC,
        0x04C394A0,
        0x04C394BC,
    ),
    CodeRange("YuvToRgbS16", 0x04CE4F50, 0x04CE554C, 0x04CE61B4),
    CodeRange("PecanLumaDenoiseS16", 0x04EF0000, 0x04EF1760, 0x04F1BB2C),
    CodeRange(
        "ComputeDenoiseStrengthMapsU16",
        0x054DBE04,
        0x054DCD34,
        0x054DE730,
    ),
    CodeRange(
        "DownsampleRgbF16ToFloatTileSize16Mode0",
        0x05DACC58,
        0x05DACC58,
        0x05DAD588,
    ),
    CodeRange(
        "DownsampleRgbF16ToFloatTileSize16Mode1",
        0x05DAD588,
        0x05DAD588,
        0x05DAE16C,
    ),
)

# Successful oracle runs reached only malloc/free/trace/par-for.  memset is
# retained as a known Halide runtime target for callers whose dimensions select
# a different generated schedule.
HOST_TARGETS = {
    0x05EF2634: "halide_malloc",
    0x05EF2650: "halide_free",
    0x05EF54BC: "halide_trace",
    0x05A7FEF0: "halide_do_par_for",
    0x05FB8540: "memset",
    0x05DAE16C: "downsample_rgb_dispatch",
}


def page_floor(value: int) -> int:
    return value & ~(PAGE_SIZE - 1)


def page_ceil(value: int) -> int:
    return (value + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1)


def sign_extend(value: int, bits: int) -> int:
    sign = 1 << (bits - 1)
    return (value ^ sign) - sign


def adrp_target(pc: int, instruction: int) -> int:
    immediate = (((instruction >> 5) & 0x7FFFF) << 2) | (
        (instruction >> 29) & 0x3
    )
    return page_floor(pc) + (sign_extend(immediate, 21) << 12)


def branch_target(pc: int, instruction: int) -> int:
    return pc + (sign_extend(instruction & 0x03FFFFFF, 26) << 2)


def is_adrp(instruction: int) -> bool:
    return instruction & 0x9F000000 == 0x90000000


def is_direct_branch(instruction: int) -> bool:
    return instruction & 0xFC000000 in (0x14000000, 0x94000000)


def source_slice(source: bytes, start: int, size: int) -> bytes:
    # All selected pages belong to the first two PT_LOAD segments, whose file
    # offset equals virtual address in this pinned ELF.
    end = start + size
    if start < 0 or end > len(source):
        raise ValueError(f"source range 0x{start:x}..0x{end:x} is unavailable")
    return source[start:end]


def do_par_for_task_slot(
    source: bytes,
    code_range: CodeRange,
    call_pc: int,
) -> int:
    """Recover the task-table slot loaded into x1 for one do_par_for call."""
    load_pc = None
    load_instruction = 0
    for pc in range(call_pc - 4, max(code_range.start, call_pc - 32), -4):
        instruction = struct.unpack_from("<I", source, pc)[0]
        # LDR X1, [X1, #imm12 * 8]
        if instruction & 0xFFC003FF == 0xF9400021:
            load_pc = pc
            load_instruction = instruction
            break
    if load_pc is None:
        raise ValueError(
            f"do_par_for at 0x{call_pc:x} has no nearby x1 task load"
        )
    for pc in range(load_pc - 4, code_range.start - 1, -4):
        instruction = struct.unpack_from("<I", source, pc)[0]
        # ADRP X1, target_page
        if instruction & 0x9F00001F == 0x90000001:
            target_page = adrp_target(pc, instruction)
            byte_offset = ((load_instruction >> 10) & 0xFFF) * 8
            return target_page + byte_offset
    raise ValueError(
        f"task load at 0x{load_pc:x} has no preceding ADRP x1"
    )


def iter_elf64_rela(source: bytes):
    """Yield (offset, type, addend) from every ELF64 SHT_RELA section."""
    if (
        source[:4] != b"\x7fELF"
        or source[4] != 2
        or source[5] != 1
    ):
        raise ValueError("source is not a little-endian ELF64 image")
    section_offset = struct.unpack_from("<Q", source, 0x28)[0]
    section_entry_size = struct.unpack_from("<H", source, 0x3A)[0]
    section_count = struct.unpack_from("<H", source, 0x3C)[0]
    if section_entry_size < 64:
        raise ValueError("ELF64 section table entry is truncated")
    for index in range(section_count):
        header = section_offset + index * section_entry_size
        section_type = struct.unpack_from("<I", source, header + 4)[0]
        if section_type != SHT_RELA:
            continue
        payload_offset = struct.unpack_from("<Q", source, header + 0x18)[0]
        payload_size = struct.unpack_from("<Q", source, header + 0x20)[0]
        entry_size = struct.unpack_from("<Q", source, header + 0x38)[0]
        if entry_size < 24 or payload_size % entry_size != 0:
            raise ValueError("ELF64 RELA section has an invalid entry size")
        for cursor in range(
            payload_offset,
            payload_offset + payload_size,
            entry_size,
        ):
            offset, info, addend = struct.unpack_from("<QQq", source, cursor)
            yield offset, info & 0xFFFFFFFF, addend


def analyze(source_path: Path, manifest_path: Path) -> None:
    source = source_path.read_bytes()
    source_digest = hashlib.sha256(source).hexdigest()
    if source_digest != SOURCE_SHA256:
        raise ValueError(
            "refusing a different libgcastartup.so: "
            f"expected {SOURCE_SHA256}, got {source_digest}"
        )

    pages: set[int] = set()
    direct_targets: dict[str, set[int]] = {}
    do_par_for_calls: list[tuple[CodeRange, int]] = []
    for code_range in CODE_RANGES:
        for page in range(
            page_floor(code_range.start),
            page_ceil(code_range.end),
            PAGE_SIZE,
        ):
            pages.add(page)

        targets: set[int] = set()
        code = source_slice(
            source,
            code_range.start,
            code_range.end - code_range.start,
        )
        for offset in range(0, len(code) - 3, 4):
            instruction = struct.unpack_from("<I", code, offset)[0]
            pc = code_range.start + offset
            if is_adrp(instruction):
                target_page = adrp_target(pc, instruction)
                if 0 <= target_page < len(source):
                    pages.add(target_page)
            if is_direct_branch(instruction):
                target = branch_target(pc, instruction)
                targets.add(target)
                if target == HALIDE_DO_PAR_FOR:
                    do_par_for_calls.append((code_range, pc))
        direct_targets[code_range.name] = targets

    relative_relocations = {
        location: target
        for location, relocation_type, target in iter_elf64_rela(source)
        if relocation_type == R_AARCH64_RELATIVE
    }
    task_slots = [
        do_par_for_task_slot(source, code_range, call_pc)
        for code_range, call_pc in do_par_for_calls
    ]
    if len(set(task_slots)) != len(task_slots):
        raise ValueError("multiple do_par_for calls unexpectedly share a task slot")
    task_relocations = {}
    for slot in task_slots:
        if slot not in relative_relocations:
            raise ValueError(
                f"do_par_for task slot 0x{slot:x} has no RELATIVE relocation"
            )
        task_relocations[slot] = relative_relocations[slot]

    code_intervals = [(item.start, item.end) for item in CODE_RANGES]
    for location, target in task_relocations.items():
        if not any(start <= target < end for start, end in code_intervals):
            raise ValueError(
                f"task slot 0x{location:x} targets code outside closure: "
                f"0x{target:x}"
            )

    ordered_pages = sorted(pages)
    ranges_json = [
        {
            "name": item.name,
            "start": f"0x{item.start:x}",
            "entry": f"0x{item.entry:x}",
            "end": f"0x{item.end:x}",
        }
        for item in CODE_RANGES
    ]
    branch_json: dict[str, list[dict[str, str]]] = {}
    for name, targets in direct_targets.items():
        external = []
        for target in sorted(targets):
            if any(start <= target < end for start, end in code_intervals):
                continue
            external.append(
                {
                    "target": f"0x{target:x}",
                    "host": HOST_TARGETS.get(target, "halide_error_path"),
                }
            )
        branch_json[name] = external

    manifest = {
        "format": MANIFEST_FORMAT,
        "source": str(source_path),
        "source_sha256": source_digest,
        "page_size": PAGE_SIZE,
        "page_count": len(ordered_pages),
        "do_par_for_call_count": len(do_par_for_calls),
        "code_ranges": ranges_json,
        "task_relocations": {
            f"0x{location:x}": f"0x{target:x}"
            for location, target in sorted(task_relocations.items())
        },
        "direct_external_targets": branch_json,
        "recovered_abi": {
            "RgbRawToYuv1xS16": {
                "input": "u16[x,y,rgb]",
                "output": "s16[x,y,yuv]",
                "neutral_wrapper_arguments": {
                    "black_levels": [0.0, 0.0, 0.0],
                    "channel_gains": [1.0, 1.0, 1.0],
                    "input_white_level": 16383,
                    "output_white_level": 16383,
                    "gain_map": "f32[x,y,4]=1",
                    "sample_rate": [1.0, 1.0],
                    "zoom_ratio": 1.0,
                },
            },
            "ChromaDenoisePyramidCompleteS16": {
                "input": "s16[x,y,yuv]",
                "strength": "u16[x/4,y/4,3]",
                "log2_strength_decimation": 2,
                "log2_downsample_factor": 0,
                "quadratic": "f32[level=4,branch=2], strides=[1,12]",
                "shot": "f32[level=4,branch=2], strides=[1,12]",
                "read": "f32[level=4,channel=3,branch=2], strides=[1,4,12]",
                "outlier": "u8[level=4,branch=2], strides=[1,4]",
                "output": "s16[x,y,yuv]",
            },
            "YuvToRgbS16": {
                "input": "s16[x,y,yuv]",
                "output": "s16[x,y,rgb]",
            },
            "PecanLumaDenoiseS16": {
                "input": "s16[x,y]",
                "strength": "u16[x/4,y/4,3]",
                "read": "f32[level=4,branch=2], strides=[1,4]",
                "shot": "f32[level=4,branch=2], strides=[1,4]",
                "quadratic": "f32[level=4,branch=2], strides=[1,4]",
                "outlier_distance": "f32[level=5]",
                "revert_factor": "f32[level=5]",
                "output": "s16[x,y]",
            },
        },
        "run_full_resolution_denoise_contract": {
            "entry": f"0x{RUN_FULL_RESOLUTION_DENOISE_ENTRY:x}",
            "unique_direct_caller": (
                f"0x{RUN_FULL_RESOLUTION_DENOISE_CALLER:x}"
            ),
            "non_ai_pecan_wrapper": f"0x{PECAN_LUMA_WRAPPER_ENTRY:x}",
            "input": "planar s16 YUV; non-AI Pecan consumes channel-0 luma",
            "output": "planar s16 full-resolution luma",
            "chroma_boundary": (
                "ChromaDenoisePyramidComplete is a separate sibling stage; "
                "it is not part of RunFullResolutionDenoise"
            ),
        },
        "rgb_to_yuv_noise_matrix": {
            "vaddr": f"0x{RGB_TO_YUV_NOISE_MATRIX_VADDR:x}",
            "layout": "row-major Y,Cb,Cr by R,G,B",
            "values": list(
                struct.unpack_from(
                    "<9f",
                    source,
                    RGB_TO_YUV_NOISE_MATRIX_VADDR,
                )
            ),
        },
        "pages": [f"0x{page:x}" for page in ordered_pages],
    }
    manifest_path.write_text(
        json.dumps(manifest, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("source", type=Path)
    parser.add_argument("manifest", type=Path)
    args = parser.parse_args()
    analyze(args.source, args.manifest)


if __name__ == "__main__":
    main()
