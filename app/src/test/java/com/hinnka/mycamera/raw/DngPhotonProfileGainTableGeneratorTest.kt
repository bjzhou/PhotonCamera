package com.hinnka.mycamera.raw

import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.pow

class DngPhotonProfileGainTableGeneratorTest {
    @Test
    fun moderateRangeTailCompressesToEightEvAndRaisesSceneMedian() {
        val width = 2800
        val height = 2102
        val grid = DngHdrProfileGainTableGenerator.gridSizeFor(width, height)
        val cellCount = grid[0] * grid[1]
        val stats = FloatArray(cellCount * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE)
        repeat(cellCount) { cell ->
            val offset = cell * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE
            stats[offset] = 0.045098f
            stats[offset + 1] = 0.113744f
            stats[offset + 2] = 0.243189f
            stats[offset + 3] = 0.277654f
            stats[offset + 4] = 0.023916f
            stats[offset + 5] = 64f
            stats[offset + 6] = 1.290788f
            stats[offset + 7] = 1.469952f
        }

        val map = DngPhotonProfileGainTableGenerator.forCellStats(
            width = width,
            height = height,
            baselineExposureEv = 0.64f,
            packedCellStats = stats,
            globalStats = testGlobalStats(
                p10 = 0.045098f,
                p50 = 0.113744f,
                p90 = 0.243189f,
                p98 = 0.277654f,
                p995 = 1.290788f,
                p999 = 1.469952f,
                maxInput = 1.469952f,
                highlightFraction = 0.023916f
            ),
            emitDiagnostics = false
        ) ?: error("Expected Photon PGTM")

        val inputScale = map.mapInputWeights.sum()
        val sceneWhite = 1f / inputScale
        val nominalRawRight = 1f / 2.0f.pow(0.64f)
        val rawRight = sceneWhite * nominalRawRight
        val sourceBlackPoint = max(
            0.045098f / 2.0f.pow(4f),
            sceneWhite / 2.0f.pow(8.75f)
        )
        val blackOutput = sourceBlackPoint * medianGain(
            map,
            tableInputForScene(map, inputScale, sourceBlackPoint)
        )
        val finalBlackOutput = samplePhotonProfileCurve(blackOutput)
        val sceneMedian = 0.113744f
        val middleOutput = sceneMedian * medianGain(
            map,
            tableInputForScene(map, inputScale, sceneMedian)
        )
        val finalMiddleOutput = samplePhotonProfileCurve(middleOutput)
        val whiteOutput = sceneWhite * medianGain(map, tableInput = 1f)
        val finalWhiteOutput = samplePhotonProfileCurve(whiteOutput)
        val outputDynamicRangeEv = log2(finalWhiteOutput / finalBlackOutput)

        assertTrue("gamma=${map.gamma}", map.gamma == 0.5f)
        assertTrue("sceneWhite=$sceneWhite", sceneWhite in 1f..1.3001f)
        assertTrue(
            "rawRight=$rawRight nominal=$nominalRawRight",
            rawRight / nominalRawRight in 1f..1.3001f
        )
        assertTrue("outputDynamicRangeEv=$outputDynamicRangeEv", outputDynamicRangeEv in 7.8f..8.2f)
        assertTrue("finalMiddleOutput=$finalMiddleOutput", finalMiddleOutput in 0.165f..0.185f)
        assertTrue(
            "sceneMedian=$sceneMedian finalMiddleOutput=$finalMiddleOutput",
            finalMiddleOutput > sceneMedian * 1.45f
        )
        assertTrue("whiteOutput=$whiteOutput", whiteOutput in 0.98f..1.01f)
        assertCurvesAreFiniteAndMonotonic(map, sceneWhite)
    }

    @Test
    fun detailedCellGetsMoreLocalMicroContrastThanFlatCell() {
        val width = 1280
        val height = 960
        val grid = DngHdrProfileGainTableGenerator.gridSizeFor(width, height)
        val cellCount = grid[0] * grid[1]
        val stats = FloatArray(cellCount * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE)
        repeat(cellCount) { cell ->
            val offset = cell * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE
            stats[offset] = 0.12f
            stats[offset + 1] = 0.18f
            stats[offset + 2] = 0.24f
            stats[offset + 3] = 0.30f
            stats[offset + 4] = 0f
            stats[offset + 5] = 64f
            stats[offset + 6] = 0.35f
            stats[offset + 7] = 0.40f
        }
        stats[0] = 0.03f
        stats[1] = 0.18f
        stats[2] = 0.55f
        stats[3] = 0.72f
        stats[6] = 0.82f
        stats[7] = 0.90f

        val map = DngPhotonProfileGainTableGenerator.forCellStats(
            width = width,
            height = height,
            baselineExposureEv = 0f,
            packedCellStats = stats,
            globalStats = testGlobalStats(
                p10 = 0.12f,
                p50 = 0.18f,
                p90 = 0.24f,
                p98 = 0.30f,
                p995 = 0.35f,
                p999 = 0.40f,
                maxInput = 0.90f
            ),
            emitDiagnostics = false
        ) ?: error("Expected Photon PGTM")
        val inputScale = map.mapInputWeights.sum()
        val lowScene = 0.11f
        val highScene = 0.28f
        val lowTableInput = tableInputForScene(map, inputScale, lowScene)
        val highTableInput = tableInputForScene(map, inputScale, highScene)
        val detailedContrast = highScene * gainForCell(map, 0, highTableInput) /
            (lowScene * gainForCell(map, 0, lowTableInput))
        val flatContrast = highScene * gainForCell(map, 1, highTableInput) /
            (lowScene * gainForCell(map, 1, lowTableInput))

        assertTrue(
            "detailedContrast=$detailedContrast flatContrast=$flatContrast",
            detailedContrast > flatContrast * 1.08f
        )
    }

