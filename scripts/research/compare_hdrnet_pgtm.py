"""Compare MGC and Photon DNG PGTM maps while scanning the HDRNet ratio input.

Run from ``scripts`` so the repository's rawpy/numpy environment is available:

    uv run --with ai-edge-litert python research/compare_hdrnet_pgtm.py \
        path/to/PXL.ORIGINAL.dng path/to/PhotonCamera.dng

The script is intentionally read-only.  It extracts the two DNG PGTM payloads with
ExifTool, prepares the same 256x192x4 tensor as PhotonCamera's capture shader from
the LinearRaw Photon DNG, runs the checked-in HDRNet model, and reports log-gain
errors against both stored maps for a ratio/source-to-short scan.
"""

from __future__ import annotations

import argparse
import re
import struct
import subprocess
from dataclasses import dataclass
from pathlib import Path

import numpy as np
import rawpy
from ai_edge_litert.interpreter import Interpreter


HDRNET_WIDTH = 256
HDRNET_HEIGHT = 192
HDRNET_LUMA = np.array([0.298828125, 0.5869140625, 0.1142578125], dtype=np.float32)
# Recovered exactly from the PXL MapInputWeights after removing
# finalShortGain / 2**BaselineExposure.  MGC's bilateral range coordinate is not plain luma:
# it blends half Rec.601 luma with one eighth min(RGB) and three eighths max(RGB).
MGC_INTENSITY_WEIGHTS = np.array(
    [0.1495, 0.2935, 0.057, 0.125, 0.375],
    dtype=np.float32,
)
GUIDE_SHIFTS = np.array(
    [
        -0.016231587,
        0.087645173,
        0.046893604,
        0.046908736,
        0.164940223,
        0.169144228,
        0.164913952,
        0.334212393,
        0.360981315,
        0.405426592,
        0.502622545,
        0.575052559,
        0.885822535,
        0.671997726,
        0.769933939,
        0.999969125,
    ],
    dtype=np.float32,
)
GUIDE_SLOPES = np.array(
    [
        2.254485607,
        -0.186903119,
        -0.379063636,
        -0.270400405,
        -0.319921762,
        -0.316523373,
        -0.369912237,
        -0.101488806,
        -0.077343300,
        -0.076434754,
        0.009167636,
        -0.071477108,
        -0.020303842,
        0.119247116,
        0.008830319,
        0.051524382,
    ],
    dtype=np.float32,
)


@dataclass(frozen=True)
class GainMap:
    points_v: int
    points_h: int
    spacing_v: float
    spacing_h: float
    origin_v: float
    origin_h: float
    points_n: int
    weights: np.ndarray
    gamma: float
    gains: np.ndarray


def extract_tag(path: Path, tag: str) -> bytes:
    result = subprocess.run(
        ["exiftool", "-b", f"-{tag}", str(path)],
        check=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.DEVNULL,
    )
    if not result.stdout:
        raise ValueError(f"{path.name} does not contain {tag}")
    return result.stdout


def extract_float_tag(path: Path, tag: str, default: float) -> float:
    result = subprocess.run(
        ["exiftool", "-n", "-s3", f"-{tag}", str(path)],
        check=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.DEVNULL,
        text=True,
    )
    value = result.stdout.strip()
    return float(value) if value else default


def byte_order(path: Path) -> str:
    with path.open("rb") as stream:
        marker = stream.read(2)
    if marker == b"II":
        return "<"
    if marker == b"MM":
        return ">"
    raise ValueError(f"{path.name} is not a TIFF/DNG file")


def decode_map(path: Path) -> GainMap:
    order = byte_order(path)
    try:
        payload = extract_tag(path, "ProfileGainTableMap2")
        is_map2 = True
    except ValueError:
        payload = extract_tag(path, "ProfileGainTableMap")
        is_map2 = False

    common = struct.unpack_from(f"{order}ii4di5f", payload, 0)
    points_v, points_h = common[:2]
    spacing_v, spacing_h, origin_v, origin_h = common[2:6]
    points_n = common[6]
    weights = np.asarray(common[7:12], dtype=np.float32)
    count = points_v * points_h * points_n

    if is_map2:
        data_type, gamma, gain_min, gain_max = struct.unpack_from(f"{order}ifff", payload, 64)
        body = memoryview(payload)[80:]
        if data_type == 0:
            encoded = np.frombuffer(body, dtype=np.uint8, count=count).astype(np.float32)
            gains = gain_min + encoded / 255.0 * (gain_max - gain_min)
        elif data_type == 1:
            encoded = np.frombuffer(body, dtype=f"{order}u2", count=count).astype(np.float32)
            gains = gain_min + encoded / 65535.0 * (gain_max - gain_min)
        elif data_type == 2:
            gains = np.frombuffer(body, dtype=f"{order}f2", count=count).astype(np.float32)
        elif data_type == 3:
            gains = np.frombuffer(body, dtype=f"{order}f4", count=count).astype(np.float32)
        else:
            raise ValueError(f"Unsupported PGTM data type {data_type}")
    else:
        gamma = 1.0
        gains = np.frombuffer(memoryview(payload)[64:], dtype=f"{order}f4", count=count).astype(np.float32)

    return GainMap(
        points_v=points_v,
        points_h=points_h,
        spacing_v=spacing_v,
        spacing_h=spacing_h,
        origin_v=origin_v,
        origin_h=origin_h,
        points_n=points_n,
        weights=weights,
        gamma=gamma,
        gains=gains.reshape(points_v, points_h, points_n),
    )


