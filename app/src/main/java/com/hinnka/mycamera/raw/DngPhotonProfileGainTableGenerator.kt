package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow

internal object DngPhotonProfileGainTableGenerator {
    private const val TAG = "DngPhotonProfileGainTableGenerator"

    private const val DEFAULT_TABLE_POINTS = 257
    private const val MIN_TABLE_POINTS = 257
    private const val MAX_TABLE_POINTS = 257
    private const val MIN_BASELINE_EV = 0f
    private const val MAX_BASELINE_EV = 8f
    private const val MIN_CURVE_INPUT = 1e-6f
    private const val BASE_WHITE_POINT = 1f
    private const val MAX_WHITE_POINT_ADJUSTMENT = 1.30f
    private const val MAX_GAIN_VALUE = 32f
    private const val MAP_INPUT_WEIGHT_COUNT = 5
    // A square-root table domain resolves more than 9.5 EV below white with
    // 257 points; a linear table would place its first sample only 8 EV down.
    private const val TABLE_INPUT_GAMMA = 0.5f
    private const val MAX_SCENE_MIDDLE_GRAY = 0.18f
    internal const val SHADOW_FOOT_HEADROOM_EV = 1.2f
    private const val MIN_SOURCE_COMPRESSION_EV = 0.75f
    private const val MAX_SOURCE_DYNAMIC_RANGE_EV = 12.5f
    private const val STANDARD_DYNAMIC_RANGE_EV = 8f
    private const val WIDE_DYNAMIC_RANGE_EV = 8.5f
    private const val HDR_DYNAMIC_RANGE_EV = 9f
    private const val EXTENDED_HDR_DYNAMIC_RANGE_EV = 9.5f
    private const val WIDE_HIGHLIGHT_RANGE_THRESHOLD_EV = 2.5f
    private const val HDR_HIGHLIGHT_RANGE_THRESHOLD_EV = 3.5f
    private const val EXTENDED_HDR_HIGHLIGHT_RANGE_THRESHOLD_EV = 4f
    private const val MIN_DYNAMIC_RANGE_EV = STANDARD_DYNAMIC_RANGE_EV
    private const val MAX_DYNAMIC_RANGE_EV = EXTENDED_HDR_DYNAMIC_RANGE_EV
    private const val STANDARD_DISPLAY_MIDDLE_GRAY = 0.26f
    private const val WIDE_DISPLAY_MIDDLE_GRAY = 0.28f
    private const val HDR_DISPLAY_MIDDLE_GRAY = 0.30f
    private const val EXTENDED_HDR_DISPLAY_MIDDLE_GRAY = 0.32f
    private const val MIN_DISPLAY_EXPOSURE_LIFT_EV = 0.27f
    private const val MAX_DISPLAY_EXPOSURE_LIFT_EV = 2.24f
    private const val DISPLAY_EXPOSURE_TRANSITION_START_EV = 1.7f
    private const val DISPLAY_EXPOSURE_TRANSITION_END_EV = 3.45f
    private const val SPARSE_HIGHLIGHT_GAP_START_EV = 0.45f
    private const val SPARSE_HIGHLIGHT_GAP_FULL_EV = 0.90f
    private const val MIN_HIGHLIGHT_ENDPOINT_SLOPE_RATIO = 0.65f
    private const val MAX_HIGHLIGHT_ENDPOINT_SLOPE_RATIO = 0.88f
    private const val MAX_LOCAL_MICRO_CONTRAST_EV = 0.22f

    private val BASE_INPUT_WEIGHTS = floatArrayOf(
        DngHdrProfileGainTableGenerator.BASE_INPUT_WEIGHT_RED,
        DngHdrProfileGainTableGenerator.BASE_INPUT_WEIGHT_GREEN,
        DngHdrProfileGainTableGenerator.BASE_INPUT_WEIGHT_BLUE,
        DngHdrProfileGainTableGenerator.BASE_INPUT_WEIGHT_MIN,
        DngHdrProfileGainTableGenerator.BASE_INPUT_WEIGHT_MAX
    )

