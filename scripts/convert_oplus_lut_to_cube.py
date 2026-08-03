#!/usr/bin/env python3
"""Convert Oplus/ODM raw 3D LUT files to Adobe .cube files.

The camera assets use several related layouts:

* raw RGB8 or RGBA8, with red changing fastest, then green, then blue;
* Meishe ``.MS-LUT`` files, whose header identifies the cube size and the
  offset of an interleaved RGB8 payload;
* little-endian float32 RGB, either planar or interleaved.
* flattened PNG grids whose dimensions are ``N² × N``.
* ODM ``LUTData`` bundles containing one or more concatenated RGBA float32
  cubes behind an eight-byte header.

The alpha byte in RGBA8 files is padding and may be either 0 or 255.

The float32 assets use two layouts. BasicTone stores three complete
little-endian planes (all red samples, all green samples, then all blue
samples), while some color-space LUTs store interleaved RGB triples. The
converter distinguishes them by measuring spatial continuity in the 3D grid.
Every layout can also be selected explicitly when needed.

Examples:

    uv run python convert_oplus_lut_to_cube.py \
        /path/to/Emerald.cube.rgb.bin \
        --output /tmp/Emerald.cube

    uv run python convert_oplus_lut_to_cube.py \
        /path/to/filters_lut \
        --output-dir /tmp/oplus-cube \
        --recursive
"""

from __future__ import annotations

import argparse
import math
import re
import struct
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable


FORMAT_AUTO = "auto"
FORMAT_RGB8 = "rgb8"
FORMAT_RGBA8 = "rgba8"
FORMAT_MS_LUT_RGB8 = "ms-lut-rgb8"
FORMAT_MS_LUT_RGB_F32_PLANAR = "ms-lut-rgb-f32-planar"
FORMAT_MS_LUT_RGB_F32_INTERLEAVED = "ms-lut-rgb-f32-interleaved"
FORMAT_PNG_RGB8_GRID = "png-rgb8-grid"
FORMAT_LUTDATA_RGBA_F32 = "lutdata-rgba-f32"
FORMAT_RGB_F32_PLANAR = "rgb-f32-planar"
FORMAT_RGB_F32_INTERLEAVED = "rgb-f32-interleaved"
FORMAT_RGB_F32_AUTO = "rgb-f32-auto"
RGB8_BYTES_PER_ENTRY = 3
RGBA8_BYTES_PER_ENTRY = 4
RGB_F32_PLANAR_BYTES_PER_ENTRY = 12
MS_LUT_MAGIC = b".MS-LUT "
MS_LUT_MIN_HEADER_SIZE = 48
LUTDATA_MAGIC = b"\x21\x10\xc6\x08"
LUTDATA_HEADER_SIZE = 8
LUTDATA_BYTES_PER_ENTRY = 16
DEFAULT_ALLOWED_SIZES = (16, 17, 20, 21, 32, 33, 64, 65)
IGNORED_DIRECTORY_SUFFIXES = {
    ".cube",
    ".ini",
    ".json",
    ".lic",
    ".license",
    ".png",
    ".txt",
    ".xml",
}


class LutConversionError(ValueError):
    """Raised when an input cannot be interpreted as a supported Oplus LUT."""


@dataclass(frozen=True)
class LutMetadata:
    size: int
    entry_count: int
    storage_format: str
    data_offset: int = 0
    component_count: int = 1
    swap_red_blue_axes: bool = False
    alpha_min: int | None = None
    alpha_max: int | None = None


def infer_cube_size(
    byte_count: int,
    bytes_per_entry: int,
    allowed_sizes: tuple[int, ...] = DEFAULT_ALLOWED_SIZES,
) -> int:
    """Infer LUT edge length from a payload size and entry size."""
    if byte_count <= 0 or byte_count % bytes_per_entry != 0:
        raise LutConversionError(
            f"payload size {byte_count} is not divisible by {bytes_per_entry}"
        )

    entry_count = byte_count // bytes_per_entry
    matches = [size for size in allowed_sizes if size**3 == entry_count]
    if not matches:
        expected = ", ".join(
            f"{size}³={size**3 * bytes_per_entry} bytes"
            for size in allowed_sizes
        )
        raise LutConversionError(
            f"{byte_count} bytes is not a supported cube ({expected})"
        )
    return matches[0]


