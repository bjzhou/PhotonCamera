package com.hinnka.mycamera.hdr

import kotlin.math.ln
import kotlin.math.pow
import kotlin.math.abs

internal object RawGainmapMath {
    const val DOWNSAMPLE = 2
    const val MIN_GAIN_RATIO = 0.25f
    const val MAX_GAIN_RATIO = 4.0f
    const val OFFSET = 1e-4f
    const val GAIN_START_LUMA = 0.09f
    const val GAIN_FULL_LUMA = 0.18f

    private const val LUMA_R = 0.2126f
    private const val LUMA_G = 0.7152f
    private const val LUMA_B = 0.0722f

    fun srgbToLinear(value: Float): Float {
        val magnitude = abs(value)
        val linearMagnitude = if (magnitude <= 0.04045f) {
            magnitude / 12.92f
        } else {
            ((magnitude + 0.055f) / 1.055f).pow(2.4f)
        }
        return if (value < 0f) -linearMagnitude else linearMagnitude
    }

    fun encode(
        sdrEncoded: Float,
        hdrLinear: Float,
        strength: Float = HdrGainmapStrength.DEFAULT,
        minGainRatio: Float = MIN_GAIN_RATIO,
        maxGainRatio: Float = MAX_GAIN_RATIO,
        offset: Float = OFFSET,
    ): Float {
        val sdrLinear = srgbToLinear(sdrEncoded)
        val ratio = ((hdrLinear.coerceAtLeast(0f) + offset) / (sdrLinear + offset))
            .coerceIn(minGainRatio, maxGainRatio)
        val strengthRatio = HdrGainmapStrength.applyToRatio(
            ratio = ratio,
            minGainRatio = minGainRatio,
            maxGainRatio = maxGainRatio,
            strength = strength,
        )
        return ((ln(strengthRatio) - ln(minGainRatio)) / (ln(maxGainRatio) - ln(minGainRatio)))
            .coerceIn(0f, 1f)
    }

    fun encodeLuminance(
        sdrEncodedRgb: FloatArray,
        hdrLinearRgb: FloatArray,
        lutLuminanceGain: Float? = null,
        strength: Float = HdrGainmapStrength.DEFAULT,
        minGainRatio: Float = MIN_GAIN_RATIO,
        maxGainRatio: Float = MAX_GAIN_RATIO,
        offset: Float = OFFSET,
    ): Float {
        require(sdrEncodedRgb.size >= 3 && hdrLinearRgb.size >= 3) {
            "SDR and HDR RGB inputs must contain at least three channels"
        }
        val sdrLuma = linearLuma(
            srgbToLinear(sdrEncodedRgb[0]),
            srgbToLinear(sdrEncodedRgb[1]),
            srgbToLinear(sdrEncodedRgb[2]),
        )
        val hdrLuma = linearLuma(
            hdrLinearRgb[0].coerceAtLeast(0f),
            hdrLinearRgb[1].coerceAtLeast(0f),
            hdrLinearRgb[2].coerceAtLeast(0f),
        )
        val targetHdrLuma = lutLuminanceGain?.let { gain ->
            applyLutLuminanceGain(gain, hdrLuma, offset)
        } ?: hdrLuma
        val candidateRatio = ((targetHdrLuma + offset) / (sdrLuma + offset))
            .coerceIn(minGainRatio, maxGainRatio)
        val ratio = gateRatioByHdrLuminance(
            candidateRatio = candidateRatio,
            hdrReferenceLuma = hdrLuma,
            minGainRatio = minGainRatio,
            maxGainRatio = maxGainRatio,
        )
        val strengthRatio = HdrGainmapStrength.applyToRatio(
            ratio = ratio,
            minGainRatio = minGainRatio,
            maxGainRatio = maxGainRatio,
            strength = strength,
        )
        return ((ln(strengthRatio) - ln(minGainRatio)) /
            (ln(maxGainRatio) - ln(minGainRatio))).coerceIn(0f, 1f)
    }

    fun linearLuma(r: Float, g: Float, b: Float): Float =
        LUMA_R * r + LUMA_G * g + LUMA_B * b

    fun computeLutLuminanceGain(
        sdrBeforeLutLuma: Float,
        sdrAfterLutLuma: Float,
        offset: Float = OFFSET,
    ): Float {
        val safeBeforeLut = sdrBeforeLutLuma.coerceAtLeast(0f)
        val safeAfterLut = sdrAfterLutLuma.coerceAtLeast(0f)
        return (safeAfterLut + offset) / (safeBeforeLut + offset)
    }

    fun applyLutLuminanceGain(
        lutLuminanceGain: Float,
        hdrReferenceLuma: Float,
        offset: Float = OFFSET,
    ): Float {
        val safeHdr = hdrReferenceLuma.coerceAtLeast(0f)
        val lutGain = lutLuminanceGain.coerceAtLeast(0f)
        val hdrBase = safeHdr.coerceAtMost(1f)
        val hdrHeadroom = (safeHdr - 1f).coerceAtLeast(0f)
        val adjustedBase = ((hdrBase + offset) * lutGain - offset).coerceAtLeast(0f)
        return adjustedBase + hdrHeadroom
    }

    fun gateRatioByHdrLuminance(
        candidateRatio: Float,
        hdrReferenceLuma: Float,
        minGainRatio: Float = MIN_GAIN_RATIO,
        maxGainRatio: Float = MAX_GAIN_RATIO,
    ): Float {
        val participation = smoothstep(
            GAIN_START_LUMA,
            GAIN_FULL_LUMA,
            hdrReferenceLuma.coerceAtLeast(0f),
        )
        return (1f + (candidateRatio - 1f) * participation)
            .coerceIn(minGainRatio, maxGainRatio)
    }

    fun reconstructLinear(
        sdrEncoded: Float,
        encodedGain: Float,
        minGainRatio: Float = MIN_GAIN_RATIO,
        maxGainRatio: Float = MAX_GAIN_RATIO,
        offset: Float = OFFSET,
    ): Float {
        val logGain = ln(minGainRatio) +
            (ln(maxGainRatio) - ln(minGainRatio)) * encodedGain.coerceIn(0f, 1f)
        return (srgbToLinear(sdrEncoded) + offset) * kotlin.math.exp(logGain) - offset
    }

    private fun smoothstep(edge0: Float, edge1: Float, value: Float): Float {
        val t = ((value - edge0) / (edge1 - edge0)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }
}