    @Test
    fun everyTierCompressesToItsDisplayRangeAndRaisesTheSceneMedian() {
        val cases = listOf(
            TierCase(0.10f, 0.15f, 0.40f, 0.60f, 0.75f, 8f, 0.18087f),
            TierCase(0.020f, 0.10f, 0.50f, 0.75f, 1.05f, 8.5f, 0.28f),
            TierCase(0.015f, 0.08f, 0.55f, 0.80f, 1.15f, 9f, 0.30f),
            TierCase(0.012f, 0.07f, 0.55f, 0.85f, 1.20f, 9.5f, 0.32f)
        )
        cases.forEach { tier ->
            val map = buildUniformMap(tier)
            val inputScale = map.mapInputWeights.sum()
            val sceneWhite = 1f / inputScale
            val sourceBlack = max(
                tier.p10 / 2.0f.pow(4f),
                sceneWhite / 2.0f.pow(tier.dynamicRangeEv + 0.75f)
            )
            val pgtmBlack = sourceBlack * medianGain(
                map,
                tableInputForScene(map, inputScale, sourceBlack)
            )
            val pgtmMiddle = tier.p50 * medianGain(
                map,
                tableInputForScene(map, inputScale, tier.p50)
            )
            val pgtmWhite = sceneWhite * medianGain(map, 1f)
            val finalBlack = samplePhotonProfileCurve(pgtmBlack)
            val finalMiddle = samplePhotonProfileCurve(pgtmMiddle)
            val finalWhite = samplePhotonProfileCurve(pgtmWhite)
            val outputRangeEv = log2(finalWhite / finalBlack)

            assertTrue(
                "tier=${tier.dynamicRangeEv} outputRangeEv=$outputRangeEv",
                outputRangeEv in (tier.dynamicRangeEv - 0.20f)..(tier.dynamicRangeEv + 0.20f)
            )
            assertTrue(
                "tier=${tier.dynamicRangeEv} finalMiddle=$finalMiddle",
                finalMiddle in (tier.displayMiddleGray - 0.015f)..(tier.displayMiddleGray + 0.015f)
            )
            assertTrue(
                "tier=${tier.dynamicRangeEv} p50=${tier.p50} finalMiddle=$finalMiddle",
                finalMiddle > tier.p50
            )
        }
    }

    @Test
    fun extendedHdrShoulderKeepsSeparationNearWhite() {
        val tier = TierCase(0.012f, 0.07f, 0.55f, 0.85f, 1.20f, 9.5f, 0.32f)
        val map = buildUniformMap(tier)
        val inputScale = map.mapInputWeights.sum()
        val sceneWhite = 1f / inputScale
        val output85 = finalOutputForScene(map, inputScale, sceneWhite * 0.85f)
        val output95 = finalOutputForScene(map, inputScale, sceneWhite * 0.95f)
        val output100 = finalOutputForScene(map, inputScale, sceneWhite)
        val lowerHighlightSpan = output95 - output85
        val endpointSpan = output100 - output95

        assertTrue(
            "output85=$output85 output95=$output95 output100=$output100",
            endpointSpan > 0.008f
        )
        assertTrue(
            "lowerHighlightSpan=$lowerHighlightSpan endpointSpan=$endpointSpan",
            endpointSpan > lowerHighlightSpan * 0.30f
        )
    }

