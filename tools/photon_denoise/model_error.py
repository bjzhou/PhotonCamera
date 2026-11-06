"""Model error of the profile x white-noise model (docs/photon-multiscale-denoise.md section 12.1).

Two denoise-input dumps of the same static scene with identical settings (tripod; for merge
pipelines two independent merges) are decomposed with the denoiser's pyramid. Their Laplacian
difference D_l = (L_l^A - L_l^B) / sqrt(2) cancels the scene and leaves one image's noise; its
variance per (component, level, phase, luma bin) is compared with the model of section 2.1.
The ratio is recorded in section 13; it never enters the algorithm.

Misalignment guard: the same-level Gaussian difference G_l^A - G_l^B is noise only when the
pair is aligned. Pixels where any component exceeds GUARD_SIGMAS robust standard deviations of
its luma bin (MAD, independent of the model under test) are excluded, dilated by 3 pixels.

Usage:
  uv run --with numpy python -I tools/photon_denoise/model_error.py A.json B.json [C.json D.json ...]
  uv run --with numpy python -I tools/photon_denoise/model_error.py --self-test
Each consecutive pair of dumps is one measurement; a dump is <stem>.{json,rgba16f,params.json}.
"""

from __future__ import annotations

import json
import sys
import warnings
from dataclasses import dataclass
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent))
import compare_passes as cp  # noqa: E402
import noise_model  # noqa: E402
import photon_denoise as pd  # noqa: E402

F32 = np.float32
BIN_COUNT = 12
BIN_MIN = 2.0 ** -10
BIN_MAX = 1.0
MID_GREY = 0.18
GUARD_SIGMAS = 4.0
GUARD_DILATION = 3
MIN_SAMPLES = 400
SELF_TEST_MIN_SIGNAL = 2.0 ** -7
COMPONENTS = ("Y", "Cb", "Cr")


@dataclass
class Dump:
    rgb: np.ndarray
    meta: dict
    params: pd.Params


def load(path: str) -> Dump:
    stem = Path(path)
    stem = stem.with_suffix("") if stem.suffix == ".json" else stem
    meta = json.loads(stem.with_suffix(".json").read_text())
    raw = np.fromfile(stem.with_suffix(".rgba16f"), dtype="<f2").reshape(meta["height"], meta["width"], 4)
    params = cp.params_from_json(json.loads(Path(f"{stem}.params.json").read_text()))
    return Dump(np.moveaxis(raw[..., :3].astype(F32), -1, 0), meta, params)


def pyramid(rgb: np.ndarray, params: pd.Params) -> list[np.ndarray]:
    sizes = pd.level_sizes(rgb.shape[1], rgb.shape[2], params.levels)
    gaussians = [pd.analyze0(rgb, params)]
    for level in range(params.levels):
        gaussians.append(pd.down(gaussians[-1], sizes[level + 1]))
    return gaussians


def luma_bins(mu: np.ndarray) -> np.ndarray:
    out = np.full(mu.shape, -1, dtype=np.int64)
    valid = (mu >= BIN_MIN) & (mu < BIN_MAX)
    t = (np.log2(mu[valid]) - np.log2(BIN_MIN)) / (np.log2(BIN_MAX) - np.log2(BIN_MIN))
    out[valid] = np.minimum((t * BIN_COUNT).astype(np.int64), BIN_COUNT - 1)
    return out


def bin_centres() -> np.ndarray:
    edges = np.exp2(np.linspace(np.log2(BIN_MIN), np.log2(BIN_MAX), BIN_COUNT + 1))
    return np.sqrt(edges[:-1] * edges[1:])


def _dilate(mask: np.ndarray, radius: int) -> np.ndarray:
    out = mask.copy()
    for dy in range(-radius, radius + 1):
        for dx in range(-radius, radius + 1):
            out |= np.roll(np.roll(mask, dy, axis=0), dx, axis=1)
    return out


@dataclass
class LevelError:
    ratio: np.ndarray          # [3, 4 phases, bins] measured / model variance (nan when too few samples)
    samples: np.ndarray        # [4, bins]
    correlation: np.ndarray    # [bins] measured Cb-Cr correlation
    model_correlation: np.ndarray
    excluded: float            # fraction removed by the misalignment guard


