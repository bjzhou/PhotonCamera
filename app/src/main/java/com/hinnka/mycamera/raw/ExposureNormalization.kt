package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog
import kotlin.math.pow

/**
 * RAW-domain exposure normalization inspired by RawTherapee's white-point /
 * scale-mul logic. The goal is to keep camera-WB-applied renders from looking
 * arbitrarily dark when there is no histogram-matched tone curve available.
 */
object ExposureNormalization {
    private const val TAG = "ExposureNormalization"

    fun compute(metadata: RawMetadata): Float {
        val whiteLevel = metadata.whiteLevel.coerceAtLeast(1f)
        val black = metadata.blackLevel
        val preMul = metadata.preMul
        val wb = metadata.whiteBalanceGains

        val rtLikeGain = computeRtLikeGain(preMul, whiteLevel, black)
        var gain = if (rtLikeGain > 0f) {
            rtLikeGain
        } else {
            computeFallbackGain(wb, whiteLevel, black)
        }

        if (metadata.baselineExposure.isFinite() && metadata.baselineExposure != 0f) {
            gain *= 2.0f.pow(metadata.baselineExposure)
        }

        PLog.d(
            TAG,
            "compute: gain=$gain preMul=${preMul.joinToString()} wb=${wb.joinToString()} black=${black.joinToString()} white=${metadata.whiteLevel} baseline=${metadata.baselineExposure}"
        )
        return gain.coerceIn(1f, 8f)
    }

    private fun computeRtLikeGain(preMul: FloatArray, whiteLevel: Float, black: FloatArray): Float {
        if (preMul.isEmpty()) {
            return 0f
        }

        val localPreMul = FloatArray(4) { index ->
            when {
                index < preMul.size && preMul[index] > 0f -> preMul[index]
                index == 3 && preMul.size > 1 && preMul[1] > 0f -> preMul[1]
                else -> 1f
            }
        }

        if (localPreMul[3] <= 0f) {
            localPreMul[3] = localPreMul[1]
        }

        val maxPreMul = localPreMul.maxOrNull()?.coerceAtLeast(1e-6f) ?: return 0f
        var maxScaleMul = 0f
        var minScaleMul = Float.MAX_VALUE

        for (i in 0 until 4) {
            val channelBlack = black.getOrElse(i) { black.lastOrNull() ?: 0f }
            val channelHeadroom = (whiteLevel - channelBlack).coerceAtLeast(1f)
            val scaleMul = (localPreMul[i] / maxPreMul) * 65535f / channelHeadroom
            maxScaleMul = maxOf(maxScaleMul, scaleMul)
            minScaleMul = minOf(minScaleMul, scaleMul)
        }

        return if (minScaleMul > 0f && maxScaleMul >= minScaleMul) {
            maxScaleMul / minScaleMul
        } else {
            0f
        }
    }

    private fun computeFallbackGain(wb: FloatArray, whiteLevel: Float, black: FloatArray): Float {
        var maxWeightedGain = 0f
        var validChannels = 0

        for (i in 0 until minOf(4, black.size, wb.size)) {
            val headroom = (whiteLevel - black[i]).coerceAtLeast(1f)
            val normalizedHeadroom = headroom / whiteLevel
            val weightedGain = wb[i].coerceAtLeast(0f) * normalizedHeadroom
            if (weightedGain > 0f) {
                maxWeightedGain = maxOf(maxWeightedGain, weightedGain)
                validChannels++
            }
        }

        return if (validChannels > 0) {
            maxWeightedGain.coerceAtLeast(1f)
        } else {
            1f
        }
    }
}
