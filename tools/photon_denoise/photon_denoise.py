"""Reference implementation of the Photon multi-scale denoiser passes.

Executable specification for docs/photon-multiscale-denoise.md sections 2-8 and 10. Every
function mirrors one GLES pass in raw/denoise/PhotonDenoiseShaders.kt: arithmetic in float32
(highp), texture stores rounded to the storage format (RGBA16F -> float16, RGBA32F ->
float32). compare_passes.py feeds each pass with the GPU's own inputs and compares outputs.

Images are channel-first float32 arrays [C, H, W].
"""

from __future__ import annotations

from dataclasses import dataclass, field, replace

import numpy as np

import noise_model

F32 = np.float32
LUMA_TAPS = noise_model.LUMA_TAPS.astype(F32)
CHROMA_TAPS = noise_model.CHROMA_TAPS.astype(F32)
YCC_FROM_RGB = noise_model.YCC_FROM_RGB.astype(F32)
RGB_FROM_YCC = np.array([[1.0, -0.25, 0.75], [1.0, -0.25, -0.25], [1.0, 0.75, -0.25]], dtype=F32)
CLIP_LEVEL = F32(0.98)     # section 6.5: camera RGB (LSC restored) at or above this carries no noise model
WINDOW_RADIUS = 2          # 5x5 luma window
BASE_RADIUS = 1.25         # luma window radius before anisotropic stretching
BILATERAL_SIGMA = 1.5
CENTRE_LOW = F32(6.0)      # pilot: the window centre enters the energy only as a point of
CENTRE_HIGH = F32(10.0)    # smoothstep(CENTRE_LOW, CENTRE_HIGH, |L| / sigma)
GAMMA_LOW = F32(0.25)      # section 6.1: the gain exponent applies from smoothstep(GAMMA_LOW,
GAMMA_HIGH = F32(0.5)      # GAMMA_HIGH, gain); below, the MMSE gain
PREFILTER_K = F32(2.5)     # section 6.0: outlier distance from the 3x3 median, in L0 sigmas
PREFILTER_GUARD = 2        # at most this many same-signed 3x3 neighbours beyond PREFILTER_K
PREFILTER_FLAT = F32(3.0)  # mean L0^2 of the 5x5 ring below PREFILTER_FLAT sigma^2

# Section 5.1 per-image strength table [levels, STRENGTH_BINS, 3] (Y, Cb, Cr).
STRENGTH_BINS = 8
STRENGTH_LOW = F32(-8.0)   # log2(Y / K) of bin 0's lower edge; 1-stop bins
HIST_BUCKETS = 64          # log2(L^2 / N) histogram over [HIST_LOW, HIST_HIGH)
HIST_LOW = F32(-12.0)
HIST_HIGH = F32(8.0)
MIN_SAMPLES = 200
CHI2_MEDIAN = F32(0.45493642)  # median of chi-square with one degree of freedom
MAX_STRENGTH = F32(4096.0)
FLAT_GATE = F32(0.5)
ESTIMATE_PASSES = 3        # each pass gates with the previous pass's luma strength
SPIKE = F32(1.5)           # bound (both ways) relative to the median of the 5-bin neighbourhood
MAX_GROWTH = F32(2.0)      # level-to-level growth used for an unmeasured level


def f16(x: np.ndarray) -> np.ndarray:
    return x.astype(np.float16).astype(F32)


# ------------------------------------------------------------------ geometry

def mirror(i: np.ndarray, n: int) -> np.ndarray:
    """Reflect without edge repetition (period 2n - 2)."""
    if n == 1:
        return np.zeros_like(i)
    period = 2 * n - 2
    i = np.abs(i) % period
    return np.where(i >= n, period - i, i)


