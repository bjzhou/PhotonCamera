"""Pass-by-pass parity between the GLES Photon denoiser and photon_denoise.py (implementation step 3).

Each pass is recomputed from the GPU's own dumped inputs, so arithmetic differences do not
accumulate across passes. Tolerance per element: 2 float16 ulps of the value plus 2^-14 of the
channel's largest magnitude (cancellation floor). A pass passes when no element exceeds it.

Usage:
  uv run --with numpy python -I tools/photon_denoise/compare_passes.py <dump stem or .json>
  uv run --with numpy python -I tools/photon_denoise/compare_passes.py --self-test
"""

from __future__ import annotations

import json
from dataclasses import replace
import sys
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent))
import noise_model  # noqa: E402
import photon_denoise as pd  # noqa: E402

F32 = np.float32
STRENGTH_TOLERANCE = 0.02
PREFILTER_FLIPS = 1e-4


def params_from_json(p: dict) -> pd.Params:
    lsc = None
    if "lensShading" in p:
        l = p["lensShading"]
        lsc = pd.LensShading(
            np.asarray(l["gains"], dtype=F32).reshape(l["height"], l["width"], 4),
            np.asarray(l["dngGrid"], dtype=F32) if "dngGrid" in l else None,
            (p["originX"], p["originY"]),
            (p["fullWidth"], p["fullHeight"]),
        )
    return pd.Params(
        scale=p["scale"],
        white_balance=np.asarray(p["whiteBalance"], dtype=F32),
        read=np.asarray(p["read"], dtype=F32),
        shot=np.asarray(p["shot"], dtype=F32),
        merge_read=p["mergeRead"],
        merge_shot=p["mergeShot"],
        residual=np.asarray(p["residual"], dtype=F32),
        kappa_luma=np.asarray(p["kappaLuma"], dtype=F32),
        kappa_chroma=np.asarray(p["kappaChroma"], dtype=F32),
        levels=p["levels"],
        luma_levels=p["lumaLevels"],
        alpha=np.asarray(p["alpha"], dtype=F32),
        grain=np.asarray(p["grain"], dtype=F32),
        outlier=np.asarray(p["outlier"], dtype=F32),
        gate_luma=tuple(p["gateLuma"]),
        gate_chroma=tuple(p["gateChroma"]),
        bilateral_levels=p["bilateralLevels"],
        chroma_gate_from=p.get("chromaGateFrom", 0),
        chroma_detail_from=p.get("chromaDetailFrom", 0),
        chroma_detail_snr=tuple(p.get("chromaDetailSnr", (0.0, 0.0))),
        chroma_guide=p.get("chromaGuide", 0.0),
        edge_marker=tuple(p.get("edgeMarker", (1e30, 2e30))),
        bilateral_luma=p["bilateralLuma"],
        bilateral_chroma=p["bilateralChroma"],
        luma_strength=p["lumaStrength"],
        chroma_strength=p["chromaStrength"],
        lsc=lsc,
        strength_table=np.asarray(p["strengthTable"], dtype=F32).reshape(p["levels"], pd.STRENGTH_BINS, 3)
        if "strengthTable" in p else None,
        gamma=np.asarray(p["gamma"], dtype=F32) if "gamma" in p else None,
        strength_cap_luma=np.asarray(p["strengthCapLuma"], dtype=F32) if "strengthCapLuma" in p else None,
        strength_cap_chroma=np.asarray(p["strengthCapChroma"], dtype=F32) if "strengthCapChroma" in p else None,
        merge_map=pd.MergeMap(
            np.asarray(p["mergeMap"]["values"], dtype=F32).reshape(p["mergeMap"]["height"], p["mergeMap"]["width"], 2),
            (p["originX"], p["originY"]),
            (p["fullWidth"], p["fullHeight"]),
        ) if "mergeMap" in p else None,
    )


def load_texture(path: Path, width: int, height: int, fmt: str) -> np.ndarray:
    dtype = "<f2" if fmt == "f16" else "<f4"
    data = np.fromfile(path, dtype=dtype).reshape(height, width, 4).astype(F32)
    return np.moveaxis(data, -1, 0)


