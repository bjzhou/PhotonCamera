import argparse
import struct
from pathlib import Path

from analyze_google_pgtm import (
    BASE_INPUT_WEIGHTS,
    HIST_BINS,
    SAMPLE_GRID,
    Tiff,
    app_cfa_pattern_from_dng,
    app_grid_size,
    black_level_by_channel,
    black_level_for_pixel,
    camera_to_prophoto,
    cell_stats_from_values,
    cfa_color_for_pixel,
    mat_vec,
    unpack,
    weighted_rgb_input,
)


MAGIC = b"PGTFIX1\0"
TAG_SUB_IFDS = 330
TAG_PROFILE_GAIN_TABLE_MAP = 52525
TAG_PROFILE_GAIN_TABLE_MAP2 = 52544


def read_pgtm_tag(tiff, ifd, tag):
    entry = ifd.get(tag)
    if entry is None:
        return None
    b = tiff.entry_bytes(entry)
    e = tiff.endian
    map_v = unpack(e, "i", b, 0)
    map_h = unpack(e, "i", b, 4)
    spacing_v = unpack(e, "d", b, 8)
    spacing_h = unpack(e, "d", b, 16)
    origin_v = unpack(e, "d", b, 24)
    origin_h = unpack(e, "d", b, 32)
    points_n = unpack(e, "i", b, 40)
    weights = [unpack(e, "f", b, 44 + i * 4) for i in range(5)]
    count = map_v * map_h * points_n
    if tag == TAG_PROFILE_GAIN_TABLE_MAP:
        gains = list(struct.unpack_from(e + f"{count}f", b, 64))
        gamma = 1.0
        data_type = 3
    else:
        data_type = unpack(e, "i", b, 64)
        gamma = unpack(e, "f", b, 68)
        gain_min = unpack(e, "f", b, 72)
        gain_max = unpack(e, "f", b, 76)
        if data_type == 3:
            gains = list(struct.unpack_from(e + f"{count}f", b, 80))
        elif data_type == 1:
            vals = struct.unpack_from(e + f"{count}H", b, 80)
            gains = [gain_min + v / 65535.0 * (gain_max - gain_min) for v in vals]
        else:
            raise ValueError(f"unsupported PGTM2 data type {data_type}")
    return {
        "tag": tag,
        "map_v": map_v,
        "map_h": map_h,
        "spacing_v": spacing_v,
        "spacing_h": spacing_h,
        "origin_v": origin_v,
        "origin_h": origin_h,
        "points_n": points_n,
        "weights": weights,
        "gamma": gamma,
        "data_type": data_type,
        "gains": gains,
    }


def ifds_for(tiff):
    ifd0, _ = tiff.ifd(tiff.ifd0_offset)
    sub_offsets = tiff.values(ifd0, TAG_SUB_IFDS)
    return ifd0, [(tiff.ifd0_offset, ifd0)] + [(offset, tiff.ifd(offset)[0]) for offset in sub_offsets]


def find_raw_ifd(tiff, ifds):
    for offset, ifd in ifds:
        width = (tiff.values(ifd, 256) or [0])[0]
        height = (tiff.values(ifd, 257) or [0])[0]
        compression = (tiff.values(ifd, 259) or [0])[0]
        bits = (tiff.values(ifd, 258) or [0])[0]
        if width >= 1000 and height >= 1000 and compression == 1 and bits == 16:
            return offset, ifd
    raise ValueError("no uncompressed 16-bit raw IFD")


def find_pgtm(tiff, ifds, tag):
    for _, ifd in ifds:
        pgtm = read_pgtm_tag(tiff, ifd, tag)
        if pgtm is not None:
            return pgtm
    return None


def align_up_to_even(value):
    return value if (value & 1) == 0 else value + 1


def align_down_to_even(value):
    return value if (value & 1) == 0 else value - 1


