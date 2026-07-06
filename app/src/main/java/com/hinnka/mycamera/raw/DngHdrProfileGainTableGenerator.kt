package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow
import kotlin.math.sqrt

internal object DngHdrProfileGainTableGenerator {
    private const val TAG = "DngHdrProfileGainTableGenerator"

    const val CELL_STATS_FLOAT_STRIDE = 8

    private const val MAP_INPUT_WEIGHT_COUNT = 5
    private const val GCAM_HDR_LOWER_RANGE_EV = -1f
    private const val GCAM_HDR_UPPER_RANGE_EV = 8.5f
    private const val GCAM_HDR_EFFECT_INTENSITY = 1f
    private const val MIN_BASELINE_EV = 0f
    private const val MAX_BASELINE_EV = 8f
    private const val DEFAULT_TABLE_POINTS = 257
    private const val MIN_TABLE_POINTS = 257
    private const val MAX_TABLE_POINTS = 257
    private const val TARGET_TILE_PX = 64
    private const val GRID_MIN_H = 8
    private const val GRID_MIN_V = 6
    private const val GRID_MAX_H = 64
    private const val GRID_MAX_V = 48
    private const val MIN_SCENE_MAX = 1.06f
    private const val MAX_SCENE_MAX = 4.80f
    private const val SCENE_BASE_TAIL_FACTOR = 1.12f
    private const val SCENE_TAIL_EXPANSION_FACTOR = 2.75f
    private const val SCENE_TAIL_MAX_INPUT_FACTOR = 1.2f
    private const val SCENE_TAIL_HDR_STRENGTH = 0.58f
    private const val SCENE_TAIL_EXPANSION_STRENGTH_GAIN = 2.10f
    private const val SCENE_TAIL_MAX_GAP_START_EV = 0.18f
    private const val SCENE_TAIL_MAX_GAP_FULL_EV = 0.62f
    private const val SCENE_DENSE_HIGHLIGHT_EXPANSION_START = 0.18f
    private const val SCENE_DENSE_HIGHLIGHT_EXPANSION_FULL = 0.24f
    private const val SCENE_DENSE_HIGHLIGHT_START = 0.13f
    private const val SCENE_DENSE_HIGHLIGHT_FULL = 0.17f
    private const val LOW_DETAIL_SPARSE_HIGHLIGHT_START = 0.018f
    private const val LOW_DETAIL_SPARSE_HIGHLIGHT_END = 0.055f
    private const val LOW_DETAIL_MODERATE_HIGHLIGHT_START = 0.040f
    private const val LOW_DETAIL_MODERATE_HIGHLIGHT_FULL = 0.055f
    private const val LOW_DETAIL_MODERATE_HIGHLIGHT_END = 0.140f
    private const val LOW_DETAIL_FLAT_UPPER_START = 0.40f
    private const val LOW_DETAIL_FLAT_UPPER_END = 0.50f
    private const val LOW_RANGE_DENSE_TAIL_START = 0.075f
    private const val LOW_RANGE_DENSE_TAIL_END = 0.145f
    private const val LOW_RANGE_HIGHLIGHT_TAIL_START = 0.030f
    private const val LOW_RANGE_HIGHLIGHT_TAIL_END = 0.065f
    private const val LOW_RANGE_COMPACT_TAIL_END_BOOST = 0.03f
    private const val LOW_TABLE_PLATEAU_END = 0.020f
    private const val LOW_TABLE_PLATEAU_FEATHER_END = 0.032f
    private const val MAX_GAIN_VALUE = 5.40f
    private const val MIN_CURVE_INPUT = 1e-6f
    private const val SCENE_ULTRA_BLACK_ANCHOR = 0.0025f
    private const val SCENE_BLACK_DETAIL_ANCHOR = 0.005f
    private const val SCENE_DARK_DETAIL_ANCHOR = 0.0075f
    private const val SCENE_DEEP_SHADOW_ANCHOR = 0.010f
    private const val SCENE_DEEP_SHADOW_DETAIL_ANCHOR = 0.015f
    private const val SCENE_SHADOW_ANCHOR = 0.02f
    private const val SCENE_SHADOW_DETAIL_ANCHOR = 0.0275f
    private const val SCENE_LOWER_SHADOW_ANCHOR = 0.035f
    private const val SCENE_LOWER_LOW_ANCHOR = 0.045f
    private const val SCENE_LOW_ANCHOR = 0.05f
    private const val SCENE_LOW_DETAIL_ANCHOR = 0.0575f
    private const val SCENE_UPPER_SHADOW_ANCHOR = 0.065f
    private const val SCENE_PRE_TOE_ANCHOR = 0.0725f
    private const val SCENE_TOE_ANCHOR = 0.08f
    private const val SCENE_UPPER_TOE_ANCHOR = 0.095f
    private const val SCENE_TOE_MID_JOIN_ANCHOR = 0.105f
    private const val SCENE_LOWER_MID_ANCHOR = 0.11f
    private const val SCENE_MID_ANCHOR = 0.18f
    private const val SCENE_UPPER_MID_ANCHOR = 0.25f
    private const val SCENE_HALF_ANCHOR = 0.50f
    private const val SCENE_WHITE_ANCHOR = 1.0f
    private const val SCENE_BRIGHT_ANCHOR = 1.5f
    private const val SCENE_SUPER_WHITE_ANCHOR = 2.0f
    private const val SCENE_EXTREME_WHITE_ANCHOR = 3.0f
    private const val MIN_MID_GAIN = 1.40f
    private const val MAX_MID_GAIN = 2.75f
    private const val LOW_DETAIL_MID_GAIN_FACTOR = 1.56f
    private const val MIN_BLACK_GAIN = 1.00f
    private const val MAX_BLACK_GAIN = 5.40f
    private const val MIN_TOE_SLOPE = 0.58f
    private const val MAX_TOE_SLOPE = 0.88f
    private const val MIN_SHOULDER_POWER = 0.82f
    private const val MAX_SHOULDER_POWER = 1.28f
    internal const val BASE_INPUT_WEIGHT_RED = 0.1495f
    internal const val BASE_INPUT_WEIGHT_GREEN = 0.2935f
    internal const val BASE_INPUT_WEIGHT_BLUE = 0.0570f
    internal const val BASE_INPUT_WEIGHT_MIN = 0.1250f
    internal const val BASE_INPUT_WEIGHT_MAX = 0.3750f
    private val BASE_INPUT_WEIGHTS = floatArrayOf(
        BASE_INPUT_WEIGHT_RED,
        BASE_INPUT_WEIGHT_GREEN,
        BASE_INPUT_WEIGHT_BLUE,
        BASE_INPUT_WEIGHT_MIN,
        BASE_INPUT_WEIGHT_MAX
    )

    fun gridSizeFor(width: Int, height: Int): IntArray {
        val grid = chooseHdrPgtmGrid(width, height)
        return intArrayOf(grid.mapPointsH, grid.mapPointsV)
    }

    fun sceneInputFromLinearRgb(
        red: Float,
        green: Float,
        blue: Float,
        baselineGain: Float,
        colorCorrectionMatrix: FloatArray? = null,
    ): Float {
        val profileRgb = if (colorCorrectionMatrix != null && colorCorrectionMatrix.size >= 9) {
            floatArrayOf(
                colorCorrectionMatrix[0] * red + colorCorrectionMatrix[1] * green + colorCorrectionMatrix[2] * blue,
                colorCorrectionMatrix[3] * red + colorCorrectionMatrix[4] * green + colorCorrectionMatrix[5] * blue,
                colorCorrectionMatrix[6] * red + colorCorrectionMatrix[7] * green + colorCorrectionMatrix[8] * blue
            )
        } else {
            floatArrayOf(red, green, blue)
        }
        return sceneInputFromProfileRgb(
            red = profileRgb[0],
            green = profileRgb[1],
            blue = profileRgb[2],
            baselineGain = baselineGain
        )
    }

