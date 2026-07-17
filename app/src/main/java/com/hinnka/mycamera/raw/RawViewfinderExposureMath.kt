package com.hinnka.mycamera.raw

import kotlin.math.abs
import kotlin.math.ln
import kotlin.math.pow

/**
 * Display-referred exposure matching math shared by the capture preview matcher and unit tests.
 *
 * Both inputs are tone-mapped 8-bit sRGB previews. Converting their surviving code values back
 * to display-linear light does not recover scene-linear RAW data; it only makes the logarithmic
 * ratio describe a ratio of displayed light. Reference pixels clipped near black or white are
 * excluded once and the same fixed sample set is used for every rendered candidate. Errors are
 * weighted by the reference pixel's perceptual brightness so large dark regions cannot dominate
 * a high-contrast scene merely because the logarithmic domain expands their residuals.
 */
internal object RawViewfinderExposureMath {
    private const val DISPLAY_LINEAR_LUMA_FLOOR = 0.001f
    private const val REFERENCE_CLIP_LOW_LUMA = 0.002f
    private const val REFERENCE_CLIP_HIGH_LUMA = 0.995f
    private const val MIN_REFERENCE_SAMPLE_COUNT = 32
    private const val TRIM_LOW_FRACTION = 0.25f
    private const val TRIM_HIGH_FRACTION = 0.75f
    private const val MEDIAN_WEIGHT = 0.55f

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
        val pixelIndices: IntArray,
        val targetLog2DisplayLinearLumas: FloatArray,
        val perceptualWeights: FloatArray,
    ) {
        init {
            require(pixelIndices.size == targetLog2DisplayLinearLumas.size)
            require(pixelIndices.size == perceptualWeights.size)
            require(perceptualWeights.all { it.isFinite() && it > 0f })
        }

        val sampleCount: Int
            get() = pixelIndices.size
    }

    data class MatchResult(
        val matchLog2Error: Float,
        val medianLog2Error: Float,
        val trimmedMeanLog2Error: Float,
        val sampleCount: Int,
        val perceptualWeightSum: Float,
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

        val capacity = (safeRight - safeLeft) * (safeBottom - safeTop)
        val pixelIndices = IntArray(capacity)
        val targetLogLumas = FloatArray(capacity)
        val perceptualWeights = FloatArray(capacity)
        var sampleCount = 0
        for (y in safeTop until safeBottom) {
            for (x in safeLeft until safeRight) {
                val pixelIndex = y * width + x
                val targetLuma = displayLinearLuma(pixels[pixelIndex]) ?: continue
                if (targetLuma <= REFERENCE_CLIP_LOW_LUMA ||
                    targetLuma >= REFERENCE_CLIP_HIGH_LUMA
                ) {
                    continue
                }
                pixelIndices[sampleCount] = pixelIndex
                targetLogLumas[sampleCount] = log2(targetLuma)
                perceptualWeights[sampleCount] = linearToSrgb(targetLuma)
                sampleCount++
            }
        }
        if (sampleCount < MIN_REFERENCE_SAMPLE_COUNT) return null
        return Reference(
            width = width,
            height = height,
            pixelIndices = pixelIndices.copyOf(sampleCount),
            targetLog2DisplayLinearLumas = targetLogLumas.copyOf(sampleCount),
            perceptualWeights = perceptualWeights.copyOf(sampleCount),
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
            reference.sampleCount < MIN_REFERENCE_SAMPLE_COUNT
        ) {
            return null
        }

        val log2Errors = FloatArray(reference.sampleCount)
        val perceptualWeights = reference.perceptualWeights.copyOf()
        for (sampleIndex in reference.pixelIndices.indices) {
            val pixelIndex = reference.pixelIndices[sampleIndex]
            val renderedLuma = displayLinearLuma(pixels[pixelIndex])
                ?.coerceAtLeast(DISPLAY_LINEAR_LUMA_FLOOR)
                ?: DISPLAY_LINEAR_LUMA_FLOOR
            log2Errors[sampleIndex] =
                log2(renderedLuma) - reference.targetLog2DisplayLinearLumas[sampleIndex]
        }
        sortPairsByFirst(log2Errors, perceptualWeights)

        var weightSum = 0.0
        for (weight in perceptualWeights) weightSum += weight.toDouble()
        if (!weightSum.isFinite() || weightSum <= 0.0) return null
        val median = weightedMedian(log2Errors, perceptualWeights, weightSum)
        val trimmedMean = weightedTrimmedMean(
            sortedValues = log2Errors,
            sortedWeights = perceptualWeights,
            weightSum = weightSum,
            lowFraction = TRIM_LOW_FRACTION,
            highFraction = TRIM_HIGH_FRACTION,
        )
        val matchError = median * MEDIAN_WEIGHT + trimmedMean * (1f - MEDIAN_WEIGHT)
        if (!matchError.isFinite()) return null
        return MatchResult(
            matchLog2Error = matchError,
            medianLog2Error = median,
            trimmedMeanLog2Error = trimmedMean,
            sampleCount = reference.sampleCount,
            perceptualWeightSum = weightSum.toFloat(),
        )
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
    ): Float {
        val targetWeight = weightSum * 0.5
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