def detect_storage_format(
    byte_count: int,
    allowed_sizes: tuple[int, ...] = DEFAULT_ALLOWED_SIZES,
) -> tuple[str, int]:
    """Detect one unambiguous Oplus LUT storage format from its size."""
    matches: list[tuple[str, int]] = []
    for storage_format, bytes_per_entry in (
        (FORMAT_RGB8, RGB8_BYTES_PER_ENTRY),
        (FORMAT_RGBA8, RGBA8_BYTES_PER_ENTRY),
        (FORMAT_RGB_F32_AUTO, RGB_F32_PLANAR_BYTES_PER_ENTRY),
    ):
        try:
            size = infer_cube_size(
                byte_count,
                bytes_per_entry,
                allowed_sizes,
            )
        except LutConversionError:
            continue
        matches.append((storage_format, size))

    if not matches:
        raise LutConversionError(
            f"{byte_count} bytes does not match a supported Oplus LUT layout"
        )
    if len(matches) > 1:
        formats = ", ".join(storage_format for storage_format, _ in matches)
        raise LutConversionError(
            f"{byte_count} bytes matches multiple LUT layouts: {formats}"
        )
    return matches[0]


def inspect_ms_lut(
    payload: bytes,
    allowed_sizes: tuple[int, ...] = DEFAULT_ALLOWED_SIZES,
) -> LutMetadata:
    """Validate a Meishe MS-LUT header and its RGB8 payload."""
    if len(payload) < MS_LUT_MIN_HEADER_SIZE:
        raise LutConversionError("MS-LUT file is shorter than its header")
    if not payload.startswith(MS_LUT_MAGIC):
        raise LutConversionError("MS-LUT magic is missing")

    size = struct.unpack_from("<I", payload, 12)[0]
    axis_order_marker = struct.unpack_from("<I", payload, 24)[0]
    data_offset = struct.unpack_from("<Q", payload, 40)[0]
    if size not in allowed_sizes:
        raise LutConversionError(
            f"MS-LUT edge length {size} is not in the allowed size list"
        )
    if data_offset < MS_LUT_MIN_HEADER_SIZE or data_offset > len(payload):
        raise LutConversionError(
            f"invalid MS-LUT data offset: {data_offset}"
        )

    entry_count = size**3
    rgb8_size = data_offset + entry_count * RGB8_BYTES_PER_ENTRY
    if len(payload) == rgb8_size:
        return LutMetadata(
            size=size,
            entry_count=entry_count,
            storage_format=FORMAT_MS_LUT_RGB8,
            data_offset=data_offset,
            swap_red_blue_axes=axis_order_marker != 1,
        )

    float32_size = data_offset + (
        entry_count * RGB_F32_PLANAR_BYTES_PER_ENTRY
    )
    if len(payload) == float32_size:
        float_payload = payload[data_offset:]
        values = struct.unpack(f"<{entry_count * 3}f", float_payload)
        if not all(math.isfinite(value) for value in values):
            raise LutConversionError(
                "MS-LUT float32 payload contains non-finite values"
            )
        detected_format = detect_float32_storage_format(
            values,
            size=size,
        )
        storage_format = (
            FORMAT_MS_LUT_RGB_F32_PLANAR
            if detected_format == FORMAT_RGB_F32_PLANAR
            else FORMAT_MS_LUT_RGB_F32_INTERLEAVED
        )
        return LutMetadata(
            size=size,
            entry_count=entry_count,
            storage_format=storage_format,
            data_offset=data_offset,
            swap_red_blue_axes=axis_order_marker != 1,
        )

    raise LutConversionError(
        "MS-LUT payload size mismatch: expected either "
        f"{rgb8_size} bytes (RGB8) or {float32_size} bytes (float32 RGB), "
        f"got {len(payload)}"
    )