    fun sceneInputFromProfileRgb(
        red: Float,
        green: Float,
        blue: Float,
        baselineGain: Float,
    ): Float {
        val r = red * baselineGain
        val g = green * baselineGain
        val b = blue * baselineGain
        val rgbMin = min(r, min(g, b))
        val rgbMax = max(r, max(g, b))
        return max(
            BASE_INPUT_WEIGHT_RED * r +
                BASE_INPUT_WEIGHT_GREEN * g +
                BASE_INPUT_WEIGHT_BLUE * b +
                BASE_INPUT_WEIGHT_MIN * rgbMin +
                BASE_INPUT_WEIGHT_MAX * rgbMax,
            0f
        )
    }

    fun forCellStats(
        width: Int,
        height: Int,
        baselineExposureEv: Float,
        packedCellStats: FloatArray,
        tablePointCount: Int = DEFAULT_TABLE_POINTS,
        diagnosticBand: DiagnosticBand? = null,
    ): DngProfileGainTableMap? {
        if (width <= 0 || height <= 0 || !baselineExposureEv.isFinite() || baselineExposureEv < MIN_BASELINE_EV) {
            return null
        }
        val grid = chooseHdrPgtmGrid(width, height)
        val cellCount = grid.mapPointsH * grid.mapPointsV
        if (packedCellStats.size < cellCount * CELL_STATS_FLOAT_STRIDE) {
            PLog.w(
                TAG,
                "GPU PGTM stats too small: ${packedCellStats.size}, expected=${cellCount * CELL_STATS_FLOAT_STRIDE}"
            )
            return null
        }
        val safeBaselineEv = baselineExposureEv.coerceIn(0f, MAX_BASELINE_EV)
        val safePointCount = tablePointCount.coerceIn(MIN_TABLE_POINTS, MAX_TABLE_POINTS)
        val cells = Array<HdrPgtmCellStats?>(cellCount) { index ->
            val offset = index * CELL_STATS_FLOAT_STRIDE
            val sampleWeight = packedCellStats[offset + 5].takeIf { it.isFinite() && it > 0f } ?: 0f
            if (sampleWeight <= 0f) {
                null
            } else {
                packedStatsAt(packedCellStats, offset, sampleWeight)
            }
        }
        val globalStats = weightedGlobalStats(cells)
        val inputScale = hdrPgtmInputScaleForStats(globalStats)
        val sceneMax = 1f / sanitizeInputScale(inputScale)
        val sceneHdrStrength = (sceneHdrStrength(globalStats, inputScale) * GCAM_HDR_EFFECT_INTENSITY)
            .coerceIn(0f, 1f)
        val globalCurveParams = buildHdrPgtmCurveParams(
            global = globalStats,
            sceneHdrStrength = sceneHdrStrength,
            sceneMax = sceneMax
        )
        val curveParams = buildSpatialCurveParams(
            cells = cells,
            grid = grid,
            global = globalStats,
            globalCurveParams = globalCurveParams,
            sceneHdrStrength = sceneHdrStrength,
            sceneMax = sceneMax
        )
        return buildMap(
            grid = grid,
            safeBaselineEv = safeBaselineEv,
            safePointCount = safePointCount,
            curveParams = curveParams,
            inputScale = inputScale,
            diagnosticBand = diagnosticBand?.sanitized()
        )
    }

    private fun buildSpatialCurveParams(
        cells: Array<HdrPgtmCellStats?>,
        grid: HdrPgtmGrid,
        global: HdrPgtmCellStats,
        globalCurveParams: HdrPgtmCurveParams,
        sceneHdrStrength: Float,
        sceneMax: Float,
    ): Array<HdrPgtmCurveParams> {
        return DngHdrPgtmLocalToneModel.buildSpatialCurveParams(
            cells = cells,
            grid = grid,
            global = global,
            globalCurveParams = globalCurveParams
        ) { cell ->
            buildHdrPgtmCurveParams(
                global = cell,
                sceneStats = global,
                sceneHdrStrength = sceneHdrStrength,
                sceneMax = sceneMax
            )
        }
    }

    data class DiagnosticBand(
        val start: Float,
        val end: Float,
        val feather: Float = 0.02f,
        val mode: DiagnosticMode = DiagnosticMode.PASS_ONLY,
    ) {
        internal fun sanitized(): DiagnosticBand? {
            if (!start.isFinite() || !end.isFinite() || !feather.isFinite()) return null
            val safeStart = start.coerceIn(0f, 1f)
            val safeEnd = end.coerceIn(0f, 1f)
            if (safeEnd <= safeStart) return null
            return DiagnosticBand(
                start = safeStart,
                end = safeEnd,
                feather = feather.coerceIn(0f, 0.12f),
                mode = mode
            )
        }
    }

    enum class DiagnosticMode {
        PASS_ONLY,
        BLOCK_ONLY,
    }

    fun withDiagnosticBand(
        map: DngProfileGainTableMap,
        diagnosticBand: DiagnosticBand?,
    ): DngProfileGainTableMap {
        val band = diagnosticBand?.sanitized() ?: return map
        if (!map.isValid) return map
        val gains = map.gains.copyOf()
        val pointCount = map.mapPointsN
        val cellCount = map.mapPointsH * map.mapPointsV
        val maxGain = gains
            .maxOrNull()
            ?.takeIf { it.isFinite() && it > 0f }
            ?.coerceAtLeast(MAX_GAIN_VALUE)
            ?: MAX_GAIN_VALUE
        for (cellIndex in 0 until cellCount) {
            applyDiagnosticBand(
                output = gains,
                outputOffset = cellIndex * pointCount,
                pointCount = pointCount,
                band = band,
                maxGainValue = maxGain
            )
        }
        return map.copy(gains = gains)
    }

    private fun packedStatsAt(stats: FloatArray, offset: Int, sampleWeight: Float): HdrPgtmCellStats {
        val p10 = safe01(stats[offset])
        val p50 = max(p10, safe01(stats[offset + 1]))
        val p90 = max(p50, safe01(stats[offset + 2]))
        val p98 = max(p90, safe01(stats[offset + 3]))
        val p995Input = max(p98, safePositive(stats[offset + 6], p98))
        val p999Input = max(p995Input, safePositive(stats[offset + 7], p995Input))
        return HdrPgtmCellStats(
            p10 = p10,
            p50 = p50,
            p90 = p90,
            p98 = p98,
            highlightFraction = safe01(stats[offset + 4]),
            p995Input = p995Input,
            p999Input = p999Input,
            inputTailP95 = p995Input,
            inputTailP98 = p995Input,
            inputTailP99 = p999Input,
            maxInput = p999Input,
            sampleWeight = sampleWeight
        )
    }

