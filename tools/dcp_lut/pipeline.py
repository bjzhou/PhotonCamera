"""D50 profile composition, with measured numerical inverses of SDK maps."""
from __future__ import annotations

import numpy as np
from scipy.spatial import cKDTree

from errors import ToolError
from sdk import Profile


def decode_srgb(x):
    x = np.maximum(x, 0)
    return np.where(x <= 0.04045, x / 12.92, ((x + 0.055) / 1.055) ** 2.4)


def encode_srgb(x):
    x = np.maximum(x, 0)
    return np.where(x <= 0.0031308, 12.92 * x, 1.055 * x ** (1 / 2.4) - 0.055)


def encode_overrange(x):
    x = np.maximum(x, 0)
    return x * (256 + x) / (256 * (1 + x))


def decode_overrange(x):
    # Stable positive quadratic root, algebraically equal to SDK DecodeOverrange.
    x = np.maximum(x, 0)
    a = 256 * (1 - x)
    root = np.sqrt(a * a + 1024 * x)
    return np.where(a >= 0, 512 * x / np.maximum(root + a, 1e-30), (root - a) / 2)


def tone(profile: Profile, rgb, inverse=False):
    """Adobe RGB tone: map extrema; interpolate middle channel, preserving hue."""
    values = profile.curve
    if inverse and np.any(np.diff(values) <= 0):
        raise ToolError("nonmonotonic_curve")
    x = encode_overrange(rgb) if profile.hdr else np.clip(rgb, 0, 1)
    lo, hi = x.min(axis=1), x.max(axis=1)
    axis = np.linspace(0, 1, len(values))
    if inverse:
        low, high = np.interp(lo, values, axis), np.interp(hi, values, axis)
    else:
        low, high = np.interp(lo, axis, values), np.interp(hi, axis, values)
        if profile.hdr:
            slope = (values[-1] - np.interp(0.999, axis, values)) / 0.001
            low = np.where(lo > 1, values[-1] + slope * (lo - 1), low)
            high = np.where(hi > 1, values[-1] + slope * (hi - 1), high)
    fraction = np.divide(x - lo[:, None], (hi - lo)[:, None],
                         out=np.zeros_like(x), where=(hi - lo)[:, None] > 0)
    out = low[:, None] + fraction * (high - low)[:, None]
    return decode_overrange(out) if profile.hdr else out


def exposure(profile: Profile, rgb, inverse=False):
    # SDK exposure ramp with zero image-dependent shadows/black. Negative EV is
    # already included in the SDK tone curve via dng_function_exposure_tone.
    gain = 2 ** max(0, profile.exposure)
    if inverse:
        return rgb / gain
    out = np.maximum(rgb, 0) * gain
    return out if profile.hdr else np.minimum(out, 1)


def forward(profile: Profile, camera):
    rgb = profile.apply(3, camera)
    rgb = profile.apply(0, rgb)
    rgb = exposure(profile, rgb)
    rgb = profile.apply(1, rgb)
    return tone(profile, rgb)


def error_summary(error, tolerance):
    error = np.asarray(error)
    return {"count": int(len(error)), "over_tolerance": int(np.sum(error > tolerance)),
            "maximum": float(np.max(error, initial=0)),
            "rms": float(np.sqrt(np.mean(error ** 2))) if len(error) else 0,
            "p99": float(np.quantile(error, 0.99)) if len(error) else 0}


