"""Fit the constrained PGTM curve model from PGTFIX3 fixtures.

The production model is trained from complete fixed-domain curves, not sparse semantic anchors.
It predicts the table input scale, the black-end gain, and one shoulder-shape parameter. A
toe-preserving generalized rational curve then guarantees the black point, endpoint, and monotonic
output by construction. Spatial residuals are fitted at fine and regional scales and all model
selection is leave-one-scene-out.
"""

from __future__ import annotations

import argparse
import itertools
import math
import struct
from dataclasses import dataclass
from pathlib import Path

import numpy as np


MAGIC = b"PGTFIX3\0"
STATS_STRIDE = 8
TOE_END = 0.024
LEVEL_EPS = 0.006
TAIL_EPS = 0.040
MIN_SHAPE_POWER = 1.0


@dataclass
class Fixture:
    path: Path
    width: int
    height: int
    baseline_ev: float
    map_h: int
    map_v: int
    weights: np.ndarray
    noise_slope: float
    noise_offset: float
    table_inputs: np.ndarray
    stats: np.ndarray
    gains: np.ndarray

    @property
    def input_scale(self) -> float:
        return float(self.weights.sum())


def read_fixture(path: Path) -> Fixture:
    data = path.read_bytes()
    if data[: len(MAGIC)] != MAGIC:
        raise ValueError(f"invalid PGTFIX3 fixture {path}")
    offset = len(MAGIC)
    width, height, baseline, map_h, map_v, input_count, stat_count, gain_count = (
        struct.unpack_from("<iifiiiii", data, offset)
    )
    offset += struct.calcsize("<iifiiiii")
    weights = np.asarray(struct.unpack_from("<5f", data, offset), dtype=np.float64)
    offset += struct.calcsize("<5f")
    (gamma,) = struct.unpack_from("<f", data, offset)
    offset += 4
    noise_slope, noise_offset = struct.unpack_from("<2f", data, offset)
    offset += 8
    table_inputs = np.asarray(
        struct.unpack_from(f"<{input_count}f", data, offset), dtype=np.float64
    )
    offset += input_count * 4
    stats = np.asarray(
        struct.unpack_from(f"<{stat_count}f", data, offset), dtype=np.float64
    ).reshape((-1, STATS_STRIDE))
    offset += stat_count * 4
    gains = np.asarray(
        struct.unpack_from(f"<{gain_count}f", data, offset), dtype=np.float64
    ).reshape((-1, input_count))
    if gamma != 1.0 or gains.shape[0] != map_h * map_v:
        raise ValueError(f"unexpected PGTM shape in {path}")
    return Fixture(
        path, width, height, baseline, map_h, map_v, weights,
        float(noise_slope), float(noise_offset), table_inputs, stats, gains,
    )


def fixture_paths(roots: list[Path]) -> list[Path]:
    paths = []
    for root in roots:
        if root.is_dir():
            paths.extend(sorted(root.glob("*.pgtfix")))
        else:
            paths.append(root)
    return sorted(set(paths))


def log2(value):
    return np.log2(np.maximum(value, 1e-10))


def sanitize_stats(stats: np.ndarray) -> np.ndarray:
    result = stats.copy()
    result[:, :4] = np.clip(result[:, :4], 0.0, 1.0)
    for column in (1, 2, 3):
        result[:, column] = np.maximum(result[:, column - 1], result[:, column])
    result[:, 6] = np.maximum(result[:, 3], np.where(result[:, 6] > 0, result[:, 6], result[:, 3]))
    result[:, 7] = np.maximum(result[:, 6], np.where(result[:, 7] > 0, result[:, 7], result[:, 6]))
    return result


def weighted_percentile(values: np.ndarray, weights: np.ndarray, percentile: float) -> float:
    order = np.argsort(values)
    values = values[order]
    weights = weights[order]
    target = weights.sum() * percentile
    index = int(np.searchsorted(np.cumsum(weights), target, side="left"))
    return float(values[min(index, len(values) - 1)])


def snr_feature(signal: np.ndarray | float, fixture: Fixture):
    source = np.maximum(np.asarray(signal) / (2.0 ** fixture.baseline_ev), 0.0)
    slope = max(fixture.noise_slope, 1e-10)
    offset = max(fixture.noise_offset, 1e-12)
    snr = source / np.sqrt(np.maximum(slope * source + offset, 1e-12))
    return np.log2(1.0 + snr)