def level_sizes(height: int, width: int, levels: int) -> list[tuple[int, int]]:
    sizes = [(height, width)]
    for _ in range(levels):
        h, w = sizes[-1]
        sizes.append(((h + 1) // 2, (w + 1) // 2))
    return sizes


def taps_for(component: int) -> np.ndarray:
    return LUMA_TAPS if component == 0 else CHROMA_TAPS


def down(fine: np.ndarray, coarse_shape: tuple[int, int]) -> np.ndarray:
    """G_{l+1}(y,x) = sum h_i h_j G_l(mirror(2y+i), mirror(2x+j)); Y with luma taps, Cb/Cr chroma."""
    h, w = fine.shape[1:]
    hc, wc = coarse_shape
    out = np.zeros((fine.shape[0], hc, wc), dtype=F32)
    for k in range(fine.shape[0]):
        taps = taps_for(k)
        r = taps.size // 2
        ys = mirror(2 * np.arange(hc)[:, None] + np.arange(-r, r + 1)[None, :], h)  # [hc, taps]
        xs = mirror(2 * np.arange(wc)[:, None] + np.arange(-r, r + 1)[None, :], w)
        rows = np.einsum("t,ytx->yx", taps, fine[k][ys, :])          # vertical first
        out[k] = np.einsum("t,yxt->yx", taps, rows[:, xs]).astype(F32)
    return out


def up(coarse: np.ndarray, fine_shape: tuple[int, int]) -> np.ndarray:
    """U(y,x) = sum over i with (y-i) even, j with (x-j) even of 2h_i 2h_j C(mirror((y-i)/2), mirror((x-j)/2))."""
    hc, wc = coarse.shape[1:]
    h, w = fine_shape
    out = np.zeros((coarse.shape[0], h, w), dtype=F32)
    for k in range(coarse.shape[0]):
        taps = 2.0 * taps_for(k)
        r = taps.size // 2

        def weights(n_fine: int, n_coarse: int) -> np.ndarray:
            mat = np.zeros((n_fine, n_coarse), dtype=F32)
            for y in range(n_fine):
                for i in range(-r, r + 1):
                    if (y - i) % 2:
                        continue
                    mat[y, mirror(np.array((y - i) // 2), n_coarse)] += taps[i + r]
            return mat

        wy, wx = weights(h, hc), weights(w, wc)
        out[k] = (wy @ coarse[k] @ wx.T).astype(F32)
    return out


# --------------------------------------------------------------- parameters

@dataclass
class Params:
    """Mirror of PhotonDenoiseParams (Kotlin); all levels share index l = 0 .. levels-1."""

    scale: float                 # K
    white_balance: np.ndarray    # W [3], camera RGB -> white balanced
    read: np.ndarray             # profile read [3]
    shot: np.ndarray             # profile shot [3]
    merge_read: float            # section 2.2 nominal ratios (all frames accepted)
    merge_shot: float
    residual: np.ndarray         # t^2 per level and component [levels, 3]
    kappa_luma: np.ndarray       # [levels, 4]
    kappa_chroma: np.ndarray     # [levels, 4]
    levels: int
    luma_levels: int
    alpha: np.ndarray            # [levels] luma Wiener over-subtraction
    grain: np.ndarray            # [levels] luma residual noise ratio t_l
    outlier: np.ndarray          # [levels] Huber distance d_l
    gate_luma: tuple[float, float]    # chi2_9 thresholds (low, high)
    gate_chroma: tuple[float, float]  # chi2_2 thresholds (low, high)
    bilateral_levels: int
    bilateral_luma: float        # c_Y
    bilateral_chroma: float      # c_C
    luma_strength: float
    chroma_strength: float
    lsc: "LensShading | None" = None
    # Section 5.1 strength table [levels, STRENGTH_BINS, 3]; None: estimated from the image.
    strength_table: np.ndarray | None = None
    # Section 5.1 caps of the estimate per level at the image SNR; None: MAX_STRENGTH.
    strength_cap_luma: np.ndarray | None = None
    strength_cap_chroma: np.ndarray | None = None
    merge_map: "MergeMap | None" = None  # section 2.2 per-pixel ratios; None: the scalars
    gamma: np.ndarray | None = None  # [levels] section 6.1 second-stage gain exponent; None: 1 (MMSE)
    chroma_gate_from: int = 0  # section 7.2 first level whose Mahalanobis gate is on

    def luma_grain(self, level: int) -> float:
        t, s = float(self.grain[level]), self.luma_strength
        return 1.0 - s * (1.0 - t) if s <= 1.0 else t * (2.0 - s)

    def luma_alpha(self, level: int) -> float:
        return float(self.alpha[level]) * max(self.luma_strength, 1.0) ** 2

    def chroma_thresholds(self, low_high: tuple[float, float]) -> tuple[float, float]:
        factor = max(self.chroma_strength, 1.0) ** 2
        return low_high[0] * factor, low_high[1] * factor


# ------------------------------------------------------------- lens shading

@dataclass
class LensShading:
    """Gains contained in the input pixels (section 3): map [h, w, 4] as R, Ge, Go, B.

    dng_grid: [originH, originV, spacingH, spacingV, boundsL, boundsT, boundsR, boundsB] or None
    for Camera2 whole-image UV. origin/full place the processed image in the full frame.
    """

    gains: np.ndarray
    dng_grid: np.ndarray | None
    origin: tuple[int, int]      # (x, y)
    full: tuple[int, int]        # (width, height)


def lsc_gain(lsc: LensShading | None, shape: tuple[int, int], level: int) -> np.ndarray | None:
    """RGB gain [3, h, w] at the centres of level-l pixels; manual bilinear, clamp to edge.

    A level-l pixel p covers level-0 position (p + 0.5) * 2^l - 0.5; its global centre is
    origin + (p + 0.5) * 2^l.
    """
    if lsc is None:
        return None
    step = F32(2 ** level)
    gx = F32(lsc.origin[0]) + (np.arange(shape[1], dtype=F32) + F32(0.5)) * step
    gy = F32(lsc.origin[1]) + (np.arange(shape[0], dtype=F32) + F32(0.5)) * step
    mh, mw = lsc.gains.shape[:2]
    if lsc.dng_grid is None:
        u = gx / F32(lsc.full[0])
        v = gy / F32(lsc.full[1])
    else:
        g = lsc.dng_grid.astype(F32)
        u = (((gx - g[4]) / max(g[6] - g[4], 1.0) - g[0]) / g[2] + F32(0.5)) / F32(mw)
        v = (((gy - g[5]) / max(g[7] - g[5], 1.0) - g[1]) / g[3] + F32(0.5)) / F32(mh)
    x = np.clip(u * F32(mw) - F32(0.5), 0, mw - 1)
    y = np.clip(v * F32(mh) - F32(0.5), 0, mh - 1)
    x0 = np.floor(x).astype(int)
    y0 = np.floor(y).astype(int)
    x1 = np.minimum(x0 + 1, mw - 1)
    y1 = np.minimum(y0 + 1, mh - 1)
    fx = (x - x0).astype(F32)[None, :, None]
    fy = (y - y0).astype(F32)[:, None, None]
    m = lsc.gains.astype(F32)
    top = m[y0][:, x0] * (1 - fx) + m[y0][:, x1] * fx
    bottom = m[y1][:, x0] * (1 - fx) + m[y1][:, x1] * fx
    g4 = top * (1 - fy) + bottom * fy                              # [h, w, 4]
    return np.stack([g4[..., 0], F32(0.5) * (g4[..., 1] + g4[..., 2]), g4[..., 3]]).astype(F32)


# --------------------------------------------------------- merge variance map

@dataclass
class MergeMap:
    """Section 2.2 per-pixel merge ratios: map [h, w, 2] as (m_r, m_s) over the whole frame."""

    ratios: np.ndarray
    origin: tuple[int, int]      # (x, y) of the processed image in the full frame
    full: tuple[int, int]        # (width, height)


def merge_ratio(params: Params, shape: tuple[int, int], level: int) -> tuple[np.ndarray, np.ndarray]:
    """(m_r, m_s) [h, w] at the centres of level-l pixels; manual bilinear of the whole-image map,
    clamp to edge, exactly as lsc_gain's Camera2 mode."""
    mm = params.merge_map
    if mm is None:
        return (np.full(shape, params.merge_read, dtype=F32), np.full(shape, params.merge_shot, dtype=F32))
    step = F32(2 ** level)
    gx = F32(mm.origin[0]) + (np.arange(shape[1], dtype=F32) + F32(0.5)) * step
    gy = F32(mm.origin[1]) + (np.arange(shape[0], dtype=F32) + F32(0.5)) * step
    mh, mw = mm.ratios.shape[:2]
    x = np.clip(gx / F32(mm.full[0]) * F32(mw) - F32(0.5), 0, mw - 1)
    y = np.clip(gy / F32(mm.full[1]) * F32(mh) - F32(0.5), 0, mh - 1)
    x0 = np.floor(x).astype(int)
    y0 = np.floor(y).astype(int)
    x1 = np.minimum(x0 + 1, mw - 1)
    y1 = np.minimum(y0 + 1, mh - 1)
    fx = (x - x0).astype(F32)[None, :, None]
    fy = (y - y0).astype(F32)[:, None, None]
    m = mm.ratios.astype(F32)
    top = m[y0][:, x0] * (1 - fx) + m[y0][:, x1] * fx
    bottom = m[y1][:, x0] * (1 - fx) + m[y1][:, x1] * fx
    r = (top * (1 - fy) + bottom * fy).astype(F32)            # [h, w, 2]
    return r[..., 0], r[..., 1]


# --------------------------------------------------------------------- passes

def analyze0(rgb: np.ndarray, params: Params) -> np.ndarray:
    """Camera RGB -> working YCbCr: K M (W rgb / g). Level 0 is never stored on the GPU."""
    gains = lsc_gain(params.lsc, rgb.shape[1:], 0)
    x = rgb if gains is None else rgb / gains
    x = x * params.white_balance.astype(F32)[:, None, None]
    return (F32(params.scale) * np.einsum("ij,jyx->iyx", YCC_FROM_RGB, x)).astype(F32)


def point_covariance(base: np.ndarray, params: Params, level: int) -> tuple[np.ndarray, np.ndarray]:
    """Section 2.1 point covariance [3, 3, H, W] of independent source noise at signal base."""
    x_wb = np.einsum("ij,jyx->iyx", RGB_FROM_YCC, base) / F32(params.scale)
    mu = np.maximum(x_wb / params.white_balance.astype(F32)[:, None, None], 0.0)
    m_r, m_s = merge_ratio(params, base.shape[1:], level)
    v = (m_r[None] * params.read.astype(F32)[:, None, None]
         + m_s[None] * params.shot.astype(F32)[:, None, None] * mu)
    a = F32(params.scale) * YCC_FROM_RGB * params.white_balance.astype(F32)[None, :]
    cov = np.einsum("ic,cyx,jc->ijyx", a, v, a).astype(F32)
    return cov, mu


def model_noise(base: np.ndarray, level: int, params: Params) -> tuple[np.ndarray, np.ndarray]:
    """Section 2.1 (with 2.2, 2.4) noise (s2_Y, s2_Cb, s2_Cr, s_CbCr) at signal base without the
    section 5.1 strength, zero where clipped; and the camera signal mu."""
    shape = base.shape[1:]
    cov, mu = point_covariance(base, params, level)
    yy, xx = np.mgrid[0:shape[0], 0:shape[1]]
    phase = (yy & 1) * 2 + (xx & 1)
    kl = params.kappa_luma[level][phase].astype(F32)
    kc = params.kappa_chroma[level][phase].astype(F32)
    t = np.sqrt(params.residual[level]).astype(F32)
    noise = np.stack([
        kl * cov[0, 0] * t[0] * t[0],
        kc * cov[1, 1] * t[1] * t[1],
        kc * cov[2, 2] * t[2] * t[2],
        kc * cov[1, 2] * t[1] * t[2],
    ]).astype(F32)
    gains = lsc_gain(params.lsc, shape, level)
    camera = mu if gains is None else mu * gains
    clipped = np.any(camera >= CLIP_LEVEL, axis=0)
    noise[:, clipped] = 0.0
    return noise, mu


def strength_at(table: np.ndarray | None, level: int, base_y: np.ndarray, scale: float) -> np.ndarray:
    """Section 5.1 (S_Y, S_Cb, S_Cr) [3, H, W]: bins interpolated in log2 of the base luma."""
    if table is None:
        return np.ones((3,) + base_y.shape, dtype=F32)
    x = np.log2(np.maximum(base_y / F32(scale), F32(1e-12))) - STRENGTH_LOW - F32(0.5)
    x = np.clip(x, F32(0), F32(STRENGTH_BINS - 1)).astype(F32)
    i0 = np.floor(x).astype(int)
    i1 = np.minimum(i0 + 1, STRENGTH_BINS - 1)
    f = (x - i0).astype(F32)
    row = table[level].astype(F32)
    return np.stack([row[i0, c] + f * (row[i1, c] - row[i0, c]) for c in range(3)]).astype(F32)


def band(fine: np.ndarray, noisy_coarse: np.ndarray, denoised_coarse: np.ndarray, level: int,
         params: Params) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
    """Band pass: (L, base, noise) with noise = (s2_Y, s2_Cb, s2_Cr, s_CbCr), sections 2.1, 5.1."""
    shape = fine.shape[1:]
    base = up(denoised_coarse, shape)
    lap = fine - up(noisy_coarse, shape)
    noise, _ = model_noise(base, level, params)
    s = strength_at(params.strength_table, level, base[0], params.scale)
    noise = (noise * np.stack([s[0], s[1], s[2], np.sqrt(s[1] * s[2])])).astype(F32)
    return f16(lap), f16(base), noise


def strength_histogram(fine: np.ndarray, coarse: np.ndarray, level: int, params: Params,
                       gate_scale: float = 1.0) -> np.ndarray:
    """Section 5.1 steps 1-3 at one level: counts [STRENGTH_BINS, 3, HIST_BUCKETS] of
    log2(L^2 / N) over flat sampled pixels. Level 0 samples every 4th pixel, level 1 every 2nd,
    each 2x2 block of samples covering all four Bayer phases. The flat gate's noise is the model
    luma noise times gate_scale (the previous pass's luma strength)."""
    shape = fine.shape[1:]
    stride = 4 if level == 0 else 2 if level == 1 else 1
    qh, qw = (shape[0] + stride - 1) // stride, (shape[1] + stride - 1) // stride
    qy, qx = np.mgrid[0:qh, 0:qw]
    if stride > 1:
        py, px = qy * stride + (qx & 1), qx * stride + (qy & 1)
    else:
        py, px = qy, qx
    keep = (py < shape[0]) & (px < shape[1])
    py, px = py[keep], px[keep]
    base_full = up(coarse, shape)
    lap = (fine - base_full)[:, py, px]
    base = base_full[:, py, px]
    noise_full, mu_full = model_noise(base_full, level, params)
    noise = noise_full[:, py, px]
    mu_g = mu_full[1][py, px]
    cy, cx = py >> 1, px >> 1
    ch, cw = coarse.shape[1:]
    gx = (coarse[0][cy, mirror(cx + 1, cw)] - coarse[0][cy, mirror(cx - 1, cw)]) * F32(0.25)
    gy = (coarse[0][mirror(cy + 1, ch), cx] - coarse[0][mirror(cy - 1, ch), cx]) * F32(0.25)
    valid = (noise[0] > 0) & (noise[1] > 0) & (noise[2] > 0) & (mu_g > 0)
    valid &= np.sqrt(gx * gx + gy * gy) < FLAT_GATE * np.sqrt(F32(gate_scale) * np.maximum(noise[0], F32(0)))
    b = np.clip(np.floor(np.log2(np.maximum(base[0] / F32(params.scale), F32(1e-12))) - STRENGTH_LOW),
                0, STRENGTH_BINS - 1).astype(int)
    counts = np.zeros((STRENGTH_BINS, 3, HIST_BUCKETS), dtype=np.int64)
    for c in range(3):
        v = lap[c][valid] ** 2 / noise[c][valid]
        k = np.floor((np.log2(np.maximum(v, F32(1e-30))) - HIST_LOW) * F32(HIST_BUCKETS / (HIST_HIGH - HIST_LOW)))
        k = np.clip(k, 0, HIST_BUCKETS - 1).astype(int)
        np.add.at(counts, (b[valid], c, k), 1)
    return counts


def _median(values: np.ndarray) -> np.float32:
    v = np.sort(values.astype(F32))
    n = v.size
    return v[n // 2] if n % 2 else (v[n // 2 - 1] + v[n // 2]) * F32(0.5)


def strength_resolve(counts: np.ndarray, params: Params) -> np.ndarray:
    """Section 5.1 step 4: histogram medians -> filled, spike-bounded, clamped and capped table."""
    levels = counts.shape[0]
    table = np.zeros((levels, STRENGTH_BINS, 3), dtype=F32)
    width = F32((HIST_HIGH - HIST_LOW) / HIST_BUCKETS)
    for c in range(3):
        caps = params.strength_cap_luma if c == 0 else params.strength_cap_chroma
        for level in range(levels):
            measured = np.full(STRENGTH_BINS, -1.0, dtype=F32)
            for b in range(STRENGTH_BINS):
                h = counts[level, b, c]
                n = int(h.sum())
                if n < MIN_SAMPLES:
                    continue
                target = F32(0.5) * F32(n)
                cumulative = 0
                for k in range(HIST_BUCKETS):
                    if cumulative + h[k] >= target:
                        f = (target - F32(cumulative)) / F32(h[k])
                        measured[b] = F32(2.0) ** (HIST_LOW + (F32(k) + f) * width) / CHI2_MEDIAN
                        break
                    cumulative += int(h[k])
            known = np.flatnonzero(measured >= 0)
            row = np.empty(STRENGTH_BINS, dtype=F32)
            if known.size == 0:
                if level == 0:
                    row[:] = 1.0
                else:
                    # A level without samples continues the growth of the two levels above.
                    growth = F32(1.0)
                    if level >= 2:
                        upper, upper2 = table[level - 1, :, c], table[level - 2, :, c]
                        ratios = np.array([upper[b] / upper2[b] if upper2[b] > 0 else F32(1.0)
                                           for b in range(STRENGTH_BINS)], dtype=F32)
                        growth = np.clip(_median(ratios), F32(1.0), MAX_GROWTH)
                    row = table[level - 1, :, c] * growth
            else:
                filled = np.empty(STRENGTH_BINS, dtype=F32)
                for b in range(STRENGTH_BINS):
                    if measured[b] >= 0:
                        filled[b] = measured[b]
                    elif b <= known[0]:
                        filled[b] = measured[known[0]]
                    elif b >= known[-1]:
                        filled[b] = measured[known[-1]]
                    else:
                        hi = known[np.searchsorted(known, b)]
                        lo = known[np.searchsorted(known, b) - 1]
                        f = F32(b - lo) / F32(hi - lo)
                        filled[b] = measured[lo] + f * (measured[hi] - measured[lo])
                # An isolated bin dominated by texture (high) or by few samples (either way) stands
                # out from its neighbourhood.
                for b in range(STRENGTH_BINS):
                    m = _median(filled[max(b - 2, 0):min(b + 3, STRENGTH_BINS)])
                    row[b] = min(max(filled[b], m / SPIKE), m * SPIKE)
            cap = MAX_STRENGTH if caps is None else min(MAX_STRENGTH, F32(caps[level]))
            table[level, :, c] = np.clip(row, F32(0), cap)
    return table


def estimate_strength(g0: np.ndarray, gaussians: list[np.ndarray], params: Params) -> np.ndarray:
    """Section 5.1 table of the image; gaussians are the stored G_1 .. G_N. Every pass after the
    first gates each level with the median luma strength of the previous pass."""
    table = None
    for _ in range(ESTIMATE_PASSES):
        counts = np.stack([
            strength_histogram(g0 if level == 0 else gaussians[level - 1], gaussians[level], level, params,
                               1.0 if table is None else float(_median(table[level, :, 0])))
            for level in range(params.levels)
        ])
        table = strength_resolve(counts, params)
    return table


def _shift(image: np.ndarray, dy: int, dx: int) -> np.ndarray:
    h, w = image.shape[-2:]
    ys = mirror(np.arange(h) + dy, h)
    xs = mirror(np.arange(w) + dx, w)
    return image[..., ys[:, None], xs[None, :]]


def _structure(base_luma: np.ndarray, noise_luma: np.ndarray):
    gx = 0.5 * (_shift(base_luma, 0, 1) - _shift(base_luma, 0, -1))
    gy = 0.5 * (_shift(base_luma, 1, 0) - _shift(base_luma, -1, 0))
    jxx = sum(_shift(gx * gx, dy, dx) for dy in (-1, 0, 1) for dx in (-1, 0, 1)) / F32(9)
    jxy = sum(_shift(gx * gy, dy, dx) for dy in (-1, 0, 1) for dx in (-1, 0, 1)) / F32(9)
    jyy = sum(_shift(gy * gy, dy, dx) for dy in (-1, 0, 1) for dx in (-1, 0, 1)) / F32(9)
    root = np.sqrt((jxx - jyy) ** 2 + 4 * jxy * jxy)
    anisotropy = np.clip(root / (jxx + jyy + noise_luma + F32(1e-12)), 0, 1).astype(F32)
    # Along the edge; a degenerate tensor (root == 0) has no orientation and is fixed at pi / 2,
    # matching the shader (GLSL leaves atan(0, 0) undefined).
    theta = np.where(root > 0, 0.5 * np.arctan2(2 * jxy, jxx - jyy) + F32(np.pi / 2), F32(np.pi / 2))
    return anisotropy, np.cos(theta).astype(F32), np.sin(theta).astype(F32)


def _window_weights(lap_y, noise_y, anisotropy, cos_t, sin_t, outlier):
    """Yields (shifted index, weight) over the 5x5 window (section 6.1 steps 1-2)."""
    r_par = F32(BASE_RADIUS) * (1 + anisotropy)
    r_perp = F32(BASE_RADIUS) * (1 - F32(0.6) * anisotropy)
    sigma = np.sqrt(noise_y)
    for dy in range(-WINDOW_RADIUS, WINDOW_RADIUS + 1):
        for dx in range(-WINDOW_RADIUS, WINDOW_RADIUS + 1):
            d_par = dx * cos_t + dy * sin_t
            d_perp = -dx * sin_t + dy * cos_t
            spatial = np.exp(F32(-0.5) * (d_par * d_par / (r_par * r_par) + d_perp * d_perp / (r_perp * r_perp)))
            diff = np.abs(_shift(lap_y, dy, dx) - lap_y)
            limit = F32(outlier) * sigma
            # min(1, d sigma / |diff|), except that the centre keeps weight 1 when sigma = 0.
            huber = np.where(diff <= limit, F32(1), limit / np.maximum(diff, F32(1e-30)))
            yield dy, dx, (spatial * huber).astype(F32)


def pilot(lap: np.ndarray, base: np.ndarray, noise: np.ndarray, level: int, params: Params) -> np.ndarray:
    """Luma pilot (s1, anisotropy, cos, sin), section 6.1 steps 1-3."""
    lap_y, noise_y = lap[0], noise[0]
    anisotropy, cos_t, sin_t = _structure(base[0], noise_y)
    sigma = np.sqrt(noise_y)
    centre = np.where(sigma > 0, _smoothstep(CENTRE_LOW, CENTRE_HIGH, np.abs(lap_y) / np.maximum(sigma, F32(1e-30))),
                      F32(1)).astype(F32)
    num = np.zeros_like(lap_y)
    den = np.zeros_like(lap_y)
    for dy, dx, w in _window_weights(lap_y, noise_y, anisotropy, cos_t, sin_t, params.outlier[level]):
        if dy == 0 and dx == 0:
            w = (w * centre).astype(F32)
        num += w * (_shift(lap_y, dy, dx) ** 2 - _shift(noise_y, dy, dx))
        den += w
    energy = np.maximum(num / den, 0)
    alpha = F32(params.luma_alpha(level))
    s1 = np.where(noise_y > 0, lap_y * energy / (energy + alpha * noise_y + F32(1e-30)), lap_y)
    return f16(np.stack([s1, anisotropy, cos_t, sin_t]))


def _smoothstep(edge0: float, edge1: float, x: np.ndarray) -> np.ndarray:
    t = np.clip((x - F32(edge0)) / F32(edge1 - edge0), 0, 1)
    return t * t * (3 - 2 * t)


def final(lap: np.ndarray, base: np.ndarray, noise: np.ndarray, pilot_tex: np.ndarray | None, level: int,
          params: Params) -> np.ndarray:
    """Denoised Gaussian level G~_l = base' + shrunk band (sections 6.1-6.2, 7.2-7.3)."""
    lap_y, noise_y = lap[0], noise[0]
    if level < params.luma_levels and params.luma_strength > 0:
        s1, anisotropy, cos_t, sin_t = pilot_tex
        num = np.zeros_like(lap_y)
        den = np.zeros_like(lap_y)
        for dy, dx, w in _window_weights(lap_y, noise_y, anisotropy, cos_t, sin_t, params.outlier[level]):
            num += w * _shift(s1, dy, dx) ** 2
            den += w
        energy = num / den
        alpha = F32(params.luma_alpha(level))
        gamma = F32(1) if params.gamma is None else F32(params.gamma[level])
        gain = energy / (energy + alpha * noise_y + F32(1e-30))
        # Section 6.1: gain^gamma only where the gain shows detail; noise-only gains stay MMSE.
        gain = gain + _smoothstep(GAMMA_LOW, GAMMA_HIGH, gain) * (gain ** gamma - gain)
        shrunk = np.where(noise_y > 0, lap_y * gain, lap_y)
        t = F32(params.luma_grain(level))
        luma_band = shrunk + t * (lap_y - shrunk)
    else:
        luma_band = lap_y

    chroma_band = lap[1:3]
    if params.chroma_strength > 0:
        gate_luma = pilot_tex[0] if pilot_tex is not None else lap_y
        sum_l2 = sum(_shift(gate_luma * gate_luma, dy, dx) for dy in (-1, 0, 1) for dx in (-1, 0, 1))
        sum_s2 = sum(_shift(noise_y, dy, dx) for dy in (-1, 0, 1) for dx in (-1, 0, 1))
        luma_stat = np.where(sum_s2 > 0, F32(9) * sum_l2 / np.maximum(sum_s2, F32(1e-30)), F32(np.inf))
        low, high = params.chroma_thresholds(params.gate_luma)
        gate_y = _smoothstep(low, high, luma_stat)
        s_cb, s_cr, s_x = noise[1], noise[2], noise[3]
        det = s_cb * s_cr - s_x * s_x
        cb, cr = lap[1], lap[2]
        chroma_stat = np.where(det > 0, (s_cr * cb * cb - 2 * s_x * cb * cr + s_cb * cr * cr) / np.maximum(det, F32(1e-30)),
                               F32(np.inf))
        low, high = params.chroma_thresholds(params.gate_chroma)
        gate_c = _smoothstep(low, high, chroma_stat) if level >= params.chroma_gate_from else np.zeros_like(chroma_stat)
        gate = np.maximum(gate_y, gate_c)
        s = F32(min(params.chroma_strength, 1.0))
        chroma_band = (s * gate + (1 - s)) * lap[1:3]

    base_chroma = base[1:3]
    if params.chroma_strength > 0 and level >= params.levels - params.bilateral_levels:
        c_y = F32(params.bilateral_luma)
        c_c = F32(params.bilateral_chroma * max(params.chroma_strength, 1.0) ** 2)
        s_cb, s_cr, s_x = noise[1], noise[2], noise[3]
        det = s_cb * s_cr - s_x * s_x
        num = np.zeros_like(base_chroma)
        den = np.zeros_like(lap_y)
        for dy in range(-WINDOW_RADIUS, WINDOW_RADIUS + 1):
            for dx in range(-WINDOW_RADIUS, WINDOW_RADIUS + 1):
                spatial = F32(np.exp(-0.5 * (dx * dx + dy * dy) / BILATERAL_SIGMA ** 2))
                dyl = _shift(base[0], dy, dx) - base[0]
                luma_w = np.where(noise_y > 0, np.exp(-dyl * dyl / (2 * c_y * np.maximum(noise_y, F32(1e-30)))),
                                  (dyl == 0).astype(F32))
                dcb = _shift(base[1], dy, dx) - base[1]
                dcr = _shift(base[2], dy, dx) - base[2]
                d2 = np.where(det > 0, (s_cr * dcb * dcb - 2 * s_x * dcb * dcr + s_cb * dcr * dcr)
                              / np.maximum(det, F32(1e-30)), F32(0))
                w = (spatial * luma_w * np.exp(-d2 / (2 * c_c))).astype(F32)
                num += w * _shift(base_chroma, dy, dx)
                den += w
        base_chroma = num / den
    out = np.stack([base[0] + luma_band, base_chroma[0] + chroma_band[0], base_chroma[1] + chroma_band[1]])
    return out.astype(F32)


def output(denoised0: np.ndarray, params: Params) -> np.ndarray:
    """Level-0 G~ -> camera RGB with LSC restored."""
    x_wb = np.einsum("ij,jyx->iyx", RGB_FROM_YCC, denoised0) / F32(params.scale)
    rgb = x_wb / params.white_balance.astype(F32)[:, None, None]
    gains = lsc_gain(params.lsc, rgb.shape[1:], 0)
    if gains is not None:
        rgb = rgb * gains
    return f16(rgb)


@dataclass
class Trace:
    gaussians: list[np.ndarray] = field(default_factory=list)   # G_1 .. G_N (stored f16)
    bands: dict[int, tuple] = field(default_factory=dict)        # level -> (L, base, noise)
    pilots: dict[int, np.ndarray] = field(default_factory=dict)
    denoised: dict[int, np.ndarray] = field(default_factory=dict)  # G~_l (stored f16 for l >= 1)
    strength: np.ndarray | None = None                           # section 5.1 table used
    prefilter: np.ndarray | None = None                          # section 6.0 level-0 Y, Cb, Cr correction
    output: np.ndarray | None = None


def _windows(image: np.ndarray, radius: int) -> np.ndarray:
    """[H, W, 2r+1, 2r+1] neighbourhoods, mirrored without edge repetition."""
    side = 2 * radius + 1
    return np.lib.stride_tricks.sliding_window_view(np.pad(image, radius, mode="reflect"), (side, side))


def prefilter_amounts(params: Params) -> np.ndarray:
    """Section 6.0 correction scale of Y, Cb, Cr; 0 where that channel is not denoised."""
    luma = min(params.luma_strength, 1.0) if params.luma_levels > 0 else 0.0
    chroma = min(params.chroma_strength, 1.0)
    return np.array([max(luma, 0.0), max(chroma, 0.0), max(chroma, 0.0)], dtype=F32)


def prefilter(g0: np.ndarray, g1: np.ndarray, params: Params) -> np.ndarray:
    """Section 6.0 level-0 correction [3, H, W] of Y, Cb, Cr: per channel, an isolated outlier in a
    noise-like neighbourhood moves to its 3x3 median, scaled by prefilter_amounts."""
    shape = g0.shape[1:]
    base = up(g1, shape)
    noise, _ = model_noise(base, 0, params)
    s = strength_at(params.strength_table, 0, base[0], params.scale)
    amounts = prefilter_amounts(params)
    result = np.zeros((3,) + shape, dtype=F32)
    for ch in range(3):
        if amounts[ch] <= 0:
            continue
        lap = f16(g0[ch] - base[ch])
        sigma = np.sqrt(noise[ch] * s[ch])
        y = g0[ch]
        n9 = _windows(y, 1)
        m = np.sort(n9.reshape(*shape, 9), axis=-1)[..., 4]
        dev = y - m
        big = np.abs(n9 - m[..., None, None]) > PREFILTER_K * sigma[..., None, None]
        same = big & (np.sign(n9 - m[..., None, None]) == np.sign(dev)[..., None, None])
        outlier = np.abs(dev) > PREFILTER_K * sigma
        count = same.sum(axis=(-1, -2)) - outlier
        energy = ((_windows(lap, 2) ** 2).sum(axis=(-1, -2), dtype=F32) - lap * lap) / F32(24)
        selected = (sigma > 0) & outlier & (count <= PREFILTER_GUARD) & (energy < PREFILTER_FLAT * sigma * sigma)
        result[ch] = np.where(selected, (m - y) * amounts[ch], F32(0))
    return result


def run(rgb: np.ndarray, params: Params) -> Trace:
    trace = Trace()
    sizes = level_sizes(rgb.shape[1], rgb.shape[2], params.levels)
    g0 = analyze0(rgb, params)
    gaussians = [g0]
    for level in range(params.levels):
        gaussians.append(f16(down(gaussians[-1], sizes[level + 1])))
    trace.gaussians = gaussians[1:]
    if params.strength_table is None:
        params = replace(params, strength_table=estimate_strength(g0, trace.gaussians, params))
    trace.strength = params.strength_table
    if prefilter_amounts(params).any():
        trace.prefilter = prefilter(g0, gaussians[1], params)
        g0 = g0 + trace.prefilter
    denoised = gaussians[params.levels]
    for level in range(params.levels - 1, -1, -1):
        fine = g0 if level == 0 else gaussians[level]
        lap, base, noise = band(fine, gaussians[level + 1], denoised, level, params)
        trace.bands[level] = (lap, base, noise)
        pilot_tex = None
        if level < params.luma_levels and params.luma_strength > 0:
            pilot_tex = pilot(lap, base, noise, level, params)
            trace.pilots[level] = pilot_tex
        result = final(lap, base, noise, pilot_tex, level, params)
        denoised = f16(result) if level > 0 else result
        trace.denoised[level] = denoised
    trace.output = output(denoised, params)
    return trace
