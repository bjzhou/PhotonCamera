package com.hinnka.mycamera.processor

/**
 * Exact runtime scalar generation used by MGC 9.6.080 ResolveSabre.
 *
 * Recovered from libgcastartup.so:
 * - default SNR maps: 0x3882c20
 * - output-white lookup and interpolation: 0x348c96c
 * - demosaic sharpness TET ratio: 0x348a234
 */
internal object MgcSabreResolveTuning {
    data class Parameters(
        val outputWhiteLevel: Float,
        val demosaicSharpness: Float,
    )

    fun build(
        referenceSnr: Float,
        desiredExposureProduct: Double?,
        actualExposureProduct: Double,
    ): Parameters = Parameters(
        outputWhiteLevel = outputWhiteLevel(referenceSnr),
        demosaicSharpness = demosaicSharpness(
            desiredExposureProduct = desiredExposureProduct,
            actualExposureProduct = actualExposureProduct,
        ),
    )

    /** std::map<float, float>{{5, 0}, {20, 0.5}, {40, 1}} with endpoint clamping. */
    internal fun outputWhiteLevel(referenceSnr: Float): Float {
        val snr = referenceSnr.takeIf { it.isFinite() } ?: OUTPUT_WHITE_SNR_LOW
        return when {
            snr <= OUTPUT_WHITE_SNR_LOW -> OUTPUT_WHITE_LOW
            snr < OUTPUT_WHITE_SNR_MID -> interpolate(
                snr,
                OUTPUT_WHITE_SNR_LOW,
                OUTPUT_WHITE_LOW,
                OUTPUT_WHITE_SNR_MID,
                OUTPUT_WHITE_MID,
            )
            snr < OUTPUT_WHITE_SNR_HIGH -> interpolate(
                snr,
                OUTPUT_WHITE_SNR_MID,
                OUTPUT_WHITE_MID,
                OUTPUT_WHITE_SNR_HIGH,
                OUTPUT_WHITE_HIGH,
            )
            else -> OUTPUT_WHITE_HIGH
        }
    }

    /**
     * MGC uses min(AeResults::FinalTet / reference FrameMetadata actual TET, 1).
     * Camera2 exposure-time*sensitivity is proportional to the same TET on both sides, so its
     * ratio preserves the original result without requiring MGC's private gain representation.
     */
    internal fun demosaicSharpness(
        desiredExposureProduct: Double?,
        actualExposureProduct: Double,
    ): Float {
        val desired = desiredExposureProduct
            ?.takeIf { it.isFinite() && it > 0.0 }
            ?: return DEFAULT_DEMOSAIC_SHARPNESS
        val actual = actualExposureProduct
            .takeIf { it.isFinite() && it > 0.0 }
            ?: return DEFAULT_DEMOSAIC_SHARPNESS
        return (desired / actual).coerceAtMost(1.0).toFloat()
    }

    private fun interpolate(
        value: Float,
        lowerX: Float,
        lowerY: Float,
        upperX: Float,
        upperY: Float,
    ): Float {
        val amount = (value - lowerX) / (upperX - lowerX)
        return upperY * amount + lowerY * (1f - amount)
    }

    private const val OUTPUT_WHITE_SNR_LOW = 5f
    private const val OUTPUT_WHITE_SNR_MID = 20f
    private const val OUTPUT_WHITE_SNR_HIGH = 40f
    private const val OUTPUT_WHITE_LOW = 0f
    private const val OUTPUT_WHITE_MID = 0.5f
    private const val OUTPUT_WHITE_HIGH = 1f
    private const val DEFAULT_DEMOSAIC_SHARPNESS = 1f
}
