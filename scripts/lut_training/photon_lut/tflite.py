"""Exact TensorFlow inference graphs and builtin-only TFLite export.

Weights come directly from the PyTorch checkpoint. This explicit, guarded mapping
works on macOS as well as Linux; no ONNX or Linux-only torch converter is required.
"""

from collections import Counter

import flatbuffers
import numpy as np
import tensorflow as tf
from tensorflow.lite.python import schema_py_generated as schema
from torch import nn

from .model import InvertedResidual, StyleLutNet


class TensorFlowLut(tf.Module):
    def __init__(self, source: StyleLutNet):
        super().__init__()
        if source.training:
            raise ValueError("Export requires evaluation mode")
        self.source = source

    @staticmethod
    def constant(tensor, name):
        return tf.constant(tensor.detach().cpu().float().numpy(), name=name)

    def layer(self, module, x):
        if isinstance(module, nn.Sequential):
            for child in module:
                x = self.layer(child, x)
            return x
        if isinstance(module, InvertedResidual):
            y = self.layer(module.block, x)
            return x + y if module.residual else y
        if isinstance(module, nn.Conv2d):
            if module.dilation != (1, 1) or module.padding_mode != "zeros":
                raise ValueError("Unsupported convolution dilation/padding mode")
            # PyTorch uses symmetric explicit padding. TF SAME with stride=2 does
            # NOT have equivalent alignment for even input dimensions.
            ph, pw = module.padding
            if ph or pw:
                x = tf.pad(x, [[0, 0], [ph, ph], [pw, pw], [0, 0]])
            strides = [1, *module.stride, 1]
            w = self.constant(module.weight, "kernel")
            if module.groups == module.in_channels == module.out_channels:
                x = tf.nn.depthwise_conv2d(
                    x, tf.transpose(w, [2, 3, 0, 1]), strides, "VALID"
                )
            elif module.groups == 1:
                x = tf.nn.conv2d(x, tf.transpose(w, [2, 3, 1, 0]), strides, "VALID")
            else:
                raise ValueError(
                    "Only regular and depthwise convolutions are supported"
                )
            if module.bias is not None:
                x = tf.nn.bias_add(x, self.constant(module.bias, "bias"))
            return x
        if isinstance(module, nn.BatchNorm2d):
            if module.training or not module.track_running_stats or not module.affine:
                raise ValueError(
                    "Export requires affine BatchNorm with frozen running statistics"
                )
            return tf.nn.batch_normalization(
                x,
                self.constant(module.running_mean, "mean"),
                self.constant(module.running_var, "variance"),
                self.constant(module.bias, "offset"),
                self.constant(module.weight, "scale"),
                module.eps,
            )
        if isinstance(module, nn.Linear):
            x = tf.matmul(x, self.constant(module.weight, "weight"), transpose_b=True)
            return x if module.bias is None else x + self.constant(module.bias, "bias")
        if isinstance(module, nn.ReLU6):
            return tf.nn.relu6(x)
        if isinstance(module, nn.ReLU):
            return tf.nn.relu(x)
        raise ValueError(f"Unsupported model layer: {type(module).__name__}")

    def encode(self, image):
        return self.layer(self.source.encoder, tf.transpose(image, [0, 2, 3, 1]))

    @tf.function(
        input_signature=[tf.TensorSpec([1, 3, 224, 224], tf.float32, name="image")],
        autograph=False,
    )
    def __call__(self, image):
        model = self.source
        features = self.encode(image)
        image = tf.transpose(image, [0, 2, 3, 1])
        mean = tf.reduce_mean(features, [1, 2])
        std = tf.sqrt(
            tf.reduce_mean(tf.square(features - mean[:, None, None, :]), [1, 2]) + 1e-6
        )
        rgb_mean = tf.reduce_mean(image, [1, 2])
        rgb_std = tf.sqrt(
            tf.reduce_mean(tf.square(image - rgb_mean[:, None, None, :]), [1, 2]) + 1e-6
        )
        small = tf.nn.avg_pool2d(image, 4, 4, "VALID")
        distances = tf.abs(
            small[..., None] - self.constant(model.bins, "histogram_bins")
        )
        histogram = tf.reduce_mean(
            tf.maximum(1 - distances * (model.config.histogram_bins - 1), 0), [1, 2]
        )
        z = self.layer(
            model.project,
            tf.concat(
                [mean, std, rgb_mean, rgb_std, tf.reshape(histogram, [1, -1])], axis=1
            ),
        )
        weights, tone = self.layer(model.weight_head, z), self.layer(model.tone_head, z)
        decoder = model.decoder
        rank, n = decoder.rank, decoder.n
        x = tf.reshape(
            tf.matmul(weights, self.constant(decoder.core, "lut_core")),
            [1, 3, rank, rank, rank],
        )
        # Flatten each contraction to a standard matrix multiply, then restore axes.
        x = tf.reshape(
            tf.matmul(
                tf.reshape(x, [-1, rank]), self.constant(decoder.axis_r, "axis_r")
            ),
            [1, 3, rank, rank, n],
        )
        x = tf.transpose(x, [0, 1, 2, 4, 3])
        x = tf.reshape(
            tf.matmul(
                tf.reshape(x, [-1, rank]), self.constant(decoder.axis_g, "axis_g")
            ),
            [1, 3, rank, n, n],
        )
        x = tf.transpose(x, [0, 1, 2, 4, 3])
        x = tf.transpose(x, [0, 1, 3, 4, 2])
        x = tf.reshape(
            tf.matmul(
                tf.reshape(x, [-1, rank]), self.constant(decoder.axis_b, "axis_b")
            ),
            [1, 3, n, n, n],
        )
        x = tf.transpose(x, [0, 1, 4, 2, 3])
        tone = tf.reshape(tone, [1, 3, n])
        curves = tf.stack(
            [
                tf.broadcast_to(tone[:, 0, None, None, :], [1, n, n, n]),
                tf.broadcast_to(tone[:, 1, None, :, None], [1, n, n, n]),
                tf.broadcast_to(tone[:, 2, :, None, None], [1, n, n, n]),
            ],
            axis=1,
        )
        lut = self.constant(decoder.identity, "identity_lut") + curves + x
        return {"lut": tf.clip_by_value(lut, 0.0, 1.0)}