def inspect_lutdata(
    payload: bytes,
    allowed_sizes: tuple[int, ...] = DEFAULT_ALLOWED_SIZES,
) -> LutMetadata:
    """Validate an ODM LUTData bundle of concatenated float32 RGBA cubes."""
    if not payload.startswith(LUTDATA_MAGIC):
        raise LutConversionError("LUTData magic is missing")
    if len(payload) <= LUTDATA_HEADER_SIZE:
        raise LutConversionError("LUTData file has no payload")

    data_size = len(payload) - LUTDATA_HEADER_SIZE
    matches: list[tuple[int, int]] = []
    for size in allowed_sizes:
        component_bytes = size**3 * LUTDATA_BYTES_PER_ENTRY
        if data_size % component_bytes == 0:
            component_count = data_size // component_bytes
            if component_count > 0:
                matches.append((size, component_count))
    if len(matches) != 1:
        description = ", ".join(
            f"{size}³×{component_count}"
            for size, component_count in matches
        )
        raise LutConversionError(
            "LUTData payload does not identify one unambiguous cube layout"
            + (f": {description}" if description else "")
        )

    size, component_count = matches[0]
    values = struct.unpack(
        f"<{data_size // 4}f",
        payload[LUTDATA_HEADER_SIZE:],
    )
    if not all(math.isfinite(value) for value in values):
        raise LutConversionError(
            "LUTData float32 payload contains non-finite values"
        )
    alpha_values = values[3::4]
    if not all(abs(value - 1.0) <= 1e-6 for value in alpha_values):
        raise LutConversionError(
            "LUTData RGBA alpha channel is not uniformly 1.0"
        )
    return LutMetadata(
        size=size,
        entry_count=size**3,
        storage_format=FORMAT_LUTDATA_RGBA_F32,
        data_offset=LUTDATA_HEADER_SIZE,
        component_count=component_count,
    )


def read_png_lut(
    input_path: Path,
    allowed_sizes: tuple[int, ...] = DEFAULT_ALLOWED_SIZES,
) -> tuple[bytes, LutMetadata]:
    """Read an N²-by-N PNG whose row-major pixels form an RGB cube."""
    try:
        from PIL import Image
    except ImportError as exc:
        raise LutConversionError(
            "PNG LUT conversion requires Pillow; run the script with uv"
        ) from exc

    try:
        with Image.open(input_path) as image:
            size_matches = [
                size
                for size in allowed_sizes
                if image.size == (size * size, size)
            ]
            if not size_matches:
                expected = ", ".join(
                    f"{size * size}×{size}" for size in allowed_sizes
                )
                raise LutConversionError(
                    f"PNG dimensions {image.width}×{image.height} are not "
                    f"a supported flattened cube ({expected})"
                )
            payload = image.convert("RGB").tobytes()
    except OSError as exc:
        raise LutConversionError(f"cannot read PNG LUT: {exc}") from exc

    size = size_matches[0]
    return payload, LutMetadata(
        size=size,
        entry_count=size**3,
        storage_format=FORMAT_PNG_RGB8_GRID,
    )


