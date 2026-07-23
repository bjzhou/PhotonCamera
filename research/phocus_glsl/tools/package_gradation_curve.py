"""Package a runtime-exported Phocus gradation curve for PhotonCamera.

Input is the exact little-endian float table returned by the original
CGradationManager.  Phocus stores integral 16-bit code values in float
containers; this tool verifies that invariant and stores lossless uint16
samples plus provenance in a compact application asset.
"""

from __future__ import annotations

import argparse
import hashlib
import pathlib
import struct


MAGIC = b"HNCURV1\0"
SCHEMA_VERSION = 1
SAMPLE_COUNT = 65_536
CODE_VALUE_MAX = 65_535
FNV1A64_OFFSET_BASIS = 14_695_981_039_346_656_037
FNV1A64_PRIME = 1_099_511_628_211


def fnv1a64(data: bytes) -> int:
    value = FNV1A64_OFFSET_BASIS
    for byte in data:
        value ^= byte
        value = (value * FNV1A64_PRIME) & 0xFFFF_FFFF_FFFF_FFFF
    return value


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("input", type=pathlib.Path)
    parser.add_argument("output", type=pathlib.Path)
    parser.add_argument("--film-curve-type", type=int, required=True)
    parser.add_argument("--companding", type=int, required=True)
    parser.add_argument("--source-library-sha256", required=True)
    args = parser.parse_args()

    source_library_sha256 = bytes.fromhex(args.source_library_sha256)
    if len(source_library_sha256) != 32:
        raise ValueError("source library SHA-256 must contain exactly 32 bytes")

    source = args.input.read_bytes()
    if len(source) != SAMPLE_COUNT * 4:
        raise ValueError(
            f"expected {SAMPLE_COUNT * 4} input bytes, got {len(source)}"
        )
    samples_f32 = struct.unpack(f"<{SAMPLE_COUNT}f", source)
    samples_u16: list[int] = []
    for index, value in enumerate(samples_f32):
        rounded = round(value)
        if (
            not 0 <= rounded <= CODE_VALUE_MAX
            or abs(value - rounded) > 0.0
        ):
            raise ValueError(f"sample {index} is not an exact uint16 code: {value}")
        samples_u16.append(rounded)

    source_fnv1a64 = fnv1a64(source)
    header = struct.pack(
        "<8sIiiIIQ32s",
        MAGIC,
        SCHEMA_VERSION,
        args.film_curve_type,
        args.companding,
        SAMPLE_COUNT,
        CODE_VALUE_MAX,
        source_fnv1a64,
        source_library_sha256,
    )
    payload = struct.pack(f"<{SAMPLE_COUNT}H", *samples_u16)
    packaged = header + payload
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_bytes(packaged)

    print(f"source_sha256={hashlib.sha256(source).hexdigest()}")
    print(f"source_fnv1a64={source_fnv1a64:016x}")
    print(f"asset_sha256={hashlib.sha256(packaged).hexdigest()}")
    print(f"asset_bytes={len(packaged)}")


if __name__ == "__main__":
    main()
