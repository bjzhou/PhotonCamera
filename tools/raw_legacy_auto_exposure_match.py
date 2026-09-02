#!/usr/bin/env -S uv run --script
# /// script
# requires-python = ">=3.11"
# dependencies = [
#   "numpy>=2.0",
#   "pillow>=11.0",
#   "rawpy>=0.25",
# ]
# ///
"""Offline verifier for legacy RAW/viewfinder exposure matching.

The program consumes one DNG and the capture-time viewfinder PNG from the same
shutter press.  It reproduces the app's exposure-neutral LinearRaw conversion,
optional final PhotonDehaze and PLUT stages, Adobe exposure ramp, ACR3 tone
curve, sRGB readback, 8 x 6 statistics, spatial weights, and the direct
+/-0.1 EV match decision.

The default CCM and camera-white values are the values logged for the checked
sample.  Pass --ccm and --camera-white when validating another capture.
"""

from __future__ import annotations

import argparse
import dataclasses
import math
import re
import struct
from pathlib import Path

import numpy as np
from PIL import Image
import rawpy


GRID_COLUMNS = 8
GRID_ROWS = 6
PREVIEW_LONG_EDGE = 256
MATCH_TOLERANCE_EV = 0.1
DISPLAY_LINEAR_FLOOR = 1.0 / (255.0 * 12.92)
DEFAULT_CCM = (
    2.0843263,
    0.06781491,
    0.20244642,
    0.10371348,
    1.1082536,
    -0.2678875,
    0.051773697,
    -0.3299951,
    2.3537102,
)
DEFAULT_CAMERA_WHITE = (0.3932386, 1.0, 0.55652386)


@dataclasses.dataclass(frozen=True)
class Evaluation:
    exposure_ev: float
    matched_cells: int
    weighted_match_rate: float
    mean_absolute_ev: float
    weighted_median_ev: float
    recommended_correction_ev: float
    residual_ev: np.ndarray
    matched: np.ndarray


@dataclasses.dataclass(frozen=True)
class Lut3d:
    size: int
    # OpenGL upload order: [blue, green, red, output channel].
    values: np.ndarray


@dataclasses.dataclass(frozen=True)
class DehazeCurve:
    haze_point_low: float
    haze_point_high: float
    highlight_scale: float
    quadratic_coefficient: float
    linear_slope: float
    shoulder_value: float
    detected_highlight_scale: float
    sample_count: int


def parse_float_list(value: str, count: int) -> tuple[float, ...]:
    parts = [part.strip() for part in value.split(",")]
    if len(parts) != count:
        raise argparse.ArgumentTypeError(f"expected {count} comma-separated values")
    try:
        result = tuple(float(part) for part in parts)
    except ValueError as error:
        raise argparse.ArgumentTypeError(str(error)) from error
    if not all(math.isfinite(item) for item in result):
        raise argparse.ArgumentTypeError("all values must be finite")
    return result


def parse_arguments() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--dng", type=Path, required=True)
    parser.add_argument("--reference", type=Path, required=True)
    parser.add_argument(
        "--final-image",
        type=Path,
        help="optional final JPEG/PNG from the same capture for end-to-end exposure validation",
    )
    parser.add_argument(
        "--acr3-source",
        type=Path,
        default=Path(__file__).resolve().parents[1]
        / "app/src/main/java/com/hinnka/mycamera/raw/ACR3Curve.kt",
    )
    parser.add_argument(
        "--lut",
        type=Path,
        help="optional final .plut applied after RAW rendering (for end-to-end matching)",
    )
    parser.add_argument(
        "--ccm",
        type=lambda value: parse_float_list(value, 9),
        default=DEFAULT_CCM,
        help="row-major camera RGB to ProPhoto matrix",
    )
    parser.add_argument(
        "--camera-white",
        type=lambda value: parse_float_list(value, 3),
        default=DEFAULT_CAMERA_WHITE,
    )
    parser.add_argument("--minimum-ev", type=float, default=-1.0)
    parser.add_argument("--maximum-ev", type=float, default=1.0)
    parser.add_argument("--coarse-step-ev", type=float, default=0.01)
    parser.add_argument("--fine-step-ev", type=float, default=0.0005)
    parser.add_argument(
        "--brightness",
        choices=("rec709", "mean", "green", "maximum", "geometric"),
        default="rec709",
    )
    parser.add_argument(
        "--alignment",
        choices=("normal", "flip-x", "flip-y", "flip-both", "auto"),
        default="auto",
        help="alignment after applying the DNG Orientation tag",
    )
    parser.add_argument(
        "--dehaze",
        action="store_true",
        help="apply the capture's default PhotonDehaze before exposure/tone rendering",
    )
    parser.add_argument("--output-dir", type=Path)
    return parser.parse_args()


