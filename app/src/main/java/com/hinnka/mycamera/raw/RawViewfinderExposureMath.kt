package com.hinnka.mycamera.raw

import kotlin.math.abs
import kotlin.math.ln
import kotlin.math.pow

/**
 * Display-referred exposure matching math shared by the capture preview matcher and unit tests.
 *
 * Both inputs are tone-mapped 8-bit sRGB previews. Converting their surviving code values back
 * to display-linear light does not recover scene-linear RAW data; it only makes the logarithmic
 * ratio describe a ratio of displayed light. Overall exposure is matched primarily from a robust,
 * center-weighted estimate of fixed tonal-distribution quantiles. Trimming the conflicting error
 * tails prevents one crushed shadow or clipped highlight band from controlling the result. The
 * perceptual arithmetic mean keeps the complete fixed image area, including displayed black and
 * white endpoints, as a global guardrail. This remains defined when local tone mapping changes the
 * shape of the tonal distribution and does not require pixel correspondence.
 */
internal object RawViewfinderExposureMath {
    private const val PERCEPTUAL_BRIGHTNESS_FLOOR = 1f / 255f
    private const val DISPLAY_LINEAR_LUMA_FLOOR = 1f / (255f * 12.92f)
    private const val MIN_SAMPLE_COUNT = 32
    private const val QUANTILE_TRIM_LOW_FRACTION = 0.15f
    private const val QUANTILE_TRIM_HIGH_FRACTION = 0.85f
    private const val QUANTILE_SPREAD_LOW_FRACTION = 0.15f
    private const val QUANTILE_SPREAD_HIGH_FRACTION = 0.85f

    private val MATCH_QUANTILES = floatArrayOf(
        0.20f,
        0.30f,
        0.40f,
        0.50f,
        0.60f,
        0.70f,
        0.80f,
    )
    private const val P50_QUANTILE_INDEX = 3
    // Retained as a diagnostic for comparing the former shadow-priority target in real scenes.
    private val SHADOW_PRIORITY_QUANTILE_WEIGHTS =
        floatArrayOf(3f, 4f, 5f, 5f, 4f, 2f, 1f)
    // The solver excludes the deepest and brightest 20%, then favors the stable distribution center.
    private val SOLVER_QUANTILE_WEIGHTS = floatArrayOf(1f, 2f, 3f, 4f, 3f, 2f, 1f)
    private const val TRIMMED_QUANTILE_ERROR_WEIGHT = 0.70f
    private const val MEAN_BRIGHTNESS_ERROR_WEIGHT = 1f - TRIMMED_QUANTILE_ERROR_WEIGHT

    private const val MAX_SOLVE_STEPS = 4
    private const val MATCH_LOG2_TOLERANCE = 0.05f
    private const val INITIAL_PROBE_EV = 0.5f
    private const val MIN_STEP_EV = 0.025f
    private const val MIN_ERROR_DELTA = 0.0001f

    private const val SRGB_TRANSFER_THRESHOLD = 0.04045f
    private const val SRGB_LINEAR_SCALE = 12.92f
    private const val SRGB_TRANSFER_A = 0.055f
    private const val SRGB_TRANSFER_GAMMA = 2.4f

    data class Reference(
        val width: Int,
        val height: Int,
        val left: Int,
        val top: Int,
        val right: Int,
        val bottom: Int,
        val targetLog2PerceptualBrightness: Float,
        val targetLog2DisplayLinearLumaMean: Float,
        val targetMeanLog2DisplayLinearLuma: Float,
        val targetMeanLog2PerceptualBrightness: Float,
        val targetQuantileLog2Lumas: FloatArray,
        val sampleCount: Int,
        val displayLinearLumaMean: Float,
        val perceptualBrightnessMean: Float,
    ) {
        init {
            require(targetLog2PerceptualBrightness.isFinite())
            require(targetLog2DisplayLinearLumaMean.isFinite())
            require(targetMeanLog2DisplayLinearLuma.isFinite())
            require(targetMeanLog2PerceptualBrightness.isFinite())
            require(targetQuantileLog2Lumas.size == MATCH_QUANTILES.size)
            require(targetQuantileLog2Lumas.all { it.isFinite() })
            require(sampleCount >= MIN_SAMPLE_COUNT)
            require(displayLinearLumaMean.isFinite() && displayLinearLumaMean >= 0f)
            require(perceptualBrightnessMean.isFinite() && perceptualBrightnessMean >= 0f)
        }
    }

