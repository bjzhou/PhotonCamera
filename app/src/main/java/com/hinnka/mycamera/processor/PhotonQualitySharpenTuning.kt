package com.hinnka.mycamera.processor

/** Fixed Sabre sharpen preset, shared by every sensor. */
object PhotonQualitySharpenTuning {
    /**
     * Sabre selector 0 is clamped to 1: first table, nodes 2/8/16.
     * raw A/B=1.125, depth1=0, depth2=1.375; last-node gains=10/.05/.9.
     * sharpness A=.34375, B=0. No RAISR/Polysharp or denoise controls here.
     */
    val FIXED = PhotonSharpenTuning(
        amount = PhotonSharpenBands(.34375f, .34375f, 0f),
        nodes = listOf(
            PhotonSharpenSnrNode(2f,
                band0 = curve(.006f, 2.5f * 1.125f),
                band1 = curve(.002f, 1.8f * 1.125f),
                band2 = curve(.002f, 1.2f * 1.125f)),
            PhotonSharpenSnrNode(8f,
                band0 = curve(.001f, 2.8f * 1.125f),
                band1 = curve(.0005f, 2.1f * 1.125f),
                band2 = curve(.0005f, 1.4f * 1.125f)),
            PhotonSharpenSnrNode(16f,
                band0 = curve(.0002f, 10f * 1.125f),
                band1 = curve(.0001f, .05f * 1.125f, lowContrastGain = 2f * .05f * 1.125f),
                band2 = curve(.0002f, .9f * 1.125f)),
        ),
    )

    private fun curve(
        lowContrastInput: Float,
        mainContrastGain: Float,
        lowContrastGain: Float = 1.375f,
    ): PhotonSharpenCurve {
        // Original Sabre constants at 0x6ad348: second_x=.02, width=.01.
        // With transition_mix=1 and depth2=1.375 the third point is
        // y3=(gain*.02-.02+x3)+x3*(1.375-1). Keep every term of that mapping.
        val mainInput = .02f
        val highInput = mainInput + .01f
        val highOutput = (mainContrastGain * mainInput - mainInput + highInput) +
            highInput * .375f
        return PhotonSharpenCurve(
            lowContrastInput = lowContrastInput,
            lowContrastGain = lowContrastGain,
            mainContrastInput = mainInput,
            mainContrastGain = mainContrastGain,
            highContrastInput = highInput,
            highContrastGain = highOutput / highInput,
            tailSpan = 1.375f,
        )
    }
}