    fun forCellStats(
        width: Int,
        height: Int,
        baselineExposureEv: Float,
        packedCellStats: FloatArray,
        globalStats: DngPgtmGlobalStats,
        tablePointCount: Int = DEFAULT_TABLE_POINTS,
        diagnosticBand: DngHdrProfileGainTableGenerator.DiagnosticBand? = null,
        emitDiagnostics: Boolean = true,
        statsSource: String = "global-samples",
    ): DngProfileGainTableMap? {
        if (width <= 0 || height <= 0 || !baselineExposureEv.isFinite() || baselineExposureEv < MIN_BASELINE_EV) {
            return null
        }
        val gridSize = DngHdrProfileGainTableGenerator.gridSizeFor(width, height)
        val gridWidth = gridSize.getOrElse(0) { 0 }
        val gridHeight = gridSize.getOrElse(1) { 0 }
        if (gridWidth <= 0 || gridHeight <= 0) return null
        val cellCount = gridWidth * gridHeight
        if (packedCellStats.size < cellCount * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE) {
            PLog.w(
                TAG,
                "Photon PGTM stats too small: ${packedCellStats.size}, " +
                    "expected=${cellCount * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE}"
            )
            return null
        }

        val cells = Array<PhotonPgtmCellStats?>(cellCount) { index ->
            val offset = index * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE
            val sampleWeight = packedCellStats[offset + 5].takeIf { it.isFinite() && it > 0f } ?: 0f
            if (sampleWeight <= 0f) {
                null
            } else {
                packedStatsAt(packedCellStats, offset, sampleWeight)
            }
        }
        val global = globalStats.toPhotonCellStats() ?: return null
        val safeBaselineEv = baselineExposureEv.coerceIn(0f, MAX_BASELINE_EV)
        val safePointCount = tablePointCount.coerceIn(MIN_TABLE_POINTS, MAX_TABLE_POINTS)
        val toneAnchors = buildPhotonToneAnchors(
            global = global,
            exposureAnchor = globalStats.logAverage,
            shadowFoot = globalStats.shadowFoot,
            baselineExposureEv = safeBaselineEv
        )
        val inputScale = sanitizeInputScale(1f / toneAnchors.whitePoint)
        val curveSamples = buildPhotonCurveSamples(
            pointCount = safePointCount,
            inputScale = inputScale,
            toneAnchors = toneAnchors
        )
        val gains = FloatArray(cellCount * safePointCount)
        for (cellIndex in 0 until cellCount) {
            writePhotonCurve(
                output = gains,
                outputOffset = cellIndex * safePointCount,
                curveSamples = curveSamples,
                toneAnchors = toneAnchors,
                global = global,
                local = cells[cellIndex] ?: global
            )
        }

        val map = DngProfileGainTableMap(
            mapPointsV = gridHeight,
            mapPointsH = gridWidth,
            mapSpacingV = if (gridHeight > 1) 1.0 / (gridHeight - 1).toDouble() else 1.0,
            mapSpacingH = if (gridWidth > 1) 1.0 / (gridWidth - 1).toDouble() else 1.0,
            mapOriginV = 0.0,
            mapOriginH = 0.0,
            mapPointsN = safePointCount,
            mapInputWeights = photonPgtmInputWeights(inputScale),
            gamma = TABLE_INPUT_GAMMA,
            gains = gains,
            sourceTag = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2
        )
        if (emitDiagnostics) {
            val p50Input = max(global.p50, MIN_CURVE_INPUT)
            val requestedP50Output = photonToneOutput(
                sceneLinear = p50Input,
                toneAnchors = toneAnchors,
                global = global,
                local = global
            )
            val requestedP50Gain = requestedP50Output / p50Input
            val appliedP50Gain = requestedP50Gain.coerceIn(0.05f, MAX_GAIN_VALUE)
            val appliedP50Output = p50Input * appliedP50Gain
            val finalDisplayP50 = photonProfileOutputForInput(appliedP50Output)
            val anchorMiddleGain = toneAnchors.middleGrayOutput / toneAnchors.middleGrayPoint
            val exposureLiftEv = displayExposureLiftEv(toneAnchors.exposureHighlightRangeEv)
            val domainOverflowEv = log2(
                max(global.p999, toneAnchors.whitePoint) / toneAnchors.whitePoint
            ).coerceAtLeast(0f)
            val observedShadowRangeEv = log2(
                max(globalStats.logAverage, globalStats.shadowFoot) /
                    max(globalStats.shadowFoot, MIN_CURVE_INPUT)
            )
            PLog.d(
                TAG,
                "Built Photon PGTM: grid=${gridWidth}x${gridHeight}x$safePointCount " +
                    "statsSource=$statsSource globalSampleCount=${globalStats.sampleCount} " +
                    "baselineEv=$safeBaselineEv " +
                    "tailRangeEv=${toneAnchors.tailHighlightRangeEv} " +
                    "exposureRangeEv=${toneAnchors.exposureHighlightRangeEv} " +
                    "curveRangeEv=${toneAnchors.curveDynamicRangeEv} " +
                    "targetRangeEv=${toneAnchors.targetDynamicRangeEv} " +
                    "shadowRangeEv=$observedShadowRangeEv " +
                    "relativeEv=${toneAnchors.blackRelativeExposure}.." +
                    "${toneAnchors.whiteRelativeExposure} " +
                    "source=${toneAnchors.blackPoint},${toneAnchors.middleGrayPoint}," +
                    "${toneAnchors.whitePoint} pgtm=${toneAnchors.blackOutput}," +
                    "${toneAnchors.middleGrayOutput},1.0 display=${toneAnchors.displayBlackPoint}," +
                    "${toneAnchors.displayMiddleGray},1.0 " +
                    "tierDisplayMiddle=${toneAnchors.tierDisplayMiddleGray} " +
                    "rawRight=${toneAnchors.rawWhitePoint} inputScale=$inputScale " +
                    "domainOverflowEv=$domainOverflowEv " +
                    "p10=${global.p10} p50=${global.p50} p90=${global.p90} " +
                    "p98=${global.p98} p995=${global.p995} p999=${global.p999} " +
                    "maxInput=${global.maxInput} " +
                    "linearMean=${globalStats.linearMean} logAverage=${globalStats.logAverage} " +
                    "shadowEdge=${globalStats.shadowEdge} shadowFoot=${globalStats.shadowFoot} " +
                    "exposureHighlight=${toneAnchors.exposureHighlightReference} " +
                    "highlightGapEv=${toneAnchors.highlightGapEv} " +
                    "sparseHighlightStrength=${toneAnchors.sparseHighlightStrength} " +
                    "highlightFraction=${global.highlightFraction}"
            )
            PLog.d(
                TAG,
                "Photon PGTM exposure: p50Input=${global.p50} " +
                    "logAverageInput=${globalStats.logAverage} " +
                    "sourceMiddle=${toneAnchors.middleGrayPoint} " +
                    "anchorMiddleGain=$anchorMiddleGain requestedP50Gain=$requestedP50Gain " +
                    "appliedP50Gain=$appliedP50Gain pgtmP50=$appliedP50Output " +
                    "displayP50=$finalDisplayP50 targetDisplayMiddle=${toneAnchors.displayMiddleGray} " +
                    "tierDisplayMiddle=${toneAnchors.tierDisplayMiddleGray} " +
                    "tailRangeEv=${toneAnchors.tailHighlightRangeEv} " +
                    "exposureRangeEv=${toneAnchors.exposureHighlightRangeEv} " +
                    "exposureLiftEv=$exposureLiftEv " +
                    "whiteAdjustment=${toneAnchors.rawWhitePoint / BASE_WHITE_POINT} " +
                    "maxGain=$MAX_GAIN_VALUE"
            )
        }
        return DngHdrProfileGainTableGenerator.withDiagnosticBand(map, diagnosticBand)
    }