class MapInverse:
    """Bounded, multistart Gauss-Newton; every result is checked with the SDK.

    A KD tree only supplies initial guesses. It never substitutes an inverse LUT
    for the forward map. Multiple basins are tried for failed local solves.
    Clipped/non-injective outputs cannot recover a unique original camera value.
    """
    def __init__(self, profile: Profile, stage: int, tolerance: float, domain_max: float):
        self.profile, self.stage = profile, stage
        self.tolerance, self.upper = tolerance, domain_max
        self.enabled = profile.maps[stage]
        if self.enabled:
            axis = np.linspace(0, 1, 33)
            if domain_max > 1:
                axis = np.unique(np.r_[axis, np.geomspace(1, domain_max, 17)])
            self.seeds = np.stack(np.meshgrid(axis, axis, axis, indexing="ij"), -1).reshape(-1, 3)
            self.tree = cKDTree(profile.apply(stage, self.seeds))

    def solve(self, target):
        if not self.enabled:
            return target.copy()
        best = self._iterate(target, np.clip(target, 0, self.upper))
        best_error = np.max(np.abs(self.profile.apply(self.stage, best) - target), axis=1)
        failed = np.flatnonzero(best_error > self.tolerance)
        if len(failed):
            _, indices = self.tree.query(target[failed], k=4)
            for seed in range(4):
                candidate = self._iterate(target[failed], self.seeds[indices[:, seed]])
                error = np.max(np.abs(self.profile.apply(self.stage, candidate) - target[failed]), axis=1)
                better = error < best_error[failed]
                selected = failed[better]
                best[selected], best_error[selected] = candidate[better], error[better]
        return best

    def _iterate(self, target, initial):
        x = initial.copy()
        damping = np.full(len(x), 1e-5)
        # Map residual is linear ProPhoto, while the final validation is encoded
        # sRGB. A fixed 5e-6 map error is visibly amplified by the toe + sRGB.
        # Solve near the SDK float32 relative precision, especially in shadows.
        convergence = np.minimum(self.tolerance / 32,
                                 np.max(np.abs(target), axis=1) * 5e-8 + 1e-10)
        for _ in range(60):
            y = self.profile.apply(self.stage, x)
            residual = y - target
            active = np.flatnonzero(np.max(np.abs(residual), axis=1) > convergence)
            if not len(active):
                break
            xa, ra = x[active], residual[active]
            jac = np.empty((len(active), 3, 3))
            for c in range(3):
                step = 2e-4 * np.maximum(1, xa[:, c])
                plus, minus = xa.copy(), xa.copy()
                plus[:, c] = np.minimum(xa[:, c] + step, self.upper)
                minus[:, c] = np.maximum(xa[:, c] - step, 0)
                jac[:, :, c] = (self.profile.apply(self.stage, plus) -
                                 self.profile.apply(self.stage, minus)) / (plus[:, c] - minus[:, c])[:, None]
            jt = jac.transpose(0, 2, 1)
            normal = jt @ jac + damping[active, None, None] * np.eye(3)
            delta = np.linalg.solve(normal, (jt @ ra[:, :, None]))[:, :, 0]
            candidate = np.clip(xa - delta, 0, self.upper)
            new_residual = self.profile.apply(self.stage, candidate) - target[active]
            better = np.sum(new_residual ** 2, axis=1) < np.sum(ra ** 2, axis=1)
            x[active[better]] = candidate[better]
            damping[active] = np.where(better, np.maximum(damping[active] * 0.3, 1e-9),
                                      np.minimum(damping[active] * 10, 1e5))
            if np.all(damping[active] >= 1e5):
                break
        return x


class Converter:
    def __init__(self, source, target, tolerance=2e-5, hdr_domain_max=16):
        self.source, self.target, self.tolerance = source, target, tolerance
        if np.any(np.diff(source.curve) <= 0):
            raise ToolError("nonmonotonic_curve")
        self.from_srgb = np.linalg.inv(source.to_srgb)
        self.inverse_matrix = np.linalg.inv(source.matrix)
        upper = hdr_domain_max if source.hdr else 1
        self.hue = MapInverse(source, 0, tolerance, upper)
        self.look = MapInverse(source, 1, tolerance, upper)
        self.errors = {key: [] for key in ["tone", "look_table", "hue_sat_map", "matrix", "source_roundtrip_srgb"]}
        self.gamut_clipped = 0
        self.target_matrix_clipped = 0
        self.camera_outside_unit = 0
        self.camera_white_clipped = 0

    def convert(self, rgb):
        source = self.source
        pro = decode_srgb(rgb) @ self.from_srgb.T
        before_tone = tone(source, pro, inverse=True)
        self._record("tone", tone(source, before_tone), pro)
        before_look = self.look.solve(before_tone)
        self._record("look_table", source.apply(1, before_look), before_tone)
        before_exposure = exposure(source, before_look, inverse=True)
        before_hue = self.hue.solve(before_exposure)
        self._record("hue_sat_map", source.apply(0, before_hue), before_exposure)
        camera = before_hue @ self.inverse_matrix.T
        self.camera_outside_unit += int(np.any((camera < 0) | (camera > 1), axis=1).sum())
        self.camera_white_clipped += int(np.any(camera > 1 + 1e-7, axis=1).sum())
        self._record("matrix", source.apply(3, camera), before_hue)
        replay = encode_srgb(np.clip(forward(source, camera) @ source.to_srgb.T, 0, 1))
        self._record("source_roundtrip_srgb", replay, rgb)
        target_linear = np.minimum(camera, 1) @ self.target.matrix.T
        self.target_matrix_clipped += int(np.any((target_linear < 0) | (target_linear > 1), axis=1).sum())
        linear = forward(self.target, camera) @ self.target.to_srgb.T
        self.gamut_clipped += int(np.any((linear < -1e-7) | (linear > 1 + 1e-7), axis=1).sum())
        return encode_srgb(np.clip(linear, 0, 1))

    def _record(self, key, actual, expected):
        self.errors[key].append(np.max(np.abs(actual - expected), axis=1))

    def report(self):
        return {"inverse_residuals": {k: error_summary(np.concatenate(v), self.tolerance)
                for k, v in self.errors.items()}, "tolerance": self.tolerance,
                "target_srgb_gamut_clipped_nodes": self.gamut_clipped,
                "target_prophoto_matrix_clipped_nodes": self.target_matrix_clipped,
                "camera_white_clipped_nodes": self.camera_white_clipped,
                "virtual_camera_outside_unit_nodes": self.camera_outside_unit}
