package com.hinnka.mycamera.processor

/**
 * Exact runtime scalar generation used by MGC 9.6.080 ResolveSabre.
 *
 * Recovered from libgcastartup.so:
 * - default SNR maps: 0x3882c20
 * - Gr/Gb imbalance retention lookup and interpolation: 0x348c96c
 * - demosaic sharpness TET ratio: 0x348a234
 */
internal object MgcSabreResolveTuning {
    data class Parameters(
        /**
         * Fraction of the Gr/Gb difference kept by ResolveSabre's `g_gb` stage: 0 replaces each
         * green with its diagonal-green blur, 1 keeps it unchanged.
         */
        val greenImbalanceRetention: Float,
        val demosaicSharpness: Float,
    )

    fun build(
        referenceSnr: Float,
        desiredExposureProduct: Double?,
        actualExposureProduct: Double,
    ): Parameters = Parameters(
        greenImbalanceRetention = greenImbalanceRetention(referenceSnr),
        demosaicSharpness = demosaicSharpness(
            desiredExposureProduct = desiredExposureProduct,
            actualExposureProduct = actualExposureProduct,
        ),
    )

    /** std::map<float, float>{{5, 0}, {20, 0.5}, {40, 1}} with endpoint clamping. */
    internal fun greenImbalanceRetention(referenceSnr: Float): Float {
        val snr = referenceSnr.takeIf { it.isFinite() } ?: GREEN_IMBALANCE_SNR_LOW
        return when {
            snr <= GREEN_IMBALANCE_SNR_LOW -> GREEN_IMBALANCE_LOW
            snr < GREEN_IMBALANCE_SNR_MID -> interpolate(
                snr,
                GREEN_IMBALANCE_SNR_LOW,
                GREEN_IMBALANCE_LOW,
                GREEN_IMBALANCE_SNR_MID,
                GREEN_IMBALANCE_MID,
            )
            snr < GREEN_IMBALANCE_SNR_HIGH -> interpolate(
                snr,
                GREEN_IMBALANCE_SNR_MID,
                GREEN_IMBALANCE_MID,
                GREEN_IMBALANCE_SNR_HIGH,
                GREEN_IMBALANCE_HIGH,
            )
            else -> GREEN_IMBALANCE_HIGH
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

    private const val GREEN_IMBALANCE_SNR_LOW = 5f
    private const val GREEN_IMBALANCE_SNR_MID = 20f
    private const val GREEN_IMBALANCE_SNR_HIGH = 40f
    private const val GREEN_IMBALANCE_LOW = 0f
    private const val GREEN_IMBALANCE_MID = 0.5f
    private const val GREEN_IMBALANCE_HIGH = 1f
    private const val DEFAULT_DEMOSAIC_SHARPNESS = 1f
}
