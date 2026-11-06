"""Measured denoise strength per pyramid level × image SNR (docs/photon-multiscale-denoise.md
section 5.1): the offline reference the per-image estimate is validated against.

For every denoise-input dump of a pipeline the working-domain pyramid is built and each Laplacian
sample of a flat region is divided by its model standard deviation (section 2.1, from the dump's
own params). The robust variance of these normalized samples is measured / model, the strength the
denoiser should apply. Each dump yields one value per level, at its image SNR (section 5.1, MGC
FinishRaw's definition): S / sqrt(m_s s_G S + m_r r_G), S the mean green signal measured like
MGC EstimateSnr (central 3/4, every 8th row, squared mean of sqrt, LSC removed), r_G / s_G the
green profile and m the nominal merge ratios. The table columns are MGC's tuning nodes 5 / 20 / 40,
interpolated across the dumps of a pipeline in ln SNR and held at the nearest dump outside their
range, so covering all three nodes needs captures near each (high, middle and low ISO).

Flat: the coarse base's luma gradient across one level-l pixel is below half the model sigma. No
gate on the band itself: a bound in model sigmas would discard exactly the noise that exceeds the
model and bias the result low. The median absolute deviation tolerates the remaining texture.

Usage:
  uv run --with numpy python -I tools/photon_denoise/strength_map.py <dump stem or .json> ...
Prints the table and writes photon_denoise_strength.json (pipeline -> snr, luma, chroma).
"""

from __future__ import annotations

import json
from dataclasses import replace
import sys
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent))
import compare_passes as cp  # noqa: E402
import photon_denoise as pd  # noqa: E402

F32 = np.float32
LEVELS = 5
SNR_NODES = (5.0, 20.0, 40.0)
NODES = len(SNR_NODES)
MAX_SAMPLES = 400_000
MIN_SAMPLES = 100


def robust_variance(z: np.ndarray) -> float:
    return float((1.4826 * np.median(np.abs(z - np.median(z)))) ** 2)