def global_stats(fixture: Fixture) -> dict[str, float]:
    stats = sanitize_stats(fixture.stats)
    weights = np.where(np.isfinite(stats[:, 5]) & (stats[:, 5] > 0), stats[:, 5], 0.0)
    valid = weights > 0
    stats = stats[valid]
    weights = weights[valid]
    means = np.average(stats, axis=0, weights=weights)
    p10, p50, p90, p98, hf, _, p995, p999 = means
    tail95 = weighted_percentile(stats[:, 6], weights, 0.95)
    tail99 = weighted_percentile(stats[:, 7], weights, 0.99)
    return {
        "baseline": fixture.baseline_ev,
        "p10": p10,
        "p50": p50,
        "p90": p90,
        "p98": p98,
        "hf": hf,
        "p995": p995,
        "p999": p999,
        "tail95": tail95,
        "tail99": tail99,
        "max": float(stats[:, 7].max()),
        "log_noise_s": float(log2(fixture.noise_slope)),
        "log_noise_o": float(log2(fixture.noise_offset)),
        "snr10": float(snr_feature(p10, fixture)),
        "snr50": float(snr_feature(p50, fixture)),
    }


def global_features(row: dict[str, float]) -> dict[str, float]:
    return {
        "baseline": row["baseline"],
        "log_p10": float(log2(row["p10"] + LEVEL_EPS)),
        "log_p50": float(log2(row["p50"] + LEVEL_EPS)),
        "log_p90": float(log2(row["p90"] + LEVEL_EPS)),
        "log_p98": float(log2(row["p98"] + LEVEL_EPS)),
        "full_range": float(log2((row["p98"] + LEVEL_EPS) / (row["p10"] + LEVEL_EPS))),
        "upper_range": float(log2((row["p98"] + LEVEL_EPS) / (row["p50"] + LEVEL_EPS))),
        "sqrt_hf": math.sqrt(max(row["hf"], 0.0)),
        "tail_95": float(log2(row["tail95"] + TAIL_EPS)),
        "tail_99_95": float(log2((row["tail99"] + TAIL_EPS) / (row["tail95"] + TAIL_EPS))),
        "log_noise_s": row["log_noise_s"],
        "log_noise_o": row["log_noise_o"],
        "snr10": row["snr10"],
        "snr50": row["snr50"],
    }


@dataclass
class LinearModel:
    names: tuple[str, ...]
    intercept: float
    coefficients: np.ndarray
    loo_error: np.ndarray
    ridge: float

    def predict(self, row: dict[str, float]) -> float:
        features = global_features(row)
        return self.intercept + sum(
            coefficient * features[name]
            for name, coefficient in zip(self.names, self.coefficients)
        )


def ridge_fit(x: np.ndarray, y: np.ndarray, ridge: float) -> np.ndarray:
    penalty = np.eye(x.shape[1]) * ridge
    penalty[0, 0] = 0.0
    return np.linalg.solve(x.T @ x + penalty, x.T @ y)


def fit_global_model(
    label: str,
    rows: list[dict[str, float]],
    target: np.ndarray,
    max_features: int,
) -> LinearModel:
    feature_rows = [global_features(row) for row in rows]
    candidates = tuple(feature_rows[0].keys())
    best = None
    for count in range(1, max_features + 1):
        for names in itertools.combinations(candidates, count):
            values = np.asarray([[row[name] for name in names] for row in feature_rows])
            means = values.mean(axis=0)
            scales = values.std(axis=0)
            scales[scales < 1e-8] = 1.0
            x = np.column_stack([np.ones(len(values)), (values - means) / scales])
            for ridge in (0.01, 0.03, 0.1, 0.3, 1.0, 3.0, 10.0):
                errors = []
                for holdout in range(len(target)):
                    keep = np.arange(len(target)) != holdout
                    coefficients = ridge_fit(x[keep], target[keep], ridge)
                    errors.append(float(x[holdout] @ coefficients - target[holdout]))
                errors = np.asarray(errors)
                score = (
                    math.sqrt(float(np.mean(errors**2)))
                    + 0.20 * float(np.percentile(np.abs(errors), 95))
                    + 0.005 * count
                )
                if best is None or score < best[0]:
                    best = (score, names, means, scales, ridge, errors, x)
    _, names, means, scales, ridge, errors, x = best
    standardized = ridge_fit(x, target, ridge)
    raw_coefficients = standardized[1:] / scales
    intercept = standardized[0] - float(raw_coefficients @ means)
    model = LinearModel(names, intercept, raw_coefficients, errors, ridge)
    print(
        f"\n{label}: features={names} ridge={ridge:g} "
        f"looRmse={math.sqrt(float(np.mean(errors**2))):.6f}EV "
        f"looP95={np.percentile(np.abs(errors), 95):.6f}EV"
    )
    print(f"  intercept={intercept:+.9f}")
    for name, coefficient in zip(names, raw_coefficients):
        print(f"  {name:>16s} {coefficient:+.9f}")
    return model


