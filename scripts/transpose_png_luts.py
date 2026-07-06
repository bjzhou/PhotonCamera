#!/usr/bin/env python3
"""Convert packed PNG LUTs into PhotonCamera-compatible LUT files.

PhotonCamera stores 3D LUT samples in app order:

    index = ((b * size + g) * size + r) * 3

and its PNG importer understands an unwrapped layout where:

    x = b * size + r
    y = g

RewindPix ships square PNG LUTs as a flat cube stream where:

    flat = (b * size + g) * size + r
    x = flat % image_width
    y = flat // image_width

For example, 512x512 PNGs contain 64^3 samples and 1728x1728 PNGs
contain 144^3 samples. This script reads that layout by default, can also
read square HALD PNGs, and writes either native .plut files or app-readable
unwrapped PNGs.
"""

from __future__ import annotations

import argparse
import binascii
import math
import struct
import sys
import zlib
from array import array
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable


PNG_SIGNATURE = b"\x89PNG\r\n\x1a\n"
PLUT_VERSION = 3
PLUT_DATA_TYPE_UINT16 = 1
TRANSFER_CURVE_SRGB = 0
COLOR_SPACE_SRGB = 0
VALID_AXES = {"r", "g", "b"}


@dataclass(frozen=True)
class PngImage:
    width: int
    height: int
    bit_depth: int
    color_type: int
    channels: int
    row_bytes: int
    rows: bytes


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description=(
            "Convert packed PNG LUTs into PhotonCamera .plut files "
            "or app-readable unwrapped PNGs."
        )
    )
    parser.add_argument(
        "input_dir",
        type=Path,
        help="Folder containing PNG LUT files.",
    )
    parser.add_argument(
        "-o",
        "--output",
        type=Path,
        help="Output folder. Defaults to '<input_dir>_app'.",
    )
    parser.add_argument(
        "--format",
        choices=("plut", "png", "both"),
        default="plut",
        help="Output format. .plut is read directly by LutParser.kt.",
    )
    parser.add_argument(
        "--source-axes",
        default="rgb",
        help=(
            "Axis order in the source image. For linear-square this is "
            "<fastest><middle><slowest>; for HALD this is <x-axis><y-axis><tile-axis>."
        ),
    )
    parser.add_argument(
        "--source-layout",
        choices=("linear-square", "hald"),
        default="linear-square",
        help="Input PNG layout. RewindPix LUT PNGs use linear-square.",
    )
    parser.add_argument(
        "--flip",
        default="",
        help="Optional comma-separated source axes to reverse before sampling, e.g. 'g,b'.",
    )
    parser.add_argument(
        "--glob",
        default="*.png",
        help="Input glob relative to input_dir.",
    )
    parser.add_argument(
        "--max-size",
        type=int,
        default=65,
        help="Resample LUTs larger than this size. Use 0 to disable.",
    )
    parser.add_argument(
        "--target-size",
        type=int,
        default=33,
        help="Target size when resampling large LUTs.",
    )
    parser.add_argument(
        "--png-bit-depth",
        type=int,
        choices=(8, 16),
        default=16,
        help="Bit depth for PNG output.",
    )
    parser.add_argument(
        "--overwrite",
        action="store_true",
        help="Overwrite existing output files.",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Print planned conversions without writing files.",
    )
    args = parser.parse_args()

    source_axes = args.source_axes.lower()
    if len(source_axes) != 3 or set(source_axes) != VALID_AXES:
        parser.error("--source-axes must be a permutation of 'rgb', such as 'rbg'.")

    flip_axes = {axis.strip().lower() for axis in args.flip.split(",") if axis.strip()}
    if not flip_axes.issubset(VALID_AXES):
        parser.error("--flip can only contain r, g, and b.")
    args.flip_axes = flip_axes

    if args.max_size < 0:
        parser.error("--max-size must be >= 0.")
    if args.target_size < 2:
        parser.error("--target-size must be >= 2.")

    return args