    private fun packedStatsAt(stats: FloatArray, offset: Int, sampleWeight: Float): PhotonPgtmCellStats {
        val p10 = safePositive(stats[offset], 0f)
        val p50 = max(p10, safePositive(stats[offset + 1], p10))
        val p90 = max(p50, safePositive(stats[offset + 2], p50))
        val p98 = max(p90, safePositive(stats[offset + 3], p90))
        val p995 = max(p98, safePositive(stats[offset + 6], p98))
        val p999 = max(p995, safePositive(stats[offset + 7], p995))
        return PhotonPgtmCellStats(
            p10 = p10,
            p50 = p50,
            p90 = p90,
            p98 = p98,
            highlightFraction = safe01(stats[offset + 4]),
            p995 = p995,
            p999 = p999,
            maxInput = p999,
            sampleWeight = sampleWeight
        )
    }

    private fun DngPgtmGlobalStats.toPhotonCellStats(): PhotonPgtmCellStats? {
        if (sampleCount <= 0) return null
        val safeP10 = safePositive(p10, 0f)
        val safeP50 = max(safeP10, safePositive(p50, safeP10))
        val safeP90 = max(safeP50, safePositive(p90, safeP50))
        val safeP98 = max(safeP90, safePositive(p98, safeP90))
        val safeP995 = max(safeP98, safePositive(p995, safeP98))
        val safeP999 = max(safeP995, safePositive(p999, safeP995))
        return PhotonPgtmCellStats(
            p10 = safeP10,
            p50 = safeP50,
            p90 = safeP90,
            p98 = safeP98,
            highlightFraction = safe01(highlightFraction),
            p995 = safeP995,
            p999 = safeP999,
            maxInput = max(safeP999, safePositive(maxInput, safeP999)),
            sampleWeight = sampleCount.toFloat()
        )
    }