def smooth_grid(values: np.ndarray, width: int, height: int) -> np.ndarray:
    source = values.reshape((height, width, -1))
    padded = np.pad(source, ((1, 1), (1, 1), (0, 0)), mode="edge")
    result = (
        4.0 * padded[1:-1, 1:-1]
        + 2.0 * (padded[:-2, 1:-1] + padded[2:, 1:-1])
        + 2.0 * (padded[1:-1, :-2] + padded[1:-1, 2:])
        + padded[:-2, :-2] + padded[:-2, 2:] + padded[2:, :-2] + padded[2:, 2:]
    ) / 16.0
    return result.reshape(values.shape)


LOCAL_FEATURE_NAMES = (
    "log_p10", "log_p50", "log_p90", "log_p98", "full_range", "upper_range",
    "sqrt_hf", "tail_995", "tail_999", "snr10", "snr50",
)


def local_features(fixture: Fixture) -> tuple[np.ndarray, np.ndarray]:
    stats = sanitize_stats(fixture.stats)
    p10, p50, p90, p98, hf, _, p995, p999 = stats.T
    raw = np.column_stack([
        log2(p10 + LEVEL_EPS),
        log2(p50 + LEVEL_EPS),
        log2(p90 + LEVEL_EPS),
        log2(p98 + LEVEL_EPS),
        log2((p98 + LEVEL_EPS) / (p10 + LEVEL_EPS)),
        log2((p98 + LEVEL_EPS) / (p50 + LEVEL_EPS)),
        np.sqrt(np.clip(hf, 0.0, 1.0)),
        log2((p995 + TAIL_EPS) / (p98 + TAIL_EPS)),
        log2((p999 + TAIL_EPS) / (p995 + TAIL_EPS)),
        snr_feature(p10, fixture),
        snr_feature(p50, fixture),
    ])
    fine = smooth_grid(raw, fixture.map_h, fixture.map_v)
    regional = fine
    for _ in range(3):
        regional = smooth_grid(regional, fixture.map_h, fixture.map_v)
    reference = np.median(regional, axis=0)
    # Fine-minus-regional preserves local subject adaptation; regional-minus-scene controls broad
    # illumination. This is the parameter-domain Gaussian pyramid used by production.
    return fine - regional, regional - reference


@dataclass
class SpatialModel:
    fine: np.ndarray
    regional: np.ndarray
    loo_error: np.ndarray
    ridge: float


def fit_spatial_model(
    label: str,
    fixtures: list[Fixture],
    targets: list[np.ndarray],
) -> SpatialModel:
    matrices = []
    centered_targets = []
    scene_slices = []
    start = 0
    for fixture, target in zip(fixtures, targets):
        fine, regional = local_features(fixture)
        matrix = np.column_stack([fine, regional])
        centered = target - np.median(target)
        matrices.append(matrix)
        centered_targets.append(centered)
        scene_slices.append(slice(start, start + len(target)))
        start += len(target)
    x = np.vstack(matrices)
    y = np.concatenate(centered_targets)
    scales = x.std(axis=0)
    normalized = x / np.maximum(scales, 1e-8)
    terms = []
    for scene_slice in scene_slices:
        sx = normalized[scene_slice]
        sy = y[scene_slice]
        terms.append((sx.T @ sx, sx.T @ sy))
    total_xtx = sum((term[0] for term in terms), np.zeros((x.shape[1], x.shape[1])))
    total_xty = sum((term[1] for term in terms), np.zeros(x.shape[1]))
    best = None
    for ridge in (0.03, 0.1, 0.3, 1.0, 3.0, 10.0, 30.0, 100.0, 300.0):
        errors = []
        scene_rmses = []
        for scene_slice, (scene_xtx, scene_xty) in zip(scene_slices, terms):
            coefficients = np.linalg.solve(
                total_xtx - scene_xtx + np.eye(x.shape[1]) * ridge,
                total_xty - scene_xty,
            )
            error = normalized[scene_slice] @ coefficients - y[scene_slice]
            errors.append(error)
            scene_rmses.append(math.sqrt(float(np.mean(error**2))))
        combined = np.concatenate(errors)
        score = (
            math.sqrt(float(np.mean(combined**2)))
            + 0.15 * float(np.percentile(np.abs(combined), 95))
            + 0.10 * max(scene_rmses)
        )
        if best is None or score < best[0]:
            best = (score, ridge, combined)
    _, ridge, loo_error = best
    normalized_coefficients = np.linalg.solve(
        total_xtx + np.eye(x.shape[1]) * ridge, total_xty
    )
    coefficients = normalized_coefficients / np.maximum(scales, 1e-8)
    feature_count = len(LOCAL_FEATURE_NAMES)
    model = SpatialModel(
        coefficients[:feature_count], coefficients[feature_count:], loo_error, ridge
    )
    print(
        f"\n{label}: ridge={ridge:g} "
        f"looRmse={math.sqrt(float(np.mean(loo_error**2))):.6f} "
        f"looP95={np.percentile(np.abs(loo_error), 95):.6f}"
    )
    for index, name in enumerate(LOCAL_FEATURE_NAMES):
        print(
            f"  {name:>16s} fine={model.fine[index]:+.9f} "
            f"regional={model.regional[index]:+.9f}"
        )
    return model


