package com.hinnka.mycamera.raw

import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.exp
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.log2
import kotlin.math.pow

/** Capture-side AE result consumed as one closed MGC AE + LTM rendering solution. */
internal data class RawSceneExposureSolution(
    val baselineExposureEv: Float,
    val mgcLtmPlan: MgcLtmCapturePlan,
)

internal data class MgcLtmCapturePlan(
    val hdrRatio: Float,
    val finalShortGain: Float,
    val finalLongGain: Float,
    val longTargetAverageLdr: Float,
) {
    init {
        require(hdrRatio.isFinite() && hdrRatio >= 1f)
        require(finalShortGain.isFinite() && finalShortGain > 0f)
        require(finalLongGain.isFinite() && finalLongGain > 0f)
        require(longTargetAverageLdr.isFinite() && longTargetAverageLdr in 0f..255f)
    }
}

internal data class MgcSyntheticExposure(
    val fraction: Float,
    val gain: Float,
    val fusionWeight: Float,
)

internal data class MgcShadowLevelMatch(
    val targetLevelLinear: Float,
    val measuredLevelLinear: Float,
    val gain: Float,
    val weightSum: Float,
)

internal data class MgcCurveBrightnessMatch(
    val googleDisplayBrightness: Float,
    val acr3DisplayBrightnessBefore: Float,
    val acr3DisplayBrightnessAfter: Float,
    val gain: Float,
)

/**
 * MGC V25 local-tone-mapping planning and display-brightness calibration.
 *
 * [planSyntheticExposures] reproduces the native `PlanExposures` state transition recovered from
 * MGC 9.7.047 V25: the same three HDR-ratio ranges, continuous synthetic-exposure count, partial
 * exposure weight, logarithmic exposure placement, and bento-factor table are retained.
 *
 * Google and ACR3 are deliberately compared only through one scene statistic in
 * [solveAcr3BrightnessMatch]. No pointwise inverse curve is constructed. The returned common gain
 * is folded into the local gain map while the renderer's final global tone curve remains ACR3.
 */
internal object MgcLocalToneMappingMath {
    private const val LDR_WHITE = 255.0
    private const val DISPLAY_GAMMA = 2.2
    private const val MIN_HDR_RATIO = 0.999f
    private const val FIRST_HDR_BOUNDARY = 1.08f
    private const val SECOND_HDR_BOUNDARY = 2.155024f
    private const val FIRST_COUNT_ORIGIN = 1.001f
    private const val FIRST_COUNT_SPAN = 0.079f
    private const val SECOND_COUNT_ORIGIN_EV = 0.111036f
    private const val SECOND_COUNT_SPAN_EV = 0.9966726f
    private const val HIGH_RANGE_EXPOSURE_STEP_EV = 0.553852f
    private const val SHADOW_SIGNAL_FLOOR = 0.01
    private const val SHADOW_POWER = 0.35
    private const val SHADOW_TRIANGLE_SCALE = 1.25
    private const val SHADOW_WEIGHT_POWER = 2.857
    private const val SHADOW_LEVEL_LOG_OFFSET = 13.28771
    private const val SHADOW_LEVEL_LOG_SCALE = 0.07525668
    private const val SHADOW_LEVEL_LOG_FLOOR = 0.0001
    private const val CURVE_SOLVE_MIN_GAIN = 1f / 16f
    private const val CURVE_SOLVE_MAX_GAIN = 16f

    private val bentoHdrStops = floatArrayOf(0f, 1f, 2f, 3f, 4f)
    private val bentoValues = floatArrayOf(0.9f, 0.7f, 0.4f, 0.2f, 0.1f)
    private val acr3Curve by lazy(ACR3Curve::samples)