class TensorFlowPixelPairs(TensorFlowLut):
    """Transfer inferred correspondences and the same bounded kernel fitter.

    Export has a fixed batch of one. Each blue slab contains 33 * 33 query
    colors, bounding a kernel temporary to 1089 * 196 FP32 values. Neither
    a matrix inverse nor a full 35937 * 196 kernel is part of the graph.
    """

    def predict_pairs(self, image):
        model = self.source
        k, p = model.config.anchor_size, model.config.point_grid
        features = self.encode(image)
        mean = tf.reduce_mean(features, [1, 2])
        std = tf.sqrt(
            tf.reduce_mean(tf.square(features - mean[:, None, None, :]), [1, 2]) + 1e-6
        )
        z = self.layer(model.project, tf.concat([mean, std], axis=1))
        anchors = self.constant(model.anchor_identity, "anchor_identity") + tf.reshape(
            self.layer(model.anchor_head, z), [1, 3, k, k, k]
        )
        targets = tf.gather(
            tf.transpose(tf.reshape(image, [1, 3, -1]), [0, 2, 1]),
            tf.constant(model.sample_indices.detach().cpu().numpy(), tf.int32),
            axis=1,
        )
        features = tf.image.resize(features, [p, p], method="nearest")
        point_features = tf.concat(
            [
                features,
                tf.broadcast_to(z[:, None, None, :], [1, p, p, 128]),
                tf.reshape(targets, [1, p, p, 3]),
            ],
            axis=-1,
        )
        predicted = tf.reshape(point_features, [p * p, 256 + 128 + 3])
        for layer in model.point_head:
            if isinstance(layer, nn.Conv2d):
                if (
                    layer.kernel_size != (1, 1)
                    or layer.stride != (1, 1)
                    or layer.padding != (0, 0)
                    or layer.groups != 1
                ):
                    raise ValueError("Point head requires ungrouped 1x1 convolutions")
                # A pointwise convolution is an exact dense transform. Keep it
                # as FULLY_CONNECTED so encoder-fp16 never quantizes pair heads.
                predicted = tf.matmul(
                    predicted,
                    self.constant(layer.weight[:, :, 0, 0], "point_weight"),
                    transpose_b=True,
                )
                if layer.bias is not None:
                    predicted = predicted + self.constant(layer.bias, "point_bias")
            else:
                predicted = self.layer(layer, predicted)
        predicted = tf.reshape(predicted, [1, p * p, 4])
        sources = targets + tf.tanh(predicted[..., :3])
        confidence = tf.sigmoid(predicted[..., 3:4])
        return {
            "anchors": anchors,
            "source": sources,
            "target": targets,
            "confidence": confidence,
        }

    def sample_anchors(self, anchors, colors):
        k = self.source.config.anchor_size
        coordinates = tf.clip_by_value(colors, 0.0, 1.0) * (k - 1)
        lower = tf.cast(tf.floor(coordinates), tf.int32)
        upper = tf.minimum(lower + 1, k - 1)
        fraction = coordinates - tf.cast(lower, tf.float32)
        values = tf.transpose(tf.reshape(anchors, [3, k * k * k]), [1, 0])
        result = 0.0
        for b in (0, 1):
            for g in (0, 1):
                for r in (0, 1):
                    indices = [upper if bit else lower for bit in (r, g, b)]
                    index = (
                        indices[2][..., 2] * k * k
                        + indices[1][..., 1] * k
                        + indices[0][..., 0]
                    )
                    weights = [fraction if bit else 1.0 - fraction for bit in (r, g, b)]
                    weight = (
                        weights[0][..., 0] * weights[1][..., 1] * weights[2][..., 2]
                    )
                    result = result + tf.gather(values, index) * weight[..., None]
        return result

    def kernel(self, query, sources):
        squared = (
            tf.reduce_sum(tf.square(query), axis=-1, keepdims=True)
            + tf.transpose(
                tf.reduce_sum(tf.square(sources), axis=-1, keepdims=True), [0, 2, 1]
            )
            - 2.0 * tf.matmul(query, sources, transpose_b=True)
        )
        return tf.exp(
            -tf.maximum(squared, 0.0) / (2 * self.source.config.kernel_sigma**2)
        )

    @tf.function(
        input_signature=[tf.TensorSpec([1, 3, 224, 224], tf.float32, name="image")],
        autograph=False,
    )
    def __call__(self, image):
        config = self.source.config
        pairs = self.predict_pairs(image)
        anchors, sources, targets, confidence = (
            pairs[key] for key in ("anchors", "source", "target", "confidence")
        )
        sources = tf.clip_by_value(sources, 0.0, 1.0)
        residual = targets - self.sample_anchors(anchors, sources)
        density = tf.reduce_sum(self.kernel(sources, sources), axis=-1, keepdims=True)
        mass = confidence / density
        n = config.lut_size
        axis = np.linspace(0, 1, n, dtype=np.float32)
        blue, green, red = np.meshgrid(axis, axis, axis, indexing="ij")
        grid = np.stack([red, green, blue], axis=-1).reshape(n, n * n, 3)
        slabs = []
        for blue_index in range(n):
            query = tf.constant(grid[blue_index][None], name=f"grid_slab_{blue_index}")
            weights = self.kernel(query, sources) * tf.transpose(mass, [0, 2, 1])
            correction = tf.matmul(weights, residual) / (
                config.fit_regularization
                + tf.reduce_sum(weights, axis=-1, keepdims=True)
            )
            slabs.append(self.sample_anchors(anchors, query) + correction)
        lut = tf.transpose(
            tf.reshape(tf.concat(slabs, axis=1), [1, n, n, n, 3]), [0, 4, 1, 2, 3]
        )
        return {"lut": tf.clip_by_value(lut, 0.0, 1.0)}


