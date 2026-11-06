"""Reference implementation of PhotonNoiseState and pyramid noise propagation.

This module is the executable specification for docs/photon-multiscale-denoise.md
sections 2 and 5. The Kotlin port (raw/denoise/PhotonNoiseState.kt and
PhotonNoisePropagation.kt) must reproduce these tables.

Conventions
-----------
* A spatial spectrum is 128 half-bin-centred samples of the 1D power spectrum,
  omega_k = (k + 0.5) * 2*pi / 128 - pi (the convention already used by
  DemosaicNoiseSpectrum). The 2D spectrum is the outer product P_x (x) P_y.
* The autocorrelation is r(d) = mean_k P(omega_k) cos(omega_k d), so r(0) =
  mean(P). A spectrum normalised to unit mean carries no amplitude; a
  non-normalised spectrum keeps its amplitude in r(0).
* Separable spectrum + separable filters => all propagation factorises into
  1D quantities per axis.
"""

from __future__ import annotations

from dataclasses import dataclass

import numpy as np

SPECTRUM_SIZE = 128
MAX_LAG = 63

LUMA_TAPS = np.array([-1.0, 0.0, 9.0, 16.0, 9.0, 0.0, -1.0]) / 32.0
CHROMA_TAPS = np.array([1.0, 4.0, 6.0, 4.0, 1.0]) / 16.0

# Working YCbCr: Y = (R + 2G + B) / 4, Cb = B - G, Cr = R - G.
YCC_FROM_RGB = np.array(
    [
        [0.25, 0.5, 0.25],
        [0.0, -1.0, 1.0],
        [1.0, -1.0, 0.0],
    ]
)


def spectrum_frequencies() -> np.ndarray:
    k = np.arange(SPECTRUM_SIZE, dtype=np.float64)
    return (k + 0.5) * 2.0 * np.pi / SPECTRUM_SIZE - np.pi


def autocorrelation(spectrum: np.ndarray, max_lag: int = MAX_LAG) -> np.ndarray:
    """Autocorrelation r(d) for d = -max_lag..max_lag (index d + max_lag)."""
    p = np.asarray(spectrum, dtype=np.float64)
    if p.shape != (SPECTRUM_SIZE,) or np.any(~np.isfinite(p)) or np.any(p < 0):
        raise ValueError("spectrum must be 128 finite non-negative samples")
    lags = np.arange(-max_lag, max_lag + 1, dtype=np.float64)
    return (p[None, :] * np.cos(np.outer(lags, spectrum_frequencies()))).mean(axis=1)


def _lag(r: np.ndarray, d: int) -> float:
    half = (r.size - 1) // 2
    return float(r[d + half]) if -half <= d <= half else 0.0


def decimate_autocorrelation(r: np.ndarray, taps: np.ndarray) -> np.ndarray:
    """r_{l+1}(d) = sum_m (h * h~)(m) r_l(2d - m): exact for G_{l+1} = down2(h * G_l)."""
    hh = np.convolve(taps, taps[::-1])
    hh_radius = (hh.size - 1) // 2
    half = (r.size - 1) // 2
    out = np.zeros_like(r)
    for d in range(-half, half + 1):
        acc = 0.0
        for i, weight in enumerate(hh):
            acc += weight * _lag(r, 2 * d - (i - hh_radius))
        out[d + half] = acc
    return out


def phase_kernel(taps: np.ndarray, phase: int) -> dict[int, float]:
    """a_phi(e): weight of G_l(p + e) in (up2(2h * down2(h * G_l)))(p), p = phase mod 2.

    G_{l+1}(q) sits at G_l position 2q, so j = p - 2q has the parity of p and
    a_phi(e) = sum_{j = phi mod 2} u(j) h(-j - e), u = 2h.
    """
    radius = (taps.size - 1) // 2
    kernel: dict[int, float] = {}
    for j in range(-radius, radius + 1):
        if (j - phase) % 2 != 0:
            continue
        u = 2.0 * taps[j + radius]
        for i in range(-radius, radius + 1):
            # h index = -j - e  =>  e = -j - i
            e = -j - i
            kernel[e] = kernel.get(e, 0.0) + u * taps[i + radius]
    return kernel


