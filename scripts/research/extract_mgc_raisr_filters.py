#!/usr/bin/env python3
"""Lift the pinned MGC V25 nano_raisr 5x5 filter bank out of libgcastartup.so.

The bank is the static table the V25 `nano_raisr_direct_5x5` parameters default to:
`NanoRaisrDirectUpscaleAndRefineLumaMin` receives it as `nano_raisr_filters`. Only the
table bytes are copied; the image arithmetic stays in the lifted AOT kernels.

Layout, verified against the Halide buffer metadata of the per-shift kernels
(`filters_` extent.2 = 216, stride.3 = 5400) and against the data itself:

    4 phase shifts x 216 classes x 5 x 5 taps, int16, Q12 (every filter sums to ~4096)

The four shifts are the exact horizontal/vertical flips of one another, which is the
per-shift subpixel phase grid of a 2x upscale.
"""

from __future__ import annotations

import argparse
import hashlib
import struct
from pathlib import Path

SOURCE_SHA256 = "76966e7c150dfcb2795ea5b2119827a7e90b13d8c03035dbc4de583d9d12eaa6"
FILTER_BASE = 0xBAB436
FILTER_BYTES = 43200
SHIFT_COUNT = 4
CLASS_COUNT = 216
TAP_COUNT = 5
Q_BITS = 12


def verify(source: bytes) -> tuple[int, ...]:
    data = source[FILTER_BASE:FILTER_BASE + FILTER_BYTES]
    if len(data) != FILTER_BYTES:
        raise ValueError("filter table lies outside the mapped file")
    taps = struct.unpack_from("<%dh" % (len(data) // 2), data, 0)
    expected = SHIFT_COUNT * CLASS_COUNT * TAP_COUNT * TAP_COUNT
    if len(taps) != expected:
        raise ValueError("expected %d taps, got %d" % (expected, len(taps)))
    per_shift = CLASS_COUNT * TAP_COUNT * TAP_COUNT
    for shift in range(SHIFT_COUNT):
        chunk = taps[shift * per_shift:(shift + 1) * per_shift]
        sums = {
            sum(chunk[cls * 25:(cls + 1) * 25]) for cls in range(CLASS_COUNT)
        }
        # Every class is an interpolation filter normalised to 1.0 in Q12; the small
        # spread is the original quantisation, not an extraction error.
        if not all(4000 <= value <= 4200 for value in sums):
            raise ValueError("shift %d filter sums out of Q12 range: %s" % (shift, sorted(sums)))
    return taps


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("source", type=Path)
    parser.add_argument("output", type=Path)
    arguments = parser.parse_args()

    source = arguments.source.read_bytes()
    digest = hashlib.sha256(source).hexdigest()
    if digest != SOURCE_SHA256:
        raise ValueError("expected libgcastartup.so %s, got %s" % (SOURCE_SHA256, digest))

    taps = verify(source)
    payload = struct.pack("<%dh" % len(taps), *taps)
    arguments.output.parent.mkdir(parents=True, exist_ok=True)
    arguments.output.write_bytes(payload)
    print(
        "wrote=%s bytes=%d shifts=%d classes=%d taps=%d q=%d sha256=%s"
        % (
            arguments.output,
            len(payload),
            SHIFT_COUNT,
            CLASS_COUNT,
            TAP_COUNT,
            Q_BITS,
            hashlib.sha256(payload).hexdigest(),
        )
    )


if __name__ == "__main__":
    main()