def image_snr(rgb: np.ndarray, params: pd.Params) -> tuple[float, float]:
    """(S, image SNR) as section 5.1 / MGC EstimateSnr."""
    gains = pd.lsc_gain(params.lsc, rgb.shape[1:], 0)
    green = rgb[1] if gains is None else rgb[1] / gains[1]
    h, w = green.shape
    crop = green[(h // 8) & -2:((h * 7) // 8) & -2:8, (w // 8) & -4:((w * 7) // 8) & -4]
    signal = float(np.mean(np.sqrt(np.maximum(crop.astype(np.float64), 0.0))) ** 2)
    variance = params.merge_shot * float(params.shot[1]) * signal + params.merge_read * float(params.read[1])
    return signal, (signal / np.sqrt(variance) if variance > 0 else 0.0)


def samples(stem: Path, rng: np.random.Generator) -> tuple[float, float, list[dict[str, np.ndarray]]]:
    """(S, image SNR, per level: normalized luma / chroma band samples of flat pixels)."""
    meta = json.loads(stem.with_suffix(".json").read_text())
    raw = np.fromfile(stem.with_suffix(".rgba16f"), dtype="<f2").reshape(meta["height"], meta["width"], 4)
    rgb = np.moveaxis(raw[..., :3].astype(F32), -1, 0)
    # Measure against the section 2.1 model alone: dumps from builds that already apply a strength
    # map carry it in their params.
    params = replace(cp.params_from_json(json.loads(Path(f"{stem}.params.json").read_text())),
                     strength_table=None, strength_cap_luma=None, strength_cap_chroma=None)
    signal, snr_image = image_snr(rgb, params)
    # Unexposed areas (black borders outside the default crop) hold zeros, not noise.
    dead = np.any(rgb <= 0, axis=0)
    gaussians = [pd.analyze0(rgb, params)]
    for _ in range(LEVELS):
        shape = gaussians[-1].shape[1:]
        gaussians.append(pd.down(gaussians[-1], ((shape[0] + 1) // 2, (shape[1] + 1) // 2)))
    out = []
    for level in range(LEVELS):
        fine, coarse = gaussians[level], gaussians[level + 1]
        lap, base, noise = pd.band(fine, coarse, coarse, level, params)
        cov, _ = pd.point_covariance(base, params, level)
        snr = base[0] / np.sqrt(np.maximum(cov[0, 0], 1e-30))
        gy, gx = np.gradient(base[0])
        sigma = np.sqrt(np.maximum(noise[0], 1e-30))
        # A level-l pixel is excluded when any input pixel within 8 level-l pixels is dead.
        step = 2 ** level
        h, w = lap.shape[1:]
        block = np.zeros((h, w), dtype=bool)
        padded = np.pad(dead, ((0, h * step - dead.shape[0]), (0, w * step - dead.shape[1])))
        block |= padded.reshape(h, step, w, step).any(axis=(1, 3))
        for _ in range(8):
            block = block | np.roll(block, 1, 0) | np.roll(block, -1, 0) | np.roll(block, 1, 1) | np.roll(block, -1, 1)
        flat = ((np.hypot(gx, gy) < 0.5 * sigma) & ~block & (noise[0] > 0)
                & (noise[1] > 0) & (snr > 0))
        idx = np.flatnonzero(flat)
        if idx.size > MAX_SAMPLES:
            idx = rng.choice(idx, MAX_SAMPLES, replace=False)
        z_luma = (lap[0] / sigma).ravel()[idx]
        z_cb = (lap[1] / np.sqrt(np.maximum(noise[1], 1e-30))).ravel()[idx]
        z_cr = (lap[2] / np.sqrt(np.maximum(noise[2], 1e-30))).ravel()[idx]
        out.append({"snr": snr.ravel()[idx], "luma": z_luma, "chroma": np.concatenate([z_cb, z_cr]),
                    "chroma_snr": np.concatenate([snr.ravel()[idx]] * 2)})
    return signal, snr_image, out


def measure(stems: list[Path]) -> dict:
    rng = np.random.default_rng(1)
    points = []  # (image SNR, luma [LEVELS], chroma [LEVELS], counts [LEVELS], stem, S)
    for stem in stems:
        signal, snr, levels = samples(stem, rng)
        luma, chroma, counts = [], [], []
        for d in levels:
            n = d["luma"].size
            luma.append(robust_variance(d["luma"]) if n >= MIN_SAMPLES else float("nan"))
            chroma.append(robust_variance(d["chroma"]) if n >= MIN_SAMPLES else float("nan"))
            counts.append(n)
        points.append((snr, luma, chroma, counts, stem.name, signal))
    points.sort(key=lambda p: p[0])
    x = np.log([max(p[0], 1e-6) for p in points])
    table = {"snr": list(SNR_NODES), "luma": [], "chroma": [], "dumps": [
        {"stem": p[4], "signal": p[5], "imageSnr": p[0], "luma": p[1], "chroma": p[2], "count": p[3]}
        for p in points]}
    # A level a dump has too few flat samples for is left out of that level's interpolation; a
    # level no dump measures takes the level above.
    for key, index in (("luma", 1), ("chroma", 2)):
        for level in range(LEVELS):
            values = np.array([p[index][level] for p in points])
            known = ~np.isnan(values)
            if known.any():
                table[key].append([float(np.interp(np.log(node), x[known], values[known])) for node in SNR_NODES])
            else:
                table[key].append(list(table[key][level - 1]))
    return table


def main() -> int:
    stems = [Path(a[:-5] if a.endswith(".json") else a) for a in sys.argv[1:]]
    if not stems:
        print(__doc__)
        return 2
    pipelines: dict[str, list[Path]] = {}
    for stem in stems:
        pipeline = json.loads(stem.with_suffix(".json").read_text())["pipeline"]
        pipelines.setdefault(pipeline, []).append(stem)
    result = {}
    for pipeline, group in pipelines.items():
        table = measure(group)
        result[pipeline] = table
        print(f"{pipeline} ({len(group)} dumps)")
        for d in table["dumps"]:
            print(f"  {d['stem']}: S {d['signal']:.4f}  image SNR {d['imageSnr']:.1f}")
            print("    luma   " + "  ".join(f"{v:7.3f}" for v in d["luma"]) + "    samples " + " ".join(map(str, d["count"])))
            print("    chroma " + "  ".join(f"{v:7.3f}" for v in d["chroma"]))
        for key in ("luma", "chroma"):
            print(f"  {key} at SNR " + " / ".join(f"{s:g}" for s in table["snr"]))
            for level in range(LEVELS):
                print(f"    L{level}  " + "  ".join(f"{v:7.3f}" for v in table[key][level]))
    Path("photon_denoise_strength.json").write_text(json.dumps(result, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
