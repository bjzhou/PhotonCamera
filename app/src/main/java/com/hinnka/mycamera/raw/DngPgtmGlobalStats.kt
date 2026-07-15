package com.hinnka.mycamera.raw

import java.util.Arrays
import kotlin.math.ceil
import kotlin.math.exp
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.pow

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
    val shadowEdge: Float,
    val shadowFoot: Float,
    val sampleCount: Int,
) {
    companion object {
        private const val HIGHLIGHT_THRESHOLD = 0.92f
        private const val LOG_HISTOGRAM_MIN_EV = -16f
        private const val LOG_HISTOGRAM_MAX_EV = 8f
        private const val LOG_HISTOGRAM_BIN_EV = 0.125f
        private const val LOG_HISTOGRAM_BIN_COUNT = 192
        private const val LOG_HISTOGRAM_SMOOTH_SIGMA_BINS = 2f
        private const val LOG_HISTOGRAM_SMOOTH_RADIUS = 8
        private const val SHADOW_SEARCH_MIN_QUANTILE = 0.01f
        private const val SHADOW_SEARCH_MAX_QUANTILE = 0.40f
        private const val SHADOW_FOOT_DENSITY_RATIO = 0.15f

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
            val shadowSlope = shadowSlopeFromSortedSamples(samples, validCount)
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
                shadowEdge = shadowSlope.edge,
                shadowFoot = shadowSlope.foot,
                sampleCount = validCount
            )
        }

        /**
         * Locates the main shadow-content onset in an EV histogram. The strongest
         * rising edge is searched only in the lower 40% of positive samples, then
         * its outer foot is taken where density reaches 15% of the following peak.
         * This keeps the black reference tied to image structure instead of to a
         * fixed population count such as p10.
         */
        private fun shadowSlopeFromSortedSamples(
            sortedSamples: FloatArray,
            sampleCount: Int,
        ): ShadowSlope {
            val histogram = FloatArray(LOG_HISTOGRAM_BIN_COUNT)
            var positiveCount = 0
            for (index in 0 until sampleCount) {
                val value = sortedSamples[index]
                if (value <= 0f) continue
                val ev = log2(value).coerceIn(
                    LOG_HISTOGRAM_MIN_EV,
                    LOG_HISTOGRAM_MAX_EV - LOG_HISTOGRAM_BIN_EV
                )
                val bin = floor(
                    (ev - LOG_HISTOGRAM_MIN_EV) / LOG_HISTOGRAM_BIN_EV
                ).toInt().coerceIn(0, histogram.lastIndex)
                histogram[bin] += 1f
                positiveCount += 1
            }
            if (positiveCount <= 0) {
                val minimum = 2.0f.pow(LOG_HISTOGRAM_MIN_EV)
                return ShadowSlope(edge = minimum, foot = minimum)
            }

            val smoothed = smoothHistogram(histogram)
            val searchStart = percentileBin(
                histogram,
                positiveCount,
                SHADOW_SEARCH_MIN_QUANTILE
            ).coerceIn(1, histogram.lastIndex - 1)
            val searchEnd = percentileBin(
                histogram,
                positiveCount,
                SHADOW_SEARCH_MAX_QUANTILE
            ).coerceIn(searchStart, histogram.lastIndex - 1)

            var edgeBin = searchStart
            var strongestRise = Float.NEGATIVE_INFINITY
            for (bin in searchStart..searchEnd) {
                val rise = smoothed[(bin + 1).coerceAtMost(smoothed.lastIndex)] -
                    smoothed[bin - 1]
                if (rise > strongestRise) {
                    strongestRise = rise
                    edgeBin = bin
                }
            }

            var peakBin = edgeBin
            for (bin in edgeBin..searchEnd) {
                if (smoothed[bin] > smoothed[peakBin]) peakBin = bin
            }
            val footDensity = smoothed[peakBin] * SHADOW_FOOT_DENSITY_RATIO
            var footBin = edgeBin
            while (footBin > 0 && smoothed[footBin] > footDensity) {
                footBin -= 1
            }

            val edgeEv = binCenterEv(edgeBin)
            val footEv = if (footBin < edgeBin) {
                val lowerDensity = smoothed[footBin]
                val upperDensity = smoothed[footBin + 1]
                val fraction = if (upperDensity > lowerDensity) {
                    ((footDensity - lowerDensity) / (upperDensity - lowerDensity))
                        .coerceIn(0f, 1f)
                } else {
                    0f
                }
                binCenterEv(footBin) + fraction * LOG_HISTOGRAM_BIN_EV
            } else {
                edgeEv
            }
            return ShadowSlope(
                edge = 2.0f.pow(edgeEv),
                foot = 2.0f.pow(footEv.coerceAtMost(edgeEv))
            )
        }

        private fun smoothHistogram(histogram: FloatArray): FloatArray {
            val kernel = FloatArray(LOG_HISTOGRAM_SMOOTH_RADIUS * 2 + 1)
            var kernelSum = 0.0
            for (offset in -LOG_HISTOGRAM_SMOOTH_RADIUS..LOG_HISTOGRAM_SMOOTH_RADIUS) {
                val normalized = offset.toDouble() / LOG_HISTOGRAM_SMOOTH_SIGMA_BINS.toDouble()
                val weight = exp(-0.5 * normalized * normalized)
                kernel[offset + LOG_HISTOGRAM_SMOOTH_RADIUS] = weight.toFloat()
                kernelSum += weight
            }
            for (index in kernel.indices) {
                kernel[index] = (kernel[index] / kernelSum).toFloat()
            }

            return FloatArray(histogram.size) { bin ->
                var value = 0f
                for (offset in -LOG_HISTOGRAM_SMOOTH_RADIUS..LOG_HISTOGRAM_SMOOTH_RADIUS) {
                    val sourceBin = bin + offset
                    if (sourceBin !in histogram.indices) continue
                    value += histogram[sourceBin] *
                        kernel[offset + LOG_HISTOGRAM_SMOOTH_RADIUS]
                }
                value
            }
        }

        private fun percentileBin(
            histogram: FloatArray,
            sampleCount: Int,
            percentile: Float,
        ): Int {
            val target = ceil(sampleCount * percentile.coerceIn(0f, 1f)).toInt()
                .coerceAtLeast(1)
            var cumulative = 0
            for (bin in histogram.indices) {
                cumulative += histogram[bin].toInt()
                if (cumulative >= target) return bin
            }
            return histogram.lastIndex
        }

        private fun binCenterEv(bin: Int): Float {
            return LOG_HISTOGRAM_MIN_EV + (bin.toFloat() + 0.5f) * LOG_HISTOGRAM_BIN_EV
        }

        private fun log2(value: Float): Float {
            return (ln(value.toDouble()) / ln(2.0)).toFloat()
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

        private data class ShadowSlope(
            val edge: Float,
            val foot: Float,
        )
    }
}