def tensorflow_model(source):
    if getattr(source.config, "architecture", "style_lut") == "pixel_pairs":
        return TensorFlowPixelPairs(source)
    return TensorFlowLut(source)


def compress_encoder_weights(content: bytes) -> tuple[bytes, int]:
    """Standard FLOAT16 constant -> DEQUANTIZE -> float32 convolution weights.

    Only kernel inputs of CONV_2D / DEPTHWISE_CONV_2D are changed. Biases, dense
    heads, histogram constants, identity grid and LUT factors remain untouched.
    The CPU path computes in FP32; a delegate determines its own compute precision.
    """
    model = schema.ModelT.InitFromObj(schema.Model.GetRootAsModel(content, 0))
    if len(model.subgraphs) != 1:
        raise ValueError("Expected a single StyleLutNet subgraph")
    graph = model.subgraphs[0]
    conv_codes = {
        schema.BuiltinOperator.CONV_2D,
        schema.BuiltinOperator.DEPTHWISE_CONV_2D,
    }
    kernels = {
        int(op.inputs[1])
        for op in graph.operators
        if model.operatorCodes[op.opcodeIndex].builtinCode in conv_codes
    }
    if not kernels:
        raise ValueError("No encoder convolutions found")
    opcode = schema.OperatorCodeT()
    opcode.builtinCode = schema.BuiltinOperator.DEQUANTIZE
    opcode.deprecatedBuiltinCode = schema.BuiltinOperator.DEQUANTIZE
    opcode.version = 3  # FLOAT16 -> FLOAT32 support
    model.operatorCodes.append(opcode)
    prefix, rewrites = [], {}
    for index in sorted(kernels):
        tensor = graph.tensors[index]
        if tensor.type != schema.TensorType.FLOAT32 or tensor.isVariable:
            raise ValueError("Expected constant FP32 encoder kernel")
        buffer = model.buffers[tensor.buffer]
        if buffer.data is None or len(buffer.data) != int(np.prod(tensor.shape)) * 4:
            raise ValueError("Invalid encoder kernel buffer")
        if sum(t.buffer == tensor.buffer for t in graph.tensors) != 1:
            raise ValueError("Encoder kernel shares storage with another tensor")
        values = np.frombuffer(buffer.data.tobytes(), dtype="<f4")
        packed = values.astype("<f2")
        if not np.isfinite(packed).all():
            raise ValueError("Encoder kernel overflows FP16")
        buffer.data = np.frombuffer(packed.tobytes(), dtype=np.uint8).copy()
        tensor.type = schema.TensorType.FLOAT16
        restored = schema.TensorT()
        restored.name = tensor.name + b"/fp32"
        restored.shape = np.array(tensor.shape, copy=True)
        restored.type = schema.TensorType.FLOAT32
        restored.buffer = 0
        rewrites[index] = len(graph.tensors)
        graph.tensors.append(restored)
        op = schema.OperatorT()
        op.opcodeIndex = len(model.operatorCodes) - 1
        op.inputs = np.array([index], dtype=np.int32)
        op.outputs = np.array([rewrites[index]], dtype=np.int32)
        op.builtinOptionsType = schema.BuiltinOptions.DequantizeOptions
        op.builtinOptions = schema.DequantizeOptionsT()
        prefix.append(op)
    for op in graph.operators:
        op.inputs = np.array(
            [rewrites.get(int(i), int(i)) for i in op.inputs], dtype=np.int32
        )
    graph.operators = prefix + graph.operators
    builder = flatbuffers.Builder(0)
    builder.Finish(model.Pack(builder), file_identifier=b"TFL3")
    return bytes(builder.Output()), len(kernels)


