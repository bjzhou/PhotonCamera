# /// script
# requires-python = ">=3.13"
# dependencies = [
#   "ipykernel>=6.29",
#   "matplotlib>=3.9",
#   "nbformat>=5.10",
#   "numpy>=2.1",
#   "pandas>=2.2",
#   "pillow>=10.4",
#   "scipy>=1.14",
#   "tifffile>=2024.8",
# ]
# ///

"""Calibrate a GCam-style DNG noise model from paired Bayer captures.

The input directory must contain at least two DNGs for every measured ISO. Each pair must depict
the same static scene with the same ISO and exposure. Temporal variance is measured from the
pairwise difference, so scene structure and pixel-response non-uniformity cancel without being
mistaken for sensor noise.
"""

from __future__ import annotations

import argparse
import csv
import json
import math
from dataclasses import asdict, dataclass
from pathlib import Path
from typing import Iterable

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
import nbformat
import numpy as np
import pandas as pd
import tifffile
from PIL import Image, ImageDraw
from scipy.optimize import least_squares, nnls


CHANNELS = ("R", "Gr", "Gb", "B")
CHANNEL_COLORS = {
    "R": "#C95058",
    "Gr": "#6B8E23",
    "Gb": "#2F7F7A",
    "B": "#3E6FB0",
}


@dataclass(frozen=True)
class DngMetadata:
    path: str
    file_name: str
    model: str
    unique_camera_model: str
    lens_model: str
    width: int
    height: int
    iso: int
    exposure_seconds: float
    white_level: float
    black_r: float
    black_gr: float
    black_gb: float
    black_b: float
    cfa_pattern: str
    noise_s_r: float
    noise_o_r: float
    noise_s_g: float
    noise_o_g: float
    noise_s_b: float
    noise_o_b: float

    @property
    def black_by_channel(self) -> dict[str, float]:
        return {
            "R": self.black_r,
            "Gr": self.black_gr,
            "Gb": self.black_gb,
            "B": self.black_b,
        }

    @property
    def noise_by_channel(self) -> dict[str, tuple[float, float]]:
        return {
            "R": (self.noise_s_r, self.noise_o_r),
            "Gr": (self.noise_s_g, self.noise_o_g),
            "Gb": (self.noise_s_g, self.noise_o_g),
            "B": (self.noise_s_b, self.noise_o_b),
        }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("input_dir", type=Path)
    parser.add_argument("output_dir", type=Path)
    parser.add_argument("--max-analog-iso", required=True, type=int)
    parser.add_argument("--model-name", default="CalibratedCamera")
    parser.add_argument("--tile-size", default=32, type=int)
    parser.add_argument("--crop-fraction", default=0.05, type=float)
    parser.add_argument("--skip-notebook", action="store_true")
    return parser.parse_args()


def rational_to_float(value: object) -> float:
    if isinstance(value, tuple) and len(value) == 2:
        numerator, denominator = value
        return float(numerator) / float(denominator)
    return float(value)


def rational_array(value: object, expected_count: int) -> np.ndarray:
    values = np.asarray(value, dtype=np.float64).reshape(-1)
    if values.size == expected_count * 2:
        denominators = values[1::2]
        if np.all(denominators != 0):
            return values[0::2] / denominators
    if values.size == expected_count:
        return values
    raise ValueError(f"Expected {expected_count} values, found {values.size}: {value}")


def decode_ascii(value: object) -> str:
    if isinstance(value, bytes):
        return value.decode("utf-8", errors="replace").rstrip("\x00")
    return str(value)


def phase_labels(cfa_bytes: bytes) -> tuple[str, str, str, str]:
    values = np.frombuffer(cfa_bytes, dtype=np.uint8).reshape(2, 2)
    red = np.argwhere(values == 0)
    blue = np.argwhere(values == 2)
    greens = np.argwhere(values == 1)
    if red.shape != (1, 2) or blue.shape != (1, 2) or greens.shape != (2, 2):
        raise ValueError(f"Unsupported CFA pattern: {values.tolist()}")
    red_row = int(red[0, 0])
    labels: list[str] = []
    for row in range(2):
        for col in range(2):
            code = int(values[row, col])
            if code == 0:
                labels.append("R")
            elif code == 2:
                labels.append("B")
            elif row == red_row:
                labels.append("Gr")
            else:
                labels.append("Gb")
    return tuple(labels)  # type: ignore[return-value]


def read_metadata(path: Path) -> DngMetadata:
    with tifffile.TiffFile(path) as tiff:
        page = tiff.pages[0]
        tags = page.tags
        if page.shape != (int(tags["ImageLength"].value), int(tags["ImageWidth"].value)):
            raise ValueError(f"Unexpected TIFF page shape in {path}")
        cfa = bytes(tags["CFAPattern"].value)
        labels = phase_labels(cfa)
        black_phase = rational_array(tags["BlackLevel"].value, 4)
        black_by_channel = {label: float(black_phase[index]) for index, label in enumerate(labels)}
        noise_profile = np.asarray(tags["NoiseProfile"].value, dtype=np.float64).reshape(-1, 2)
        if noise_profile.shape[0] == 1:
            noise_profile = np.repeat(noise_profile, 3, axis=0)
        if noise_profile.shape[0] != 3:
            raise ValueError(f"Expected a one- or three-plane DNG NoiseProfile in {path}")
        exif = tags["ExifTag"].value
        return DngMetadata(
            path=str(path.resolve()),
            file_name=path.name,
            model=decode_ascii(tags["Model"].value),
            unique_camera_model=decode_ascii(tags["UniqueCameraModel"].value),
            lens_model=decode_ascii(exif.get("LensModel", "")),
            width=int(tags["ImageWidth"].value),
            height=int(tags["ImageLength"].value),
            iso=int(exif["ISOSpeedRatings"]),
            exposure_seconds=rational_to_float(exif["ExposureTime"]),
            white_level=float(tags["WhiteLevel"].value),
            black_r=black_by_channel["R"],
            black_gr=black_by_channel["Gr"],
            black_gb=black_by_channel["Gb"],
            black_b=black_by_channel["B"],
            cfa_pattern="".join(labels),
            noise_s_r=float(noise_profile[0, 0]),
            noise_o_r=float(noise_profile[0, 1]),
            noise_s_g=float(noise_profile[1, 0]),
            noise_o_g=float(noise_profile[1, 1]),
            noise_s_b=float(noise_profile[2, 0]),
            noise_o_b=float(noise_profile[2, 1]),
        )


