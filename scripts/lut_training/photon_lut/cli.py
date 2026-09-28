import argparse
import json
from dataclasses import asdict
from pathlib import Path

import torch

from .data import audit_resampling, file_hash, prepare_manifest, read_manifest
from .model import ModelConfig
from .point_model import PixelPairLutNet, PointModelConfig
from .training import (
    TrainConfig,
    evaluate,
    load_checkpoint,
    model_from_config,
    resolve_device,
    train,
)


def add_architecture_arguments(parser):
    parser.add_argument(
        "--architecture", choices=["pixel_pairs", "legacy"], default="pixel_pairs"
    )
    parser.add_argument(
        "--bases", type=int, default=32, help="Legacy architecture only"
    )
    parser.add_argument("--rank", type=int, default=8, help="Legacy architecture only")
    parser.add_argument("--anchor-size", type=int, default=7)
    parser.add_argument("--point-grid", type=int, default=14)
    parser.add_argument("--kernel-sigma", type=float, default=0.14)
    parser.add_argument("--fit-regularization", type=float, default=0.1)


def architecture_config(args):
    if args.architecture == "legacy":
        return ModelConfig(bases=args.bases, rank=args.rank)
    return PointModelConfig(
        anchor_size=args.anchor_size,
        point_grid=args.point_grid,
        kernel_sigma=args.kernel_sigma,
        fit_regularization=args.fit_regularization,
    )


def main():
    parser = argparse.ArgumentParser(
        description="Train a single-reference sRGB LUT estimator"
    )
    commands = parser.add_subparsers(dest="command", required=True)
    inspect = commands.add_parser(
        "inspect-reference", help="Read the ORT inference graph without copying weights"
    )
    inspect.add_argument("model", type=Path)
    inspect.add_argument("--output", type=Path, required=True)
    budget_parser = commands.add_parser(
        "budget", help="Parameter count and analytical encoder/fitting MAC budget"
    )
    add_architecture_arguments(budget_parser)
    audit = commands.add_parser(
        "audit-data", help="Measure native-grid to 33^3 representation error"
    )
    audit.add_argument("--manifest", type=Path, required=True)
    audit.add_argument("--output", type=Path, required=True)
    audit.add_argument("--samples", type=int, default=4096)
    pair_audit = commands.add_parser(
        "audit-pairs",
        help="Isolate RGB pair fitting with oracle correspondences; not a model quality score",
    )
    pair_audit.add_argument("--manifest", type=Path, required=True)
    pair_audit.add_argument("--output", type=Path, required=True)
    pair_audit.add_argument("--samples", type=int, default=40)
    prepare = commands.add_parser(
        "prepare", help="Freeze group-level image and LUT splits"
    )
    prepare.add_argument("--images", type=Path, required=True)
    prepare.add_argument("--luts", type=Path, required=True)
    prepare.add_argument("--output", type=Path, required=True)
    prepare.add_argument("--groups", type=Path)
    prepare.add_argument("--seed", type=int, default=42)
    run = commands.add_parser("train")
    run.add_argument("--manifest", type=Path, required=True)
    run.add_argument("--output", type=Path, required=True)
    run.add_argument("--device", default="auto")
    run.add_argument("--resume", type=Path)
    add_architecture_arguments(run)
    for name, default in asdict(TrainConfig()).items():
        run.add_argument(
            "--" + name.replace("_", "-"),
            type=type(default),
            default=None if name == "render_size" else default,
        )
    ev = commands.add_parser("evaluate")
    ev.add_argument("--checkpoint", type=Path, required=True)
    ev.add_argument("--manifest", type=Path, required=True)
    ev.add_argument("--split", choices=["validation", "test"], default="test")
    ev.add_argument("--device", default="auto")
    ev.add_argument("--samples", type=int, default=256)
    ev.add_argument("--output", type=Path, required=True)
    exp = commands.add_parser(
        "export", help="Export a builtin-only TFLite model and verify precision"
    )
    exp.add_argument("--checkpoint", type=Path, required=True)
    exp.add_argument("--manifest", type=Path, required=True)
    exp.add_argument("--output", type=Path, required=True)
    exp.add_argument("--precision", choices=["fp32", "encoder-fp16"], default="fp32")
    exp.add_argument("--samples", type=int, default=16)
    pred = commands.add_parser("predict")
    pred.add_argument("--checkpoint", type=Path, required=True)
    pred.add_argument("--image", type=Path, required=True)
    pred.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if args.command == "inspect-reference":
        from .inspect_reference import inspect_reference

        result = inspect_reference(args.model, args.output)
    elif args.command == "budget":
        model = model_from_config(architecture_config(args)).eval()
        macs = [0]

        def count(module, inputs, output):
            if isinstance(module, torch.nn.Conv2d):
                macs[0] += (
                    output.numel()
                    * module.in_channels
                    // module.groups
                    * module.kernel_size[0]
                    * module.kernel_size[1]
                )
            elif isinstance(module, torch.nn.Linear):
                macs[0] += output.numel() * module.in_features

        handles = [
            m.register_forward_hook(count)
            for m in model.modules()
            if isinstance(m, (torch.nn.Conv2d, torch.nn.Linear))
        ]
        with torch.no_grad():
            model(torch.zeros(1, 3, 224, 224))
        for handle in handles:
            handle.remove()
        budget = model.budget()
        if budget["parameters"] > 2_000_000:
            raise ValueError(
                f"Model exceeds 2M parameter budget: {budget['parameters']}"
            )
        if isinstance(model, PixelPairLutNet):
            decoder_macs = budget["pair_fitting_macs"]
        else:
            n, rank, k = model.config.lut_size, model.config.rank, model.config.bases
            decoder_macs = (
                k * 3 * rank**3 + 3 * rank**3 * n + 3 * rank**2 * n**2 + 3 * rank * n**3
            )
        result = budget | {
            "conv_linear_macs": macs[0],
            "decoder_macs": decoder_macs,
            "total_macs": macs[0] + decoder_macs,
            "mac_note": "One 224x224 image; excludes normalization, histogram and elementwise ops",
        }
    elif args.command == "audit-data":
        result = audit_resampling(args.manifest, args.output, args.samples)
    elif args.command == "audit-pairs":
        from .point_audit import audit_point_fitting

        result = audit_point_fitting(args.manifest, args.output, args.samples)
    elif args.command == "prepare":
        result = prepare_manifest(
            args.images, args.luts, args.output, args.seed, args.groups
        )
    elif args.command == "train":
        if args.render_size is None:
            args.render_size = 224 if args.architecture == "pixel_pairs" else 320
        config = TrainConfig(
            **{key: getattr(args, key) for key in asdict(TrainConfig())}
        )
        result = train(
            args.manifest,
            args.output,
            config,
            architecture_config(args),
            args.device,
            args.resume,
        )
    elif args.command == "evaluate":
        device = resolve_device(args.device)
        model, state = load_checkpoint(args.checkpoint, device)
        if file_hash(args.manifest) != state["manifest_sha256"]:
            raise ValueError("Evaluation manifest differs from training")
        config = TrainConfig(
            **(state["train_config"] | {"validation_samples": args.samples})
        )
        result = evaluate(
            model, read_manifest(args.manifest), config, device, args.split
        )
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(json.dumps(result, indent=2) + "\n")
    elif args.command == "export":
        from .deployment import export

        result = export(
            args.checkpoint, args.manifest, args.output, args.precision, args.samples
        )
    else:
        from .deployment import predict

        predict(args.checkpoint, args.image, args.output)
        result = {"output": str(args.output)}
    if result is not None:
        print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
