"""Supervised LUT, reconstruction, cross-scene and consistency optimization."""

import io
import json
import math
import random
import time
from dataclasses import asdict, dataclass
from pathlib import Path

import numpy as np
import torch
from PIL import Image
from torch.nn import functional as F
from torch.utils.data import DataLoader

from .data import PairDataset, file_hash, read_manifest
from .lut import apply_lut, identity_lut, read_lut
from .model import ModelConfig, StyleLutNet
from .point_fitting import interpolate_anchors
from .point_model import PixelPairLutNet, PointModelConfig, correspondence_losses


def model_config_dict(config: ModelConfig | PointModelConfig) -> dict:
    result = asdict(config)
    result.setdefault("architecture", "legacy")
    return result


def model_from_config(config: dict | ModelConfig | PointModelConfig):
    values = dict(config) if isinstance(config, dict) else model_config_dict(config)
    architecture = values.pop("architecture", "legacy")
    if architecture == "legacy":
        return StyleLutNet(ModelConfig(**values))
    if architecture == "pixel_pairs":
        return PixelPairLutNet(PointModelConfig(**values))
    raise ValueError(f"Unsupported model architecture: {architecture}")


def validate_render_size(model, config: "TrainConfig"):
    if isinstance(model, PixelPairLutNet) and config.render_size != 224:
        raise ValueError(
            "Pixel-pair supervision requires --render-size 224 for aligned pixel targets"
        )


@dataclass(frozen=True)
class TrainConfig:
    epochs: int = 30
    steps_per_epoch: int = 500
    batch_size: int = 8  # independent styles; each has TWO independent source photos
    render_size: int = 320
    validation_samples: int = 256
    workers: int = 0
    learning_rate: float = 0.0003
    weight_decay: float = 0.0001
    precision: str = "fp32"
    jpeg_probability: float = 0.5
    seed: int = 42

    def __post_init__(self):
        if (
            min(
                self.epochs,
                self.steps_per_epoch,
                self.batch_size,
                self.validation_samples,
            )
            < 1
        ):
            raise ValueError("Training sizes must be positive")
        if (
            self.render_size < 224
            or self.workers < 0
            or not 0 <= self.jpeg_probability <= 1
        ):
            raise ValueError("Invalid rendering, loader or JPEG configuration")
        if self.precision not in ("fp32", "fp16", "bf16") or self.learning_rate <= 0:
            raise ValueError("Invalid precision or learning rate")


def resolve_device(name: str) -> torch.device:
    if name == "auto":
        name = (
            "cuda"
            if torch.cuda.is_available()
            else "mps"
            if torch.backends.mps.is_available()
            else "cpu"
        )
    device = torch.device(name)
    if device.type == "cuda" and not torch.cuda.is_available():
        raise ValueError("CUDA is not available")
    if device.type == "mps" and not torch.backends.mps.is_available():
        raise ValueError("MPS is not available")
    return device


def encoder_input(effects: torch.Tensor) -> torch.Tensor:
    return F.interpolate(
        effects, size=(224, 224), mode="bilinear", align_corners=False, antialias=True
    )


def jpeg_observation(effects: torch.Tensor, probability: float) -> torch.Tensor:
    """Lossy observation only: labels and pixel reconstruction targets remain FP32."""
    if probability == 0:
        return effects
    observations = []
    for effect in effects:
        if random.random() >= probability:
            observations.append(effect)
            continue
        array = (
            np.rint(effect.detach().cpu().permute(1, 2, 0).numpy() * 255)
            .clip(0, 255)
            .astype(np.uint8)
        )
        buffer = io.BytesIO()
        Image.fromarray(array).save(
            buffer, format="JPEG", quality=random.randint(80, 100), subsampling=2
        )
        buffer.seek(0)
        with Image.open(buffer) as image:
            tensor = (
                torch.from_numpy(np.asarray(image).copy()).permute(2, 0, 1).float()
                / 255
            )
        observations.append(tensor.to(effects.device))
    return torch.stack(observations)


