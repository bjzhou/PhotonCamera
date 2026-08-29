package com.hinnka.mycamera.raw

import android.content.Context
import java.io.InputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.abs
import kotlin.math.exp
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow
import kotlin.math.round
import kotlin.math.sqrt

internal enum class MgcLegacyAeMode {
    SHORT,
    LONG,
}

internal data class MgcLegacyAeQuery(
    val logSceneBrightness: Float,
    val imageLogMean: Float,
    val fractionPixelsClipped: Float,
    val category: Int,
    val histogramDescriptor: ShortArray,
)

internal data class MgcLegacyAeBranchResult(
    val targetT: Float,
    val idealTetMs: Float,
    val tAtCurrentTet: Float,
    val maxSimilarity: Float,
    val candidateCount: Int,
    val contributingCount: Int,
)

internal data class MgcLegacyAeResult(
    val shortQuery: MgcLegacyAeQuery,
    val longQuery: MgcLegacyAeQuery,
    val short: MgcLegacyAeBranchResult,
    val long: MgcLegacyAeBranchResult,
)

/**
 * MGC 9.7 V25's release AE table and the lookup path around RunAe.
 *
 * The binary layout, histogram packing, similarity metric, candidate weighting, T-value
 * aggregation, and log-domain TET search below follow libgcam_ae.so's AArch64 implementation.
 * Photon owns one selected base metering frame rather than MGC's two-component SplitHdrImage.
 * Supplying that frame as both components preserves the original mask-weighted sample sum while
 * allowing the two identical component values to be evaluated once per pixel.
 */
