"""Gate for implementation step 1 (docs/photon-multiscale-denoise.md section 14).

Synthesises noise that obeys the section 2 model exactly (independent per-source
Poisson-Gaussian variance, separable spatial correlation, demosaic-like channel
mixing), builds both Laplacian pyramids and checks every level, phase and
working channel against the predicted variance. Pass: all ratios in 1 +/- 0.03.

Run: uv run --with numpy python -I tools/photon_denoise/validate_propagation.py
"""

from __future__ import annotations

import sys
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent))
import noise_model as nm  # noqa: E402

SIZE = 2048
REALIZATIONS = 8
LEVELS = 5
TOLERANCE = 0.03


def filter_periodic(image: np.ndarray, taps: np.ndarray, axis: int) -> np.ndarray:
    radius = (taps.size - 1) // 2
    out = np.zeros_like(image)
    for i, weight in enumerate(taps):
        if weight != 0.0:
            out += weight * np.roll(image, radius - i, axis=axis)
    return out


def blur(image: np.ndarray, taps: np.ndarray) -> np.ndarray:
    return filter_periodic(filter_periodic(image, taps, 0), taps, 1)


def downsample(image: np.ndarray, taps: np.ndarray) -> np.ndarray:
    return blur(image, taps)[::2, ::2]


def upsample(image: np.ndarray, taps: np.ndarray) -> np.ndarray:
    up = np.zeros((image.shape[0] * 2, image.shape[1] * 2))
    up[::2, ::2] = image
    return blur(up, 2.0 * taps)


def laplacian_levels(image: np.ndarray, taps: np.ndarray, levels: int) -> list[np.ndarray]:
    bands = []
    g = image
    for _ in range(levels):
        coarse = downsample(g, taps)
        bands.append(g - upsample(coarse, taps))
        g = coarse
    bands.append(g)
    return bands


def phase_variance(band: np.ndarray) -> np.ndarray:
    return np.array([band[py::2, px::2].var() for py in (0, 1) for px in (0, 1)])


def main() -> int:
    rng = np.random.default_rng(20261028)
    # Demosaic-like spatial correlation, different per axis (A2: separable, not isotropic).
    fx = np.array([0.15, 0.7, 0.15])
    fy = np.array([0.1, 0.25, 0.5, 0.25, 0.1])
    w = nm.spectrum_frequencies()

    def power(taps: np.ndarray) -> np.ndarray:
        radius = (taps.size - 1) // 2
        response = sum(t * np.exp(-1j * w * (i - radius)) for i, t in enumerate(taps))
        return np.abs(response) ** 2

    px, py = power(fx), power(fy)
    # Normalise to unit mean; the amplitude goes to the coefficients.
    ax, ay = px.mean(), py.mean()
    px, py = px / ax, py / ay
    fx, fy = fx / np.sqrt(ax), fy / np.sqrt(ay)

    # Source-channel model and a demosaic-like mixing B: output_rgb = B @ source.
    state_mu = np.array([0.12, 0.25, 0.08])
    read = np.array([2.0e-5, 1.5e-5, 2.5e-5])
    shot = np.array([4.0e-4, 3.0e-4, 5.0e-4])
    quadratic = np.array([1.0e-4, 0.0, 2.0e-4])
    mix = np.array([[0.8, 0.2, 0.0], [0.1, 0.85, 0.05], [0.0, 0.25, 0.75]])
    transfer = np.stack([np.outer(mix[:, c], mix[:, c]) for c in range(3)])
    state = nm.NoiseState(read, shot, quadratic, transfer)
    white_balance = np.array([2.0, 1.0, 1.6])
    scale = 4096.0

    sigma = state.working_covariance(state_mu, white_balance, scale)
    tables = {
        "Y": nm.propagate(px, py, nm.LUMA_TAPS, LEVELS),
        "C": nm.propagate(px, py, nm.CHROMA_TAPS, LEVELS),
    }
    source_sigma = np.sqrt(state.source_variance(state_mu, np.ones(3)))
    to_working = scale * nm.YCC_FROM_RGB @ np.diag(white_balance) @ mix

    sums = {key: np.zeros((LEVELS, 4, 3, 3)) for key in tables}
    for _ in range(REALIZATIONS):
        source = np.empty((3, SIZE, SIZE))
        for c in range(3):
            white = rng.standard_normal((SIZE, SIZE))
            source[c] = source_sigma[c] * filter_periodic(filter_periodic(white, fy, 0), fx, 1)
        working = np.einsum("ij,jyx->iyx", to_working, source)
        for key, taps in (("Y", nm.LUMA_TAPS), ("C", nm.CHROMA_TAPS)):
            bands = [laplacian_levels(working[i], taps, LEVELS) for i in range(3)]
            for level in range(LEVELS):
                for phase, (py_, px_) in enumerate(((0, 0), (0, 1), (1, 0), (1, 1))):
                    stack = np.stack([b[level][py_::2, px_::2].ravel() for b in bands])
                    sums[key][level, phase] += np.cov(stack)

    worst = 0.0
    print("level phase  channel  check")
    for key, channels in (("Y", [(0, 0)]), ("C", [(1, 1), (2, 2), (1, 2)])):
        table = tables[key]
        for level in range(LEVELS):
            for phase in range(4):
                measured = sums[key][level, phase] / REALIZATIONS
                kappa = table.kappa_laplacian[level, phase]
                for i, j in channels:
                    predicted = kappa * sigma[i, j]
                    name = "YCbCr"[0] if i == 0 else ["", "Cb", "Cr"][i] + ("" if i == j else "-Cr")
                    if i == j:
                        deviation = measured[i, j] / predicted - 1.0
                        label = f"ratio {1.0 + deviation:.4f}"
                    else:
                        # A small cross-covariance has an unstable ratio; compare it in
                        # correlation-coefficient units instead.
                        scale_ij = kappa * np.sqrt(sigma[i, i] * sigma[j, j])
                        deviation = (measured[i, j] - predicted) / scale_ij
                        label = f"rho pred {predicted / scale_ij:+.4f} err {deviation:+.4f}"
                    worst = max(worst, abs(deviation))
                    print(f"{key}{level}    {phase}     {name:<6}  {label}")
    print(f"worst deviation {worst:.4f} (tolerance {TOLERANCE})")
    return 0 if worst <= TOLERANCE else 1


if __name__ == "__main__":
    raise SystemExit(main())
