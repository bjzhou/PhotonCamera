#!/usr/bin/env python3
"""Read PhotonCamera's self-contained MakerNote from a classic TIFF/DNG without decoding RAW."""

import argparse
import json
from pathlib import Path
import struct
import sys


def read_makernote(path: Path) -> dict:
    with path.open("rb") as stream:
        size = path.stat().st_size

        def read(offset: int, count: int) -> bytes:
            if offset < 0 or count < 0 or offset + count > size:
                raise ValueError("TIFF metadata extends beyond the file")
            stream.seek(offset)
            data = stream.read(count)
            if len(data) != count:
                raise ValueError("Truncated TIFF metadata")
            return data

        header = read(0, 8)
        byte_order = {b"II": "<", b"MM": ">"}.get(header[:2])
        if byte_order is None or struct.unpack(byte_order + "H", header[2:4])[0] != 42:
            raise ValueError("Expected a classic TIFF/DNG header")

        def find_tag(ifd_offset: int, wanted: int) -> tuple[int, int, bytes]:
            count = struct.unpack(byte_order + "H", read(ifd_offset, 2))[0]
            entries = read(ifd_offset + 2, count * 12)
            for index in range(count):
                entry = entries[index * 12:(index + 1) * 12]
                tag, kind, length = struct.unpack(byte_order + "HHI", entry[:8])
                if tag == wanted:
                    return kind, length, entry[8:12]
            raise ValueError(f"Missing TIFF tag 0x{wanted:04x}")

        ifd0 = struct.unpack(byte_order + "I", header[4:8])[0]
        kind, count, pointer = find_tag(ifd0, 0x8769)
        if kind != 4 or count != 1:
            raise ValueError("Invalid ExifIFD pointer")
        exif = struct.unpack(byte_order + "I", pointer)[0]
        kind, count, pointer = find_tag(exif, 0x927C)
        if kind != 7 or not 1 <= count <= 16 * 1024 * 1024:
            raise ValueError("Invalid or oversized MakerNote")
        payload = pointer[:count] if count <= 4 else read(
            struct.unpack(byte_order + "I", pointer)[0], count
        )
        prefix = b"PhotonCamera\x00"
        if not payload.startswith(prefix):
            raise ValueError("MakerNote is not a PhotonCamera diagnostic payload")
        document = json.loads(payload[len(prefix):].decode("utf-8"))
        if not isinstance(document, dict) or document.get("schemaVersion") != 1:
            raise ValueError("Unsupported PhotonCamera MakerNote schema")
        return document


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("dng", type=Path)
    parser.add_argument("--output", type=Path, help="Write UTF-8 JSON to this file")
    args = parser.parse_args()
    try:
        document = read_makernote(args.dng)
        text = json.dumps(document, ensure_ascii=False, indent=2) + "\n"
        if args.output:
            args.output.write_text(text, encoding="utf-8")
        else:
            sys.stdout.reconfigure(encoding="utf-8")
            sys.stdout.write(text)
    except (OSError, ValueError) as error:
        parser.exit(1, f"{error}\n")


if __name__ == "__main__":
    main()