    fun planSyntheticExposures(hdrRatio: Float): List<MgcSyntheticExposure>? {
        if (!hdrRatio.isFinite() || hdrRatio < MIN_HDR_RATIO) return null
        if (hdrRatio <= 1f) {
            return listOf(MgcSyntheticExposure(fraction = 1f, gain = 1f, fusionWeight = 1f))
        }

        val syntheticCount = when {
            hdrRatio <= FIRST_HDR_BOUNDARY -> {
                1f + ((hdrRatio - FIRST_COUNT_ORIGIN) / FIRST_COUNT_SPAN)
                    .coerceIn(0f, 1f)
            }
            hdrRatio <= SECOND_HDR_BOUNDARY -> {
                2f + ((log2(hdrRatio) - SECOND_COUNT_ORIGIN_EV) /
                    SECOND_COUNT_SPAN_EV).coerceIn(0f, 1f)
            }
            else -> 1f + log2(hdrRatio) / HIGH_RANGE_EXPOSURE_STEP_EV
        }
        val exposureCount = ceil(syntheticCount.toDouble()).toInt().coerceAtLeast(2)
        val partialWeight = if (syntheticCount == floor(syntheticCount)) {
            1f
        } else {
            syntheticCount - floor(syntheticCount)
        }
        val fractions = when (exposureCount) {
            2 -> floatArrayOf(0f, 1f)
            3 -> floatArrayOf(0f, 0.5f, 1f)
            else -> FloatArray(exposureCount) { index ->
                when (index) {
                    0 -> 0f
                    exposureCount - 1 -> 1f
                    else -> (partialWeight + index - 1f) / (syntheticCount - 1f)
                }
            }
        }
        val weights = FloatArray(exposureCount) { 1f }
        if (exposureCount == 2) {
            weights[0] = partialWeight
        } else {
            weights[1] = partialWeight
        }
        val minimumGain = bentoFactor(hdrRatio)
        val minimumLogGain = ln(minimumGain.toDouble())
        val maximumLogGain = ln(hdrRatio.toDouble())
        return fractions.mapIndexed { index, fraction ->
            MgcSyntheticExposure(
                fraction = fraction,
                gain = exp(
                    minimumLogGain * (1.0 - fraction) + maximumLogGain * fraction,
                ).toFloat(),
                fusionWeight = weights[index],
            )
        }
    }

    internal fun bentoFactor(hdrRatio: Float): Float {
        if (!hdrRatio.isFinite() || hdrRatio <= 1f) return bentoValues.first()
        val hdrStops = log2(hdrRatio).coerceIn(bentoHdrStops.first(), bentoHdrStops.last())
        val lower = floor(hdrStops).toInt().coerceIn(0, bentoValues.lastIndex)
        val upper = (lower + 1).coerceAtMost(bentoValues.lastIndex)
        val amount = hdrStops - lower
        return bentoValues[lower] + (bentoValues[upper] - bentoValues[lower]) * amount
    }

    fun longTargetAverageLdr(frame: RawSceneLinearFrame, idealLongGain: Float): Float? {
        val pixelCount = frame.width * frame.height
        if (frame.width <= 0 || frame.height <= 0 || frame.rgb.size != pixelCount * 3 ||
            !idealLongGain.isFinite() || idealLongGain <= 0f
        ) {
            return null
        }
        var sum = 0.0
        for (pixel in 0 until pixelCount) {
            val offset = pixel * 3
            val red = frame.rgb[offset]
            val green = frame.rgb[offset + 1]
            val blue = frame.rgb[offset + 2]
            if (!red.isFinite() || !green.isFinite() || !blue.isFinite()) return null
            val sourceLevel = maxOf(red, green, blue, 0f).toDouble()
            val idealLongLevel = (sourceLevel * idealLongGain).coerceIn(0.0, 1.0)
            sum += idealLongLevel.pow(1.0 / DISPLAY_GAMMA) * LDR_WHITE
        }
        return (sum / pixelCount.toDouble()).takeIf(Double::isFinite)?.toFloat()
    }

    fun solveShadowLevelMatch(
        source: FloatArray,
        fusedLinear: FloatArray,
        finalLongGain: Float,
        longTargetAverageLdr: Float,
    ): MgcShadowLevelMatch? {
        if (source.isEmpty() || source.size != fusedLinear.size ||
            !finalLongGain.isFinite() || finalLongGain <= 0f ||
            !longTargetAverageLdr.isFinite() || longTargetAverageLdr !in 0f..255f
        ) {
            return null
        }
        var weightedLevel = 0.0
        var weightSum = 0.0
        for (index in source.indices) {
            val sourceValue = source[index]
            val fusedValue = fusedLinear[index]
            if (!sourceValue.isFinite() || !fusedValue.isFinite()) return null
            val weight = shadowWeight(
                (sourceValue.coerceAtLeast(0f) * finalLongGain).coerceIn(0f, 1f).toDouble(),
            )
            weightedLevel += shadowLevelCoordinate(fusedValue.coerceAtLeast(0f).toDouble()) *
                weight
            weightSum += weight
        }
        return solveShadowLevelMatch(
            weightedLevelCoordinateSum = weightedLevel.toFloat(),
            weightSum = weightSum.toFloat(),
            longTargetAverageLdr = longTargetAverageLdr,
        )
    }