    private fun weightedGlobalStats(cells: Array<HdrPgtmCellStats?>): HdrPgtmCellStats {
        var weightSum = 0f
        var p10 = 0f
        var p50 = 0f
        var p90 = 0f
        var p98 = 0f
        var highlightFraction = 0f
        var p995Input = 0f
        var p999Input = 0f
        val validCells = ArrayList<HdrPgtmCellStats>(cells.size)
        cells.forEach { cell ->
            if (cell != null && cell.sampleWeight > 0f) {
                val weight = cell.sampleWeight
                validCells += cell
                weightSum += weight
                p10 += cell.p10 * weight
                p50 += cell.p50 * weight
                p90 += cell.p90 * weight
                p98 += cell.p98 * weight
                highlightFraction += cell.highlightFraction * weight
                p995Input += cell.p995Input * weight
                p999Input += cell.p999Input * weight
            }
        }
        if (weightSum <= 0f) {
            return HdrPgtmCellStats(
                p10 = 0.02f,
                p50 = 0.18f,
                p90 = 0.55f,
                p98 = 0.82f,
                highlightFraction = 0f,
                p995Input = 0.82f,
                p999Input = 0.82f,
                inputTailP95 = 0.82f,
                inputTailP98 = 0.82f,
                inputTailP99 = 0.82f,
                maxInput = 0.82f,
                sampleWeight = 1f
            )
        }
        val inputTailP95 = weightedPercentile(validCells, 0.95f) { it.p995Input }
        val inputTailP98 = weightedPercentile(validCells, 0.98f) { it.p995Input }
        val inputTailP99 = weightedPercentile(validCells, 0.99f) { it.p999Input }
        val maxInput = validCells.maxOfOrNull { it.p999Input } ?: (p999Input / weightSum)
        return HdrPgtmCellStats(
            p10 = p10 / weightSum,
            p50 = p50 / weightSum,
            p90 = p90 / weightSum,
            p98 = p98 / weightSum,
            highlightFraction = highlightFraction / weightSum,
            p995Input = p995Input / weightSum,
            p999Input = p999Input / weightSum,
            inputTailP95 = inputTailP95,
            inputTailP98 = inputTailP98,
            inputTailP99 = inputTailP99,
            maxInput = maxInput,
            sampleWeight = weightSum
        )
    }

    private fun weightedPercentile(
        cells: List<HdrPgtmCellStats>,
        percentile: Float,
        selector: (HdrPgtmCellStats) -> Float,
    ): Float {
        if (cells.isEmpty()) return 0f
        val sorted = cells
            .mapNotNull { cell ->
                val value = selector(cell)
                if (value.isFinite() && cell.sampleWeight > 0f) {
                    value to cell.sampleWeight
                } else {
                    null
                }
            }
            .sortedBy { it.first }
        if (sorted.isEmpty()) return 0f
        val totalWeight = sorted.sumOf { it.second.toDouble() }.toFloat()
        val target = totalWeight * percentile.coerceIn(0f, 1f)
        var cumulative = 0f
        sorted.forEach { (value, weight) ->
            cumulative += weight
            if (cumulative >= target) {
                return value
            }
        }
        return sorted.last().first
    }

    private fun buildMap(
        grid: HdrPgtmGrid,
        safeBaselineEv: Float,
        safePointCount: Int,
        curveParams: Array<HdrPgtmCurveParams>,
        inputScale: Float,
        diagnosticBand: DiagnosticBand?,
    ): DngProfileGainTableMap {
        val safeInputScale = sanitizeInputScale(inputScale)
        val gains = FloatArray(grid.mapPointsH * grid.mapPointsV * safePointCount)
        for (y in 0 until grid.mapPointsV) {
            for (x in 0 until grid.mapPointsH) {
                val cellIndex = y * grid.mapPointsH + x
                writeHdrPgtmCurve(
                    output = gains,
                    outputOffset = cellIndex * safePointCount,
                    pointCount = safePointCount,
                    inputScale = safeInputScale,
                    params = curveParams[cellIndex]
                )
                diagnosticBand?.let { band ->
                    applyDiagnosticBand(
                        output = gains,
                        outputOffset = cellIndex * safePointCount,
                        pointCount = safePointCount,
                        band = band
                    )
                }
            }
        }
        return DngProfileGainTableMap(
            mapPointsV = grid.mapPointsV,
            mapPointsH = grid.mapPointsH,
            mapSpacingV = grid.mapSpacingV,
            mapSpacingH = grid.mapSpacingH,
            mapOriginV = 0.0,
            mapOriginH = 0.0,
            mapPointsN = safePointCount,
            mapInputWeights = hdrPgtmInputWeights(safeInputScale),
            gamma = 1f,
            gains = gains,
            sourceTag = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2
        )
    }

    private fun applyDiagnosticBand(
        output: FloatArray,
        outputOffset: Int,
        pointCount: Int,
        band: DiagnosticBand,
        maxGainValue: Float = MAX_GAIN_VALUE,
    ) {
        var previousOutput = 0f
        val safeMaxGain = maxGainValue.takeIf { it.isFinite() && it > 0f }
            ?.coerceAtLeast(1f)
            ?: MAX_GAIN_VALUE
        for (index in 0 until pointCount) {
            val input = tableInputForIndex(index, pointCount)
            val trueGain = output[outputOffset + index]
            val mask = diagnosticBandMask(input, band)
            val mixedGain = when (band.mode) {
                DiagnosticMode.PASS_ONLY -> lerp(1f, trueGain, mask)
                DiagnosticMode.BLOCK_ONLY -> lerp(trueGain, 1f, mask)
            }
            val mixedOutput = input * mixedGain
            val monotonicOutput = max(previousOutput, mixedOutput)
            output[outputOffset + index] = if (input <= MIN_CURVE_INPUT) {
                mixedGain.coerceIn(0.05f, safeMaxGain)
            } else {
                (monotonicOutput / input).coerceIn(0.05f, safeMaxGain)
            }
            previousOutput = monotonicOutput
        }
    }

    private fun diagnosticBandMask(input: Float, band: DiagnosticBand): Float {
        val enter = if (band.start <= 0f || band.feather <= 0f) {
            if (input >= band.start) 1f else 0f
        } else {
            smoothStep(band.start - band.feather, band.start + band.feather, input)
        }
        val exit = if (band.end >= 1f || band.feather <= 0f) {
            if (input <= band.end) 1f else 0f
        } else {
            1f - smoothStep(band.end - band.feather, band.end + band.feather, input)
        }
        return min(enter, exit).coerceIn(0f, 1f)
    }

    private fun chooseHdrPgtmGrid(width: Int, height: Int): HdrPgtmGrid {
        val mapPointsH = ((width + TARGET_TILE_PX - 1) / TARGET_TILE_PX)
            .coerceIn(GRID_MIN_H, GRID_MAX_H)
        val mapPointsV = ((height + TARGET_TILE_PX - 1) / TARGET_TILE_PX)
            .coerceIn(GRID_MIN_V, GRID_MAX_V)
        return HdrPgtmGrid(
            mapPointsH = mapPointsH,
            mapPointsV = mapPointsV,
            mapSpacingH = if (mapPointsH > 1) 1.0 / (mapPointsH - 1).toDouble() else 1.0,
            mapSpacingV = if (mapPointsV > 1) 1.0 / (mapPointsV - 1).toDouble() else 1.0
        )
    }