def area_downsample(image: np.ndarray, output_width: int, output_height: int) -> np.ndarray:
    height, width, channels = image.shape
    output = np.empty((output_height, output_width, channels), dtype=np.float32)
    x0 = np.arange(output_width, dtype=np.int64) * width // output_width
    x1 = (np.arange(output_width, dtype=np.int64) + 1) * width // output_width
    y0 = np.arange(output_height, dtype=np.int64) * height // output_height
    y1 = (np.arange(output_height, dtype=np.int64) + 1) * height // output_height
    # Work one channel at a time so a full-resolution LinearRaw stays well below the
    # memory footprint of a three-channel float64 integral image.
    for channel in range(channels):
        integral = np.zeros((height + 1, width + 1), dtype=np.float64)
        integral[1:, 1:] = image[:, :, channel].cumsum(
            axis=0,
            dtype=np.float64,
        ).cumsum(axis=1, dtype=np.float64)
        for output_y in range(output_height):
            sums = (
                integral[y1[output_y], x1]
                - integral[y0[output_y], x1]
                - integral[y1[output_y], x0]
                + integral[y0[output_y], x0]
            )
            counts = (y1[output_y] - y0[output_y]) * (x1 - x0)
            output[output_y, :, channel] = sums / counts
    return output


def load_linear_rgb(path: Path) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
    with rawpy.imread(str(path)) as raw:
        samples = np.asarray(raw.raw_image_visible)
        if samples.ndim != 3 or samples.shape[2] < 3:
            raise ValueError(f"{path.name} is not a LinearRaw RGB DNG")
        rgb = area_downsample(samples[:, :, :3], HDRNET_WIDTH, HDRNET_HEIGHT)
        rgb /= float(raw.white_level)
        libraw_matrix = np.asarray(raw.color_matrix, dtype=np.float32)[:3, :3]
        white_balance = np.asarray(raw.camera_whitebalance, dtype=np.float32)[:3]
        white_balance /= white_balance[1]
    # LibRaw's color_matrix maps already-white-balanced camera RGB to output RGB. The app's
    # DNG-SDK matrix instead consumes un-white-balanced camera RGB and has the active WB baked
    # into it, so compose the same contract here before replaying HDRNet.
    camera_to_output = libraw_matrix @ np.diag(white_balance)
    return rgb, camera_to_output, white_balance


def load_acr_curve(source: Path) -> np.ndarray:
    text = source.read_text(encoding="utf-8")
    array_start = text.index("floatArrayOf(") + len("floatArrayOf(")
    array_end = text.index(")", array_start)
    values = [float(value) for value in re.findall(r"([0-9]+\.[0-9]+)f", text[array_start:array_end])]
    if len(values) < 2:
        raise ValueError(f"Unable to parse ACR3 curve from {source}")
    return np.asarray(values, dtype=np.float32)


def load_embedded_tone_curve(path: Path) -> tuple[np.ndarray, np.ndarray]:
    result = subprocess.run(
        ["exiftool", "-m", "-b", "-ProfileToneCurve", str(path)],
        check=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.DEVNULL,
        text=True,
    )
    values = np.fromstring(result.stdout, sep=" ", dtype=np.float32)
    if values.size < 4 or values.size % 2 != 0:
        raise ValueError(f"{path.name} does not contain a decodable ProfileToneCurve")
    points = values.reshape(-1, 2)
    if np.any(np.diff(points[:, 0]) < 0.0) or np.any(np.diff(points[:, 1]) < 0.0):
        raise ValueError(f"{path.name} contains a non-monotonic ProfileToneCurve")
    return points[:, 0], points[:, 1]


def prepare_input(
    stored_camera_rgb: np.ndarray,
    color_matrix: np.ndarray,
    source_to_short_gain: float,
    hdr_ratio: float,
    clip_rgb: bool = True,
) -> np.ndarray:
    camera_rgb = stored_camera_rgb * np.float32(source_to_short_gain)
    profile_rgb = np.maximum(camera_rgb @ color_matrix.T, 0.0)
    if clip_rgb:
        profile_rgb = np.minimum(profile_rgb, 1.0)
    short_luma = np.maximum(profile_rgb @ HDRNET_LUMA, 0.0)
    long_luma = np.minimum(short_luma * np.float32(hdr_ratio), 12.0)
    return np.concatenate([profile_rgb, long_luma[:, :, None]], axis=2)[None].astype(np.float32)


def mgc_intensity(profile_rgb: np.ndarray) -> np.ndarray:
    return (
        profile_rgb @ MGC_INTENSITY_WEIGHTS[:3]
        + profile_rgb.min(axis=-1) * MGC_INTENSITY_WEIGHTS[3]
        + profile_rgb.max(axis=-1) * MGC_INTENSITY_WEIGHTS[4]
    )


def prepare_mgc_input(
    stored_camera_rgb: np.ndarray,
    color_matrix: np.ndarray,
    source_to_short_gain: float,
    hdr_ratio: float,
) -> np.ndarray:
    camera_rgb = stored_camera_rgb * np.float32(source_to_short_gain)
    profile_rgb = np.clip(camera_rgb @ color_matrix.T, 0.0, 1.0)
    short_intensity = np.maximum(mgc_intensity(profile_rgb), 0.0)
    long_intensity = np.minimum(short_intensity * np.float32(hdr_ratio), 12.0)
    return np.concatenate([profile_rgb, long_intensity[:, :, None]], axis=2)[None].astype(np.float32)