    /** Completes shadow-level matching from the two scalars reduced on the GPU. */
    fun solveShadowLevelMatch(
        weightedLevelCoordinateSum: Float,
        weightSum: Float,
        longTargetAverageLdr: Float,
    ): MgcShadowLevelMatch? {
        if (!weightedLevelCoordinateSum.isFinite() ||
            !weightSum.isFinite() || weightSum <= 0f ||
            !longTargetAverageLdr.isFinite() || longTargetAverageLdr !in 0f..255f
        ) {
            return null
        }
        val measuredCoordinate =
            weightedLevelCoordinateSum.toDouble() / weightSum.toDouble()
        val measured = 2.0.pow(
            measuredCoordinate / SHADOW_LEVEL_LOG_SCALE - SHADOW_LEVEL_LOG_OFFSET,
        ) - SHADOW_LEVEL_LOG_FLOOR
        val target = (longTargetAverageLdr / LDR_WHITE)
            .coerceIn(0.0, 1.0)
            .pow(DISPLAY_GAMMA)
        if (!measured.isFinite() || measured <= 0.0 || !target.isFinite()) return null
        val gain = target / measured
        if (!gain.isFinite() || gain <= 0.0) return null
        return MgcShadowLevelMatch(
            targetLevelLinear = target.toFloat(),
            measuredLevelLinear = measured.toFloat(),
            gain = gain.toFloat(),
            weightSum = weightSum,
        )
    }

    fun solveAcr3BrightnessMatch(linearLtmOutput: FloatArray): MgcCurveBrightnessMatch? {
        if (linearLtmOutput.isEmpty() || linearLtmOutput.any { !it.isFinite() }) return null
        val googleBrightness = displayBrightness(linearLtmOutput, 1f, ::googleToneValue)
        val acr3Before = displayBrightness(linearLtmOutput, 1f, ::acr3ToneValue)
        if (!googleBrightness.isFinite() || !acr3Before.isFinite()) return null

        var lower = CURVE_SOLVE_MIN_GAIN
        var upper = CURVE_SOLVE_MAX_GAIN
        if (displayBrightness(linearLtmOutput, lower, ::acr3ToneValue) >= googleBrightness) {
            upper = lower
        } else if (displayBrightness(linearLtmOutput, upper, ::acr3ToneValue) <= googleBrightness) {
            lower = upper
        } else {
            repeat(32) {
                val middle = (lower + upper) * 0.5f
                if (displayBrightness(linearLtmOutput, middle, ::acr3ToneValue) <
                    googleBrightness
                ) {
                    lower = middle
                } else {
                    upper = middle
                }
            }
        }
        val gain = (lower + upper) * 0.5f
        val acr3After = displayBrightness(linearLtmOutput, gain, ::acr3ToneValue)
        return MgcCurveBrightnessMatch(
            googleDisplayBrightness = googleBrightness,
            acr3DisplayBrightnessBefore = acr3Before,
            acr3DisplayBrightnessAfter = acr3After,
            gain = gain,
        )
    }

