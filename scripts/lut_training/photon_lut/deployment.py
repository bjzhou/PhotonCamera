"""Export with measured precision gates; reference-image inference to CUBE/PLUT."""

import copy
import json
from pathlib import Path

import numpy as np
import torch

from .data import PairDataset, file_hash, load_image, read_manifest
from .lut import apply_lut, write_lut
from .training import encoder_input, load_checkpoint


@torch.no_grad()
def predict(checkpoint: Path, image: Path, output: Path) -> None:
    model, state = load_checkpoint(checkpoint, torch.device("cpu"))
    model.eval()
    inputs = encoder_input(
        load_image(image, state["train_config"]["render_size"])[None]
    )
    write_lut(output, model(inputs)[0])


@torch.no_grad()
def export(
    checkpoint: Path,
    manifest_path: Path,
    output: Path,
    precision: str,
    samples: int = 16,
) -> dict:
    if output.suffix.lower() != ".tflite":
        raise ValueError("Export output must use the .tflite extension")
    if precision not in ("fp32", "encoder-fp16"):
        raise ValueError("Expected fp32 or encoder-fp16")
    if samples < 4:
        raise ValueError(
            "Use at least 4 validation pairs for numerical export verification"
        )
    try:
        import tensorflow as tf
    except ModuleNotFoundError as error:
        raise RuntimeError(
            "TFLite export requires: uv sync --project scripts/lut_training --extra export"
        ) from error
    from .tflite import convert, tensorflow_model

    source, state = load_checkpoint(checkpoint, torch.device("cpu"))
    source.eval()
    if file_hash(manifest_path) != state["manifest_sha256"]:
        raise ValueError("Export validation manifest does not match checkpoint")
    manifest = read_manifest(manifest_path)
    module = tensorflow_model(source)
    # Check the encoder independently: nearly-identity LUT heads must not conceal
    # errors in convolution padding/layout or BatchNorm transfer.
    rng = np.random.default_rng(42)
    probes = [
        np.zeros((1, 3, 224, 224), np.float32),
        np.ones((1, 3, 224, 224), np.float32),
        rng.random((1, 3, 224, 224), dtype=np.float32),
        np.broadcast_to(
            np.linspace(0, 1, 224, dtype=np.float32), (1, 3, 224, 224)
        ).copy(),
    ]
    encoder_errors, pair_errors = [], []
    for probe in probes:
        expected = source.encoder(torch.from_numpy(probe)).permute(0, 2, 3, 1).numpy()
        actual = module.encode(tf.constant(probe)).numpy()
        np.testing.assert_allclose(actual, expected, atol=2e-5, rtol=1e-4)
        encoder_errors.append(float(np.abs(actual - expected).max()))
        if getattr(source.config, "architecture", "style_lut") == "pixel_pairs":
            expected_pairs = source.predict_pairs(torch.from_numpy(probe))
            actual_pairs = module.predict_pairs(tf.constant(probe))
            for key, value in expected_pairs.items():
                expected_pair = value.numpy()
                actual_pair = actual_pairs[key].numpy()
                np.testing.assert_allclose(
                    actual_pair, expected_pair, atol=2e-5, rtol=1e-4
                )
                pair_errors.append(float(np.abs(actual_pair - expected_pair).max()))
    randomized_head_error = None
    if pair_errors:
        # Verify the fitting path with deliberately nonidentity heads. A freshly
        # initialized or collapsed checkpoint must not hide transfer mistakes.
        diagnostic_source = copy.deepcopy(source)
        generator = torch.Generator().manual_seed(314159)
        for head in (diagnostic_source.anchor_head, diagnostic_source.point_head):
            for parameter in head.parameters():
                parameter.copy_(
                    torch.randn(parameter.shape, generator=generator) * 0.02
                )
        diagnostic_module = tensorflow_model(diagnostic_source)
        expected = diagnostic_source(torch.from_numpy(probes[2])).numpy()
        actual = diagnostic_module(tf.constant(probes[2]))["lut"].numpy()
        np.testing.assert_allclose(actual, expected, atol=1e-5, rtol=1e-5)
        randomized_head_error = float(np.abs(actual - expected).max())
    output.parent.mkdir(parents=True, exist_ok=True)
    temporary = output.with_name(output.stem + ".pending.tflite")
    content, conversion = convert(module, precision)
    temporary.write_bytes(content)
    interpreter = tf.lite.Interpreter(model_content=content, num_threads=4)
    interpreter.allocate_tensors()
    (input_info,) = interpreter.get_input_details()
    (output_info,) = interpreter.get_output_details()
    errors, means, render_errors = [], [], []

    def infer(observed):
        interpreter.set_tensor(input_info["index"], observed)
        interpreter.invoke()
        actual = interpreter.get_tensor(output_info["index"])
        if (
            actual.dtype != np.float32
            or actual.shape != (1, 3, 33, 33, 33)
            or not np.isfinite(actual).all()
            or actual.min() < 0
            or actual.max() > 1
        ):
            raise ValueError("Export returned invalid LUT values, dtype or shape")
        return actual

    for probe in probes:
        difference = np.abs(source(torch.from_numpy(probe)).numpy() - infer(probe))
        errors.append(float(difference.max()))
        means.append(float(difference.mean()))
    # Cover known and held-out styles using held-out photographs. No test data used for tuning export.
    for style_split in ("train", "validation"):
        dataset = PairDataset(
            manifest,
            "validation",
            style_split,
            samples,
            state["train_config"]["render_size"],
        )
        for i in range(samples):
            images, _, effects = dataset[i]
            for image, effect in zip(images, effects):
                original = image[None]
                observed = encoder_input(effect[None])
                expected = source(observed).numpy()
                actual = infer(observed.numpy())
                difference = np.abs(expected - actual)
                errors.append(float(difference.max()))
                means.append(float(difference.mean()))
                render_errors.append(
                    float(
                        (
                            apply_lut(torch.from_numpy(expected), original)
                            - apply_lut(torch.from_numpy(actual), original)
                        )
                        .abs()
                        .max()
                    )
                )
    max_limit, mean_limit = (1e-5, 1e-6) if precision == "fp32" else (2e-3, 2e-4)
    result = {
        "format": "tflite",
        "architecture": getattr(source.config, "architecture", "style_lut"),
        "render_size": state["train_config"]["render_size"],
        "precision": precision,
        "validation_inputs": len(errors),
        "synthetic_probes": len(probes),
        "encoder_transfer_max_abs": max(encoder_errors),
        "pair_head_transfer_max_abs": max(pair_errors) if pair_errors else None,
        "randomized_head_transfer_max_abs": randomized_head_error,
        "lut_max_abs": max(errors),
        "lut_mean_abs": float(np.mean(means)),
        "lut_worst_mean_abs": max(means),
        "render_max_abs": max(render_errors),
        "max_abs_limit": max_limit,
        "mean_abs_limit": mean_limit,
        "bytes": temporary.stat().st_size,
        "budget": source.budget(),
        "validation_provider": "TensorFlow Lite CPU",
        "device_latency_verified": False,
        "checkpoint_sha256": file_hash(checkpoint),
        "model_sha256": file_hash(temporary),
        "preprocessing": f"JPEG draft decode, EXIF transpose, RGB, bicubic square {state['train_config']['render_size']}, bilinear antialias 224",
        "conversion": conversion,
    }
    result["passed"] = (
        result["lut_max_abs"] <= max_limit
        and result["lut_worst_mean_abs"] <= mean_limit
        and result["render_max_abs"] <= max_limit
        and result["bytes"] <= 8 * 2**20
    )
    output.with_suffix(".validation.json").write_text(
        json.dumps(result, indent=2) + "\n"
    )
    if not result["passed"]:
        raise ValueError(
            f"Export failed precision/8 MiB gate; unaccepted model remains at {temporary}"
        )
    temporary.replace(output)
    return result