def convert(module: TensorFlowLut, precision: str) -> tuple[bytes, dict]:
    converter = tf.lite.TFLiteConverter.from_concrete_functions(
        [module.__call__.get_concrete_function()], module
    )
    converter.target_spec.supported_ops = [tf.lite.OpsSet.TFLITE_BUILTINS]
    content = converter.convert()
    compressed = 0
    if precision == "encoder-fp16":
        content, compressed = compress_encoder_weights(content)
    interpreter = tf.lite.Interpreter(model_content=content, num_threads=4)
    interpreter.allocate_tensors()
    (inputs,) = interpreter.get_input_details()
    (outputs,) = interpreter.get_output_details()
    if (
        list(inputs["shape"]) != [1, 3, 224, 224]
        or list(outputs["shape"]) != [1, 3, 33, 33, 33]
        or inputs["dtype"] != np.float32
        or outputs["dtype"] != np.float32
    ):
        raise ValueError("Unexpected TFLite input/output contract")
    ops = Counter(
        x["op_name"]
        for x in interpreter._get_ops_details()
        if x["op_name"] != "DELEGATE"
    )
    if any(x.startswith("Flex") or x == "CUSTOM" for x in ops):
        raise ValueError("Export requires nonstandard TFLite operators")
    return content, {
        "tensorflow_version": tf.__version__,
        "operators": dict(ops),
        "fp16_encoder_kernels": compressed,
        "input": "float32[1,3,224,224] NCHW RGB in [0,1]",
        "output": "float32[1,3,33,33,33] N,C,B,G,R",
        "precision_note": "FP16 kernel storage, FP32 CPU execution; delegate precision is device dependent"
        if compressed
        else "FP32 weights and CPU execution",
    }
