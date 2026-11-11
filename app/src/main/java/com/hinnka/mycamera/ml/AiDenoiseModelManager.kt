package com.hinnka.mycamera.ml

/** The AI denoise model: SCUNet real_psnr, run at half resolution (see [AiDenoiser]). */
object AiDenoiseModelManager : HfModelInstaller(
    tag = "AiDenoiseModelManager",
    directory = "ml_models/scunet_color_real_psnr",
    fileName = "scunet_color_real_psnr.tflite",
    expectedSizeBytes = 47_273_792L,
    sha256 = "22791ec0a15900a43fefc8bc79da8b85094f9e7221d05a2162a05238e912b357",
    path = "/Binjia/scunet-color-real-psnr-litert/resolve/f373d61ab1512b5f095cc170759c8e3582e46c39/scunet_color_real_psnr.tflite",
    legacyDirectories = listOf(
        "ml_models/nafnet_sidd_w32",
        "ml_models/scunet_color_25",
        "ml_models/ffdnet_color_s20",
        "ml_models/ffdnet_color",
    ),
    checkContract = AiDenoiser::checkContract,
)