    data class MatchResult(
        val matchLog2Error: Float,
        val toneWeightedLog2Error: Float,
        val meanBrightnessLog2Error: Float,
        val linearArithmeticMeanLog2Error: Float,
        val linearLogAverageLog2Error: Float,
        val perceptualLogAverageLog2Error: Float,
        val p50Log2Error: Float,
        val quantileLog2Errors: FloatArray,
        val quantileMedianLog2Error: Float,
        val quantileTrimmedMeanLog2Error: Float,
        val quantileSpreadLog2: Float,
        val referenceSampleCount: Int,
        val candidateSampleCount: Int,
        val referenceDisplayLinearLumaMean: Float,
        val candidateDisplayLinearLumaMean: Float,
        val referencePerceptualBrightnessMean: Float,
        val candidatePerceptualBrightnessMean: Float,
    )

    private data class LumaDistribution(
        val sortedLog2PerceptualBrightness: FloatArray,
        val displayLinearLumaMean: Float,
        val meanLog2DisplayLinearLuma: Float,
        val perceptualBrightnessMean: Float,
        val meanLog2PerceptualBrightness: Float,
        val sampleCount: Int,
    )

    private data class SolverSample(
        val exposureEv: Float,
        val matchLog2Error: Float,
    )

    fun buildReference(
        pixels: IntArray,
        width: Int,
        height: Int,
        left: Int,
        top: Int,
        right: Int,
        bottom: Int,
    ): Reference? {
        if (width <= 0 || height <= 0 || pixels.size < width * height) return null
        val safeLeft = left.coerceIn(0, width)
        val safeTop = top.coerceIn(0, height)
        val safeRight = right.coerceIn(safeLeft, width)
        val safeBottom = bottom.coerceIn(safeTop, height)
        if (safeLeft >= safeRight || safeTop >= safeBottom) return null

        val distribution = buildDistribution(
            pixels = pixels,
            width = width,
            left = safeLeft,
            top = safeTop,
            right = safeRight,
            bottom = safeBottom,
        ) ?: return null
        if (distribution.sampleCount < MIN_SAMPLE_COUNT) return null
        return Reference(
            width = width,
            height = height,
            left = safeLeft,
            top = safeTop,
            right = safeRight,
            bottom = safeBottom,
            targetLog2PerceptualBrightness = log2(
                distribution.perceptualBrightnessMean.coerceAtLeast(
                    PERCEPTUAL_BRIGHTNESS_FLOOR
                )
            ),
            targetLog2DisplayLinearLumaMean = log2(
                distribution.displayLinearLumaMean.coerceAtLeast(DISPLAY_LINEAR_LUMA_FLOOR)
            ),
            targetMeanLog2DisplayLinearLuma = distribution.meanLog2DisplayLinearLuma,
            targetMeanLog2PerceptualBrightness = distribution.meanLog2PerceptualBrightness,
            targetQuantileLog2Lumas = distribution.quantiles(),
            sampleCount = distribution.sampleCount,
            displayLinearLumaMean = distribution.displayLinearLumaMean,
            perceptualBrightnessMean = distribution.perceptualBrightnessMean,
        )
    }

