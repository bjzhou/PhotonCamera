package com.hinnka.mycamera.raw

import java.util.Arrays
import kotlin.math.ceil
import kotlin.math.exp
import kotlin.math.ln

/**
 * Scene-wide PGTM statistics computed from one uniform sample population.
 *
 * These values must not be produced by averaging per-cell percentiles: doing
 * so removes the spatial contrast between bright and dark regions and makes a
 * high-dynamic-range scene appear artificially flat.
 */
internal data class DngPgtmGlobalStats(
    val p10: Float,
    val p50: Float,
    val p90: Float,
    val p98: Float,
    val p995: Float,
    val p999: Float,
    val maxInput: Float,
    val highlightFraction: Float,
    val linearMean: Float,
    val logAverage: Float,
    val sampleCount: Int,
) {
    companion object {
        private const val HIGHLIGHT_THRESHOLD = 0.92f

        /**
         * Compacts and sorts [samples] in place. The caller must not reuse the
         * original sample order after this call.
         */
        fun fromMutableSamples(samples: FloatArray, sampleCount: Int): DngPgtmGlobalStats? {
            val requestedCount = sampleCount.coerceIn(0, samples.size)
            var validCount = 0
            var highlightCount = 0
            var linearSum = 0.0
            var logSum = 0.0
            for (index in 0 until requestedCount) {
                val value = samples[index]
                if (!value.isFinite() || value < 0f) continue
                samples[validCount] = value
                validCount += 1
                linearSum += value.toDouble()
                logSum += ln(value.coerceAtLeast(1e-6f).toDouble())
                if (value >= HIGHLIGHT_THRESHOLD) highlightCount += 1
            }
            if (validCount <= 0) return null

            Arrays.sort(samples, 0, validCount)
            return DngPgtmGlobalStats(
                p10 = percentileFromSorted(samples, validCount, 0.10f),
                p50 = percentileFromSorted(samples, validCount, 0.50f),
                p90 = percentileFromSorted(samples, validCount, 0.90f),
                p98 = percentileFromSorted(samples, validCount, 0.98f),
                p995 = percentileFromSorted(samples, validCount, 0.995f),
                p999 = percentileFromSorted(samples, validCount, 0.999f),
                maxInput = samples[validCount - 1],
                highlightFraction = highlightCount.toFloat() / validCount.toFloat(),
                linearMean = (linearSum / validCount.toDouble()).toFloat(),
                logAverage = exp(logSum / validCount.toDouble()).toFloat(),
                sampleCount = validCount
            )
        }

        private fun percentileFromSorted(
            sortedSamples: FloatArray,
            sampleCount: Int,
            percentile: Float,
        ): Float {
            val index = ceil(sampleCount.toFloat() * percentile.coerceIn(0f, 1f)).toInt()
                .coerceIn(1, sampleCount) - 1
            return sortedSamples[index]
        }
    }
}
