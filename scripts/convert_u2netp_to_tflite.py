# /// script
# requires-python = ">=3.11,<3.12"
# dependencies = ["tensorflow==2.17.1", "onnx==1.17.0", "onnxruntime==1.20.1", "pillow==11.1.0"]
# ///
"""Convert the pinned edgetools/rembg U2NetP graph to builtin-only float32 TFLite.

Run with uv outside the sandbox, as required by AGENTS.md. This translator is
deliberately scoped to the SHA-256 below; unsupported graph semantics fail.
Weights are unchanged. Activations use NHWC throughout, shape expressions retain
ONNX's NCHW semantics, and only the first (fused) sigmoid output is exported.
"""
import argparse
from collections import Counter
import hashlib
import json
import os
from pathlib import Path

os.environ.setdefault("TF_CPP_MIN_LOG_LEVEL", "2")
os.environ.setdefault("TF_ENABLE_ONEDNN_OPTS", "0")
import numpy as np
import onnx
from onnx import helper, numpy_helper
import onnxruntime as ort
from PIL import Image
import tensorflow as tf

SOURCE_SHA256 = "309c8469258dda742793dce0ebea8e6dd393174f89934733ecc8b14c76f4ddd8"
MEAN = np.array([0.485, 0.456, 0.406], np.float32)
STD = np.array([0.229, 0.224, 0.225], np.float32)


def normalize_rgb(rgb):
    rgb = rgb.astype(np.float32)
    return ((rgb / max(float(rgb.max()), 1.0) - MEAN) / STD)[None]