    private fun buildPhotonToneAnchors(
        global: PhotonPgtmCellStats,
        exposureAnchor: Float,
        shadowFoot: Float,
        baselineExposureEv: Float,
    ): PhotonToneAnchors {
        val highlightRanges = photonHighlightRanges(
            p90 = global.p90,
            p98 = global.p98,
            p995 = global.p995,
            p999 = global.p999,
            sceneMiddle = exposureAnchor
        )
        val targetDynamicRangeEv = photonDynamicRangeTier(highlightRanges.tailRangeEv)
        val displayBlackPoint = 1f / 2.0f.pow(targetDynamicRangeEv)
        val tierDisplayMiddleGray = displayMiddleGrayForTier(targetDynamicRangeEv)
        val displayMiddleGray = displayMiddleGrayForHighlightRange(
            exposureAnchor = exposureAnchor,
            highlightRangeEv = highlightRanges.exposureRangeEv,
            displayBlackPoint = displayBlackPoint,
            tierDisplayMiddleGray = tierDisplayMiddleGray
        )
        val blackOutput = photonProfileInputForDisplay(displayBlackPoint)
        val middleGrayOutput = photonProfileInputForDisplay(displayMiddleGray)
        val whitePointAdjustment = photonWhitePointAdjustment(global, targetDynamicRangeEv)
        val baselineGain = 2.0f.pow(baselineExposureEv.coerceIn(MIN_BASELINE_EV, MAX_BASELINE_EV))

        // ProfileGainTableMap lookup is evaluated after BaselineExposure even
        // when the gain itself is applied before it. Cover the raw-linear white
        // domain, including at most 30% profile-RGB overrange, so positive
        // BaselineExposure does not collapse its recoverable highlight headroom
        // into the final table entry.
        val blackRangeWhiteReference = BASE_WHITE_POINT * whitePointAdjustment
        val rawWhitePoint = blackRangeWhiteReference
        val whitePoint = rawWhitePoint * baselineGain

        // The EV-histogram foot identifies the perceptual shadow onset. Keep a
        // short toe reserve below it; unlike p10, this point is based on image
        // structure and never participates in exposure lift. Black placement is
        // normalized to the raw-white reference, not to the expanded Baseline-
        // Exposure lookup domain, so extending highlights cannot move exposure.
        val slopeBlackPoint = max(shadowFoot, MIN_CURVE_INPUT) /
            2.0f.pow(SHADOW_FOOT_HEADROOM_EV)
        val compressionBlackPoint = blackRangeWhiteReference /
            2.0f.pow(targetDynamicRangeEv + MIN_SOURCE_COMPRESSION_EV)
        val gainLimitedBlackPoint = blackOutput / MAX_GAIN_VALUE
        val minimumBlackPoint = max(
            blackRangeWhiteReference / 2.0f.pow(MAX_SOURCE_DYNAMIC_RANGE_EV),
            gainLimitedBlackPoint
        )
        val blackPoint = max(slopeBlackPoint, compressionBlackPoint)
            .coerceIn(minimumBlackPoint, blackRangeWhiteReference * 0.25f)

        // Exposure normalization is global: map the perceptual log-average
        // luminance (never a value above canonical 18% gray) through the
        // highlight-range exposure curve, within the selected tier's ceiling.
        val minimumMiddleGrayPoint = max(
            blackPoint * 4f,
            middleGrayOutput / MAX_GAIN_VALUE
        )
        val maximumMiddleGrayPoint = min(MAX_SCENE_MIDDLE_GRAY, whitePoint * 0.5f)
        val middleGrayPoint = exposureAnchor.coerceIn(
            min(minimumMiddleGrayPoint, maximumMiddleGrayPoint),
            maximumMiddleGrayPoint
        )
        val whiteRelativeExposure = log2(whitePoint / middleGrayPoint)
        val blackRelativeExposure = log2(blackPoint / middleGrayPoint)
        val curveDynamicRangeEv = whiteRelativeExposure - blackRelativeExposure
        return PhotonToneAnchors(
            tailHighlightRangeEv = highlightRanges.tailRangeEv,
            exposureHighlightRangeEv = highlightRanges.exposureRangeEv,
            exposureHighlightReference = highlightRanges.exposureReference,
            highlightGapEv = highlightRanges.highlightGapEv,
            sparseHighlightStrength = highlightRanges.sparseStrength,
            targetDynamicRangeEv = targetDynamicRangeEv,
            curveDynamicRangeEv = curveDynamicRangeEv,
            blackRelativeExposure = blackRelativeExposure,
            whiteRelativeExposure = whiteRelativeExposure,
            blackPoint = blackPoint,
            blackOutput = blackOutput,
            middleGrayPoint = middleGrayPoint,
            middleGrayOutput = middleGrayOutput,
            displayBlackPoint = displayBlackPoint,
            displayMiddleGray = displayMiddleGray,
            tierDisplayMiddleGray = tierDisplayMiddleGray,
            whitePoint = whitePoint,
            rawWhitePoint = rawWhitePoint
        )
    }

    private fun displayMiddleGrayForTier(dynamicRangeEv: Float): Float {
        return when (dynamicRangeEv) {
            STANDARD_DYNAMIC_RANGE_EV -> STANDARD_DISPLAY_MIDDLE_GRAY
            WIDE_DYNAMIC_RANGE_EV -> WIDE_DISPLAY_MIDDLE_GRAY
            HDR_DYNAMIC_RANGE_EV -> HDR_DISPLAY_MIDDLE_GRAY
            else -> EXTENDED_HDR_DISPLAY_MIDDLE_GRAY
        }
    }