def srgb_to_linear(value: np.ndarray) -> np.ndarray:
    value = np.clip(value, 0.0, 1.0)
    return np.where(value <= 0.04045, value / 12.92, ((value + 0.055) / 1.055) ** 2.4)


def linear_to_srgb(value: np.ndarray) -> np.ndarray:
    value = np.maximum(value, 0.0)
    return np.where(value <= 0.0031308, value * 12.92, 1.055 * value ** (1.0 / 2.4) - 0.055)


def load_acr3_curve(path: Path) -> np.ndarray:
    source = path.read_text(encoding="utf-8")
    body_match = re.search(
        r"ACR3_DEFAULT_CURVE\s*=\s*floatArrayOf\((.*?)\)\s*\n",
        source,
        re.DOTALL,
    )
    if body_match is None:
        raise ValueError(f"unable to find ACR3_DEFAULT_CURVE in {path}")
    values = [float(value) for value in re.findall(r"([-+]?\d+(?:\.\d+)?)f", body_match.group(1))]
    if len(values) < 2:
        raise ValueError(f"invalid ACR3 curve in {path}")
    return np.asarray(values, dtype=np.float32)


def load_plut(path: Path) -> Lut3d:
    payload = path.read_bytes()
    if len(payload) < 16 or payload[:4] != b"PLUT":
        raise ValueError(f"invalid PLUT file: {path}")
    version, size, data_type = struct.unpack_from("<iii", payload, 4)
    offset = 16
    if version >= 2:
        offset += 4
    if version >= 3:
        offset += 4
    component_count = size**3 * 3
    if data_type == 0:
        byte_count = component_count
        values = np.frombuffer(payload, dtype=np.uint8, count=component_count, offset=offset).astype(np.float32) / 255.0
    elif data_type == 1:
        byte_count = component_count * 2
        values = np.frombuffer(payload, dtype="<u2", count=component_count, offset=offset).astype(np.float32) / 65535.0
    else:
        raise ValueError(f"unsupported PLUT data type: {data_type}")
    if len(payload) < offset + byte_count or values.size != component_count:
        raise ValueError(f"truncated PLUT file: {path}")
    return Lut3d(size=size, values=values.reshape(size, size, size, 3))


def apply_lut(encoded_srgb: np.ndarray, lut: Lut3d) -> np.ndarray:
    position = np.clip(encoded_srgb, 0.0, 1.0) * (lut.size - 1)
    lower = np.floor(position).astype(np.int32)
    upper = np.minimum(lower + 1, lut.size - 1)
    fraction = position - lower
    r0, g0, b0 = lower[..., 0], lower[..., 1], lower[..., 2]
    r1, g1, b1 = upper[..., 0], upper[..., 1], upper[..., 2]
    fr, fg, fb = fraction[..., 0:1], fraction[..., 1:2], fraction[..., 2:3]
    c000 = lut.values[b0, g0, r0]
    c100 = lut.values[b0, g0, r1]
    c010 = lut.values[b0, g1, r0]
    c110 = lut.values[b0, g1, r1]
    c001 = lut.values[b1, g0, r0]
    c101 = lut.values[b1, g0, r1]
    c011 = lut.values[b1, g1, r0]
    c111 = lut.values[b1, g1, r1]
    c00 = c000 * (1.0 - fr) + c100 * fr
    c10 = c010 * (1.0 - fr) + c110 * fr
    c01 = c001 * (1.0 - fr) + c101 * fr
    c11 = c011 * (1.0 - fr) + c111 * fr
    c0 = c00 * (1.0 - fg) + c10 * fg
    c1 = c01 * (1.0 - fg) + c11 * fg
    return c0 * (1.0 - fb) + c1 * fb