def losses(
    raw: torch.Tensor,
    target: torch.Tensor,
    originals: torch.Tensor,
    effects: torch.Tensor,
) -> dict[str, torch.Tensor]:
    predicted = raw.clamp(0, 1)
    # Flattening preserves adjacent (source A, source B) pairs for each style.
    swapped = originals.reshape(-1, 2, *originals.shape[1:]).flip(1).flatten(0, 1)
    swapped_effects = effects.reshape(-1, 2, *effects.shape[1:]).flip(1).flatten(0, 1)
    consistency = raw.reshape(-1, 2, *raw.shape[1:])
    residual = raw - identity_lut(raw.shape[-1]).to(raw.device)[None]
    curvature = (
        sum(residual.diff(n=2, dim=d).abs().mean() for d in (2, 3, 4))
        * (raw.shape[-1] - 1) ** 2
    )
    terms = {
        "lut": F.l1_loss(raw, target),
        "render": F.l1_loss(apply_lut(predicted, originals), effects),
        "cross_scene": F.l1_loss(apply_lut(predicted, swapped), swapped_effects),
        "consistency": F.l1_loss(consistency[:, 0], consistency[:, 1]),
        "curvature": curvature,
        "range": (F.relu(-raw) + F.relu(raw - 1)).mean(),
    }
    terms["total"] = (
        terms["lut"]
        + terms["render"]
        + terms["cross_scene"]
        + 0.1 * terms["consistency"]
        + 0.0001 * terms["curvature"]
        + 0.1 * terms["range"]
    )
    return terms


def loader(dataset: PairDataset, config: TrainConfig) -> DataLoader:
    # Dataset randomness is index+epoch based; worker count does not change pair sampling.
    return DataLoader(
        dataset,
        batch_size=config.batch_size,
        shuffle=False,
        num_workers=config.workers,
        pin_memory=torch.cuda.is_available(),
        generator=torch.Generator().manual_seed(config.seed),
    )


@torch.no_grad()
def evaluate(
    model: StyleLutNet | PixelPairLutNet,
    manifest: dict,
    config: TrainConfig,
    device: torch.device,
    split: str = "validation",
) -> dict:
    validate_render_size(model, config)
    model.eval()
    mean_lut = (
        torch.stack(
            [read_lut(x["path"]) for x in manifest["luts"] if x["split"] == "train"]
        )
        .mean(0)[None]
        .to(device)
    )
    result = {}
    for name, lut_split in (("seen_styles", "train"), ("unseen_styles", split)):
        dataset = PairDataset(
            manifest, split, lut_split, config.validation_samples, config.render_size
        )
        if config.validation_samples < len(dataset.luts):
            raise ValueError("Validation sample budget must cover every LUT")
        totals, count = {}, 0
        for images, target, effects in loader(dataset, config):
            images = images.flatten(0, 1).to(device)
            target = target.repeat_interleave(2, 0).to(device)
            effects = effects.flatten(0, 1).to(device)
            if isinstance(model, PixelPairLutNet):
                raw, pairs = model.forward_with_pairs(encoder_input(effects))
                predicted = raw.clamp(0, 1)
                base = interpolate_anchors(
                    pairs["anchors"], model.config.lut_size
                ).clamp(0, 1)
            else:
                predicted = model(encoder_input(effects))
            lut_error = (predicted - target).abs().mean()
            rendered = apply_lut(predicted, images)
            cross_images = (
                images.reshape(-1, 2, *images.shape[1:]).flip(1).flatten(0, 1)
            )
            cross_targets = (
                effects.reshape(-1, 2, *effects.shape[1:]).flip(1).flatten(0, 1)
            )
            terms = {
                "lut_mae": lut_error,
                "render_mae": (rendered - effects).abs().mean(),
                "render_mse": (rendered - effects).square().mean(),
                "cross_scene_mae": (apply_lut(predicted, cross_images) - cross_targets)
                .abs()
                .mean(),
                "identity_mae": (images - effects).abs().mean(),
                "target_grid_mae": (apply_lut(target, images) - effects).abs().mean(),
                "mean_lut_mae": (apply_lut(mean_lut, images) - effects).abs().mean(),
            }
            if isinstance(model, PixelPairLutNet):
                source_truth = images.flatten(2).transpose(1, 2)[
                    :, model.sample_indices
                ]
                terms.update(
                    {
                        "pair_source_mae": (pairs["source"] - source_truth)
                        .abs()
                        .mean(),
                        "base_lut_mae": (base - target).abs().mean(),
                        "base_render_mae": (apply_lut(base, images) - effects)
                        .abs()
                        .mean(),
                        "base_cross_scene_mae": (
                            apply_lut(base, cross_images) - cross_targets
                        )
                        .abs()
                        .mean(),
                    }
                )
            for key, value in terms.items():
                totals[key] = totals.get(key, 0.0) + value.item() * len(images)
            count += len(images)
        metrics = {key: value / count for key, value in totals.items()}
        metrics["render_psnr"] = -10 * math.log10(max(metrics["render_mse"], 1e-12))
        metrics["images_evaluated"] = count
        result[name] = metrics
    return result