def tolerance_excess(gpu: np.ndarray, ref: np.ndarray) -> tuple[float, int, float]:
    """(worst |diff| / tolerance, count over tolerance, worst diff in ulps)."""
    magnitude = np.maximum(np.abs(gpu), np.abs(ref))
    ulp = np.spacing(magnitude.astype(np.float16)).astype(F32)
    floor = np.max(np.abs(ref), axis=(1, 2), keepdims=True) * F32(2.0 ** -14)
    tolerance = 2 * ulp + floor
    ratio = np.abs(gpu - ref) / np.maximum(tolerance, F32(1e-30))
    return float(ratio.max()), int((ratio > 1).sum()), float((np.abs(gpu - ref) / np.maximum(ulp, 1e-30)).max())


def compare(input_rgb: np.ndarray, params: pd.Params, textures: dict[str, np.ndarray]) -> bool:
    sizes = pd.level_sizes(input_rgb.shape[1], input_rgb.shape[2], params.levels)
    results = []

    def check(name: str, ref: np.ndarray, channels: int):
        if name not in textures:
            results.append((name, None))
            return
        gpu = textures[name][:channels]
        results.append((name, tolerance_excess(gpu, ref[:channels])))

    g0 = pd.analyze0(input_rgb, params)
    gaussians = {0: g0}
    for level in range(params.levels):
        fine = g0 if level == 0 else textures[f"G{level}"][:3]
        check(f"G{level + 1}", pd.f16(pd.down(fine, sizes[level + 1])), 3)
        gaussians[level + 1] = textures[f"G{level + 1}"][:3]
    # Section 5.1: estimated from the GPU's own Gaussians when the params carry no table. Bucket
    # boundaries may flip with last-ulp log2 differences, so the table is compared relatively.
    if params.strength_table is None:
        ref_table = pd.estimate_strength(g0, [gaussians[l + 1] for l in range(params.levels)], params)
        gpu_table = textures.get("strength")
        if gpu_table is None:
            results.append(("strength", None))
        else:
            rel = np.abs(gpu_table - ref_table) / np.maximum(np.abs(ref_table), F32(1e-3))
            results.append(("strength", (float(rel.max() / STRENGTH_TOLERANCE),
                                         int((rel > STRENGTH_TOLERANCE).sum()), 0.0)))
            params = replace(params, strength_table=gpu_table)
    # Section 6.0: an outlier decision near its threshold may flip with last-ulp differences, so
    # the correction passes when at most PREFILTER_FLIPS of the pixels disagree.
    if pd.prefilter_amounts(params).any():
        ref = pd.prefilter(g0, gaussians[1], params)
        gpu = textures.get("prefilter0")
        if gpu is None:
            results.append(("prefilter0", None))
        else:
            gpu = gpu[:3]
            flips = float(np.mean(np.abs(gpu - ref) > 1e-3 * np.maximum(np.abs(ref), np.abs(gpu)) + F32(1e-6)))
            results.append(("prefilter0", (flips / PREFILTER_FLIPS, int(flips > PREFILTER_FLIPS), 0.0)))
            g0 = g0 + gpu
    for level in range(params.levels - 1, -1, -1):
        fine = g0 if level == 0 else gaussians[level]
        denoised_coarse = gaussians[params.levels] if level == params.levels - 1 \
            else textures[f"denoised{level + 1}"][:3]
        lap, base, noise = pd.band(fine, gaussians[level + 1], denoised_coarse, level, params)
        check(f"band{level}", lap, 3)
        check(f"base{level}", base, 3)
        check(f"noise{level}", noise, 4)
        gpu_lap = textures[f"band{level}"][:3]
        gpu_base = textures[f"base{level}"][:3]
        gpu_noise = textures[f"noise{level}"][:4]
        gpu_pilot = None
        if level < params.luma_levels and params.luma_strength > 0:
            check(f"pilot{level}", pd.pilot(gpu_lap, gpu_base, gpu_noise, level, params), 4)
            gpu_pilot = textures[f"pilot{level}"][:4]
        result = pd.final(gpu_lap, gpu_base, gpu_noise, gpu_pilot, level, params)
        if level > 0:
            check(f"denoised{level}", pd.f16(result), 3)
        else:
            check("output", pd.output(result, params), 3)
    ok = True
    for name, stats in results:
        if stats is None:
            print(f"  {name:<11} missing")
            ok = False
            continue
        worst, count, ulps = stats
        status = "ok" if count == 0 else "FAIL"
        ok &= count == 0
        print(f"  {name:<11} worst={worst:8.3f}x tol  over={count:<8} max_ulp={ulps:10.1f}  {status}")
    return ok