    private fun buildHdrPgtmCurveParams(
        global: HdrPgtmCellStats,
        sceneStats: HdrPgtmCellStats = global,
        sceneHdrStrength: Float,
        sceneMax: Float,
    ): HdrPgtmCurveParams {
        val globalDynamicRangeEv = log2((sceneStats.p98 + 0.006f) / (sceneStats.p10 + 0.006f))
            .coerceIn(0f, 8f)
        val sceneContrastStrength = smoothStep(1.8f, 5.5f, globalDynamicRangeEv)
        val rangeCompression = sceneDynamicRangeCompression(global, sceneMax)
        val statsHdrStrength = sceneHdrStrength * lerp(0.34f, 1f, rangeCompression)
        val hdrStrength = max(statsHdrStrength, 0.70f * sceneContrastStrength * rangeCompression)
            .coerceIn(0f, 1f)
        val highlightPressure = (
            0.45f * smoothStep(0.48f, 0.88f, global.p90) +
                0.35f * smoothStep(0.70f, 0.985f, global.p98) +
                0.20f * smoothStep(0.015f, 0.30f, global.highlightFraction)
            ).coerceIn(0f, 1f) * hdrStrength
        val rangeCenterEv = hdrRangeCenterOffsetEv(
            global = global,
            highlightPressure = highlightPressure,
            hdrStrength = hdrStrength
        )
        val baseMidGain = hdrRangeMidGain(global, sceneHdrStrength)
        val moderateToneGainTrim = moderateToneGainTrim(global, sceneMax)
        val referenceMidGain = (baseMidGain * 2.0f.pow(rangeCenterEv))
            .coerceIn(MIN_MID_GAIN, MAX_MID_GAIN)
        val lowToneMidCompression = hdrRangeLowToneMidCompression(global, sceneMax)
        val midGain = (referenceMidGain *
            lerp(1f, 0.87f, lowToneMidCompression) *
            lerp(1f, 0.985f, moderateToneGainTrim))
            .coerceIn(MIN_MID_GAIN, MAX_MID_GAIN)
        val effectiveUpperRangeEv = log2(sceneMax / SCENE_MID_ANCHOR)
            .coerceIn(0.01f, GCAM_HDR_UPPER_RANGE_EV - GCAM_HDR_LOWER_RANGE_EV)
        val shoulderPower = hdrRangeShoulderPower(
            global = global,
            effectiveUpperRangeEv = effectiveUpperRangeEv,
            highlightPressure = highlightPressure,
            hdrStrength = hdrStrength
        )
        val toeSlope = hdrRangeToeSlope(sceneHdrStrength, highlightPressure)
        val localDenseLowToneTail = denseLowToneTailStrength(global, sceneMax)
        val globalDenseLowToneTail = denseLowToneTailStrength(sceneStats, sceneMax)
        val globalHighlightTailCompression = highlightTailCompressionStrength(sceneStats)
        val blackGain = hdrRangeBlackGain(
            midGain = max(
                midGain,
                referenceMidGain * lerp(1f, 0.94f, lowToneMidCompression)
            ),
            sceneHdrStrength = sceneHdrStrength,
            rangeCenterEv = rangeCenterEv,
            highlightPressure = highlightPressure,
            rangeCompression = rangeCompression,
            lowToneMidCompression = lowToneMidCompression,
            denseLowToneTail = localDenseLowToneTail,
            highlightTailCompression = globalHighlightTailCompression
        )
        val lowDetailGainFactor = hdrRangeLowDetailGainFactor(
            global = global,
            sceneMax = sceneMax,
            denseLowToneTail = localDenseLowToneTail
        )
        val globalCompactFlatLowTone = compactFlatLowToneStrength(sceneStats, sceneMax)
        val lowRangeStart = hdrRangeLowRangeStart(globalDenseLowToneTail, globalHighlightTailCompression)
        val lowRangeEnd = hdrRangeLowRangeEnd(globalDenseLowToneTail, globalCompactFlatLowTone, globalHighlightTailCompression)
        val lowRangeRetention = hdrRangeLowRangeRetention(globalDenseLowToneTail, globalCompactFlatLowTone, lowToneMidCompression)
        return HdrPgtmCurveParams(
            midOutput = SCENE_MID_ANCHOR * midGain,
            blackGain = blackGain.coerceIn(MIN_BLACK_GAIN, MAX_BLACK_GAIN),
            toeSlope = toeSlope,
            shoulderPower = shoulderPower,
            highlightPressure = highlightPressure,
            lowDetailGainFactor = lowDetailGainFactor,
            lowRangeStart = lowRangeStart,
            lowRangeEnd = lowRangeEnd,
            lowRangeRetention = lowRangeRetention
        )
    }

    private fun writeHdrPgtmCurve(
        output: FloatArray,
        outputOffset: Int,
        pointCount: Int,
        inputScale: Float,
        params: HdrPgtmCurveParams,
    ) {
        val safeInputScale = sanitizeInputScale(inputScale)
        val sceneMax = (1f / safeInputScale).coerceAtLeast(SCENE_WHITE_ANCHOR + 1e-3f)
        val curve = buildSceneCurve(params, sceneMax)
        for (index in 0 until pointCount) {
            val input = tableInputForIndex(index, pointCount)
            if (input <= MIN_CURVE_INPUT) {
                output[outputOffset + index] = lowDetailGain(params)
                continue
            }
            val sceneLinear = input / safeInputScale
            val outputLinear = sampleSceneCurve(curve, sceneLinear)
            output[outputOffset + index] = (outputLinear / max(sceneLinear, MIN_CURVE_INPUT))
                .coerceIn(0.05f, MAX_GAIN_VALUE)
        }
    }

    private fun buildSceneCurve(params: HdrPgtmCurveParams, sceneMax: Float): SceneToneCurve {
        val anchors = buildSceneAnchors(params, sceneMax)
        val inputs = FloatArray(anchors.size) { anchors[it].first }
        val outputs = FloatArray(anchors.size) { anchors[it].second }
        return SceneToneCurve(
            inputs = inputs,
            outputs = outputs,
            tangents = monotoneTangents(inputs, outputs)
        )
    }