def laplacian_axis_terms(r: np.ndarray, taps: np.ndarray, phase: int) -> tuple[float, float, float]:
    """Per-axis (A0, A1, A2) with Var[L] = A0x A0y - 2 A1x A1y + A2x A2y."""
    a = phase_kernel(taps, phase)
    a0 = _lag(r, 0)
    a1 = sum(w * _lag(r, e) for e, w in a.items())
    a2 = sum(wi * wj * _lag(r, ei - ej) for ei, wi in a.items() for ej, wj in a.items())
    return a0, a1, a2


@dataclass(frozen=True)
class PropagationTable:
    """kappa_gaussian[l]: Var[G_l] / sigma^2 ; kappa_laplacian[l, phase]: Var[L_l] / sigma^2.

    phase = (y & 1) * 2 + (x & 1). sigma^2 is the unit-correlation variance of the
    level-0 signal; a non-normalised spectrum keeps its amplitude inside kappa.
    """

    kappa_gaussian: np.ndarray
    kappa_laplacian: np.ndarray


def propagate(spectrum_x: np.ndarray, spectrum_y: np.ndarray, taps: np.ndarray, levels: int) -> PropagationTable:
    rx = autocorrelation(spectrum_x)
    ry = autocorrelation(spectrum_y)
    kappa_g = np.zeros(levels + 1)
    kappa_l = np.zeros((levels, 4))
    for level in range(levels + 1):
        kappa_g[level] = _lag(rx, 0) * _lag(ry, 0)
        if level == levels:
            break
        tx = [laplacian_axis_terms(rx, taps, phase) for phase in (0, 1)]
        ty = [laplacian_axis_terms(ry, taps, phase) for phase in (0, 1)]
        for py in (0, 1):
            for px in (0, 1):
                a0x, a1x, a2x = tx[px]
                a0y, a1y, a2y = ty[py]
                kappa_l[level, py * 2 + px] = a0x * a0y - 2.0 * a1x * a1y + a2x * a2y
        rx = decimate_autocorrelation(rx, taps)
        ry = decimate_autocorrelation(ry, taps)
    return PropagationTable(kappa_g, kappa_l)


@dataclass(frozen=True)
class NoiseState:
    """Section 2.1 model in normalised, un-white-balanced camera RGB.

    read/shot/quadratic: per CFA source channel R, G, B.
    transfer: T_c, 3x3 PSD contribution of source channel c to output RGB covariance.
    """

    read: np.ndarray
    shot: np.ndarray
    quadratic: np.ndarray
    transfer: np.ndarray  # [3 source, 3, 3]

    def source_variance(self, mu: np.ndarray, gain: np.ndarray, merge_read: float = 1.0,
                        merge_shot: float = 1.0) -> np.ndarray:
        """v_c = m_r g_c^2 r_c + m_s g_c s_c mu_c + q_c mu_c^2 (mu in the same domain as the coefficients)."""
        mu = np.asarray(mu, dtype=np.float64)
        gain = np.asarray(gain, dtype=np.float64)
        return merge_read * gain * gain * self.read + merge_shot * gain * self.shot * mu + self.quadratic * mu * mu

    def working_transfer(self, white_balance: np.ndarray, scale: float) -> np.ndarray:
        """T'_c = (K M W) T_c (K M W)^T in the working YCbCr domain."""
        a = scale * YCC_FROM_RGB @ np.diag(white_balance)
        return np.einsum("ij,cjk,lk->cil", a, self.transfer, a)

    def working_covariance(self, mu_camera: np.ndarray, white_balance: np.ndarray, scale: float,
                           gain: np.ndarray | None = None) -> np.ndarray:
        """Point covariance Sigma(p) of working YCbCr for camera-RGB signal mu_camera."""
        if gain is None:
            gain = np.ones(3)
        v = self.source_variance(mu_camera, gain)
        return np.einsum("c,cij->ij", v, self.working_transfer(white_balance, scale))


