# ETDS M4C32 x2 model

`app/src/main/assets/etds_m4c32_x2.tflite` is converted from the official
`ETDS_M4C32_x2.pth` checkpoint published by ECNUSR:

- Project: <https://github.com/ECNUSR/ETDS>
- Source revision: `64ad1b8539ebdc17ee543398fd87da541fe3c071`
- Source checkpoint SHA-256:
  `d8c64b4f6f9e501be550a22b93c47897478615f8a17bd4984e91fa85e2f3d3b9`
- Converted TFLite SHA-256:
  `7383961c40f161c56f628bfb86408c635d1336339c1ae0135265c2cbd4da9123`
- Architecture: ETDS for inference, M4C32, RGB, 2x scale
- License: Apache License 2.0; the license text is available in the repository-root
  `LICENSE` file.

The model is converted as a float32 TensorFlow Lite graph with fixed NHWC tensors:
input `[1, 360, 640, 3]`, output `[1, 720, 1280, 3]`. The shape matches ETDS's
official mobile latency benchmark; the x2 model naturally produces 720x1280 rather
than the x3 benchmark's 1080x1920 output.

Reproduce and numerically verify the runtime model with:

```shell
uv run scripts/convert_etds_m4c32_x2_to_tflite.py \
  --output app/src/main/assets/etds_m4c32_x2.tflite
```

The conversion script pins the source revision and checkpoint checksum and compares
TensorFlow Lite output against the official PyTorch graph. It also supports an `int8`
mode calibrated on deterministic crops from all 100 DIV2K x2 validation images. That
post-training quantized model measured only 31.567 dB against the float reference and
is therefore not shipped. The INT8 latency in ETDS's README measures the architecture
on NNAPI; it does not establish quantized accuracy for the published float checkpoint.
