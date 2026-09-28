"""Isolate correspondence fitting from learned inverse-colour prediction."""

import json
from pathlib import Path

import torch

from .data import PairDataset, file_hash, read_manifest
from .lut import apply_lut, identity_lut
from .point_fitting import fit_pixel_pairs, interpolate_anchors
from .point_model import PixelPairLutNet, PointModelConfig


@torch.no_grad()
def audit_point_fitting(manifest_path: Path, output: Path, samples: int = 40) -> dict:
    if samples < 1:
        raise ValueError("At least one oracle sample is required")
    torch.manual_seed(42)
    config = PointModelConfig()
    model = PixelPairLutNet(config).eval()
    grid = identity_lut(7)[None]
    points = torch.rand(1, 196, 3)
    confidence = torch.ones(1, 196, 1)
    probes = {}
    # Cross-channel mapping must survive; per-primary monotonic projection would corrupt a channel swap.
    for name, anchors in (
        ("identity", grid),
        ("channel_swap", grid[:, [2, 0, 1]]),
        (
            "cross_channel_affine",
            torch.einsum(
                "oc,ncbgr->nobgr",
                torch.tensor([[0.65, 0.2, 0.05], [0.1, 0.7, 0.1], [0.2, 0.05, 0.6]]),
                grid,
            )
            + 0.02,
        ),
    ):
        target = (
            apply_lut(anchors, points.transpose(1, 2).unsqueeze(-1))
            .squeeze(-1)
            .transpose(1, 2)
        )
        predicted = fit_pixel_pairs(anchors, points, target, confidence)
        expected = interpolate_anchors(anchors, 33)
        error = float((predicted - expected).abs().max())
        probes[name] = error
        if error > 2e-6:
            raise AssertionError(f"{name} fitting changed a valid mapping: {error}")
    # Verify duplicate sample invariance: duplicating every pair should not change density-balanced fitting.
    nonlinear = (points.square() * 0.8 + 0.1).clamp(0, 1)
    once = fit_pixel_pairs(grid, points, nonlinear, confidence)
    twice = fit_pixel_pairs(
        grid,
        points.repeat_interleave(2, 1),
        nonlinear.repeat_interleave(2, 1),
        confidence.repeat_interleave(2, 1),
    )
    probes["duplicated_pairs_max_abs"] = float((once - twice).abs().max())
    if probes["duplicated_pairs_max_abs"] > 2e-6:
        raise AssertionError("Repeated pixels changed the density-normalized fit")
    manifest = read_manifest(manifest_path)
    dataset = PairDataset(manifest, "validation", "validation", samples, 224)
    records = []
    for index in range(samples):
        originals, target_lut, effects = dataset[index]
        anchors = interpolate_anchors(target_lut[None], config.anchor_size)
        source = originals[:1].flatten(2)[:, :, model.sample_indices].transpose(1, 2)
        target = effects[:1].flatten(2)[:, :, model.sample_indices].transpose(1, 2)
        fit = fit_pixel_pairs(anchors, source, target, confidence).clamp(0, 1)
        base = interpolate_anchors(anchors, 33).clamp(0, 1)
        records.append(
            {
                "index": index,
                "base_grid_mae": float((base - target_lut).abs().mean()),
                "oracle_grid_mae": float((fit - target_lut).abs().mean()),
                "base_same_photo_mae": float(
                    (apply_lut(base, originals[:1]) - effects[:1]).abs().mean()
                ),
                "oracle_same_photo_mae": float(
                    (apply_lut(fit, originals[:1]) - effects[:1]).abs().mean()
                ),
                "base_cross_photo_mae": float(
                    (apply_lut(base, originals[1:]) - effects[1:]).abs().mean()
                ),
                "oracle_cross_photo_mae": float(
                    (apply_lut(fit, originals[1:]) - effects[1:]).abs().mean()
                ),
            }
        )
    result = {
        "kind": "oracle_pixel_pair_fitting_not_model_quality",
        "manifest_sha256": file_hash(manifest_path),
        "config": model.budget(),
        "probes": probes,
        "samples": samples,
        "means": {
            key: sum(r[key] for r in records) / samples
            for key in records[0]
            if key != "index"
        },
        "oracle_worse_cross_photo_count": sum(
            r["oracle_cross_photo_mae"] > r["base_cross_photo_mae"] for r in records
        ),
        "records": records,
        "note": "Oracle uses ground-truth source RGB pairs and true LUT anchors. A single-reference model must predict these; this report is a fitter bound, not learned accuracy.",
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(result, indent=2) + "\n")
    return {k: v for k, v in result.items() if k != "records"}