    private fun displayMiddleGrayForHighlightRange(
        exposureAnchor: Float,
        highlightRangeEv: Float,
        displayBlackPoint: Float,
        tierDisplayMiddleGray: Float,
    ): Float {
        val exposureLiftEv = displayExposureLiftEv(highlightRangeEv)
        return (exposureAnchor * 2.0f.pow(exposureLiftEv)).coerceIn(
            displayBlackPoint * 4f,
            tierDisplayMiddleGray
        )
    }

    internal fun displayExposureLiftEv(highlightRangeEv: Float): Float {
        val rangeStrength = smoothStep(
            DISPLAY_EXPOSURE_TRANSITION_START_EV,
            DISPLAY_EXPOSURE_TRANSITION_END_EV,
            highlightRangeEv
        )
        return lerp(
            MIN_DISPLAY_EXPOSURE_LIFT_EV,
            MAX_DISPLAY_EXPOSURE_LIFT_EV,
            rangeStrength
        )
    }

    internal fun photonHighlightRanges(
        p90: Float,
        p98: Float,
        p995: Float,
        p999: Float,
        sceneMiddle: Float,
    ): PhotonHighlightRanges {
        val safeMiddle = max(sceneMiddle, MIN_CURVE_INPUT)
        val safeP90 = max(p90, safeMiddle)
        val safeP98 = max(p98, safeP90)
        val safeP995 = max(p995, safeP98)
        val safeP999 = max(p999, safeP995)
        val highlightGapEv = log2(safeP98 / safeP90).coerceAtLeast(0f)
        val sparseStrength = smoothStep(
            SPARSE_HIGHLIGHT_GAP_START_EV,
            SPARSE_HIGHLIGHT_GAP_FULL_EV,
            highlightGapEv
        )

        // p999 remains the compression endpoint. When the upper 2% is
        // separated from the main highlight population by a large EV gap,
        // drive whole-frame exposure from the log-center across that gap
        // instead of from percentiles that are both inside the sparse bright
        // population. This preserves the tail without letting a window or
        // specular region brighten the rest of the image.
        val denseHighlightReference = 2.0f.pow(
            0.5f * (log2(safeP90) + log2(safeP98))
        )
        val exposureReference = 2.0f.pow(
            lerp(log2(safeP999), log2(denseHighlightReference), sparseStrength)
        )
        return PhotonHighlightRanges(
            tailRangeEv = log2(safeP999 / safeMiddle).coerceAtLeast(0f),
            exposureRangeEv = log2(exposureReference / safeMiddle).coerceAtLeast(0f),
            exposureReference = exposureReference,
            highlightGapEv = highlightGapEv,
            sparseStrength = sparseStrength
        )
    }

    private fun photonDynamicRangeTier(highlightRangeEv: Float): Float {
        val tier = when {
            highlightRangeEv >= EXTENDED_HDR_HIGHLIGHT_RANGE_THRESHOLD_EV ->
                EXTENDED_HDR_DYNAMIC_RANGE_EV
            highlightRangeEv >= HDR_HIGHLIGHT_RANGE_THRESHOLD_EV -> HDR_DYNAMIC_RANGE_EV
            highlightRangeEv >= WIDE_HIGHLIGHT_RANGE_THRESHOLD_EV -> WIDE_DYNAMIC_RANGE_EV
            else -> STANDARD_DYNAMIC_RANGE_EV
        }
        return tier.coerceIn(MIN_DYNAMIC_RANGE_EV, MAX_DYNAMIC_RANGE_EV)
    }

    private fun photonWhitePointAdjustment(
        global: PhotonPgtmCellStats,
        dynamicRangeEv: Float,
    ): Float {
        val p995 = max(global.p995, global.p98)
        val p999 = max(global.p999, p995)
        val representativeTail = lerp(p995, p999, 0.65f)
        val sparseTailPressure = smoothStep(0.94f, 1.32f, representativeTail)
        val denseHighlightPressure = smoothStep(0.07f, 0.24f, global.highlightFraction) *
            smoothStep(0.84f, 1.12f, p995)
        val rangeTierStrength = (dynamicRangeEv - MIN_DYNAMIC_RANGE_EV) /
            (MAX_DYNAMIC_RANGE_EV - MIN_DYNAMIC_RANGE_EV)
        val pressure = max(sparseTailPressure, denseHighlightPressure) *
            lerp(0.82f, 1f, rangeTierStrength)
        return lerp(BASE_WHITE_POINT, MAX_WHITE_POINT_ADJUSTMENT, pressure)
            .coerceIn(BASE_WHITE_POINT, MAX_WHITE_POINT_ADJUSTMENT)
    }