def measure_pair(a: Dump, b: Dump) -> list[LevelError]:
    if a.rgb.shape != b.rgb.shape:
        raise ValueError("pair sizes differ")
    params = a.params
    ga, gb = pyramid(a.rgb, params), pyramid(b.rgb, params)
    results = []
    for level in range(params.levels):
        shape = ga[level].shape[1:]
        coarse_mean = F32(0.5) * (ga[level + 1] + gb[level + 1])
        base = pd.up(coarse_mean, shape)
        diff = ((ga[level] - pd.up(ga[level + 1], shape)) - (gb[level] - pd.up(gb[level + 1], shape))) / F32(np.sqrt(2))
        _, _, noise = pd.band(ga[level], ga[level + 1], coarse_mean, level, params)  # model at base
        mu = base[0] / F32(params.scale)
        bins = luma_bins(mu)

        # Same-level Gaussian difference: a misaligned edge survives here, while the coarser
        # level smooths a 1-pixel shift below detection. Truncating pure noise at 4 sigma
        # removes 6e-5 of its samples and 0.07% of its variance, below the sampling error.
        level_diff = ga[level] - gb[level]
        flagged = np.zeros(shape, dtype=bool)
        for b_index in range(BIN_COUNT):
            m = bins == b_index
            if m.sum() < MIN_SAMPLES:
                continue
            for k in range(3):
                values = level_diff[k][m]
                centre = np.median(values)
                sigma = 1.4826 * np.median(np.abs(values - centre))
                flagged[m] |= np.abs(values - centre) > GUARD_SIGMAS * max(sigma, 1e-30)
        excluded = _dilate(flagged, GUARD_DILATION)
        valid = (bins >= 0) & ~excluded & (noise[0] > 0)

        yy, xx = np.mgrid[0:shape[0], 0:shape[1]]
        phase = (yy & 1) * 2 + (xx & 1)
        ratio = np.full((3, 4, BIN_COUNT), np.nan)
        samples = np.zeros((4, BIN_COUNT))
        correlation = np.full(BIN_COUNT, np.nan)
        model_correlation = np.full(BIN_COUNT, np.nan)
        for b_index in range(BIN_COUNT):
            in_bin = valid & (bins == b_index)
            for p in range(4):
                m = in_bin & (phase == p)
                n = int(m.sum())
                samples[p, b_index] = n
                if n < MIN_SAMPLES:
                    continue
                for k in range(3):
                    ratio[k, p, b_index] = np.mean(diff[k][m] ** 2) / np.mean(noise[k][m])
            if in_bin.sum() >= MIN_SAMPLES:
                cb, cr = diff[1][in_bin], diff[2][in_bin]
                correlation[b_index] = np.mean(cb * cr) / np.sqrt(np.mean(cb * cb) * np.mean(cr * cr))
                model_correlation[b_index] = np.mean(noise[3][in_bin]) / np.sqrt(
                    np.mean(noise[1][in_bin]) * np.mean(noise[2][in_bin]))
        results.append(LevelError(ratio, samples, correlation, model_correlation, float(excluded.mean())))
    return results


def _mid_grey(values: np.ndarray, samples: np.ndarray) -> float:
    """Sample-weighted value of the measured bin nearest mid-grey; nan when none is measured."""
    centres = bin_centres()
    measured = np.isfinite(values)
    if not measured.any():
        return float("nan")
    nearest = np.argmin(np.where(measured, np.abs(np.log(centres) - np.log(MID_GREY)), np.inf))
    return float(values[nearest])


def report(label: str, a: Dump, errors: list[LevelError]) -> list[str]:
    with warnings.catch_warnings():
        # Bins without enough samples are nan by design; their means are nan as well.
        warnings.simplefilter("ignore", RuntimeWarning)
        return _report(label, a, errors)


def _report(label: str, a: Dump, errors: list[LevelError]) -> list[str]:
    centres = bin_centres()
    print(f"\n{label}: {a.meta['pipeline']} {a.meta['width']}x{a.meta['height']} iso={a.meta['iso']} "
          f"frames={a.meta['frameCount']} levels={len(errors)}")
    rows = []
    for k, name in enumerate(COMPONENTS):
        print(f"  {name}: measured/model per level (phase mean), luma bins " +
              " ".join(f"{c:.3g}" for c in centres))
        mids = []
        for level, error in enumerate(errors):
            per_bin = np.nanmean(error.ratio[k], axis=0) if np.isfinite(error.ratio[k]).any() else \
                np.full(BIN_COUNT, np.nan)
            mids.append(_mid_grey(per_bin, error.samples.sum(axis=0)))
            cells = " ".join("  -  " if not np.isfinite(v) else f"{v:5.2f}" for v in per_bin)
            phases = np.nanmean(error.ratio[k], axis=1)
            print(f"    L{level} [{cells}]  phases={np.round(phases, 2).tolist()} excluded={error.excluded:.1%}")
        rows.append((name, mids))
    corr = [(_mid_grey(e.correlation, e.samples.sum(axis=0)), _mid_grey(e.model_correlation, e.samples.sum(axis=0)))
            for e in errors]
    print("  Cb-Cr correlation at mid-grey per level (measured / model): " +
          ", ".join(f"L{l} {m:+.2f}/{p:+.2f}" for l, (m, p) in enumerate(corr)))
    lines = []
    for name, mids in rows:
        cells = " / ".join("—" if not np.isfinite(v) else f"{v:.2f}" for v in mids)
        corr_cell = "; ".join(f"L{l} {m:+.2f}/{p:+.2f}" for l, (m, p) in enumerate(corr)) if name == "Cb" else ""
        excluded = max(e.excluded for e in errors)
        lines.append(f"| {a.meta['pipeline']} | {a.meta['iso']} | {name} | {cells} | {corr_cell} | "
                     f"帧数 {a.meta['frameCount']}，错位剔除 ≤{excluded:.1%} |")
    return lines