    private fun buildSceneAnchors(params: HdrPgtmCurveParams, sceneMax: Float): List<Pair<Float, Float>> {
        val anchors = ArrayList<Pair<Float, Float>>(24)
        fun addAnchor(scene: Float, output: Float) {
            if (!scene.isFinite() || scene <= 0f || scene >= sceneMax) return
            val previous = anchors.lastOrNull()?.second ?: 0f
            anchors += scene to output
                .coerceAtLeast(previous + 1e-5f)
                .coerceAtMost(1f - 1e-5f)
        }
        anchors += 0f to 0f
        addAnchor(SCENE_ULTRA_BLACK_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_ULTRA_BLACK_ANCHOR))
        addAnchor(SCENE_BLACK_DETAIL_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_BLACK_DETAIL_ANCHOR))
        addAnchor(SCENE_DARK_DETAIL_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_DARK_DETAIL_ANCHOR))
        addAnchor(SCENE_DEEP_SHADOW_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_DEEP_SHADOW_ANCHOR))
        addAnchor(SCENE_DEEP_SHADOW_DETAIL_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_DEEP_SHADOW_DETAIL_ANCHOR))
        addAnchor(SCENE_SHADOW_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_SHADOW_ANCHOR))
        addAnchor(SCENE_SHADOW_DETAIL_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_SHADOW_DETAIL_ANCHOR))
        addAnchor(SCENE_LOWER_SHADOW_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_LOWER_SHADOW_ANCHOR))
        addAnchor(SCENE_LOWER_LOW_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_LOWER_LOW_ANCHOR))
        addAnchor(SCENE_LOW_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_LOW_ANCHOR))
        addAnchor(SCENE_LOW_DETAIL_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_LOW_DETAIL_ANCHOR))
        addAnchor(SCENE_UPPER_SHADOW_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_UPPER_SHADOW_ANCHOR))
        addAnchor(SCENE_PRE_TOE_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_PRE_TOE_ANCHOR))
        addAnchor(SCENE_TOE_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_TOE_ANCHOR))
        addAnchor(SCENE_UPPER_TOE_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_UPPER_TOE_ANCHOR))
        addAnchor(SCENE_TOE_MID_JOIN_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_TOE_MID_JOIN_ANCHOR))
        addAnchor(SCENE_LOWER_MID_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_LOWER_MID_ANCHOR))
        addAnchor(SCENE_MID_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_MID_ANCHOR))
        addAnchor(SCENE_UPPER_MID_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_UPPER_MID_ANCHOR))
        addAnchor(SCENE_HALF_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_HALF_ANCHOR))
        addAnchor(SCENE_WHITE_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_WHITE_ANCHOR))
        addAnchor(SCENE_BRIGHT_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_BRIGHT_ANCHOR))
        addAnchor(SCENE_SUPER_WHITE_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_SUPER_WHITE_ANCHOR))
        addAnchor(SCENE_EXTREME_WHITE_ANCHOR, sceneAnchorOutput(params, sceneMax, SCENE_EXTREME_WHITE_ANCHOR))
        anchors += sceneMax to max(1f, (anchors.lastOrNull()?.second ?: 0f) + 1e-5f)
        return anchors
    }

    private fun sceneAnchorOutput(
        params: HdrPgtmCurveParams,
        sceneMax: Float,
        sceneLinear: Float,
    ): Float {
        val safeScene = sceneLinear.coerceIn(MIN_CURVE_INPUT, sceneMax)
        val midOutput = params.midOutput
            .coerceIn(SCENE_MID_ANCHOR * MIN_MID_GAIN, SCENE_MID_ANCHOR * MAX_MID_GAIN)
        val midOutputEv = log2(midOutput / SCENE_MID_ANCHOR)
        val lowGain = lowDetailGain(params)
        val lowerTargetGain = max(midOutput / SCENE_MID_ANCHOR, lowGain * params.lowRangeRetention)
        val lowerGain = lerp(
            lowGain,
            lowerTargetGain,
            smoothStep(params.lowRangeStart, params.lowRangeEnd, safeScene)
        )
        val lowerOutput = safeScene * lowerGain
        val sourceUpperEv = log2(sceneMax / SCENE_MID_ANCHOR).coerceAtLeast(0.01f)
        val sourceEv = log2(safeScene / SCENE_MID_ANCHOR).coerceIn(0f, sourceUpperEv)
        val displayUpperEv = log2(1f / SCENE_MID_ANCHOR)
        val compressedRangeEv = max(displayUpperEv - midOutputEv, 0.01f)
        val t = (sourceEv / sourceUpperEv).coerceIn(0f, 1f)
        val shoulderT = hdrRangeShoulder(t, params.shoulderPower, params.highlightPressure)
        val upperOutput = SCENE_MID_ANCHOR * 2.0f.pow(midOutputEv + compressedRangeEv * shoulderT)
        val midJoin = ((safeScene - SCENE_LOWER_MID_ANCHOR) /
            max(SCENE_MID_ANCHOR - SCENE_LOWER_MID_ANCHOR, 1e-6f))
            .coerceIn(0f, 1f)
        return lerp(lowerOutput, upperOutput, midJoin)
            .coerceIn(0f, 1f)
    }

    private fun monotoneTangents(inputs: FloatArray, outputs: FloatArray): FloatArray {
        val count = inputs.size
        if (count <= 1) return FloatArray(count)
        val slopes = FloatArray(count - 1)
        for (index in 0 until count - 1) {
            slopes[index] = (outputs[index + 1] - outputs[index]) /
                max(inputs[index + 1] - inputs[index], 1e-6f)
        }
        val tangents = FloatArray(count)
        tangents[0] = slopes[0]
        tangents[count - 1] = slopes[count - 2]
        for (index in 1 until count - 1) {
            tangents[index] = 0.5f * (slopes[index - 1] + slopes[index])
        }
        for (index in 0 until count - 1) {
            val slope = slopes[index]
            if (slope <= 0f) {
                tangents[index] = 0f
                tangents[index + 1] = 0f
                continue
            }
            val a = tangents[index] / slope
            val b = tangents[index + 1] / slope
            val magnitude = sqrt(a * a + b * b)
            if (magnitude > 3f) {
                val scale = 3f / magnitude
                tangents[index] = scale * a * slope
                tangents[index + 1] = scale * b * slope
            }
        }
        return tangents
    }

    private fun lowDetailGain(params: HdrPgtmCurveParams): Float {
        val midGain = params.midOutput / SCENE_MID_ANCHOR
        return max(
            params.blackGain,
            midGain * params.lowDetailGainFactor
        ).coerceIn(MIN_BLACK_GAIN, MAX_BLACK_GAIN)
    }

    private fun sampleSceneCurve(curve: SceneToneCurve, sceneLinear: Float): Float {
        if (sceneLinear <= 0f) return 0f
        val inputs = curve.inputs
        val outputs = curve.outputs
        val tangents = curve.tangents
        for (index in 0 until inputs.lastIndex) {
            val startX = inputs[index]
            val endX = inputs[index + 1]
            if (sceneLinear <= endX) {
                val span = max(endX - startX, 1e-6f)
                val t = ((sceneLinear - startX) / span)
                    .coerceIn(0f, 1f)
                val t2 = t * t
                val t3 = t2 * t
                val h00 = 2f * t3 - 3f * t2 + 1f
                val h10 = t3 - 2f * t2 + t
                val h01 = -2f * t3 + 3f * t2
                val h11 = t3 - t2
                return (h00 * outputs[index] +
                    h10 * span * tangents[index] +
                    h01 * outputs[index + 1] +
                    h11 * span * tangents[index + 1])
                    .coerceIn(outputs[index], outputs[index + 1])
            }
        }
        return outputs.last()
    }

    private fun hdrPgtmInputWeights(inputScale: Float): FloatArray {
        val scale = sanitizeInputScale(inputScale)
        return FloatArray(MAP_INPUT_WEIGHT_COUNT) { index ->
            BASE_INPUT_WEIGHTS[index] * scale
        }
    }

    private fun hdrRangeMidGain(global: HdrPgtmCellStats, sceneHdrStrength: Float): Float {
        val hdrGain = lerp(2.36f, 2.46f, sceneHdrStrength)
        val baseGain = lerp(1.90f, hdrGain, sceneHdrStrength)
        val lowSceneLift = (1f - smoothStep(0.055f, 0.18f, global.p50)) *
            smoothStep(0.45f, 0.95f, global.p98)
        return (baseGain * 2.0f.pow(0.34f * lowSceneLift))
            .coerceIn(MIN_MID_GAIN, MAX_MID_GAIN)
    }

    private fun sceneDynamicRangeCompression(global: HdrPgtmCellStats, sceneMax: Float): Float {
        val tailInput = max(max(global.inputTailP95, global.p995Input), global.p98)
        val percentileRangeEv = log2((global.p98 + 0.006f) / (global.p10 + 0.006f))
            .coerceIn(0f, 8f)
        val tailRangeEv = log2((tailInput + 0.020f) / (global.p10 + 0.006f))
            .coerceIn(0f, 8f)
        val sceneMaxStrength = smoothStep(1.65f, 3.20f, sceneMax)
        val percentileStrength = smoothStep(2.2f, 4.8f, percentileRangeEv)
        val tailStrength = smoothStep(2.6f, 5.8f, tailRangeEv)
        val highlightStrength = smoothStep(0.08f, 0.24f, global.highlightFraction) *
            smoothStep(0.55f, 0.90f, global.p98)
        return (sceneMaxStrength * max(max(percentileStrength, tailStrength), highlightStrength))
            .coerceIn(0f, 1f)
    }

    private fun hdrRangeCenterOffsetEv(
        global: HdrPgtmCellStats,
        highlightPressure: Float,
        hdrStrength: Float,
    ): Float {
        val lowRangePressure = 1f - smoothStep(0.020f, 0.38f, global.p90)
        val highRangePressure = smoothStep(0.18f, 0.88f, global.p90)
        return (
            0.035f * lowRangePressure -
                0.16f * highlightPressure -
                0.10f * highRangePressure * hdrStrength
            ).coerceIn(-0.18f, 0.32f)
    }

    private fun hdrRangeBlackGain(
        midGain: Float,
        sceneHdrStrength: Float,
        rangeCenterEv: Float,
        highlightPressure: Float,
        rangeCompression: Float,
        lowToneMidCompression: Float,
        denseLowToneTail: Float,
        highlightTailCompression: Float,
    ): Float {
        val baseToeLift = lerp(0.18f, 0.04f, lowToneMidCompression)
        val rangeToeLift = lerp(baseToeLift, 0.78f, sceneHdrStrength) *
            lerp(1f, 0.54f, rangeCompression)
        return (midGain * (1f + rangeToeLift) *
            2.0f.pow(0.48f * rangeCenterEv - 0.42f * highlightPressure) *
            lerp(1f, 0.14f, highlightTailCompression) *
            lerp(1f, 0.89f, denseLowToneTail))
            .coerceIn(MIN_BLACK_GAIN, MAX_BLACK_GAIN)
    }

    private fun hdrRangeLowDetailGainFactor(
        global: HdrPgtmCellStats,
        sceneMax: Float,
        denseLowToneTail: Float,
    ): Float {
        val compactScene = 1f - smoothStep(1.34f, 1.62f, sceneMax)
        val lowHighlightDensity = lowDetailHighlightDensityGate(global)
        val flatUpperTone = 1f - smoothStep(
            LOW_DETAIL_FLAT_UPPER_START,
            LOW_DETAIL_FLAT_UPPER_END,
            global.p98
        )
        val lowMedianTone = lerp(0.55f, 1f, 1f - smoothStep(0.14f, 0.24f, global.p50))
        val reduction = (compactScene * lowHighlightDensity * flatUpperTone * lowMedianTone).coerceIn(0f, 1f)
        val usableHighlightTail = highlightTailCompressionStrength(global)
        val localTailContrast = localTailContrastStrength(global)
        val saturatedHighlightCell = smoothStep(0.70f, 0.98f, global.highlightFraction) *
            smoothStep(0.94f, 1.0f, global.p98)
        return (LOW_DETAIL_MID_GAIN_FACTOR *
            lerp(1f, 0.66f, reduction) *
            lerp(1f, 0.32f, usableHighlightTail) *
            lerp(1f, 0.30f, localTailContrast) *
            lerp(1f, 1.08f, saturatedHighlightCell) *
            lerp(1f, 0.92f, denseLowToneTail))
            .coerceIn(0.42f, LOW_DETAIL_MID_GAIN_FACTOR)
    }

    private fun highlightTailCompressionStrength(global: HdrPgtmCellStats): Float {
        val brightTailMedianGate = 1f - smoothStep(0.55f, 0.78f, global.p50)
        val brightTailCell = smoothStep(0.62f, 0.90f, global.p98) * brightTailMedianGate
        val brightRangeContrast = smoothStep(0.80f, 0.94f, global.p98) *
            smoothStep(
                2.00f,
                2.90f,
                log2((global.p98 + 0.006f) / (global.p10 + 0.006f))
            ) *
            (1f - smoothStep(0.12f, 0.28f, global.highlightFraction))
        val highlightTailCell = max(
            max(brightTailCell, brightRangeContrast),
            localTailContrastStrength(global)
        )
        val uniformSaturatedHighlight = (1f - smoothStep(
            1.00f,
            2.10f,
            log2((global.p98 + 0.006f) / (global.p10 + 0.006f))
        ))
        val saturatedHighlightCell = smoothStep(0.18f, 0.50f, global.highlightFraction) *
            smoothStep(0.88f, 0.98f, global.p98) *
            uniformSaturatedHighlight
        return (highlightTailCell * (1f - saturatedHighlightCell)).coerceIn(0f, 1f)
    }

    private fun localTailContrastStrength(global: HdrPgtmCellStats): Float {
        val medianGate = smoothStep(0.030f, 0.075f, global.p50) *
            (1f - smoothStep(0.32f, 0.48f, global.p50))
        val upperTail = smoothStep(0.42f, 0.64f, global.p98) *
            smoothStep(
                1.80f,
                2.80f,
                log2((global.p98 + 0.006f) / (global.p50 + 0.006f))
            )
        val fullTail = smoothStep(0.44f, 0.62f, global.p98) *
            smoothStep(
                2.20f,
                3.00f,
                log2((global.p98 + 0.006f) / (global.p10 + 0.006f))
            )
        return (max(upperTail, fullTail) * medianGate)
            .coerceIn(0f, 1f)
    }

    private fun lowTablePlateauStrength(
        global: HdrPgtmCellStats,
        sceneMax: Float,
        denseLowToneTail: Float,
        highlightTailCompression: Float,
        highlightPressure: Float,
    ): Float {
        val darkFlatHdrCell = smoothStep(2.15f, 3.20f, sceneMax) *
            (1f - smoothStep(0.12f, 0.22f, global.p98)) *
            (1f - smoothStep(0.030f, 0.12f, global.highlightFraction))
        val saturatedHighlightCell = smoothStep(0.72f, 0.92f, highlightPressure)
        return max(
            max(denseLowToneTail, highlightTailCompression),
            max(darkFlatHdrCell, saturatedHighlightCell)
        ).coerceIn(0f, 1f)
    }

    private fun moderateToneGainTrim(
        global: HdrPgtmCellStats,
        sceneMax: Float,
    ): Float {
        val compactScene = 1f - smoothStep(1.55f, 2.10f, sceneMax)
        val moderateHighlightDensity = smoothStep(0.035f, 0.055f, global.highlightFraction) *
            (1f - smoothStep(0.085f, 0.140f, global.highlightFraction))
        val midToneGate = smoothStep(0.18f, 0.25f, global.p50) *
            (1f - smoothStep(0.32f, 0.38f, global.p50))
        val upperToneGate = smoothStep(0.30f, 0.36f, global.p98) *
            (1f - smoothStep(0.42f, 0.48f, global.p98))
        return (compactScene * moderateHighlightDensity * midToneGate * upperToneGate)
            .coerceIn(0f, 1f)
    }

    private fun lowDetailHighlightDensityGate(global: HdrPgtmCellStats): Float {
        val sparseHighlight = 1f - smoothStep(
            LOW_DETAIL_SPARSE_HIGHLIGHT_START,
            LOW_DETAIL_SPARSE_HIGHLIGHT_END,
            global.highlightFraction
        )
        val moderateHighlight = smoothStep(
            LOW_DETAIL_MODERATE_HIGHLIGHT_START,
            LOW_DETAIL_MODERATE_HIGHLIGHT_FULL,
            global.highlightFraction
        ) * (1f - smoothStep(
            LOW_DETAIL_MODERATE_HIGHLIGHT_FULL,
            LOW_DETAIL_MODERATE_HIGHLIGHT_END,
            global.highlightFraction
        ))
        return max(sparseHighlight, moderateHighlight)
    }

    private fun hdrRangeLowToneMidCompression(
        global: HdrPgtmCellStats,
        sceneMax: Float,
    ): Float {
        val compactScene = 1f - smoothStep(1.24f, 1.58f, sceneMax)
        val sparseHighlight = 1f - smoothStep(0.010f, 0.045f, global.highlightFraction)
        val lowUpperTone = 1f - smoothStep(0.24f, 0.42f, global.p90)
        val lowHighlightTone = 1f - smoothStep(0.30f, 0.48f, global.p98)
        return (compactScene * sparseHighlight * lowUpperTone * lowHighlightTone)
            .coerceIn(0f, 1f)
    }

    private fun denseLowToneTailStrength(
        global: HdrPgtmCellStats,
        sceneMax: Float,
    ): Float {
        return (smoothStep(2.20f, 3.40f, sceneMax) *
            smoothStep(0.10f, 0.16f, global.highlightFraction) *
            (1f - smoothStep(0.24f, 0.36f, global.p98)))
            .coerceIn(0f, 1f)
    }

    private fun compactFlatLowToneStrength(
        global: HdrPgtmCellStats,
        sceneMax: Float,
    ): Float {
        return ((1f - smoothStep(1.34f, 1.62f, sceneMax)) *
            smoothStep(0.040f, 0.070f, global.highlightFraction) *
            (1f - smoothStep(0.36f, 0.44f, global.p98)))
            .coerceIn(0f, 1f)
    }

    private fun hdrRangeLowRangeRetention(
        denseLowToneTail: Float,
        compactFlatLowTone: Float,
        lowToneMidCompression: Float,
    ): Float {
        return (0.76f +
            0.05f * denseLowToneTail +
            0.10f * compactFlatLowTone +
            0.08f * lowToneMidCompression)
            .coerceIn(0.76f, 0.94f)
    }

    private fun hdrRangeLowRangeStart(
        denseLowToneTail: Float,
        highlightTailCompression: Float,
    ): Float {
        val denseStart = lerp(SCENE_DEEP_SHADOW_ANCHOR, LOW_RANGE_DENSE_TAIL_START, denseLowToneTail)
        val highlightStart = lerp(SCENE_DEEP_SHADOW_ANCHOR, LOW_RANGE_HIGHLIGHT_TAIL_START, highlightTailCompression)
        return max(denseStart, highlightStart)
    }

    private fun hdrRangeLowRangeEnd(
        denseLowToneTail: Float,
        compactFlatLowTone: Float,
        highlightTailCompression: Float,
    ): Float {
        val denseEnd = (lerp(SCENE_LOWER_MID_ANCHOR, LOW_RANGE_DENSE_TAIL_END, denseLowToneTail) +
            LOW_RANGE_COMPACT_TAIL_END_BOOST * compactFlatLowTone)
            .coerceIn(SCENE_LOWER_MID_ANCHOR, LOW_RANGE_DENSE_TAIL_END)
        val highlightEnd = lerp(SCENE_LOWER_MID_ANCHOR, LOW_RANGE_HIGHLIGHT_TAIL_END, highlightTailCompression)
        return max(denseEnd, highlightEnd)
    }

    private fun hdrRangeShadowGainEffect(
        global: HdrPgtmCellStats,
        sceneMax: Float,
        denseLowToneTail: Float,
        compactFlatLowTone: Float,
    ): Float {
        val hdrScene = smoothStep(1.10f, 2.60f, sceneMax)
        val lowToneScene = 1f - smoothStep(0.34f, 0.52f, global.p98)
        val usableHighlight = smoothStep(0.006f, 0.060f, global.highlightFraction)
        return (0.055f +
            0.105f * hdrScene * lowToneScene +
            0.210f * denseLowToneTail +
            0.060f * compactFlatLowTone +
            0.060f * usableHighlight * lowToneScene)
            .coerceIn(0f, 0.52f)
    }

    private fun hdrRangeHighlightGainEffect(
        global: HdrPgtmCellStats,
        sceneMax: Float,
        denseLowToneTail: Float,
    ): Float {
        val hdrScene = smoothStep(1.08f, 3.20f, sceneMax)
        val tailReach = smoothStep(1.18f, 3.80f, max(global.inputTailP99, global.maxInput))
        val highlightDensity = smoothStep(0.012f, 0.18f, global.highlightFraction)
        val lowToneHighlight = 1f - smoothStep(0.38f, 0.58f, global.p98)
        return (0.130f +
            0.240f * hdrScene +
            0.150f * tailReach +
            0.135f * highlightDensity * lowToneHighlight +
            0.150f * denseLowToneTail)
            .coerceIn(0f, 0.82f)
    }

    private fun hdrRangeToeSlope(sceneHdrStrength: Float, highlightPressure: Float): Float {
        return (0.74f + 0.08f * sceneHdrStrength - 0.05f * highlightPressure)
            .coerceIn(MIN_TOE_SLOPE, MAX_TOE_SLOPE)
    }

    private fun hdrRangeShoulderPower(
        global: HdrPgtmCellStats,
        effectiveUpperRangeEv: Float,
        highlightPressure: Float,
        hdrStrength: Float,
    ): Float {
        val gcamRangeEv = GCAM_HDR_UPPER_RANGE_EV - GCAM_HDR_LOWER_RANGE_EV
        val normalizedRange = (effectiveUpperRangeEv / gcamRangeEv).coerceIn(0f, 1f)
        val lowToneSlopeBoost = 1f - smoothStep(0.45f, 0.70f, global.p98)
        return (1.02f +
            0.50f * normalizedRange +
            0.08f * hdrStrength -
            0.34f * highlightPressure +
            0.10f * lowToneSlopeBoost)
            .coerceIn(MIN_SHOULDER_POWER, MAX_SHOULDER_POWER)
    }

    private fun hdrRangeShoulder(t: Float, shoulderPower: Float, highlightPressure: Float): Float {
        val safeT = t.coerceIn(0f, 1f)
        val safePower = shoulderPower.coerceIn(MIN_SHOULDER_POWER, MAX_SHOULDER_POWER)
        val safePressure = highlightPressure.coerceIn(0f, 1f)
        val base = 1f - (1f - safeT).pow(safePower)
        val kneeLift = 0.035f * safePressure *
            smoothStep(0.68f, 0.82f, safeT) *
            (1f - smoothStep(0.88f, 0.96f, safeT))
        val rolloff = 0.265f * safePressure *
            smoothStep(0.72f, 0.98f, safeT) *
            safeT
        val terminalRolloff = 0.045f *
            smoothStep(0.90f, 0.99f, safeT) *
            safeT
        return (base + kneeLift - rolloff - terminalRolloff).coerceIn(0f, 1f)
    }

    private fun hdrPgtmInputScaleForStats(global: HdrPgtmCellStats): Float {
        val tailP95 = global.inputTailP95.takeIf { it.isFinite() && it > 0f }
            ?: global.p995Input.takeIf { it.isFinite() && it > 0f }
            ?: global.p98.takeIf { it.isFinite() && it > 0f }
            ?: MIN_SCENE_MAX
        val tailP98 = max(tailP95, global.inputTailP98.takeIf { it.isFinite() && it > 0f } ?: tailP95)
        val tailP99 = max(tailP98, global.inputTailP99.takeIf { it.isFinite() && it > 0f } ?: tailP98)
        val maxInput = max(tailP99, global.maxInput.takeIf { it.isFinite() && it > 0f } ?: tailP99)
        val baseSceneMax = hdrPgtmSceneMaxFromTailStats(
            global = global,
            tailP95 = tailP95,
            tailP98 = tailP98,
            tailP99 = tailP99,
            maxInput = maxInput
        )
        val sceneMax = baseSceneMax.coerceIn(MIN_SCENE_MAX, MAX_SCENE_MAX)
        return sanitizeInputScale(1f / sceneMax)
    }

    private fun hdrPgtmSceneMaxFromTailStats(
        global: HdrPgtmCellStats,
        tailP95: Float,
        tailP98: Float,
        tailP99: Float,
        maxInput: Float,
    ): Float {
        val highlightDensity = global.highlightFraction.coerceIn(0f, 1f)
        val outlierGapEv = log2((tailP99 + 0.04f) / (tailP98 + 0.04f))
        val tailUsability = tailOutlierUsability(outlierGapEv)
        val sparseOutlierStrength = smoothStep(0.50f, 0.95f, outlierGapEv) * tailUsability
        val isolatedHighlightStrength = smoothStep(0.025f, 0.08f, highlightDensity) *
            (1f - smoothStep(0.10f, 0.18f, highlightDensity)) *
            tailUsability
        val broadHighlightStrength = smoothStep(0.08f, 0.17f, highlightDensity)
        val denseHighlightStrength = smoothStep(
            SCENE_DENSE_HIGHLIGHT_START,
            SCENE_DENSE_HIGHLIGHT_FULL,
            highlightDensity
        )
        val baseSceneMax = min(tailP95 * SCENE_BASE_TAIL_FACTOR, tailP98)
        val outlierSceneMax = lerp(baseSceneMax, tailP99, sparseOutlierStrength)
        val isolatedHighlightSceneMax = lerp(
            outlierSceneMax,
            max(outlierSceneMax, tailP99 * 1.06f),
            isolatedHighlightStrength
        )
        val broadHighlightSceneMax = lerp(
            isolatedHighlightSceneMax,
            max(isolatedHighlightSceneMax, max(tailP95, tailP98 * 0.98f)),
            broadHighlightStrength * (1f - denseHighlightStrength)
        )
        val denseHighlightSceneMax = lerp(
            broadHighlightSceneMax,
            denseHighlightSceneMaxTarget(global, tailP95, tailP99),
            denseHighlightStrength
        )
        val expandedTailByPercentile = tailP99 * SCENE_TAIL_EXPANSION_FACTOR
        val compactLowHighlightTail = (
            (1f - smoothStep(0.30f, 0.42f, global.p90)) *
                (1f - smoothStep(0.34f, 0.46f, global.p98)) *
                (1f - smoothStep(0.018f, 0.055f, highlightDensity))
            ).coerceIn(0f, 1f)
        val expandedTailTarget = lerp(
            expandedTailByPercentile,
            min(expandedTailByPercentile, maxInput * SCENE_TAIL_MAX_INPUT_FACTOR),
            compactLowHighlightTail
        )
        val expandedTailSceneMax = max(
            denseHighlightSceneMax,
            expandedTailTarget
        )
        val statsSceneMax = lerp(
            denseHighlightSceneMax,
            expandedTailSceneMax,
            sceneTailExpansionStrength(global)
        )
        return adjustSceneMaxForToneDistribution(global, statsSceneMax)
            .coerceIn(MIN_SCENE_MAX, MAX_SCENE_MAX)
    }

    private fun adjustSceneMaxForToneDistribution(
        global: HdrPgtmCellStats,
        sceneMax: Float,
    ): Float {
        val toneSeparationEv = log2((global.p98 + 0.006f) / (global.p50 + 0.006f))
            .coerceIn(0f, 4f)
        val separatedHighlight = smoothStep(0.52f, 0.62f, toneSeparationEv) *
            smoothStep(0.16f, 0.24f, global.highlightFraction)
        val flatDenseHighlight = smoothStep(0.20f, 0.28f, global.highlightFraction) *
            (1f - smoothStep(0.46f, 0.60f, toneSeparationEv))
        val compactLowHighlight = (1f - smoothStep(0.015f, 0.050f, global.highlightFraction)) *
            (1f - smoothStep(0.44f, 0.50f, global.p98))
        val compactModerateHighlight = smoothStep(0.035f, 0.060f, global.highlightFraction) *
            (1f - smoothStep(0.075f, 0.110f, global.highlightFraction)) *
            (1f - smoothStep(0.36f, 0.44f, global.p98))
        return sceneMax *
            lerp(1f, 1.10f, separatedHighlight) *
            lerp(1f, 0.74f, flatDenseHighlight) *
            lerp(1f, 0.92f, compactLowHighlight) *
            lerp(1f, 0.96f, compactModerateHighlight)
    }

    private fun tailOutlierUsability(outlierGapEv: Float): Float {
        return 1f - smoothStep(0.48f, 0.72f, outlierGapEv)
    }

    private fun denseHighlightSceneMaxTarget(
        global: HdrPgtmCellStats,
        tailP95: Float,
        tailP99: Float,
    ): Float {
        val denseBrightness = smoothStep(0.55f, 0.62f, global.p98)
        val lowToneDenseHighlight = 1f - smoothStep(0.30f, 0.42f, global.p98)
        val baseTailFactor = lerp(0.96f, 0.92f, lowToneDenseHighlight)
        val tailFactor = lerp(baseTailFactor, 1.12f, denseBrightness)
        val upperBound = max(MIN_SCENE_MAX, max(tailP95, tailP99 * 1.02f))
        return (tailP95 * tailFactor)
            .coerceIn(MIN_SCENE_MAX, upperBound)
    }

    private fun sceneHdrStrength(global: HdrPgtmCellStats, inputScale: Float): Float {
        val sceneMax = 1f / sanitizeInputScale(inputScale)
        val sceneMaxStrength = smoothStep(1.12f, 2.35f, sceneMax)
        val globalDynamicRangeEv = log2((global.p98 + 0.006f) / (global.p10 + 0.006f))
            .coerceIn(0f, 8f)
        val contrastStrength = smoothStep(1.8f, 5.5f, globalDynamicRangeEv)
        return (sceneMaxStrength +
            (1f - sceneMaxStrength) * SCENE_TAIL_HDR_STRENGTH * contrastStrength)
            .coerceIn(0f, 1f)
    }

    private fun sceneTailExpansionStrength(global: HdrPgtmCellStats): Float {
        val tailInput = max(global.inputTailP99, global.p999Input)
        if (!tailInput.isFinite() || tailInput <= 0f) return 0f
        val tailP98 = max(global.inputTailP98, global.p995Input)
        val outlierGapEv = log2((tailInput + 0.04f) / (tailP98 + 0.04f))
        val localTailGapEv = log2((tailInput + 0.04f) / (global.p98 + 0.04f))
        val medianToneGate = midToneTailGate(global)
        val upperToneGate = 1f - smoothStep(0.26f, 0.58f, global.p90)
        val highlightToneGate = 1f - smoothStep(0.24f, 0.52f, global.p98)
        val tailGapStrength = smoothStep(0.82f, 1.55f, localTailGapEv)
        val maxTailGate = tailExpansionMaxInputGate(global, tailInput)
        return (medianToneGate * upperToneGate * highlightToneGate * tailGapStrength *
            maxTailGate *
            tailOutlierUsability(outlierGapEv) *
            SCENE_TAIL_EXPANSION_STRENGTH_GAIN)
            .coerceIn(0f, 1f)
    }

    private fun tailExpansionMaxInputGate(global: HdrPgtmCellStats, tailInput: Float): Float {
        val maxInput = max(global.maxInput, tailInput)
        if (!maxInput.isFinite() || maxInput <= 0f) return 0f
        val maxTailGapEv = log2((maxInput + 0.04f) / (tailInput + 0.04f))
        val sparseTailGate = smoothStep(SCENE_TAIL_MAX_GAP_START_EV, SCENE_TAIL_MAX_GAP_FULL_EV, maxTailGapEv)
        val denseHighlightGate = smoothStep(
            SCENE_DENSE_HIGHLIGHT_EXPANSION_START,
            SCENE_DENSE_HIGHLIGHT_EXPANSION_FULL,
            global.highlightFraction
        )
        return max(sparseTailGate, denseHighlightGate)
    }

    private fun midToneTailGate(global: HdrPgtmCellStats): Float {
        return 1f - smoothStep(0.18f, 0.48f, global.p50)
    }

    private fun sanitizeInputScale(inputScale: Float): Float {
        return inputScale.takeIf { it.isFinite() }
            ?.coerceIn(1e-4f, 1.0f)
            ?: 1e-4f
    }

    private fun tableInputForIndex(index: Int, pointCount: Int): Float {
        if (pointCount <= 1) return 0f
        return if (index == pointCount - 1) {
            1f
        } else {
            index.toFloat() / pointCount.toFloat()
        }
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

    private data class SceneToneCurve(
        val inputs: FloatArray,
        val outputs: FloatArray,
        val tangents: FloatArray,
    )
}
