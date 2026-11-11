# CPGA-Net low-light tone model

Night vision mode uses this model only to estimate a global luma tone curve; the network output
image itself is never shown or saved.

- Source: https://huggingface.co/litert-community/CPGA-Net-LowLight-LiteRT (commit `e917b2a`), file `cpga_fp16.tflite`
- Upstream: https://github.com/Shyandram/CPGA-Net-Pytorch (IJPRAI), MIT; see `license/LICENSE.txt`.
- SHA-256: `8b125569618cbc342b3c0a095f712dfc899ac739e896208baf13cb1769c4c319`, 93,820 bytes.

## Tensor contract

- Input: FP32 `[1,3,256,256]` NCHW RGB in [0,1]. The whole frame is resized to 256x256 without crop.
- Output: FP32 `[1,3,256,256]` NCHW RGB in [0,1].
- XNNPACK rejects the FP16 graph (DEPTHWISE_CONV_2D); the model runs on the LiteRT GPU accelerator only.
