# /// script
# requires-python = ">=3.11"
# dependencies = ["numpy>=2.0,<3", "scipy>=1.14,<2", "pypng==0.20220715.0"]
# ///
"""Run with uv run tools/dcp_lut/dcp_lut.py --help."""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import struct
import subprocess
import sys
import tempfile
import time
import zlib

import numpy as np
import png

from errors import ToolError
from pipeline import Converter
from sdk import HERE, Profile, load_sdk


def atomic_write(path, write):
    path.parent.mkdir(parents=True, exist_ok=True)
    fd, name = tempfile.mkstemp(prefix=f".{path.name}.", dir=path.parent)
    try:
        with os.fdopen(fd, "wb") as stream:
            write(stream)
        os.replace(name, path)
    finally:
        if os.path.exists(name):
            os.unlink(name)


def check_destinations(outputs, inputs, overwrite):
    protected = {p.resolve() for p in inputs}
    for path in outputs:
        if path.resolve() in protected:
            raise ToolError("overwrite_input", path=path)
        if path.exists() and not overwrite:
            raise ToolError("output_exists", path=path)


def identity(level):
    size = level * level
    indices = np.arange(size ** 3)
    return np.column_stack([indices % size, indices // size % size, indices // (size * size)]) / (size - 1)


def to_raster(rgb, level, layout):
    size = level * level
    if layout == "tiles":
        # b = tileY * level + tileX; cube axes are b, g, r.
        rgb = rgb.reshape(level, level, size, size, 3).transpose(0, 2, 1, 3, 4)
    return rgb.reshape(level ** 3, level ** 3, 3)


def from_raster(rgb, level, layout):
    if layout == "tiles":
        size = level * level
        rgb = rgb.reshape(level, size, level, size, 3).transpose(0, 2, 1, 3, 4)
    return rgb.reshape(-1, 3)


def write_png(stream, rgb, level, layout):
    raster = np.rint(np.clip(to_raster(rgb, level, layout), 0, 1) * 65535).astype(np.uint16)
    # Explicit sRGB chunk; no approximate gamma-only color declaration.
    # PNG header + IHDR occupies 33 bytes. Write sRGB directly after IHDR by
    # streaming through a header buffer, avoiding a second full-image copy.
    class SrgbStream:
        def __init__(self):
            self.header = bytearray()
            self.ready = False

        def write(self, data):
            if self.ready:
                return stream.write(data)
            self.header.extend(data)
            if len(self.header) >= 33:
                stream.write(self.header[:33])
                payload = b"sRGB\x00"
                stream.write(struct.pack(">I", 1) + payload + struct.pack(">I", zlib.crc32(payload)))
                stream.write(self.header[33:])
                self.header.clear()
                self.ready = True
            return len(data)

    png.Writer(level ** 3, level ** 3, bitdepth=16, greyscale=False).write(
        SrgbStream(), raster.reshape(level ** 3, -1))


def read_hald(path, layout):
    # Validate color semantics before decoding samples; never silently apply or
    # discard an unknown ICC/HDR transfer function on a numeric LUT image.
    with path.open("rb") as stream:
        reader = png.Reader(file=stream)
        reader.preamble()
        width, height = reader.width, reader.height
        level = round(width ** (1 / 3))
        if width != height or level not in range(2, 17) or level ** 3 != width:
            raise ToolError("invalid_hald_size")
    with path.open("rb") as stream:
        for kind, data in png.Reader(file=stream).chunks():
            if kind in (b"iCCP", b"cICP"):
                raise ToolError("unsupported_color_profile")
            if kind == b"gAMA" and abs(struct.unpack(">I", data)[0] / 100000 - 0.45455) > 1e-5:
                raise ToolError("invalid_gamma")
            if kind == b"cHRM":
                srgb = np.array([31270, 32900, 64000, 33000, 30000, 60000, 15000, 6000])
                if np.any(np.abs(np.array(struct.unpack(">8I", data)) - srgb) > 5):
                    raise ToolError("invalid_primaries")
    with path.open("rb") as stream:
        width, height, rows, metadata = png.Reader(file=stream).asDirect()
        depth = metadata["bitdepth"]
        if depth not in (8, 16) or metadata["greyscale"]:
            raise ToolError("invalid_samples")
        array = np.vstack([np.asarray(row, dtype=np.uint16) for row in rows])
        array = array.reshape(height, width, metadata["planes"])
        if metadata["alpha"] and not np.all(array[:, :, 3] == (1 << depth) - 1):
            raise ToolError("transparent_samples")
        rgb = array[:, :, :3].astype(np.float64) / ((1 << depth) - 1)
    return from_raster(rgb, level, layout), level, depth


def write_cube(stream, rgb, size, title):
    title = title.replace('"', "'").replace("\n", " ").replace("\r", " ")
    stream.write((f'TITLE "{title}"\n# D50 DCP composition; input/output encoded sRGB\n'
                  f'LUT_3D_SIZE {size}\nDOMAIN_MIN 0 0 0\nDOMAIN_MAX 1 1 1\n').encode())
    np.savetxt(stream, rgb, fmt="%.9f")  # .cube: red changes fastest.


def digest(path):
    with path.open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def parser(messages):
    cli = argparse.ArgumentParser(description=messages["description"])
    cli.add_argument("--language", choices=["en", "zh"], default="en")
    commands = cli.add_subparsers(dest="command", required=True)
    make = commands.add_parser("identity", help=messages["identity"])
    make.add_argument("--level", type=int, choices=range(2, 17), default=8, help=messages["level"])
    make.add_argument("--output", type=Path, required=True)
    convert = commands.add_parser("convert", help=messages["convert"])
    convert.add_argument("--source", type=Path, required=True, help=messages["source"])
    convert.add_argument("--target", type=Path, required=True, help=messages["target"])
    convert.add_argument("--hald", type=Path, required=True, help=messages["input"])
    convert.add_argument("--output-prefix", type=Path, required=True, help=messages["prefix"])
    convert.add_argument("--allow-approximate", action="store_true", help=messages["approximate"])
    convert.add_argument("--tolerance", type=float, default=2e-5, help=messages["tolerance"])
    convert.add_argument("--hdr-domain-max", type=float, default=16, help=messages["hdr_domain"])
    inspect = commands.add_parser("inspect", help=messages["inspect"])
    inspect.add_argument("profile", type=Path)
    for command in [make, convert]:
        command.add_argument("--layout", choices=["hald", "tiles"], default="hald", help=messages["layout"])
        command.add_argument("--overwrite", action="store_true", help=messages["overwrite"])
    return cli


def convert(args, messages):
    prefix = args.output_prefix
    outputs = [Path(str(prefix) + ext) for ext in [".hald.png", ".cube", ".json"]]
    check_destinations(outputs, [args.source, args.target, args.hald], args.overwrite)
    if not (np.isfinite(args.tolerance) and 0 < args.tolerance < 1):
        raise ToolError("invalid_tolerance")
    if not (np.isfinite(args.hdr_domain_max) and 1 <= args.hdr_domain_max <= 256):
        raise ToolError("invalid_domain")
    rgb, level, depth = read_hald(args.hald, args.layout)
    output = np.empty_like(rgb)
    library = load_sdk()
    started = time.monotonic()
    with Profile(library, args.source) as source, Profile(library, args.target) as target:
        processor = Converter(source, target, args.tolerance, args.hdr_domain_max)
        last_progress = 0
        for start in range(0, len(rgb), 4096):
            end = min(start + 4096, len(rgb))
            output[start:end] = processor.convert(rgb[start:end])
            if time.monotonic() - last_progress >= 5 or end == len(rgb):
                print(messages["progress"].format(done=end, total=len(rgb)), file=sys.stderr)
                last_progress = time.monotonic()
        diagnostics = processor.report()
        failed = any(item["over_tolerance"] for item in diagnostics["inverse_residuals"].values())
        report = {"schema_version": 1, "white": "D50", "sdk": library.dcp_version().decode(),
                  "source": source.describe(), "target": target.describe(),
                  "input_hald": str(args.hald.resolve()), "input_bit_depth": depth,
                  "input_hashes_sha256": {str(p.resolve()): digest(p) for p in [args.source, args.target, args.hald]},
                  "layout": args.layout, "hald_level": level, "lut_size": level * level,
                  "output_bit_depth": 16, "png_quantization_error_bound": 0.5 / 65535,
                  "exported": False,
                  "camera_bridge": "neutral-normalized white-balanced camera RGB",
                  "shadows": 0, "image_baseline_exposure": 0,
                  "hdr_inverse_domain_max": args.hdr_domain_max,
                  "inverse_uniqueness": "not guaranteed: table clipping/folds can have multiple preimages",
                  "status": "approximate" if failed and args.allow_approximate else "rejected" if failed else "validated",
                  "elapsed_seconds": time.monotonic() - started, **diagnostics}
        atomic_write(outputs[2], lambda f: f.write(json.dumps(report, indent=2, ensure_ascii=False).encode()))
        if failed and not args.allow_approximate:
            print(messages["failed_inverse"].format(path=outputs[2]), file=sys.stderr)
            return 2
        if failed:
            print(messages["approx_warning"].format(path=outputs[2]), file=sys.stderr)
        atomic_write(outputs[0], lambda f: write_png(f, output, level, args.layout))
        atomic_write(outputs[1], lambda f: write_cube(f, output, level * level, f"{source.name} to {target.name}"))
        report["exported"] = True
        atomic_write(outputs[2], lambda f: f.write(json.dumps(report, indent=2, ensure_ascii=False).encode()))
    for path in outputs:
        print(messages["saved"].format(path=path))
    return 0


def main():
    language_parser = argparse.ArgumentParser(add_help=False)
    language_parser.add_argument("--language", choices=["en", "zh"], default="en")
    language, _ = language_parser.parse_known_args()
    messages = json.loads((HERE / "messages.json").read_text())[language.language]
    args = parser(messages).parse_args()
    try:
        if args.command == "identity":
            check_destinations([args.output], [], args.overwrite)
            rgb = identity(args.level)
            atomic_write(args.output, lambda f: write_png(f, rgb, args.level, args.layout))
            print(messages["saved"].format(path=args.output))
            return 0
        if args.command == "inspect":
            with Profile(load_sdk(), args.profile) as profile:
                print(json.dumps(profile.describe(), indent=2, ensure_ascii=False))
            return 0
        return convert(args, messages)
    except (ValueError, OSError, RuntimeError, png.Error, subprocess.CalledProcessError, np.linalg.LinAlgError) as exc:
        detail = exc.translated(messages) if isinstance(exc, ToolError) else str(exc)
        print(messages["error"].format(message=detail), file=sys.stderr)
        return 1


if __name__ == "__main__":
    sys.exit(main())
