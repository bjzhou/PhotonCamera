package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.PhotonDehazeTuning
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt

/** Parameters for the chromaticity-preserving low-frequency dehaze curve. */
internal data class PhotonDehazeCurveParameters(
    val hazePointLow: Float,
    val hazePointHigh: Float,
    val highlightScale: Float,
    val quadraticCoefficient: Float,
    val linearSlope: Float,
    val shoulderValue: Float,
    val detectedHighlightScale: Float,
    val sampledPixelCount: Int,
) {
    init {
        require(
            listOf(
                hazePointLow,
                hazePointHigh,
                highlightScale,
                quadraticCoefficient,
                linearSlope,
                shoulderValue,
                detectedHighlightScale,
            ).all(Float::isFinite),
        ) { "Non-finite Photon dehaze curve" }
        require(sampledPixelCount > 0) { "Photon dehaze curve has no samples" }
    }

    fun mappedLuminance(input: Float): Float {
        val normalizedInput = input.coerceIn(0f, 1f)
        val scaled = min(normalizedInput * highlightScale, 1f)
        return if (scaled < hazePointHigh) {
            val distance = max(scaled - hazePointLow, 0f)
            distance * distance * quadraticCoefficient
        } else {
            shoulderValue + (scaled - hazePointHigh) * linearSlope
        }.coerceIn(0f, 1f)
    }

    fun gainForLuminance(input: Float): Float =
        mappedLuminance(input) / max(input.coerceIn(0f, 1f), MIN_LUMINANCE)

    companion object {
        private const val MIN_LUMINANCE = 1e-6f
    }
}

/**
 * Whole-image statistics used by [PhotonDehazePipeline].
 *
 * The two histograms reproduce the MGC low-frequency DehazeAndDha contracts: the first measures
 * only the bottom 877 values of summed 12-bit RGB, while the second tracks the brightest channel
 * plus one eighth of the channel spread. No face mask is available in Photon, which is equivalent
 * to the original zero-mask path (one vote per sample and no luminance offset).
 */
internal class PhotonDehazeHistogram {
    private val hazeHistogram = IntArray(HAZE_HISTOGRAM_SIZE)
    private val highlightHistogram = IntArray(HIGHLIGHT_HISTOGRAM_SIZE)
    var sampleCount: Int = 0
        private set

    fun addLinearRgb(red: Float, green: Float, blue: Float) {
        if (!red.isFinite() || !green.isFinite() || !blue.isFinite()) return
        val r = quantize12(red)
        val g = quantize12(green)
        val b = quantize12(blue)
        val minimum = min(r, min(g, b))
        val maximum = max(r, max(g, b))
        val hazeBin = (r + g + b).coerceIn(0, HAZE_HISTOGRAM_SIZE - 1)
        val highlightBin = (maximum + (maximum - minimum) / 8)
            .coerceIn(0, HIGHLIGHT_HISTOGRAM_SIZE - 1)
        hazeHistogram[hazeBin] += 1
        highlightHistogram[highlightBin] += 1
        sampleCount += 1
    }

    fun estimateCurve(tuning: PhotonDehazeTuning): PhotonDehazeCurveParameters? {
        if (sampleCount <= 0) return null
        val normalizedTuning = tuning.normalized()
        val cumulativeHaze = cumulative(hazeHistogram)
        val cumulativeHighlight = cumulative(highlightHistogram)

        val detectedHighlightScale = extractHighlightScale(cumulativeHighlight)
        val highlightScale = 1f +
            (detectedHighlightScale - 1f) * normalizedTuning.dynamicHighlightStrength
        val hazeLevel = estimateHazeLevel(cumulativeHaze)
        val hazeBase = highlightScale * hazeLevel * HAZE_DAMPING * normalizedTuning.strength
        val hazePointLow = (HAZE_POINT_LOW_SCALE * hazeBase / SIGNAL_MAX).coerceIn(0f, 1f)
        val hazePointHigh = (HAZE_POINT_HIGH_SCALE * hazeBase / SIGNAL_MAX)
            .coerceIn(hazePointLow, 1f)

        val interval = hazePointHigh - hazePointLow
        val quadraticCoefficient: Float
        val shoulderValue: Float
        val linearSlope: Float
        if (interval > MIN_CURVE_INTERVAL) {
            quadraticCoefficient = 1f /
                (interval * interval + 2f * (1f - hazePointHigh) * interval)
            shoulderValue = interval * interval * quadraticCoefficient
            linearSlope = if (hazePointHigh < 1f) {
                (1f - shoulderValue) / (1f - hazePointHigh)
            } else {
                0f
            }
        } else {
            // Zero dehaze strength leaves the original linear segment intact while DHA can still
            // adjust its scale. Avoid materializing the unused infinite quadratic coefficient.
            quadraticCoefficient = 0f
            shoulderValue = 0f
            linearSlope = 1f
        }
        return PhotonDehazeCurveParameters(
            hazePointLow = hazePointLow,
            hazePointHigh = hazePointHigh,
            highlightScale = highlightScale,
            quadraticCoefficient = quadraticCoefficient,
            linearSlope = linearSlope,
            shoulderValue = shoulderValue,
            detectedHighlightScale = detectedHighlightScale,
            sampledPixelCount = sampleCount,
        )
    }

