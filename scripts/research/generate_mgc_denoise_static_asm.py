#!/usr/bin/env python3
"""Lift the pinned MGC Halide closure into normal link-time assembly.

The generator copies only the referenced, unpatched code and constant spans
into a compact capsule.  The generated source uses ``.incbin`` against that
capsule and replaces every page-relative or cross-range reference with a
standard ELF relocation.  Android's normal linker therefore owns code
placement and relocation; normal builds need neither the original
libgcastartup.so nor a runtime page container, mmap, mprotect, or branch
patching.

This is a mechanical binary lift.  It intentionally does not translate the
Halide schedule into a hand-written approximation.
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


@dataclass(frozen=True)
class CodeRange:
    name: str
    start: int
    entry: int
    end: int
    symbol: str | None = None


CODE_RANGES = (
    CodeRange(
        "ComputeBayerNoiseModelF32TileSize16",
        0x037A6E14,
        0x037AAB68,
        0x037B9AF4,
        "photon_mgc_compute_bayer_noise_model_f32_tile_size_16",
    ),
    CodeRange(
        "ComputeRGBNoiseModelF32TileSize16",
        0x037B9AF4,
        0x037B9AF4,
        0x037BECDC,
        "photon_mgc_compute_rgb_noise_model_f32_tile_size_16",
    ),
    CodeRange(
        "DownsampleRawF16ToFloatTileSize16",
        0x037BECDC,
        0x037BECDC,
        0x037C1A8C,
        "photon_mgc_downsample_raw_f16_to_float_tile_size_16",
    ),
    CodeRange(
        "DownsampleRgbF16ToFloatTileSize16",
        0x037C1A8C,
        0x037C1A8C,
        0x037DB248,
        "photon_mgc_downsample_rgb_f16_to_float_tile_size_16",
    ),
    CodeRange(
        "DownsampleRgbF16ToFloatTileSize16CopyHelper",
        0x038561A4,
        0x03856414,
        0x0385642C,
    ),
    CodeRange("BayerRawToYuv1xS16", 0x049C3484, 0x049C7B64, 0x049CAA54),
    CodeRange(
        "RgbRawToYuv1xS16",
        0x04A17EA8,
        0x04A198B8,
        0x04A1C3E8,
        "photon_mgc_rgb_raw_to_yuv_s16",
    ),
    CodeRange(
        "ChromaDenoisePyramidCompleteS16",
        0x04BE28CC,
        0x04BE28CC,
        0x04BE8764,
        "photon_mgc_chroma_denoise_pyramid_complete_s16",
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
    CodeRange(
        "YuvToRgbS16",
        0x04CE4F50,
        0x04CE554C,
        0x04CE61B4,
        "photon_mgc_yuv_to_rgb_s16",
    ),
    CodeRange(
        "PecanLumaDenoiseS16",
        0x04EF0000,
        0x04EF1760,
        0x04F1BB2C,
        "photon_mgc_pecan_luma_denoise_s16",
    ),
    CodeRange(
        "ComputeDenoiseStrengthMapsU16",
        0x054DBE04,
        0x054DCD34,
        0x054DE730,
        "photon_mgc_compute_denoise_strength_maps_u16",
    ),
    CodeRange(
        "DownsampleRgbF16ToFloatTileSize16Mode0",
        0x05DACC58,
        0x05DACC58,
        0x05DAD588,
        "photon_mgc_downsample_rgb_mode_0",
    ),
    CodeRange(
        "DownsampleRgbF16ToFloatTileSize16Mode1",
        0x05DAD588,
        0x05DAD588,
        0x05DAE16C,
        "photon_mgc_downsample_rgb_mode_1",
    ),
)

HOST_TARGETS = {
    0x05EF2634: "photon_mgc_halide_malloc",
    0x05EF2650: "photon_mgc_halide_free",
    0x05EF54BC: "photon_mgc_halide_trace",
    0x05A7FEF0: "photon_mgc_halide_do_par_for",
    0x05FB8540: "memset",
    0x05DAE16C: "photon_mgc_downsample_rgb_dispatch",
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


def adr_target(pc: int, instruction: int) -> int:
    immediate = (((instruction >> 5) & 0x7FFFF) << 2) | (
        (instruction >> 29) & 0x3
    )
    return pc + sign_extend(immediate, 21)


def branch_target(pc: int, instruction: int) -> int:
    return pc + (sign_extend(instruction & 0x03FFFFFF, 26) << 2)


def relative_imm19_target(pc: int, instruction: int) -> int:
    return pc + (sign_extend((instruction >> 5) & 0x7FFFF, 19) << 2)


def relative_imm14_target(pc: int, instruction: int) -> int:
    return pc + (sign_extend((instruction >> 5) & 0x3FFF, 14) << 2)


def range_for(address: int) -> CodeRange | None:
    return next(
        (item for item in CODE_RANGES if item.start <= address < item.end),
        None,
    )


def address_symbol(address: int) -> str:
    return f"photon_mgc_address_{address:x}"


def page_symbol(address: int) -> str:
    return f"photon_mgc_page_{address:x}"


def error_symbol(address: int) -> str:
    return f"photon_mgc_halide_error_{address:x}"


class CapsuleWriter:
    def __init__(self, source: bytes) -> None:
        self._source = source
        self._capsule = bytearray()

    def emit_incbin(self, lines: list[str], start: int, end: int) -> None:
        if end <= start:
            return
        if start < 0 or end > len(self._source):
            raise ValueError(
                f"capsule span 0x{start:x}..0x{end:x} exceeds source size "
                f"0x{len(self._source):x}"
            )
        capsule_offset = len(self._capsule)
        self._capsule.extend(self._source[start:end])
        lines.append(
            f'    .incbin "@MGC_DENOISE_CAPSULE@", '
            f"0x{capsule_offset:x}, 0x{end - start:x}"
        )

    def write(self, output_path: Path) -> str:
        capsule = bytes(self._capsule)
        output_path.write_bytes(capsule)
        return hashlib.sha256(capsule).hexdigest()


def validate_local_pc_relative(
    code_range: CodeRange,
    pc: int,
    instruction: int,
) -> None:
    target: int | None = None
    kind = ""
    if instruction & 0x9F000000 == 0x10000000:
        target = adr_target(pc, instruction)
        kind = "ADR"
    elif instruction & 0x3B000000 == 0x18000000:
        target = relative_imm19_target(pc, instruction)
        kind = "literal load"
    elif instruction & 0xFF000010 == 0x54000000:
        target = relative_imm19_target(pc, instruction)
        kind = "conditional branch"
    elif instruction & 0x7E000000 == 0x34000000:
        target = relative_imm19_target(pc, instruction)
        kind = "compare branch"
    elif instruction & 0x7E000000 == 0x36000000:
        target = relative_imm14_target(pc, instruction)
        kind = "test branch"
    if target is not None and not (
        page_floor(code_range.start)
        <= target
        < page_ceil(code_range.end)
    ):
        raise ValueError(
            f"{kind} at 0x{pc:x} escapes {code_range.name}: 0x{target:x}"
        )


def generate(
    source_path: Path,
    manifest_path: Path,
    output_path: Path,
    capsule_path: Path,
) -> None:
    source = source_path.read_bytes()
    digest = hashlib.sha256(source).hexdigest()
    if digest != SOURCE_SHA256:
        raise ValueError(
            f"expected libgcastartup.so {SOURCE_SHA256}, got {digest}"
        )
    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    pages = {int(value, 16) for value in manifest["pages"]}
    task_relocations = {
        int(location, 16): int(target, 16)
        for location, target in manifest["task_relocations"].items()
    }
    expected_task_count = manifest["do_par_for_call_count"]
    if len(task_relocations) != expected_task_count:
        raise ValueError(
            f"manifest records {expected_task_count} do_par_for calls but "
            f"{len(task_relocations)} task relocations"
        )
    capsule_writer = CapsuleWriter(source)

    code_pages: set[int] = set()
    labels: dict[int, list[str]] = {}
    patches: dict[int, str] = {}
    external_error_targets: set[int] = set()

    for code_range in CODE_RANGES:
        section_start = page_floor(code_range.start)
        section_end = page_ceil(code_range.end)
        code_pages.update(range(section_start, section_end, PAGE_SIZE))
        if code_range.symbol is not None:
            labels.setdefault(code_range.entry, []).append(code_range.symbol)
        labels.setdefault(code_range.entry, []).append(
            address_symbol(code_range.entry)
        )

        for pc in range(code_range.start, code_range.end, 4):
            instruction = struct.unpack_from("<I", source, pc)[0]
            if instruction & 0x9F000000 == 0x90000000:
                target_page = adrp_target(pc, instruction)
                if target_page not in pages:
                    raise ValueError(
                        f"ADRP at 0x{pc:x} references missing page "
                        f"0x{target_page:x}"
                    )
                register = instruction & 0x1F
                patches[pc] = (
                    f"    adrp x{register}, {page_symbol(target_page)}"
                )
                continue
            if instruction & 0xFC000000 in (0x14000000, 0x94000000):
                target = branch_target(pc, instruction)
                target_range = range_for(target)
                if target_range is code_range:
                    continue
                mnemonic = (
                    "bl"
                    if instruction & 0xFC000000 == 0x94000000
                    else "b"
                )
                if target_range is not None:
                    symbol = address_symbol(target)
                    labels.setdefault(target, []).append(symbol)
                else:
                    symbol = HOST_TARGETS.get(target, error_symbol(target))
                    if target not in HOST_TARGETS:
                        external_error_targets.add(target)
                patches[pc] = f"    {mnemonic} {symbol}"
                continue
            validate_local_pc_relative(code_range, pc, instruction)

    for target in task_relocations.values():
        if range_for(target) is None:
            raise ValueError(
                f"task relocation target 0x{target:x} is outside code closure"
            )
        labels.setdefault(target, []).append(address_symbol(target))

    lines = [
        "/* Generated mechanically from pinned MGC 9.6.080 V24.",
        " * Do not edit; regenerate with",
        " * scripts/research/generate_mgc_denoise_static_asm.py.",
        " */",
        "",
        "#if !defined(__aarch64__)",
        '#error "MGC denoise static lift is arm64-only"',
        "#endif",
        "",
    ]
    for target in sorted(external_error_targets):
        lines.append(f"    .hidden {error_symbol(target)}")
    for symbol in sorted(set(HOST_TARGETS.values()) - {"memset"}):
        lines.append(f"    .hidden {symbol}")
    lines.append("")

    code_groups: list[list[CodeRange]] = []
    for code_range in sorted(CODE_RANGES, key=lambda value: value.start):
        section_start = page_floor(code_range.start)
        if (
            not code_groups
            or section_start >= max(
                page_ceil(value.end) for value in code_groups[-1]
            )
        ):
            code_groups.append([code_range])
        else:
            code_groups[-1].append(code_range)

    for code_group in code_groups:
        section_start = min(page_floor(value.start) for value in code_group)
        section_end = max(page_ceil(value.end) for value in code_group)
        section_name = "__".join(value.name for value in code_group)
        lines.extend(
            [
                (
                    f'.section .text.photon_mgc.{section_name},'
                    '"ax",@progbits'
                ),
                "    .p2align 12",
            ]
        )
        for code_range in code_group:
            if code_range.symbol is not None:
                lines.extend(
                    [
                        f"    .global {code_range.symbol}",
                        f"    .hidden {code_range.symbol}",
                        f"    .type {code_range.symbol}, %function",
                    ]
                )

        events = set(range(section_start, section_end, PAGE_SIZE))
        events.update(
            address
            for address in labels
            if section_start <= address < section_end
        )
        events.update(
            address
            for address in patches
            if section_start <= address < section_end
        )
        position = section_start
        for address in sorted(events):
            capsule_writer.emit_incbin(lines, position, address)
            if address % PAGE_SIZE == 0:
                lines.append(f"{page_symbol(address)}:")
            for symbol in dict.fromkeys(labels.get(address, [])):
                lines.append(f"{symbol}:")
            patch = patches.get(address)
            if patch is not None:
                lines.append(patch)
                position = address + 4
            else:
                position = address
        capsule_writer.emit_incbin(lines, position, section_end)
        lines.append("")

    relocation_pages = {page_floor(value) for value in task_relocations}
    for page in sorted(pages - code_pages):
        if page in relocation_pages:
            lines.append(
                f'.section .data.rel.ro.photon_mgc.page_{page:x},'
                '"aw",@progbits'
            )
        else:
            lines.append(
                f'.section .rodata.photon_mgc.page_{page:x},"a",@progbits'
            )
        lines.extend(["    .p2align 12", f"{page_symbol(page)}:"])
        page_relocations = sorted(
            (location, target)
            for location, target in task_relocations.items()
            if page_floor(location) == page
        )
        position = page
        for location, target in page_relocations:
            capsule_writer.emit_incbin(lines, position, location)
            lines.append(f"    .xword {address_symbol(target)}")
            position = location + 8
        capsule_writer.emit_incbin(lines, position, page + PAGE_SIZE)
        lines.append("")

    lines.extend(
        [
            '.section .note.GNU-stack,"",@progbits',
            "",
        ]
    )
    output_path.write_text("\n".join(lines), encoding="utf-8")
    capsule_sha256 = capsule_writer.write(capsule_path)
    print(
        f"generated={output_path} pages={len(pages)} "
        f"patches={len(patches)} "
        f"task_relocations={len(task_relocations)} "
        f"error_targets={len(external_error_targets)} "
        f"capsule={capsule_path} capsule_sha256={capsule_sha256}"
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("source", type=Path)
    parser.add_argument("manifest", type=Path)
    parser.add_argument("output", type=Path)
    parser.add_argument("capsule", type=Path)
    args = parser.parse_args()
    generate(args.source, args.manifest, args.output, args.capsule)


if __name__ == "__main__":
    main()
