"""Reader for PhotonDenoiseDump files (docs/photon-multiscale-denoise.md section 12.4).

Usage: uv run --with numpy python -I tools/photon_denoise/load_dump.py <stem-or-.json> [...]

Prints per-channel statistics of the dumped camera RGB, the noise profile, and the LSC gain
field resampled at the image the way it was applied (merge: whole-image UV bilinear,
green = mean of both greens; demosaic: Camera2 UV or DNG GainMap grid).
"""

from __future__ import annotations

import json
import sys
from pathlib import Path

import numpy as np


def load(path: str) -> tuple[np.ndarray, dict]:
    stem = Path(path).with_suffix("")
    meta = json.loads(stem.with_suffix(".json").read_text())
    raw = np.fromfile(stem.with_suffix(".rgba16f"), dtype="<f2")
    rgba = raw.reshape(meta["height"], meta["width"], 4).astype(np.float32)
    return np.moveaxis(rgba[..., :3], -1, 0), meta


def _bilinear(grid: np.ndarray, u: np.ndarray, v: np.ndarray) -> np.ndarray:
    """GL_LINEAR sampling with clamp-to-edge of grid [H, W] at texture coordinates u, v in [0, 1]."""
    h, w = grid.shape
    x = np.clip(u * w - 0.5, 0, w - 1)
    y = np.clip(v * h - 0.5, 0, h - 1)
    x0 = np.floor(x).astype(int)
    y0 = np.floor(y).astype(int)
    x1 = np.minimum(x0 + 1, w - 1)
    y1 = np.minimum(y0 + 1, h - 1)
    fx = x - x0
    fy = y - y0
    top = grid[y0[:, None], x0[None, :]] * (1 - fx)[None, :] + grid[y0[:, None], x1[None, :]] * fx[None, :]
    bottom = grid[y1[:, None], x0[None, :]] * (1 - fx)[None, :] + grid[y1[:, None], x1[None, :]] * fx[None, :]
    return top * (1 - fy)[:, None] + bottom * fy[:, None]


def gain_field(meta: dict) -> np.ndarray | None:
    """RGB gain [3, H, W] contained in the dumped pixels (section 3), or None."""
    lsc = meta.get("lensShading")
    if lsc is None:
        return None
    gains = np.asarray(lsc["gains"], dtype=np.float32).reshape(lsc["height"], lsc["width"], 4)
    if lsc.get("dngGrid") is not None:
        raise NotImplementedError("DNG GainMap grids are reproduced once a DNG-grid capture is dumped")
    width, height = meta["fullWidth"], meta["fullHeight"]
    xs = meta["originX"] + np.arange(meta["width"]) + 0.5
    ys = meta["originY"] + np.arange(meta["height"]) + 0.5
    u, v = xs / width, ys / height
    channels = [gains[..., 0], 0.5 * (gains[..., 1] + gains[..., 2]), gains[..., 3]]
    return np.stack([_bilinear(c, u, v) for c in channels])


def main() -> int:
    for path in sys.argv[1:]:
        rgb, meta = load(path)
        print(f"{Path(path).name}: {meta['pipeline']} {meta['width']}x{meta['height']} "
              f"origin=({meta['originX']},{meta['originY']}) full={meta['fullWidth']}x{meta['fullHeight']} "
              f"cfa={meta['cfaPattern']} frames={meta['frameCount']} iso={meta['iso']}")
        for c, name in enumerate("RGB"):
            channel = rgb[c]
            print(f"  {name}: mean={channel.mean():.5f} min={channel.min():.5f} max={channel.max():.5f} "
                  f"finite={np.isfinite(channel).all()}")
        print(f"  WB={meta['whiteBalanceGains']} profile read={meta.get('profileRgbRead')} "
              f"shot={meta.get('profileRgbShot')}")
        gain = gain_field(meta)
        if gain is None:
            print("  LSC in pixels: none")
        else:
            lsc = meta["lensShading"]
            print(f"  LSC in pixels: {lsc['source']} map {lsc['width']}x{lsc['height']} "
                  f"gain R {gain[0].min():.3f}..{gain[0].max():.3f} "
                  f"G {gain[1].min():.3f}..{gain[1].max():.3f} B {gain[2].min():.3f}..{gain[2].max():.3f}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