def axis_samples(output_size: int, source_size: int) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
    positions = (np.arange(output_size, dtype=np.float32) + 0.5) * source_size / output_size - 0.5
    floors = np.floor(positions)
    lower = np.clip(floors.astype(np.int32), 0, source_size - 1)
    upper = np.clip(lower + 1, 0, source_size - 1)
    return lower, upper, positions - floors


def spatial_resample(coefficients: np.ndarray) -> np.ndarray:
    # TFLite output: [1, 12, 16, 8, 1, 2].
    grid = coefficients[0, :, :, :, 0, :]
    x0, x1, xa = axis_samples(64, 16)
    y0, y1, ya = axis_samples(48, 12)
    top = grid[:, x0] * (1.0 - xa[None, :, None, None]) + grid[:, x1] * xa[None, :, None, None]
    return top[y0] * (1.0 - ya[:, None, None, None]) + top[y1] * ya[:, None, None, None]


def spatial_resample_align_corners(coefficients: np.ndarray) -> np.ndarray:
    grid = coefficients[0, :, :, :, 0, :]
    x = np.linspace(0.0, grid.shape[1] - 1.0, 64, dtype=np.float32)
    y = np.linspace(0.0, grid.shape[0] - 1.0, 48, dtype=np.float32)
    x0 = np.floor(x).astype(np.int32)
    y0 = np.floor(y).astype(np.int32)
    x1 = np.minimum(x0 + 1, grid.shape[1] - 1)
    y1 = np.minimum(y0 + 1, grid.shape[0] - 1)
    xa = x - x0
    ya = y - y0
    top = grid[:, x0] * (1.0 - xa[None, :, None, None]) + grid[:, x1] * xa[None, :, None, None]
    return top[y0] * (1.0 - ya[:, None, None, None]) + top[y1] * ya[:, None, None, None]


def generate_map(
    spatial_coefficients: np.ndarray,
    hdr_ratio: float,
    source_to_short_gain: float,
    acr_curve: np.ndarray,
) -> np.ndarray:
    points_n = 257
    evaluated = np.arange(points_n, dtype=np.float32)
    evaluated[0] = 1.0
    source_luma = evaluated / points_n
    short_luma = np.clip(source_luma * np.float32(source_to_short_gain), 0.0, 1.0)
    guide = np.sum(
        GUIDE_SLOPES[:, None] * np.maximum(short_luma[None, :] - GUIDE_SHIFTS[:, None], 0.0),
        axis=0,
    )
    guide = np.clip(guide, 0.0, 1.0)
    range_position = guide * 8.0 - 0.5
    range_floor = np.floor(range_position)
    lower = np.clip(range_floor.astype(np.int32), 0, 7)
    upper = np.clip(lower + 1, 0, 7)
    amount = (range_position - range_floor).astype(np.float32)
    low = spatial_coefficients[:, :, lower, :]
    high = spatial_coefficients[:, :, upper, :]
    sliced = low * (1.0 - amount[None, None, :, None]) + high * amount[None, None, :, None]
    raw_scale = sliced[:, :, :, 0]
    bias = sliced[:, :, :, 1]
    scale = raw_scale * np.float32(hdr_ratio - 1.0) + 1.0
    predicted_luma = scale * short_luma[None, None, :] + bias
    render_gain = np.clip(predicted_luma / (short_luma[None, None, :] + 1.0e-6), 0.03, 30.0)
    target_luma = np.clip(short_luma[None, None, :] * render_gain, 0.0, 1.0)
    pre_curve = np.interp(
        target_luma,
        acr_curve,
        np.linspace(0.0, 1.0, acr_curve.size, dtype=np.float32),
    )
    return np.clip(pre_curve / source_luma[None, None, :], 1.0 / 4096.0, 4096.0).astype(np.float32)


def generate_mgc_map(
    spatial_coefficients: np.ndarray,
    hdr_ratio: float,
    source_to_short_gain: float,
    tone_curve_x: np.ndarray,
    tone_curve_y: np.ndarray,
) -> np.ndarray:
    points_n = 257
    evaluated = np.arange(points_n, dtype=np.float32)
    evaluated[0] = 1.0
    short_intensity = evaluated / points_n
    guide = np.sum(
        GUIDE_SLOPES[:, None]
        * np.maximum(short_intensity[None, :] - GUIDE_SHIFTS[:, None], 0.0),
        axis=0,
    )
    guide = np.clip(guide, 0.0, 1.0)
    range_position = guide * 8.0 - 0.5
    range_floor = np.floor(range_position)
    lower = np.clip(range_floor.astype(np.int32), 0, 7)
    upper = np.clip(lower + 1, 0, 7)
    amount = (range_position - range_floor).astype(np.float32)
    low = spatial_coefficients[:, :, lower, :]
    high = spatial_coefficients[:, :, upper, :]
    sliced = low * (1.0 - amount[None, None, :, None]) + high * amount[None, None, :, None]
    raw_scale = sliced[:, :, :, 0]
    bias = sliced[:, :, :, 1]
    scale = raw_scale * np.float32(hdr_ratio - 1.0) + 1.0
    predicted_intensity = scale * short_intensity[None, None, :] + bias
    render_gain = np.clip(
        predicted_intensity / (short_intensity[None, None, :] + 1.0e-6),
        0.03,
        30.0,
    )
    target_intensity = np.clip(short_intensity[None, None, :] * render_gain, 0.0, 1.0)
    pre_curve = np.interp(target_intensity, tone_curve_y, tone_curve_x)
    baseline_restored_source = short_intensity / np.float32(source_to_short_gain)
    return np.clip(
        pre_curve / baseline_restored_source[None, None, :],
        1.0 / 4096.0,
        4096.0,
    ).astype(np.float32)