def read_png(path: Path) -> PngImage:
    data = path.read_bytes()
    if not data.startswith(PNG_SIGNATURE):
        raise ValueError("not a PNG file")

    pos = len(PNG_SIGNATURE)
    width = height = bit_depth = color_type = interlace = None
    idat_parts: list[bytes] = []

    while pos < len(data):
        if pos + 12 > len(data):
            raise ValueError("truncated PNG chunk")
        length = struct.unpack(">I", data[pos : pos + 4])[0]
        chunk_type = data[pos + 4 : pos + 8]
        chunk_data = data[pos + 8 : pos + 8 + length]
        pos += 12 + length

        if chunk_type == b"IHDR":
            width, height, bit_depth, color_type, compression, filter_method, interlace = struct.unpack(
                ">IIBBBBB",
                chunk_data,
            )
            if compression != 0 or filter_method != 0:
                raise ValueError("unsupported PNG compression/filter method")
            if interlace != 0:
                raise ValueError("interlaced PNG is not supported")
            if bit_depth not in (8, 16):
                raise ValueError(f"unsupported bit depth {bit_depth}")
            if color_type not in (0, 2, 4, 6):
                raise ValueError(f"unsupported color type {color_type}")
        elif chunk_type == b"IDAT":
            idat_parts.append(chunk_data)
        elif chunk_type == b"IEND":
            break

    if width is None or height is None or bit_depth is None or color_type is None:
        raise ValueError("missing IHDR")

    channels = {0: 1, 2: 3, 4: 2, 6: 4}[color_type]
    bytes_per_sample = bit_depth // 8
    pixel_bytes = channels * bytes_per_sample
    row_bytes = width * pixel_bytes
    decompressed = zlib.decompress(b"".join(idat_parts))
    expected = height * (1 + row_bytes)
    if len(decompressed) != expected:
        raise ValueError(f"unexpected decompressed size {len(decompressed)}, expected {expected}")

    rows = unfilter_png_rows(decompressed, width, height, row_bytes, pixel_bytes)
    return PngImage(
        width=width,
        height=height,
        bit_depth=bit_depth,
        color_type=color_type,
        channels=channels,
        row_bytes=row_bytes,
        rows=rows,
    )


def unfilter_png_rows(
    filtered: bytes,
    width: int,
    height: int,
    row_bytes: int,
    pixel_bytes: int,
) -> bytes:
    del width
    result = bytearray(height * row_bytes)
    src_pos = 0
    dst_pos = 0
    prev_row = bytes(row_bytes)

    for _ in range(height):
        filter_type = filtered[src_pos]
        src_pos += 1
        raw = filtered[src_pos : src_pos + row_bytes]
        src_pos += row_bytes
        row = bytearray(raw)

        if filter_type == 0:
            pass
        elif filter_type == 1:
            for i in range(row_bytes):
                left = row[i - pixel_bytes] if i >= pixel_bytes else 0
                row[i] = (row[i] + left) & 0xFF
        elif filter_type == 2:
            for i in range(row_bytes):
                row[i] = (row[i] + prev_row[i]) & 0xFF
        elif filter_type == 3:
            for i in range(row_bytes):
                left = row[i - pixel_bytes] if i >= pixel_bytes else 0
                up = prev_row[i]
                row[i] = (row[i] + ((left + up) >> 1)) & 0xFF
        elif filter_type == 4:
            for i in range(row_bytes):
                left = row[i - pixel_bytes] if i >= pixel_bytes else 0
                up = prev_row[i]
                up_left = prev_row[i - pixel_bytes] if i >= pixel_bytes else 0
                row[i] = (row[i] + paeth(left, up, up_left)) & 0xFF
        else:
            raise ValueError(f"unsupported PNG filter {filter_type}")

        result[dst_pos : dst_pos + row_bytes] = row
        prev_row = row
        dst_pos += row_bytes

    return bytes(result)


