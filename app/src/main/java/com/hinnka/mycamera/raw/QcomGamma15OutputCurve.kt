package com.hinnka.mycamera.raw

import kotlin.math.pow
import kotlin.math.sqrt

/**
 * Qualcomm IPE Gamma15 (65-point shadow-dense table) -> sRGB decode -> inverse ACR3.
 *
 * Keeps Qualcomm ADRC/TMC12 + LTM strictly in its native [0, 1] scene-linear domain while
 * converting the final linear output to the pre-ACR3 DNG ProfileGainTableMap domain so that
 * downstream ACR3 rendering reproduces Qualcomm's calibrated IPE Gamma15 response.
 */
internal object QcomGamma15OutputCurve {
    private const val SAMPLE_COUNT = 65537

    // 65-point Qualcomm IPE Gamma15 tone LUT evaluated at x_i = (i / 64)^2 (i = 0..64),
    // calibrated across real-device captures with fixed [0, 1] endpoints and smooth S-curve shape
    // (convex shadow toe, linear-perceptual midtones, concave highlight shoulder).
    internal val GAMMA15_KNOTS = doubleArrayOf(
        0.000000, 0.005741, 0.012980, 0.021853, 0.032556,
        0.045270, 0.060099, 0.077031, 0.095921, 0.116504,
        0.138432, 0.161310, 0.184758, 0.208463, 0.232206,
        0.255869, 0.279407, 0.302817, 0.326110, 0.349304,
        0.372430, 0.395527, 0.418624, 0.441722, 0.464820,
        0.487918, 0.510955, 0.533826, 0.556391, 0.578494,
        0.599972, 0.620671, 0.640454, 0.659230, 0.676961,
        0.693651, 0.709348, 0.724148, 0.738203, 0.751683,
        0.764747, 0.777517, 0.790053, 0.802345, 0.814318,
        0.825868, 0.836904, 0.847380, 0.857312, 0.866773,
        0.875891, 0.884808, 0.893653, 0.902498, 0.911344,
        0.920193, 0.929044, 0.937899, 0.946758, 0.955622,
        0.964490, 0.973363, 0.982240, 0.991119, 1.000000,
    )

    private val preAcrSamples by lazy {
        FloatArray(SAMPLE_COUNT) { index ->
            val encoded = evaluateGamma15(index.toDouble() / (SAMPLE_COUNT - 1))
            val linear = if (encoded <= 0.04045) {
                encoded / 12.92
            } else {
                ((encoded + 0.055) / 1.055).pow(2.4)
            }
            ACR3Curve.inputForOutput(linear.toFloat())
        }
    }

    fun samples(): FloatArray = preAcrSamples

    internal fun evaluateGamma15(input: Double): Double {
        val clamped = input.coerceIn(0.0, 1.0)
        val position = sqrt(clamped) * GAMMA15_KNOTS.lastIndex
        val index = position.toInt().coerceAtMost(GAMMA15_KNOTS.lastIndex - 1)
        val t = position - index
        return GAMMA15_KNOTS[index] + (GAMMA15_KNOTS[index + 1] - GAMMA15_KNOTS[index]) * t
    }
}
