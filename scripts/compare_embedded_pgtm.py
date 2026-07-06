import argparse
import math
import sys
from pathlib import Path

from extract_pgtm_regression_fixture import (
    TAG_PROFILE_GAIN_TABLE_MAP,
    TAG_PROFILE_GAIN_TABLE_MAP2,
    Tiff,
    extract_packed_stats,
    find_pgtm,
    find_raw_ifd,
    ifds_for,
)


SAMPLE_INPUTS = [
    0.0,
    0.0025,
    0.005,
    0.0075,
    0.01,
    0.015,
    0.02,
    0.0275,
    0.035,
    0.045,
    0.05,
    0.0575,
    0.065,
    0.0725,
    0.08,
    0.09,
    0.10,
    0.11,
    0.12,
    0.14,
    0.18,
    0.25,
    0.50,
    0.75,
    1.0,
]


def percentile(values, p):
    values = sorted(values)
    if not values:
        return 0.0
    k = (len(values) - 1) * p
    lo = int(math.floor(k))
    hi = int(math.ceil(k))
    if lo == hi:
        return values[lo]
    return values[lo] * (hi - k) + values[hi] * (k - lo)


def gain_at(pgtm, cell, table_input):
    n = pgtm["points_n"]
    x = max(0.0, min(1.0, table_input)) * max(n, 1)
    i0 = max(0, min(n - 1, int(math.floor(x))))
    i1 = max(0, min(n - 1, i0 + 1))
    frac = x - i0
    offset = cell * n
    return pgtm["gains"][offset + i0] * (1.0 - frac) + pgtm["gains"][offset + i1] * frac


def stats_at(packed_stats, cell):
    off = cell * 8
    return {
        "p10": packed_stats[off],
        "p50": packed_stats[off + 1],
        "p90": packed_stats[off + 2],
        "p98": packed_stats[off + 3],
        "hf": packed_stats[off + 4],
        "weight": packed_stats[off + 5],
        "p995": packed_stats[off + 6],
        "p999": packed_stats[off + 7],
    }


def format_stats(stats):
    return (
        f"p10={stats['p10']:.6f} p50={stats['p50']:.6f} "
        f"p90={stats['p90']:.6f} p98={stats['p98']:.6f} "
        f"hf={stats['hf']:.6f} p995={stats['p995']:.6f} p999={stats['p999']:.6f}"
    )


def print_map_header(label, pgtm):
    print(
        f"{label}: tag={pgtm['tag']} grid={pgtm['map_h']}x{pgtm['map_v']}x{pgtm['points_n']} "
        f"weightSum={sum(pgtm['weights']):.7f} gamma={pgtm['gamma']:.6f} "
        f"weights={','.join(f'{v:.7f}' for v in pgtm['weights'])}"
    )


def compare_maps(google, app, packed_stats=None):
    cell_count = google["map_h"] * google["map_v"]
    if (
        google["map_h"] != app["map_h"]
        or google["map_v"] != app["map_v"]
        or google["points_n"] != app["points_n"]
    ):
        raise ValueError("PGTM and PGTM2 grids differ; direct flat comparison is not valid")

    print("tableInput googleP05/appP05/diff googleP50/appP50/diff googleP95/appP95/diff outputP50Diff")
    for table_input in SAMPLE_INPUTS:
        google_gains = [gain_at(google, cell, table_input) for cell in range(cell_count)]
        app_gains = [gain_at(app, cell, table_input) for cell in range(cell_count)]
        g05 = percentile(google_gains, 0.05)
        g50 = percentile(google_gains, 0.50)
        g95 = percentile(google_gains, 0.95)
        a05 = percentile(app_gains, 0.05)
        a50 = percentile(app_gains, 0.50)
        a95 = percentile(app_gains, 0.95)
        print(
            f"{table_input:0.4f} "
            f"{g05:0.6f}/{a05:0.6f}/{a05 - g05:+0.6f} "
            f"{g50:0.6f}/{a50:0.6f}/{a50 - g50:+0.6f} "
            f"{g95:0.6f}/{a95:0.6f}/{a95 - g95:+0.6f} "
            f"{table_input * (a50 - g50):+0.6f}"
        )

    probes = [0.005, 0.02, 0.045, 0.08, 0.18, 0.5, 1.0]
    print("largest absolute gain deltas")
    for table_input in probes:
        deltas = []
        for cell in range(cell_count):
            gg = gain_at(google, cell, table_input)
            ag = gain_at(app, cell, table_input)
            deltas.append((abs(ag - gg), ag - gg, cell, gg, ag))
        deltas.sort(reverse=True)
        print(f"t={table_input:.4f}")
        for abs_delta, signed_delta, cell, gg, ag in deltas[:6]:
            x = cell % google["map_h"]
            y = cell // google["map_h"]
            line = (
                f"  cell={cell} x={x} y={y} google={gg:.6f} app={ag:.6f} "
                f"delta={signed_delta:+.6f}"
            )
            if packed_stats is not None:
                line += " " + format_stats(stats_at(packed_stats, cell))
            print(line)

    if packed_stats is not None:
        print_full_matrix_summary(google, app, packed_stats)


def input_band(table_input):
    bands = [
        (0.0, 0.02, "00_002"),
        (0.02, 0.05, "002_005"),
        (0.05, 0.10, "005_010"),
        (0.10, 0.18, "010_018"),
        (0.18, 0.50, "018_050"),
        (0.50, 1.01, "050_100"),
    ]
    for lo, hi, name in bands:
        if lo <= table_input < hi:
            return name
    return "other"