def atomic_save(state: dict, path: Path):
    temporary = path.with_suffix(".tmp")
    torch.save(state, temporary)
    temporary.replace(path)


def load_checkpoint(
    path: Path, device: torch.device
) -> tuple[StyleLutNet | PixelPairLutNet, dict]:
    state = torch.load(path, map_location="cpu", weights_only=True)
    model = model_from_config(state["model_config"])
    expected_version = 2 if isinstance(model, PixelPairLutNet) else 1
    if state.get("format_version", 1) != expected_version:
        raise ValueError("Checkpoint format version does not match model architecture")
    validate_render_size(model, TrainConfig(**state["train_config"]))
    model.load_state_dict(state["model"])
    return model.to(device), state


def train(
    manifest_path: Path,
    output: Path,
    config: TrainConfig,
    model_config: ModelConfig | PointModelConfig,
    device_name: str,
    resume: Path | None = None,
) -> dict:
    device = resolve_device(device_name)
    if config.precision != "fp32" and device.type != "cuda":
        raise ValueError(
            "Mixed precision training is supported on CUDA only; use fp32 on CPU/MPS"
        )
    if config.precision == "bf16" and not torch.cuda.is_bf16_supported():
        raise ValueError("This CUDA device does not support BF16")
    torch.manual_seed(config.seed)
    random.seed(config.seed)
    manifest = read_manifest(manifest_path)
    digest = file_hash(manifest_path)
    output.mkdir(parents=True, exist_ok=True)
    if resume and (
        resume.resolve().parent != output.resolve() or resume.name != "last.pt"
    ):
        raise ValueError(
            "Resume from last.pt in the same output directory to preserve best checkpoint and logs"
        )
    if (output / "last.pt").exists() and resume is None:
        raise ValueError(
            "Run already exists; use --resume or choose a different output"
        )
    model = model_from_config(model_config).to(device)
    validate_render_size(model, config)
    serialized_model_config = model_config_dict(model_config)
    budget = model.budget()
    if budget["parameters"] > 2_000_000:
        raise ValueError(f"Model exceeds 2M parameter budget: {budget['parameters']}")
    encoder_parameter_ids = {id(parameter) for parameter in model.encoder.parameters()}
    optimizer = torch.optim.AdamW(
        [
            {"params": model.encoder.parameters(), "weight_decay": config.weight_decay},
            {
                "params": [
                    parameter
                    for parameter in model.parameters()
                    if id(parameter) not in encoder_parameter_ids
                ],
                "weight_decay": 0.0,
            },
        ],
        lr=config.learning_rate,
    )
    scaler = torch.amp.GradScaler("cuda", enabled=config.precision == "fp16")
    start, best = 0, float("inf")
    if resume:
        state = torch.load(resume, map_location="cpu", weights_only=True)
        saved_model_config = dict(state["model_config"])
        saved_model_config.setdefault("architecture", "legacy")
        if (
            state["manifest_sha256"] != digest
            or state["train_config"] != asdict(config)
            or saved_model_config != serialized_model_config
            or state.get("format_version", 1)
            != (2 if isinstance(model, PixelPairLutNet) else 1)
        ):
            raise ValueError(
                "Resume requires identical manifest and training/model configuration"
            )
        model.load_state_dict(state["model"])
        optimizer.load_state_dict(state["optimizer"])
        scaler.load_state_dict(state["scaler"])
        torch.set_rng_state(state["rng_torch"])
        random.setstate(state["rng_python"])
        if device.type == "cuda":
            torch.cuda.set_rng_state_all(state["rng_cuda"])
        start, best = state["epoch"] + 1, state["best_score"]
    metadata = {
        "budget": budget,
        "device": str(device),
        "train_config": asdict(config),
        "model_config": serialized_model_config,
        "manifest_sha256": digest,
        "torch_version": str(torch.__version__),
        "data_counts": manifest["counts"],
        "data_warnings": manifest["warnings"],
    }
    (output / "config.json").write_text(json.dumps(metadata, indent=2) + "\n")
    print(json.dumps(metadata), flush=True)
    dataset = PairDataset(
        manifest,
        "train",
        "train",
        config.steps_per_epoch * config.batch_size,
        config.render_size,
        augment=True,
    )
    # Validate all held-out datasets before spending time training.
    for lut_split in ("train", "validation"):
        check = PairDataset(
            manifest,
            "validation",
            lut_split,
            config.validation_samples,
            config.render_size,
        )
        if config.validation_samples < len(check.luts):
            raise ValueError("Validation sample budget must cover every LUT")
    dtype = torch.bfloat16 if config.precision == "bf16" else torch.float16
    total_steps = config.epochs * config.steps_per_epoch
    warmup = min(3 * config.steps_per_epoch, max(1, total_steps // 10))
    for epoch in range(start, config.epochs):
        began = time.monotonic()
        dataset.epoch = epoch
        model.train()
        sums = {}
        for step, (images, target, effects) in enumerate(loader(dataset, config)):
            global_step = epoch * config.steps_per_epoch + step
            factor = min(1.0, (global_step + 1) / warmup)
            if global_step >= warmup:
                factor = 0.5 * (
                    1
                    + math.cos(
                        math.pi * (global_step - warmup) / max(1, total_steps - warmup)
                    )
                )
            for group in optimizer.param_groups:
                group["lr"] = config.learning_rate * factor
            images = images.flatten(0, 1).to(device)
            target = target.repeat_interleave(2, 0).to(device)
            effects = effects.flatten(0, 1).to(device)
            with torch.no_grad():
                observed = encoder_input(
                    jpeg_observation(effects, config.jpeg_probability)
                )
            optimizer.zero_grad(set_to_none=True)
            with torch.autocast(
                device_type=device.type, dtype=dtype, enabled=config.precision != "fp32"
            ):
                if isinstance(model, PixelPairLutNet):
                    raw, pairs = model.forward_with_pairs(observed)
                else:
                    raw = model.raw_lut(observed)
            terms = losses(raw, target, images, effects)
            if isinstance(model, PixelPairLutNet):
                pair_terms = correspondence_losses(
                    raw, pairs, images, effects, target, model.sample_indices
                )
                terms["total"] = terms["total"] + pair_terms["total"]
                terms.update(
                    {f"pair_{key}": value for key, value in pair_terms.items()}
                )
            if not torch.isfinite(terms["total"]):
                raise FloatingPointError(
                    f"Non-finite loss at epoch {epoch}, step {step}"
                )
            scaler.scale(terms["total"]).backward()
            scaler.unscale_(optimizer)
            grad_norm = torch.nn.utils.clip_grad_norm_(
                model.parameters(), 1.0, error_if_nonfinite=True
            )
            scaler.step(optimizer)
            scaler.update()
            for key, value in terms.items():
                sums[key] = sums.get(key, 0.0) + value.item()
            if step == 0 or (step + 1) % 25 == 0:
                print(
                    json.dumps(
                        {
                            "epoch": epoch + 1,
                            "step": step + 1,
                            "loss": terms["total"].item(),
                            "grad_norm": grad_norm.item(),
                            "lr": optimizer.param_groups[0]["lr"],
                        }
                    ),
                    flush=True,
                )
        validation = evaluate(model, manifest, config, device)
        score = (
            validation["unseen_styles"]["cross_scene_mae"]
            + validation["unseen_styles"]["lut_mae"]
        )
        improved = score < best
        best = min(best, score)
        record = {
            "epoch": epoch + 1,
            "seconds": time.monotonic() - began,
            "loss": {
                key: value / config.steps_per_epoch for key, value in sums.items()
            },
            "validation": validation,
            "selection_score": score,
        }
        print(json.dumps(record), flush=True)
        with (output / "metrics.jsonl").open("a") as log:
            log.write(json.dumps(record) + "\n")
        state = {
            "format_version": 2 if isinstance(model, PixelPairLutNet) else 1,
            "model_config": serialized_model_config,
            "train_config": asdict(config),
            "manifest_sha256": digest,
            "epoch": epoch,
            "best_score": best,
            "model": model.state_dict(),
            "optimizer": optimizer.state_dict(),
            "scaler": scaler.state_dict(),
            "rng_torch": torch.get_rng_state(),
            "rng_python": random.getstate(),
            "rng_cuda": torch.cuda.get_rng_state_all() if device.type == "cuda" else [],
            "validation": validation,
        }
        atomic_save(state, output / "last.pt")
        if improved:
            atomic_save(state, output / "best.pt")
    return {
        "best_score": best,
        "checkpoint": str(output / "best.pt"),
        "completed_epochs": config.epochs,
    }
