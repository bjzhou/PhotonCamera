package com.hinnka.mycamera.ml

/** The AI denoise model: SCUNet real_psnr, run at half resolution (see [AiDenoiser]). */
object AiDenoiseModelManager : HfModelInstaller(
    tag = "AiDenoiseModelManager",
    directory = "ml_models/scunet_color_real_psnr",
    fileName = "scunet_color_real_psnr.tflite",
    expectedSizeBytes = 47_200_352L,
    sha256 = "a0def81002254ee05676bd4a4708dea27c4276d264e22bb3f4dc70b44fcd45df",
    path = "/Binjia/scunet-color-real-psnr-litert/resolve/647a03f52d333d2bd06126d1182a027ee9cd6624/scunet_color_real_psnr.tflite",
    legacyDirectories = listOf(
        "ml_models/nafnet_sidd_w32",
        "ml_models/scunet_color_25",
        "ml_models/ffdnet_color_s20",
        "ml_models/ffdnet_color",
    ),
    checkContract = AiDenoiser::checkContract,
)