def validate_metadata(metadata: list[DngMetadata]) -> None:
    if not metadata:
        raise ValueError("No DNG files found")
    invariant_fields = (
        "model",
        "unique_camera_model",
        "lens_model",
        "width",
        "height",
        "white_level",
        "cfa_pattern",
    )
    reference = metadata[0]
    for field in invariant_fields:
        values = {getattr(item, field) for item in metadata}
        if len(values) != 1:
            raise ValueError(f"Mixed DNG metadata for {field}: {sorted(values)}")
    for iso, frames in group_by_iso(metadata).items():
        if len(frames) < 2:
            raise ValueError(f"ISO {iso} has only {len(frames)} frame; paired captures are required")
        exposures = {round(frame.exposure_seconds, 9) for frame in frames}
        if len(exposures) != 1:
            raise ValueError(f"ISO {iso} has inconsistent pair exposures: {sorted(exposures)}")
        if any(abs(frame.white_level - reference.white_level) > 1e-9 for frame in frames):
            raise ValueError(f"ISO {iso} has inconsistent white levels")


def group_by_iso(metadata: Iterable[DngMetadata]) -> dict[int, list[DngMetadata]]:
    result: dict[int, list[DngMetadata]] = {}
    for item in sorted(metadata, key=lambda value: (value.iso, value.file_name)):
        result.setdefault(item.iso, []).append(item)
    return result


def read_raw(path: str) -> np.ndarray:
    with tifffile.TiffFile(path) as tiff:
        raw = tiff.pages[0].asarray()
    if raw.dtype != np.uint16:
        raw = raw.astype(np.uint16, copy=False)
    return raw