def curve_gains(
    inputs: np.ndarray,
    black_gain: np.ndarray,
    endpoint_gain: np.ndarray,
    shape_power: np.ndarray,
    shape_q: float,
) -> np.ndarray:
    u = np.clip((inputs[None, :] - TOE_END) / (1.0 - TOE_END), 0.0, 1.0)
    ratio = black_gain / np.maximum(endpoint_gain, 1e-10)
    amount = ratio[:, None] ** shape_q - 1.0
    return black_gain[:, None] / np.maximum(
        1.0 + amount * u ** shape_power[:, None], 1e-12
    ) ** (1.0 / shape_q)


def stored_curve_gains(
    inputs: np.ndarray,
    black_gain: np.ndarray,
    endpoint_gain: np.ndarray,
    shape_power: np.ndarray,
    shape_q: float,
    point_count: int = 257,
) -> np.ndarray:
    """Mirror the DNG table's point/257 storage and lookup interpolation exactly."""
    scaled = np.clip(inputs, 0.0, 1.0) * point_count
    first = np.clip(scaled.astype(np.int32), 0, point_count - 1)
    second = np.minimum(first + 1, point_count - 1)
    amount = scaled - first
    first_inputs = np.where(first == point_count - 1, 1.0, first / point_count)
    second_inputs = np.where(second == point_count - 1, 1.0, second / point_count)
    first_gains = curve_gains(
        first_inputs, black_gain, endpoint_gain, shape_power, shape_q
    )
    second_gains = curve_gains(
        second_inputs, black_gain, endpoint_gain, shape_power, shape_q
    )
    first_gains[:, first == point_count - 1] = endpoint_gain[:, None]
    second_gains[:, second == point_count - 1] = endpoint_gain[:, None]
    return first_gains * (1.0 - amount[None, :]) + second_gains * amount[None, :]


def fit_shape_powers(fixtures: list[Fixture]) -> tuple[float, list[np.ndarray]]:
    inputs = fixtures[0].table_inputs
    sample_gains = np.vstack([fixture.gains[::16] for fixture in fixtures])
    sample_black = sample_gains[:, 0]
    sample_endpoint = np.concatenate([
        np.full(len(fixture.gains[::16]), fixture.input_scale) for fixture in fixtures
    ])
    best = None
    for shape_q in np.linspace(1.10, 3.00, 20):
        candidates = np.linspace(MIN_SHAPE_POWER, 0.95 * shape_q, 80)
        errors = np.empty((len(sample_gains), len(candidates)))
        for index, power in enumerate(candidates):
            predicted = stored_curve_gains(
                inputs, sample_black, sample_endpoint,
                np.full(len(sample_black), power), shape_q,
            )
            errors[:, index] = np.mean(
                log2(predicted[:, 1:-1] / sample_gains[:, 1:-1]) ** 2, axis=1
            )
        score = math.sqrt(float(np.mean(np.min(errors, axis=1))))
        if best is None or score < best[0]:
            best = (score, shape_q)
    _, shape_q = best
    candidates = np.linspace(MIN_SHAPE_POWER, 0.95 * shape_q, 192)
    powers = []
    all_errors = []
    for fixture in fixtures:
        black = fixture.gains[:, 0]
        endpoint = np.full(len(black), fixture.input_scale)
        errors = np.empty((len(black), len(candidates)))
        for index, power in enumerate(candidates):
            predicted = stored_curve_gains(
                fixture.table_inputs, black, endpoint,
                np.full(len(black), power), shape_q,
            )
            errors[:, index] = np.mean(
                log2(predicted[:, 1:-1] / fixture.gains[:, 1:-1]) ** 2, axis=1
            )
        indices = np.argmin(errors, axis=1)
        powers.append(candidates[indices])
        all_errors.append(errors[np.arange(len(black)), indices])
    combined = np.concatenate(all_errors)
    print(
        f"curve family: TOE_END={TOE_END:.6f} SHAPE_Q={shape_q:.9f} "
        f"oracleRmse={math.sqrt(float(np.mean(combined))):.6f}EV "
        f"oracleP95Cell={np.percentile(np.sqrt(combined), 95):.6f}EV"
    )
    return shape_q, powers


