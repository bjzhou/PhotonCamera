package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.PhotonSharpenCurve
import com.hinnka.mycamera.processor.PhotonSharpenTuning

/** Converts Photon's named controls to the original Halide [point, frequency, coordinate] ABI. */
internal object MgcSharpenCurveBuilder {
    data class Selection(
        val points: FloatArray,
        val lowerSnr: Float,
        val upperSnr: Float,
        val interpolation: Float,
    ) {
        val mainGains: List<Float>
            get() = (0..2).map { points[17 + 5 * it] / points[2 + 5 * it] }
    }

    fun build(snr: Float, tuning: PhotonSharpenTuning): Selection {
        require(snr.isFinite() && snr >= 0f)
        val nodes = tuning.nodes
        // Revalidate the list at the boundary: callers may have supplied a mutable List.
        require(nodes.isNotEmpty() && nodes.zipWithNext().all { (a, b) -> a.snr < b.snr })
        val upperIndex = nodes.indexOfFirst { it.snr >= snr }
            .let { if (it < 0) nodes.lastIndex else it }
        val lowerIndex = if (snr >= nodes.last().snr) nodes.lastIndex
            else (upperIndex - 1).coerceAtLeast(0)
        val lower = nodes[lowerIndex]
        val upper = nodes[upperIndex]
        val t = if (lowerIndex == upperIndex) 0f else (snr - lower.snr) / (upper.snr - lower.snr)
        val result = FloatArray(30)
        for (band in 0..2) {
            val a = points(lower[band])
            val b = points(upper[band])
            val amount = tuning.amount[band]
            for (point in 0..4) {
                // Interpolate actual x/y points, never gains or an amount-scaled SNR fraction.
                val x = a[point] * (1f - t) + b[point] * t
                val y = a[point + 5] * (1f - t) + b[point + 5] * t
                val adjusted = when (amount) {
                    0f -> x
                    1f -> y // Preserve the original default's Float rounding.
                    else -> x + amount * (y - x)
                }
                require(x.isFinite() && adjusted.isFinite() && adjusted >= 0f) {
                    "Invalid sharpen response at band=$band point=$point amount=$amount"
                }
                result[point + 5 * band] = x
                result[point + 5 * band + 15] = adjusted
                require(point == 0 || x > result[point - 1 + 5 * band]) {
                    "Sharpen input knots collapsed at band=$band point=$point"
                }
            }
        }
        return Selection(result, lower.snr, upper.snr, t)
    }

    private fun points(curve: PhotonSharpenCurve): FloatArray = with(curve) {
        floatArrayOf(
            0f, lowContrastInput, mainContrastInput, highContrastInput, highContrastInput + tailSpan,
            0f, lowContrastInput * lowContrastGain, mainContrastInput * mainContrastGain,
            highContrastInput * highContrastGain, highContrastInput * highContrastGain + tailSpan,
        )
    }
}