    fun evaluate(
        reference: Reference,
        pixels: IntArray,
        width: Int,
        height: Int,
    ): MatchResult? {
        if (width != reference.width ||
            height != reference.height ||
            pixels.size < width * height ||
            reference.sampleCount < MIN_SAMPLE_COUNT
        ) {
            return null
        }

        val distribution = buildDistribution(
            pixels = pixels,
            width = width,
            left = reference.left,
            top = reference.top,
            right = reference.right,
            bottom = reference.bottom,
        ) ?: return null
        val candidateQuantiles = distribution.quantiles()
        val meanBrightnessError = log2(
            distribution.perceptualBrightnessMean.coerceAtLeast(PERCEPTUAL_BRIGHTNESS_FLOOR)
        ) - reference.targetLog2PerceptualBrightness
        val linearArithmeticMeanError = log2(
            distribution.displayLinearLumaMean.coerceAtLeast(DISPLAY_LINEAR_LUMA_FLOOR)
        ) - reference.targetLog2DisplayLinearLumaMean
        val linearLogAverageError =
            distribution.meanLog2DisplayLinearLuma - reference.targetMeanLog2DisplayLinearLuma
        val perceptualLogAverageError =
            distribution.meanLog2PerceptualBrightness -
                reference.targetMeanLog2PerceptualBrightness
        val quantileErrors = FloatArray(MATCH_QUANTILES.size) { index ->
            candidateQuantiles[index] - reference.targetQuantileLog2Lumas[index]
        }
        val p50Error = quantileErrors[P50_QUANTILE_INDEX]
        val sortedToneErrors = quantileErrors.copyOf()
        val toneWeights = SHADOW_PRIORITY_QUANTILE_WEIGHTS.copyOf()
        sortPairsByFirst(sortedToneErrors, toneWeights)
        val toneWeightSum = toneWeights.sumOf { it.toDouble() }
        val toneWeightedError = weightedTrimmedMean(
            sortedValues = sortedToneErrors,
            sortedWeights = toneWeights,
            weightSum = toneWeightSum,
            lowFraction = QUANTILE_TRIM_LOW_FRACTION,
            highFraction = QUANTILE_TRIM_HIGH_FRACTION,
        )
        val sortedQuantileErrors = quantileErrors.copyOf()
        val solverWeights = SOLVER_QUANTILE_WEIGHTS.copyOf()
        sortPairsByFirst(sortedQuantileErrors, solverWeights)
        val solverWeightSum = solverWeights.sumOf { it.toDouble() }
        val median = weightedMedian(
            sortedQuantileErrors,
            solverWeights,
            solverWeightSum,
        )
        val trimmedMean = weightedTrimmedMean(
            sortedValues = sortedQuantileErrors,
            sortedWeights = solverWeights,
            weightSum = solverWeightSum,
            lowFraction = QUANTILE_TRIM_LOW_FRACTION,
            highFraction = QUANTILE_TRIM_HIGH_FRACTION,
        )
        val spreadLow = weightedQuantile(
            sortedQuantileErrors,
            solverWeights,
            solverWeightSum,
            QUANTILE_SPREAD_LOW_FRACTION,
        )
        val spreadHigh = weightedQuantile(
            sortedQuantileErrors,
            solverWeights,
            solverWeightSum,
            QUANTILE_SPREAD_HIGH_FRACTION,
        )
        val quantileSpread = (spreadHigh - spreadLow).coerceAtLeast(0f)
        val matchError =
            TRIMMED_QUANTILE_ERROR_WEIGHT * trimmedMean +
                MEAN_BRIGHTNESS_ERROR_WEIGHT * meanBrightnessError
        if (!meanBrightnessError.isFinite() ||
            !linearArithmeticMeanError.isFinite() ||
            !linearLogAverageError.isFinite() ||
            !perceptualLogAverageError.isFinite() ||
            !p50Error.isFinite() ||
            !toneWeightedError.isFinite() ||
            !matchError.isFinite() ||
            !median.isFinite() ||
            !trimmedMean.isFinite() ||
            !quantileSpread.isFinite()
        ) {
            return null
        }
        return MatchResult(
            matchLog2Error = matchError,
            toneWeightedLog2Error = toneWeightedError,
            meanBrightnessLog2Error = meanBrightnessError,
            linearArithmeticMeanLog2Error = linearArithmeticMeanError,
            linearLogAverageLog2Error = linearLogAverageError,
            perceptualLogAverageLog2Error = perceptualLogAverageError,
            p50Log2Error = p50Error,
            quantileLog2Errors = quantileErrors,
            quantileMedianLog2Error = median,
            quantileTrimmedMeanLog2Error = trimmedMean,
            quantileSpreadLog2 = quantileSpread,
            referenceSampleCount = reference.sampleCount,
            candidateSampleCount = distribution.sampleCount,
            referenceDisplayLinearLumaMean = reference.displayLinearLumaMean,
            candidateDisplayLinearLumaMean = distribution.displayLinearLumaMean,
            referencePerceptualBrightnessMean = reference.perceptualBrightnessMean,
            candidatePerceptualBrightnessMean = distribution.perceptualBrightnessMean,
        )
    }