    private fun buildUniformMap(tier: TierCase): DngProfileGainTableMap {
        val width = 640
        val height = 480
        val grid = DngHdrProfileGainTableGenerator.gridSizeFor(width, height)
        val cellCount = grid[0] * grid[1]
        val stats = FloatArray(cellCount * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE)
        repeat(cellCount) { cell ->
            val offset = cell * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE
            stats[offset] = tier.p10
            stats[offset + 1] = tier.p50
            stats[offset + 2] = tier.p90
            stats[offset + 3] = tier.p98
            stats[offset + 4] = 0.02f
            stats[offset + 5] = 64f
            stats[offset + 6] = tier.tailP99 * 0.92f
            stats[offset + 7] = tier.tailP99
        }
        return DngPhotonProfileGainTableGenerator.forCellStats(
            width = width,
            height = height,
            baselineExposureEv = 0f,
            packedCellStats = stats,
            globalStats = testGlobalStats(
                p10 = tier.p10,
                p50 = tier.p50,
                p90 = tier.p90,
                p98 = tier.p98,
                p995 = tier.tailP99 * 0.92f,
                p999 = tier.tailP99,
                maxInput = tier.tailP99,
                highlightFraction = 0f
            ),
            emitDiagnostics = false
        ) ?: error("Expected Photon PGTM for tier ${tier.dynamicRangeEv}")
    }

    private fun testGlobalStats(
        p10: Float,
        p50: Float,
        p90: Float,
        p98: Float,
        p995: Float,
        p999: Float,
        maxInput: Float,
        highlightFraction: Float = 0f,
    ): DngPgtmGlobalStats {
        return DngPgtmGlobalStats(
            p10 = p10,
            p50 = p50,
            p90 = p90,
            p98 = p98,
            p995 = p995,
            p999 = p999,
            maxInput = maxInput,
            highlightFraction = highlightFraction,
            linearMean = p50,
            logAverage = p50,
            sampleCount = 256
        )
    }

    private fun tableInputForScene(
        map: DngProfileGainTableMap,
        inputScale: Float,
        sceneLinear: Float,
    ): Float {
        return (sceneLinear * inputScale).coerceIn(0f, 1f).pow(map.gamma)
    }

    private fun finalOutputForScene(
        map: DngProfileGainTableMap,
        inputScale: Float,
        sceneLinear: Float,
    ): Float {
        val pgtmOutput = sceneLinear * medianGain(
            map,
            tableInputForScene(map, inputScale, sceneLinear)
        )
        return samplePhotonProfileCurve(pgtmOutput)
    }

    private fun samplePhotonProfileCurve(input: Float): Float {
        val points = DngProfileToneCurve.photonPgtmToneCurvePoints()
        var index = 0
        while (index + 3 < points.size) {
            val x0 = points[index]
            val y0 = points[index + 1]
            val x1 = points[index + 2]
            val y1 = points[index + 3]
            if (input <= x1) {
                val t = ((input - x0) / (x1 - x0)).coerceIn(0f, 1f)
                return y0 + (y1 - y0) * t
            }
            index += 2
        }
        return points.last()
    }

    private fun assertCurvesAreFiniteAndMonotonic(
        map: DngProfileGainTableMap,
        sceneWhite: Float,
    ) {
        repeat(map.mapPointsH * map.mapPointsV) { cell ->
            var previousOutput = 0f
            repeat(map.mapPointsN) { index ->
                val tableInput = if (index == map.mapPointsN - 1) {
                    1f
                } else {
                    index.toFloat() / map.mapPointsN.toFloat()
                }
                val sceneLinear = sceneWhite * tableInput.pow(1f / map.gamma)
                val gain = map.gains[cell * map.mapPointsN + index]
                val output = sceneLinear * gain
                assertTrue("cell=$cell index=$index gain=$gain", gain.isFinite() && gain in 0.05f..32f)
                assertTrue(
                    "cell=$cell index=$index previous=$previousOutput output=$output",
                    output + 1e-5f >= previousOutput
                )
                previousOutput = output
            }
        }
    }

    private fun medianGain(map: DngProfileGainTableMap, tableInput: Float): Float {
        val values = FloatArray(map.mapPointsH * map.mapPointsV) { cell ->
            gainForCell(map, cell, tableInput)
        }
        values.sort()
        return values[values.size / 2]
    }

    private fun gainForCell(map: DngProfileGainTableMap, cell: Int, tableInput: Float): Float {
        val position = tableInput.coerceIn(0f, 1f) * map.mapPointsN
        val i0 = floor(position).toInt().coerceIn(0, map.mapPointsN - 1)
        val i1 = (i0 + 1).coerceAtMost(map.mapPointsN - 1)
        val fraction = position - i0
        val offset = cell * map.mapPointsN
        return map.gains[offset + i0] * (1f - fraction) +
            map.gains[offset + i1] * fraction
    }

    private fun log2(value: Float): Float {
        return (ln(value.toDouble()) / ln(2.0)).toFloat()
    }

    private data class TierCase(
        val p10: Float,
        val p50: Float,
        val p90: Float,
        val p98: Float,
        val tailP99: Float,
        val dynamicRangeEv: Float,
        val displayMiddleGray: Float,
    )
}
