"""Fit and audit the compact LTM model against extracted Google PGTM fixtures.

The script deliberately consumes the checked-in semantic fixtures rather than the source DNGs so
the exact regression can be reproduced without copying the photographer's full-resolution images.
It reports leave-one-scene-out errors; coefficients are only suitable for production when those
errors remain close to the in-sample result.
"""

from __future__ import annotations

import argparse
import itertools
import math
import struct
from dataclasses import dataclass
from pathlib import Path

import numpy as np


MAGIC = b"PGTFIX2\0"
STATS_STRIDE = 8
ANCHOR_COUNT = 9


@dataclass
class Fixture:
    path: Path
    baseline_ev: float
    width: int
    height: int
    map_h: int
    map_v: int
    weights: np.ndarray
    stats: np.ndarray
    gains: np.ndarray

    @property
    def input_scale(self) -> float:
        return float(self.weights.sum())


def read_fixture(path: Path) -> Fixture:
    data = path.read_bytes()
    if data[: len(MAGIC)] != MAGIC:
        raise ValueError(f"invalid fixture {path}")
    offset = len(MAGIC)
    width, height, baseline, map_h, map_v, anchors, stat_count, gain_count = struct.unpack_from(
        "<iifiiiii", data, offset
    )
    offset += struct.calcsize("<iifiiiii")
    weights = np.asarray(struct.unpack_from("<5f", data, offset), dtype=np.float64)
    offset += struct.calcsize("<5f")
    (gamma,) = struct.unpack_from("<f", data, offset)
    offset += 4
    if anchors != ANCHOR_COUNT or gamma != 1.0:
        raise ValueError(f"unexpected PGTM shape in {path}")
    stats = np.asarray(struct.unpack_from(f"<{stat_count}f", data, offset), dtype=np.float64)
    offset += stat_count * 4
    gains = np.asarray(struct.unpack_from(f"<{gain_count}f", data, offset), dtype=np.float64)
    stats = stats.reshape((-1, STATS_STRIDE))
    gains = gains.reshape((-1, anchors))
    return Fixture(path, baseline, width, height, map_h, map_v, weights, stats, gains)


def weighted_percentile(values: np.ndarray, weights: np.ndarray, percentile: float) -> float:
    order = np.argsort(values)
    sorted_values = values[order]
    sorted_weights = weights[order]
    target = sorted_weights.sum() * percentile
    index = int(np.searchsorted(np.cumsum(sorted_weights), target, side="left"))
    return float(sorted_values[min(index, len(sorted_values) - 1)])


def sanitize_stats(stats: np.ndarray) -> np.ndarray:
    result = stats.copy()
    result[:, 0] = np.clip(result[:, 0], 0.0, 1.0)
    for column in (1, 2, 3):
        result[:, column] = np.maximum(result[:, column - 1], np.clip(result[:, column], 0.0, 1.0))
    result[:, 6] = np.maximum(result[:, 3], np.where(result[:, 6] > 0.0, result[:, 6], result[:, 3]))
    result[:, 7] = np.maximum(result[:, 6], np.where(result[:, 7] > 0.0, result[:, 7], result[:, 6]))
    return result


def global_stats(fixture: Fixture) -> dict[str, float]:
    stats = sanitize_stats(fixture.stats)
    weights = np.where(np.isfinite(stats[:, 5]) & (stats[:, 5] > 0.0), stats[:, 5], 0.0)
    valid = weights > 0.0
    stats = stats[valid]
    weights = weights[valid]
    means = np.average(stats, axis=0, weights=weights)
    return {
        "baseline": fixture.baseline_ev,
        "p10": means[0],
        "p50": means[1],
        "p90": means[2],
        "p98": means[3],
        "hf": means[4],
        "p995": means[6],
        "p999": means[7],
        "tail95": weighted_percentile(stats[:, 6], weights, 0.95),
        "tail98": weighted_percentile(stats[:, 6], weights, 0.98),
        "tail99": weighted_percentile(stats[:, 7], weights, 0.99),
        "max": float(stats[:, 7].max()),
    }


def log2(value: float | np.ndarray) -> float | np.ndarray:
    return np.log2(np.maximum(value, 1e-6))