def log_error(candidate: np.ndarray, reference: np.ndarray) -> tuple[float, float, float]:
    difference = np.log2(np.maximum(candidate, 1.0 / 4096.0)) - np.log2(
        np.maximum(reference, 1.0 / 4096.0)
    )
    return (
        float(np.sqrt(np.mean(difference * difference))),
        float(np.median(np.abs(difference))),
        float(np.percentile(np.abs(difference), 95.0)),
    )


def with_gains(template: GainMap, gains: np.ndarray) -> GainMap:
    return GainMap(
        points_v=template.points_v,
        points_h=template.points_h,
        spacing_v=template.spacing_v,
        spacing_h=template.spacing_h,
        origin_v=template.origin_v,
        origin_h=template.origin_h,
        points_n=template.points_n,
        weights=template.weights,
        gamma=template.gamma,
        gains=gains,
    )


def render_map_rgb(
    gain_map: GainMap,
    profile_rgb: np.ndarray,
    baseline_exposure_ev: float,
) -> np.ndarray:
    height, width, _ = profile_rgb.shape
    x = (np.arange(width, dtype=np.float32) + 0.5) / width
    y = (np.arange(height, dtype=np.float32) + 0.5) / height
    map_x = np.clip(
        (x - gain_map.origin_h) / gain_map.spacing_h,
        0.0,
        gain_map.points_h - 1.0,
    )
    map_y = np.clip(
        (y - gain_map.origin_v) / gain_map.spacing_v,
        0.0,
        gain_map.points_v - 1.0,
    )
    x0 = np.floor(map_x).astype(np.int32)
    y0 = np.floor(map_y).astype(np.int32)
    x1 = np.minimum(x0 + 1, gain_map.points_h - 1)
    y1 = np.minimum(y0 + 1, gain_map.points_v - 1)
    xf = map_x - x0
    yf = map_y - y0

    rgb_min = profile_rgb.min(axis=2)
    rgb_max = profile_rgb.max(axis=2)
    weighted = (
        profile_rgb @ gain_map.weights[:3]
        + rgb_min * gain_map.weights[3]
        + rgb_max * gain_map.weights[4]
    )
    baseline_gain = np.float32(2.0**baseline_exposure_ev)
    table_position = (
        np.clip(weighted * baseline_gain, 0.0, 1.0) ** np.float32(gain_map.gamma)
    ) * gain_map.points_n
    table_position = np.clip(table_position, 0.0, gain_map.points_n - 1.0)
    point0 = np.floor(table_position).astype(np.int32)
    point1 = np.minimum(point0 + 1, gain_map.points_n - 1)
    point_amount = table_position - point0

    gain = np.empty((height, width), dtype=np.float32)
    for row in range(height):
        low_left = gain_map.gains[y0[row], x0, point0[row]]
        low_right = gain_map.gains[y0[row], x1, point0[row]]
        high_left = gain_map.gains[y1[row], x0, point0[row]]
        high_right = gain_map.gains[y1[row], x1, point0[row]]
        spatial0 = (
            low_left * (1.0 - xf) * (1.0 - yf[row])
            + low_right * xf * (1.0 - yf[row])
            + high_left * (1.0 - xf) * yf[row]
            + high_right * xf * yf[row]
        )
        low_left = gain_map.gains[y0[row], x0, point1[row]]
        low_right = gain_map.gains[y0[row], x1, point1[row]]
        high_left = gain_map.gains[y1[row], x0, point1[row]]
        high_right = gain_map.gains[y1[row], x1, point1[row]]
        spatial1 = (
            low_left * (1.0 - xf) * (1.0 - yf[row])
            + low_right * xf * (1.0 - yf[row])
            + high_left * (1.0 - xf) * yf[row]
            + high_right * xf * yf[row]
        )
        gain[row] = spatial0 * (1.0 - point_amount[row]) + spatial1 * point_amount[row]
    return np.maximum(profile_rgb, 0.0) * gain[:, :, None] * baseline_gain


def apply_adobe_tone_curve(
    profile_rgb: np.ndarray,
    curve_x: np.ndarray,
    curve_y: np.ndarray,
) -> np.ndarray:
    # Match AdobeCurveToneShader.adobeRgbTone: curve the minimum and maximum channels,
    # then retain the middle channel's relative position between those two extrema.
    rgb = np.clip(profile_rgb, 0.0, 1.0)
    old_min = rgb.min(axis=2)
    old_max = rgb.max(axis=2)
    new_min = np.interp(old_min, curve_x, curve_y).astype(np.float32)
    new_max = np.interp(old_max, curve_x, curve_y).astype(np.float32)
    extent = old_max - old_min
    amount = np.divide(
        rgb - old_min[:, :, None],
        extent[:, :, None],
        out=np.zeros_like(rgb),
        where=extent[:, :, None] >= 1.0e-6,
    )
    toned = new_min[:, :, None] + (new_max - new_min)[:, :, None] * amount
    equal = extent < 1.0e-6
    if np.any(equal):
        toned[equal] = np.interp(rgb[equal], curve_x, curve_y)
    return np.clip(toned, 0.0, 1.0)


