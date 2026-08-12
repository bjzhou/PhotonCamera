# /// script
# requires-python = ">=3.11,<3.12"
# dependencies = [
#   "pillow==11.0.0",
#   "tensorflow==2.17.1",
#   "torch==2.5.1",
# ]
# ///
"""Convert the official ETDS M4C32 x2 checkpoint to a float32 TFLite model."""

from __future__ import annotations

import argparse
import hashlib
import tempfile
import urllib.request
from pathlib import Path

import numpy as np
import tensorflow as tf
import torch
import torch.nn.functional as torch_functional
from PIL import Image


MODEL_COMMIT = "64ad1b8539ebdc17ee543398fd87da541fe3c071"
MODEL_URL = (
    "https://raw.githubusercontent.com/ECNUSR/ETDS/"
    f"{MODEL_COMMIT}/experiments/pretrained_models/ETDS/ETDS_M4C32_x2.pth"
)
MODEL_SHA256 = "d8c64b4f6f9e501be550a22b93c47897478615f8a17bd4984e91fa85e2f3d3b9"
INPUT_HEIGHT = 360
INPUT_WIDTH = 640
UPSCALE = 2
BACKBONE_BLOCKS = 4
PIXEL_SHUFFLE_TO_DEPTH_ORDER = [
    channel * UPSCALE * UPSCALE + subpixel
    for subpixel in range(UPSCALE * UPSCALE)
    for channel in range(3)
]


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--checkpoint",
        type=Path,
        help="Official ETDS_M4C32_x2.pth. Downloads the pinned checkpoint when omitted.",
    )
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument(
        "--representative-dir",
        type=Path,
        help="DIV2K validation LR bicubic x2 PNGs; required for INT8 conversion.",
    )
    parser.add_argument(
        "--quantization",
        choices=("float32", "float16", "int8"),
        default="float32",
    )
    parser.add_argument("--input-height", type=int, default=INPUT_HEIGHT)
    parser.add_argument("--input-width", type=int, default=INPUT_WIDTH)
    return parser.parse_args()


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as source:
        for chunk in iter(lambda: source.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def resolve_checkpoint(checkpoint: Path | None, temp_dir: Path) -> Path:
    resolved = checkpoint or temp_dir / "ETDS_M4C32_x2.pth"
    if checkpoint is None:
        print(f"Downloading {MODEL_URL}")
        urllib.request.urlretrieve(MODEL_URL, resolved)
    actual_sha256 = sha256(resolved)
    if actual_sha256 != MODEL_SHA256:
        raise ValueError(
            f"Unexpected checkpoint SHA-256: {actual_sha256}; expected {MODEL_SHA256}"
        )
    return resolved


def load_state(checkpoint: Path) -> dict[str, torch.Tensor]:
    state = torch.load(checkpoint, map_location="cpu", weights_only=True)
    expected_shapes = {
        "conv_first.weight": (32, 3, 3, 3),
        "conv_first.bias": (32,),
        "conv_last.weight": (12, 32, 3, 3),
        "conv_last.bias": (12,),
        "conv_clip.weight": (12, 12, 1, 1),
        "conv_clip.bias": (12,),
    }
    for block in range(BACKBONE_BLOCKS):
        expected_shapes[f"backbone_convs.{block}.weight"] = (32, 32, 3, 3)
        expected_shapes[f"backbone_convs.{block}.bias"] = (32,)
    if set(state) != set(expected_shapes):
        missing = sorted(set(expected_shapes) - set(state))
        extra = sorted(set(state) - set(expected_shapes))
        raise ValueError(f"Unexpected checkpoint keys; missing={missing}, extra={extra}")
    for name, shape in expected_shapes.items():
        if tuple(state[name].shape) != shape:
            raise ValueError(f"Unexpected {name} shape: {tuple(state[name].shape)} != {shape}")
    return state


def torch_forward(state: dict[str, torch.Tensor], image_nhwc: np.ndarray) -> np.ndarray:
    value = torch.from_numpy(image_nhwc).permute(0, 3, 1, 2)
    value = torch.relu(
        torch_functional.conv2d(
            value, state["conv_first.weight"], state["conv_first.bias"], padding=1
        )
    )
    for block in range(BACKBONE_BLOCKS):
        value = torch.relu(
            torch_functional.conv2d(
                value,
                state[f"backbone_convs.{block}.weight"],
                state[f"backbone_convs.{block}.bias"],
                padding=1,
            )
        )
    value = torch.relu(
        torch_functional.conv2d(
            value, state["conv_last.weight"], state["conv_last.bias"], padding=1
        )
    )
    value = torch.relu(
        torch_functional.conv2d(
            value, state["conv_clip.weight"], state["conv_clip.bias"]
        )
    )
    return torch_functional.pixel_shuffle(value, UPSCALE).permute(0, 2, 3, 1).numpy()


def tf_weight(tensor: torch.Tensor) -> np.ndarray:
    return tensor.detach().numpy().transpose(2, 3, 1, 0)


class EtDsM4C32X2(tf.Module):
    def __init__(self, state: dict[str, torch.Tensor]) -> None:
        super().__init__()
        self.conv_first_weight = tf.Variable(
            tf_weight(state["conv_first.weight"]), trainable=False
        )
        self.conv_first_bias = tf.Variable(
            state["conv_first.bias"].numpy(), trainable=False
        )
        self.backbone_weights = [
            tf.Variable(
                tf_weight(state[f"backbone_convs.{block}.weight"]), trainable=False
            )
            for block in range(BACKBONE_BLOCKS)
        ]
        self.backbone_biases = [
            tf.Variable(
                state[f"backbone_convs.{block}.bias"].numpy(), trainable=False
            )
            for block in range(BACKBONE_BLOCKS)
        ]
        # PyTorch PixelShuffle stores channels as [output_channel, y, x], while
        # TensorFlow depth_to_space expects [y, x, output_channel]. Reorder the
        # last two convolutions so the exported graph can use the native TFLite
        # DEPTH_TO_SPACE op without a runtime gather/transpose.
        order = PIXEL_SHUFFLE_TO_DEPTH_ORDER
        conv_last_weight = state["conv_last.weight"][order, :, :, :]
        conv_last_bias = state["conv_last.bias"][order]
        conv_clip_weight = state["conv_clip.weight"][order, :, :, :][:, order, :, :]
        conv_clip_bias = state["conv_clip.bias"][order]
        self.conv_last_weight = tf.Variable(tf_weight(conv_last_weight), trainable=False)
        self.conv_last_bias = tf.Variable(conv_last_bias.numpy(), trainable=False)
        self.conv_clip_weight = tf.Variable(
            tf_weight(conv_clip_weight), trainable=False
        )
        self.conv_clip_bias = tf.Variable(conv_clip_bias.numpy(), trainable=False)

    @staticmethod
    def convolution(image: tf.Tensor, weight: tf.Tensor, bias: tf.Tensor) -> tf.Tensor:
        return tf.nn.bias_add(
            tf.nn.conv2d(image, weight, strides=1, padding="SAME"), bias
        )

    def __call__(self, image: tf.Tensor) -> tf.Tensor:
        value = tf.nn.relu(
            self.convolution(image, self.conv_first_weight, self.conv_first_bias)
        )
        for weight, bias in zip(self.backbone_weights, self.backbone_biases):
            value = tf.nn.relu(self.convolution(value, weight, bias))
        value = tf.nn.relu(
            self.convolution(value, self.conv_last_weight, self.conv_last_bias)
        )
        value = tf.nn.relu(
            self.convolution(value, self.conv_clip_weight, self.conv_clip_bias)
        )
        return tf.nn.depth_to_space(value, UPSCALE, name="super_resolved")


def convert(
    state: dict[str, torch.Tensor],
    representative_dir: Path | None,
    input_height: int,
    input_width: int,
    quantization: str,
) -> tuple[tf.types.experimental.ConcreteFunction, bytes]:
    module = EtDsM4C32X2(state)
    concrete = tf.function(
        module,
        input_signature=[
            tf.TensorSpec(
                [1, input_height, input_width, 3], tf.float32, name="image"
            )
        ],
    ).get_concrete_function()
    converter = tf.lite.TFLiteConverter.from_concrete_functions([concrete], module)
    if quantization == "int8":
        if representative_dir is None:
            raise ValueError("--representative-dir is required for INT8 conversion")
        converter.optimizations = [tf.lite.Optimize.DEFAULT]
        converter.representative_dataset = lambda: representative_samples(
            representative_dir, input_height, input_width
        )
        converter.target_spec.supported_ops = [tf.lite.OpsSet.TFLITE_BUILTINS_INT8]
        converter.inference_input_type = tf.uint8
        converter.inference_output_type = tf.uint8
    elif quantization == "float16":
        converter.optimizations = [tf.lite.Optimize.DEFAULT]
        converter.target_spec.supported_types = [tf.float16]
    else:
        converter.target_spec.supported_ops = [tf.lite.OpsSet.TFLITE_BUILTINS]
    tflite_model = converter.convert()
    return concrete, tflite_model


def representative_samples(
    image_dir: Path, input_height: int, input_width: int
):
    image_paths = sorted(image_dir.rglob("*.png"))
    if not image_paths:
        raise ValueError(f"No representative PNG images found under {image_dir}")
    for index, image_path in enumerate(image_paths):
        with Image.open(image_path) as image:
            rgb = np.asarray(image.convert("RGB"), dtype=np.float32) / 255.0
        if rgb.shape[0] < input_height or rgb.shape[1] < input_width:
            raise ValueError(
                f"Representative image is smaller than the input tensor: "
                f"{image_path} {rgb.shape[1]}x{rgb.shape[0]}"
            )
        available_y = rgb.shape[0] - input_height
        available_x = rgb.shape[1] - input_width
        # Deterministic coverage of different spatial regions across the 100 DIV2K images.
        top = 0 if available_y == 0 else (index * 104729) % (available_y + 1)
        left = 0 if available_x == 0 else (index * 130363) % (available_x + 1)
        crop = rgb[top : top + input_height, left : left + input_width, :]
        yield [np.expand_dims(crop, axis=0)]


def quantize(values: np.ndarray, detail: dict) -> np.ndarray:
    scale, zero_point = detail["quantization"]
    if scale <= 0:
        raise ValueError(f"Tensor has invalid quantization parameters: {detail}")
    return np.clip(np.rint(values / scale + zero_point), 0, 255).astype(np.uint8)


def dequantize(values: np.ndarray, detail: dict) -> np.ndarray:
    scale, zero_point = detail["quantization"]
    if scale <= 0:
        raise ValueError(f"Tensor has invalid quantization parameters: {detail}")
    return (values.astype(np.float32) - zero_point) * scale


def verify(
    state: dict[str, torch.Tensor],
    concrete: tf.types.experimental.ConcreteFunction,
    model: bytes,
    representative_dir: Path | None,
    input_height: int,
    input_width: int,
    quantization: str,
) -> None:
    if representative_dir is not None:
        sample = next(
            representative_samples(representative_dir, input_height, input_width)
        )[0]
    else:
        sample = np.random.default_rng(20230812).random(
            (1, input_height, input_width, 3), dtype=np.float32
        )
    expected = torch_forward(state, sample)
    tensorflow_output = concrete(sample).numpy()

    interpreter = tf.lite.Interpreter(model_content=model, num_threads=1)
    interpreter.allocate_tensors()
    input_detail = interpreter.get_input_details()[0]
    output_detail = interpreter.get_output_details()[0]
    expected_input_shape = [1, input_height, input_width, 3]
    expected_output_shape = [
        1,
        input_height * UPSCALE,
        input_width * UPSCALE,
        3,
    ]
    if input_detail["shape"].tolist() != expected_input_shape:
        raise ValueError(f"Unexpected TFLite input shape: {input_detail['shape']}")
    if output_detail["shape"].tolist() != expected_output_shape:
        raise ValueError(f"Unexpected TFLite output shape: {output_detail['shape']}")
    if quantization == "int8":
        if input_detail["dtype"] != np.uint8 or output_detail["dtype"] != np.uint8:
            raise ValueError("Full INT8 ETDS requires uint8 input and output tensors")
        interpreter.set_tensor(input_detail["index"], quantize(sample, input_detail))
    else:
        if input_detail["dtype"] != np.float32 or output_detail["dtype"] != np.float32:
            raise ValueError("Float ETDS requires float32 input and output tensors")
        interpreter.set_tensor(input_detail["index"], sample)
    interpreter.invoke()
    raw_actual = interpreter.get_tensor(output_detail["index"])
    actual = (
        dequantize(raw_actual, output_detail)
        if quantization == "int8"
        else raw_actual
    )

    tf_max_error = float(np.max(np.abs(tensorflow_output - expected)))
    tflite_max_error = float(np.max(np.abs(actual - expected)))
    tflite_mean_error = float(np.mean(np.abs(actual - expected)))
    tflite_mse = float(np.mean(np.square(actual - expected)))
    tflite_psnr = (
        float("inf") if tflite_mse == 0 else 10.0 * np.log10(1.0 / tflite_mse)
    )
    minimum_psnr = 40.0 if quantization == "int8" else 50.0
    if tf_max_error > 1e-5 or tflite_psnr < minimum_psnr:
        raise ValueError(
            "Conversion error exceeds tolerance: "
            f"TensorFlow max={tf_max_error:.9f}, "
            f"{quantization} PSNR={tflite_psnr:.3f} dB"
        )
    print(
        f"Verified PyTorch -> TensorFlow -> {quantization} TFLite: "
        f"tf_max_error={tf_max_error:.9f}, "
        f"tflite_max_error={tflite_max_error:.9f}, "
        f"tflite_mean_error={tflite_mean_error:.9f}, "
        f"tflite_psnr={tflite_psnr:.3f}dB, "
        f"input_quantization={input_detail['quantization']}, "
        f"output_quantization={output_detail['quantization']}"
    )


def main() -> None:
    args = parse_args()
    if args.input_height <= 0 or args.input_width <= 0:
        raise ValueError("Input dimensions must be positive")
    torch.set_grad_enabled(False)
    with tempfile.TemporaryDirectory(prefix="etds-convert-") as temp_dir:
        checkpoint = resolve_checkpoint(args.checkpoint, Path(temp_dir))
        state = load_state(checkpoint)
        concrete, model = convert(
            state,
            args.representative_dir,
            args.input_height,
            args.input_width,
            args.quantization,
        )
        verify(
            state,
            concrete,
            model,
            args.representative_dir,
            args.input_height,
            args.input_width,
            args.quantization,
        )
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_bytes(model)
    print(f"Wrote {args.output} ({len(model)} bytes, sha256={sha256(args.output)})")


if __name__ == "__main__":
    main()