class U2NetP(tf.Module):
    def __init__(self, graph):
        super().__init__()
        self.graph = graph
        self.weights = {x.name: numpy_helper.to_array(x) for x in graph.initializer}

    @tf.function(input_signature=[tf.TensorSpec([1, 320, 320, 3], tf.float32, name="rgb")])
    def __call__(self, rgb):
        values = dict(self.weights)
        values[self.graph.input[0].name] = rgb
        for node in self.graph.node:
            attrs = {a.name: helper.get_attribute_value(a) for a in node.attribute}
            args = [values[x] if x else None for x in node.input]
            op = node.op_type
            if op == "Constant":
                out = numpy_helper.to_array(attrs["value"])
            elif op == "Conv":
                x, w, bias = args
                dilation = attrs["dilations"]
                assert attrs["group"] == 1 and attrs["strides"] == [1, 1]
                padding = [dilation[0] * (w.shape[2] - 1) // 2,
                           dilation[1] * (w.shape[3] - 1) // 2]
                assert attrs["pads"] == padding + padding
                kernel = tf.constant(w.transpose(2, 3, 1, 0))
                out = tf.nn.bias_add(tf.nn.conv2d(x, kernel, strides=1, padding="SAME",
                    dilations=[1, *dilation, 1]), tf.constant(bias))
            elif op == "Relu":
                out = tf.nn.relu(args[0])
            elif op == "MaxPool":
                assert attrs["ceil_mode"] == 1 and attrs["kernel_shape"] == [2, 2]
                assert attrs["strides"] == [2, 2] and attrs["pads"] == [0, 0, 0, 0]
                out = tf.nn.max_pool2d(args[0], 2, 2, "SAME")
            elif op == "Shape":
                shape = args[0].shape.as_list()
                assert len(shape) == 4 and all(x is not None for x in shape)
                out = np.array([shape[0], shape[3], shape[1], shape[2]], np.int64)
            elif op == "Gather":
                assert isinstance(args[0], np.ndarray)
                out = np.take(args[0], args[1], axis=attrs["axis"])
            elif op == "Unsqueeze":
                out = np.expand_dims(args[0], tuple(attrs["axes"]))
            elif op == "Slice":
                assert isinstance(args[0], np.ndarray)
                data, starts, ends, axes = args[:4]
                steps = args[4] if len(args) > 4 else [1] * len(axes)
                slices = [slice(None)] * data.ndim
                for start, end, axis, step in zip(starts, ends, axes, steps):
                    slices[int(axis)] = slice(int(start), int(end), int(step))
                out = data[tuple(slices)]
            elif op == "Cast":
                assert isinstance(args[0], np.ndarray) and attrs["to"] == onnx.TensorProto.INT64
                out = args[0].astype(np.int64)
            elif op == "Concat":
                if all(isinstance(x, np.ndarray) for x in args):
                    out = np.concatenate(args, axis=attrs["axis"])
                else:
                    assert attrs["axis"] == 1 and all(len(x.shape) == 4 for x in args)
                    out = tf.concat(args, axis=3)
            elif op == "Resize":
                assert attrs["mode"] == b"linear"
                assert attrs["coordinate_transformation_mode"] == b"pytorch_half_pixel"
                assert len(args) == 4 and all(int(x) > 1 for x in args[3][2:])
                # pytorch_half_pixel matches half_pixel for output sizes > 1.
                out = tf.raw_ops.ResizeBilinear(images=args[0], size=args[3][2:].astype(np.int32),
                    align_corners=False, half_pixel_centers=True)
            elif op == "Add":
                out = args[0] + args[1]
            elif op == "Sigmoid":
                out = tf.math.sigmoid(args[0])
            else:
                raise ValueError(f"Unsupported U2NetP node: {op}")
            assert len(node.output) == 1
            values[node.output[0]] = out
            if node.output[0] == self.graph.output[0].name:
                return {"saliency": out}
        raise ValueError("Fused output was not produced")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--validate-image", type=Path, action="append", default=[])
    options = parser.parse_args()
    model_bytes = options.source.read_bytes()
    assert hashlib.sha256(model_bytes).hexdigest() == SOURCE_SHA256, "Unexpected ONNX model"
    graph = onnx.load_model_from_string(model_bytes).graph
    module = U2NetP(graph)
    converter = tf.lite.TFLiteConverter.from_concrete_functions([module.__call__.get_concrete_function()], module)
    converter.target_spec.supported_ops = [tf.lite.OpsSet.TFLITE_BUILTINS]
    converted = converter.convert()
    interpreter = tf.lite.Interpreter(model_content=converted, num_threads=4)
    interpreter.allocate_tensors()
    input_info, = interpreter.get_input_details()
    output_info, = interpreter.get_output_details()
    assert list(input_info["shape"]) == [1, 320, 320, 3]
    assert list(output_info["shape"]) == [1, 320, 320, 1]
    assert input_info["dtype"] == output_info["dtype"] == np.float32
    ops = Counter(x["op_name"] for x in interpreter._get_ops_details() if x["op_name"] != "DELEGATE")
    assert not any(x.startswith("Flex") or x == "CUSTOM" for x in ops)

    session_options = ort.SessionOptions()
    session_options.intra_op_num_threads = 4
    session = ort.InferenceSession(model_bytes, sess_options=session_options, providers=["CPUExecutionProvider"])
    rng = np.random.default_rng(7391)
    images = {
        "black": np.zeros((320, 320, 3), np.uint8),
        "white": np.full((320, 320, 3), 255, np.uint8),
        "noise": rng.integers(0, 256, (320, 320, 3), dtype=np.uint8),
        "gradient": np.tile(np.arange(320, dtype=np.float32)[None, :, None] * (255 / 319), (320, 1, 3)),
    }
    for image_path in options.validate_image:
        with Image.open(image_path) as image:
            images[image_path.name] = np.asarray(image.convert("RGB").resize((320, 320), Image.Resampling.BILINEAR))
    metrics = {}
    for name, rgb in images.items():
        inputs = normalize_rgb(rgb)
        reference = session.run([session.get_outputs()[0].name], {session.get_inputs()[0].name: inputs.transpose(0, 3, 1, 2)})[0]
        reference = reference.transpose(0, 2, 3, 1)
        interpreter.set_tensor(input_info["index"], inputs)
        interpreter.invoke()
        actual = interpreter.get_tensor(output_info["index"])
        assert np.isfinite(actual).all() and actual.min() >= 0 and actual.max() <= 1
        delta = np.abs(actual - reference)
        # Compare the actual min/max-normalized mask consumed by the app too.
        ref_mask = (reference - reference.min()) / max(float(np.ptp(reference)), 1e-6)
        mask = (actual - actual.min()) / max(float(np.ptp(actual)), 1e-6)
        mask_mae = float(np.abs(mask - ref_mask).mean())
        metrics[name] = {"max_abs_error": float(delta.max()), "mean_abs_error": float(delta.mean()),
            "normalized_mask_mae": mask_mae}
        assert delta.max() < 2e-4 and mask_mae < 1e-3, (name, metrics[name])
        print(name, metrics[name], flush=True)

    options.output.parent.mkdir(parents=True, exist_ok=True)
    options.output.write_bytes(converted)
    metadata = {
        "source_url": "https://huggingface.co/edgetools/u2netp/resolve/25dee37/u2netp.onnx",
        "source_sha256": SOURCE_SHA256, "source_bytes": len(model_bytes),
        "tflite_sha256": hashlib.sha256(converted).hexdigest(), "tflite_bytes": len(converted),
        "tensorflow": tf.__version__, "onnx": onnx.__version__, "onnxruntime": ort.__version__,
        "input": "float32[1,320,320,3] NHWC RGB, (pixel / resized_rgb_max - ImageNet mean) / std",
        "output": "float32[1,320,320,1] fused saliency sigmoid, min/max normalize to mask",
        "operators": dict(ops), "validation": metrics,
    }
    options.output.with_suffix(".json").write_text(json.dumps(metadata, indent=2) + "\n", encoding="utf-8")
    print("Verified TFLite:", options.output, len(converted), metadata["tflite_sha256"], flush=True)


if __name__ == "__main__":
    main()