def feature_values(stats: dict[str, float]) -> dict[str, float]:
    return {
        "baseline": stats["baseline"],
        "p10": stats["p10"],
        "p50": stats["p50"],
        "p90": stats["p90"],
        "p98": stats["p98"],
        "sqrt_hf": math.sqrt(stats["hf"]),
        "hf": stats["hf"],
        "log_p10": log2(stats["p10"] + 0.006),
        "log_p50": log2(stats["p50"] + 0.006),
        "log_p90": log2(stats["p90"] + 0.006),
        "log_p98": log2(stats["p98"] + 0.006),
        "log_range": log2((stats["p98"] + 0.006) / (stats["p10"] + 0.006)),
        "log_upper": log2((stats["p98"] + 0.006) / (stats["p50"] + 0.006)),
        "log_tail95": log2(stats["tail95"] + 0.04),
        "log_tail99_95": log2((stats["tail99"] + 0.04) / (stats["tail95"] + 0.04)),
        "log_max_99": log2((stats["max"] + 0.04) / (stats["tail99"] + 0.04)),
        "log_max_95": log2((stats["max"] + 0.04) / (stats["tail95"] + 0.04)),
    }


def ridge_fit(x: np.ndarray, y: np.ndarray, regularization: float) -> np.ndarray:
    penalty = np.eye(x.shape[1]) * regularization
    penalty[0, 0] = 0.0
    return np.linalg.solve(x.T @ x + penalty, x.T @ y)


def standardized_matrix(
    rows: list[dict[str, float]],
    names: tuple[str, ...],
) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
    values = np.asarray([[row[name] for name in names] for row in rows], dtype=np.float64)
    means = values.mean(axis=0)
    scales = values.std(axis=0)
    scales[scales < 1e-8] = 1.0
    return np.column_stack([np.ones(len(values)), (values - means) / scales]), means, scales


def loo_errors(x: np.ndarray, y: np.ndarray, regularization: float) -> np.ndarray:
    errors = []
    for holdout in range(len(y)):
        keep = np.arange(len(y)) != holdout
        coefficients = ridge_fit(x[keep], y[keep], regularization)
        errors.append(float(x[holdout] @ coefficients - y[holdout]))
    return np.asarray(errors)


def select_global_model(rows: list[dict[str, float]], target: np.ndarray, max_features: int) -> tuple:
    candidates = tuple(feature_values(rows[0]).keys())
    best = None
    for count in range(1, max_features + 1):
        for names in itertools.combinations(candidates, count):
            x, means, scales = standardized_matrix([feature_values(row) for row in rows], names)
            for regularization in (0.01, 0.03, 0.1, 0.3, 1.0, 3.0):
                errors = loo_errors(x, target, regularization)
                score = math.sqrt(float(np.mean(errors**2))) + 0.15 * float(np.max(np.abs(errors)))
                if best is None or score < best[0]:
                    coefficients = ridge_fit(x, target, regularization)
                    best = (score, names, regularization, coefficients, means, scales, errors)
    assert best is not None
    return best


def select_calibrated_model(
    rows: list[dict[str, float]],
    target: np.ndarray,
    max_features: int,
    max_training_error: float,
) -> tuple:
    candidates = tuple(feature_values(rows[0]).keys())
    best = None
    for count in range(1, max_features + 1):
        for names in itertools.combinations(candidates, count):
            x, means, scales = standardized_matrix([feature_values(row) for row in rows], names)
            for regularization in (0.000001, 0.000003, 0.00001, 0.00003, 0.0001, 0.0003, 0.001, 0.003):
                coefficients = ridge_fit(x, target, regularization)
                training_errors = x @ coefficients - target
                maximum = float(np.max(np.abs(training_errors)))
                if maximum > max_training_error:
                    continue
                errors = loo_errors(x, target, regularization)
                score = (
                    count * 0.08
                    + math.sqrt(float(np.mean(training_errors**2)))
                    + 0.08 * math.sqrt(float(np.mean(np.minimum(np.abs(errors), 2.0) ** 2)))
                )
                if best is None or score < best[0]:
                    best = (score, names, regularization, coefficients, means, scales, errors)
        if best is not None:
            break
    if best is None:
        raise ValueError(f"no calibrated model reaches max error {max_training_error}")
    return best


def report_model(label: str, fixtures: list[Fixture], target: np.ndarray, result: tuple) -> None:
    score, names, regularization, coefficients, means, scales, errors = result
    print(f"\n{label}: features={names} ridge={regularization:g} score={score:.4f}")
    print(f"  standardized coefficients={coefficients.tolist()}")
    raw_coefficients = coefficients[1:] / scales
    raw_intercept = coefficients[0] - float(np.dot(raw_coefficients, means))
    print(f"  raw intercept={raw_intercept:.9f}")
    for name, coefficient in zip(names, raw_coefficients):
        print(f"  {name:>14s} {coefficient:+.9f}")
    fitted = np.column_stack([
        np.ones(len(fixtures)),
        (np.asarray([[feature_values(global_stats(f))[name] for name in names] for f in fixtures]) - means) / scales,
    ]) @ coefficients
    for fixture, expected, actual, error in zip(fixtures, target, fitted, errors):
        print(
            f"  {fixture.path.stem[:31]:31s} target={expected:+.3f} fit={actual:+.3f} "
            f"looError={error:+.3f}"
        )


