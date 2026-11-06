"""Reference render and image metrics of docs/photon-multiscale-denoise.md section 12.2.

The fixed reference render maps un-white-balanced camera RGB to display sRGB with a fixed white
balance, an identity colour matrix (camera RGB treated as linear sRGB primaries), a fixed
exposure and the sRGB transfer curve, with no local tone mapping. Every compared image goes
through the same render, so the render cancels out of the comparison.
"""

from __future__ import annotations

import numpy as np

F32 = np.float32


def srgb_encode(linear: np.ndarray) -> np.ndarray:
    x = np.clip(linear, 0.0, 1.0)
    return np.where(x <= 0.0031308, 12.92 * x, 1.055 * np.power(x, 1 / 2.4) - 0.055).astype(F32)


def render(camera_rgb: np.ndarray, white_balance: np.ndarray, exposure: float) -> np.ndarray:
    """[3, H, W] un-white-balanced camera RGB -> display sRGB in [0, 1]."""
    return srgb_encode(camera_rgb * (np.asarray(white_balance, dtype=F32) * F32(exposure))[:, None, None])


def exposure_for(camera_rgb: np.ndarray, white_balance: np.ndarray, percentile: float = 99.0) -> float:
    """Exposure placing the given percentile of the white-balanced luma at 0.9."""
    luma = np.tensordot(np.array([0.25, 0.5, 0.25], dtype=F32),
                        camera_rgb * np.asarray(white_balance, dtype=F32)[:, None, None], axes=1)
    return float(0.9 / max(np.percentile(luma, percentile), 1e-6))


def psnr(a: np.ndarray, b: np.ndarray) -> float:
    mse = float(np.mean((a.astype(np.float64) - b.astype(np.float64)) ** 2))
    return float("inf") if mse == 0 else 10 * np.log10(1.0 / mse)


def dncnn_luma(srgb: np.ndarray) -> np.ndarray:
    """Luma with the coefficients of native-lib.cpp preprocessNative (BT.601)."""
    return (0.299 * srgb[0] + 0.587 * srgb[1] + 0.114 * srgb[2]).astype(F32)


def _gaussian_filter(image: np.ndarray, sigma: float = 1.5, radius: int = 5) -> np.ndarray:
    x = np.arange(-radius, radius + 1)
    kernel = np.exp(-0.5 * (x / sigma) ** 2)
    kernel /= kernel.sum()
    padded = np.pad(image, radius, mode="reflect")
    rows = sum(k * padded[:, i:i + image.shape[1]] for i, k in enumerate(kernel))
    return sum(k * rows[i:i + image.shape[0], :] for i, k in enumerate(kernel))


def ssim(a: np.ndarray, b: np.ndarray) -> float:
    """Single-scale SSIM (Gaussian 11x11, sigma 1.5) of two [H, W] images in [0, 1]."""
    a = a.astype(np.float64)
    b = b.astype(np.float64)
    c1, c2 = 0.01 ** 2, 0.03 ** 2
    mu_a, mu_b = _gaussian_filter(a), _gaussian_filter(b)
    var_a = _gaussian_filter(a * a) - mu_a ** 2
    var_b = _gaussian_filter(b * b) - mu_b ** 2
    cov = _gaussian_filter(a * b) - mu_a * mu_b
    value = ((2 * mu_a * mu_b + c1) * (2 * cov + c2)) / ((mu_a ** 2 + mu_b ** 2 + c1) * (var_a + var_b + c2))
    return float(value.mean())


def _srgb_to_lab(srgb: np.ndarray) -> np.ndarray:
    x = srgb.astype(np.float64)
    linear = np.where(x <= 0.04045, x / 12.92, ((x + 0.055) / 1.055) ** 2.4)
    m = np.array([[0.4124564, 0.3575761, 0.1804375],
                  [0.2126729, 0.7151522, 0.0721750],
                  [0.0193339, 0.1191920, 0.9503041]])
    xyz = np.tensordot(m, linear, axes=1) / np.array([0.95047, 1.0, 1.08883])[:, None, None]
    f = np.where(xyz > (6 / 29) ** 3, np.cbrt(xyz), xyz / (3 * (6 / 29) ** 2) + 4 / 29)
    return np.stack([116 * f[1] - 16, 500 * (f[0] - f[1]), 200 * (f[1] - f[2])])


