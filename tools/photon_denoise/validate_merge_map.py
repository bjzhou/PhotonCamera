"""Gate of the section 2.2 per-pixel merge variance map (docs/photon-multiscale-denoise.md, step 9).

Synthetic merge: N frames of a flat signal with per-frame exposure ratios, global weights and
RAW/4 acceptance maps (a moving object rejected in most frames, soft edges). Each realization is
merged as y = sum w_i y_i / sum w_i with w_i(p) = g_i a_i(p), the acceptance sampled bilinearly at
the pixel, as the merge shaders do. The map is built by a numpy mirror of PhotonMergeNoise's two
kernels (RAW/4 sums, RAW/32 mean of ratios) and compared, per RAW/32 cell, with the measured
variance of the merged pixels. The signal is flat, so a cell's mean variance is linear in m and the
cell mean is the exact prediction.

Usage: uv run --with numpy python -I tools/photon_denoise/validate_merge_map.py
"""

from __future__ import annotations

import numpy as np

GRID_STEP = 4
MAP_CELLS = 8
TOLERANCE = 0.03


def bilinear(texture: np.ndarray, u: np.ndarray, v: np.ndarray) -> np.ndarray:
    """GL LINEAR sampling with clamp to edge at normalized (u, v)."""
    h, w = texture.shape
    x = np.clip(u * w - 0.5, 0, w - 1)
    y = np.clip(v * h - 0.5, 0, h - 1)
    x0, y0 = np.floor(x).astype(int), np.floor(y).astype(int)
    x1, y1 = np.minimum(x0 + 1, w - 1), np.minimum(y0 + 1, h - 1)
    fx, fy = x - x0, y - y0
    top = texture[y0, x0] * (1 - fx) + texture[y0, x1] * fx
    bottom = texture[y1, x0] * (1 - fx) + texture[y1, x1] * fx
    return top * (1 - fy) + bottom * fy


def merge_map(acceptance: list[np.ndarray | None], weights, read_ratios, shot_ratios, width, height,
              output_scale: float) -> np.ndarray:
    """Mirror of PhotonMergeNoise ACCUMULATE + REDUCE: [map_h, map_w, 2] of (m_r, m_s)."""
    gw, gh = -(-width // GRID_STEP), -(-height // GRID_STEP)
    gy, gx = np.mgrid[0:gh, 0:gw]
    u, v = (gx + 0.5) / gw, (gy + 0.5) / gh
    sums = np.zeros((3, gh, gw))
    for a_tex, g, rr, rs in zip(acceptance, weights, read_ratios, shot_ratios):
        a = np.ones((gh, gw)) if a_tex is None else np.clip(bilinear(a_tex, u, v), 0, 1)
        w = g * a
        sums += np.stack([w, w * w * rr, w * w * rs])
    ratio = np.where(sums[0] > 0, sums[1:] / np.maximum(sums[0], 1e-30) ** 2, 1.0)
    mw, mh = -(-gw // MAP_CELLS), -(-gh // MAP_CELLS)
    out = np.zeros((mh, mw, 2))
    for j in range(mh):
        for i in range(mw):
            block = ratio[:, j * MAP_CELLS:(j + 1) * MAP_CELLS, i * MAP_CELLS:(i + 1) * MAP_CELLS]
            out[j, i] = block.reshape(2, -1).mean(axis=1)
    return out * np.array([output_scale ** 2, output_scale])


def main() -> int:
    rng = np.random.default_rng(5)
    width, height = 512, 384
    frames = 6
    signal = 0.2
    read, shot = 4e-5, 6e-4
    exposure = np.array([1.0, 1.0, 0.8, 1.25, 1.0, 0.9])       # frame exposure scale to reference
    weights = np.array([1.0, 0.9, 0.7, 1.0, 0.8, 0.6])           # global weights g_i
    read_ratios = exposure ** 2                                   # read variance scales with gain²
    shot_ratios = exposure
    output_scale = 0.8
    gw, gh = width // GRID_STEP, height // GRID_STEP
    yy, xx = np.mgrid[0:gh, 0:gw]
    acceptance: list[np.ndarray | None] = [None]                  # reference: no weight texture
    for i in range(1, frames):
        # Moving disc: rejected in this frame along its path, soft 6-cell edge.
        cx, cy = gw * (0.3 + 0.08 * i), gh * 0.5
        d = np.hypot(xx - cx, yy - cy)
        a = np.clip((d - 14) / 6, 0, 1)
        # A region rejected in every alternate frame: only the reference remains there.
        a = np.minimum(a, np.clip((np.hypot(xx - gw * 0.15, yy - gh * 0.25) - 10) / 6, 0, 1))
        a = a * (0.9 if i % 2 else 1.0)                           # partial acceptance elsewhere
        acceptance.append(a.astype(np.float32))
    predicted = merge_map(acceptance, weights, read_ratios, shot_ratios, width, height, output_scale)

    py, px = np.mgrid[0:height, 0:width]
    u, v = (px + 0.5) / width, (py + 0.5) / height
    w = np.stack([weights[i] * (np.ones((height, width)) if acceptance[i] is None
                                else np.clip(bilinear(acceptance[i], u, v), 0, 1)) for i in range(frames)])
    total = w.sum(axis=0)
    total = np.where(total > 0, total, 1.0)
    realizations = 160
    acc = np.zeros((height, width))
    for _ in range(realizations):
        # Frame i at reference exposure: read variance read·ρ_r, shot variance shot·ρ_s·signal.
        noise = rng.standard_normal((frames, height, width)) * np.sqrt(
            read * read_ratios[:, None, None] + shot * shot_ratios[:, None, None] * signal)
        merged = output_scale * (w * noise).sum(axis=0) / total
        acc += merged ** 2
    measured = acc / realizations

    cell = GRID_STEP * MAP_CELLS
    worst = 0.0
    rows = []
    for j in range(predicted.shape[0]):
        for i in range(predicted.shape[1]):
            block = measured[j * cell:(j + 1) * cell, i * cell:(i + 1) * cell]
            # The output scale e applies to the signal too: shot variance at the output is
            # e·m_s·shot·(output signal) with output signal = e·signal, read e²·m_r·read.
            model = predicted[j, i, 0] * read + predicted[j, i, 1] * shot * (output_scale * signal)
            ratio = block.mean() / model
            worst = max(worst, abs(ratio - 1))
            rows.append(ratio)
    ratios = np.array(rows)
    nominal = (weights ** 2 * read_ratios).sum() / weights.sum() ** 2
    print(f"map {predicted.shape[1]}x{predicted.shape[0]} m_r range {predicted[..., 0].min():.4f}.."
          f"{predicted[..., 0].max():.4f} (nominal {nominal * output_scale ** 2:.4f}, "
          f"single frame {output_scale ** 2:.4f})")
    print(f"measured/model per cell: mean {ratios.mean():.4f} min {ratios.min():.4f} max {ratios.max():.4f}")
    ok = worst <= TOLERANCE
    print(f"worst deviation {worst * 100:.2f}% (tolerance {TOLERANCE * 100:.0f}%): {'PASS' if ok else 'FAIL'}")
    return 0 if ok else 1


if __name__ == "__main__":
    raise SystemExit(main())