internal class MgcLegacySceneExposureTable private constructor(
    val version: Int,
    private val tables: Array<ModeTable>,
) {
    private data class TrainingRecord(
        val targetT: Float,
        val logSceneBrightness: Float,
        val imageLogMean: Float,
        val fractionPixelsClipped: Float,
        val category: Int,
        val histogramDescriptor: ShortArray,
    )

    private data class ModeTable(
        val records: Array<TrainingRecord>,
    )

    private data class WeightedSample(
        val value: Float,
        val weight: Float,
    )

    private data class TargetLookup(
        val targetT: Float,
        val maxSimilarity: Float,
        val candidateCount: Int,
        val contributingCount: Int,
    )

    private data class PreparedQuery(
        val query: MgcLegacyAeQuery,
        val spatialWeights: FloatArray,
    )

    fun solve(
        frame: RawSceneLinearFrame,
        fractionPixelsClipped: Float,
        hasFace: Boolean,
        currentTetMs: Float,
        sensorSensitivity: Float,
        deviceMinTetMs: Float,
        deviceMaxTetMs: Float,
    ): MgcLegacyAeResult? {
        val legacyInput = frame.legacyAeInput ?: RawSceneLegacyAeInput(
            cameraRgb = frame.rgb,
            rgbGains = UNITY_RGB_GAINS,
            rgbTransform = IDENTITY_RGB_TRANSFORM,
        )
        if (!validSolveInput(
                frame = frame,
                legacyInput = legacyInput,
                fractionPixelsClipped = fractionPixelsClipped,
                currentTetMs = currentTetMs,
                sensorSensitivity = sensorSensitivity,
                deviceMinTetMs = deviceMinTetMs,
                deviceMaxTetMs = deviceMaxTetMs,
            )
        ) {
            return null
        }
        val shortPrepared = buildQuery(
            rgb = legacyInput.cameraRgb,
            width = frame.width,
            height = frame.height,
            mode = MgcLegacyAeMode.SHORT,
            currentTetMs = currentTetMs,
            sensorSensitivity = sensorSensitivity,
            fractionPixelsClipped = fractionPixelsClipped,
            category = if (hasFace) 1 else 0,
        ) ?: return null
        val longPrepared = buildQuery(
            rgb = legacyInput.cameraRgb,
            width = frame.width,
            height = frame.height,
            mode = MgcLegacyAeMode.LONG,
            currentTetMs = currentTetMs,
            sensorSensitivity = sensorSensitivity,
            fractionPixelsClipped = fractionPixelsClipped,
            category = if (hasFace) 1 else 0,
        ) ?: return null
        val shortTarget = lookupTarget(MgcLegacyAeMode.SHORT, shortPrepared.query)
        val longTarget = lookupTarget(MgcLegacyAeMode.LONG, longPrepared.query)
        val evaluator = SingleFrameTValueEvaluator(
            rgb = legacyInput.cameraRgb,
            rgbGains = legacyInput.rgbGains,
            rgbTransform = legacyInput.rgbTransform,
            currentTetMs = currentTetMs,
            shortSpatialWeights = shortPrepared.spatialWeights,
            longSpatialWeights = longPrepared.spatialWeights,
            shortImageLogMean = shortPrepared.query.imageLogMean,
            longImageLogMean = longPrepared.query.imageLogMean,
            longShapeMetric = longShapeMetric(longPrepared.query.histogramDescriptor),
        )
        val shortTAtCurrentTet = evaluator.evaluate(MgcLegacyAeMode.SHORT, currentTetMs)
        val longTAtCurrentTet = evaluator.evaluate(MgcLegacyAeMode.LONG, currentTetMs)
        val shortTet = solveTet(
            desiredT = shortTarget.targetT,
            minTetMs = deviceMinTetMs,
            maxTetMs = deviceMaxTetMs,
            evaluate = { tet -> evaluator.evaluate(MgcLegacyAeMode.SHORT, tet) },
        ) ?: return null
        val longTet = solveTet(
            desiredT = longTarget.targetT,
            minTetMs = deviceMinTetMs,
            maxTetMs = deviceMaxTetMs,
            evaluate = { tet -> evaluator.evaluate(MgcLegacyAeMode.LONG, tet) },
        ) ?: return null
        return MgcLegacyAeResult(
            shortQuery = shortPrepared.query,
            longQuery = longPrepared.query,
            short = shortTarget.toBranch(shortTet, shortTAtCurrentTet),
            long = longTarget.toBranch(longTet, longTAtCurrentTet),
        )
    }

    private fun buildQuery(
        rgb: FloatArray,
        width: Int,
        height: Int,
        mode: MgcLegacyAeMode,
        currentTetMs: Float,
        sensorSensitivity: Float,
        fractionPixelsClipped: Float,
        category: Int,
    ): PreparedQuery? {
        if (width <= 0 || height <= 0 || rgb.size != width * height * 3) return null
        val pixelCount = rgb.size / 3
        val spatialWeights = buildDefaultSpatialWeights(mode, width, height)
        val meteringRgb = IntArray(rgb.size)
        val maxLog = FloatArray(pixelCount)
        val lumaLog = FloatArray(pixelCount)
        for (pixel in 0 until pixelCount) {
            val offset = pixel * 3
            val red = meteringCode(rgb[offset])
            val green = meteringCode(rgb[offset + 1])
            val blue = meteringCode(rgb[offset + 2])
            meteringRgb[offset] = red
            meteringRgb[offset + 1] = green
            meteringRgb[offset + 2] = blue
            val maxCode = max(red, max(green, blue))
            val lumaCode = (77 * red + 150 * green + 29 * blue) ushr 8
            maxLog[pixel] = mgcFastLog(maxCode + LOG_INPUT_OFFSET)
            lumaLog[pixel] = mgcFastLog(lumaCode + LOG_INPUT_OFFSET)
        }

        val blurredRgb = boxBlurRadiusOne(meteringRgb, width, height)
        val blurredMaxLog = FloatArray(pixelCount)
        for (pixel in 0 until pixelCount) {
            val offset = pixel * 3
            val maxCode = max(
                blurredRgb[offset],
                max(blurredRgb[offset + 1], blurredRgb[offset + 2]),
            )
            blurredMaxLog[pixel] = mgcFastLog(maxCode + LOG_INPUT_OFFSET)
        }

        val maxDistribution = compressHistogram(maxLog, spatialWeights) ?: return null
        val lumaDistribution = compressHistogram(lumaLog, spatialWeights) ?: return null
        val blurredMaxDistribution = compressHistogram(blurredMaxLog, spatialWeights) ?: return null
        var totalWeight = 0f
        var weightedMean = 0f
        for (sample in maxDistribution) {
            totalWeight += sample.weight
            weightedMean += sample.value * sample.weight
        }
        val imageLogMean = weightedMean / max(totalWeight, MIN_HISTOGRAM_WEIGHT)
        if (!imageLogMean.isFinite()) return null
        // RunAe does not reuse MeasureLogSceneBrightness's colorized-frame result here. The
        // table query derives this coordinate from the mode-specific, pre-WB max-RGB log mean.
        val predictedSignal =
            exp(imageLogMean.toDouble()).toFloat() * ONE_OVER_U15_MAX - QUERY_SIGNAL_OFFSET
        val normalizedExposure =
            (sensorSensitivity / SCENE_BRIGHTNESS_CALIBRATION) *
                (currentTetMs * MILLIS_TO_SECONDS)
        val queryLogSceneBrightness = ln(
            (predictedSignal / normalizedExposure + SCENE_BRIGHTNESS_LOG_FLOOR).toDouble(),
        ).toFloat()
        if (!queryLogSceneBrightness.isFinite()) return null
        val centeredMax = centerDistribution(maxDistribution, imageLogMean)
        val centeredLuma = centerDistribution(lumaDistribution, imageLogMean)
        val centeredBlurredMax = centerDistribution(blurredMaxDistribution, imageLogMean)
        val descriptor = ShortArray(HISTOGRAM_DESCRIPTOR_COUNT)
        writeQuantiles(centeredMax, QUANTILE_COUNTS[0], QUANTILE_OFFSETS[0], descriptor)
        writeQuantiles(centeredLuma, QUANTILE_COUNTS[1], QUANTILE_OFFSETS[1], descriptor)
        writeQuantiles(
            centeredBlurredMax,
            QUANTILE_COUNTS[2],
            QUANTILE_OFFSETS[2],
            descriptor,
        )
        return PreparedQuery(
            query = MgcLegacyAeQuery(
                logSceneBrightness = queryLogSceneBrightness,
                imageLogMean = imageLogMean,
                fractionPixelsClipped = fractionPixelsClipped.coerceIn(0f, 1f),
                category = category,
                histogramDescriptor = descriptor,
            ),
            spatialWeights = spatialWeights,
        )
    }

    private fun lookupTarget(mode: MgcLegacyAeMode, query: MgcLegacyAeQuery): TargetLookup {
        val records = tables[mode.ordinal].records
        if (records.isEmpty()) return TargetLookup(DEFAULT_TARGET_T, 0f, 0, 0)
        val window = if (mode == MgcLegacyAeMode.SHORT) {
            SHORT_SCENE_BRIGHTNESS_WINDOW
        } else {
            LONG_SCENE_BRIGHTNESS_WINDOW
        }
        val first = lowerBound(records, query.logSceneBrightness - window)
        val last = upperBound(records, query.logSceneBrightness + window)
        if (first >= last) return TargetLookup(DEFAULT_TARGET_T, 0f, 0, 0)

        val scores = FloatArray(last - first)
        var maxSimilarity = 0f
        for (index in first until last) {
            val score = similarity(mode, query, records[index])
            scores[index - first] = score
            if (score > maxSimilarity) maxSimilarity = score
        }
        if (!(maxSimilarity > 0f)) {
            return TargetLookup(DEFAULT_TARGET_T, 0f, last - first, 0)
        }

        val thresholdRatio = if (mode == MgcLegacyAeMode.SHORT) {
            SHORT_SIMILARITY_THRESHOLD
        } else {
            LONG_SIMILARITY_THRESHOLD
        }
        val scale = if (mode == MgcLegacyAeMode.SHORT) SHORT_AGGREGATION_SCALE
        else LONG_AGGREGATION_SCALE
        val offset = if (mode == MgcLegacyAeMode.SHORT) SHORT_AGGREGATION_OFFSET
        else LONG_AGGREGATION_OFFSET
        val minimumScore = maxSimilarity * thresholdRatio
        val inverseMaximum = 1f / (maxSimilarity + MAX_SIMILARITY_EPSILON)
        var weightSum = 0f
        var targetSum = 0f
        var contributingCount = 0
        for (candidate in scores.indices) {
            val score = scores[candidate]
            if (score < minimumScore) continue
            val baseWeight = max(offset + scale * inverseMaximum * score, 0f)
            val weight = baseWeight * baseWeight
            weightSum += weight
            targetSum += weight * records[first + candidate].targetT
            contributingCount++
        }
        val targetT = targetSum / max(weightSum, MIN_AGGREGATION_WEIGHT)
        return TargetLookup(
            targetT = targetT.takeIf(Float::isFinite) ?: DEFAULT_TARGET_T,
            maxSimilarity = maxSimilarity,
            candidateCount = last - first,
            contributingCount = contributingCount,
        )
    }

    private fun similarity(
        mode: MgcLegacyAeMode,
        query: MgcLegacyAeQuery,
        record: TrainingRecord,
    ): Float {
        val saturation = max(query.fractionPixelsClipped, record.fractionPixelsClipped)
            .coerceIn(0f, 1f)
        val activeHighlightIndex = max(
            positiveLlround((1f - saturation) * 13f),
            1,
        )
        val shift = if (mode == MgcLegacyAeMode.SHORT) {
            val alignmentIndex = min(
                positiveLlround((activeHighlightIndex + 1) * SHORT_ALIGNMENT_FRACTION),
                13,
            )
            -(query.histogramDescriptor[alignmentIndex].toInt() -
                record.histogramDescriptor[alignmentIndex].toInt())
        } else {
            0
        }
        val weights = if (mode == MgcLegacyAeMode.SHORT) SHORT_HISTOGRAM_WEIGHTS
        else LONG_HISTOGRAM_WEIGHTS
        var weightedDistance = 0L
        var activeWeightSum = 0L
        fun accumulate(start: Int, endInclusive: Int) {
            for (index in start..endInclusive) {
                val delta = query.histogramDescriptor[index].toInt() -
                    record.histogramDescriptor[index].toInt() + shift
                weightedDistance += weights[index].toLong() * abs(delta).toLong()
                activeWeightSum += weights[index].toLong()
            }
        }
        accumulate(0, activeHighlightIndex)
        accumulate(14, 14 + (4 * activeHighlightIndex / 7))
        accumulate(22, 22 + (3 * activeHighlightIndex / 7))
        val distance = weightedDistance.toFloat() / activeWeightSum.toFloat()
        var score = 1f / (distance * INVERSE_DESCRIPTOR_SCALE + INVERSE_SIMILARITY_BIAS)
        if (query.category != record.category) {
            score *= if (mode == MgcLegacyAeMode.SHORT) {
                SHORT_CATEGORY_MISMATCH_SCALE
            } else {
                LONG_CATEGORY_MISMATCH_SCALE
            }
        }
        return score
    }

    private class SingleFrameTValueEvaluator(
        private val rgb: FloatArray,
        private val rgbGains: FloatArray,
        private val rgbTransform: FloatArray,
        private val currentTetMs: Float,
        private val shortSpatialWeights: FloatArray,
        private val longSpatialWeights: FloatArray,
        private val shortImageLogMean: Float,
        private val longImageLogMean: Float,
        private val longShapeMetric: Float,
    ) {
        private val quantizedRgbTransform = IntArray(9) { index ->
            round(rgbTransform[index] * CCM_QUANTIZATION_SCALE)
                .toInt()
                .coerceIn(Short.MIN_VALUE.toInt(), Short.MAX_VALUE.toInt())
        }

        fun evaluate(mode: MgcLegacyAeMode, tetMs: Float): Float {
            val relativeTet = tetMs / currentTetMs
            var squaredSum = 0f
            var weightSum = 0f
            val pixelCount = rgb.size / 3
            val spatialWeights = if (mode == MgcLegacyAeMode.SHORT) {
                shortSpatialWeights
            } else {
                longSpatialWeights
            }
            for (pixel in 0 until pixelCount) {
                val offset = pixel * 3
                val exposed = exposeHqToPackedU8(offset, relativeTet)
                val red = exposed and 0xFF
                val green = (exposed ushr 8) and 0xFF
                val blue = (exposed ushr 16) and 0xFF
                val maxRgb = max(red, max(green, blue))
                val greenExcess = max(green - max(red, blue), 0)
                val blueExcess = max(blue - max(2 * red, green), 0)
                var tValue = maxRgb +
                    (-100 * blueExcess + 120 * greenExcess) * ONE_OVER_256
                tValue = tValue.coerceIn(0f, 255f)
                val weight = spatialWeights[pixel]
                weightSum += weight
                squaredSum += weight * tValue * tValue
            }
            var result = sqrt(squaredSum / max(weightSum, MIN_T_VALUE_WEIGHT))
            val imageLogMean = if (mode == MgcLegacyAeMode.SHORT) {
                shortImageLogMean
            } else {
                longImageLogMean
            }
            val meanCorrectionScale = if (mode == MgcLegacyAeMode.SHORT) {
                SHORT_NEGATIVE_LOG_MEAN_SCALE
            } else {
                LONG_NEGATIVE_LOG_MEAN_SCALE
            }
            result += min(imageLogMean, 0f) * -meanCorrectionScale
            if (mode == MgcLegacyAeMode.LONG) {
                val shape = (longShapeMetric * LONG_SHAPE_SCALE).coerceIn(0f, 1f)
                result += ((shape + shape) - 1f) * LONG_SHAPE_T_OFFSET
            }
            return result.coerceIn(0f, 255f)
        }

        /** Scalar transcription of libgcam_ae's generated ExposeHq Halide pipeline. */
        private fun exposeHqToPackedU8(offset: Int, relativeTet: Float): Int {
            val inputRed = exposeCameraChannel(rgb[offset], rgbGains[0], relativeTet)
            val inputGreen = exposeCameraChannel(rgb[offset + 1], rgbGains[1], relativeTet)
            val inputBlue = exposeCameraChannel(rgb[offset + 2], rgbGains[2], relativeTet)
            val transformedRed = applyCcmRow(0, inputRed, inputGreen, inputBlue)
            val transformedGreen = applyCcmRow(1, inputRed, inputGreen, inputBlue)
            val transformedBlue = applyCcmRow(2, inputRed, inputGreen, inputBlue)

            val transformedMinimum = min(
                transformedRed,
                min(transformedGreen, transformedBlue),
            )
            val transformedMaximum = max(
                transformedRed,
                max(transformedGreen, transformedBlue),
            )
            val brightnessIndex = (
                (transformedMinimum + 3 * transformedMaximum + 2) shr 2
                ).coerceIn(0, U12_MAX)
            val punchScale = max(
                PUNCH_CURVE_LUT[brightnessIndex].toFloat() / max(brightnessIndex, 1).toFloat(),
                1f,
            )
            val curvedRed = applyCurves(transformedRed, punchScale)
            val curvedGreen = applyCurves(transformedGreen, punchScale)
            val curvedBlue = applyCurves(transformedBlue, punchScale)
            val curvedMinimum = min(curvedRed, min(curvedGreen, curvedBlue)).toFloat()
            val curvedMaximum = max(curvedRed, max(curvedGreen, curvedBlue)).toFloat()
            val midpoint = 0.5f * (curvedMinimum + curvedMaximum)
            val shadowWeight = (U12_MAX - midpoint) * ONE_OVER_U12_MAX
            val saturation = HIGHLIGHT_SATURATION +
                (SHADOW_SATURATION - HIGHLIGHT_SATURATION) *
                shadowWeight * shadowWeight
            val minimumNormalized = curvedMinimum * ONE_OVER_U12_MAX
            val maximumNormalized = curvedMaximum * ONE_OVER_U12_MAX
            val originalBlend = SATURATION_ORIGINAL_BLEND *
                maximumNormalized * maximumNormalized *
                (1f - minimumNormalized * minimumNormalized)

            fun finish(channel: Int): Int {
                val saturated = midpoint + (channel.toFloat() - midpoint) * saturation
                val outputU12 = round(
                    originalBlend * channel.toFloat() +
                        (1f - originalBlend) * saturated,
                ).toInt()
                return ((outputU12 + U12_TO_U8_ROUNDING) shr U12_TO_U8_SHIFT)
                    .coerceIn(0, 255)
            }
            val red = finish(curvedRed)
            val green = finish(curvedGreen)
            val blue = finish(curvedBlue)
            return red or (green shl 8) or (blue shl 16)
        }

        private fun exposeCameraChannel(value: Float, gain: Float, relativeTet: Float): Int =
            round(
                meteringCode(value).toFloat() * gain * relativeTet * U12_PER_U15,
            ).toInt().coerceIn(0, U12_MAX)

        private fun applyCcmRow(row: Int, red: Int, green: Int, blue: Int): Int {
            val matrixOffset = row * 3
            val value = quantizedRgbTransform[matrixOffset] * red +
                quantizedRgbTransform[matrixOffset + 1] * green +
                quantizedRgbTransform[matrixOffset + 2] * blue
            return ((value + CCM_ROUNDING) shr CCM_QUANTIZATION_BITS).coerceIn(0, U12_MAX)
        }

        private fun applyCurves(value: Int, punchScale: Float): Int {
            val punched = round(value.toFloat() * punchScale).toInt().coerceIn(0, U12_MAX)
            return SATURATION_CURVE_LUT[punched]
        }
    }

    private fun solveTet(
        desiredT: Float,
        minTetMs: Float,
        maxTetMs: Float,
        evaluate: (Float) -> Float,
    ): Float? {
        val target = min(desiredT, MAX_TARGET_T)
        var lowTet = minTetMs
        var highTet = maxTetMs
        var lowT = evaluate(lowTet)
        var highT = evaluate(highTet)
        if (!lowT.isFinite() || !highT.isFinite()) return null
        if (target < lowT) return lowTet
        if (target > highT) return highTet

        var lowLogTet = ln(lowTet.toDouble()).toFloat()
        var highLogTet = ln(highTet.toDouble()).toFloat()
        var interpolation = (target - lowT) / (highT - lowT)
        repeat(TET_SEARCH_ITERATIONS) {
            val biasedInterpolation = interpolation * 0.9f + 0.05f
            val candidateLogTet = highLogTet * biasedInterpolation +
                lowLogTet * (1f - biasedInterpolation)
            val candidateTet = exp(candidateLogTet.toDouble()).toFloat()
            val candidateT = evaluate(candidateTet)
            if (!candidateT.isFinite()) return null
            if (abs(candidateT - target) < TET_SEARCH_TOLERANCE) return candidateTet
            if (candidateT > target) {
                highTet = candidateTet
                highLogTet = candidateLogTet
                highT = candidateT
            } else {
                lowTet = candidateTet
                lowLogTet = candidateLogTet
                lowT = candidateT
            }
            interpolation = (target - lowT) / (highT - lowT)
        }
        return exp(
            (interpolation * highLogTet + (1f - interpolation) * lowLogTet).toDouble(),
        ).toFloat()
    }

    private fun compressHistogram(
        values: FloatArray,
        sampleWeights: FloatArray,
    ): List<WeightedSample>? {
        if (values.isEmpty() || sampleWeights.size != values.size ||
            values.any { !it.isFinite() } ||
            sampleWeights.any { !it.isFinite() || it < 0f }
        ) {
            return null
        }
        var minimum = values[0]
        var maximum = values[0]
        for (index in 1 until values.size) {
            minimum = min(minimum, values[index])
            maximum = max(maximum, values[index])
        }
        val scale = if (maximum != minimum) HISTOGRAM_BIN_COUNT / (maximum - minimum) else 0f
        val weightedValue = FloatArray(HISTOGRAM_BIN_COUNT)
        val weight = FloatArray(HISTOGRAM_BIN_COUNT)
        for (index in values.indices) {
            val value = values[index]
            val sampleWeight = sampleWeights[index]
            val rawBin = (scale * (value - minimum)).toInt()
            val bin = rawBin.coerceIn(0, HISTOGRAM_BIN_COUNT - 1)
            weightedValue[bin] += value * sampleWeight
            weight[bin] += sampleWeight
        }
        val compacted = ArrayList<WeightedSample>(HISTOGRAM_BIN_COUNT)
        for (bin in 0 until HISTOGRAM_BIN_COUNT) {
            if (weight[bin] > 0f) {
                compacted += WeightedSample(
                    value = weightedValue[bin] / weight[bin],
                    weight = weight[bin],
                )
            }
        }
        return compacted
    }

    private fun buildDefaultSpatialWeights(
        mode: MgcLegacyAeMode,
        width: Int,
        height: Int,
    ): FloatArray {
        val outerRadius = if (mode == MgcLegacyAeMode.SHORT) {
            SHORT_OUTER_RADIUS
        } else {
            LONG_OUTER_RADIUS
        }
        val centerWeight = if (mode == MgcLegacyAeMode.SHORT) {
            SHORT_CENTER_WEIGHT
        } else {
            LONG_CENTER_WEIGHT
        }
        val halfWidth = width * 0.5f
        val halfHeight = height * 0.5f
        val centerX = halfWidth - 0.5f
        val centerY = halfHeight - 0.5f
        val inverseHalfWidth = 1f / halfWidth
        val inverseHalfHeight = 1f / halfHeight
        val cornerRadius = sqrt(
            centerX * centerX * inverseHalfWidth * inverseHalfWidth +
                centerY * centerY * inverseHalfHeight * inverseHalfHeight,
        )
        val inverseCornerRadius = 1f / cornerRadius
        val inverseTransition = 1f / (outerRadius - INNER_RADIUS)
        val weights = FloatArray(width * height)
        var maximum = 0f
        for (y in 0 until height) {
            val normalizedY = (y - centerY) * inverseHalfHeight
            for (x in 0 until width) {
                val normalizedX = (x - centerX) * inverseHalfWidth
                val radius = sqrt(
                    normalizedX * normalizedX + normalizedY * normalizedY,
                ) * inverseCornerRadius
                val weight = when {
                    radius < INNER_RADIUS -> centerWeight
                    radius <= outerRadius -> centerWeight +
                        (radius - INNER_RADIUS) * inverseTransition *
                        (OUTER_WEIGHT - centerWeight)
                    else -> OUTER_WEIGHT
                }
                weights[y * width + x] = weight
                if (weight > maximum) maximum = weight
            }
        }
        if (maximum > 0f) {
            val inverseMaximum = 1f / min(maximum, MAX_SPATIAL_WEIGHT)
            for (index in weights.indices) weights[index] *= inverseMaximum
        }
        return weights
    }

    private fun boxBlurRadiusOne(
        rgb: IntArray,
        width: Int,
        height: Int,
    ): IntArray {
        val horizontal = IntArray(rgb.size)
        for (y in 0 until height) {
            for (x in 0 until width) {
                val startX = max(x - 1, 0)
                val endX = min(x + 1, width - 1)
                val count = endX - startX + 1
                for (channel in 0..2) {
                    var sum = 0
                    for (sampleX in startX..endX) {
                        sum += rgb[(y * width + sampleX) * 3 + channel]
                    }
                    horizontal[(y * width + x) * 3 + channel] =
                        (sum + count / 2) / count
                }
            }
        }
        val output = IntArray(rgb.size)
        for (y in 0 until height) {
            val startY = max(y - 1, 0)
            val endY = min(y + 1, height - 1)
            val count = endY - startY + 1
            for (x in 0 until width) {
                for (channel in 0..2) {
                    var sum = 0
                    for (sampleY in startY..endY) {
                        sum += horizontal[(sampleY * width + x) * 3 + channel]
                    }
                    output[(y * width + x) * 3 + channel] =
                        (sum + count / 2) / count
                }
            }
        }
        return output
    }

    private fun centerDistribution(
        distribution: List<WeightedSample>,
        center: Float,
    ): List<WeightedSample> = distribution.map { sample ->
        WeightedSample(value = sample.value - center, weight = sample.weight)
    }

    private fun writeQuantiles(
        distribution: List<WeightedSample>,
        count: Int,
        outputOffset: Int,
        destination: ShortArray,
    ) {
        var totalWeight = 0f
        for (sample in distribution) totalWeight += sample.weight
        val primaryCount = floor(0.75f * count).toInt()
        val baseWeight = 1f / ((count - primaryCount) * 0.14f + primaryCount)
        val segmentFractions = FloatArray(count + 1)
        for (index in 0 until primaryCount) segmentFractions[index] = baseWeight
        for (index in primaryCount until count) segmentFractions[index] = baseWeight * 0.14f

        var outputIndex = 0
        var targetWeight = totalWeight * segmentFractions[0]
        var inverseTargetWeight = 1f / targetWeight
        var accumulatedWeightedValue = 0f
        for (sample in distribution) {
            var sampleWeight = sample.weight
            if (outputIndex < count && sampleWeight > targetWeight) {
                while (true) {
                    accumulatedWeightedValue += sample.value * targetWeight
                    destination[outputOffset + outputIndex] = (
                        accumulatedWeightedValue * inverseTargetWeight * DESCRIPTOR_SCALE
                        ).toInt().toShort()
                    if (outputIndex == count - 1) {
                        outputIndex = count
                        break
                    }
                    outputIndex++
                    sampleWeight -= targetWeight
                    targetWeight = totalWeight * segmentFractions[outputIndex]
                    inverseTargetWeight = 1f / targetWeight
                    accumulatedWeightedValue = 0f
                    if (!(sampleWeight > targetWeight)) break
                }
            }
            if (outputIndex == count) break
            targetWeight -= sampleWeight
            accumulatedWeightedValue += sample.value * sampleWeight
        }
        if (outputIndex < count) {
            destination[outputOffset + outputIndex] = (
                accumulatedWeightedValue * inverseTargetWeight * DESCRIPTOR_SCALE
                ).toInt().toShort()
        }
    }

    private fun lowerBound(records: Array<TrainingRecord>, value: Float): Int {
        var first = 0
        var count = records.size
        while (count > 0) {
            val step = count ushr 1
            val candidate = first + step
            if (records[candidate].logSceneBrightness < value) {
                first = candidate + 1
                count -= step + 1
            } else {
                count = step
            }
        }
        return first
    }

    private fun upperBound(records: Array<TrainingRecord>, value: Float): Int {
        var first = 0
        var count = records.size
        while (count > 0) {
            val step = count ushr 1
            val candidate = first + step
            if (value >= records[candidate].logSceneBrightness) {
                first = candidate + 1
                count -= step + 1
            } else {
                count = step
            }
        }
        return first
    }

    private fun longShapeMetric(histogram: ShortArray): Float {
        val max0 = histogram[0].toFloat()
        val max1 = histogram[1].toFloat()
        val max2 = histogram[2].toFloat()
        val max3 = histogram[3].toFloat()
        val max5 = histogram[5].toFloat()
        val max6 = histogram[6].toFloat()
        val max7 = histogram[7].toFloat()
        val max8 = histogram[8].toFloat()
        val max10 = histogram[10].toFloat()
        val max11 = histogram[11].toFloat()
        val max13 = histogram[13].toFloat()
        val merged0 = histogram[22].toFloat()
        val merged1 = histogram[23].toFloat()
        val merged2 = histogram[24].toFloat()
        val merged3 = histogram[25].toFloat()
        val merged4 = histogram[26].toFloat()
        val merged5 = histogram[27].toFloat()
        val difference =
            abs(merged0 - (max0 + 0f * max1)) +
                abs(merged1 - (0.4f * max2 + 0.6f * max3)) +
                abs(merged2 - (0.8f * max5 + 0.2f * max6)) +
                abs(merged3 - (0.2f * max7 + 0.8f * max8)) +
                abs(merged4 - (0.6f * max10 + 0.4f * max11)) +
                abs(merged5 - max13)
        return difference * ONE_OVER_SIX * ONE_OVER_U15
    }

    private fun validSolveInput(
        frame: RawSceneLinearFrame,
        legacyInput: RawSceneLegacyAeInput,
        fractionPixelsClipped: Float,
        currentTetMs: Float,
        sensorSensitivity: Float,
        deviceMinTetMs: Float,
        deviceMaxTetMs: Float,
    ): Boolean {
        val expectedRgbSize = frame.width * frame.height * 3
        return frame.width > 0 && frame.height > 0 &&
            legacyInput.cameraRgb.size == expectedRgbSize &&
            legacyInput.cameraRgb.all { it.isFinite() && it >= 0f } &&
            legacyInput.rgbGains.size >= 3 &&
            legacyInput.rgbGains.take(3).all { it.isFinite() && it > 0f } &&
            legacyInput.rgbTransform.size == 9 && legacyInput.rgbTransform.all(Float::isFinite) &&
            sensorSensitivity.isFinite() && sensorSensitivity > 0f &&
            fractionPixelsClipped.isFinite() &&
            fractionPixelsClipped in 0f..1f && currentTetMs.isFinite() && currentTetMs > 0f &&
            deviceMinTetMs.isFinite() && deviceMinTetMs > 0f &&
            deviceMaxTetMs.isFinite() && deviceMaxTetMs >= deviceMinTetMs
    }

    private fun TargetLookup.toBranch(
        tetMs: Float,
        tAtCurrentTet: Float,
    ): MgcLegacyAeBranchResult =
        MgcLegacyAeBranchResult(
            targetT = targetT,
            idealTetMs = tetMs,
            tAtCurrentTet = tAtCurrentTet,
            maxSimilarity = maxSimilarity,
            candidateCount = candidateCount,
            contributingCount = contributingCount,
        )

    companion object {
        const val ASSET_PATH = "mgc_ae/start_release.dat"
        const val EXPECTED_VERSION = 0xF957B82B.toInt()

        private const val MAGIC = 0x4D414347
        private const val FOOTER = 0x454E4F44
        private const val MODE_COUNT = 2
        private const val RECORD_SIZE = 76
        private const val DEBUG_TAG_SIZE = 140
        private const val MAX_RECORD_COUNT = 0x8000
        private const val HISTOGRAM_DESCRIPTOR_COUNT = 28
        private const val HISTOGRAM_BIN_COUNT = 256
        private const val LOG_INPUT_OFFSET = 10f
        private const val QUERY_SIGNAL_OFFSET = 0.00030519f
        private const val ONE_OVER_U15_MAX = 1f / 32767f
        private const val SCENE_BRIGHTNESS_CALIBRATION = 14.6f
        private const val MILLIS_TO_SECONDS = 0.001f
        private const val SCENE_BRIGHTNESS_LOG_FLOOR = 0.0001f
        private const val MIN_HISTOGRAM_WEIGHT = 0.1f
        private const val DESCRIPTOR_SCALE = 1024f
        private const val INVERSE_DESCRIPTOR_SCALE = 1f / DESCRIPTOR_SCALE
        private const val INVERSE_SIMILARITY_BIAS = 1f / 40f
        private const val SHORT_SCENE_BRIGHTNESS_WINDOW = 2.5f
        private const val LONG_SCENE_BRIGHTNESS_WINDOW = 2f
        private const val SHORT_ALIGNMENT_FRACTION = 0.95f
        private const val SHORT_CATEGORY_MISMATCH_SCALE = 0.7f
        private const val LONG_CATEGORY_MISMATCH_SCALE = 0.85f
        private const val SHORT_SIMILARITY_THRESHOLD = 0.38f
        private const val LONG_SIMILARITY_THRESHOLD = 0.46f
        private const val SHORT_AGGREGATION_SCALE = 1.6129f
        private const val SHORT_AGGREGATION_OFFSET = -0.6129f
        private const val LONG_AGGREGATION_SCALE = 1.8519f
        private const val LONG_AGGREGATION_OFFSET = -0.85185f
        private const val MAX_SIMILARITY_EPSILON = 0.001f
        private const val MIN_AGGREGATION_WEIGHT = 0.001f
        private const val DEFAULT_TARGET_T = 128f
        private const val MAX_TARGET_T = 254.99f
        private const val TET_SEARCH_ITERATIONS = 32
        private const val TET_SEARCH_TOLERANCE = 0.5f
        private const val U12_MAX = 4095
        private const val U12_PER_U15 = U12_MAX.toFloat() / 32767f
        private const val ONE_OVER_U12_MAX = 1f / U12_MAX.toFloat()
        private const val CCM_QUANTIZATION_BITS = 12
        private const val CCM_QUANTIZATION_SCALE = 4096f
        private const val CCM_ROUNDING = 1 shl (CCM_QUANTIZATION_BITS - 1)
        private const val U12_TO_U8_SHIFT = 4
        private const val U12_TO_U8_ROUNDING = 1 shl (U12_TO_U8_SHIFT - 1)
        private const val HIGHLIGHT_SATURATION = 1f
        private const val SHADOW_SATURATION = 1f
        private const val SATURATION_ORIGINAL_BLEND = 0.64f
        private const val CURVE_GAMMA = 0.454545438
        private const val INVERSE_CURVE_SIZE = 128
        private const val INVERSE_CURVE_SEARCH_ITERATIONS = 16
        private const val ONE_OVER_256 = 1f / 256f
        private const val ONE_OVER_SIX = 1f / 6f
        private const val ONE_OVER_U15 = 1f / 32768f
        private const val MIN_T_VALUE_WEIGHT = 1f
        private const val SHORT_NEGATIVE_LOG_MEAN_SCALE = 4f
        private const val LONG_NEGATIVE_LOG_MEAN_SCALE = 9f
        private const val LONG_SHAPE_SCALE = 90.909f
        private const val LONG_SHAPE_T_OFFSET = 8.5f
        private const val INNER_RADIUS = 0.1f
        private const val SHORT_OUTER_RADIUS = 0.8f
        private const val LONG_OUTER_RADIUS = 0.55f
        private const val SHORT_CENTER_WEIGHT = 0.8f
        private const val LONG_CENTER_WEIGHT = 0.75f
        private const val OUTER_WEIGHT = 0.288f
        private const val MAX_SPATIAL_WEIGHT = 250f

        private val QUANTILE_COUNTS = intArrayOf(14, 8, 6)
        private val QUANTILE_OFFSETS = intArrayOf(0, 14, 22)
        private val UNITY_RGB_GAINS = floatArrayOf(1f, 1f, 1f)
        private val IDENTITY_RGB_TRANSFORM = floatArrayOf(
            1f, 0f, 0f,
            0f, 1f, 0f,
            0f, 0f, 1f,
        )
        private val SHORT_HISTOGRAM_WEIGHTS = intArrayOf(
            21, 102, 286, 614, 1128, 1871, 2884, 4209, 5888, 7964, 10477, 13470,
            16986, 21065, 20, 238, 906, 2280, 4612, 8156, 13165, 19895, 25, 539,
            2392, 6442, 13550, 24576,
        )
        private val LONG_HISTOGRAM_WEIGHTS = intArrayOf(
            21065, 20660, 20255, 19850, 19444, 19039, 18634, 18229, 17824, 17419,
            17014, 16609, 16204, 15799, 19895, 19184, 18474, 17763, 17052, 16342,
            15631, 14921, 24576, 23347, 22118, 20889, 19660, 18432,
        )
        private val PUNCH_CURVE_POINTS = doubleArrayOf(
            0.0, 0.013, 0.055, 0.114, 0.184, 0.263, 0.348, 0.434, 0.519,
            0.601, 0.678, 0.751, 0.816, 0.875, 0.926, 0.969, 1.0,
        )
        private val SATURATION_CURVE_POINTS = doubleArrayOf(
            0.0, 0.00406, 0.01887, 0.04487, 0.0751, 0.107, 0.1397, 0.17316,
            0.20775, 0.24356, 0.28068, 0.31901, 0.35798, 0.39649, 0.434,
            0.4699, 0.505, 0.5397, 0.574, 0.60795, 0.6415, 0.6745, 0.707,
            0.739, 0.7705, 0.8015, 0.832, 0.8619, 0.891, 0.9188, 0.946,
            0.97309, 1.0,
        )
        private val INVERSE_SATURATION_CURVE: DoubleArray by lazy {
            buildInverseCurve(INVERSE_CURVE_SIZE, ::evaluateSaturationCurve)
        }
        private val PUNCH_CURVE_LUT: IntArray by lazy {
            IntArray(U12_MAX + 1) { code ->
                val normalized = code.toDouble() / U12_MAX.toDouble()
                val gammaValue = normalized.pow(CURVE_GAMMA)
                val punchValue = cubicInterpolate(PUNCH_CURVE_POINTS, gammaValue)
                quantizeU12(cubicInterpolate(INVERSE_SATURATION_CURVE, punchValue))
            }
        }
        private val SATURATION_CURVE_LUT: IntArray by lazy {
            IntArray(U12_MAX + 1) { code ->
                quantizeU12(evaluateSaturationCurve(code.toDouble() / U12_MAX.toDouble()))
            }
        }

        private fun evaluateSaturationCurve(value: Double): Double =
            cubicInterpolate(SATURATION_CURVE_POINTS, value.pow(CURVE_GAMMA))

        private fun buildInverseCurve(
            size: Int,
            function: (Double) -> Double,
        ): DoubleArray {
            val result = DoubleArray(size)
            result[size - 1] = 1.0
            for (index in 1 until size - 1) {
                val target = index.toDouble() / (size - 1).toDouble()
                var low = 0.0
                var high = 1.0
                repeat(INVERSE_CURVE_SEARCH_ITERATIONS) {
                    val midpoint = 0.5 * (low + high)
                    if (function(midpoint) <= target) low = midpoint else high = midpoint
                }
                result[index] = 0.5 * (low + high)
            }
            return result
        }

        private fun cubicInterpolate(points: DoubleArray, value: Double): Double {
            if (points.isEmpty()) return 0.0
            if (points.size == 1) return points[0]
            if (points.size == 2) return (1.0 - value) * points[0] + value * points[1]
            val scaled = (points.size - 1).toDouble() * value
            val index = min(scaled.toInt(), points.size - 2)
            val fraction = scaled - index.toDouble()
            val y = points[index]
            val next = points[index + 1]
            val slope: Double
            val quadratic: Double
            val cubic: Double
            if (index > 0) {
                slope = 0.5 * (next - points[index - 1])
                if (index >= points.size - 2) {
                    cubic = 0.5 * (y + slope - next)
                    quadratic = -3.0 * cubic
                } else {
                    cubic = 2.0 * y + slope + 0.5 * (points[index + 2] - y) - 2.0 * next
                    quadratic = next - slope - y - cubic
                }
            } else {
                val initialSlope = 0.5 * (points[2] - points[0])
                cubic = 0.5 * (points[0] + initialSlope - points[1])
                slope = initialSlope - 3.0 * cubic
                quadratic = 0.0
            }
            return y + fraction * (slope + fraction * (quadratic + fraction * cubic))
        }

        private fun quantizeU12(value: Double): Int =
            (value * U12_MAX.toDouble() + 0.5).coerceIn(0.0, U12_MAX.toDouble()).toInt()

        fun load(context: Context): MgcLegacySceneExposureTable =
            context.assets.open(ASSET_PATH).use(::parse)

        internal fun parse(input: InputStream): MgcLegacySceneExposureTable {
            val buffer = ByteBuffer.wrap(input.readBytes()).order(ByteOrder.LITTLE_ENDIAN)
            fun requireBytes(count: Int) {
                require(count >= 0 && buffer.remaining() >= count) {
                    "Truncated MGC AE table at byte ${buffer.position()}"
                }
            }
            requireBytes(12)
            require(buffer.int == MAGIC) { "Invalid MGC AE table magic" }
            val version = buffer.int
            val modeCount = buffer.int
            require(modeCount == MODE_COUNT) { "Unexpected MGC AE mode count: $modeCount" }
            val tables = Array(MODE_COUNT) {
                requireBytes(8)
                val recordCount = buffer.int
                val containsDebugTags = buffer.int != 0
                require(recordCount in 0..MAX_RECORD_COUNT) {
                    "Invalid MGC AE record count: $recordCount"
                }
                requireBytes(recordCount * RECORD_SIZE)
                val records = Array(recordCount) {
                    val targetT = buffer.float
                    val logSceneBrightness = buffer.float
                    val imageLogMean = buffer.float
                    val fractionPixelsClipped = buffer.float
                    val category = buffer.int
                    val histogram = ShortArray(HISTOGRAM_DESCRIPTOR_COUNT) { buffer.short }
                    require(targetT.isFinite() && logSceneBrightness.isFinite() &&
                        imageLogMean.isFinite() && fractionPixelsClipped.isFinite()
                    ) { "Non-finite MGC AE training record" }
                    TrainingRecord(
                        targetT = targetT,
                        logSceneBrightness = logSceneBrightness,
                        imageLogMean = imageLogMean,
                        fractionPixelsClipped = fractionPixelsClipped,
                        category = category,
                        histogramDescriptor = histogram,
                    )
                }
                for (index in 1 until records.size) {
                    require(
                        records[index - 1].logSceneBrightness <=
                            records[index].logSceneBrightness,
                    ) { "MGC AE training records are not brightness-sorted" }
                }
                if (containsDebugTags) {
                    val debugBytes = Math.multiplyExact(recordCount, DEBUG_TAG_SIZE)
                    requireBytes(debugBytes)
                    buffer.position(buffer.position() + debugBytes)
                }
                ModeTable(records)
            }
            requireBytes(Int.SIZE_BYTES)
            require(buffer.int == FOOTER) { "Invalid MGC AE table footer" }
            require(!buffer.hasRemaining()) { "Trailing bytes in MGC AE table" }
            return MgcLegacySceneExposureTable(version = version, tables = tables)
        }

        private fun meteringCode(value: Float): Int =
            round(value * 32768f).toInt().coerceIn(0, 32767)

        private fun mgcFastLog(input: Float): Float {
            val bits = input.toRawBits()
            val mantissa = Float.fromBits((bits and 0x807FFFFF.toInt()) or 0x3F800000)
            val exponent = ((bits ushr 23) and 0xFF) - 128
            return (((((mantissa * -0.083295f + 0.66381f) * mantissa - 2.1817f) *
                mantissa + 4.1478f) * mantissa - 1.5467f) + exponent.toFloat()) * 0.69315f
        }

        private fun positiveLlround(value: Float): Int = floor(value + 0.5f).toInt()
    }
}