def ciede2000(srgb_a: np.ndarray, srgb_b: np.ndarray) -> float:
    """Mean CIEDE2000 (Sharma, Wu, Dalal 2005) between two sRGB images."""
    l1, a1, b1 = _srgb_to_lab(srgb_a)
    l2, a2, b2 = _srgb_to_lab(srgb_b)
    c1 = np.hypot(a1, b1)
    c2 = np.hypot(a2, b2)
    c_mean = 0.5 * (c1 + c2)
    g = 0.5 * (1 - np.sqrt(c_mean ** 7 / (c_mean ** 7 + 25.0 ** 7)))
    a1p, a2p = (1 + g) * a1, (1 + g) * a2
    c1p, c2p = np.hypot(a1p, b1), np.hypot(a2p, b2)
    h1p = np.degrees(np.arctan2(b1, a1p)) % 360
    h2p = np.degrees(np.arctan2(b2, a2p)) % 360
    dlp = l2 - l1
    dcp = c2p - c1p
    dh = h2p - h1p
    dh = np.where(c1p * c2p == 0, 0, np.where(dh > 180, dh - 360, np.where(dh < -180, dh + 360, dh)))
    dhp = 2 * np.sqrt(c1p * c2p) * np.sin(np.radians(dh / 2))
    lp_mean = 0.5 * (l1 + l2)
    cp_mean = 0.5 * (c1p + c2p)
    hsum = h1p + h2p
    hp_mean = np.where(c1p * c2p == 0, hsum,
                       np.where(np.abs(h1p - h2p) <= 180, hsum / 2,
                                np.where(hsum < 360, (hsum + 360) / 2, (hsum - 360) / 2)))
    t = (1 - 0.17 * np.cos(np.radians(hp_mean - 30)) + 0.24 * np.cos(np.radians(2 * hp_mean))
         + 0.32 * np.cos(np.radians(3 * hp_mean + 6)) - 0.20 * np.cos(np.radians(4 * hp_mean - 63)))
    d_theta = 30 * np.exp(-(((hp_mean - 275) / 25) ** 2))
    rc = 2 * np.sqrt(cp_mean ** 7 / (cp_mean ** 7 + 25.0 ** 7))
    sl = 1 + 0.015 * (lp_mean - 50) ** 2 / np.sqrt(20 + (lp_mean - 50) ** 2)
    sc = 1 + 0.045 * cp_mean
    sh = 1 + 0.015 * cp_mean * t
    rt = -np.sin(np.radians(2 * d_theta)) * rc
    de = np.sqrt((dlp / sl) ** 2 + (dcp / sc) ** 2 + (dhp / sh) ** 2 + rt * (dcp / sc) * (dhp / sh))
    return float(de.mean())


class DnCNN:
    """assets/dncnn.tflite: single-channel 256x256 blind denoiser on 8-bit sRGB luma / 255."""

    PATCH = 256
    OVERLAP = 32

    def __init__(self, model_path: str):
        from ai_edge_litert.interpreter import Interpreter
        self.interpreter = Interpreter(model_path=model_path)
        self.interpreter.allocate_tensors()
        self.input = self.interpreter.get_input_details()[0]
        self.output = self.interpreter.get_output_details()[0]

    def denoise(self, luma: np.ndarray) -> np.ndarray:
        """luma [H, W] in [0, 1], quantised to 8 bit as the app does; overlapping patches, centre kept."""
        quantised = np.round(np.clip(luma, 0, 1) * 255) / 255
        h, w = quantised.shape
        step = self.PATCH - 2 * self.OVERLAP
        out = np.zeros_like(quantised, dtype=F32)
        padded = np.pad(quantised, self.OVERLAP, mode="reflect")
        for y in range(0, h, step):
            for x in range(0, w, step):
                patch = np.zeros((self.PATCH, self.PATCH), dtype=F32)
                src = padded[y:y + self.PATCH, x:x + self.PATCH]
                patch[:src.shape[0], :src.shape[1]] = src
                self.interpreter.set_tensor(self.input["index"], patch.reshape(self.input["shape"]))
                self.interpreter.invoke()
                result = self.interpreter.get_tensor(self.output["index"]).reshape(self.PATCH, self.PATCH)
                core = result[self.OVERLAP:self.OVERLAP + step, self.OVERLAP:self.OVERLAP + step]
                hh, ww = min(step, h - y), min(step, w - x)
                out[y:y + hh, x:x + ww] = core[:hh, :ww]
        return out