def load_dump(path: str) -> tuple[np.ndarray, pd.Params, dict[str, np.ndarray]]:
    stem = Path(path)
    if stem.suffix == ".json":
        stem = stem.with_suffix("")
    meta = json.loads(stem.with_suffix(".json").read_text())
    raw = np.fromfile(stem.with_suffix(".rgba16f"), dtype="<f2").reshape(meta["height"], meta["width"], 4)
    rgb = np.moveaxis(raw[..., :3].astype(F32), -1, 0)
    photon = json.loads(Path(f"{stem}.photon.json").read_text())
    textures = {
        entry["name"]: load_texture(Path(f"{stem}.{entry['name']}.{entry['format']}"),
                                    entry["width"], entry["height"], entry["format"])
        for entry in photon["passes"]
    }
    params = params_from_json(photon["params"])
    if "strength" in photon:
        textures["strength"] = np.asarray(photon["strength"], dtype=F32).reshape(params.levels, pd.STRENGTH_BINS, 3)
    return rgb, params, textures


def self_test() -> bool:
    """Feeds the reference's own trace back as 'GPU' textures: every pass must match exactly."""
    rng = np.random.default_rng(3)
    h, w = 75, 101  # odd sizes exercise the mirror and ceil paths
    mu = np.array([0.08, 0.2, 0.11], dtype=F32)
    read = np.full(3, 2e-5, dtype=F32)
    shot = np.full(3, 3e-4, dtype=F32)
    yy, xx = np.mgrid[0:h, 0:w]
    clean = (mu[:, None, None] * (1 + 0.3 * np.sin(xx / 7.0) * np.cos(yy / 5.0))[None]).astype(F32)
    rgb = pd.f16(clean + np.sqrt(read + shot * mu)[:, None, None] * rng.standard_normal((3, h, w)).astype(F32))
    kappa = noise_model.Kappa0.build(4, 4)
    lsc = pd.LensShading(rng.uniform(1.0, 2.0, (5, 7, 4)).astype(F32), None, (0, 0), (w, h))
    residual = np.array([[0.09, 0.0, 0.0], [0.04, 0.0, 0.0], [1.0, 1.0, 1.0], [1.0, 1.0, 1.0]], dtype=F32)
    params = pd.Params(4096.0, np.array([2.0, 1.0, 1.6], dtype=F32), read, shot, 0.5, 0.5, residual,
                       kappa.luma.astype(F32), kappa.chroma.astype(F32), 4, 4, np.ones(4, dtype=F32),
                       np.full(4, 0.2, dtype=F32), np.full(4, 2.5, dtype=F32), (16.919, 27.877), (5.991, 13.816),
                       2, 4.0, 4.0, 1.0, 1.0, lsc,
                       merge_map=pd.MergeMap(rng.uniform(0.1, 1.0, (3, 4, 2)).astype(F32), (0, 0), (w, h)))
    params = replace(params, gamma=np.array([0.5, 0.5, 0.5, 1.0], dtype=F32), chroma_gate_from=2, chroma_detail_from=3, chroma_detail_snr=(4.0, 10.0), chroma_guide=2.0, edge_marker=(1.0, 2.0),
                     strength_cap_luma=rng.uniform(0.5, 6.0, 4).astype(F32),
                     strength_cap_chroma=rng.uniform(0.01, 6.0, 4).astype(F32))
    trace = pd.run(rgb, params)
    textures = {f"G{i + 1}": g for i, g in enumerate(trace.gaussians)}
    for level, (lap, base, noise) in trace.bands.items():
        textures[f"band{level}"], textures[f"base{level}"], textures[f"noise{level}"] = lap, base, noise
    textures.update({f"pilot{level}": p for level, p in trace.pilots.items()})
    textures.update({f"denoised{level}": d for level, d in trace.denoised.items() if level > 0})
    textures["output"] = trace.output
    textures["strength"] = trace.strength
    if trace.prefilter is not None:
        textures["prefilter0"] = trace.prefilter
    return compare(rgb, params, textures)


def main() -> int:
    if sys.argv[1:] == ["--self-test"]:
        print("self-test")
        return 0 if self_test() else 1
    ok = True
    for path in sys.argv[1:]:
        print(path)
        rgb, params, textures = load_dump(path)
        ok &= compare(rgb, params, textures)
    print("PASS" if ok else "FAIL")
    return 0 if ok else 1


if __name__ == "__main__":
    raise SystemExit(main())