def percentile_from_hist(hist, sample_count, p):
    if sample_count <= 0:
        return 0.0
    target = max(1, min(sample_count, int(-(-sample_count * p // 1))))
    cumulative = 0
    for index, count in enumerate(hist):
        cumulative += count
        if cumulative >= target:
            return index / float(len(hist) - 1)
    return 1.0


def cell_stats_from_values_like_app(values):
    hist = [0] * HIST_BINS
    highlight_count = 0
    for value in values:
        clamped = min(max(value, 0.0), 1.0)
        index = int(clamped * (HIST_BINS - 1) + 0.5)
        hist[max(0, min(HIST_BINS - 1, index))] += 1
        if value >= 0.92:
            highlight_count += 1
    stats = cell_stats_from_values(values)
    stats["p10"] = percentile_from_hist(hist, len(values), 0.10)
    stats["p50"] = percentile_from_hist(hist, len(values), 0.50)
    stats["p90"] = percentile_from_hist(hist, len(values), 0.90)
    stats["p98"] = percentile_from_hist(hist, len(values), 0.98)
    stats["highlightFraction"] = highlight_count / len(values) if values else 0.0
    return stats


def extract_packed_stats(tiff, ifd0, raw_ifd, raw_offset):
    camera_to_profile = camera_to_prophoto(ifd0, raw_ifd, tiff)
    color_matrix = camera_to_profile[0] if camera_to_profile is not None else None
    width = tiff.values(raw_ifd, 256)[0]
    height = tiff.values(raw_ifd, 257)[0]
    black = tiff.values(raw_ifd, 50714)
    black_repeat = tiff.values(raw_ifd, 50713)
    white = (tiff.values(raw_ifd, 50717) or [65535])[0]
    baseline = (tiff.values(ifd0, 50730) or tiff.values(raw_ifd, 50730) or [0.0])[0]
    strip_offsets = tiff.values(raw_ifd, 273)
    strip_counts = tiff.values(raw_ifd, 279)
    cfa = tiff.values(raw_ifd, 33422)
    cfa_repeat = tiff.values(raw_ifd, 33421)
    app_cfa = app_cfa_pattern_from_dng(cfa, cfa_repeat)
    black_rggb = black_level_by_channel(black, black_repeat, app_cfa)

    raw_bytes = bytearray()
    for strip_offset, strip_count in zip(strip_offsets, strip_counts):
        raw_bytes += tiff.data[strip_offset:strip_offset + strip_count]
    row_stride = width * 2
    if len(raw_bytes) < row_stride * height:
        raise ValueError(f"raw bytes too small {len(raw_bytes)} expected {row_stride * height}")

    baseline_gain = 2.0 ** baseline
    grid_h, grid_v = app_grid_size(width, height)

    def normalized_raw_at(px, py):
        pos = py * row_stride + px * 2
        raw_value = unpack(tiff.endian, "H", raw_bytes, pos)
        black_at = black_level_for_pixel(black_rggb, app_cfa, px, py)
        return min(max((raw_value - black_at) / max(float(white) - black_at, 1.0), 0.0), 1.0)

    def sample_input_at(base_x, base_y):
        sums = [0.0, 0.0, 0.0]
        counts = [0, 0, 0]
        for dy in (0, 1):
            for dx in (0, 1):
                px = min(max(base_x + dx, 0), width - 1)
                py = min(max(base_y + dy, 0), height - 1)
                color = cfa_color_for_pixel(app_cfa, px, py)
                sums[color] += normalized_raw_at(px, py)
                counts[color] += 1
        fallback = sum(sums) / max(sum(counts), 1)
        red = sums[0] / counts[0] if counts[0] else fallback
        green = sums[1] / counts[1] if counts[1] else fallback
        blue = sums[2] / counts[2] if counts[2] else fallback
        if color_matrix is not None:
            red, green, blue = mat_vec(color_matrix, [red, green, blue])
        return weighted_rgb_input(red, green, blue, baseline_gain, BASE_INPUT_WEIGHTS)

    packed = []
    for cell_y in range(grid_v):
        for cell_x in range(grid_h):
            start_x = align_up_to_even((cell_x * width) // grid_h)
            end_x = min(align_down_to_even(((cell_x + 1) * width + grid_h - 1) // grid_h), width)
            start_y = align_up_to_even((cell_y * height) // grid_v)
            end_y = min(align_down_to_even(((cell_y + 1) * height + grid_v - 1) // grid_v), height)
            if end_x - start_x < 2 or end_y - start_y < 2:
                packed.extend([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0])
                continue
            values = []
            cell_width = max(end_x - start_x, 2)
            cell_height = max(end_y - start_y, 2)
            for local_y in range(SAMPLE_GRID):
                y = start_y + ((local_y * 2 + 1) * cell_height) // (SAMPLE_GRID * 2)
                y = min(max(y - (y & 1), start_y), max(start_y, end_y - 2))
                for local_x in range(SAMPLE_GRID):
                    x = start_x + ((local_x * 2 + 1) * cell_width) // (SAMPLE_GRID * 2)
                    x = min(max(x - (x & 1), start_x), max(start_x, end_x - 2))
                    values.append(sample_input_at(x, y))
            stats = cell_stats_from_values_like_app(values)
            packed.extend([
                stats["p10"],
                stats["p50"],
                stats["p90"],
                stats["p98"],
                stats["highlightFraction"],
                stats["sampleWeight"],
                stats["p995Input"],
                stats["p999Input"],
            ])
    return width, height, float(baseline), grid_h, grid_v, packed


def write_fixture(path, width, height, baseline, pgtm, packed_stats):
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("wb") as out:
        out.write(MAGIC)
        out.write(struct.pack(
            "<iifiiiii",
            width,
            height,
            baseline,
            pgtm["map_h"],
            pgtm["map_v"],
            pgtm["points_n"],
            len(packed_stats),
            len(pgtm["gains"]),
        ))
        out.write(struct.pack("<5f", *pgtm["weights"]))
        out.write(struct.pack("<f", float(pgtm["gamma"])))
        out.write(struct.pack(f"<{len(packed_stats)}f", *packed_stats))
        out.write(struct.pack(f"<{len(pgtm['gains'])}f", *pgtm["gains"]))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("dng", type=Path)
    parser.add_argument("fixture", type=Path)
    args = parser.parse_args()

    tiff = Tiff(args.dng)
    ifd0, ifds = ifds_for(tiff)
    raw_offset, raw_ifd = find_raw_ifd(tiff, ifds)
    google_pgtm = find_pgtm(tiff, ifds, TAG_PROFILE_GAIN_TABLE_MAP)
    if google_pgtm is None:
        raise ValueError("DNG does not contain Google ProfileGainTableMap")
    width, height, baseline, grid_h, grid_v, packed_stats = extract_packed_stats(
        tiff=tiff,
        ifd0=ifd0,
        raw_ifd=raw_ifd,
        raw_offset=raw_offset,
    )
    if (grid_h, grid_v) != (google_pgtm["map_h"], google_pgtm["map_v"]):
        raise ValueError(
            f"app grid {grid_h}x{grid_v} does not match PGTM grid "
            f"{google_pgtm['map_h']}x{google_pgtm['map_v']}"
        )
    write_fixture(args.fixture, width, height, baseline, google_pgtm, packed_stats)
    print(
        f"wrote {args.fixture} width={width} height={height} baseline={baseline:.6f} "
        f"grid={grid_h}x{grid_v}x{google_pgtm['points_n']} "
        f"stats={len(packed_stats)} gains={len(google_pgtm['gains'])}"
    )


if __name__ == "__main__":
    main()