def rendered_delta_ev(candidate: np.ndarray, reference: np.ndarray) -> tuple[float, float, float]:
    valid = (candidate > 1.0e-6) & (reference > 1.0e-6)
    difference = np.log2(candidate[valid] / reference[valid])
    return (
        float(np.mean(difference)),
        float(np.median(difference)),
        float(np.sqrt(np.mean(difference * difference))),
    )


def describe_map(label: str, gain_map: GainMap) -> None:
    print(
        f"{label}: grid={gain_map.points_h}x{gain_map.points_v}x{gain_map.points_n} "
        f"spacing=({gain_map.spacing_h:.9f},{gain_map.spacing_v:.9f}) "
        f"origin=({gain_map.origin_h:.9f},{gain_map.origin_v:.9f}) "
        f"weights={gain_map.weights.tolist()} gamma={gain_map.gamma:.6f} "
        f"gain=[{gain_map.gains.min():.6f}, {gain_map.gains.max():.6f}]"
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("pxl_dng", type=Path)
    parser.add_argument("photon_dng", type=Path)
    parser.add_argument("--mgc-ratio", type=float, default=1.22155106067657)
    parser.add_argument("--mgc-source-to-short", type=float, default=59.9473533630371 / 64.7)
    parser.add_argument("--photon-ratio", type=float, default=1.1569142)
    args = parser.parse_args()

    root = Path(__file__).resolve().parents[2]
    model_path = root / "app/src/main/assets/mgc_hdrnet/hdrnet_coefficients.tflite"
    acr_path = root / "app/src/main/java/com/hinnka/mycamera/raw/ACR3Curve.kt"
    pxl_map = decode_map(args.pxl_dng)
    photon_map = decode_map(args.photon_dng)
    pxl_baseline_exposure_ev = extract_float_tag(args.pxl_dng, "BaselineExposure", 0.0)
    photon_baseline_exposure_ev = extract_float_tag(args.photon_dng, "BaselineExposure", 0.0)
    describe_map("PXL", pxl_map)
    describe_map("Photon", photon_map)
    if pxl_map.gains.shape != photon_map.gains.shape:
        raise ValueError("The stored gain maps do not have matching geometry")
    print("stored Photon -> PXL log2 error (rmse, median, p95):", log_error(photon_map.gains, pxl_map.gains))

    stored_rgb, libraw_wb_matrix, white_balance = load_linear_rgb(args.photon_dng)
    camera_neutral = 1.0 / white_balance
    mapped_neutral = libraw_wb_matrix @ camera_neutral
    print(
        f"HDRNet color input: WB={white_balance.tolist()} "
        f"cameraNeutral={camera_neutral.tolist()} mappedNeutral={mapped_neutral.tolist()}"
    )
    acr_curve = load_acr_curve(acr_path)
    acr_curve_x = np.linspace(0.0, 1.0, acr_curve.size, dtype=np.float32)
    pxl_curve_x, pxl_curve_y = load_embedded_tone_curve(args.pxl_dng)
    print(
        f"tone curves: PXL=embedded({pxl_curve_y.size} points) "
        f"Photon=ACR3 fallback({acr_curve.size} points); "
        f"baselineEv=({pxl_baseline_exposure_ev:.6f},{photon_baseline_exposure_ev:.6f})"
    )
    print("Raw PGTM-array errors below are pre-tone diagnostics; compare final brightness after each curve.")
    interpreter = Interpreter(model_path=str(model_path), num_threads=4)
    interpreter.allocate_tensors()
    input_index = interpreter.get_input_details()[0]["index"]
    output_index = interpreter.get_output_details()[0]["index"]

    matrices = {
        "identity": np.eye(3, dtype=np.float32),
        "librawWb": libraw_wb_matrix,
    }
    ratios = sorted({*(round(value, 3) for value in np.arange(1.0, 3.01, 0.1)), round(args.mgc_ratio, 9), round(args.photon_ratio, 9), 4.0, 6.0, 9.8})
    source_gains = sorted({0.8, round(args.mgc_source_to_short, 9), 1.0, 1.2, 1.5})
    rows: list[tuple[float, float, float, float, str, float, float]] = []
    for matrix_name, matrix in matrices.items():
        for source_gain in source_gains:
            for ratio in ratios:
                model_input = prepare_input(stored_rgb, matrix, source_gain, ratio)
                interpreter.set_tensor(input_index, model_input)
                interpreter.invoke()
                spatial = spatial_resample(interpreter.get_tensor(output_index))
                candidate = generate_map(spatial, ratio, source_gain, acr_curve)
                pxl_rmse, pxl_median, _ = log_error(candidate, pxl_map.gains)
                photon_rmse, photon_median, _ = log_error(candidate, photon_map.gains)
                rows.append(
                    (pxl_rmse, pxl_median, photon_rmse, photon_median, matrix_name, source_gain, ratio)
                )

    print("\nBest candidates against PXL map:")
    for row in sorted(rows)[:12]:
        print(
            f"  matrix={row[4]:8s} sourceToShort={row[5]:.6f} ratio={row[6]:.9f} "
            f"pxl=(rmse={row[0]:.6f}, median={row[1]:.6f}) "
            f"photon=(rmse={row[2]:.6f}, median={row[3]:.6f})"
        )

    print("\nBest candidates against Photon map:")
    for row in sorted(rows, key=lambda value: (value[2], value[3]))[:12]:
        print(
            f"  matrix={row[4]:8s} sourceToShort={row[5]:.6f} ratio={row[6]:.9f} "
            f"photon=(rmse={row[2]:.6f}, median={row[3]:.6f}) "
            f"pxl=(rmse={row[0]:.6f}, median={row[1]:.6f})"
        )

    print("\nPXL ratio candidates (one row per matrix/source gain):")
    mgc_rows = [row for row in rows if abs(row[6] - args.mgc_ratio) < 1.0e-6]
    for row in sorted(mgc_rows):
        print(
            f"  matrix={row[4]:8s} sourceToShort={row[5]:.6f} ratio={row[6]:.9f} "
            f"pxl=(rmse={row[0]:.6f}, median={row[1]:.6f}) "
            f"photon=(rmse={row[2]:.6f}, median={row[3]:.6f})"
        )

    # Recover the otherwise non-persisted source-to-short input by fitting only that scalar to
    # the stored Photon PGTM at its persisted ratio. Then perform the requested controlled A/B:
    # retain that fitted scalar and replace only the ratio with MGC's value.
    fine_source_gains = np.arange(0.5, 2.001, 0.01, dtype=np.float32)
    fitted: list[tuple[float, float, str, np.ndarray, float]] = []
    for matrix_name, matrix in matrices.items():
        for source_gain in fine_source_gains:
            model_input = prepare_input(stored_rgb, matrix, float(source_gain), args.photon_ratio)
            interpreter.set_tensor(input_index, model_input)
            interpreter.invoke()
            spatial = spatial_resample(interpreter.get_tensor(output_index))
            candidate = generate_map(spatial, args.photon_ratio, float(source_gain), acr_curve)
            rmse, median, _ = log_error(candidate, photon_map.gains)
            fitted.append((rmse, median, matrix_name, candidate, float(source_gain)))
    fitted.sort(key=lambda value: (value[0], value[1]))
    fit_rmse, fit_median, fit_matrix_name, current_candidate, fitted_source_gain = fitted[0]
    fit_matrix = matrices[fit_matrix_name]

    mgc_input = prepare_input(stored_rgb, fit_matrix, fitted_source_gain, args.mgc_ratio)
    interpreter.set_tensor(input_index, mgc_input)
    interpreter.invoke()
    mgc_candidate = generate_map(
        spatial_resample(interpreter.get_tensor(output_index)),
        args.mgc_ratio,
        fitted_source_gain,
        acr_curve,
    )
    pxl_scalars_input = prepare_input(
        stored_rgb,
        fit_matrix,
        args.mgc_source_to_short,
        args.mgc_ratio,
    )
    interpreter.set_tensor(input_index, pxl_scalars_input)
    interpreter.invoke()
    pxl_scalars_candidate = generate_map(
        spatial_resample(interpreter.get_tensor(output_index)),
        args.mgc_ratio,
        args.mgc_source_to_short,
        acr_curve,
    )
    pxl_scalars_unclipped_input = prepare_input(
        stored_rgb,
        fit_matrix,
        args.mgc_source_to_short,
        args.mgc_ratio,
        clip_rgb=False,
    )
    interpreter.set_tensor(input_index, pxl_scalars_unclipped_input)
    interpreter.invoke()
    pxl_scalars_unclipped_candidate = generate_map(
        spatial_resample(interpreter.get_tensor(output_index)),
        args.mgc_ratio,
        args.mgc_source_to_short,
        acr_curve,
    )
    mgc_contract_input = prepare_mgc_input(
        stored_rgb,
        fit_matrix,
        args.mgc_source_to_short,
        args.mgc_ratio,
    )
    interpreter.set_tensor(input_index, mgc_contract_input)
    interpreter.invoke()
    mgc_contract_coefficients = interpreter.get_tensor(output_index)
    mgc_fourth_channel_only_candidate = generate_map(
        spatial_resample(mgc_contract_coefficients),
        args.mgc_ratio,
        args.mgc_source_to_short,
        acr_curve,
    )
    mgc_contract_candidate = generate_mgc_map(
        spatial_resample(mgc_contract_coefficients),
        args.mgc_ratio,
        args.mgc_source_to_short,
        pxl_curve_x,
        pxl_curve_y,
    )
    mgc_contract_aligned_candidate = generate_mgc_map(
        spatial_resample_align_corners(mgc_contract_coefficients),
        args.mgc_ratio,
        args.mgc_source_to_short,
        pxl_curve_x,
        pxl_curve_y,
    )
    mgc_contract_weights = (
        MGC_INTENSITY_WEIGHTS
        * np.float32(args.mgc_source_to_short)
        / np.float32(2.0**pxl_baseline_exposure_ev)
    )

    def generate_without_source_to_short(hdr_ratio: float) -> np.ndarray:
        model_input = prepare_input(stored_rgb, fit_matrix, 1.0, hdr_ratio)
        interpreter.set_tensor(input_index, model_input)
        interpreter.invoke()
        return generate_map(
            spatial_resample(interpreter.get_tensor(output_index)),
            hdr_ratio,
            1.0,
            acr_curve,
        )

    no_final_short_gain_photon_ratio = generate_without_source_to_short(args.photon_ratio)
    no_final_short_gain_pxl_ratio = generate_without_source_to_short(args.mgc_ratio)
    print("\nControlled ratio-only A/B:")
    print(
        f"  fitted Photon input: matrix={fit_matrix_name} "
        f"sourceToShort={fitted_source_gain:.6f} ratio={args.photon_ratio:.9f} "
        f"stored-map error=(rmse={fit_rmse:.6f}, median={fit_median:.6f})"
    )
    print(
        f"  replace ratio only: {args.photon_ratio:.9f} -> {args.mgc_ratio:.9f}; "
        f"candidate -> PXL map={log_error(mgc_candidate, pxl_map.gains)}"
    )
    print(
        f"  replace both PXL scalars: sourceToShort={args.mgc_source_to_short:.9f} "
        f"ratio={args.mgc_ratio:.9f}; "
        f"candidate -> PXL map={log_error(pxl_scalars_candidate, pxl_map.gains)}"
    )
    clipped_rgb = pxl_scalars_input[0, :, :, :3]
    unclipped_rgb = pxl_scalars_unclipped_input[0, :, :, :3]
    print(
        "  remove HDRNet RGB upper clamp only: "
        f"inputMax={unclipped_rgb.max(axis=(0, 1)).tolist()} "
        f"clippedFraction={np.mean(clipped_rgb >= 0.999999, axis=(0, 1)).tolist()} "
        f"candidate -> PXL map={log_error(pxl_scalars_unclipped_candidate, pxl_map.gains)} "
        f"candidate -> clamped candidate="
        f"{log_error(pxl_scalars_unclipped_candidate, pxl_scalars_candidate)}"
    )
    print(
        "  recovered MGC intensity contract: "
        f"weights={mgc_contract_weights.tolist()} "
        f"weightDeltaToPxl={(mgc_contract_weights - pxl_map.weights).tolist()} "
        f"candidate -> PXL map={log_error(mgc_contract_candidate, pxl_map.gains)}"
    )
    print(
        "  fourth-channel-only A/B (existing map coordinate + ACR3): "
        f"candidate -> PXL map={log_error(mgc_fourth_channel_only_candidate, pxl_map.gains)} "
        f"candidate -> current-fourth candidate="
        f"{log_error(mgc_fourth_channel_only_candidate, pxl_scalars_candidate)}"
    )
    print(
        "  recovered MGC intensity + edge-aligned grid: "
        f"candidate -> PXL map={log_error(mgc_contract_aligned_candidate, pxl_map.gains)}"
    )

    profile_rgb = np.clip(stored_rgb @ fit_matrix.T, 0.0, 1.0)
    pxl_luma = apply_adobe_tone_curve(
        render_map_rgb(pxl_map, profile_rgb, baseline_exposure_ev=pxl_baseline_exposure_ev),
        pxl_curve_x,
        pxl_curve_y,
    ) @ HDRNET_LUMA
    photon_luma = apply_adobe_tone_curve(
        render_map_rgb(
            photon_map,
            profile_rgb,
            baseline_exposure_ev=photon_baseline_exposure_ev,
        ),
        acr_curve_x,
        acr_curve,
    ) @ HDRNET_LUMA
    current_candidate_luma = apply_adobe_tone_curve(
        render_map_rgb(
            with_gains(photon_map, current_candidate),
            profile_rgb,
            baseline_exposure_ev=0.0,
        ),
        acr_curve_x,
        acr_curve,
    ) @ HDRNET_LUMA
    mgc_candidate_luma = apply_adobe_tone_curve(
        render_map_rgb(
            with_gains(photon_map, mgc_candidate),
            profile_rgb,
            baseline_exposure_ev=0.0,
        ),
        acr_curve_x,
        acr_curve,
    ) @ HDRNET_LUMA
    pxl_scalars_candidate_luma = apply_adobe_tone_curve(
        render_map_rgb(
            with_gains(photon_map, pxl_scalars_candidate),
            profile_rgb,
            baseline_exposure_ev=0.0,
        ),
        acr_curve_x,
        acr_curve,
    ) @ HDRNET_LUMA
    mgc_fourth_channel_only_luma = apply_adobe_tone_curve(
        render_map_rgb(
            with_gains(photon_map, mgc_fourth_channel_only_candidate),
            profile_rgb,
            baseline_exposure_ev=photon_baseline_exposure_ev,
        ),
        acr_curve_x,
        acr_curve,
    ) @ HDRNET_LUMA
    mgc_contract_map = GainMap(
        points_v=pxl_map.points_v,
        points_h=pxl_map.points_h,
        spacing_v=pxl_map.spacing_v,
        spacing_h=pxl_map.spacing_h,
        origin_v=pxl_map.origin_v,
        origin_h=pxl_map.origin_h,
        points_n=pxl_map.points_n,
        weights=mgc_contract_weights,
        gamma=1.0,
        gains=mgc_contract_candidate,
    )
    mgc_contract_luma = apply_adobe_tone_curve(
        render_map_rgb(
            mgc_contract_map,
            profile_rgb,
            baseline_exposure_ev=pxl_baseline_exposure_ev,
        ),
        pxl_curve_x,
        pxl_curve_y,
    ) @ HDRNET_LUMA
    no_final_short_gain_photon_ratio_luma = apply_adobe_tone_curve(
        render_map_rgb(
            with_gains(photon_map, no_final_short_gain_photon_ratio),
            profile_rgb,
            baseline_exposure_ev=photon_baseline_exposure_ev,
        ),
        acr_curve_x,
        acr_curve,
    ) @ HDRNET_LUMA
    no_final_short_gain_pxl_ratio_luma = apply_adobe_tone_curve(
        render_map_rgb(
            with_gains(photon_map, no_final_short_gain_pxl_ratio),
            profile_rgb,
            baseline_exposure_ev=photon_baseline_exposure_ev,
        ),
        acr_curve_x,
        acr_curve,
    ) @ HDRNET_LUMA
    print("  tone-curve-corrected rendered luma delta EV (mean, median, rmse):")
    print("    stored Photon -> PXL:", rendered_delta_ev(photon_luma, pxl_luma))
    print("    replayed Photon -> PXL:", rendered_delta_ev(current_candidate_luma, pxl_luma))
    print("    PXL-ratio A/B -> PXL:", rendered_delta_ev(mgc_candidate_luma, pxl_luma))
    print("    PXL-ratio A/B -> stored Photon:", rendered_delta_ev(mgc_candidate_luma, photon_luma))
    print(
        "    PXL ratio+finalShortGain -> PXL:",
        rendered_delta_ev(pxl_scalars_candidate_luma, pxl_luma),
    )
    print(
        "    PXL ratio+finalShortGain -> stored Photon:",
        rendered_delta_ev(pxl_scalars_candidate_luma, photon_luma),
    )
    print(
        "    fourth-channel-only -> current fourth channel:",
        rendered_delta_ev(mgc_fourth_channel_only_luma, pxl_scalars_candidate_luma),
    )
    print(
        "    fourth-channel-only -> PXL:",
        rendered_delta_ev(mgc_fourth_channel_only_luma, pxl_luma),
    )
    print(
        "    recovered MGC intensity contract -> PXL:",
        rendered_delta_ev(mgc_contract_luma, pxl_luma),
    )
    print(
        "    no finalShortGain, Photon ratio -> PXL:",
        rendered_delta_ev(no_final_short_gain_photon_ratio_luma, pxl_luma),
    )
    print(
        "    no finalShortGain, PXL ratio -> PXL:",
        rendered_delta_ev(no_final_short_gain_pxl_ratio_luma, pxl_luma),
    )

    middle_gray_rgb = np.full_like(profile_rgb, 0.18, dtype=np.float32)

    def render_middle_gray(
        gain_map: GainMap,
        baseline_exposure_ev: float,
        curve_x: np.ndarray,
        curve_y: np.ndarray,
    ) -> np.ndarray:
        return apply_adobe_tone_curve(
            render_map_rgb(gain_map, middle_gray_rgb, baseline_exposure_ev),
            curve_x,
            curve_y,
        ) @ HDRNET_LUMA

    middle_gray_outputs = {
        "PXL": render_middle_gray(
            pxl_map,
            pxl_baseline_exposure_ev,
            pxl_curve_x,
            pxl_curve_y,
        ),
        "stored Photon": render_middle_gray(
            photon_map,
            photon_baseline_exposure_ev,
            acr_curve_x,
            acr_curve,
        ),
        "replayed Photon": render_middle_gray(
            with_gains(photon_map, current_candidate),
            photon_baseline_exposure_ev,
            acr_curve_x,
            acr_curve,
        ),
        "PXL ratio": render_middle_gray(
            with_gains(photon_map, mgc_candidate),
            photon_baseline_exposure_ev,
            acr_curve_x,
            acr_curve,
        ),
        "PXL ratio+finalShortGain": render_middle_gray(
            with_gains(photon_map, pxl_scalars_candidate),
            photon_baseline_exposure_ev,
            acr_curve_x,
            acr_curve,
        ),
        "fourth-channel-only": render_middle_gray(
            with_gains(photon_map, mgc_fourth_channel_only_candidate),
            photon_baseline_exposure_ev,
            acr_curve_x,
            acr_curve,
        ),
        "recovered MGC intensity": render_middle_gray(
            mgc_contract_map,
            pxl_baseline_exposure_ev,
            pxl_curve_x,
            pxl_curve_y,
        ),
        "no finalShortGain, Photon ratio": render_middle_gray(
            with_gains(photon_map, no_final_short_gain_photon_ratio),
            photon_baseline_exposure_ev,
            acr_curve_x,
            acr_curve,
        ),
        "no finalShortGain, PXL ratio": render_middle_gray(
            with_gains(photon_map, no_final_short_gain_pxl_ratio),
            photon_baseline_exposure_ev,
            acr_curve_x,
            acr_curve,
        ),
    }
    pxl_middle_gray = middle_gray_outputs["PXL"]
    pxl_middle_gray_median = float(np.median(pxl_middle_gray))
    print("\n18% neutral middle-gray final luma:")
    for label, output in middle_gray_outputs.items():
        median = float(np.median(output))
        center = float(output[output.shape[0] // 2, output.shape[1] // 2])
        delta_ev = float(np.log2(max(median, 1.0e-8) / max(pxl_middle_gray_median, 1.0e-8)))
        print(
            f"  {label:30s} median={median:.9f} center={center:.9f} "
            f"medianDeltaToPxl={delta_ev:+.6f} EV"
        )


if __name__ == "__main__":
    main()