def paeth(left: int, up: int, up_left: int) -> int:
    p = left + up - up_left
    pa = abs(p - left)
    pb = abs(p - up)
    pc = abs(p - up_left)
    if pa <= pb and pa <= pc:
        return left
    if pb <= pc:
        return up
    return up_left


def integer_cuberoot(value: int) -> int | None:
    root = round(value ** (1.0 / 3.0))
    while root**3 < value:
        root += 1
    while root > 0 and root**3 > value:
        root -= 1
    return root if root**3 == value else None


def determine_hald_level(image: PngImage) -> int:
    if image.width != image.height:
        raise ValueError(f"expected square HALD PNG, got {image.width}x{image.height}")
    level = integer_cuberoot(image.width)
    if level is None:
        raise ValueError(f"image side {image.width} is not a HALD level cube")
    return level


def determine_linear_square_size(image: PngImage) -> int:
    size = integer_cuberoot(image.width * image.height)
    if size is None:
        raise ValueError(f"image pixel count {image.width}x{image.height} is not a cube")
    return size


def get_rgb16(image: PngImage, x: int, y: int) -> tuple[int, int, int]:
    bytes_per_sample = image.bit_depth // 8
    offset = y * image.row_bytes + x * image.channels * bytes_per_sample
    rows = image.rows

    if image.bit_depth == 8:
        if image.color_type == 0:
            gray = rows[offset] * 257
            return gray, gray, gray
        if image.color_type == 4:
            gray = rows[offset] * 257
            return gray, gray, gray
        r = rows[offset] * 257
        g = rows[offset + 1] * 257
        b = rows[offset + 2] * 257
        return r, g, b

    if image.color_type == 0:
        gray = (rows[offset] << 8) | rows[offset + 1]
        return gray, gray, gray
    if image.color_type == 4:
        gray = (rows[offset] << 8) | rows[offset + 1]
        return gray, gray, gray

    r = (rows[offset] << 8) | rows[offset + 1]
    g = (rows[offset + 2] << 8) | rows[offset + 3]
    b = (rows[offset + 4] << 8) | rows[offset + 5]
    return r, g, b


def remapped_components(
    r_index: int,
    g_index: int,
    b_index: int,
    size: int,
    source_axes: str,
    flip_axes: set[str],
) -> tuple[int, int, int]:
    components = {
        "r": r_index,
        "g": g_index,
        "b": b_index,
    }
    for axis in flip_axes:
        components[axis] = size - 1 - components[axis]

    return components[source_axes[0]], components[source_axes[1]], components[source_axes[2]]


