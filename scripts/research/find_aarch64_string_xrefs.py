#!/usr/bin/env python3
"""Find direct AArch64 ADR/ADRP+ADD references to an ELF virtual address."""

from __future__ import annotations

import argparse
from collections import deque
from pathlib import Path
import struct

from capstone import CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN, Cs
from elftools.elf.elffile import ELFFile


def parse_address(value: str) -> int:
    return int(value, 0)


def sign_extend(value: int, bits: int) -> int:
    sign = 1 << (bits - 1)
    return (value ^ sign) - sign


def decode_adrp_target(pc: int, instruction: int) -> int:
    immediate = (((instruction >> 5) & 0x7FFFF) << 2) | (
        (instruction >> 29) & 0x3
    )
    return (pc & ~0xFFF) + (sign_extend(immediate, 21) << 12)


def is_adrp(instruction: int) -> bool:
    return instruction & 0x9F000000 == 0x90000000


def decode_add_immediate(instruction: int) -> tuple[int, int, int] | None:
    if instruction & 0x7F000000 != 0x11000000:
        return None
    destination = instruction & 0x1F
    source = (instruction >> 5) & 0x1F
    immediate = (instruction >> 10) & 0xFFF
    if instruction & (1 << 22):
        immediate <<= 12
    return destination, source, immediate


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("elf", type=Path)
    parser.add_argument("target", type=parse_address)
    parser.add_argument("--context", type=int, default=6)
    parser.add_argument(
        "--pointers",
        action="store_true",
        help="Also print allocated-section locations containing a 64-bit target pointer.",
    )
    args = parser.parse_args()

    with args.elf.open("rb") as stream:
        elf = ELFFile(stream)
        text = elf.get_section_by_name(".text")
        if text is None:
            raise SystemExit("ELF has no .text section")
        text_bytes = text.data()
        text_address = int(text["sh_addr"])
        if args.pointers:
            needle = struct.pack("<Q", args.target)
            for section in elf.iter_sections():
                if not (int(section["sh_flags"]) & 0x2):
                    continue
                try:
                    section_data = section.data()
                except Exception:
                    continue
                start = 0
                while True:
                    offset = section_data.find(needle, start)
                    if offset < 0:
                        break
                    location = int(section["sh_addr"]) + offset
                    print(
                        f"pointer 0x{location:x} in {section.name} "
                        f"(file+0x{int(section['sh_offset']) + offset:x})"
                    )
                    start = offset + 1

    disassembler = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    instruction_count = len(text_bytes) // 4
    for index in range(instruction_count):
        instruction = struct.unpack_from("<I", text_bytes, index * 4)[0]
        if not is_adrp(instruction):
            continue
        pc = text_address + index * 4
        page = decode_adrp_target(pc, instruction)
        register = instruction & 0x1F
        for following in range(index + 1, min(index + 13, instruction_count)):
            add_instruction = struct.unpack_from(
                "<I", text_bytes, following * 4
            )[0]
            decoded = decode_add_immediate(add_instruction)
            if decoded is None:
                continue
            destination, source, immediate = decoded
            if destination != register or source != register:
                continue
            if page + immediate != args.target:
                continue
            hit_pc = text_address + following * 4
            context_start = max(index - args.context, 0)
            context_end = min(following + args.context + 1, instruction_count)
            context_bytes = text_bytes[
                context_start * 4: context_end * 4
            ]
            context_address = text_address + context_start * 4
            print(
                f"xref target=0x{args.target:x} ADRP=0x{pc:x} "
                f"ADD=0x{hit_pc:x}"
            )
            for decoded_instruction in disassembler.disasm(
                context_bytes, context_address
            ):
                marker = ">" if decoded_instruction.address in (pc, hit_pc) else " "
                print(
                    f"{marker} 0x{decoded_instruction.address:x}: "
                    f"{decoded_instruction.mnemonic} "
                    f"{decoded_instruction.op_str}"
                )
            break


if __name__ == "__main__":
    main()