    private fun estimateHazeLevel(cumulativeHaze: IntArray): Float {
        var sum = 0f
        for (index in 0 until HAZE_QUANTILE_SAMPLE_COUNT) {
            val position = index.toFloat() / (HAZE_QUANTILE_SAMPLE_COUNT - 1).toFloat()
            val multiplier = HAZE_QUANTILE_LOW +
                (HAZE_QUANTILE_HIGH - HAZE_QUANTILE_LOW) * position
            val target = HAZE_QUANTILE * multiplier * sampleCount.toFloat()
            val summedRgbBin = quantile(cumulativeHaze, target)
            sum += min(summedRgbBin / 3f, HAZE_LEVEL_LIMIT)
        }
        return sum / HAZE_QUANTILE_SAMPLE_COUNT.toFloat()
    }

    private fun extractHighlightScale(cumulativeHighlight: IntArray): Float {
        val distanceFromWhite = 1f - HIGHLIGHT_QUANTILE
        val adaptiveWindowMix = (distanceFromWhite * 5f).coerceIn(0f, 1f)
        val maximumHalfWindow = HIGHLIGHT_WINDOW_MIN +
            (HIGHLIGHT_WINDOW_MAX - HIGHLIGHT_WINDOW_MIN) * adaptiveWindowMix
        val halfWindow = min(distanceFromWhite, maximumHalfWindow)
        var sum = 0f
        for (index in 0 until HIGHLIGHT_QUANTILE_SAMPLE_COUNT) {
            val position = index.toFloat() / (HIGHLIGHT_QUANTILE_SAMPLE_COUNT - 1).toFloat()
            val quantilePosition =
                (HIGHLIGHT_QUANTILE - halfWindow) + 2f * halfWindow * position
            sum += quantile(
                cumulativeHighlight,
                quantilePosition * sampleCount.toFloat(),
            ) / SIGNAL_MAX
        }
        val meanHighlight = sum / HIGHLIGHT_QUANTILE_SAMPLE_COUNT.toFloat()
        val rawScale = if (meanHighlight > MIN_HIGHLIGHT_LEVEL) {
            HIGHLIGHT_TARGET / meanHighlight
        } else {
            HIGHLIGHT_SCALE_MAX
        }
        return rawScale.coerceIn(HIGHLIGHT_SCALE_MIN, HIGHLIGHT_SCALE_MAX)
    }

    private fun cumulative(histogram: IntArray): IntArray {
        val output = IntArray(histogram.size)
        var sum = 0
        for (index in histogram.indices) {
            sum += histogram[index]
            output[index] = sum
        }
        return output
    }

    private fun quantile(cumulative: IntArray, target: Float): Float {
        val boundedTarget = target.coerceIn(0f, cumulative.last().toFloat())
        var low = 0
        var high = cumulative.lastIndex
        while (low < high) {
            val middle = (low + high) ushr 1
            if (cumulative[middle].toFloat() >= boundedTarget) high = middle else low = middle + 1
        }
        val currentIndex = low
        if (currentIndex == 0) return 0f
        val previousCount = cumulative[currentIndex - 1].toFloat()
        val currentCount = cumulative[currentIndex].toFloat()
        if (currentCount <= previousCount) return currentIndex.toFloat()
        val fraction = ((boundedTarget - previousCount) / (currentCount - previousCount))
            .coerceIn(0f, 1f)
        return currentIndex - 1f + fraction
    }

    private fun quantize12(value: Float): Int =
        (value.coerceIn(0f, 1f) * SIGNAL_MAX).roundToInt()

    companion object {
        private const val SIGNAL_MAX = 4095f
        private const val HAZE_HISTOGRAM_SIZE = 877
        private const val HIGHLIGHT_HISTOGRAM_SIZE = 5251
        private const val HAZE_QUANTILE_SAMPLE_COUNT = 20
        private const val HIGHLIGHT_QUANTILE_SAMPLE_COUNT = 5
        private const val HAZE_QUANTILE = 0.001f
        private const val HAZE_QUANTILE_LOW = 0.1f
        private const val HAZE_QUANTILE_HIGH = 1.9f
        private const val HAZE_LEVEL_LIMIT = 172f
        private const val HAZE_POINT_LOW_SCALE = 0.6f
        private const val HAZE_POINT_HIGH_SCALE = 1.2f
        private const val HAZE_DAMPING = 0.98f
        private const val HIGHLIGHT_QUANTILE = 0.993f
        private const val HIGHLIGHT_TARGET = 0.88f
        private const val HIGHLIGHT_WINDOW_MIN = 0.01f
        private const val HIGHLIGHT_WINDOW_MAX = 0.05f
        private const val HIGHLIGHT_SCALE_MIN = 0.78f
        private const val HIGHLIGHT_SCALE_MAX = 1.7f
        private const val MIN_HIGHLIGHT_LEVEL = 1e-6f
        private const val MIN_CURVE_INTERVAL = 1e-6f
    }
}