    private fun buildDistribution(
        pixels: IntArray,
        width: Int,
        left: Int,
        top: Int,
        right: Int,
        bottom: Int,
    ): LumaDistribution? {
        val capacity = (right - left) * (bottom - top)
        if (capacity <= 0) return null
        val log2PerceptualBrightness = FloatArray(capacity)
        var sampleCount = 0
        var displayLinearLumaSum = 0.0
        var log2DisplayLinearLumaSum = 0.0
        var perceptualBrightnessSum = 0.0
        var log2PerceptualBrightnessSum = 0.0
        for (y in top until bottom) {
            for (x in left until right) {
                val luma = displayLinearLuma(pixels[y * width + x]) ?: continue
                val perceptualBrightness = linearToSrgb(luma)
                val log2DisplayLinearLuma = log2(
                    luma.coerceAtLeast(DISPLAY_LINEAR_LUMA_FLOOR)
                )
                val log2Perceptual = log2(
                    perceptualBrightness.coerceAtLeast(PERCEPTUAL_BRIGHTNESS_FLOOR)
                )
                displayLinearLumaSum += luma.toDouble()
                log2DisplayLinearLumaSum += log2DisplayLinearLuma.toDouble()
                perceptualBrightnessSum += perceptualBrightness.toDouble()
                log2PerceptualBrightnessSum += log2Perceptual.toDouble()
                log2PerceptualBrightness[sampleCount] = log2Perceptual
                sampleCount++
            }
        }
        if (sampleCount < MIN_SAMPLE_COUNT) return null
        val sortedBrightness = log2PerceptualBrightness.copyOf(sampleCount)
        sortedBrightness.sort()
        val displayLinearLumaMean = (displayLinearLumaSum / sampleCount).toFloat()
        val meanLog2DisplayLinearLuma = (log2DisplayLinearLumaSum / sampleCount).toFloat()
        val perceptualBrightnessMean = (perceptualBrightnessSum / sampleCount).toFloat()
        val meanLog2PerceptualBrightness =
            (log2PerceptualBrightnessSum / sampleCount).toFloat()
        if (!displayLinearLumaMean.isFinite() ||
            !meanLog2DisplayLinearLuma.isFinite() ||
            !perceptualBrightnessMean.isFinite() ||
            !meanLog2PerceptualBrightness.isFinite()
        ) {
            return null
        }
        return LumaDistribution(
            sortedLog2PerceptualBrightness = sortedBrightness,
            displayLinearLumaMean = displayLinearLumaMean,
            meanLog2DisplayLinearLuma = meanLog2DisplayLinearLuma,
            perceptualBrightnessMean = perceptualBrightnessMean,
            meanLog2PerceptualBrightness = meanLog2PerceptualBrightness,
            sampleCount = sampleCount,
        )
    }

    private fun LumaDistribution.quantiles(): FloatArray {
        return FloatArray(MATCH_QUANTILES.size) { index ->
            unweightedQuantile(sortedLog2PerceptualBrightness, MATCH_QUANTILES[index])
        }
    }

    private fun unweightedQuantile(sortedValues: FloatArray, quantile: Float): Float {
        if (sortedValues.size == 1) return sortedValues[0]
        val position = quantile.coerceIn(0f, 1f) * sortedValues.lastIndex
        val lowerIndex = position.toInt().coerceIn(0, sortedValues.lastIndex)
        val upperIndex = (lowerIndex + 1).coerceAtMost(sortedValues.lastIndex)
        val fraction = position - lowerIndex
        return sortedValues[lowerIndex] * (1f - fraction) +
            sortedValues[upperIndex] * fraction
    }

    /**
     * Solves RAW exposure EV from a monotonic display-light error function.
     *
     * The error is deliberately not assumed to have a 1:1 slope with RAW EV. A directed probe
     * establishes that slope before secant or bracket interpolation is used.
     */
    fun solve(evaluateError: (Float) -> Float?): Float? {
        val zeroError = evaluateError(0f)?.takeIf { it.isFinite() } ?: return null
        val zero = SolverSample(exposureEv = 0f, matchLog2Error = zeroError)
        if (abs(zero.matchLog2Error) <= MATCH_LOG2_TOLERANCE) return zero.exposureEv

        val samples = mutableListOf(zero)
        var best = zero
        var nextEv = directionalProbe(zero, samples)
        repeat(MAX_SOLVE_STEPS) {
            val candidateEv = distinctCandidate(nextEv, samples) ?: return best.exposureEv
            val candidateError = evaluateError(candidateEv)?.takeIf { it.isFinite() }
                ?: return best.exposureEv
            val sample = SolverSample(candidateEv, candidateError)
            samples += sample
            if (abs(sample.matchLog2Error) < abs(best.matchLog2Error)) best = sample
            if (abs(sample.matchLog2Error) <= MATCH_LOG2_TOLERANCE) return sample.exposureEv
            nextEv = nextCandidate(samples, sample)
        }
        return best.exposureEv
    }