def xy_rgb_to_xyz(primaries: tuple[float, ...], white: tuple[float, float]) -> np.ndarray:
    columns = np.asarray(
        [
            [primaries[0] / primaries[1], primaries[2] / primaries[3], primaries[4] / primaries[5]],
            [1.0, 1.0, 1.0],
            [
                (1.0 - primaries[0] - primaries[1]) / primaries[1],
                (1.0 - primaries[2] - primaries[3]) / primaries[3],
                (1.0 - primaries[4] - primaries[5]) / primaries[5],
            ],
        ],
        dtype=np.float64,
    )
    white_xyz = np.asarray(
        [white[0] / white[1], 1.0, (1.0 - white[0] - white[1]) / white[1]],
        dtype=np.float64,
    )
    return columns @ np.diag(np.linalg.solve(columns, white_xyz))


def prophoto_to_srgb_matrix() -> np.ndarray:
    prophoto_to_xyz_d50 = xy_rgb_to_xyz(
        (0.734699, 0.265301, 0.159597, 0.840403, 0.036598, 0.000105),
        (0.345704, 0.358540),
    )
    srgb_to_xyz_d65 = xy_rgb_to_xyz(
        (0.640, 0.330, 0.300, 0.600, 0.150, 0.060),
        (0.3127, 0.3290),
    )
    # Same Bradford D65 -> D50 matrix used by RawDemosaicProcessor.
    bradford_d65_to_d50 = np.asarray(
        [
            [1.0479298, 0.0229468, -0.0501922],
            [0.0296278, 0.9904345, -0.0170738],
            [-0.0092430, 0.0150552, 0.7518743],
        ],
        dtype=np.float64,
    )
    srgb_to_xyz_d50 = bradford_d65_to_d50 @ srgb_to_xyz_d65
    return (np.linalg.inv(srgb_to_xyz_d50) @ prophoto_to_xyz_d50).astype(np.float32)


def display_linear_brightness(rgb: np.ndarray, mode: str) -> np.ndarray:
    if mode == "rec709":
        return 0.2126 * rgb[..., 0] + 0.7152 * rgb[..., 1] + 0.0722 * rgb[..., 2]
    if mode == "mean":
        return rgb.mean(axis=2)
    if mode == "green":
        return rgb[..., 1]
    if mode == "maximum":
        return rgb.max(axis=2)
    if mode == "geometric":
        return np.cbrt(np.maximum(rgb[..., 0] * rgb[..., 1] * rgb[..., 2], 0.0))
    raise ValueError(mode)


def nearest_reference_preview(path: Path, brightness: str) -> tuple[np.ndarray, np.ndarray]:
    rgba = np.asarray(Image.open(path).convert("RGBA"), dtype=np.float32) / 255.0
    source_height, source_width = rgba.shape[:2]
    long_edge = min(max(source_width, source_height), PREVIEW_LONG_EDGE)
    if source_width >= source_height:
        width = long_edge
        height = max(1, int(long_edge * source_height / source_width))
    else:
        width = max(1, int(long_edge * source_width / source_height))
        height = long_edge
    source_x = np.floor((np.arange(width) + 0.5) * source_width / width).astype(np.int32)
    source_y = np.floor((np.arange(height) + 0.5) * source_height / height).astype(np.int32)
    sampled = rgba[source_y[:, None], source_x[None, :]]
    rgb_linear = srgb_to_linear(sampled[..., :3])
    alpha = sampled[..., 3]
    luma = display_linear_brightness(rgb_linear, brightness) * alpha
    return sampled, luma.astype(np.float32)


def display_image_grid(path: Path, brightness: str) -> np.ndarray:
    rgb = np.asarray(Image.open(path).convert("RGB"), dtype=np.float32) / 255.0
    return grid_means(display_linear_brightness(srgb_to_linear(rgb), brightness))


def area_downsample(image: np.ndarray, height: int, width: int) -> np.ndarray:
    source_height, source_width = image.shape[:2]
    if source_height % height == 0 and source_width % width == 0:
        block_y = source_height // height
        block_x = source_width // width
        return image.reshape(height, block_y, width, block_x, image.shape[2]).mean(axis=(1, 3))
    pil_channels = []
    for channel in range(image.shape[2]):
        plane = Image.fromarray(image[..., channel], mode="F")
        pil_channels.append(np.asarray(plane.resize((width, height), Image.Resampling.BOX)))
    return np.stack(pil_channels, axis=-1)


