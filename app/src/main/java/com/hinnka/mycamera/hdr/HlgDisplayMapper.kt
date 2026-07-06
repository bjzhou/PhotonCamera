package com.hinnka.mycamera.hdr

import kotlin.math.exp
import kotlin.math.pow

/**
 * Approximates how an HLG signal gets turned into display-referred brightness.
 *
 * This is not a strict BT.2100 reference monitor model. The goal here is to generate
 * a gainmap that tracks perceptual highlight lift on consumer HDR displays more closely
 * than a raw scene-linear / SDR ratio.
 */
class HlgDisplayMapper(
    fullHdrRatio: Float,
) {

    private val effectiveHeadroom = fullHdrRatio.coerceIn(MIN_EFFECTIVE_HEADROOM, MAX_EFFECTIVE_HEADROOM)
    private val systemGamma = (BASE_SYSTEM_GAMMA + (effectiveHeadroom - 1f) * SYSTEM_GAMMA_SLOPE)
        .coerceIn(MIN_SYSTEM_GAMMA, MAX_SYSTEM_GAMMA)

    fun mapSceneLinearToDisplayLuma(sceneLuma: Float): Float {
        val safeSceneLuma = sceneLuma.coerceAtLeast(0f)
        if (safeSceneLuma <= SDR_REFERENCE_WHITE) {
            return safeSceneLuma
        }

        val normalized = (safeSceneLuma / SDR_REFERENCE_WHITE).pow(systemGamma)
        val aboveWhite = (normalized - 1f).coerceAtLeast(0f)
        val compressedBoost = 1f - exp(-aboveWhite * HIGHLIGHT_ROLLOFF)
        return SDR_REFERENCE_WHITE * (1f + (effectiveHeadroom - 1f) * compressedBoost)
    }

    fun estimateDisplayRatioFromSdr(
        sdrLuma: Float,
        highlightWeight: Float,
        peakWeight: Float,
        clipSuppression: Float = 1f,
    ): Float {
        val safeSdrLuma = sdrLuma.coerceAtLeast(0f)
        val sceneEstimate = safeSdrLuma * (
            1f +
                highlightWeight.coerceAtLeast(0f) * SDR_HIGHLIGHT_RECOVERY +
                peakWeight.coerceAtLeast(0f) * SDR_PEAK_RECOVERY
            ) * clipSuppression.coerceIn(0f, 1f)
        val displayLuma = mapSceneLinearToDisplayLuma(sceneEstimate)
        return (displayLuma / safeSdrLuma.coerceAtLeast(SDR_EPSILON)).coerceAtLeast(1f)
    }

    companion object {
        private const val SDR_REFERENCE_WHITE = 1.0f
        private const val SDR_EPSILON = 1e-4f
        private const val HIGHLIGHT_ROLLOFF = 0.85f
        private const val BASE_SYSTEM_GAMMA = 1.03f
        private const val SYSTEM_GAMMA_SLOPE = 0.16f
        private const val MIN_SYSTEM_GAMMA = 1.0f
        private const val MAX_SYSTEM_GAMMA = 1.25f
        private const val MIN_EFFECTIVE_HEADROOM = 1.15f
        private const val MAX_EFFECTIVE_HEADROOM = 3.2f
        private const val SDR_HIGHLIGHT_RECOVERY = 0.55f
        private const val SDR_PEAK_RECOVERY = 1.65f
    }
}