    private fun nextCandidate(samples: List<SolverSample>, latest: SolverSample): Float {
        bracketedCandidate(samples)?.let { return it }
        val previous = samples.asReversed().firstOrNull {
            it !== latest && abs(it.matchLog2Error - latest.matchLog2Error) > MIN_ERROR_DELTA
        }
        return previous?.let { interpolatedExposureEv(it, latest) }
            ?: directionalProbe(latest, samples)
    }

    private fun bracketedCandidate(samples: List<SolverSample>): Float? {
        val sorted = samples.sortedBy { it.exposureEv }
        for (index in 0 until sorted.lastIndex) {
            val lower = sorted[index]
            val upper = sorted[index + 1]
            val crossesTarget =
                (lower.matchLog2Error <= 0f && upper.matchLog2Error >= 0f) ||
                    (lower.matchLog2Error >= 0f && upper.matchLog2Error <= 0f)
            if (!crossesTarget) continue
            val interpolated = interpolatedExposureEv(lower, upper)
            return if (interpolated != null && interpolated in lower.exposureEv..upper.exposureEv) {
                interpolated
            } else {
                sanitizeExposureEv((lower.exposureEv + upper.exposureEv) * 0.5f)
            }
        }
        return null
    }

    private fun interpolatedExposureEv(a: SolverSample, b: SolverSample): Float? {
        val errorDelta = b.matchLog2Error - a.matchLog2Error
        if (!errorDelta.isFinite() || abs(errorDelta) <= MIN_ERROR_DELTA) return null
        return sanitizeExposureEv(
            a.exposureEv -
                a.matchLog2Error * (b.exposureEv - a.exposureEv) / errorDelta
        )
    }

    private fun directionalProbe(
        sample: SolverSample,
        samples: List<SolverSample>,
    ): Float {
        val direction = if (sample.matchLog2Error > 0f) -1f else 1f
        val previousInDirection = samples.asReversed().firstOrNull {
            it !== sample &&
                (sample.exposureEv - it.exposureEv) * direction >= MIN_STEP_EV
        }
        val stepEv = previousInDirection?.let {
            (abs(sample.exposureEv - it.exposureEv) * 2f).coerceAtLeast(INITIAL_PROBE_EV)
        } ?: INITIAL_PROBE_EV
        return sanitizeExposureEv(sample.exposureEv + direction * stepEv)
            ?: sample.exposureEv
    }

    private fun distinctCandidate(candidateEv: Float, samples: List<SolverSample>): Float? {
        val safeEv = sanitizeExposureEv(candidateEv) ?: return null
        return safeEv.takeUnless { candidate ->
            samples.any { abs(it.exposureEv - candidate) < MIN_STEP_EV }
        }
    }

    private fun sanitizeExposureEv(value: Float): Float? {
        return value.takeIf { it.isFinite() }?.coerceIn(
            MeteringSystem.RAW_EXPOSURE_MIN_EV,
            MeteringSystem.RAW_EXPOSURE_MAX_EV,
        )
    }

    private fun displayLinearLuma(argb: Int): Float? {
        val alpha = (argb ushr 24) and 0xff
        if (alpha == 0) return null
        val alphaScale = alpha / 255f
        val r = srgbToLinear(((argb ushr 16) and 0xff) / 255f)
        val g = srgbToLinear(((argb ushr 8) and 0xff) / 255f)
        val b = srgbToLinear((argb and 0xff) / 255f)
        return ((0.2126f * r + 0.7152f * g + 0.0722f * b) * alphaScale)
            .takeIf { it.isFinite() }
    }