    /**
     * Solves the same display-brightness calibration from a GPU-generated linear histogram.
     * The CPU work is bounded by histogram resolution instead of full image resolution.
     */
    fun solveAcr3BrightnessMatch(
        linearHistogram: IntArray,
        expectedSampleCount: Int,
    ): MgcCurveBrightnessMatch? {
        if (linearHistogram.size < 2 || expectedSampleCount <= 0) return null
        var histogramCount = 0L
        for (rawCount in linearHistogram) {
            histogramCount += rawCount.toLong() and 0xffff_ffffL
        }
        if (histogramCount != expectedSampleCount.toLong()) return null

        val googleBrightness = displayBrightness(
            histogram = linearHistogram,
            sampleCount = expectedSampleCount,
            gain = 1f,
            curve = ::googleToneValue,
        )
        val acr3Before = displayBrightness(
            histogram = linearHistogram,
            sampleCount = expectedSampleCount,
            gain = 1f,
            curve = ::acr3ToneValue,
        )
        if (!googleBrightness.isFinite() || !acr3Before.isFinite()) return null

        var lower = CURVE_SOLVE_MIN_GAIN
        var upper = CURVE_SOLVE_MAX_GAIN
        if (displayBrightness(
                linearHistogram,
                expectedSampleCount,
                lower,
                ::acr3ToneValue,
            ) >= googleBrightness
        ) {
            upper = lower
        } else if (displayBrightness(
                linearHistogram,
                expectedSampleCount,
                upper,
                ::acr3ToneValue,
            ) <= googleBrightness
        ) {
            lower = upper
        } else {
            repeat(32) {
                val middle = (lower + upper) * 0.5f
                if (displayBrightness(
                        linearHistogram,
                        expectedSampleCount,
                        middle,
                        ::acr3ToneValue,
                    ) < googleBrightness
                ) {
                    lower = middle
                } else {
                    upper = middle
                }
            }
        }
        val gain = (lower + upper) * 0.5f
        val acr3After = displayBrightness(
            linearHistogram,
            expectedSampleCount,
            gain,
            ::acr3ToneValue,
        )
        return MgcCurveBrightnessMatch(
            googleDisplayBrightness = googleBrightness,
            acr3DisplayBrightnessBefore = acr3Before,
            acr3DisplayBrightnessAfter = acr3After,
            gain = gain,
        )
    }

    internal fun shadowWeight(longExposureLevel: Double): Double {
        if (!longExposureLevel.isFinite()) return Double.NaN
        val normalized = longExposureLevel.coerceIn(SHADOW_SIGNAL_FLOOR, 1.0)
        val encoded = normalized.pow(SHADOW_POWER)
        val triangle = ((1.0 - abs(2.0 * encoded - 1.0)) * SHADOW_TRIANGLE_SCALE)
            .coerceIn(0.0, 1.0)
        val smoothTriangle = triangle * triangle * (3.0 - 2.0 * triangle)
        return smoothTriangle.pow(SHADOW_WEIGHT_POWER)
    }

    private fun shadowLevelCoordinate(value: Double): Double =
        (log2(value.coerceAtLeast(0.0) + SHADOW_LEVEL_LOG_FLOOR) +
            SHADOW_LEVEL_LOG_OFFSET) * SHADOW_LEVEL_LOG_SCALE

    private fun displayBrightness(
        values: FloatArray,
        gain: Float,
        curve: (Float) -> Float,
    ): Float {
        var sum = 0.0
        for (value in values) {
            val toneValue = curve((value.coerceAtLeast(0f) * gain).coerceIn(0f, 1f))
            sum += toneValue.coerceIn(0f, 1f).toDouble().pow(1.0 / DISPLAY_GAMMA)
        }
        return (sum / values.size).toFloat()
    }

    private fun displayBrightness(
        histogram: IntArray,
        sampleCount: Int,
        gain: Float,
        curve: (Float) -> Float,
    ): Float {
        val maximumBin = histogram.lastIndex.toFloat()
        var sum = 0.0
        for (bin in histogram.indices) {
            val count = histogram[bin].toLong() and 0xffff_ffffL
            if (count == 0L) continue
            val linearValue = bin / maximumBin
            val toneValue = curve((linearValue * gain).coerceIn(0f, 1f))
            sum += toneValue.coerceIn(0f, 1f).toDouble().pow(1.0 / DISPLAY_GAMMA) *
                count.toDouble()
        }
        return (sum / sampleCount.toDouble()).toFloat()
    }

    private fun googleToneValue(value: Float): Float =
        DngProfileToneCurve.googleHdrToneCurveOutput(value)

    private fun acr3ToneValue(value: Float): Float = sampleUniformCurve(acr3Curve, value)

    private fun sampleUniformCurve(curve: FloatArray, input: Float): Float {
        val position = input.coerceIn(0f, 1f) * (curve.size - 1)
        val lower = position.toInt().coerceIn(0, curve.lastIndex)
        val upper = (lower + 1).coerceAtMost(curve.lastIndex)
        return curve[lower] + (curve[upper] - curve[lower]) * (position - lower)
    }
}
