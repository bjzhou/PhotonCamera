package com.hinnka.mycamera.ml

/** The AI color match model: ColorFM-L parameter network (see docs/colorfm-tflite.md). */
object ColorFmModelManager : HfModelInstaller(
    tag = "ColorFmModelManager",
    directory = "ml_models/colorfm_l",
    fileName = "colorfm_l.tflite",
    expectedSizeBytes = 62_198_448L,
    sha256 = "5d6bd72e83409fc3f6441c6e7e2c9c081f95344d2aee46eecc981fdaedb9c2b8",
    path = "/Binjia/colorfm-l-litert/resolve/ef882a92ac59aa2803a00fd050624441cc2a90c3/colorfm_l.tflite",
    legacyDirectories = emptyList(),
    checkContract = AiColorMatcher::checkContract,
)