def spatial_predict(fixture: Fixture, model: SpatialModel) -> np.ndarray:
    fine, regional = local_features(fixture)
    return fine @ model.fine + regional @ model.regional


def report_curve_audit(
    fixtures: list[Fixture],
    rows: list[dict[str, float]],
    input_model: LinearModel,
    black_model: LinearModel,
    shape_model: LinearModel,
    black_spatial: SpatialModel,
    shape_spatial: SpatialModel,
    shape_q: float,
) -> None:
    errors = []
    negative_slopes = 0
    slope_count = 0
    overflow = 0.0
    for fixture, row in zip(fixtures, rows):
        input_scale = float(np.clip(
            2.0 ** (input_model.predict(row) - row["baseline"]), 0.25, 1.05
        ))
        black_center = black_model.predict(row)
        black_gain = np.clip(
            2.0 ** (black_center + spatial_predict(fixture, black_spatial)), 0.50, 4.80
        )
        shape_center = shape_model.predict(row)
        shape_power = np.clip(
            shape_center + spatial_predict(fixture, shape_spatial),
            MIN_SHAPE_POWER,
            0.95 * shape_q,
        )
        predicted = stored_curve_gains(
            fixture.table_inputs,
            black_gain,
            np.full(len(black_gain), input_scale),
            shape_power,
            shape_q,
        )
        error = log2(predicted / fixture.gains)
        errors.append(error)
        outputs = predicted * fixture.table_inputs[None, :]
        slopes = np.diff(outputs, axis=1) / np.diff(fixture.table_inputs)[None, :]
        negative_slopes += int(np.sum(slopes < -1e-7))
        slope_count += slopes.size
        overflow = max(overflow, float(np.max(outputs - max(1.0, input_scale))))
        print(
            f"  {fixture.path.stem[:31]:31s} scale={input_scale:.6f} "
            f"rmse={math.sqrt(float(np.mean(error**2))):.5f}EV "
            f"p95={np.percentile(np.abs(error), 95):.5f}EV"
        )
    combined = np.vstack(errors)
    print(
        "\nfull constrained curve audit: "
        f"rmse={math.sqrt(float(np.mean(combined**2))):.6f}EV "
        f"medianAbs={np.median(np.abs(combined)):.6f}EV "
        f"p95Abs={np.percentile(np.abs(combined), 95):.6f}EV "
        f"negativeSlopes={negative_slopes}/{slope_count} "
        f"maxOutputOverflow={overflow:.9g}"
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("fixtures", type=Path, nargs="+")
    parser.add_argument("--max-features", type=int, default=6)
    args = parser.parse_args()
    paths = fixture_paths(args.fixtures)
    fixtures = [read_fixture(path) for path in paths]
    if not fixtures:
        raise ValueError("no PGTFIX3 fixtures")
    reference_inputs = fixtures[0].table_inputs
    if any(not np.array_equal(fixture.table_inputs, reference_inputs) for fixture in fixtures):
        raise ValueError("fixtures do not share dense table inputs")
    rows = [global_stats(fixture) for fixture in fixtures]
    print(f"fixtures={len(fixtures)} cells={sum(len(f.gains) for f in fixtures)} inputs={len(reference_inputs)}")

    shape_q, shape_powers = fit_shape_powers(fixtures)
    input_model = fit_global_model(
        "total headroom EV", rows,
        np.asarray([
            log2(fixture.input_scale) + fixture.baseline_ev for fixture in fixtures
        ]),
        args.max_features,
    )
    black_targets = [log2(fixture.gains[:, 0]) for fixture in fixtures]
    black_model = fit_global_model(
        "scene black gain log2", rows,
        np.asarray([np.median(target) for target in black_targets]),
        args.max_features,
    )
    shape_model = fit_global_model(
        "scene shape power", rows,
        np.asarray([np.median(target) for target in shape_powers]),
        args.max_features,
    )
    black_spatial = fit_spatial_model("black gain parameter pyramid", fixtures, black_targets)
    shape_spatial = fit_spatial_model("shape parameter pyramid", fixtures, shape_powers)

    print("\nper-scene trained model")
    report_curve_audit(
        fixtures, rows, input_model, black_model, shape_model,
        black_spatial, shape_spatial, shape_q,
    )


if __name__ == "__main__":
    main()
