package com.hinnka.mycamera.ml

/** The AI denoise model: SCUNet color σ=25 (see docs/scunet-tflite.md). */
object AiDenoiseModelManager : HfModelInstaller(
    tag = "AiDenoiseModelManager",
    directory = "ml_models/scunet_color_25",
    fileName = "scunet_color_25.tflite",
    expectedSizeBytes = 47_200_352L,
    sha256 = "8d060b8e58d3224ab14ee2af72c737af30cc3dd68790f26aca20f364734dd10c",
    path = "/Binjia/scunet-color-25-litert/resolve/9454c201ad03a74bbcbb7005232072f01a3b233c/scunet_color_25.tflite",
    legacyDirectories = listOf("ml_models/nafnet_sidd_w32", "ml_models/scunet_color_real_psnr"),
    checkContract = AiDenoiser::checkContract,
)
