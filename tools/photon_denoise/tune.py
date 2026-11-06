"""Offline tuning of the Photon denoiser (docs/photon-multiscale-denoise.md sections 6.4, 7.4, 12.2).

Clean reference: a base-ISO multi-frame capture of a static scene (tripod), binned 2x2.
Noisy inputs: captures of the same scene at the tuning ISO nodes, through the actual pipeline,
dumped at the denoiser input (debug.photon.denoise.dump: <stem>.{json,rgba16f,params.json}).
The denoiser output is binned 2x2 like the reference, matched in per-channel exposure, sent
through the fixed reference render (image_metrics.render) and compared.

Objective: mean sRGB PSNR over all crops of a node. Also reported: luma PSNR / SSIM (BT.601
luma, as DnCNN sees it), CIEDE2000, linear PSNR, the noisy input and the DnCNN luma baseline.
Search: coordinate descent over per-level luma parameters (α_l, t_l, d_l) and the chroma
parameters (gate thresholds, joint bilateral), starting from PhotonDenoiseTuning defaults.

Usage:
  uv run --with numpy --with ai-edge-litert python -I tools/photon_denoise/tune.py cases.json [out.json]
  uv run --with numpy --with ai-edge-litert python -I tools/photon_denoise/tune.py --self-test
cases.json: [{"clean": "<stem>", "noisy": ["<stem>", ...]}, ...]
"""

from __future__ import annotations

import copy
import json
import sys
from dataclasses import dataclass, field, replace
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent))
import image_metrics as im  # noqa: E402
import model_error  # noqa: E402
import noise_model  # noqa: E402
import photon_denoise as pd  # noqa: E402

F32 = np.float32
CROP = 384
CROPS_PER_IMAGE = 4
ROUNDS = 2
DNCNN_MODEL = Path(__file__).resolve().parents[2] / "app/src/main/assets/dncnn.tflite"

ALPHA = (0.6, 0.8, 1.0, 1.25, 1.6, 2.0)
GRAIN = (0.0, 0.1, 0.2, 0.3, 0.45)
OUTLIER = (1.5, 2.5, 4.0)
GATE_SCALE = (0.5, 1.0, 2.0, 4.0)
BILATERAL_C = (1.0, 4.0, 16.0)
BILATERAL_LEVELS = (2, 3, 4)
GATE_LUMA = (16.919, 27.877)
GATE_CHROMA = (5.991, 13.816)


@dataclass
class Crop:
    noisy: np.ndarray          # [3, CROP, CROP] camera RGB at full resolution
    clean: np.ndarray          # [3, CROP/2, CROP/2] binned clean camera RGB
    gain: np.ndarray           # per-channel exposure match noisy -> clean
    params: pd.Params          # with the crop's LSC origin
    white_balance: np.ndarray
    exposure: float


@dataclass
class Node:
    pipeline: str
    n: float                   # §5 noise coordinate
    crops: list[Crop] = field(default_factory=list)


def bin2(x: np.ndarray) -> np.ndarray:
    h, w = x.shape[1] // 2 * 2, x.shape[2] // 2 * 2
    x = x[:, :h, :w]
    return 0.25 * (x[:, 0::2, 0::2] + x[:, 1::2, 0::2] + x[:, 0::2, 1::2] + x[:, 1::2, 1::2])


def noise_coordinate(params: pd.Params) -> float:
    """§5: n = sqrt(m v_Y(0.18)) / 0.18 from the profile."""
    wb = np.asarray(params.white_balance, dtype=np.float64)
    merge = noise_model.MergeRatio(float(params.merge_read), float(params.merge_shot))
    cov = noise_model.working_point_covariance(params.read, params.shot, 0.18 / wb, wb, 1.0, merge)
    return float(np.sqrt(cov[0, 0]) / 0.18)


def exposure_gain(noisy_binned: np.ndarray, clean: np.ndarray) -> np.ndarray:
    """Per-channel least-squares gain on unclipped pixels (ISO nodes differ in exposure)."""
    gains = np.ones(3, dtype=F32)
    for c in range(3):
        valid = (clean[c] > 0.01) & (clean[c] < 0.9) & (noisy_binned[c] < 0.9)
        gains[c] = float(np.sum(noisy_binned[c][valid] * clean[c][valid]) / np.sum(noisy_binned[c][valid] ** 2))
    return gains