    private fun writePhotonCurve(
        output: FloatArray,
        outputOffset: Int,
        curveSamples: PhotonCurveSamples,
        toneAnchors: PhotonToneAnchors,
        global: PhotonPgtmCellStats,
        local: PhotonPgtmCellStats,
    ) {
        val pointCount = curveSamples.sceneLinear.size
        val localParams = buildLocalMicroContrastParams(
            toneAnchors = toneAnchors,
            global = global,
            local = local
        )
        var previousOutput = 0f
        val lowTableInput = 1f / max(pointCount - 1, 1).toFloat()
        val lowSceneLinear = sceneLinearForTableInput(lowTableInput, curveSamples.inputScale)
        val lowBaseOutput = photonGlobalToneOutput(lowSceneLinear, toneAnchors)
        val lowOutput = applyLocalMicroContrast(
            baseOutput = lowBaseOutput,
            sceneLog2 = log2(lowSceneLinear),
            tonalWindow = localMicroContrastTonalWindow(lowSceneLinear, toneAnchors),
            params = localParams
        )
        val lowGain = (lowOutput / lowSceneLinear)
            .coerceIn(0.05f, MAX_GAIN_VALUE)
        for (index in 0 until pointCount) {
            val sceneLinear = curveSamples.sceneLinear[index]
            if (sceneLinear <= MIN_CURVE_INPUT) {
                output[outputOffset + index] = lowGain
                continue
            }
            val targetOutput = applyLocalMicroContrast(
                baseOutput = curveSamples.baseOutput[index],
                sceneLog2 = curveSamples.sceneLog2[index],
                tonalWindow = curveSamples.tonalWindow[index],
                params = localParams
            )
            val monotonicOutput = max(previousOutput, targetOutput)
            output[outputOffset + index] = (monotonicOutput / max(sceneLinear, MIN_CURVE_INPUT))
                .coerceIn(0.05f, MAX_GAIN_VALUE)
            previousOutput = monotonicOutput
        }
    }

    private fun buildPhotonCurveSamples(
        pointCount: Int,
        inputScale: Float,
        toneAnchors: PhotonToneAnchors,
    ): PhotonCurveSamples {
        val safeInputScale = sanitizeInputScale(inputScale)
        val sceneLinear = FloatArray(pointCount)
        val baseOutput = FloatArray(pointCount)
        val sceneLog2 = FloatArray(pointCount)
        val tonalWindow = FloatArray(pointCount)
        for (index in 0 until pointCount) {
            val tableInput = tableInputForIndex(index, pointCount)
            val scene = sceneLinearForTableInput(tableInput, safeInputScale)
            sceneLinear[index] = scene
            baseOutput[index] = photonGlobalToneOutput(scene, toneAnchors)
            sceneLog2[index] = if (scene > 0f) log2(scene) else Float.NEGATIVE_INFINITY
            tonalWindow[index] = localMicroContrastTonalWindow(scene, toneAnchors)
        }
        return PhotonCurveSamples(
            inputScale = safeInputScale,
            sceneLinear = sceneLinear,
            baseOutput = baseOutput,
            sceneLog2 = sceneLog2,
            tonalWindow = tonalWindow
        )
    }

    private fun photonToneOutput(
        sceneLinear: Float,
        toneAnchors: PhotonToneAnchors,
        global: PhotonPgtmCellStats,
        local: PhotonPgtmCellStats,
    ): Float {
        if (sceneLinear <= 0f) return 0f
        val baseOutput = photonGlobalToneOutput(sceneLinear, toneAnchors)
        return photonLocalMicroContrastOutput(
            baseOutput = baseOutput,
            sceneLinear = sceneLinear,
            toneAnchors = toneAnchors,
            global = global,
            local = local
        )
    }

    private fun photonGlobalToneOutput(
        sceneLinear: Float,
        toneAnchors: PhotonToneAnchors,
    ): Float {
        if (sceneLinear <= 0f) return 0f
        if (sceneLinear < toneAnchors.blackPoint) {
            return toneAnchors.blackOutput * (sceneLinear / toneAnchors.blackPoint)
        }
        if (sceneLinear >= toneAnchors.whitePoint) return 1f

        val encoded = (
            (log2(sceneLinear / toneAnchors.middleGrayPoint) - toneAnchors.blackRelativeExposure) /
                toneAnchors.curveDynamicRangeEv
            ).coerceIn(0f, 1f)
        val pivotX = (-toneAnchors.blackRelativeExposure / toneAnchors.curveDynamicRangeEv)
            .coerceIn(1e-4f, 1f - 1e-4f)
        val pivotY = toneAnchors.middleGrayOutput
        val leftSecant = (pivotY - toneAnchors.blackOutput) / pivotX
        val rightSecant = (1f - pivotY) / (1f - pivotX)
        val rangeStrength = (toneAnchors.targetDynamicRangeEv - MIN_DYNAMIC_RANGE_EV) /
            (MAX_DYNAMIC_RANGE_EV - MIN_DYNAMIC_RANGE_EV)
        val desiredPivotSlope = lerp(0.84f, 0.94f, rangeStrength)
        val monotoneSlopeLimit = 0.92f * 3f * min(leftSecant, rightSecant)
        val pivotSlope = min(desiredPivotSlope, monotoneSlopeLimit)
        val highlightEndpointSlopeRatio = lerp(
            MIN_HIGHLIGHT_ENDPOINT_SLOPE_RATIO,
            MAX_HIGHLIGHT_ENDPOINT_SLOPE_RATIO,
            rangeStrength
        )

        return if (encoded <= pivotX) {
            val segmentT = encoded / pivotX
            cubicHermite(
                start = toneAnchors.blackOutput,
                end = pivotY,
                startSlope = leftSecant * 0.06f * pivotX,
                endSlope = pivotSlope * pivotX,
                t = segmentT
            )
        } else {
            val segmentLength = 1f - pivotX
            val segmentT = (encoded - pivotX) / segmentLength
            cubicHermite(
                start = pivotY,
                end = 1f,
                startSlope = pivotSlope * segmentLength,
                endSlope = rightSecant * highlightEndpointSlopeRatio * segmentLength,
                t = segmentT
            )
        }
    }