def report_calibrated_model(
    label: str,
    fixtures: list[Fixture],
    rows: list[dict[str, float]],
    target: np.ndarray,
    max_features: int,
    max_training_error: float,
) -> None:
    try:
        result = select_calibrated_model(rows, target, max_features, max_training_error)
    except ValueError as error:
        print(f"\n{label}: {error}")
        return
    report_model(label, fixtures, target, result)


def smooth_grid(values: np.ndarray, width: int, height: int) -> np.ndarray:
    source = values.reshape((height, width, -1))
    padded = np.pad(source, ((1, 1), (1, 1), (0, 0)), mode="edge")
    result = (
        4.0 * padded[1:-1, 1:-1]
        + 2.0 * padded[:-2, 1:-1]
        + 2.0 * padded[2:, 1:-1]
        + 2.0 * padded[1:-1, :-2]
        + 2.0 * padded[1:-1, 2:]
        + padded[:-2, :-2]
        + padded[:-2, 2:]
        + padded[2:, :-2]
        + padded[2:, 2:]
    ) / 16.0
    return result.reshape(values.shape)


def local_feature_matrix(fixture: Fixture) -> tuple[np.ndarray, tuple[str, ...]]:
    stats = sanitize_stats(fixture.stats)
    p10, p50, p90, p98, hf, _, p995, p999 = stats.T
    features = np.column_stack([
        log2(p10 + 0.006),
        log2(p50 + 0.006),
        log2(p90 + 0.006),
        log2(p98 + 0.006),
        log2((p98 + 0.006) / (p10 + 0.006)),
        log2((p98 + 0.006) / (p50 + 0.006)),
        np.sqrt(np.clip(hf, 0.0, 1.0)),
        log2((p995 + 0.04) / (p98 + 0.04)),
        log2((p999 + 0.04) / (p995 + 0.04)),
    ])
    names = (
        "log_p10", "log_p50", "log_p90", "log_p98", "full_range", "upper_range",
        "sqrt_hf", "tail_995", "tail_999",
    )
    return smooth_grid(features, fixture.map_h, fixture.map_v), names


def report_spatial_model(fixtures: list[Fixture]) -> None:
    matrices = []
    targets = []
    scene_slices = []
    start = 0
    names = ()
    for fixture in fixtures:
        matrix, names = local_feature_matrix(fixture)
        matrix -= np.median(matrix, axis=0)
        target = log2(fixture.gains[:, 0])
        target -= np.median(target)
        matrices.append(matrix)
        targets.append(target)
        scene_slices.append(slice(start, start + len(target)))
        start += len(target)
    x = np.vstack(matrices)
    y = np.concatenate(targets)
    scales = x.std(axis=0)
    normalized = x / np.maximum(scales, 1e-6)
    coefficients = ridge_fit(
        np.column_stack([np.ones(len(normalized)), normalized]),
        y,
        regularization=30.0,
    )[1:] / np.maximum(scales, 1e-6)
    predicted = x @ coefficients
    print("\nshared spatial black-gain residual model")
    for name, coefficient in zip(names, coefficients):
        print(f"  {name:>14s} {coefficient:+.7f}")
    for fixture, scene_slice in zip(fixtures, scene_slices):
        error = predicted[scene_slice] - y[scene_slice]
        correlation = np.corrcoef(predicted[scene_slice], y[scene_slice])[0, 1]
        print(
            f"  {fixture.path.stem[:31]:31s} rmse={math.sqrt(float(np.mean(error**2))):.3f}EV "
            f"p90={np.percentile(np.abs(error), 90):.3f}EV corr={correlation:+.3f}"
        )


def semantic_scene_inputs(fixture: Fixture) -> np.ndarray:
    stats = sanitize_stats(fixture.stats)
    p10, p50, p90, p98, _, _, p995, p999 = stats.T
    return np.column_stack([
        p10,
        0.5 * (p10 + p50),
        p50,
        p90,
        p98,
        p995,
        p999,
    ])