def hald_source_coordinate(
    r_index: int,
    g_index: int,
    b_index: int,
    size: int,
    level: int,
    source_axes: str,
    flip_axes: set[str],
) -> tuple[int, int]:
    x_axis, y_axis, tile_axis = remapped_components(
        r_index,
        g_index,
        b_index,
        size,
        source_axes,
        flip_axes,
    )
    return (tile_axis % level) * size + x_axis, (tile_axis // level) * size + y_axis


def linear_square_source_coordinate(
    image: PngImage,
    r_index: int,
    g_index: int,
    b_index: int,
    size: int,
    source_axes: str,
    flip_axes: set[str],
) -> tuple[int, int]:
    fastest, middle, slowest = remapped_components(
        r_index,
        g_index,
        b_index,
        size,
        source_axes,
        flip_axes,
    )
    flat = (slowest * size + middle) * size + fastest
    return flat % image.width, flat // image.width


def image_to_app_cube(
    image: PngImage,
    source_layout: str,
    source_axes: str,
    flip_axes: set[str],
) -> tuple[int, array]:
    if source_layout == "linear-square":
        level = None
        size = determine_linear_square_size(image)
    elif source_layout == "hald":
        level = determine_hald_level(image)
        size = level * level
    else:
        raise ValueError(f"unsupported source layout {source_layout}")

    values = array("H")
    values_capacity = size * size * size * 3
    try:
        values = array("H", [0]) * values_capacity
    except MemoryError as exc:
        raise MemoryError(f"not enough memory for {size}^3 LUT") from exc

    out = 0
    for b_index in range(size):
        for g_index in range(size):
            for r_index in range(size):
                if source_layout == "linear-square":
                    x, y = linear_square_source_coordinate(
                        image,
                        r_index,
                        g_index,
                        b_index,
                        size,
                        source_axes,
                        flip_axes,
                    )
                else:
                    x, y = hald_source_coordinate(
                        r_index,
                        g_index,
                        b_index,
                        size,
                        level,
                        source_axes,
                        flip_axes,
                    )
                r, g, b = get_rgb16(image, x, y)
                values[out] = r
                values[out + 1] = g
                values[out + 2] = b
                out += 3

    return size, values


def resample_cube(values: array, source_size: int, target_size: int) -> array:
    if source_size == target_size:
        return values

    output = array("H", [0]) * (target_size * target_size * target_size * 3)
    out = 0
    max_source = source_size - 1
    max_target = target_size - 1

    for b_index in range(target_size):
        b_pos = b_index * max_source / max_target
        b0 = int(math.floor(b_pos))
        b1 = min(b0 + 1, max_source)
        db = b_pos - b0
        for g_index in range(target_size):
            g_pos = g_index * max_source / max_target
            g0 = int(math.floor(g_pos))
            g1 = min(g0 + 1, max_source)
            dg = g_pos - g0
            for r_index in range(target_size):
                r_pos = r_index * max_source / max_target
                r0 = int(math.floor(r_pos))
                r1 = min(r0 + 1, max_source)
                dr = r_pos - r0

                for channel in range(3):
                    v000 = cube_value(values, source_size, r0, g0, b0, channel)
                    v100 = cube_value(values, source_size, r1, g0, b0, channel)
                    v010 = cube_value(values, source_size, r0, g1, b0, channel)
                    v110 = cube_value(values, source_size, r1, g1, b0, channel)
                    v001 = cube_value(values, source_size, r0, g0, b1, channel)
                    v101 = cube_value(values, source_size, r1, g0, b1, channel)
                    v011 = cube_value(values, source_size, r0, g1, b1, channel)
                    v111 = cube_value(values, source_size, r1, g1, b1, channel)

                    v00 = v000 * (1.0 - dr) + v100 * dr
                    v10 = v010 * (1.0 - dr) + v110 * dr
                    v01 = v001 * (1.0 - dr) + v101 * dr
                    v11 = v011 * (1.0 - dr) + v111 * dr
                    v0 = v00 * (1.0 - dg) + v10 * dg
                    v1 = v01 * (1.0 - dg) + v11 * dg
                    output[out] = int(v0 * (1.0 - db) + v1 * db + 0.5)
                    out += 1

    return output


def cube_value(values: array, size: int, r_index: int, g_index: int, b_index: int, channel: int) -> int:
    return values[((b_index * size + g_index) * size + r_index) * 3 + channel]


def write_plut(path: Path, size: int, values: array) -> None:
    with path.open("wb") as output:
        output.write(b"PLUT")
        output.write(
            struct.pack(
                "<IIIII",
                PLUT_VERSION,
                size,
                PLUT_DATA_TYPE_UINT16,
                TRANSFER_CURVE_SRGB,
                COLOR_SPACE_SRGB,
            )
        )
        data = array("H", values)
        if sys.byteorder != "little":
            data.byteswap()
        data.tofile(output)


def write_unwrapped_png(path: Path, size: int, values: array, bit_depth: int) -> None:
    width = size * size
    height = size
    rows = bytearray()

    for g_index in range(size):
        rows.append(0)
        for b_index in range(size):
            for r_index in range(size):
                index = ((b_index * size + g_index) * size + r_index) * 3
                r = values[index]
                g = values[index + 1]
                b = values[index + 2]
                if bit_depth == 8:
                    rows.extend((r >> 8, g >> 8, b >> 8))
                else:
                    rows.extend((r >> 8, r & 0xFF, g >> 8, g & 0xFF, b >> 8, b & 0xFF))

    color_type = 2
    ihdr = struct.pack(">IIBBBBB", width, height, bit_depth, color_type, 0, 0, 0)
    compressed = zlib.compress(bytes(rows), level=9)

    with path.open("wb") as output:
        output.write(PNG_SIGNATURE)
        write_png_chunk(output, b"IHDR", ihdr)
        write_png_chunk(output, b"IDAT", compressed)
        write_png_chunk(output, b"IEND", b"")


def write_png_chunk(output, chunk_type: bytes, chunk_data: bytes) -> None:
    output.write(struct.pack(">I", len(chunk_data)))
    output.write(chunk_type)
    output.write(chunk_data)
    crc = binascii.crc32(chunk_type)
    crc = binascii.crc32(chunk_data, crc) & 0xFFFFFFFF
    output.write(struct.pack(">I", crc))


def iter_png_files(input_dir: Path, pattern: str) -> Iterable[Path]:
    return sorted(path for path in input_dir.glob(pattern) if path.is_file())


def convert_file(path: Path, args: argparse.Namespace, output_dir: Path) -> bool:
    image = read_png(path)
    if args.source_layout == "linear-square":
        level = None
        input_size = determine_linear_square_size(image)
    else:
        level = determine_hald_level(image)
        input_size = level * level
    output_size = input_size
    should_resample = args.max_size > 0 and input_size > args.max_size
    if should_resample:
        output_size = args.target_size

    outputs = []
    if args.format in ("plut", "both"):
        outputs.append(output_dir / f"{path.stem}.plut")
    if args.format in ("png", "both"):
        outputs.append(output_dir / f"{path.stem}_unwrapped.png")

    existing = [out for out in outputs if out.exists()]
    if existing and not args.overwrite:
        names = ", ".join(out.name for out in existing)
        print(f"skip {path.name}: output exists ({names}); pass --overwrite to replace")
        return False

    resample_note = f", resample {input_size}->{output_size}" if should_resample else ""
    if args.source_layout == "linear-square":
        layout_note = f"linear-square {image.width}x{image.height}"
    else:
        layout_note = f"HALD level {level}"
    print(f"{path.name}: {layout_note}, size {input_size}, axes {args.source_axes}{resample_note}")

    if args.dry_run:
        return True

    cube_size, values = image_to_app_cube(
        image,
        args.source_layout,
        args.source_axes,
        args.flip_axes,
    )
    if should_resample:
        values = resample_cube(values, cube_size, output_size)
        cube_size = output_size

    if args.format in ("plut", "both"):
        write_plut(output_dir / f"{path.stem}.plut", cube_size, values)
    if args.format in ("png", "both"):
        write_unwrapped_png(
            output_dir / f"{path.stem}_unwrapped.png",
            cube_size,
            values,
            args.png_bit_depth,
        )

    return True


def main() -> int:
    args = parse_args()
    input_dir = args.input_dir.resolve()
    if not input_dir.exists() or not input_dir.is_dir():
        print(f"Input folder not found: {input_dir}", file=sys.stderr)
        return 1

    output_dir = (args.output or input_dir.with_name(f"{input_dir.name}_app")).resolve()
    if not args.dry_run:
        output_dir.mkdir(parents=True, exist_ok=True)

    files = list(iter_png_files(input_dir, args.glob))
    if not files:
        print(f"No PNG files matched {args.glob!r} in {input_dir}", file=sys.stderr)
        return 1

    converted = 0
    failed = 0
    for path in files:
        try:
            if convert_file(path, args, output_dir):
                converted += 1
        except Exception as exc:
            failed += 1
            print(f"failed {path.name}: {exc}", file=sys.stderr)

    print(f"done: {converted} processed, {failed} failed, output={output_dir}")
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