def crop_windows(height: int, width: int) -> list[tuple[int, int]]:
    """Deterministic grid of crop origins (even, inside the image)."""
    side = int(np.ceil(np.sqrt(CROPS_PER_IMAGE)))
    ys = np.linspace(0, height - CROP, side) if height > CROP else [0]
    xs = np.linspace(0, width - CROP, side) if width > CROP else [0]
    return [(int(y) // 2 * 2, int(x) // 2 * 2) for y in ys for x in xs][:CROPS_PER_IMAGE]


def with_origin(params: pd.Params, x: int, y: int) -> pd.Params:
    """Places a crop at (x, y) of the full frame for the whole-image LSC and merge maps."""
    def shift(placed):
        return None if placed is None else replace(placed, origin=(placed.origin[0] + x, placed.origin[1] + y))
    return replace(params, lsc=shift(params.lsc), merge_map=shift(params.merge_map))


def make_crops(noisy_rgb: np.ndarray, clean_binned: np.ndarray, params: pd.Params,
               white_balance: np.ndarray) -> list[Crop]:
    gain = exposure_gain(bin2(noisy_rgb), clean_binned)
    exposure = im.exposure_for(clean_binned, white_balance)
    crops = []
    for y, x in crop_windows(noisy_rgb.shape[1], noisy_rgb.shape[2]):
        crops.append(Crop(
            noisy=noisy_rgb[:, y:y + CROP, x:x + CROP],
            clean=clean_binned[:, y // 2:(y + CROP) // 2, x // 2:(x + CROP) // 2],
            gain=gain,
            params=with_origin(params, x, y),
            white_balance=white_balance,
            exposure=exposure,
        ))
    return crops


def load_nodes(cases_path: str) -> list[Node]:
    nodes: dict[tuple[str, float], Node] = {}
    for case in json.loads(Path(cases_path).read_text()):
        clean = model_error.load(case["clean"])
        clean_binned = bin2(clean.rgb)
        for noisy_path in case["noisy"]:
            noisy = model_error.load(noisy_path)
            n = noise_coordinate(noisy.params)
            key = (noisy.meta["pipeline"], round(n, 4))
            node = nodes.setdefault(key, Node(noisy.meta["pipeline"], n))
            node.crops += make_crops(noisy.rgb, clean_binned, noisy.params, clean.params.white_balance)
    return sorted(nodes.values(), key=lambda node: (node.pipeline, node.n))


# ----------------------------------------------------------------- evaluation

@dataclass
class Tuning:
    alpha: list[float]
    grain: list[float]
    outlier: list[float]
    gate_luma_scale: float = 1.0
    gate_chroma_scale: float = 1.0
    bilateral_levels: int = 3
    bilateral_luma: float = 4.0
    bilateral_chroma: float = 4.0

    @staticmethod
    def defaults(levels: int) -> "Tuning":
        alpha = [1.0, 1.0, 1.0, 1.2, 1.2, 1.2, 1.2][:levels]
        grain = [0.0, 0.20, 0.15, 0.10, 0.10, 0.10, 0.10][:levels]
        return Tuning(alpha, grain, [2.5] * levels)

    def apply(self, params: pd.Params) -> pd.Params:
        n = params.levels
        return replace(
            params,
            alpha=np.asarray(self.alpha[:n], dtype=F32),
            grain=np.asarray(self.grain[:n], dtype=F32),
            outlier=np.asarray(self.outlier[:n], dtype=F32),
            gate_luma=(GATE_LUMA[0] * self.gate_luma_scale, GATE_LUMA[1] * self.gate_luma_scale),
            gate_chroma=(GATE_CHROMA[0] * self.gate_chroma_scale, GATE_CHROMA[1] * self.gate_chroma_scale),
            bilateral_levels=self.bilateral_levels,
            bilateral_luma=self.bilateral_luma,
            bilateral_chroma=self.bilateral_chroma,
            luma_strength=1.0,
            chroma_strength=1.0,
        )

    def to_json(self) -> dict:
        return {
            "alpha": self.alpha, "grain": self.grain, "outlier": self.outlier,
            "gateLuma": [GATE_LUMA[0] * self.gate_luma_scale, GATE_LUMA[1] * self.gate_luma_scale],
            "gateChroma": [GATE_CHROMA[0] * self.gate_chroma_scale, GATE_CHROMA[1] * self.gate_chroma_scale],
            "bilateralLevels": self.bilateral_levels,
            "bilateralLuma": self.bilateral_luma,
            "bilateralChroma": self.bilateral_chroma,
        }


@dataclass
class Score:
    psnr: float
    luma_psnr: float
    luma_ssim: float
    delta_e: float
    linear_psnr: float


def score(outputs: list[np.ndarray], crops: list[Crop]) -> Score:
    values = []
    for out, crop in zip(outputs, crops):
        test = bin2(out) * crop.gain[:, None, None]
        a = im.render(test, crop.white_balance, crop.exposure)
        b = im.render(crop.clean, crop.white_balance, crop.exposure)
        lin = test * np.asarray(crop.white_balance)[:, None, None] * crop.exposure
        ref = crop.clean * np.asarray(crop.white_balance)[:, None, None] * crop.exposure
        values.append((im.psnr(a, b), im.psnr(im.dncnn_luma(a), im.dncnn_luma(b)),
                       im.ssim(im.dncnn_luma(a), im.dncnn_luma(b)), im.ciede2000(a, b),
                       im.psnr(np.clip(lin, 0, 1), np.clip(ref, 0, 1))))
    return Score(*np.mean(np.array(values), axis=0).tolist())


def run_denoiser(crops: list[Crop], tuning: Tuning) -> list[np.ndarray]:
    return [pd.run(crop.noisy, tuning.apply(crop.params)).output for crop in crops]


def dncnn_baseline(crops: list[Crop], model: im.DnCNN) -> float:
    """DnCNN luma PSNR: denoises the rendered noisy luma (the app's 8-bit input)."""
    values = []
    for crop in crops:
        full_render = im.render(crop.noisy * crop.gain[:, None, None], crop.white_balance, crop.exposure)
        denoised = model.denoise(im.dncnn_luma(full_render))
        binned = bin2(denoised[None])[0]
        reference = im.dncnn_luma(im.render(crop.clean, crop.white_balance, crop.exposure))
        values.append(im.psnr(binned, reference))
    return float(np.mean(values))


def search(node: Node, levels: int, rounds: int = ROUNDS, grids: dict | None = None) -> tuple[Tuning, Score, Score]:
    """Coordinate descent on the node's crops; returns (tuning, default score, tuned score)."""
    grids = grids or {}
    best = Tuning.defaults(levels)
    default_score = score(run_denoiser(node.crops, best), node.crops)
    best_score = default_score

    def attempt(candidate: Tuning) -> None:
        nonlocal best, best_score
        result = score(run_denoiser(node.crops, candidate), node.crops)
        if result.psnr > best_score.psnr:
            best, best_score = candidate, result

    luma_levels = min(levels, node.crops[0].params.luma_levels)
    for _ in range(rounds):
        for level in range(luma_levels):
            for name, values in (("alpha", grids.get("alpha", ALPHA)), ("grain", grids.get("grain", GRAIN)),
                                 ("outlier", grids.get("outlier", OUTLIER))):
                base = best
                for value in values:
                    candidate = copy.deepcopy(base)
                    getattr(candidate, name)[level] = value
                    attempt(candidate)
        for name, values in (("gate_luma_scale", grids.get("gate", GATE_SCALE)),
                             ("gate_chroma_scale", grids.get("gate", GATE_SCALE)),
                             ("bilateral_levels", grids.get("bilateral_levels", BILATERAL_LEVELS)),
                             ("bilateral_luma", grids.get("bilateral_c", BILATERAL_C)),
                             ("bilateral_chroma", grids.get("bilateral_c", BILATERAL_C))):
            base = best
            for value in values:
                attempt(replace(copy.deepcopy(base), **{name: value}))
    return best, default_score, best_score


def noisy_score(crops: list[Crop]) -> Score:
    return score([crop.noisy for crop in crops], crops)


def tune(nodes: list[Node], rounds: int = ROUNDS, grids: dict | None = None, dncnn: bool = True) -> dict:
    model = im.DnCNN(str(DNCNN_MODEL)) if dncnn and DNCNN_MODEL.exists() else None
    table: dict[str, dict] = {}
    for node in nodes:
        levels = node.crops[0].params.levels
        tuning, default, tuned = search(node, levels, rounds, grids)
        noisy = noisy_score(node.crops)
        baseline = dncnn_baseline(node.crops, model) if model else float("nan")
        print(f"{node.pipeline} n={node.n:.4f} crops={len(node.crops)}: sRGB PSNR noisy {noisy.psnr:.2f} "
              f"default {default.psnr:.2f} tuned {tuned.psnr:.2f} | luma PSNR tuned {tuned.luma_psnr:.2f} "
              f"DnCNN {baseline:.2f} | SSIM {tuned.luma_ssim:.4f} ΔE00 {tuned.delta_e:.3f} "
              f"(noisy {noisy.delta_e:.3f})")
        entry = tuning.to_json()
        entry.update({"n": node.n, "psnrNoisy": noisy.psnr, "psnrDefault": default.psnr, "psnrTuned": tuned.psnr,
                      "lumaPsnr": tuned.luma_psnr, "lumaSsim": tuned.luma_ssim, "deltaE2000": tuned.delta_e,
                      "linearPsnr": tuned.linear_psnr, "dncnnLumaPsnr": baseline})
        table.setdefault(node.pipeline, {"nodes": []})["nodes"].append(entry)
    return table


# ------------------------------------------------------------------ self-test

def self_test() -> bool:
    """Synthetic clean scene, profile noise passed through a demosaic-like correlation (so the
    white-noise model is wrong by design). Tuning must not lose to the defaults and both must
    beat the noisy input clearly."""
    rng = np.random.default_rng(5)
    h, w = 768, 768
    yy, xx = np.mgrid[0:h, 0:w]
    wb = np.array([2.0, 1.0, 1.6], dtype=F32)
    luma = np.exp2(-7.0 + 6.5 * xx / w) * (0.85 + 0.15 * np.sin(yy / 37.0))
    texture = 1 + 0.25 * np.sin(xx / 4.3) * np.sin(yy / 5.1) + 0.2 * ((xx // 48 + yy // 48) % 2)
    chroma = 0.15 * np.sin(yy / 90.0)
    clean = np.stack([luma * (1 + chroma), luma, luma * (1 - chroma)]) * texture[None] / wb[:, None, None]
    clean = clean.astype(F32)
    read = np.array([4e-5, 3e-5, 5e-5], dtype=F32)
    shot = np.array([8e-4, 6e-4, 9e-4], dtype=F32)
    noise = np.sqrt(read[:, None, None] + shot[:, None, None] * clean) * rng.standard_normal(clean.shape).astype(F32)
    taps = np.array([0.25, 0.5, 0.25], dtype=F32)
    correlated = np.stack([pd.f16(np.einsum("t,tyx->yx", taps, np.stack([np.roll(c, s, 1) for s in (-1, 0, 1)])))
                           for c in noise]) * np.sqrt(8 / 3)  # unit gain on variance after the blur pair
    noisy = pd.f16(clean + correlated)
    levels = 5
    kappa = noise_model.Kappa0.build(levels, levels)
    params = pd.Params(4096.0, wb, read, shot, 1.0, 1.0, np.ones((levels, 3), dtype=F32), kappa.luma.astype(F32),
                       kappa.chroma.astype(F32), levels, levels, np.ones(levels, dtype=F32),
                       np.full(levels, 0.2, dtype=F32), np.full(levels, 2.5, dtype=F32), GATE_LUMA, GATE_CHROMA,
                       3, 4.0, 4.0, 1.0, 1.0, None)
    global CROP, CROPS_PER_IMAGE
    CROP, CROPS_PER_IMAGE = 256, 4
    node = Node("SELF_TEST", noise_coordinate(params))
    node.crops = make_crops(noisy, bin2(clean), params, wb)
    grids = {"alpha": (0.6, 1.0, 1.6), "grain": (0.1, 0.3), "outlier": (2.5,), "gate": (1.0, 2.0),
             "bilateral_levels": (3,), "bilateral_c": (4.0,)}
    table = tune([node], rounds=1, grids=grids, dncnn=True)
    entry = table["SELF_TEST"]["nodes"][0]
    ok = entry["psnrTuned"] >= entry["psnrDefault"] and entry["psnrDefault"] > entry["psnrNoisy"] + 3.0
    json.dumps(table)  # the table must serialise
    print(f"self-test: noisy {entry['psnrNoisy']:.2f} default {entry['psnrDefault']:.2f} "
          f"tuned {entry['psnrTuned']:.2f} DnCNN luma {entry['dncnnLumaPsnr']:.2f} -> {'PASS' if ok else 'FAIL'}")
    return ok


def main() -> int:
    if sys.argv[1:] == ["--self-test"]:
        return 0 if self_test() else 1
    if not sys.argv[1:]:
        print(__doc__)
        return 2
    table = tune(load_nodes(sys.argv[1]))
    output = Path(sys.argv[2]) if len(sys.argv) > 2 else Path("photon_denoise_tuning.json")
    output.write_text(json.dumps(table, indent=2))
    print(f"tuning table written to {output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
