"""Gate for implementation step 1 (docs/photon-multiscale-denoise.md section 16).

White noise satisfies the profile x white-noise model exactly, so this checks the
implementation: independent per-channel Poisson-Gaussian noise (profile coefficients),
optionally merged from frames with unequal weights and exposure ratios, optionally scaled
by residual ratios, goes through white balance, the working YCbCr matrix and both pyramids.
Every level and phase is compared with level_noise(). Pass: Y/Cb/Cr variance ratios and
the Cb-Cr covariance (correlation units) within 0.03.

Run: uv run --with numpy python -I tools/photon_denoise/validate_model.py
"""

from __future__ import annotations

import sys
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent))
import noise_model as nm  # noqa: E402
from validate_propagation import laplacian_levels  # noqa: E402

SIZE = 2048
LEVELS = 5
REALIZATIONS = 6
TOLERANCE = 0.03
SCALE = 4096.0
WHITE_BALANCE = np.array([2.0, 1.0, 1.6])
READ = np.array([4.0e-6, 3.0e-6, 5.0e-6])
SHOT = np.array([2.0e-4, 1.5e-4, 2.5e-4])

CASES = {
    "single": dict(weights=np.array([1.0]), read_ratios=np.array([1.0]), shot_ratios=np.array([1.0]),
                   residual=None),
    "merge4": dict(weights=np.array([1.0, 0.8, 0.6, 0.4]), read_ratios=np.array([1.0, 1.2, 0.9, 1.5]),
                   shot_ratios=np.array([1.0, 1.1, 0.95, 1.3]), residual=None),
    "residual": dict(weights=np.array([1.0]), read_ratios=np.array([1.0]), shot_ratios=np.array([1.0]),
                     residual=np.array([0.5, 0.3, 0.2])),
}
SIGNALS = (np.array([0.02, 0.05, 0.03]), np.array([0.3, 0.2, 0.12]))


def simulate(rng: np.random.Generator, mu: np.ndarray, case: dict) -> np.ndarray:
    """Merged camera-RGB noise field [3, H, W] (signal removed: it carries no noise)."""
    weights = case["weights"]
    merged = np.zeros((3, SIZE, SIZE))
    for w, rr, sr in zip(weights, case["read_ratios"], case["shot_ratios"]):
        variance = READ * rr + SHOT * sr * mu
        merged += w * np.sqrt(variance)[:, None, None] * rng.standard_normal((3, SIZE, SIZE))
    return merged / weights.sum()


def main() -> int:
    rng = np.random.default_rng(20261028)
    kappa0 = nm.Kappa0.build(LEVELS, LEVELS)
    worst = 0.0
    for name, case in CASES.items():
        merge = nm.MergeRatio.of(case["weights"], case["read_ratios"], case["shot_ratios"])
        for mu in SIGNALS:
            point = nm.working_point_covariance(READ, SHOT, mu, WHITE_BALANCE, SCALE, merge)
            sums = np.zeros((LEVELS, 4, 3, 3))
            for _ in range(REALIZATIONS):
                noise = simulate(rng, mu, case)
                ycc = np.einsum("ij,jyx->iyx", SCALE * nm.YCC_FROM_RGB @ np.diag(WHITE_BALANCE), noise)
                if case["residual"] is not None:
                    ycc *= np.sqrt(case["residual"])[:, None, None]
                luma = laplacian_levels(ycc[0], nm.LUMA_TAPS, LEVELS)
                cb = laplacian_levels(ycc[1], nm.CHROMA_TAPS, LEVELS)
                cr = laplacian_levels(ycc[2], nm.CHROMA_TAPS, LEVELS)
                for level in range(LEVELS):
                    for phase, (py, px) in enumerate(((0, 0), (0, 1), (1, 0), (1, 1))):
                        y = luma[level][py::2, px::2].ravel()
                        b = cb[level][py::2, px::2].ravel()
                        r = cr[level][py::2, px::2].ravel()
                        sums[level, phase, 0, 0] += y.var()
                        sums[level, phase, 1:, 1:] += np.cov(np.stack([b, r]))
            case_worst = 0.0
            where = ""
            for level in range(LEVELS):
                for phase in range(4):
                    measured = sums[level, phase] / REALIZATIONS
                    model = nm.level_noise(point, kappa0, level, phase, case["residual"])
                    checks = {
                        "Y": measured[0, 0] / model.luma_variance - 1.0,
                        "Cb": measured[1, 1] / model.chroma_covariance[0, 0] - 1.0,
                        "Cr": measured[2, 2] / model.chroma_covariance[1, 1] - 1.0,
                        "Cb-Cr": (measured[1, 2] - model.chroma_covariance[0, 1])
                        / np.sqrt(model.chroma_covariance[0, 0] * model.chroma_covariance[1, 1]),
                    }
                    for label, deviation in checks.items():
                        if abs(deviation) > case_worst:
                            case_worst = abs(deviation)
                            where = f"{label} L{level} p{phase} {deviation:+.4f}"
            worst = max(worst, case_worst)
            print(f"{name:<9} mu={mu} m=({merge.read:.4f},{merge.shot:.4f}) worst={case_worst:.4f} at {where}")
    print(f"worst deviation {worst:.4f} (tolerance {TOLERANCE}) {'PASS' if worst <= TOLERANCE else 'FAIL'}")
    return 0 if worst <= TOLERANCE else 1


if __name__ == "__main__":
    raise SystemExit(main())