def load_oriented_camera_rgb(path: Path) -> np.ndarray:
    with rawpy.imread(str(path)) as raw:
        source = np.asarray(raw.raw_image_visible, dtype=np.float32)
        if source.ndim != 3 or source.shape[2] < 3:
            raise ValueError(f"expected LinearRaw RGB DNG, got {source.shape}")
        source = source[..., :3] / float(raw.white_level)
        orientation = raw.sizes.flip
    if orientation == 6:  # TIFF Rotate 90 CW.
        return np.rot90(source, k=-1)
    if orientation == 3:
        return np.rot90(source, k=2)
    if orientation == 5:
        return np.rot90(source, k=1)
    if orientation in (0, 1):
        return source
    raise ValueError(f"unsupported DNG orientation/LibRaw flip: {orientation}")


def camera_to_profile_rgb(
    camera_rgb: np.ndarray,
    ccm: tuple[float, ...],
    camera_white: tuple[float, ...],
) -> np.ndarray:
    camera_rgb = np.minimum(camera_rgb, np.asarray(camera_white, dtype=np.float32))
    profile_rgb = camera_rgb @ np.asarray(ccm, dtype=np.float32).reshape(3, 3).T
    return np.clip(profile_rgb, 0.0, 1.0)


def load_profile_rgb(
    path: Path,
    target_height: int,
    target_width: int,
    ccm: tuple[float, ...],
    camera_white: tuple[float, ...],
) -> np.ndarray:
    camera_rgb = area_downsample(
        load_oriented_camera_rgb(path),
        target_height,
        target_width,
    )
    return camera_to_profile_rgb(camera_rgb, ccm, camera_white)


def _interpolated_histogram_quantiles(
    histogram: np.ndarray,
    targets: list[float],
) -> list[float]:
    result: list[float] = []
    target_index = 0
    cumulative = 0
    for index, bin_count in enumerate(histogram):
        previous = cumulative
        cumulative += int(bin_count)
        while target_index < len(targets) and cumulative >= targets[target_index]:
            target = targets[target_index]
            if index == 0:
                quantile = 0.0
            elif cumulative <= previous:
                quantile = float(index)
            else:
                fraction = np.clip(
                    (target - previous) / (cumulative - previous),
                    0.0,
                    1.0,
                )
                quantile = float(index - 1) + float(fraction)
            result.append(quantile)
            target_index += 1
    return result