    private fun srgbToLinear(value: Float): Float {
        val clamped = value.coerceIn(0f, 1f)
        return if (clamped <= SRGB_TRANSFER_THRESHOLD) {
            clamped / SRGB_LINEAR_SCALE
        } else {
            ((clamped + SRGB_TRANSFER_A) / (1f + SRGB_TRANSFER_A))
                .pow(SRGB_TRANSFER_GAMMA)
        }
    }

    private fun weightedMedian(
        sortedValues: FloatArray,
        sortedWeights: FloatArray,
        weightSum: Double,
    ): Float = weightedQuantile(sortedValues, sortedWeights, weightSum, 0.5f)

    private fun weightedQuantile(
        sortedValues: FloatArray,
        sortedWeights: FloatArray,
        weightSum: Double,
        quantile: Float,
    ): Float {
        val targetWeight = weightSum * quantile.coerceIn(0f, 1f)
        val boundaryTolerance = maxOf(1e-12, weightSum * 1e-9)
        var cumulativeWeight = 0.0
        for (index in sortedValues.indices) {
            cumulativeWeight += sortedWeights[index].toDouble()
            if (cumulativeWeight < targetWeight - boundaryTolerance) continue
            return if (kotlin.math.abs(cumulativeWeight - targetWeight) <= boundaryTolerance &&
                index < sortedValues.lastIndex
            ) {
                (sortedValues[index] + sortedValues[index + 1]) * 0.5f
            } else {
                sortedValues[index]
            }
        }
        return sortedValues.last()
    }

    private fun weightedTrimmedMean(
        sortedValues: FloatArray,
        sortedWeights: FloatArray,
        weightSum: Double,
        lowFraction: Float,
        highFraction: Float,
    ): Float {
        val startWeight = weightSum * lowFraction.coerceIn(0f, 1f).toDouble()
        val endWeight = weightSum * highFraction.coerceIn(0f, 1f).toDouble()
            .coerceAtLeast(startWeight)
        var cumulativeWeight = 0.0
        var includedWeight = 0.0
        var weightedSum = 0.0
        for (index in sortedValues.indices) {
            val nextCumulativeWeight = cumulativeWeight + sortedWeights[index].toDouble()
            val overlapStart = maxOf(cumulativeWeight, startWeight)
            val overlapEnd = minOf(nextCumulativeWeight, endWeight)
            val overlapWeight = (overlapEnd - overlapStart).coerceAtLeast(0.0)
            if (overlapWeight > 0.0) {
                includedWeight += overlapWeight
                weightedSum += sortedValues[index].toDouble() * overlapWeight
            }
            cumulativeWeight = nextCumulativeWeight
            if (cumulativeWeight >= endWeight) break
        }
        return if (includedWeight > 0.0) {
            (weightedSum / includedWeight).toFloat()
        } else {
            weightedMedian(sortedValues, sortedWeights, weightSum)
        }
    }

    private fun sortPairsByFirst(values: FloatArray, weights: FloatArray) {
        require(values.size == weights.size)
        if (values.size < 2) return
        quickSortPairs(values, weights, 0, values.lastIndex)
    }

    private fun quickSortPairs(
        values: FloatArray,
        weights: FloatArray,
        left: Int,
        right: Int,
    ) {
        var low = left
        var high = right
        val pivot = values[(left + right) ushr 1]
        while (low <= high) {
            while (values[low] < pivot) low++
            while (values[high] > pivot) high--
            if (low <= high) {
                val value = values[low]
                values[low] = values[high]
                values[high] = value
                val weight = weights[low]
                weights[low] = weights[high]
                weights[high] = weight
                low++
                high--
            }
        }
        if (left < high) quickSortPairs(values, weights, left, high)
        if (low < right) quickSortPairs(values, weights, low, right)
    }

    private fun linearToSrgb(value: Float): Float {
        val clamped = value.coerceIn(0f, 1f)
        return if (clamped <= 0.0031308f) {
            clamped * SRGB_LINEAR_SCALE
        } else {
            (1f + SRGB_TRANSFER_A) * clamped.pow(1f / SRGB_TRANSFER_GAMMA) - SRGB_TRANSFER_A
        }
    }

    private fun log2(value: Float): Float {
        return (ln(value.toDouble()) / ln(2.0)).toFloat()
    }
}