def exposure_fusion_gains(
    scene_inputs: np.ndarray,
    brightest_gains: np.ndarray,
    darkest_gain: float,
    key_value: float,
    sigma_ev: float,
) -> np.ndarray:
    scene_inputs = np.minimum(scene_inputs, 1.0 / darkest_gain)
    fractions = np.linspace(0.0, 1.0, 8)
    exposure_gains = 2.0 ** (
        log2(brightest_gains)[:, None] * (1.0 - fractions)[None, :]
        + log2(darkest_gain) * fractions[None, :]
    )
    exposed = scene_inputs[:, :, None] * exposure_gains[:, None, :]
    distance_ev = log2(np.maximum(exposed, 1e-8) / key_value)
    log_weights = -0.5 * (distance_ev / sigma_ev) ** 2
    log_weights -= np.max(log_weights, axis=2, keepdims=True)
    weights = np.exp(log_weights)
    outputs = np.sum(weights * np.minimum(exposed, 1.0), axis=2) / np.sum(weights, axis=2)
    gains = outputs / np.maximum(scene_inputs, 1e-8)
    return np.where(scene_inputs <= 1e-8, brightest_gains[:, None], gains)


def report_exposure_fusion_grid(fixtures: list[Fixture]) -> None:
    best = None
    for key_value in np.linspace(0.35, 0.80, 19):
        for sigma_ev in np.linspace(0.35, 1.80, 30):
            errors = []
            for fixture in fixtures:
                predicted = exposure_fusion_gains(
                    semantic_scene_inputs(fixture),
                    fixture.gains[:, 0],
                    fixture.input_scale,
                    key_value,
                    sigma_ev,
                )
                expected = fixture.gains[:, 1:8]
                errors.append(log2(np.maximum(predicted, 1e-8) / np.maximum(expected, 1e-8)).ravel())
            errors = np.concatenate(errors)
            score = math.sqrt(float(np.mean(errors**2))) + 0.15 * float(np.percentile(np.abs(errors), 95))
            if best is None or score < best[0]:
                best = (score, key_value, sigma_ev, errors)
    score, key_value, sigma_ev, errors = best
    print(
        "\n8-exposure fusion shape "
        f"key={key_value:.3f} sigma={sigma_ev:.3f}EV score={score:.4f} "
        f"rmse={math.sqrt(float(np.mean(errors**2))):.4f}EV "
        f"medianAbs={np.median(np.abs(errors)):.4f}EV "
        f"p90Abs={np.percentile(np.abs(errors), 90):.4f}EV "
        f"p95Abs={np.percentile(np.abs(errors), 95):.4f}EV"
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("fixtures", type=Path)
    parser.add_argument("--max-features", type=int, default=4)
    args = parser.parse_args()
    fixtures = [read_fixture(path) for path in sorted(args.fixtures.glob("*.pgtfixture"))]
    rows = [global_stats(fixture) for fixture in fixtures]
    print("scene                             BE  scale headroom p10  p50  p90  p98   hf tail95 tail99 max black50")
    for fixture, stats in zip(fixtures, rows):
        headroom_ev = log2(fixture.input_scale) + fixture.baseline_ev
        black_median = float(np.median(fixture.gains[:, 0]))
        print(
            f"{fixture.path.stem[:31]:31s} {fixture.baseline_ev:4.2f} {fixture.input_scale:.5f} "
            f"{headroom_ev:+.3f} {stats['p10']:.3f} {stats['p50']:.3f} {stats['p90']:.3f} "
            f"{stats['p98']:.3f} {stats['hf']:.3f} {stats['tail95']:.2f} {stats['tail99']:.2f} "
            f"{stats['max']:.2f} {black_median:.3f}"
        )

    headroom_target = np.asarray([log2(f.input_scale) + f.baseline_ev for f in fixtures])
    report_model(
        "input headroom EV",
        fixtures,
        headroom_target,
        select_global_model(rows, headroom_target, args.max_features),
    )
    report_calibrated_model(
        "calibrated input headroom EV",
        fixtures,
        rows,
        headroom_target,
        args.max_features,
        0.10,
    )
    black_target = np.asarray([log2(np.median(f.gains[:, 0])) for f in fixtures])
    report_model(
        "median black-gain EV",
        fixtures,
        black_target,
        select_global_model(rows, black_target, args.max_features),
    )
    report_calibrated_model(
        "calibrated median black-gain EV",
        fixtures,
        rows,
        black_target,
        args.max_features,
        0.12,
    )
    report_spatial_model(fixtures)
    report_exposure_fusion_grid(fixtures)


if __name__ == "__main__":
    main()