def self_test() -> bool:
    """White noise satisfies the model exactly: every ratio must be within max(5%, 4 standard errors).

    B also contains a moving object (a bright patch absent from A): the guard must keep the
    ratios unbiased. A sub-pixel or 1-pixel global shift is not emulated: its residue is of the
    order of the noise per pixel, no statistical guard can separate it, and the capture protocol
    (tripod, remote shutter) has to exclude it.
    """
    rng = np.random.default_rng(11)
    h, w = 1536, 2048
    yy, xx = np.mgrid[0:h, 0:w]
    luma = np.exp2(-8.0 + 7.5 * xx / w) * (0.9 + 0.1 * np.sin(yy / 23.0))
    wb = np.array([2.0, 1.0, 1.6], dtype=F32)
    clean = np.stack([luma * 1.05, luma, luma * 0.95]).astype(F32) / wb[:, None, None]
    texture = 1 + 0.3 * (np.sin(xx / 3.1) * np.sin(yy / 2.7) > 0.6)
    clean = (clean * texture[None]).astype(F32)
    read = np.array([2e-5, 1.5e-5, 2.5e-5], dtype=F32)
    shot = np.array([3e-4, 2.5e-4, 3.5e-4], dtype=F32)

    def noisy(scene: np.ndarray) -> np.ndarray:
        return pd.f16(scene + np.sqrt(read[:, None, None] + shot[:, None, None] * scene) *
                      rng.standard_normal(scene.shape).astype(F32))

    moved = clean.copy()
    moved[:, h // 4: h // 4 + 120, w // 3: w // 3 + 200] *= 2.5
    levels = 5
    kappa = noise_model.Kappa0.build(levels, levels)
    params = pd.Params(4096.0, wb, read, shot, 1.0, 1.0, np.ones((levels, 3), dtype=F32), kappa.luma.astype(F32),
                       kappa.chroma.astype(F32), levels, levels, np.ones(levels, dtype=F32),
                       np.full(levels, 0.2, dtype=F32), np.full(levels, 2.5, dtype=F32), (16.919, 27.877),
                       (5.991, 13.816), 3, 4.0, 4.0, 1.0, 1.0, None)
    meta = {"pipeline": "SELF_TEST", "width": w, "height": h, "iso": 0, "frameCount": 1}
    errors = measure_pair(Dump(noisy(clean), meta, params), Dump(noisy(moved), meta, params))
    report("self-test", Dump(clean, meta, params), errors)
    # Allowed deviation per bin: 5%, or 4 standard errors of a variance estimate from n samples.
    # Bins below SELF_TEST_MIN_SIGNAL are reported but not judged: there the coarse base's own
    # noise exceeds the signal and the model's max(mu, 0) raises the predicted variance. That is
    # a genuine model error of the denoiser in the deepest shadows, not an error of this tool.
    judged = bin_centres() >= SELF_TEST_MIN_SIGNAL
    worst = 0.0
    corr_worst = 0.0
    for e in errors:
        tolerance = np.maximum(0.05, 4 * np.sqrt(2 / np.maximum(e.samples, 1)))
        excess = np.abs(e.ratio - 1)[:, :, judged] / tolerance[None][:, :, judged]
        worst = max(worst, float(np.nanmax(excess)) if np.isfinite(excess).any() else 0.0)
        n_bin = e.samples.sum(axis=0)
        corr_excess = (np.abs(e.correlation - e.model_correlation)
                       / np.maximum(0.03, 4 / np.sqrt(np.maximum(n_bin, 1))))[judged]
        corr_worst = max(corr_worst, float(np.nanmax(corr_excess)) if np.isfinite(corr_excess).any() else 0.0)
    ok = worst <= 1.0 and corr_worst <= 1.0
    print(f"self-test worst deviation {worst:.3f}x tolerance, Cb-Cr correlation {corr_worst:.3f}x tolerance: "
          f"{'PASS' if ok else 'FAIL'}")
    return ok


def main() -> int:
    if sys.argv[1:] == ["--self-test"]:
        return 0 if self_test() else 1
    paths = sys.argv[1:]
    if len(paths) < 2 or len(paths) % 2:
        print(__doc__)
        return 2
    rows = []
    for i in range(0, len(paths), 2):
        a, b = load(paths[i]), load(paths[i + 1])
        rows += report(f"{Path(paths[i]).name} vs {Path(paths[i + 1]).name}", a, measure_pair(a, b))
    print("\n§13 rows:")
    print("\n".join(rows))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
