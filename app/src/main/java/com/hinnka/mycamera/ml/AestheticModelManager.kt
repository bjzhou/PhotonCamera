package com.hinnka.mycamera.ml

/**
 * The aesthetic score model: OpenAI CLIP ViT-B/32 + LAION aesthetic predictor v1 head
 * (conversion in scripts/clip_aesthetic_tflite).
 */
object AestheticModelManager : HfModelInstaller(
    tag = "AestheticModelManager",
    directory = "ml_models/clip_aesthetic_b32",
    fileName = "clip_aesthetic.tflite",
    expectedSizeBytes = 176_259_520L,
    sha256 = "4832beee5a952acc433de18443db675fe6eb196dfe84efdef86f8bea9a88d664",
    path = "/Binjia/clip-aesthetic-litert/resolve/f4c28a5bdccca02d33d2cb407af20ab256927883/clip_aesthetic.tflite",
    legacyDirectories = emptyList(),
    checkContract = AestheticScorer::checkContract,
)