# ------------------------------------------------- profile x white-noise model
#
# docs/photon-multiscale-denoise.md section 2: the denoiser's noise model is the RAW
# profile times the exact white-noise energy of the pyramid. The classes above (transfer
# matrices, measured spectra) belong to the abandoned propagation design and only serve
# validate_propagation.py, which verifies the propagation used for kappa0.

LUMA = 0
CHROMA = 1


@dataclass(frozen=True)
class MergeRatio:
    """Section 2.2: m_r, m_s of a weighted merge of frames transported to reference exposure."""

    read: float
    shot: float

    @staticmethod
    def single() -> "MergeRatio":
        return MergeRatio(1.0, 1.0)

    @staticmethod
    def of(weights: np.ndarray, read_ratios: np.ndarray, shot_ratios: np.ndarray) -> "MergeRatio":
        """weights w_i; read_ratios r_i / r_ref and shot_ratios s_i / s_ref per frame."""
        w = np.asarray(weights, dtype=np.float64)
        if w.ndim != 1 or w.size == 0 or np.any(w < 0) or w.sum() <= 0:
            raise ValueError("merge weights must be non-negative with a positive sum")
        total = w.sum() ** 2
        return MergeRatio(float(np.sum(w * w * read_ratios) / total), float(np.sum(w * w * shot_ratios) / total))


def working_point_covariance(read: np.ndarray, shot: np.ndarray, mu_camera: np.ndarray,
                             white_balance: np.ndarray, scale: float,
                             merge: MergeRatio = MergeRatio(1.0, 1.0)) -> np.ndarray:
    """A diag(m_r r_c + m_s s_c mu_c) A^T with A = K M W: independent source channels, no spatial process.

    read/shot are the profile's per-channel coefficients (normalised, un-white-balanced camera
    RGB, both greens averaged); mu_camera is the LSC-divided camera RGB signal.
    """
    a = scale * YCC_FROM_RGB @ np.diag(white_balance)
    source = merge.read * np.asarray(read) + merge.shot * np.asarray(shot) * np.maximum(mu_camera, 0.0)
    return a @ np.diag(source) @ a.T


@dataclass(frozen=True)
class Kappa0:
    """White-noise Laplacian energy per (filter, level, phase): luma [levels, 4], chroma [levels, 4]."""

    luma: np.ndarray
    chroma: np.ndarray

    @staticmethod
    def build(luma_levels: int, chroma_levels: int) -> "Kappa0":
        unit = np.ones(SPECTRUM_SIZE)
        return Kappa0(
            propagate(unit, unit, LUMA_TAPS, luma_levels).kappa_laplacian,
            propagate(unit, unit, CHROMA_TAPS, chroma_levels).kappa_laplacian,
        )

    def to_json(self) -> dict:
        return {"luma": self.luma.tolist(), "chroma": self.chroma.tolist(),
                "luma_taps": LUMA_TAPS.tolist(), "chroma_taps": CHROMA_TAPS.tolist()}


@dataclass(frozen=True)
class LevelNoise:
    """Laplacian-band noise of one level and phase: Y variance and the Cb/Cr 2x2 covariance."""

    luma_variance: float
    chroma_covariance: np.ndarray


def level_noise(point_covariance: np.ndarray, kappa0: Kappa0, level: int, phase: int,
                residual: np.ndarray | None = None) -> LevelNoise:
    """Section 2.1 for one level and phase.

    residual: t^2 per component (Y, Cb, Cr) of an already denoised input (section 2.4); the
    covariance scales as D Sigma D with D = diag(t). Y and Cb/Cr live in different pyramids,
    so no Y-C cross term is defined.
    """
    t = np.ones(3) if residual is None else np.sqrt(np.asarray(residual, dtype=np.float64))
    scaled = point_covariance * np.outer(t, t)
    return LevelNoise(
        float(kappa0.luma[level, phase] * scaled[0, 0]),
        kappa0.chroma[level, phase] * scaled[1:, 1:],
    )


if __name__ == "__main__":
    import json
    import sys

    luma_levels = int(sys.argv[1]) if len(sys.argv) > 1 else 5
    chroma_levels = int(sys.argv[2]) if len(sys.argv) > 2 else 7
    print(json.dumps(Kappa0.build(luma_levels, chroma_levels).to_json(), indent=2))
