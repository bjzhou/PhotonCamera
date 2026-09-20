#!/usr/bin/env python3
"""Lift the pinned MGC V25 nano_raisr randomness LUT out of libgcastartup.so.

The RAISR composite kernel takes this table as an input buffer. It is a static
`.data` object: the GOT slot at 0x61E70A0 carries an R_AARCH64_RELATIVE
relocation to VA 0x7C59978, and the composite entry at 0x35C8C54 is the only
consumer reached from the finish pipeline.

Length evidence: the object is a 16x16 byte table. Bytes 0x000..0x0FF only ever
take the four dither levels {0, 5, 10, 15}, and from 0x100 onwards the bytes are
zero padding before the next `.data` object. The driver hands the kernel a
descriptor whose dynamic dimensions are all zero, so the kernel indexes the
table independently of the descriptor; the extraction below therefore only
carries the bytes and asserts the observed value set and length.

`.data` is mapped at VA-0x4000 in the file, unlike `.rodata` where VA == offset.
"""

from __future__ import annotations

import argparse
import hashlib
from pathlib import Path

SOURCE_SHA256 = "76966e7c150dfcb2795ea5b2119827a7e90b13d8c03035dbc4de583d9d12eaa6"
TABLE_VA = 0x7C59978
TABLE_BYTES = 0x100
DATA_FILE_BIAS = 0x4000
LEVELS = {0, 5, 10, 15}


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("source", type=Path)
    parser.add_argument("output", type=Path)
    arguments = parser.parse_args()

    source = arguments.source.read_bytes()
    digest = hashlib.sha256(source).hexdigest()
    if digest != SOURCE_SHA256:
        raise ValueError("expected libgcastartup.so %s, got %s" % (SOURCE_SHA256, digest))

    offset = TABLE_VA - DATA_FILE_BIAS
    table = source[offset:offset + TABLE_BYTES]
    if len(table) != TABLE_BYTES:
        raise ValueError("randomness LUT lies outside the mapped file")
    unexpected = sorted(set(table) - LEVELS)
    if unexpected:
        raise ValueError("randomness LUT leaves the dither level set: %s" % unexpected)
    tail = source[offset + TABLE_BYTES:offset + TABLE_BYTES + 0x10]
    if any(tail):
        raise ValueError("expected zero padding right after the 256-byte table")

    arguments.output.parent.mkdir(parents=True, exist_ok=True)
    arguments.output.write_bytes(table)
    print(
        "wrote=%s bytes=%d levels=%s sha256=%s"
        % (
            arguments.output,
            len(table),
            sorted(LEVELS),
            hashlib.sha256(table).hexdigest(),
        )
    )


if __name__ == "__main__":
    main()