def float32_smoothness_score(
    values: tuple[float, ...],
    *,
    size: int,
    planar: bool,
) -> float:
    """Measure local RGB variation for one possible float32 layout."""
    entry_count = size**3
    green_offset = entry_count
    blue_offset = entry_count * 2

    def sample(index: int) -> tuple[float, float, float]:
        if planar:
            return (
                values[index],
                values[green_offset + index],
                values[blue_offset + index],
            )
        offset = index * 3
        return values[offset], values[offset + 1], values[offset + 2]

    # A bounded sample is enough to expose the periodic discontinuities caused
    # by interpreting either layout as the other, without making batch
    # conversion of large LUT collections unnecessarily expensive.
    step = max(1, size // 8)
    difference_sum = 0.0
    channel_count = 0
    for blue_index in range(0, size, step):
        for green_index in range(0, size, step):
            for red_index in range(0, size, step):
                index = red_index + size * (
                    green_index + size * blue_index
                )
                current = sample(index)
                neighbours: list[int] = []
                if red_index + 1 < size:
                    neighbours.append(index + 1)
                if green_index + 1 < size:
                    neighbours.append(index + size)
                if blue_index + 1 < size:
                    neighbours.append(index + size * size)

                for neighbour_index in neighbours:
                    neighbour = sample(neighbour_index)
                    difference_sum += sum(
                        abs(current[channel] - neighbour[channel])
                        for channel in range(3)
                    )
                    channel_count += 3

    if channel_count == 0:
        return 0.0
    return difference_sum / channel_count


def detect_float32_storage_format(
    values: tuple[float, ...],
    *,
    size: int,
) -> str:
    """Choose planar or interleaved RGB from spatial continuity."""
    planar_score = float32_smoothness_score(
        values,
        size=size,
        planar=True,
    )
    interleaved_score = float32_smoothness_score(
        values,
        size=size,
        planar=False,
    )

    if planar_score == 0.0 and interleaved_score == 0.0:
        # Both layouts produce the same result for a spatially constant LUT.
        return FORMAT_RGB_F32_PLANAR

    lower_score = min(planar_score, interleaved_score)
    higher_score = max(planar_score, interleaved_score)
    if lower_score > 0.0 and higher_score / lower_score < 1.1:
        raise LutConversionError(
            "float32 LUT layout is ambiguous "
            f"(planar score={planar_score:.6g}, "
            f"interleaved score={interleaved_score:.6g}); "
            "use --input-format"
        )
    if planar_score < interleaved_score:
        return FORMAT_RGB_F32_PLANAR
    return FORMAT_RGB_F32_INTERLEAVED


def inspect_lut(
    payload: bytes,
    storage_format: str = FORMAT_AUTO,
    allowed_sizes: tuple[int, ...] = DEFAULT_ALLOWED_SIZES,
) -> LutMetadata:
    """Validate a supported Oplus LUT and return its metadata."""
    if storage_format == FORMAT_LUTDATA_RGBA_F32:
        return inspect_lutdata(payload, allowed_sizes)
    if storage_format == FORMAT_AUTO and payload.startswith(LUTDATA_MAGIC):
        return inspect_lutdata(payload, allowed_sizes)
    if storage_format == FORMAT_MS_LUT_RGB8:
        return inspect_ms_lut(payload, allowed_sizes)
    if storage_format == FORMAT_AUTO and payload.startswith(MS_LUT_MAGIC):
        return inspect_ms_lut(payload, allowed_sizes)

    if storage_format == FORMAT_AUTO:
        storage_format, size = detect_storage_format(
            len(payload),
            allowed_sizes,
        )
        if storage_format == FORMAT_RGB_F32_AUTO:
            values = struct.unpack(f"<{size**3 * 3}f", payload)
            if not all(math.isfinite(value) for value in values):
                raise LutConversionError(
                    "float32 LUT contains non-finite values"
                )
            storage_format = detect_float32_storage_format(
                values,
                size=size,
            )
    elif storage_format == FORMAT_RGB8:
        size = infer_cube_size(
            len(payload),
            RGB8_BYTES_PER_ENTRY,
            allowed_sizes,
        )
    elif storage_format == FORMAT_RGBA8:
        size = infer_cube_size(
            len(payload),
            RGBA8_BYTES_PER_ENTRY,
            allowed_sizes,
        )
    elif storage_format == FORMAT_RGB_F32_PLANAR:
        size = infer_cube_size(
            len(payload),
            RGB_F32_PLANAR_BYTES_PER_ENTRY,
            allowed_sizes,
        )
    elif storage_format == FORMAT_RGB_F32_INTERLEAVED:
        size = infer_cube_size(
            len(payload),
            RGB_F32_PLANAR_BYTES_PER_ENTRY,
            allowed_sizes,
        )
    else:
        raise LutConversionError(
            f"unsupported storage format: {storage_format}"
        )

    metadata = LutMetadata(
        size=size,
        entry_count=size**3,
        storage_format=storage_format,
    )
    if storage_format == FORMAT_RGBA8:
        alpha_values = payload[3::RGBA8_BYTES_PER_ENTRY]
        return LutMetadata(
            size=metadata.size,
            entry_count=metadata.entry_count,
            storage_format=metadata.storage_format,
            alpha_min=min(alpha_values),
            alpha_max=max(alpha_values),
        )

    if storage_format == FORMAT_RGB8:
        return metadata

    values = struct.unpack(f"<{metadata.entry_count * 3}f", payload)
    if not all(math.isfinite(value) for value in values):
        raise LutConversionError("float32 LUT contains non-finite values")
    return metadata


def cube_title(input_path: Path) -> str:
    """Build a readable title while removing known binary LUT suffixes."""
    name = input_path.name
    lower_name = name.lower()
    for suffix in (
        ".cube.rgb.bin",
        ".3dl.rgb.bin",
        ".rgb.bin",
        ".bin",
        ".png",
    ):
        if lower_name.endswith(suffix):
            name = name[: -len(suffix)]
            break
    return name.replace('"', "'")


def default_output_name(input_path: Path) -> str:
    return f"{cube_title(input_path)}.cube"


def collision_safe_output_name(input_path: Path) -> str:
    """Preserve the complete source suffixes when LUT titles collide."""
    source_label = re.sub(
        r"[^A-Za-z0-9_-]+",
        "_",
        input_path.name,
    ).strip("_")
    return f"{source_label}.cube"


def iter_source_entry_indices(metadata: LutMetadata) -> Iterable[int]:
    """Map standard CUBE R-fast order to the source LUT's entry order."""
    if not metadata.swap_red_blue_axes:
        yield from range(metadata.entry_count)
        return

    # MS-LUT's alternate layout stores the blue input axis fastest. A CUBE
    # requires red to change fastest, so transpose the red and blue lattice
    # axes while leaving output RGB channel order unchanged.
    size = metadata.size
    for blue_index in range(size):
        for green_index in range(size):
            for red_index in range(size):
                yield blue_index + size * (
                    green_index + size * red_index
                )


def convert_lut(
    input_path: Path,
    output_path: Path,
    *,
    storage_format: str = FORMAT_AUTO,
    allowed_sizes: tuple[int, ...] = DEFAULT_ALLOWED_SIZES,
    precision: int = 8,
    overwrite: bool = False,
    component_index: int | None = None,
) -> LutMetadata:
    """Convert one supported Oplus LUT to .cube."""
    if not input_path.is_file():
        raise LutConversionError(f"input is not a file: {input_path}")
    if output_path.exists() and not overwrite:
        raise FileExistsError(f"output already exists: {output_path}")

    is_png = storage_format == FORMAT_PNG_RGB8_GRID or (
        storage_format == FORMAT_AUTO
        and input_path.suffix.lower() == ".png"
    )
    if is_png:
        payload, metadata = read_png_lut(input_path, allowed_sizes)
    else:
        payload = input_path.read_bytes()
        metadata = inspect_lut(payload, storage_format, allowed_sizes)
    if metadata.storage_format == FORMAT_LUTDATA_RGBA_F32:
        if component_index is None:
            if metadata.component_count != 1:
                raise LutConversionError(
                    "multi-component LUTData input requires a component index"
                )
            component_index = 0
        if not 0 <= component_index < metadata.component_count:
            raise LutConversionError(
                f"LUTData component index {component_index} is outside "
                f"0..{metadata.component_count - 1}"
            )
    elif component_index is not None:
        raise LutConversionError(
            "component index is only valid for LUTData inputs"
        )
    number_format = f"{{:.{precision}f}}"

    output_path.parent.mkdir(parents=True, exist_ok=True)
    with output_path.open("w", encoding="ascii", newline="\n") as output:
        title = cube_title(input_path)
        if metadata.component_count > 1:
            title += f"_{component_index:02d}"
        output.write(f'TITLE "{title}"\n')
        output.write(f"LUT_3D_SIZE {metadata.size}\n")
        output.write("DOMAIN_MIN 0.0 0.0 0.0\n")
        output.write("DOMAIN_MAX 1.0 1.0 1.0\n\n")

        if metadata.storage_format in (
            FORMAT_RGB8,
            FORMAT_MS_LUT_RGB8,
            FORMAT_PNG_RGB8_GRID,
        ):
            scale = 1.0 / 255.0
            data_start = metadata.data_offset
            for source_index in iter_source_entry_indices(metadata):
                offset = (
                    data_start + source_index * RGB8_BYTES_PER_ENTRY
                )
                red = number_format.format(payload[offset] * scale)
                green = number_format.format(payload[offset + 1] * scale)
                blue = number_format.format(payload[offset + 2] * scale)
                output.write(f"{red} {green} {blue}\n")
        elif metadata.storage_format == FORMAT_RGBA8:
            scale = 1.0 / 255.0
            for offset in range(0, len(payload), RGBA8_BYTES_PER_ENTRY):
                red = number_format.format(payload[offset] * scale)
                green = number_format.format(payload[offset + 1] * scale)
                blue = number_format.format(payload[offset + 2] * scale)
                output.write(f"{red} {green} {blue}\n")
        elif metadata.storage_format == FORMAT_LUTDATA_RGBA_F32:
            component_bytes = (
                metadata.entry_count * LUTDATA_BYTES_PER_ENTRY
            )
            data_start = (
                metadata.data_offset + component_index * component_bytes
            )
            values = struct.unpack_from(
                f"<{metadata.entry_count * 4}f",
                payload,
                data_start,
            )
            for index in range(metadata.entry_count):
                offset = index * 4
                red = number_format.format(values[offset])
                green = number_format.format(values[offset + 1])
                blue = number_format.format(values[offset + 2])
                output.write(f"{red} {green} {blue}\n")
        elif metadata.storage_format in (
            FORMAT_RGB_F32_PLANAR,
            FORMAT_MS_LUT_RGB_F32_PLANAR,
        ):
            float_payload = payload[metadata.data_offset:]
            values = struct.unpack(
                f"<{metadata.entry_count * 3}f",
                float_payload,
            )
            green_offset = metadata.entry_count
            blue_offset = metadata.entry_count * 2
            for source_index in iter_source_entry_indices(metadata):
                red = number_format.format(values[source_index])
                green = number_format.format(
                    values[green_offset + source_index]
                )
                blue = number_format.format(
                    values[blue_offset + source_index]
                )
                output.write(f"{red} {green} {blue}\n")
        else:
            float_payload = payload[metadata.data_offset:]
            values = struct.unpack(
                f"<{metadata.entry_count * 3}f",
                float_payload,
            )
            for source_index in iter_source_entry_indices(metadata):
                offset = source_index * 3
                red = number_format.format(values[offset])
                green = number_format.format(values[offset + 1])
                blue = number_format.format(values[offset + 2])
                output.write(f"{red} {green} {blue}\n")

    return metadata


def parse_sizes(value: str) -> tuple[int, ...]:
    sizes: list[int] = []
    for item in value.split(","):
        item = item.strip()
        if not item:
            continue
        try:
            size = int(item)
        except ValueError as exc:
            raise argparse.ArgumentTypeError(
                f"invalid LUT size: {item!r}"
            ) from exc
        if size < 2:
            raise argparse.ArgumentTypeError("LUT sizes must be at least 2")
        if size not in sizes:
            sizes.append(size)
    if not sizes:
        raise argparse.ArgumentTypeError("at least one LUT size is required")
    return tuple(sizes)


def iter_directory_inputs(
    directory: Path,
    *,
    recursive: bool,
    storage_format: str,
    allowed_sizes: tuple[int, ...],
) -> Iterable[Path]:
    iterator = directory.rglob("*") if recursive else directory.iterdir()
    for path in sorted(iterator):
        if not path.is_file():
            continue
        suffix = path.suffix.lower()
        if (
            suffix in IGNORED_DIRECTORY_SUFFIXES
            and not (
                storage_format == FORMAT_PNG_RGB8_GRID
                and suffix == ".png"
            )
        ):
            continue
        try:
            if storage_format == FORMAT_AUTO:
                with path.open("rb") as source:
                    magic = source.read(len(MS_LUT_MAGIC))
                if magic.startswith(LUTDATA_MAGIC):
                    inspect_lut(
                        path.read_bytes(),
                        FORMAT_LUTDATA_RGBA_F32,
                        allowed_sizes,
                    )
                elif magic == MS_LUT_MAGIC:
                    inspect_lut(
                        path.read_bytes(),
                        FORMAT_MS_LUT_RGB8,
                        allowed_sizes,
                    )
                else:
                    detect_storage_format(path.stat().st_size, allowed_sizes)
            elif storage_format == FORMAT_RGB8:
                infer_cube_size(
                    path.stat().st_size,
                    RGB8_BYTES_PER_ENTRY,
                    allowed_sizes,
                )
            elif storage_format == FORMAT_RGBA8:
                infer_cube_size(
                    path.stat().st_size,
                    RGBA8_BYTES_PER_ENTRY,
                    allowed_sizes,
                )
            elif storage_format in (
                FORMAT_RGB_F32_PLANAR,
                FORMAT_RGB_F32_INTERLEAVED,
            ):
                infer_cube_size(
                    path.stat().st_size,
                    RGB_F32_PLANAR_BYTES_PER_ENTRY,
                    allowed_sizes,
                )
            elif storage_format == FORMAT_MS_LUT_RGB8:
                inspect_lut(
                    path.read_bytes(),
                    FORMAT_MS_LUT_RGB8,
                    allowed_sizes,
                )
            elif storage_format == FORMAT_PNG_RGB8_GRID:
                read_png_lut(path, allowed_sizes)
            elif storage_format == FORMAT_LUTDATA_RGBA_F32:
                inspect_lut(
                    path.read_bytes(),
                    FORMAT_LUTDATA_RGBA_F32,
                    allowed_sizes,
                )
            else:
                raise LutConversionError(
                    f"unsupported storage format: {storage_format}"
                )
        except LutConversionError:
            continue
        yield path


def resolve_jobs(
    inputs: list[Path],
    *,
    output: Path | None,
    output_dir: Path | None,
    recursive: bool,
    storage_format: str,
    allowed_sizes: tuple[int, ...],
) -> list[tuple[Path, Path]]:
    if output is not None:
        if len(inputs) != 1 or inputs[0].is_dir():
            raise LutConversionError(
                "--output requires exactly one input file"
            )
        return [(inputs[0], output)]

    jobs: list[tuple[Path, Path]] = []
    for input_path in inputs:
        if input_path.is_file():
            destination_dir = output_dir or input_path.parent
            jobs.append(
                (input_path, destination_dir / default_output_name(input_path))
            )
            continue

        if not input_path.is_dir():
            raise LutConversionError(f"input does not exist: {input_path}")
        if output_dir is None:
            raise LutConversionError(
                f"--output-dir is required for directory input: {input_path}"
            )

        for source in iter_directory_inputs(
            input_path,
            recursive=recursive,
            storage_format=storage_format,
            allowed_sizes=allowed_sizes,
        ):
            relative_parent = (
                source.relative_to(input_path).parent if recursive else Path()
            )
            destination = (
                output_dir
                / relative_parent
                / default_output_name(source)
            )
            jobs.append((source, destination))

    casefold_groups: dict[str, list[int]] = {}
    for index, (_, destination) in enumerate(jobs):
        key = str(destination.absolute()).casefold()
        casefold_groups.setdefault(key, []).append(index)

    for indexes in casefold_groups.values():
        distinct_sources = {jobs[index][0] for index in indexes}
        if len(distinct_sources) < 2:
            continue
        for index in indexes:
            source, destination = jobs[index]
            jobs[index] = (
                source,
                destination.with_name(collision_safe_output_name(source)),
            )

    destinations: dict[str, Path] = {}
    for source, destination in jobs:
        destination_key = str(destination.absolute()).casefold()
        previous_source = destinations.get(destination_key)
        if previous_source is not None and previous_source != source:
            raise LutConversionError(
                "multiple inputs map to the same output: "
                f"{previous_source}, {source} -> {destination}"
            )
        destinations[destination_key] = source
    return jobs


def expand_component_jobs(
    jobs: list[tuple[Path, Path]],
    *,
    storage_format: str,
    allowed_sizes: tuple[int, ...],
) -> list[tuple[Path, Path, int | None]]:
    """Expand multi-cube LUTData bundles into one output job per cube."""
    expanded: list[tuple[Path, Path, int | None]] = []
    for source, destination in jobs:
        is_lutdata = storage_format == FORMAT_LUTDATA_RGBA_F32
        if storage_format == FORMAT_AUTO:
            with source.open("rb") as input_file:
                is_lutdata = (
                    input_file.read(len(LUTDATA_MAGIC)) == LUTDATA_MAGIC
                )
        if not is_lutdata:
            expanded.append((source, destination, None))
            continue

        metadata = inspect_lutdata(source.read_bytes(), allowed_sizes)
        if metadata.component_count == 1:
            expanded.append((source, destination, 0))
            continue
        for component_index in range(metadata.component_count):
            component_destination = destination.with_name(
                f"{destination.stem}_{component_index:02d}"
                f"{destination.suffix}"
            )
            expanded.append(
                (source, component_destination, component_index)
            )

    destinations: dict[str, tuple[Path, int | None]] = {}
    for source, destination, component_index in expanded:
        key = str(destination.absolute()).casefold()
        previous = destinations.get(key)
        current = (source, component_index)
        if previous is not None and previous != current:
            raise LutConversionError(
                "multiple LUT components map to the same output: "
                f"{previous}, {current} -> {destination}"
            )
        destinations[key] = current
    return expanded


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description=(
            "Convert Oplus/ODM raw RGB8, RGBA8, MS-LUT, flattened PNG, "
            "LUTData bundles, or RGB float32 3D LUT files into standard "
            "Adobe .cube files."
        )
    )
    parser.add_argument(
        "inputs",
        nargs="+",
        type=Path,
        help="input LUT file(s), or directories for batch conversion",
    )
    destination = parser.add_mutually_exclusive_group()
    destination.add_argument(
        "-o",
        "--output",
        type=Path,
        help=(
            "output .cube path for one input file; multi-cube LUTData "
            "bundles add _NN to this basename"
        ),
    )
    destination.add_argument(
        "-d",
        "--output-dir",
        type=Path,
        help="output directory for multiple files or directory inputs",
    )
    parser.add_argument(
        "-r",
        "--recursive",
        action="store_true",
        help="scan directory inputs recursively and preserve subdirectories",
    )
    parser.add_argument(
        "--input-format",
        choices=(
            FORMAT_AUTO,
            FORMAT_RGB8,
            FORMAT_RGBA8,
            FORMAT_MS_LUT_RGB8,
            FORMAT_PNG_RGB8_GRID,
            FORMAT_LUTDATA_RGBA_F32,
            FORMAT_RGB_F32_PLANAR,
            FORMAT_RGB_F32_INTERLEAVED,
        ),
        default=FORMAT_AUTO,
        help="input storage layout (default: auto)",
    )
    parser.add_argument(
        "--sizes",
        type=parse_sizes,
        default=DEFAULT_ALLOWED_SIZES,
        metavar="N[,N...]",
        help=(
            "allowed LUT edge lengths "
            f"(default: {','.join(map(str, DEFAULT_ALLOWED_SIZES))})"
        ),
    )
    parser.add_argument(
        "--precision",
        type=int,
        default=8,
        help="decimal digits written for each normalized channel (default: 8)",
    )
    parser.add_argument(
        "--overwrite",
        action="store_true",
        help="replace existing output files",
    )
    return parser