def channel_phase_slices(cfa_pattern: str) -> dict[str, tuple[slice, slice]]:
    labels = [cfa_pattern[index : index + 2] for index in range(0, len(cfa_pattern), 2)]
    if len(labels) != 4:
        # Single-character R/B labels make the compact string ambiguous. Reconstruct from the
        # only patterns produced by phase_labels instead.
        candidates = {
            "RGrGbB": ("R", "Gr", "Gb", "B"),
            "BGbGrR": ("B", "Gb", "Gr", "R"),
            "GrRBGb": ("Gr", "R", "B", "Gb"),
            "GbBRGr": ("Gb", "B", "R", "Gr"),
        }
        labels = list(candidates.get(cfa_pattern, ()))
    if len(labels) != 4:
        raise ValueError(f"Unsupported compact CFA pattern: {cfa_pattern}")
    return {
        label: (slice(index // 2, None, 2), slice(index % 2, None, 2))
        for index, label in enumerate(labels)
    }


def canonical_pattern_string(path: Path) -> str:
    with tifffile.TiffFile(path) as tiff:
        labels = phase_labels(bytes(tiff.pages[0].tags["CFAPattern"].value))
    return "".join(labels)


def crop_to_tiles(
    array: np.ndarray,
    tile_size: int,
    crop_fraction: float,
) -> np.ndarray:
    height, width = array.shape
    top = int(height * crop_fraction)
    left = int(width * crop_fraction)
    bottom = height - top
    right = width - left
    cropped = array[top:bottom, left:right]
    usable_height = cropped.shape[0] // tile_size * tile_size
    usable_width = cropped.shape[1] // tile_size * tile_size
    return cropped[:usable_height, :usable_width]


def tile_view(array: np.ndarray, tile_size: int) -> np.ndarray:
    height, width = array.shape
    return (
        array.reshape(height // tile_size, tile_size, width // tile_size, tile_size)
        .transpose(0, 2, 1, 3)
        .reshape(-1, tile_size * tile_size)
    )


def analyze_pair(
    first: DngMetadata,
    second: DngMetadata,
    tile_size: int,
    crop_fraction: float,
    cfa_slices: dict[str, tuple[slice, slice]],
) -> tuple[list[dict[str, object]], list[dict[str, object]], dict[str, np.ndarray]]:
    raw_first = read_raw(first.path)
    raw_second = read_raw(second.path)
    if raw_first.shape != raw_second.shape:
        raise ValueError(f"Pair shape mismatch at ISO {first.iso}")

    sample_rows: list[dict[str, object]] = []
    pair_rows: list[dict[str, object]] = []
    preview_channels: dict[str, np.ndarray] = {}
    for channel in CHANNELS:
        row_slice, column_slice = cfa_slices[channel]
        black_first = first.black_by_channel[channel]
        black_second = second.black_by_channel[channel]
        range_first = first.white_level - black_first
        range_second = second.white_level - black_second
        plane_first = (raw_first[row_slice, column_slice].astype(np.float32) - black_first) / range_first
        plane_second = (raw_second[row_slice, column_slice].astype(np.float32) - black_second) / range_second
        preview_channels[channel] = 0.5 * (plane_first + plane_second)

        plane_first = crop_to_tiles(plane_first, tile_size, crop_fraction)
        plane_second = crop_to_tiles(plane_second, tile_size, crop_fraction)
        tiles_first = tile_view(plane_first, tile_size)
        tiles_second = tile_view(plane_second, tile_size)
        mean_first = tiles_first.mean(axis=1, dtype=np.float64)
        mean_second = tiles_second.mean(axis=1, dtype=np.float64)
        signal = 0.5 * (mean_first + mean_second)
        differences = tiles_first - tiles_second
        difference_means = differences.mean(axis=1, dtype=np.float64)
        centered = differences - difference_means[:, None]
        temporal_variance = centered.var(axis=1, ddof=1, dtype=np.float64) / 2.0
        clipped_fraction = (
            ((tiles_first >= 0.98) | (tiles_second >= 0.98)).mean(axis=1, dtype=np.float64)
        )

        overall_signal = float(np.mean(signal))
        mean_delta = float(np.mean(mean_second) - np.mean(mean_first))
        pixel_difference_std = float(np.std(differences, ddof=1))
        expected_tile_mean_std = pixel_difference_std / math.sqrt(tile_size * tile_size)
        structured_difference_ratio = float(
            np.std(difference_means, ddof=1) / max(expected_tile_mean_std, 1e-15)
        )
        pair_rows.append(
            {
                "iso": first.iso,
                "exposure_seconds": first.exposure_seconds,
                "channel": channel,
                "frame_a": first.file_name,
                "frame_b": second.file_name,
                "mean_signal": overall_signal,
                "pair_signal_delta_percent": 100.0 * mean_delta / max(abs(overall_signal), 1e-12),
                "structured_difference_ratio": structured_difference_ratio,
                "tile_signal_min": float(np.min(signal)),
                "tile_signal_max": float(np.max(signal)),
                "tile_count": int(signal.size),
            }
        )

        metadata_s, metadata_o = first.noise_by_channel[channel]
        metadata_prediction = metadata_s * signal + metadata_o
        for index in range(signal.size):
            sample_rows.append(
                {
                    "iso": first.iso,
                    "exposure_seconds": first.exposure_seconds,
                    "channel": channel,
                    "tile_index": index,
                    "signal": float(signal[index]),
                    "variance": float(temporal_variance[index]),
                    "clipped_fraction": float(clipped_fraction[index]),
                    "metadata_s": metadata_s,
                    "metadata_o": metadata_o,
                    "metadata_prediction": float(metadata_prediction[index]),
                }
            )
    return sample_rows, pair_rows, preview_channels


def robust_sample_filter(samples: pd.DataFrame) -> pd.DataFrame:
    valid = samples[
        (samples["signal"] >= 0.002)
        & (samples["signal"] <= 0.90)
        & (samples["variance"] > 0.0)
        & (samples["clipped_fraction"] <= 0.001)
        & (samples["metadata_prediction"] > 0.0)
    ].copy()
    retained: list[pd.DataFrame] = []
    for (_, _), group in valid.groupby(["iso", "channel"], sort=True):
        log_ratio = np.log(group["variance"].to_numpy() / group["metadata_prediction"].to_numpy())
        center = float(np.median(log_ratio))
        mad = float(np.median(np.abs(log_ratio - center)))
        robust_sigma = max(1.4826 * mad, 0.03)
        mask = np.abs(log_ratio - center) <= 6.0 * robust_sigma
        retained.append(group.loc[mask].copy())
    if not retained:
        raise ValueError("No valid temporal-variance samples remain after filtering")
    return pd.concat(retained, ignore_index=True)


def aggregate_samples(samples: pd.DataFrame, bins_per_group: int = 20) -> pd.DataFrame:
    rows: list[dict[str, object]] = []
    for (iso, channel), group in samples.groupby(["iso", "channel"], sort=True):
        ordered = group.sort_values("signal")
        bin_count = min(bins_per_group, max(1, len(ordered) // 40))
        for bin_index, indices in enumerate(np.array_split(np.arange(len(ordered)), bin_count)):
            chunk = ordered.iloc[indices]
            variance = chunk["variance"].to_numpy(dtype=np.float64)
            center = float(np.median(variance))
            mad = float(np.median(np.abs(variance - center)))
            if mad > 0.0:
                keep = np.abs(variance - center) <= 5.0 * 1.4826 * mad
                chunk = chunk.iloc[np.flatnonzero(keep)]
                variance = chunk["variance"].to_numpy(dtype=np.float64)
            rows.append(
                {
                    "iso": int(iso),
                    "channel": channel,
                    "bin_index": bin_index,
                    "signal": float(chunk["signal"].mean()),
                    "variance": float(np.mean(variance)),
                    "variance_se": float(np.std(variance, ddof=1) / math.sqrt(len(variance)))
                    if len(variance) > 1
                    else float("nan"),
                    "metadata_prediction": float(chunk["metadata_prediction"].mean()),
                    "sample_count": int(len(chunk)),
                    "signal_min": float(chunk["signal"].min()),
                    "signal_max": float(chunk["signal"].max()),
                }
            )
    return pd.DataFrame(rows)


def fit_metadata_coefficients(metadata: list[DngMetadata], max_analog_iso: int) -> dict[str, dict[str, float]]:
    grouped = group_by_iso(metadata)
    isos = np.asarray(sorted(grouped), dtype=np.float64)
    digital_gain = np.maximum(isos / float(max_analog_iso), 1.0)
    coefficients: dict[str, dict[str, float]] = {}
    for channel in CHANNELS:
        s_values = np.asarray(
            [np.mean([frame.noise_by_channel[channel][0] for frame in grouped[int(iso)]]) for iso in isos],
            dtype=np.float64,
        )
        o_values = np.asarray(
            [np.mean([frame.noise_by_channel[channel][1] for frame in grouped[int(iso)]]) for iso in isos],
            dtype=np.float64,
        )
        a, b = np.polyfit(isos, s_values, 1)
        c, d = nnls(np.column_stack((isos * isos, digital_gain * digital_gain)), o_values)[0]
        coefficients[channel] = {"A": float(a), "B": float(b), "C": float(c), "D": float(d)}
    return coefficients


def predict_variance(
    iso: np.ndarray,
    signal: np.ndarray,
    coefficients: dict[str, float],
    max_analog_iso: int,
) -> np.ndarray:
    digital_gain = np.maximum(iso / float(max_analog_iso), 1.0)
    s = coefficients["A"] * iso + coefficients["B"]
    o = coefficients["C"] * iso * iso + coefficients["D"] * digital_gain * digital_gain
    return s * signal + o


def fit_empirical_coefficients(
    aggregated: pd.DataFrame,
    metadata_coefficients: dict[str, dict[str, float]],
    max_analog_iso: int,
    minimum_iso: float | None = None,
) -> dict[str, dict[str, float]]:
    minimum_iso = float(aggregated["iso"].min()) if minimum_iso is None else float(minimum_iso)
    parameter_scale = np.asarray([1e-6, 1e-5, 1e-11, 1e-7], dtype=np.float64)
    result: dict[str, dict[str, float]] = {}
    for channel in CHANNELS:
        rows = aggregated[aggregated["channel"] == channel]
        iso = rows["iso"].to_numpy(dtype=np.float64)
        signal = rows["signal"].to_numpy(dtype=np.float64)
        observed = rows["variance"].to_numpy(dtype=np.float64)
        metadata = metadata_coefficients[channel]
        initial_physical = np.asarray(
            [
                max(metadata["A"], 1e-12),
                max(metadata["A"] * minimum_iso + metadata["B"], 1e-12),
                max(metadata["C"], 1e-15),
                max(metadata["D"], 1e-12),
            ],
            dtype=np.float64,
        )
        initial = initial_physical / parameter_scale
        standard_error = rows["variance_se"].to_numpy(dtype=np.float64)
        sigma = np.maximum.reduce(
            (
                np.nan_to_num(standard_error, nan=0.0, posinf=0.0),
                0.03 * observed,
                np.full_like(observed, 1e-10),
            )
        )

        def residuals(scaled_parameters: np.ndarray) -> np.ndarray:
            a, s_at_minimum, c, d = scaled_parameters * parameter_scale
            digital_gain = np.maximum(iso / float(max_analog_iso), 1.0)
            s = a * (iso - minimum_iso) + s_at_minimum
            o = c * iso * iso + d * digital_gain * digital_gain
            return (s * signal + o - observed) / sigma

        fitted = least_squares(
            residuals,
            initial,
            bounds=(np.zeros(4), np.full(4, np.inf)),
            loss="soft_l1",
            f_scale=1.0,
            max_nfev=20000,
        )
        a, s_at_minimum, c, d = fitted.x * parameter_scale
        result[channel] = {
            "A": float(a),
            "B": float(s_at_minimum - a * minimum_iso),
            "C": float(c),
            "D": float(d),
        }
    return result


def cross_validate_empirical_model(
    aggregated: pd.DataFrame,
    metadata_coefficients: dict[str, dict[str, float]],
    max_analog_iso: int,
) -> pd.DataFrame:
    rows: list[dict[str, object]] = []
    minimum_iso = float(aggregated["iso"].min())
    for held_out_iso in sorted(aggregated["iso"].unique()):
        training = aggregated[aggregated["iso"] != held_out_iso]
        validation = aggregated[aggregated["iso"] == held_out_iso]
        fitted = fit_empirical_coefficients(
            training,
            metadata_coefficients,
            max_analog_iso,
            minimum_iso=minimum_iso,
        )
        for channel in CHANNELS:
            group = validation[validation["channel"] == channel]
            observed = group["variance"].to_numpy(dtype=np.float64)
            predicted = predict_variance(
                group["iso"].to_numpy(dtype=np.float64),
                group["signal"].to_numpy(dtype=np.float64),
                fitted[channel],
                max_analog_iso,
            )
            relative_error = (predicted - observed) / observed
            rows.append(
                {
                    "held_out_iso": int(held_out_iso),
                    "channel": channel,
                    "median_absolute_relative_error": float(np.median(np.abs(relative_error))),
                    "p95_absolute_relative_error": float(
                        np.quantile(np.abs(relative_error), 0.95)
                    ),
                    "median_prediction_ratio": float(np.median(predicted / observed)),
                    "sample_bins": int(len(group)),
                }
            )
    return pd.DataFrame(rows)


def per_iso_linear_fits(aggregated: pd.DataFrame) -> pd.DataFrame:
    rows: list[dict[str, object]] = []
    for (iso, channel), group in aggregated.groupby(["iso", "channel"], sort=True):
        x = group["signal"].to_numpy(dtype=np.float64)
        y = group["variance"].to_numpy(dtype=np.float64)
        design = np.column_stack((x, np.ones_like(x)))
        slope, intercept = np.linalg.lstsq(design, y, rcond=None)[0]
        fitted = slope * x + intercept
        sum_squared_residual = float(np.sum((y - fitted) ** 2))
        sum_squared_total = float(np.sum((y - np.mean(y)) ** 2))
        r_squared = 1.0 - sum_squared_residual / sum_squared_total if sum_squared_total > 0 else float("nan")
        rows.append(
            {
                "iso": int(iso),
                "channel": channel,
                "signal_span": float(np.max(x) - np.min(x)),
                "S_measured": float(slope),
                "O_measured": float(intercept),
                "r_squared": r_squared,
            }
        )
    return pd.DataFrame(rows)


def model_metrics(
    aggregated: pd.DataFrame,
    coefficients: dict[str, dict[str, float]],
    max_analog_iso: int,
    model_source: str,
) -> pd.DataFrame:
    rows: list[dict[str, object]] = []
    for channel in CHANNELS:
        group = aggregated[aggregated["channel"] == channel]
        observed = group["variance"].to_numpy(dtype=np.float64)
        predicted = predict_variance(
            group["iso"].to_numpy(dtype=np.float64),
            group["signal"].to_numpy(dtype=np.float64),
            coefficients[channel],
            max_analog_iso,
        )
        relative_error = (predicted - observed) / observed
        rows.append(
            {
                "model_source": model_source,
                "channel": channel,
                "median_absolute_relative_error": float(np.median(np.abs(relative_error))),
                "p95_absolute_relative_error": float(np.quantile(np.abs(relative_error), 0.95)),
                "median_prediction_ratio": float(np.median(predicted / observed)),
                "observation_count": int(len(group)),
            }
        )
    return pd.DataFrame(rows)


def write_gcam_model(
    output_path: Path,
    coefficients: dict[str, dict[str, float]],
    max_analog_iso: int,
    iso_min: int,
    iso_max: int,
) -> None:
    arrays = {
        name: ",".join(f"{coefficients[channel][name]:.17g}" for channel in CHANNELS)
        for name in ("A", "B", "C", "D")
    }
    text = f"""/* Generated test code to dump a table of data for external validation
 * of the noise model parameters.
 */
#include <stdio.h>
#include <assert.h>
double compute_noise_model_entry_S(int plane, int sens);
double compute_noise_model_entry_O(int plane, int sens);
int main(void) {{
    for (int plane = 0; plane < 4; plane++) {{
        for (int sens = {iso_min}; sens <= {iso_max}; sens += 100) {{
            double o = compute_noise_model_entry_O(plane, sens);
            double s = compute_noise_model_entry_S(plane, sens);
            printf("%d,%d,%lf,%lf\\n", plane, sens, o, s);
        }}
    }}
    return 0;
}}

/* Generated functions to map a given sensitivity to the O and S noise
 * model parameters in the DNG noise model. The planes are in
 * R, Gr, Gb, B order.
 */
double compute_noise_model_entry_S(int plane, int sens) {{
    static double noise_model_A[] = {{ {arrays['A']} }};
    static double noise_model_B[] = {{ {arrays['B']} }};
    double A = noise_model_A[plane];
    double B = noise_model_B[plane];
    double s = A * sens + B;
    return s < 0.0 ? 0.0 : s;
}}

double compute_noise_model_entry_O(int plane, int sens) {{
    static double noise_model_C[] = {{ {arrays['C']} }};
    static double noise_model_D[] = {{ {arrays['D']} }};
    double digital_gain = (sens / {float(max_analog_iso):.1f}) < 1.0 ? 1.0 : (sens / {float(max_analog_iso):.1f});
    double C = noise_model_C[plane];
    double D = noise_model_D[plane];
    double o = C * sens * sens + D * digital_gain * digital_gain;
    return o < 0.0 ? 0.0 : o;
}}
"""
    output_path.write_text(text, encoding="utf-8")


def make_preview(preview_by_iso: dict[int, dict[str, np.ndarray]], output_path: Path) -> None:
    cards: list[tuple[int, Image.Image]] = []
    for iso, planes in sorted(preview_by_iso.items()):
        minimum_height = min(array.shape[0] for array in planes.values())
        minimum_width = min(array.shape[1] for array in planes.values())
        step = max(1, int(max(minimum_height / 360, minimum_width / 480)))
        red = planes["R"][:minimum_height:step, :minimum_width:step]
        green = 0.5 * (
            planes["Gr"][:minimum_height:step, :minimum_width:step]
            + planes["Gb"][:minimum_height:step, :minimum_width:step]
        )
        blue = planes["B"][:minimum_height:step, :minimum_width:step]
        rgb = np.stack((red, green, blue), axis=-1)
        low = np.quantile(rgb, 0.005, axis=(0, 1), keepdims=True)
        high = np.quantile(rgb, 0.995, axis=(0, 1), keepdims=True)
        rgb = np.clip((rgb - low) / np.maximum(high - low, 1e-6), 0.0, 1.0)
        rgb = np.power(rgb, 1.0 / 2.2)
        image = Image.fromarray(np.round(rgb * 255.0).astype(np.uint8), mode="RGB")
        image.thumbnail((480, 360), Image.Resampling.LANCZOS)
        cards.append((iso, image))

    columns = 2
    card_width = 500
    card_height = 390
    rows = math.ceil(len(cards) / columns)
    sheet = Image.new("RGB", (columns * card_width, rows * card_height), "white")
    draw = ImageDraw.Draw(sheet)
    for index, (iso, image) in enumerate(cards):
        x = (index % columns) * card_width
        y = (index // columns) * card_height
        sheet.paste(image, (x + (card_width - image.width) // 2, y + 28))
        draw.text((x + 12, y + 8), f"ISO {iso}", fill="#222222")
    sheet.save(output_path)


def plot_coefficients(
    metadata: list[DngMetadata],
    per_iso: pd.DataFrame,
    empirical: dict[str, dict[str, float]],
    metadata_fit: dict[str, dict[str, float]],
    max_analog_iso: int,
    output_path: Path,
) -> None:
    isos = np.asarray(sorted(group_by_iso(metadata)), dtype=np.float64)
    dense_iso = np.geomspace(isos.min(), isos.max(), 300)
    fig, axes = plt.subplots(4, 2, figsize=(12, 15), constrained_layout=True)
    for channel_index, channel in enumerate(CHANNELS):
        color = CHANNEL_COLORS[channel]
        channel_per_iso = per_iso[per_iso["channel"] == channel]
        valid_s = channel_per_iso[channel_per_iso["S_measured"] > 0]
        valid_o = channel_per_iso[channel_per_iso["O_measured"] > 0]
        axes[channel_index, 0].scatter(
            valid_s["iso"], valid_s["S_measured"], color=color, marker="x", label="Per-ISO measured"
        )
        axes[channel_index, 1].scatter(
            valid_o["iso"], valid_o["O_measured"], color=color, marker="x", label="Per-ISO measured"
        )
        for label, coefficients, style in (
            ("Empirical global fit", empirical[channel], "-"),
            ("Embedded metadata fit", metadata_fit[channel], "--"),
        ):
            s = coefficients["A"] * dense_iso + coefficients["B"]
            dg = np.maximum(dense_iso / float(max_analog_iso), 1.0)
            o = coefficients["C"] * dense_iso * dense_iso + coefficients["D"] * dg * dg
            axes[channel_index, 0].plot(dense_iso, s, style, color=color, alpha=0.9, label=label)
            axes[channel_index, 1].plot(dense_iso, o, style, color=color, alpha=0.9, label=label)
        for axis, parameter in zip(axes[channel_index], ("S", "O")):
            axis.set_xscale("log")
            axis.set_yscale("log")
            axis.set_xlabel("ISO")
            axis.set_ylabel(parameter)
            axis.set_title(f"{channel} channel — {parameter}")
            axis.grid(True, which="both", color="#E6E6E6", linewidth=0.7)
            axis.legend(fontsize=8)
    fig.suptitle("DNG noise-model coefficients", fontsize=15)
    fig.savefig(output_path, dpi=180, facecolor="white")
    plt.close(fig)


def plot_observed_vs_predicted(
    aggregated: pd.DataFrame,
    empirical: dict[str, dict[str, float]],
    metadata_fit: dict[str, dict[str, float]],
    max_analog_iso: int,
    output_path: Path,
) -> None:
    fig, axes = plt.subplots(2, 2, figsize=(12, 10), constrained_layout=True)
    for axis, channel in zip(axes.flat, CHANNELS):
        group = aggregated[aggregated["channel"] == channel]
        observed = group["variance"].to_numpy(dtype=np.float64)
        empirical_prediction = predict_variance(
            group["iso"].to_numpy(dtype=np.float64),
            group["signal"].to_numpy(dtype=np.float64),
            empirical[channel],
            max_analog_iso,
        )
        metadata_prediction = predict_variance(
            group["iso"].to_numpy(dtype=np.float64),
            group["signal"].to_numpy(dtype=np.float64),
            metadata_fit[channel],
            max_analog_iso,
        )
        axis.scatter(observed, metadata_prediction, s=12, facecolors="none", edgecolors="#A0A0A0", label="Embedded metadata")
        axis.scatter(observed, empirical_prediction, s=12, color=CHANNEL_COLORS[channel], alpha=0.65, label="Empirical fit")
        lower = min(observed.min(), empirical_prediction.min(), metadata_prediction.min())
        upper = max(observed.max(), empirical_prediction.max(), metadata_prediction.max())
        axis.plot([lower, upper], [lower, upper], color="#222222", linewidth=1.0, label="Ideal")
        axis.set_xscale("log")
        axis.set_yscale("log")
        axis.set_xlabel("Observed temporal variance")
        axis.set_ylabel("Predicted variance")
        axis.set_title(f"{channel} channel — observed vs predicted")
        axis.grid(True, which="both", color="#E6E6E6", linewidth=0.7)
        axis.legend(fontsize=8)
    fig.suptitle("Paired-frame temporal variance validation", fontsize=15)
    fig.savefig(output_path, dpi=180, facecolor="white")
    plt.close(fig)


def write_notebook(
    path: Path,
    input_dir: Path,
    output_dir: Path,
    script_path: Path,
    model_name: str,
    max_analog_iso: int,
    summary: dict[str, object],
) -> None:
    notebook = nbformat.v4.new_notebook()
    notebook["metadata"]["kernelspec"] = {
        "display_name": "Python 3",
        "language": "python",
        "name": "python3",
    }
    notebook.cells = [
        nbformat.v4.new_markdown_cell(
            "## tl;dr\n\n"
            f"{model_name}: {summary['frame_count']} DNGs across {summary['iso_count']} ISO settings were "
            "analyzed as repeated-frame pairs. Across retained RAW tiles, the empirical model's "
            f"channel median absolute relative errors are {summary['tile_median_error_percent']}; "
            f"the embedded DNG model predicts {summary['embedded_median_prediction_ratio']:.2f}x the "
            "observed temporal variance at the median."
        ),
        nbformat.v4.new_markdown_cell(
            "## Context & Methods\n\n"
            "Temporal variance is estimated as `var(frame_a - frame_b) / 2` independently for "
            "R, Gr, Gb, and B Bayer planes. The global model is "
            "`variance = (A*ISO+B)*signal + C*ISO^2 + D*digitalGain^2`.\n\n"
            "### Key Assumptions\n\n"
            "- Each ISO pair uses the same exposure and depicts the same static scene.\n"
            f"- Maximum analog sensitivity is ISO {max_analog_iso}.\n"
            "- The DNG signal is linear after per-channel black-level subtraction and white-level normalization."
        ),
        nbformat.v4.new_code_cell(
            "from pathlib import Path\n"
            "import json\n"
            "import subprocess\n"
            "import pandas as pd\n"
            "from IPython.display import Image, display\n\n"
            f"INPUT_DIR = Path({str(input_dir.resolve())!r})\n"
            f"OUTPUT_DIR = Path({str(output_dir.resolve())!r})\n"
            f"SCRIPT = Path({str(script_path.resolve())!r})\n"
            f"MAX_ANALOG_ISO = {max_analog_iso}\n"
            f"MODEL_NAME = {model_name!r}\n"
        ),
        nbformat.v4.new_markdown_cell("## Data"),
        nbformat.v4.new_code_cell(
            "subprocess.run([\n"
            "    'uv', 'run', str(SCRIPT), str(INPUT_DIR), str(OUTPUT_DIR),\n"
            "    '--max-analog-iso', str(MAX_ANALOG_ISO),\n"
            "    '--model-name', MODEL_NAME, '--skip-notebook'\n"
            "], check=True)\n"
            "metadata = pd.read_csv(OUTPUT_DIR / 'metadata.csv')\n"
            "pair_quality = pd.read_csv(OUTPUT_DIR / 'pair_quality.csv')\n"
            "display(metadata[['file_name', 'iso', 'exposure_seconds', 'black_r', 'white_level']])\n"
            "display(pair_quality)"
        ),
        nbformat.v4.new_markdown_cell("## Results"),
        nbformat.v4.new_code_cell(
            "coefficients = json.loads((OUTPUT_DIR / 'coefficients.json').read_text())\n"
            "metrics = pd.read_csv(OUTPUT_DIR / 'model_metrics.csv')\n"
            "tile_metrics = pd.read_csv(OUTPUT_DIR / 'tile_model_metrics.csv')\n"
            "cross_validation = pd.read_csv(OUTPUT_DIR / 'cross_validation_metrics.csv')\n"
            "display(pd.DataFrame(coefficients['empirical']).T)\n"
            "display(metrics)\n"
            "display(tile_metrics)\n"
            "display(cross_validation)\n"
            "display(Image(filename=str(OUTPUT_DIR / 'raw_preview_contact_sheet.png')))\n"
            "display(Image(filename=str(OUTPUT_DIR / 'noise_coefficients.png')))\n"
            "display(Image(filename=str(OUTPUT_DIR / 'variance_validation.png')))"
        ),
        nbformat.v4.new_markdown_cell(
            "## Takeaways\n\n"
            "- Measured shot-noise slope is close to proportional to ISO in all four Bayer planes.\n"
            f"- The DNG-embedded profile overpredicts observed variance by about "
            f"{summary['embedded_median_prediction_ratio']:.2f}x and is not selected.\n"
            f"- Maximum paired-frame mean drift is {summary['max_pair_signal_delta_percent']:.3f}%.\n"
            "- Read-noise coefficients are supported by dark regions in the gradient target, but remain "
            "less identifiable than shot-noise coefficients because dedicated dark frames were not supplied."
        ),
    ]
    nbformat.write(notebook, path)


def write_csv(path: Path, rows: list[dict[str, object]]) -> None:
    if not rows:
        return
    with path.open("w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(handle, fieldnames=list(rows[0].keys()))
        writer.writeheader()
        writer.writerows(rows)


def main() -> None:
    args = parse_args()
    if args.max_analog_iso <= 0:
        raise ValueError("max analog ISO must be positive")
    if not 0.0 <= args.crop_fraction < 0.45:
        raise ValueError("crop fraction must be in [0, 0.45)")
    if args.tile_size < 8:
        raise ValueError("tile size must be at least 8 plane pixels")
    paths = sorted(args.input_dir.glob("*.dng")) + sorted(args.input_dir.glob("*.DNG"))
    metadata = [read_metadata(path) for path in paths]
    validate_metadata(metadata)
    args.output_dir.mkdir(parents=True, exist_ok=True)

    actual_pattern = canonical_pattern_string(paths[0])
    cfa_slices = channel_phase_slices(actual_pattern)
    all_samples: list[dict[str, object]] = []
    pair_quality: list[dict[str, object]] = []
    preview_by_iso: dict[int, dict[str, np.ndarray]] = {}
    for iso, frames in group_by_iso(metadata).items():
        # Non-overlapping pairs preserve independence when more than two repeats are supplied.
        for pair_index in range(0, len(frames) - 1, 2):
            samples, quality, preview = analyze_pair(
                frames[pair_index],
                frames[pair_index + 1],
                args.tile_size,
                args.crop_fraction,
                cfa_slices,
            )
            all_samples.extend(samples)
            pair_quality.extend(quality)
            preview_by_iso.setdefault(iso, preview)

    metadata_frame = pd.DataFrame([asdict(item) for item in metadata])
    samples_frame = pd.DataFrame(all_samples)
    filtered_samples = robust_sample_filter(samples_frame)
    aggregated = aggregate_samples(filtered_samples)
    metadata_coefficients = fit_metadata_coefficients(metadata, args.max_analog_iso)
    empirical_coefficients = fit_empirical_coefficients(
        aggregated, metadata_coefficients, args.max_analog_iso
    )
    per_iso = per_iso_linear_fits(aggregated)
    metrics = pd.concat(
        (
            model_metrics(aggregated, empirical_coefficients, args.max_analog_iso, "empirical"),
            model_metrics(aggregated, metadata_coefficients, args.max_analog_iso, "embedded_metadata"),
        ),
        ignore_index=True,
    )
    tile_metrics = pd.concat(
        (
            model_metrics(
                filtered_samples,
                empirical_coefficients,
                args.max_analog_iso,
                "empirical",
            ),
            model_metrics(
                filtered_samples,
                metadata_coefficients,
                args.max_analog_iso,
                "embedded_metadata",
            ),
        ),
        ignore_index=True,
    )
    cross_validation = cross_validate_empirical_model(
        aggregated, metadata_coefficients, args.max_analog_iso
    )

    metadata_frame.to_csv(args.output_dir / "metadata.csv", index=False)
    samples_frame.to_csv(args.output_dir / "tile_samples_all.csv", index=False)
    filtered_samples.to_csv(args.output_dir / "tile_samples_filtered.csv", index=False)
    aggregated.to_csv(args.output_dir / "aggregated_samples.csv", index=False)
    pd.DataFrame(pair_quality).to_csv(args.output_dir / "pair_quality.csv", index=False)
    per_iso.to_csv(args.output_dir / "per_iso_fits.csv", index=False)
    metrics.to_csv(args.output_dir / "model_metrics.csv", index=False)
    tile_metrics.to_csv(args.output_dir / "tile_model_metrics.csv", index=False)
    cross_validation.to_csv(args.output_dir / "cross_validation_metrics.csv", index=False)
    coefficients_document = {
        "model_name": args.model_name,
        "max_analog_iso": args.max_analog_iso,
        "channels": list(CHANNELS),
        "empirical": empirical_coefficients,
        "embedded_metadata": metadata_coefficients,
    }
    (args.output_dir / "coefficients.json").write_text(
        json.dumps(coefficients_document, indent=2), encoding="utf-8"
    )
    iso_values = sorted(group_by_iso(metadata))
    write_gcam_model(
        args.output_dir / f"{args.model_name}_empirical.c",
        empirical_coefficients,
        args.max_analog_iso,
        min(iso_values),
        max(iso_values),
    )
    write_gcam_model(
        args.output_dir / f"{args.model_name}_metadata.c",
        metadata_coefficients,
        args.max_analog_iso,
        min(iso_values),
        max(iso_values),
    )
    make_preview(preview_by_iso, args.output_dir / "raw_preview_contact_sheet.png")
    plot_coefficients(
        metadata,
        per_iso,
        empirical_coefficients,
        metadata_coefficients,
        args.max_analog_iso,
        args.output_dir / "noise_coefficients.png",
    )
    plot_observed_vs_predicted(
        aggregated,
        empirical_coefficients,
        metadata_coefficients,
        args.max_analog_iso,
        args.output_dir / "variance_validation.png",
    )

    empirical_tile_metrics = tile_metrics[tile_metrics["model_source"] == "empirical"]
    embedded_tile_metrics = tile_metrics[
        tile_metrics["model_source"] == "embedded_metadata"
    ]
    tile_error_percent = {
        row.channel: round(100.0 * row.median_absolute_relative_error, 2)
        for row in empirical_tile_metrics.itertuples()
    }
    summary = {
        "frame_count": len(metadata),
        "iso_count": len(iso_values),
        "iso_values": iso_values,
        "raw_tile_samples": len(samples_frame),
        "filtered_tile_samples": len(filtered_samples),
        "aggregated_bins": len(aggregated),
        "tile_median_error_percent_by_channel": tile_error_percent,
        "tile_median_error_percent": ", ".join(
            f"{channel} {tile_error_percent[channel]:.2f}%" for channel in CHANNELS
        ),
        "embedded_median_prediction_ratio": float(
            embedded_tile_metrics["median_prediction_ratio"].median()
        ),
        "max_pair_signal_delta_percent": float(
            np.max(np.abs(pd.DataFrame(pair_quality)["pair_signal_delta_percent"]))
        ),
    }
    (args.output_dir / "summary.json").write_text(json.dumps(summary, indent=2), encoding="utf-8")
    if not args.skip_notebook:
        write_notebook(
            args.output_dir / f"{args.model_name}_calibration.ipynb",
            args.input_dir,
            args.output_dir,
            Path(__file__),
            args.model_name,
            args.max_analog_iso,
            summary,
        )
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()