def cell_groups(stats):
    groups = ["all"]
    if stats["p98"] < 0.18:
        groups.append("dark_flat")
    if stats["p50"] < 0.18 and stats["p98"] >= 0.45:
        groups.append("dark_tail")
    if 0.18 <= stats["p50"] < 0.45 and stats["p98"] < 0.65 and stats["hf"] < 0.04:
        groups.append("mid_flat")
    if stats["p98"] >= 0.85 and stats["hf"] < 0.25:
        groups.append("highlight_tail")
    if stats["hf"] >= 0.50 or (stats["p50"] >= 0.95 and stats["p98"] >= 0.98):
        groups.append("saturated")
    return groups


def table_input_for_index(index, point_count):
    if point_count <= 1:
        return 0.0
    if index == point_count - 1:
        return 1.0
    return index / float(point_count)


def bucket_summary(samples):
    count = len(samples)
    if count == 0:
        return None
    gain_deltas = [s[0] for s in samples]
    abs_gain_deltas = [abs(s[0]) for s in samples]
    output_deltas = [s[1] for s in samples]
    positive = sum(1 for value in gain_deltas if value > 0)
    negative = sum(1 for value in gain_deltas if value < 0)
    return {
        "count": count,
        "mean_gain_delta": sum(gain_deltas) / count,
        "mean_abs_gain_delta": sum(abs_gain_deltas) / count,
        "p95_abs_gain_delta": percentile(abs_gain_deltas, 0.95),
        "p99_abs_gain_delta": percentile(abs_gain_deltas, 0.99),
        "max_abs_gain_delta": max(abs_gain_deltas),
        "mean_output_delta": sum(output_deltas) / count,
        "positive": positive / count,
        "negative": negative / count,
    }


def print_full_matrix_summary(google, app, packed_stats):
    cell_count = google["map_h"] * google["map_v"]
    point_count = google["points_n"]
    buckets = {}
    cell_error = []
    for cell in range(cell_count):
        stats = stats_at(packed_stats, cell)
        groups = cell_groups(stats)
        abs_sum = 0.0
        signed_sum = 0.0
        max_abs = 0.0
        max_index = 0
        for index in range(point_count):
            table_input = table_input_for_index(index, point_count)
            flat = cell * point_count + index
            delta = app["gains"][flat] - google["gains"][flat]
            output_delta = delta * table_input
            abs_delta = abs(delta)
            abs_sum += abs_delta
            signed_sum += delta
            if abs_delta > max_abs:
                max_abs = abs_delta
                max_index = index
            band = input_band(table_input)
            for group in groups:
                buckets.setdefault((group, band), []).append((delta, output_delta))
        cell_error.append((abs_sum / point_count, signed_sum / point_count, max_abs, max_index, cell, stats))

    print("full_matrix_summary group band count meanGainDelta meanAbsGain p95AbsGain p99AbsGain maxAbsGain meanOutputDelta posFrac negFrac")
    for group in ["all", "dark_flat", "dark_tail", "mid_flat", "highlight_tail", "saturated"]:
        for band in ["00_002", "002_005", "005_010", "010_018", "018_050", "050_100"]:
            summary = bucket_summary(buckets.get((group, band), []))
            if summary is None:
                continue
            print(
                f"{group} {band} {summary['count']} "
                f"{summary['mean_gain_delta']:+.6f} {summary['mean_abs_gain_delta']:.6f} "
                f"{summary['p95_abs_gain_delta']:.6f} {summary['p99_abs_gain_delta']:.6f} "
                f"{summary['max_abs_gain_delta']:.6f} {summary['mean_output_delta']:+.6f} "
                f"{summary['positive']:.3f} {summary['negative']:.3f}"
            )

    print("top integrated cell errors")
    cell_error.sort(reverse=True)
    for mean_abs, mean_signed, max_abs, max_index, cell, stats in cell_error[:20]:
        x = cell % google["map_h"]
        y = cell // google["map_h"]
        print(
            f"cell={cell} x={x} y={y} meanAbsGain={mean_abs:.6f} "
            f"meanSignedGain={mean_signed:+.6f} maxAbsGain={max_abs:.6f} "
            f"maxInput={table_input_for_index(max_index, point_count):.6f} {format_stats(stats)}"
        )


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("dng", type=Path)
    parser.add_argument("--skip-stats", action="store_true")
    args = parser.parse_args()

    tiff = Tiff(args.dng)
    ifd0, ifds = ifds_for(tiff)
    google = find_pgtm(tiff, ifds, TAG_PROFILE_GAIN_TABLE_MAP)
    app = find_pgtm(tiff, ifds, TAG_PROFILE_GAIN_TABLE_MAP2)
    if google is None:
        print("No ProfileGainTableMap tag 52525 found", file=sys.stderr)
        return 2
    if app is None:
        print("No ProfileGainTableMap2 tag 52544 found", file=sys.stderr)
        return 2

    print_map_header("PGTM Google", google)
    print_map_header("PGTM2 App", app)

    packed_stats = None
    if not args.skip_stats:
        raw_offset, raw_ifd = find_raw_ifd(tiff, ifds)
        width, height, baseline, grid_h, grid_v, packed_stats = extract_packed_stats(
            tiff=tiff,
            ifd0=ifd0,
            raw_ifd=raw_ifd,
            raw_offset=raw_offset,
        )
        print(
            f"stats: width={width} height={height} baseline={baseline:.6f} "
            f"grid={grid_h}x{grid_v} packedFloats={len(packed_stats)}"
        )

    compare_maps(google, app, packed_stats)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