    private fun cubicHermite(
        start: Float,
        end: Float,
        startSlope: Float,
        endSlope: Float,
        t: Float,
    ): Float {
        val u = t.coerceIn(0f, 1f)
        val u2 = u * u
        val u3 = u2 * u
        val h00 = 2f * u3 - 3f * u2 + 1f
        val h10 = u3 - 2f * u2 + u
        val h01 = -2f * u3 + 3f * u2
        val h11 = u3 - u2
        return (h00 * start + h10 * startSlope + h01 * end + h11 * endSlope)
            .coerceIn(start, end)
    }

    private fun photonLocalMicroContrastOutput(
        baseOutput: Float,
        sceneLinear: Float,
        toneAnchors: PhotonToneAnchors,
        global: PhotonPgtmCellStats,
        local: PhotonPgtmCellStats,
    ): Float {
        if (baseOutput <= 0f || baseOutput >= 1f) return baseOutput
        val params = buildLocalMicroContrastParams(toneAnchors, global, local)
        return applyLocalMicroContrast(
            baseOutput = baseOutput,
            sceneLog2 = log2(sceneLinear),
            tonalWindow = localMicroContrastTonalWindow(sceneLinear, toneAnchors),
            params = params
        )
    }

    private fun buildLocalMicroContrastParams(
        toneAnchors: PhotonToneAnchors,
        global: PhotonPgtmCellStats,
        local: PhotonPgtmCellStats,
    ): LocalMicroContrastParams {
        val localRangeEv = log2((local.p90 + 0.008f) / (local.p10 + 0.008f))
            .coerceIn(0f, 8f)
        val globalRangeEv = log2((global.p90 + 0.008f) / (global.p10 + 0.008f))
            .coerceIn(0f, 8f)
        val localDetail = smoothStep(0.90f, 3.15f, localRangeEv)
        val relativeDetail = smoothStep(-0.35f, 0.80f, localRangeEv - globalRangeEv)
        val highlightDamping = 1f - 0.38f * smoothStep(0.14f, 0.38f, global.highlightFraction)
        val strengthEv = MAX_LOCAL_MICRO_CONTRAST_EV * localDetail *
            lerp(0.72f, 1f, relativeDetail) * highlightDamping
        if (strengthEv <= 1e-4f) {
            return LocalMicroContrastParams(strengthEv = 0f, pivotLog2 = 0f)
        }

        val localPivot = local.p50.coerceIn(
            toneAnchors.middleGrayPoint * 0.45f,
            toneAnchors.middleGrayPoint * 1.65f
        )
        return LocalMicroContrastParams(
            strengthEv = strengthEv,
            pivotLog2 = lerp(
                log2(toneAnchors.middleGrayPoint),
                log2(localPivot),
                0.35f
            )
        )
    }

    private fun applyLocalMicroContrast(
        baseOutput: Float,
        sceneLog2: Float,
        tonalWindow: Float,
        params: LocalMicroContrastParams,
    ): Float {
        if (baseOutput <= 0f || baseOutput >= 1f || params.strengthEv <= 1e-4f) {
            return baseOutput
        }
        val signedDistance = ((sceneLog2 - params.pivotLog2) / 1.45f)
            .coerceIn(-1f, 1f)
        val adjusted = baseOutput * 2.0f.pow(params.strengthEv * signedDistance * tonalWindow)
        return adjusted.coerceIn(0f, 1f)
    }

    private fun localMicroContrastTonalWindow(
        sceneLinear: Float,
        toneAnchors: PhotonToneAnchors,
    ): Float {
        if (sceneLinear <= 0f) return 0f
        val blackFeatherEnd = max(toneAnchors.blackPoint * 4f, 0.018f)
        val highlightFeatherStart = max(
            toneAnchors.middleGrayPoint * 2.4f,
            toneAnchors.whitePoint * 0.48f
        )
        val highlightFeatherEnd = max(
            highlightFeatherStart + 1e-4f,
            toneAnchors.whitePoint * 0.82f
        )
        return smoothStep(toneAnchors.blackPoint, blackFeatherEnd, sceneLinear) *
            (1f - smoothStep(highlightFeatherStart, highlightFeatherEnd, sceneLinear))
    }

