package com.hinnka.mycamera.processor

import kotlin.math.cos
import kotlin.math.exp
import kotlin.math.max

/**
 * Recovered output-noise specialization for an equal-exposure MGC Spatial merge.
 *
 * Sources in MGC 9.6.080 V24 libgcastartup.so:
 * - 0x363769c/0x3638a38: each merge factor is sum(R8 mask)/(255 * pixelCount);
 * - 0x3633330: empirical 128-bin correlation curve;
 * - 0x3634ef8..0x3635124: reference/merged correlation combination and normalization.
 *
 * Exposure-bracketed noise-model combination is intentionally not represented here.
 */
internal object MgcSpatialDenoiseModel {
    private const val SPECTRUM_SIZE = 128
    private const val TWO_PI = 2.0 * Math.PI

    data class Result(
        val correlation: FloatArray,
        val noiseScale: Float,
        val averageMergeFactor: Float,
        val effectiveMergeFactor: Float,
    )

    fun fromEqualExposureMergeFactors(mergeFactors: List<Float>): Result? {
        if (mergeFactors.isEmpty() ||
            mergeFactors.first() != 1f ||
            mergeFactors.any { !it.isFinite() || it < 0f || it > 1f }
        ) {
            return null
        }
        var effectiveMergeFactor = 0f
        mergeFactors.forEach { effectiveMergeFactor += it }
        if (!(effectiveMergeFactor > 0f) || !effectiveMergeFactor.isFinite()) {
            return null
        }
        val averageMergeFactor = effectiveMergeFactor / mergeFactors.size.toFloat()
        if (!(averageMergeFactor > 0f) || !averageMergeFactor.isFinite()) {
            return null
        }

        val spatialCorrelation = makeSpatialCorrelation(averageMergeFactor)
        val referenceCorrelation = makeReferenceCorrelation(averageMergeFactor)
        val mergedCorrelation = FloatArray(SPECTRUM_SIZE)
        var meanEnergy = 0f
        for (index in 0 until SPECTRUM_SIZE) {
            // Exact structure at 0x36350c0:
            // (reference + (effective - 1) * spatial) / effective.
            val value = (
                referenceCorrelation[index] +
                    (effectiveMergeFactor - 1f) * spatialCorrelation[index]
                ) / effectiveMergeFactor
            if (!value.isFinite()) return null
            mergedCorrelation[index] = value
            meanEnergy += value
        }
        meanEnergy /= SPECTRUM_SIZE.toFloat()
        if (!(meanEnergy > 0f) || !meanEnergy.isFinite()) return null
        val inverseEnergy = 1f / meanEnergy
        for (index in mergedCorrelation.indices) {
            mergedCorrelation[index] *= inverseEnergy
        }
        return Result(
            correlation = mergedCorrelation,
            noiseScale = 1f / effectiveMergeFactor,
            averageMergeFactor = averageMergeFactor,
            effectiveMergeFactor = effectiveMergeFactor,
        )
    }

    private fun makeSpatialCorrelation(averageMergeFactor: Float): FloatArray {
        if (averageMergeFactor <= 0.2f) {
            return FloatArray(SPECTRUM_SIZE) { 1f }
        }

        val baseLogistic = expf(
            -13.976620674f * (averageMergeFactor - 0.395f),
        )
        val base = baseLogistic * 1.122f / (baseLogistic + 1f) - 0.0467f

        // 0x36333d4..0x363341c: this logistic controls the Gaussian width.
        // The previous translation accidentally paired its center/slope with the amplitude
        // constants below, which allowed the reconstructed power spectrum to become negative.
        val sigmaLogistic = expf(
            -8.142000198f * (averageMergeFactor - 0.658f),
        )
        val sigma =
            sigmaLogistic * 0.576f / (sigmaLogistic + 1f) + 0.872f

        // 0x3633420..0x36334a4: amplitude uses its own logistic for factors <= 0.4,
        // then switches to the recovered quadratic. fmaxnm clamps only the amplitude.
        val amplitudeLogistic = expf(
            -4.495f * (averageMergeFactor - 0.0364f),
        )
        var amplitude = 12.841f / (amplitudeLogistic + 1f) - 9.793f
        if (averageMergeFactor > 0.4f) {
            amplitude =
                20.916f * averageMergeFactor * averageMergeFactor -
                    7.568f * averageMergeFactor +
                    0.676f
        }
        amplitude = max(amplitude, 0f)

        val sigmaSquared = sigma * sigma
        return FloatArray(SPECTRUM_SIZE) { index ->
            val coordinate = centeredFrequency(index)
            base + amplitude * expf(-0.5f * coordinate * coordinate / sigmaSquared)
        }
    }

    private fun makeReferenceCorrelation(
        averageMergeFactor: Float,
    ): FloatArray {
        val variance = averageMergeFactor * averageMergeFactor
        val edge = expf(-0.5f / variance)
        return FloatArray(SPECTRUM_SIZE) { index ->
            val response =
                1f + 2f * edge * cos(centeredFrequency(index).toDouble()).toFloat()
            response * response
        }
    }

    private fun centeredFrequency(index: Int): Float =
        (
            (index.toDouble() + 0.5) * TWO_PI / SPECTRUM_SIZE.toDouble() -
                Math.PI
            ).toFloat()

    private fun expf(value: Float): Float = exp(value.toDouble()).toFloat()
}