def estimate_dehaze_curve(profile_rgb: np.ndarray) -> DehazeCurve:
    signal_max = 4095.0
    source_height, source_width = profile_rgb.shape[:2]
    low_height = (source_height + 7) // 8
    low_width = (source_width + 7) // 8
    padded = np.pad(
        profile_rgb,
        (
            (0, low_height * 8 - source_height),
            (0, low_width * 8 - source_width),
            (0, 0),
        ),
        mode="constant",
        constant_values=np.nan,
    )
    blocks = padded.reshape(low_height, 8, low_width, 8, 3)
    block_rgb = np.nanmean(blocks, axis=(1, 3)).reshape(-1, 3)
    block_rgb = block_rgb[np.isfinite(block_rgb).all(axis=1)]
    quantized = np.floor(
        np.clip(block_rgb, 0.0, 1.0) * signal_max + 0.5
    ).astype(np.int32)
    minimum = quantized.min(axis=1)
    maximum = quantized.max(axis=1)
    haze_bins = np.clip(quantized.sum(axis=1), 0, 876)
    highlight_bins = np.clip(maximum + (maximum - minimum) // 8, 0, 5250)
    haze_histogram = np.bincount(haze_bins, minlength=877)
    highlight_histogram = np.bincount(highlight_bins, minlength=5251)
    total = int(block_rgb.shape[0])

    highlight_quantile = 0.993
    distance_from_white = 1.0 - highlight_quantile
    maximum_half_window = 0.01 + (0.05 - 0.01) * np.clip(
        distance_from_white * 5.0,
        0.0,
        1.0,
    )
    half_window = min(distance_from_white, float(maximum_half_window))
    highlight_targets = [
        ((highlight_quantile - half_window) + 2.0 * half_window * index / 4.0)
        * total
        for index in range(5)
    ]
    highlight_values = _interpolated_histogram_quantiles(
        highlight_histogram,
        highlight_targets,
    )
    highlight_values.extend([5250.0] * (5 - len(highlight_values)))
    mean_highlight = sum(value / signal_max for value in highlight_values) / 5.0
    detected_highlight_scale = float(
        np.clip(
            0.88 / mean_highlight if mean_highlight > 1e-6 else 1.7,
            0.78,
            1.7,
        )
    )
    highlight_scale = detected_highlight_scale

    haze_targets = [
        0.001 * (0.1 + (1.9 - 0.1) * index / 19.0) * total
        for index in range(20)
    ]
    haze_values = _interpolated_histogram_quantiles(haze_histogram, haze_targets)
    haze_values.extend([876.0] * (20 - len(haze_values)))
    haze_level = sum(min(value / 3.0, 172.0) for value in haze_values) / 20.0
    haze_base = highlight_scale * haze_level * 0.98
    haze_point_low = float(np.clip(0.6 * haze_base / signal_max, 0.0, 1.0))
    haze_point_high = float(
        np.clip(1.2 * haze_base / signal_max, haze_point_low, 1.0)
    )
    interval = haze_point_high - haze_point_low
    if interval > 1e-6:
        quadratic_coefficient = 1.0 / (
            interval * interval + 2.0 * (1.0 - haze_point_high) * interval
        )
        shoulder_value = interval * interval * quadratic_coefficient
        linear_slope = (
            (1.0 - shoulder_value) / (1.0 - haze_point_high)
            if haze_point_high < 1.0
            else 0.0
        )
    else:
        quadratic_coefficient = 0.0
        shoulder_value = 0.0
        linear_slope = 1.0
    return DehazeCurve(
        haze_point_low=haze_point_low,
        haze_point_high=haze_point_high,
        highlight_scale=highlight_scale,
        quadratic_coefficient=quadratic_coefficient,
        linear_slope=linear_slope,
        shoulder_value=shoulder_value,
        detected_highlight_scale=detected_highlight_scale,
        sample_count=total,
    )


def apply_dehaze(profile_rgb: np.ndarray, curve: DehazeCurve) -> np.ndarray:
    rgb = np.clip(profile_rgb, 0.0, 1.0)
    luminance = rgb.mean(axis=2)
    scaled = np.minimum(luminance * curve.highlight_scale, 1.0)
    distance = np.maximum(scaled - curve.haze_point_low, 0.0)
    mapped = np.where(
        scaled < curve.haze_point_high,
        distance * distance * curve.quadratic_coefficient,
        curve.shoulder_value
        + (scaled - curve.haze_point_high) * curve.linear_slope,
    )
    gain = np.clip(mapped, 0.0, 1.0) / np.maximum(luminance, 1e-6)
    return np.clip(rgb * gain[..., None], 0.0, 1.0)


def apply_alignment(image: np.ndarray, alignment: str) -> np.ndarray:
    if alignment == "normal":
        return image
    if alignment == "flip-x":
        return image[:, ::-1]
    if alignment == "flip-y":
        return image[::-1]
    if alignment == "flip-both":
        return image[::-1, ::-1]
    raise ValueError(alignment)


def sample_curve(value: np.ndarray, curve: np.ndarray) -> np.ndarray:
    value = np.clip(value, 0.0, 1.0)
    position = value * (curve.size - 1)
    lower = np.floor(position).astype(np.int32)
    upper = np.minimum(lower + 1, curve.size - 1)
    amount = position - lower
    return curve[lower] + (curve[upper] - curve[lower]) * amount


def exposure_tone(value: np.ndarray, exposure_ev: float) -> np.ndarray:
    if exposure_ev >= 0.0:
        return value
    slope = 2.0**exposure_ev
    a = (16.0 / 9.0) * (1.0 - slope)
    b = slope - 0.5 * a
    c = 1.0 - a - b
    return np.where(value <= 0.25, value * slope, (a * value + b) * value + c)


def render_candidate(
    profile_rgb: np.ndarray,
    exposure_ev: float,
    curve: np.ndarray,
    lut: Lut3d | None,
) -> np.ndarray:
    # DefaultBlackRender=None for the embedded profile in this fixture.
    positive_ev = max(0.0, exposure_ev)
    ramped = np.clip(profile_rgb * (2.0**positive_ev), 0.0, 1.0)
    order = np.argsort(ramped, axis=2)
    sorted_rgb = np.take_along_axis(ramped, order, axis=2)
    old_min = sorted_rgb[..., 0]
    old_mid = sorted_rgb[..., 1]
    old_max = sorted_rgb[..., 2]
    new_min = sample_curve(exposure_tone(old_min, exposure_ev), curve)
    new_max = sample_curve(exposure_tone(old_max, exposure_ev), curve)
    span = old_max - old_min
    new_mid = np.where(
        np.abs(span) < 1e-6,
        new_min,
        new_min + (new_max - new_min) * (old_mid - old_min) / np.maximum(span, 1e-12),
    )
    toned_sorted = np.stack((new_min, new_mid, new_max), axis=2)
    inverse_order = np.argsort(order, axis=2)
    toned_profile = np.take_along_axis(toned_sorted, inverse_order, axis=2)
    linear_srgb = toned_profile @ prophoto_to_srgb_matrix().T
    encoded = np.clip(linear_to_srgb(linear_srgb), 0.0, 1.0)
    # The RAW render and the later LUT stack each materialize through RGBA8.
    encoded = np.rint(encoded * 255.0).astype(np.uint8).astype(np.float32) / 255.0
    if lut is not None:
        encoded = apply_lut(encoded, lut)
    return np.rint(np.clip(encoded, 0.0, 1.0) * 255.0).astype(np.uint8)


def grid_means(values: np.ndarray) -> np.ndarray:
    height, width = values.shape
    result = np.empty((GRID_ROWS, GRID_COLUMNS), dtype=np.float64)
    for grid_y in range(GRID_ROWS):
        y_begin = (grid_y * height + GRID_ROWS - 1) // GRID_ROWS
        y_end = ((grid_y + 1) * height + GRID_ROWS - 1) // GRID_ROWS
        for grid_x in range(GRID_COLUMNS):
            x_begin = (grid_x * width + GRID_COLUMNS - 1) // GRID_COLUMNS
            x_end = ((grid_x + 1) * width + GRID_COLUMNS - 1) // GRID_COLUMNS
            result[grid_y, grid_x] = values[y_begin:y_end, x_begin:x_end].mean()
    return result


def reliability_weight(luma: np.ndarray) -> np.ndarray:
    def smoothstep(edge0: float, edge1: float, value: np.ndarray) -> np.ndarray:
        t = np.clip((value - edge0) / (edge1 - edge0), 0.0, 1.0)
        return t * t * (3.0 - 2.0 * t)

    shadow_zero = float(srgb_to_linear(np.asarray(4.0 / 255.0)))
    shadow_full = float(srgb_to_linear(np.asarray(16.0 / 255.0)))
    highlight_full = float(srgb_to_linear(np.asarray(220.0 / 255.0)))
    highlight_zero = float(srgb_to_linear(np.asarray(240.0 / 255.0)))
    return smoothstep(shadow_zero, shadow_full, luma) * (
        1.0 - smoothstep(highlight_full, highlight_zero, luma)
    )


def spatial_weights() -> np.ndarray:
    result = np.empty((GRID_ROWS, GRID_COLUMNS), dtype=np.float64)
    for y in range(GRID_ROWS):
        for x in range(GRID_COLUMNS):
            result[y, x] = min(x, GRID_COLUMNS - 1 - x, y, GRID_ROWS - 1 - y) + 1
    return result


def weighted_median(values: np.ndarray, weights: np.ndarray) -> float:
    flat_values = values.ravel()
    flat_weights = weights.ravel()
    order = np.argsort(flat_values)
    cumulative = np.cumsum(flat_weights[order])
    index = int(np.searchsorted(cumulative, flat_weights.sum() * 0.5, side="left"))
    return float(flat_values[order[min(index, order.size - 1)]])


def robust_exposure_correction(residual: np.ndarray, weights: np.ndarray) -> float:
    def score(correction_ev: float) -> float:
        return float((weights * np.clip(residual + correction_ev, -0.25, 0.25)).sum())

    lower = -4.0
    upper = 4.0
    if score(lower) >= 0.0:
        return lower
    if score(upper) <= 0.0:
        return upper
    for _ in range(24):
        midpoint = 0.5 * (lower + upper)
        if score(midpoint) > 0.0:
            upper = midpoint
        else:
            lower = midpoint
    return 0.5 * (lower + upper)


def evaluate(
    exposure_ev: float,
    profile_rgb: np.ndarray,
    reference_grid: np.ndarray,
    weights: np.ndarray,
    curve: np.ndarray,
    brightness: str,
    lut: Lut3d | None = None,
) -> Evaluation:
    candidate_srgb = render_candidate(profile_rgb, exposure_ev, curve, lut).astype(np.float32) / 255.0
    candidate_linear = srgb_to_linear(candidate_srgb)
    candidate_luma = display_linear_brightness(candidate_linear, brightness)
    candidate_grid = grid_means(candidate_luma)
    residual = np.log2(np.maximum(candidate_grid, DISPLAY_LINEAR_FLOOR)) - np.log2(
        np.maximum(reference_grid, DISPLAY_LINEAR_FLOOR)
    )
    matched = np.abs(residual) <= MATCH_TOLERANCE_EV
    weight_sum = weights.sum()
    median = weighted_median(residual, weights)
    correction = robust_exposure_correction(residual, weights)
    return Evaluation(
        exposure_ev=exposure_ev,
        matched_cells=int(matched.sum()),
        weighted_match_rate=float(weights[matched].sum() / weight_sum),
        mean_absolute_ev=float((weights * np.abs(residual)).sum() / weight_sum),
        weighted_median_ev=median,
        recommended_correction_ev=correction,
        residual_ev=residual,
        matched=matched,
    )


def better(candidate: Evaluation, current: Evaluation | None) -> bool:
    if current is None:
        return True
    if abs(candidate.weighted_match_rate - current.weighted_match_rate) > 1e-9:
        return candidate.weighted_match_rate > current.weighted_match_rate
    if abs(candidate.mean_absolute_ev - current.mean_absolute_ev) > 1e-9:
        return candidate.mean_absolute_ev < current.mean_absolute_ev
    return abs(candidate.weighted_median_ev) < abs(current.weighted_median_ev)


def scan(
    profile_rgb: np.ndarray,
    reference_grid: np.ndarray,
    weights: np.ndarray,
    curve: np.ndarray,
    minimum_ev: float,
    maximum_ev: float,
    step_ev: float,
    brightness: str,
    lut: Lut3d | None = None,
) -> Evaluation:
    if not minimum_ev <= maximum_ev or step_ev <= 0.0:
        raise ValueError("invalid EV scan range")
    best: Evaluation | None = None
    count = int(math.floor((maximum_ev - minimum_ev) / step_ev + 0.5)) + 1
    for exposure_ev in np.linspace(minimum_ev, maximum_ev, count):
        candidate = evaluate(
            float(exposure_ev),
            profile_rgb,
            reference_grid,
            weights,
            curve,
            brightness,
            lut,
        )
        if better(candidate, best):
            best = candidate
    if best is None:
        raise RuntimeError("empty EV scan")
    return best


def format_grid(values: np.ndarray, formatter: str) -> str:
    return "\n".join(" ".join(format(item, formatter) for item in row) for row in values)


def save_diagnostics(
    output_dir: Path,
    reference_rgba: np.ndarray,
    profile_rgb: np.ndarray,
    curve: np.ndarray,
    result: Evaluation,
    lut: Lut3d | None,
) -> None:
    output_dir.mkdir(parents=True, exist_ok=True)
    Image.fromarray(np.rint(reference_rgba * 255.0).astype(np.uint8), mode="RGBA").save(
        output_dir / "reference_preview.png"
    )
    Image.fromarray(render_candidate(profile_rgb, result.exposure_ev, curve, lut), mode="RGB").save(
        output_dir / "candidate_preview.png"
    )
    heat = np.clip((result.residual_ev + 0.5) / 1.0, 0.0, 1.0)
    heat_rgb = np.stack((heat, 1.0 - np.abs(heat - 0.5) * 2.0, 1.0 - heat), axis=2)
    heat_image = Image.fromarray(np.rint(heat_rgb * 255.0).astype(np.uint8), mode="RGB")
    heat_image.resize((GRID_COLUMNS * 80, GRID_ROWS * 80), Image.Resampling.NEAREST).save(
        output_dir / "residual_grid.png"
    )


def main() -> None:
    args = parse_arguments()
    if not args.dng.is_file() or not args.reference.is_file():
        raise SystemExit("DNG and reference files must exist")
    curve = load_acr3_curve(args.acr3_source)
    lut = load_plut(args.lut) if args.lut is not None else None
    reference_rgba, reference_luma = nearest_reference_preview(args.reference, args.brightness)
    reference_grid = grid_means(reference_luma)
    weights = reliability_weight(reference_grid) * spatial_weights()
    dehaze_curve: DehazeCurve | None = None
    if args.dehaze:
        full_profile_rgb = camera_to_profile_rgb(
            load_oriented_camera_rgb(args.dng),
            args.ccm,
            args.camera_white,
        )
        dehaze_curve = estimate_dehaze_curve(full_profile_rgb)
        profile_rgb = apply_dehaze(
            area_downsample(
                full_profile_rgb,
                reference_luma.shape[0],
                reference_luma.shape[1],
            ),
            dehaze_curve,
        )
        del full_profile_rgb
    else:
        profile_rgb = load_profile_rgb(
            args.dng,
            reference_luma.shape[0],
            reference_luma.shape[1],
            args.ccm,
            args.camera_white,
        )

    alignments = ("normal", "flip-x", "flip-y", "flip-both") if args.alignment == "auto" else (args.alignment,)
    aligned_results: list[tuple[str, Evaluation, np.ndarray]] = []
    for alignment in alignments:
        aligned = apply_alignment(profile_rgb, alignment)
        coarse = scan(
            aligned,
            reference_grid,
            weights,
            curve,
            args.minimum_ev,
            args.maximum_ev,
            args.coarse_step_ev,
            args.brightness,
            lut,
        )
        fine = scan(
            aligned,
            reference_grid,
            weights,
            curve,
            max(args.minimum_ev, coarse.exposure_ev - args.coarse_step_ev),
            min(args.maximum_ev, coarse.exposure_ev + args.coarse_step_ev),
            args.fine_step_ev,
            args.brightness,
            lut,
        )
        aligned_results.append((alignment, fine, aligned))
    alignment, result, aligned_profile = max(
        aligned_results,
        key=lambda item: (item[1].weighted_match_rate, -item[1].mean_absolute_ev),
    )

    print(f"DNG: {args.dng}")
    print(f"Reference: {args.reference}")
    print(f"Preview: {reference_luma.shape[1]}x{reference_luma.shape[0]}; grid: {GRID_COLUMNS}x{GRID_ROWS}")
    print(f"Alignment: {alignment}")
    print(f"Brightness: {args.brightness}")
    print(f"PhotonDehaze: {args.dehaze}")
    if dehaze_curve is not None:
        print(
            "PhotonDehaze curve: "
            f"haze=[{dehaze_curve.haze_point_low:.8f},"
            f"{dehaze_curve.haze_point_high:.8f}] "
            f"highlightScale={dehaze_curve.highlight_scale:.8f} "
            f"samples={dehaze_curve.sample_count}"
        )
    print(f"Final LUT: {args.lut if args.lut is not None else 'none'}")
    print(f"Reference weight sum: {weights.sum():.6f}")
    print(f"Best exposure: {result.exposure_ev:+.6f} EV")
    print(
        f"Match: {result.matched_cells}/{GRID_COLUMNS * GRID_ROWS} cells, "
        f"weighted rate={result.weighted_match_rate:.6f}, "
        f"mean absolute={result.mean_absolute_ev:.6f} EV, "
        f"weighted median={result.weighted_median_ev:+.6f} EV, "
        f"recommended correction={result.recommended_correction_ev:+.6f} EV"
    )
    print("Residual EV grid (candidate - reference):")
    print(format_grid(result.residual_ev, "+.3f"))
    print("Matched grid (1 means |difference| <= 0.1 EV):")
    print(format_grid(result.matched.astype(np.int32), "d"))
    if args.final_image is not None:
        final_grid = display_image_grid(args.final_image, args.brightness)
        final_residual = np.log2(np.maximum(final_grid, DISPLAY_LINEAR_FLOOR)) - np.log2(
            np.maximum(reference_grid, DISPLAY_LINEAR_FLOOR)
        )
        final_matched = np.abs(final_residual) <= MATCH_TOLERANCE_EV
        final_correction = robust_exposure_correction(final_residual, weights)
        print(f"Final image: {args.final_image}")
        print(
            f"Final/reference match: {int(final_matched.sum())}/{GRID_COLUMNS * GRID_ROWS} cells, "
            f"weighted rate={weights[final_matched].sum() / weights.sum():.6f}, "
            f"mean absolute={(weights * np.abs(final_residual)).sum() / weights.sum():.6f} EV, "
            f"recommended correction={final_correction:+.6f} EV"
        )
        print("Final image residual EV grid:")
        print(format_grid(final_residual, "+.3f"))
    if args.output_dir is not None:
        save_diagnostics(args.output_dir, reference_rgba, aligned_profile, curve, result, lut)
        print(f"Diagnostics: {args.output_dir}")
    if result.matched_cells != GRID_COLUMNS * GRID_ROWS:
        raise SystemExit(2)


if __name__ == "__main__":
    main()