def main(argv: list[str] | None = None) -> int:
    parser = build_parser()
    args = parser.parse_args(argv)
    if not 1 <= args.precision <= 12:
        parser.error("--precision must be between 1 and 12")

    try:
        jobs = resolve_jobs(
            args.inputs,
            output=args.output,
            output_dir=args.output_dir,
            recursive=args.recursive,
            storage_format=args.input_format,
            allowed_sizes=args.sizes,
        )
        component_jobs = expand_component_jobs(
            jobs,
            storage_format=args.input_format,
            allowed_sizes=args.sizes,
        )
    except (LutConversionError, OSError) as exc:
        parser.error(str(exc))

    if not component_jobs:
        print("No matching 3D LUT files found.", file=sys.stderr)
        return 1

    converted = 0
    failed = 0
    for source, destination, component_index in component_jobs:
        try:
            metadata = convert_lut(
                source,
                destination,
                storage_format=args.input_format,
                allowed_sizes=args.sizes,
                precision=args.precision,
                overwrite=args.overwrite,
                component_index=component_index,
            )
        except (LutConversionError, FileExistsError, OSError) as exc:
            failed += 1
            print(f"ERROR {source}: {exc}", file=sys.stderr)
            continue

        converted += 1
        details = f"{metadata.size}³, {metadata.storage_format}"
        if metadata.alpha_min is not None:
            details += f", alpha={metadata.alpha_min}..{metadata.alpha_max}"
        print(f"OK {source} -> {destination} ({details})")

    print(f"Converted {converted} LUT(s); {failed} failed.")
    return 0 if failed == 0 else 1


if __name__ == "__main__":
    raise SystemExit(main())
