# U2NetP subject mask

FP32 TFLite conversion of the pinned edgetools/rembg U2NetP ONNX model.
Only the fused saliency output is retained. Weights are unchanged and all
operators are TFLite builtins, with no Select TF Ops or ONNX Runtime dependency.

- Source mirror: https://huggingface.co/edgetools/u2netp/tree/25dee37
- Upstream ONNX release: https://github.com/danielgatis/rembg/releases/download/v0.0.0/u2netp.onnx
- Original ONNX SHA-256: `309c8469258dda742793dce0ebea8e6dd393174f89934733ecc8b14c76f4ddd8`
- Upstream architecture and license: https://github.com/xuebinqin/U-2-Net
- License: Apache-2.0; see `license/LICENSE.txt`.

## Tensor contract

- Input: FP32 `[1,320,320,3]` NHWC RGB. Resize directly to 320x320 without
  letterboxing. Divide RGB byte values by the largest channel value in the resized
  image (use 1 for an all-black image), then subtract ImageNet means
  `[0.485,0.456,0.406]` and divide by standard deviations `[0.229,0.224,0.225]`.
- Output: FP32 `[1,320,320,1]` fused sigmoid saliency. Min/max-normalize the output
  to produce soft subject coverage. Reject non-finite or degenerate outputs.

The app draws the source into a small sRGB bitmap, uses CPU/XNNPACK inference and
passes floating-point coverage to the layered depth refinement pipeline.
For well-separated small subjects, a depth-guided crop selects a padded region of
the original RGB before resizing. The returned 320x320 mask retains that region's
image coordinates and native sampling density through GPU refinement. Ambiguous
depth uses the whole image; foreground reaching an internal crop edge causes a
new full-image inference. These policies do not change the model or tensor ABI.
`u2netp.json` records the converted model checksum, size, operators and numerical
comparison with ONNX Runtime on synthetic inputs and two repository photos.

## Reproduce

Run from the repository root with uv outside the sandbox:

```powershell
uv run --python 3.11 scripts/convert_u2netp_to_tflite.py --source build/model-conversion/u2netp/source/u2netp.onnx --output app/src/main/assets/u2netp/u2netp.tflite --validate-image app/src/main/res/drawable-nodpi/bokeh_style_natural_preview.jpg --validate-image app/src/main/res/drawable-nodpi/bokeh_style_swirl_preview.jpg
```
