package com.hinnka.mycamera.processor

import kotlin.math.cos
import kotlin.math.max
import kotlin.math.pow
import kotlin.math.sqrt

/**
 * Recovered MGC Spatial correlation specialization.
 *
 * MGC does not infer correlation from the quantized R8 merge masks. At
 * 0x3632688..0x36327dc it uses the green entries of the two layout-specific
 * Compute{Bayer,Rgb}NoiseModel diagnostics to fit a symmetric Savannah
 * three-tap filter [outer, center, outer]. The filter is converted to a
 * half-bin-centered 128-bin power spectrum by 0x5e9ca0c/0x5e9ce94 and then
 * normalized to unit mean at 0x3632e8c..0x3632eb4.
 */
internal object MgcSpatialDenoiseModel {
    private const val SPECTRUM_SIZE = 128
    private const val GREEN_CHANNEL = 1
    private const val MIN_DIAGNOSTIC_TOTAL = 1e-6f
    private const val IDENTITY_RATIO_THRESHOLD = 1e-4f
    private const val TWO_PI = 2.0 * Math.PI

    data class Result(
        val correlation: FloatArray,
        val diagnosticRatio: Float,
        val outerTap: Float,
        val centerTap: Float,
    )

    fun fromBayerDiagnostics(
        outputWeightsSumTotalDiag0: FloatArray,
        outputWeightsSumTotalDiag1: FloatArray,
    ): Result? = fromGreenDiagnostics(
        outputWeightsSumTotalDiag0,
        outputWeightsSumTotalDiag1,
    )

    fun fromRgbDiagnostics(
        outputWeightsSumTotalDiag0: FloatArray,
        outputWeightsSumTotalDiag1: FloatArray,
    ): Result? = fromGreenDiagnostics(
        outputWeightsSumTotalDiag0,
        outputWeightsSumTotalDiag1,
    )

    private fun fromGreenDiagnostics(
        outputWeightsSumTotalDiag0: FloatArray,
        outputWeightsSumTotalDiag1: FloatArray,
    ): Result? {
        if (outputWeightsSumTotalDiag0.size != 3 ||
            outputWeightsSumTotalDiag1.size != 3 ||
            outputWeightsSumTotalDiag0.any { !it.isFinite() || it < 0f } ||
            outputWeightsSumTotalDiag1.any { !it.isFinite() || it < 0f }
        ) {
            return null
        }

        val total = max(
            outputWeightsSumTotalDiag0[GREEN_CHANNEL],
            MIN_DIAGNOSTIC_TOTAL,
        )
        val ratio =
            outputWeightsSumTotalDiag1[GREEN_CHANNEL] / (4f * total)
        if (!ratio.isFinite() || ratio < 0f) return null

        val outerTap: Float
        val centerTap: Float
        if (ratio < IDENTITY_RATIO_THRESHOLD) {
            outerTap = 0f
            centerTap = 1f
        } else {
            val threeRatioMinusOne = 3f * ratio - 1f
            val oneMinusFourRatio = 1f - 4f * ratio
            val root = sqrtf(8f * ratio * threeRatioMinusOne + 1f)
            // MGC's arm64 body at 0x3632750..0x3632754 evaluates
            // sqrt(root - (1 - 4r)) directly. Immediately above the 1e-4 branch threshold,
            // both terms round to the same Float and the subtraction collapses to zero.
            // Rationalizing the exact same expression avoids that cancellation:
            // root - (1 - 4r) = 8r^2 / (root + 1 - 4r).
            val filterScale = sqrtf(
                8f * ratio * ratio / (root + oneMinusFourRatio),
            )
            val numerator =
                1f - 8f * ratio + 20f * ratio * ratio +
                    oneMinusFourRatio * root
            val denominator =
                16f * ratio * threeRatioMinusOne + 2f
            val inverseRootSum = 1f / (oneMinusFourRatio + root)
            val numeratorQuarterPower = powf(numerator, 0.25f)

            outerTap =
                0.5f * filterScale *
                    powf(numerator / denominator, 0.25f)
            centerTap =
                filterScale *
                    (0.5f / (ratio * powf(denominator, 0.25f))) *
                    inverseRootSum *
                    numerator *
                    numeratorQuarterPower
        }
        if (!outerTap.isFinite() || !centerTap.isFinite()) return null

        val correlation = FloatArray(SPECTRUM_SIZE)
        var energy = 0.0
        for (index in correlation.indices) {
            val response =
                centerTap +
                    2f * outerTap *
                    cos(centeredFrequency(index).toDouble()).toFloat()
            val power = response * response
            if (!power.isFinite()) return null
            correlation[index] = power
            energy += power.toDouble()
        }
        val meanEnergy = (energy / SPECTRUM_SIZE.toDouble()).toFloat()
        if (!(meanEnergy > 0f) || !meanEnergy.isFinite()) return null
        val inverseMeanEnergy = 1f / meanEnergy
        for (index in correlation.indices) {
            correlation[index] *= inverseMeanEnergy
        }

        return Result(
            correlation = correlation,
            diagnosticRatio = ratio,
            outerTap = outerTap,
            centerTap = centerTap,
        )
    }

    private fun centeredFrequency(index: Int): Float =
        (
            (index.toDouble() + 0.5) * TWO_PI / SPECTRUM_SIZE.toDouble() -
                Math.PI
            ).toFloat()

    private fun sqrtf(value: Float): Float =
        sqrt(value.toDouble()).toFloat()

    private fun powf(
        base: Float,
        exponent: Float,
    ): Float = base.toDouble().pow(exponent.toDouble()).toFloat()
}