    private fun photonPgtmInputWeights(inputScale: Float): FloatArray {
        val scale = sanitizeInputScale(inputScale)
        return FloatArray(MAP_INPUT_WEIGHT_COUNT) { index ->
            BASE_INPUT_WEIGHTS[index] * scale
        }
    }

    private fun tableInputForIndex(index: Int, pointCount: Int): Float {
        if (pointCount <= 1) return 0f
        return if (index == pointCount - 1) {
            1f
        } else {
            index.toFloat() / pointCount.toFloat()
        }
    }

    private fun sceneLinearForTableInput(tableInput: Float, inputScale: Float): Float {
        val encodedInput = tableInput.coerceIn(0f, 1f)
        val normalizedScene = encodedInput.pow(1f / TABLE_INPUT_GAMMA)
        return normalizedScene / sanitizeInputScale(inputScale)
    }

    private fun sanitizeInputScale(inputScale: Float): Float {
        return inputScale.takeIf { it.isFinite() }
            ?.coerceIn(MIN_CURVE_INPUT, 1.0f)
            ?: 1.0f
    }

    private fun photonProfileInputForDisplay(displayValue: Float): Float {
        val target = displayValue.coerceIn(0f, 1f)
        val points = DngProfileToneCurve.photonPgtmToneCurvePoints()
        if (points.size < 4) return target
        var index = 0
        while (index + 3 < points.size) {
            val x0 = points[index]
            val y0 = points[index + 1]
            val x1 = points[index + 2]
            val y1 = points[index + 3]
            if (target <= y1) {
                val t = if (y1 > y0) (target - y0) / (y1 - y0) else 0f
                return lerp(x0, x1, t)
            }
            index += 2
        }
        return points[points.size - 2].coerceIn(0f, 1f)
    }

    private fun photonProfileOutputForInput(inputValue: Float): Float {
        val input = inputValue.coerceIn(0f, 1f)
        val points = DngProfileToneCurve.photonPgtmToneCurvePoints()
        if (points.size < 4) return input
        var index = 0
        while (index + 3 < points.size) {
            val x0 = points[index]
            val y0 = points[index + 1]
            val x1 = points[index + 2]
            val y1 = points[index + 3]
            if (input <= x1) {
                val t = if (x1 > x0) (input - x0) / (x1 - x0) else 0f
                return lerp(y0, y1, t)
            }
            index += 2
        }
        return points.last().coerceIn(0f, 1f)
    }

    private fun smoothStep(edge0: Float, edge1: Float, x: Float): Float {
        val t = ((x - edge0) / max(edge1 - edge0, 1e-6f)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }

    private fun lerp(a: Float, b: Float, t: Float): Float {
        return a + (b - a) * min(max(t, 0f), 1f)
    }

    private fun log2(value: Float): Float {
        return (ln(max(value, 1e-6f).toDouble()) / ln(2.0)).toFloat()
    }

    private fun safe01(value: Float): Float {
        return value.takeIf { it.isFinite() }?.coerceIn(0f, 1f) ?: 0f
    }

    private fun safePositive(value: Float, fallback: Float): Float {
        return value.takeIf { it.isFinite() && it > 0f } ?: fallback
    }

    private data class PhotonPgtmCellStats(
        val p10: Float,
        val p50: Float,
        val p90: Float,
        val p98: Float,
        val highlightFraction: Float,
        val p995: Float,
        val p999: Float,
        val maxInput: Float,
        val sampleWeight: Float,
    )

    private data class PhotonCurveSamples(
        val inputScale: Float,
        val sceneLinear: FloatArray,
        val baseOutput: FloatArray,
        val sceneLog2: FloatArray,
        val tonalWindow: FloatArray,
    )

    private data class LocalMicroContrastParams(
        val strengthEv: Float,
        val pivotLog2: Float,
    )

    private data class PhotonToneAnchors(
        val tailHighlightRangeEv: Float,
        val exposureHighlightRangeEv: Float,
        val exposureHighlightReference: Float,
        val highlightGapEv: Float,
        val sparseHighlightStrength: Float,
        val targetDynamicRangeEv: Float,
        val curveDynamicRangeEv: Float,
        val blackRelativeExposure: Float,
        val whiteRelativeExposure: Float,
        val blackPoint: Float,
        val blackOutput: Float,
        val middleGrayPoint: Float,
        val middleGrayOutput: Float,
        val displayBlackPoint: Float,
        val displayMiddleGray: Float,
        val tierDisplayMiddleGray: Float,
        val whitePoint: Float,
        val rawWhitePoint: Float,
    )

    internal data class PhotonHighlightRanges(
        val tailRangeEv: Float,
        val exposureRangeEv: Float,
        val exposureReference: Float,
        val highlightGapEv: Float,
        val sparseStrength: Float,
    )
}
