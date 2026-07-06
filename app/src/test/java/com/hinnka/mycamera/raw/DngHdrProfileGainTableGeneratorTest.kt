package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.pow

class DngHdrProfileGainTableGeneratorTest {
    @Test
    fun googleHdrToneCurveMatchesEmbeddedDngSamples() {
        val curve = DngProfileToneCurve.googleHdrToneCurvePoints()

        assertEquals(514, curve.size)
        assertEquals(0f, curve[0], 0f)
        assertEquals(0f, curve[1], 0f)
        assertEquals(0.104f, googleToneCurve(0.18f), 0.002f)
        assertEquals(0.5f, googleToneCurve(0.5f), 0.0001f)
        assertEquals(0.825f, googleToneCurve(0.75f), 0.002f)
        assertEquals(1f, curve[curve.lastIndex - 1], 0f)
        assertEquals(1f, curve[curve.lastIndex], 0f)
    }

    @Test
    fun dngDerivedSceneStatsMatchEmbeddedPixelPgtmSamples() {
        val failures = mutableListOf<String>()
        DNG_DERIVED_FIXTURES.forEach { fixture ->
            val map = DngHdrProfileGainTableGenerator.forCellStats(
                width = fixture.width,
                height = fixture.height,
                baselineExposureEv = fixture.baselineExposureEv,
                packedCellStats = packedStatsForTailProfile(
                    width = fixture.width,
                    height = fixture.height,
                    p10 = fixture.rimmP10,
                    p50 = fixture.rimmP50,
                    p90 = fixture.rimmP90,
                    p98 = fixture.rimmP98,
                    highlightFraction = fixture.rimmHighlightFraction,
                    tailP95 = fixture.rimmTailP95,
                    tailP98 = fixture.rimmTailP98,
                    tailP99 = fixture.rimmTailP99,
                    maxInput = fixture.rimmMaxInput
                )
            ) ?: error("Expected PGTM for ${fixture.sourceName}")

            assertTrue("${fixture.sourceName} invalid map", map.isValid)
            assertToneOutputMonotonic(map)
            assertOfficialPgtmInputWeights(map, fixture.sourceName)
            failures += nearFailure(
                label = "${fixture.sourceName} embedded weight sum",
                expected = fixture.embeddedWeightSum,
                actual = map.mapInputWeights.sum(),
                tolerance = fixture.weightTolerance
            )
            failures += nearFailure(
                label = "${fixture.sourceName} embedded headroom",
                expected = fixture.embeddedInputHeadroom,
                actual = effectiveInputHeadroom(map, fixture.baselineExposureEv),
                tolerance = fixture.headroomTolerance
            )
            val shadowGain = sampleGainAtIndex(map, 0)
            if (shadowGain !in fixture.shadowGainRange) {
                failures += "${fixture.sourceName} shadow gain=$shadowGain expected=${fixture.shadowGainRange}"
            }
            fixture.expectedGainP50?.let { expected ->
                failures += medianGainSeriesFailures(
                    map = map,
                    tableInputs = fixture.tableInputs ?: DENSE_TABLE_INPUTS,
                    expectedGains = expected,
                    tolerance = fixture.gainTolerance,
                    label = fixture.sourceName
                )
            }
        }
        assertTrue(failures.joinToString(separator = "\n"), failures.isEmpty())
    }

    @Test
    fun googleKeycapDngStatsMatchEmbeddedPgtmLowRangeCurve() {
        val map = DngHdrProfileGainTableGenerator.forCellStats(
            width = 4096,
            height = 3072,
            baselineExposureEv = GOOGLE_KEYCAP_BASELINE_EV,
            packedCellStats = packedStatsForTailProfile(
                width = 4096,
                height = 3072,
                p10 = 0.272827f,
                p50 = 0.344414f,
                p90 = 0.406222f,
                p98 = 0.429191f,
                highlightFraction = 0.038032f,
                tailP95 = 0.998236f,
                tailP98 = 1.243947f,
                tailP99 = 1.443504f,
                maxInput = 2.448398f
            )
        ) ?: error("Expected Google keycap DNG PGTM")

        assertTrue(map.isValid)
        assertToneOutputMonotonic(map)
        assertEquals(GOOGLE_KEYCAP_PGTM_WEIGHT_SUM, map.mapInputWeights.sum(), 0.045f)
        assertGainNear(map, tableInput = 0.005f, expected = 2.95f, tolerance = 0.38f)
        assertGainNear(map, tableInput = 0.010f, expected = 2.95f, tolerance = 0.36f)
        assertGainNear(map, tableInput = 0.015f, expected = 2.95f, tolerance = 0.35f)
        assertGainNear(map, tableInput = 0.02f, expected = 2.95f, tolerance = 0.34f)
        assertGainNear(map, tableInput = 0.03f, expected = 2.86f, tolerance = 0.30f)
        assertGainNear(map, tableInput = 0.04f, expected = 2.73f, tolerance = 0.28f)
        assertGainNear(map, tableInput = 0.05f, expected = 2.61f, tolerance = 0.24f)
        assertGainNear(map, tableInput = 0.06f, expected = 2.50f, tolerance = 0.22f)
        assertGainNear(map, tableInput = 0.07f, expected = 2.41f, tolerance = 0.20f)
        assertGainNear(map, tableInput = 0.08f, expected = 2.32f, tolerance = 0.18f)
        assertGainNear(map, tableInput = 0.09f, expected = 2.24f, tolerance = 0.17f)
        assertGainNear(map, tableInput = 0.10f, expected = 2.16f, tolerance = 0.16f)
        assertGainNear(map, tableInput = 0.11f, expected = 2.09f, tolerance = 0.15f)
        assertGainNear(map, tableInput = 0.12f, expected = 2.03f, tolerance = 0.14f)
        assertGainNear(map, tableInput = 0.13f, expected = 1.97f, tolerance = 0.13f)
        assertGainNear(map, tableInput = 0.14f, expected = 1.92f, tolerance = 0.13f)
        assertGainNear(map, tableInput = 0.16f, expected = 1.82f, tolerance = 0.13f)
        assertGainNear(map, tableInput = 0.18f, expected = 1.73f, tolerance = 0.13f)
        assertGainNear(map, tableInput = 0.28f, expected = 1.41f, tolerance = 0.12f)
        assertGainNear(map, tableInput = 0.50f, expected = 1.03f, tolerance = 0.08f)
        assertGainNear(map, tableInput = 0.75f, expected = 0.80f, tolerance = 0.06f)
        assertGainNear(map, tableInput = 1.00f, expected = 0.666f, tolerance = 0.025f)
        assertGoogleKeycapLowRangeOutputProfile(map)
        assertTrue("darkOutput=${0.03f * sampleGain(map, 0.03f * map.mapInputWeights.sum())}",
            0.03f * sampleGain(map, 0.03f * map.mapInputWeights.sum()) > 0.075f
        )
        assertTrue("midOutput=${0.18f * sampleGain(map, 0.18f * map.mapInputWeights.sum())}",
            0.18f * sampleGain(map, 0.18f * map.mapInputWeights.sum()) in 0.33f..0.41f
        )
    }

    @Test
    fun googleProvidedDngStatsMatchEmbeddedPgtmContrastCurve() {
        val map = DngHdrProfileGainTableGenerator.forCellStats(
            width = 4096,
            height = 3072,
            baselineExposureEv = 1.20f,
            packedCellStats = packedStatsForTailProfile(
                width = 4096,
                height = 3072,
                p10 = 0.283845f,
                p50 = 0.356112f,
                p90 = 0.436304f,
                p98 = 0.468235f,
                highlightFraction = 0.057847f,
                tailP95 = 1.277153f,
                tailP98 = 1.660754f,
                tailP99 = 2.696633f,
                maxInput = 3.887637f
            )
        ) ?: error("Expected Google provided DNG PGTM")

        assertTrue(map.isValid)
        assertToneOutputMonotonic(map)
        assertEquals(0.6720394f, map.mapInputWeights.sum(), 0.035f)
        assertGainSeriesNear(
            map = map,
            tableInputs = floatArrayOf(0.005f, 0.020f, 0.050f, 0.080f, 0.100f, 0.140f, 0.180f, 0.280f, 0.500f, 0.750f, 1.000f),
            expectedGains = floatArrayOf(3.005f, 3.005f, 2.644f, 2.341f, 2.182f, 1.930f, 1.740f, 1.413f, 1.030f, 0.808f, 0.674f),
            tolerance = 0.18f
        )
        assertTrue("darkOutput=${0.03f * sampleGain(map, 0.03f * map.mapInputWeights.sum())}",
            0.03f * sampleGain(map, 0.03f * map.mapInputWeights.sum()) < 0.092f
        )
        assertTrue("midOutput=${0.18f * sampleGain(map, 0.18f * map.mapInputWeights.sum())}",
            0.18f * sampleGain(map, 0.18f * map.mapInputWeights.sum()) in 0.32f..0.39f
        )
    }

    @Test
    fun localExposureOffsetDoesNotCreateExtraLift() {
        val width = 4096
        val height = 3072
        val grid = DngHdrProfileGainTableGenerator.gridSizeFor(width, height)
        val map = DngHdrProfileGainTableGenerator.forCellStats(
            width = width,
            height = height,
            baselineExposureEv = 1.20f,
            packedCellStats = packedStatsWithExposureOffsetRegion(width, height)
        ) ?: error("Expected PGTM for exposure-offset stats")

        val darkRegionCell = 0
        val centerCell = (grid[1] / 2) * grid[0] + grid[0] / 2
        val darkLowGain = sampleGain(map, 0.08f, darkRegionCell)
        val centerLowGain = sampleGain(map, 0.08f, centerCell)
        val darkMidGain = sampleGain(map, 0.18f, darkRegionCell)
        val centerMidGain = sampleGain(map, 0.18f, centerCell)

        assertTrue(
            "darkLowGain=$darkLowGain centerLowGain=$centerLowGain",
            darkLowGain <= centerLowGain * 1.06f
        )
        assertTrue(
            "darkMidGain=$darkMidGain centerMidGain=$centerMidGain",
            darkMidGain <= centerMidGain * 1.05f
        )
    }

    private fun packedStatsForTailProfile(
        width: Int,
        height: Int,
        p10: Float,
        p50: Float,
        p90: Float,
        p98: Float,
        highlightFraction: Float,
        tailP95: Float,
        tailP98: Float,
        tailP99: Float,
        maxInput: Float,
    ): FloatArray {
        val grid = DngHdrProfileGainTableGenerator.gridSizeFor(width, height)
        val cellCount = grid[0] * grid[1]
        return FloatArray(cellCount * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE).also { stats ->
            for (cell in 0 until cellCount) {
                val rank = (cell + 1).toFloat() / cellCount.toFloat()
                val tail = when {
                    rank <= 0.95f -> lerp(p98, tailP95, rank / 0.95f)
                    rank <= 0.98f -> lerp(tailP95, tailP98, (rank - 0.95f) / 0.03f)
                    rank <= 0.99f -> lerp(tailP98, tailP99, (rank - 0.98f) / 0.01f)
                    else -> lerp(tailP99, maxInput, (rank - 0.99f) / 0.01f)
                }
                val offset = cell * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE
                stats[offset] = p10
                stats[offset + 1] = p50
                stats[offset + 2] = p90
                stats[offset + 3] = p98.coerceIn(0f, 1f)
                stats[offset + 4] = highlightFraction
                stats[offset + 5] = 64f
                stats[offset + 6] = tail
                stats[offset + 7] = tail
            }
        }
    }

    private fun packedStatsWithExposureOffsetRegion(width: Int, height: Int): FloatArray {
        val grid = DngHdrProfileGainTableGenerator.gridSizeFor(width, height)
        val cellCount = grid[0] * grid[1]
        return FloatArray(cellCount * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE).also { stats ->
            for (y in 0 until grid[1]) {
                for (x in 0 until grid[0]) {
                    val cell = y * grid[0] + x
                    val exposureScale = if (x < grid[0] / 3 && y < grid[1] / 3) 0.62f else 1f
                    val offset = cell * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE
                    stats[offset] = 0.14f * exposureScale
                    stats[offset + 1] = 0.22f * exposureScale
                    stats[offset + 2] = 0.34f * exposureScale
                    stats[offset + 3] = 0.42f * exposureScale
                    stats[offset + 4] = 0.018f
                    stats[offset + 5] = 64f
                    stats[offset + 6] = 1.08f * exposureScale
                    stats[offset + 7] = 1.36f * exposureScale
                }
            }
        }
    }

    private fun assertToneOutputMonotonic(map: DngProfileGainTableMap) {
        val pointCount = map.mapPointsN
        val cellCount = map.mapPointsH * map.mapPointsV
        for (cell in 0 until cellCount) {
            var previousOutput = 0f
            val offset = cell * pointCount
            for (index in 0 until pointCount) {
                val input = tableInputForIndex(index, pointCount)
                val output = input * map.gains[offset + index]
                assertTrue(
                    "cell=$cell index=$index output=$output previous=$previousOutput",
                    output + 0.0001f >= previousOutput
                )
                previousOutput = maxOf(previousOutput, output)
            }
        }
    }

    private fun sampleGain(map: DngProfileGainTableMap, input: Float): Float {
        return sampleGain(map, input, cellIndex = 0)
    }

    private fun sampleGain(map: DngProfileGainTableMap, input: Float, cellIndex: Int): Float {
        val clamped = input.coerceIn(0f, 1f)
        val scaled = clamped * map.mapPointsN.coerceAtLeast(1)
        val i0 = scaled.toInt().coerceIn(0, map.mapPointsN - 1)
        val i1 = (i0 + 1).coerceIn(0, map.mapPointsN - 1)
        val t = scaled - i0.toFloat()
        val offset = cellIndex.coerceIn(0, map.mapPointsH * map.mapPointsV - 1) * map.mapPointsN
        return map.gains[offset + i0] * (1f - t) + map.gains[offset + i1] * t
    }

    private fun sampleMedianGain(map: DngProfileGainTableMap, input: Float): Float {
        val cellCount = map.mapPointsH * map.mapPointsV
        val gains = FloatArray(cellCount) { cell -> sampleGain(map, input, cell) }
        return percentile(gains, 0.50f)
    }

    private fun sampleGainAtIndex(map: DngProfileGainTableMap, index: Int): Float {
        return map.gains[index.coerceIn(0, map.mapPointsN - 1)]
    }

    private fun renderedOutputForPostBaselineSignal(map: DngProfileGainTableMap, input: Float): Float {
        val tableInput = (input.coerceAtLeast(0f) * map.mapInputWeights.sum()).coerceIn(0f, 1f)
        return input * sampleGain(map, tableInput)
    }

    private fun effectiveInputHeadroom(map: DngProfileGainTableMap, baselineExposureEv: Float): Float {
        return map.mapInputWeights.sum() * 2.0f.pow(baselineExposureEv)
    }

    private fun googleToneCurve(input: Float): Float {
        return curveSample(DngProfileToneCurve.googleHdrToneCurvePoints(), input)
    }

    private fun lerp(a: Float, b: Float, t: Float): Float {
        return a + (b - a) * t.coerceIn(0f, 1f)
    }

    private fun curveSample(points: FloatArray, input: Float): Float {
        val x = input.coerceIn(0f, 1f)
        var segment = 0
        while (segment < points.size / 2 - 2 && x > points[(segment + 1) * 2]) {
            segment++
        }
        val x0 = points[segment * 2]
        val y0 = points[segment * 2 + 1]
        val x1 = points[(segment + 1) * 2]
        val y1 = points[(segment + 1) * 2 + 1]
        val t = if (x1 == x0) 0f else ((x - x0) / (x1 - x0)).coerceIn(0f, 1f)
        return y0 + (y1 - y0) * t
    }

    private fun tableInputForIndex(index: Int, pointCount: Int): Float {
        if (pointCount <= 1) return 0f
        return if (index == pointCount - 1) {
            1f
        } else {
            index.toFloat() / pointCount.toFloat()
        }
    }

    private fun assertGainNear(
        map: DngProfileGainTableMap,
        tableInput: Float,
        expected: Float,
        tolerance: Float,
    ) {
        val actual = sampleGain(map, tableInput)
        assertEquals("tableInput=$tableInput actual=$actual expected=$expected", expected, actual, tolerance)
    }

    private fun assertGainSeriesNear(
        map: DngProfileGainTableMap,
        tableInputs: FloatArray,
        expectedGains: FloatArray,
        tolerance: Float,
        label: String = "PGTM",
    ) {
        require(tableInputs.size == expectedGains.size)
        val failures = tableInputs.indices.mapNotNull { index ->
            val input = tableInputs[index]
            val expected = expectedGains[index]
            val actual = sampleGain(map, input)
            if (abs(actual - expected) <= tolerance) {
                null
            } else {
                "$label tableInput=$input actual=$actual expected=$expected"
            }
        }
        assertTrue(failures.joinToString(separator = "\n"), failures.isEmpty())
    }

    private fun medianGainSeriesFailures(
        map: DngProfileGainTableMap,
        tableInputs: FloatArray,
        expectedGains: FloatArray,
        tolerance: Float,
        label: String,
    ): List<String> {
        require(tableInputs.size == expectedGains.size)
        return tableInputs.indices.mapNotNull { index ->
            val input = tableInputs[index]
            val expected = expectedGains[index]
            val actual = sampleMedianGain(map, input)
            if (abs(actual - expected) <= tolerance) {
                null
            } else {
                "$label p50Gain tableInput=$input actual=$actual expected=$expected"
            }
        }
    }

    private fun percentile(values: FloatArray, percentile: Float): Float {
        if (values.isEmpty()) return 0f
        values.sort()
        val k = (values.size - 1).toFloat() * percentile.coerceIn(0f, 1f)
        val lo = floor(k).toInt()
        val hi = ceil(k).toInt()
        if (lo == hi) return values[lo]
        return values[lo] * (hi - k) + values[hi] * (k - lo)
    }

    private fun nearFailure(
        label: String,
        expected: Float,
        actual: Float,
        tolerance: Float,
    ): List<String> {
        return if (abs(actual - expected) <= tolerance) {
            emptyList()
        } else {
            listOf("$label actual=$actual expected=$expected tolerance=$tolerance")
        }
    }

    private fun assertOfficialPgtmInputWeights(map: DngProfileGainTableMap, sourceName: String) {
        val normalizedWeights = map.mapInputWeights.map { it / map.mapInputWeights.sum() }
        assertEquals("$sourceName weight R", 0.1495f, normalizedWeights[0], 0.0001f)
        assertEquals("$sourceName weight G", 0.2935f, normalizedWeights[1], 0.0001f)
        assertEquals("$sourceName weight B", 0.0570f, normalizedWeights[2], 0.0001f)
        assertEquals("$sourceName weight min", 0.1250f, normalizedWeights[3], 0.0001f)
        assertEquals("$sourceName weight max", 0.3750f, normalizedWeights[4], 0.0001f)
    }

    private fun assertGoogleKeycapLowRangeOutputProfile(map: DngProfileGainTableMap) {
        val samples = floatArrayOf(
            0.080f, 0.085f, 0.090f, 0.095f, 0.100f, 0.105f, 0.110f,
            0.115f, 0.120f, 0.125f, 0.130f, 0.135f, 0.140f
        )
        val expectedOutputs = floatArrayOf(
            0.185364f, 0.193387f, 0.201181f, 0.208760f, 0.216135f, 0.223304f, 0.230243f,
            0.237050f, 0.243581f, 0.249959f, 0.256297f, 0.262396f, 0.268389f
        )
        val expectedSlopes = floatArrayOf(
            1.604631f, 1.558854f, 1.515782f, 1.474917f, 1.433899f, 1.387858f,
            1.361360f, 1.306116f, 1.275739f, 1.267608f, 1.219756f, 1.198601f
        )
        val outputs = samples.map { input -> input * sampleGain(map, input) }
        outputs.forEachIndexed { index, output ->
            assertEquals(
                "lowRangeOutput tableInput=${samples[index]} actual=$output expected=${expectedOutputs[index]}",
                expectedOutputs[index],
                output,
                0.007f
            )
        }
        val slopes = outputs.zipWithNext().mapIndexed { index, (a, b) ->
            (b - a) / (samples[index + 1] - samples[index])
        }
        slopes.forEachIndexed { index, slope ->
            assertEquals(
                "lowRangeSlope tableInput=${samples[index]}..${samples[index + 1]} " +
                    "actual=$slope expected=${expectedSlopes[index]}",
                expectedSlopes[index],
                slope,
                0.17f
            )
        }
    }

    private companion object {
        private const val GOOGLE_KEYCAP_BASELINE_EV = 1.46f
        private const val GOOGLE_KEYCAP_PGTM_HEADROOM = 1.8273006f
        private const val GOOGLE_KEYCAP_PGTM_WEIGHT_SUM = 0.6642112f

        private val DENSE_TABLE_INPUTS = floatArrayOf(
            0.0000f, 0.0025f, 0.0050f, 0.0075f, 0.0100f, 0.0150f, 0.0200f, 0.0275f,
            0.0350f, 0.0450f, 0.0500f, 0.0575f, 0.0650f, 0.0725f, 0.0800f, 0.0900f,
            0.1000f, 0.1100f, 0.1200f, 0.1300f, 0.1400f, 0.1600f, 0.1800f, 0.2200f,
            0.2500f, 0.2800f, 0.3200f, 0.3600f, 0.4200f, 0.5000f, 0.6000f, 0.7000f,
            0.7500f, 0.8200f, 0.9000f, 0.9500f, 1.0000f
        )

        private val BALANCED_TABLE_INPUTS = floatArrayOf(
            0.0000f, 0.0025f, 0.0050f, 0.0075f, 0.0100f, 0.0150f, 0.0200f, 0.0275f,
            0.0350f, 0.0450f, 0.0500f, 0.0575f, 0.0650f, 0.0725f, 0.0800f, 0.0900f,
            0.1000f, 0.1100f, 0.1200f, 0.1300f, 0.1400f, 0.1550f, 0.1800f, 0.2000f,
            0.2200f, 0.2500f, 0.2800f, 0.3200f, 0.3600f, 0.4200f, 0.5000f, 0.5800f,
            0.6600f, 0.7000f, 0.7500f, 0.8200f, 0.8800f, 0.9000f, 0.9300f, 0.9500f,
            0.9650f, 0.9800f, 0.9900f, 0.9950f, 0.9975f, 1.0000f
        )

        private val DNG_DERIVED_FIXTURES = listOf(
            DngDerivedPgtmFixture(
                sourceName = "PXL_20260704_204337991.RAW-02.ORIGINAL.dng",
                width = 4080,
                height = 3064,
                baselineExposureEv = 0.33f,
                embeddedWeightSum = 0.9379541f,
                embeddedInputHeadroom = 1.1790208f,
                rimmP10 = 0.069055f,
                rimmP50 = 0.091839f,
                rimmP90 = 0.116540f,
                rimmP98 = 0.124434f,
                rimmHighlightFraction = 0.000000f,
                rimmTailP95 = 0.355279f,
                rimmTailP98 = 0.404056f,
                rimmTailP99 = 0.436914f,
                rimmMaxInput = 0.490112f,
                shadowGainRange = 1.6f..2.6f,
                tableInputs = BALANCED_TABLE_INPUTS,
                expectedGainP50 = floatArrayOf(
                    2.029536f, 2.029536f, 2.029536f, 2.029536f, 2.029536f, 2.029536f,
                    2.029536f, 2.017259f, 1.995904f, 1.967620f, 1.953729f, 1.933178f,
                    1.912756f, 1.893285f, 1.874177f, 1.850001f, 1.826695f, 1.803774f,
                    1.781545f, 1.759975f, 1.739228f, 1.709089f, 1.661411f, 1.625170f,
                    1.590684f, 1.542494f, 1.496576f, 1.440400f, 1.391709f, 1.328843f,
                    1.252524f, 1.185841f, 1.126924f, 1.100058f, 1.068626f, 1.028111f,
                    0.996195f, 0.986084f, 0.971375f, 0.961862f, 0.954873f, 0.948007f,
                    0.943496f, 0.941260f, 0.940765f, 0.940765f
                ),
                gainTolerance = 0.17f,
                weightTolerance = 0.055f,
                headroomTolerance = 0.08f
            ),
            DngDerivedPgtmFixture(
                sourceName = "PXL_20260628_175619159.RAW-02.ORIGINAL.dng",
                width = 2048,
                height = 1536,
                baselineExposureEv = 0.99f,
                embeddedWeightSum = 0.5074623f,
                embeddedInputHeadroom = 1.0079140f,
                rimmP10 = 0.235049f,
                rimmP50 = 0.321880f,
                rimmP90 = 0.440227f,
                rimmP98 = 0.491983f,
                rimmHighlightFraction = 0.237798f,
                rimmTailP95 = 1.795726f,
                rimmTailP98 = 1.870457f,
                rimmTailP99 = 2.331631f,
                rimmMaxInput = 3.247468f,
                shadowGainRange = 2.6f..4.3f,
                expectedGainP50 = floatArrayOf(
                    3.461338f, 3.461338f, 3.461338f, 3.461338f, 3.461338f, 3.461338f,
                    3.461338f, 3.336530f, 3.133802f, 2.898788f, 2.795193f, 2.655045f,
                    2.531542f, 2.420754f, 2.322193f, 2.203573f, 2.099504f, 2.006125f,
                    1.922472f, 1.846751f, 1.777360f, 1.656811f, 1.554421f, 1.389232f,
                    1.288567f, 1.202840f, 1.105987f, 1.025570f, 0.927419f, 0.825583f,
                    0.728947f, 0.654740f, 0.623655f, 0.585323f, 0.547510f, 0.526535f,
                    0.508728f
                ),
                gainTolerance = 0.30f
            ),
            DngDerivedPgtmFixture(
                sourceName = "PXL_20260629_213614190.RAW-02.ORIGINAL.dng",
                width = 4096,
                height = 3072,
                baselineExposureEv = 1.40f,
                embeddedWeightSum = 0.7948943f,
                embeddedInputHeadroom = 2.0977387f,
                rimmP10 = 0.269476f,
                rimmP50 = 0.340033f,
                rimmP90 = 0.412840f,
                rimmP98 = 0.441493f,
                rimmHighlightFraction = 0.012258f,
                rimmTailP95 = 0.923412f,
                rimmTailP98 = 1.318924f,
                rimmTailP99 = 1.545061f,
                rimmMaxInput = 4.766730f,
                shadowGainRange = 2.0f..3.4f,
                expectedGainP50 = floatArrayOf(
                    2.433881f, 2.433881f, 2.433881f, 2.433881f, 2.433881f, 2.433881f,
                    2.433881f, 2.405049f, 2.354992f, 2.291888f, 2.261898f, 2.218633f,
                    2.177582f, 2.138278f, 2.100938f, 2.053486f, 2.008828f, 1.966325f,
                    1.926189f, 1.887988f, 1.851621f, 1.783574f, 1.721598f, 1.612500f,
                    1.541297f, 1.476947f, 1.400079f, 1.332454f, 1.244926f, 1.147889f,
                    1.049181f, 0.968663f, 0.933662f, 0.889399f, 0.844497f, 0.819041f,
                    0.797114f
                ),
                gainTolerance = 0.24f
            ),
            DngDerivedPgtmFixture(
                sourceName = "PXL_20260630_100426253.RAW-02.ORIGINAL.dng",
                width = 4096,
                height = 3072,
                baselineExposureEv = 1.83f,
                embeddedWeightSum = 0.6975967f,
                embeddedInputHeadroom = 2.4802149f,
                rimmP10 = 0.307800f,
                rimmP50 = 0.351503f,
                rimmP90 = 0.426102f,
                rimmP98 = 0.469566f,
                rimmHighlightFraction = 0.261387f,
                rimmTailP95 = 1.823842f,
                rimmTailP98 = 1.920961f,
                rimmTailP99 = 1.969608f,
                rimmMaxInput = 2.072667f,
                shadowGainRange = 2.2f..3.8f,
                expectedGainP50 = floatArrayOf(
                    2.938126f, 2.938126f, 2.938126f, 2.938126f, 2.938126f, 2.938126f,
                    2.938126f, 2.891436f, 2.792942f, 2.669011f, 2.614738f, 2.538647f,
                    2.467955f, 2.402280f, 2.341392f, 2.264403f, 2.195177f, 2.130476f,
                    2.070314f, 2.013801f, 1.961176f, 1.865585f, 1.779446f, 1.633619f,
                    1.540570f, 1.458329f, 1.360819f, 1.278129f, 1.174516f, 1.065314f,
                    0.958356f, 0.873501f, 0.837248f, 0.791938f, 0.746611f, 0.721189f,
                    0.699442f
                ),
                gainTolerance = 0.26f
            ),
            DngDerivedPgtmFixture(
                sourceName = "PXL_20260702_144246096.RAW-02.ORIGINAL.dng",
                width = 4096,
                height = 3072,
                baselineExposureEv = GOOGLE_KEYCAP_BASELINE_EV,
                embeddedWeightSum = GOOGLE_KEYCAP_PGTM_WEIGHT_SUM,
                embeddedInputHeadroom = GOOGLE_KEYCAP_PGTM_HEADROOM,
                rimmP10 = 0.272827f,
                rimmP50 = 0.344414f,
                rimmP90 = 0.406222f,
                rimmP98 = 0.429191f,
                rimmHighlightFraction = 0.038032f,
                rimmTailP95 = 0.998236f,
                rimmTailP98 = 1.243947f,
                rimmTailP99 = 1.443504f,
                rimmMaxInput = 2.448398f,
                shadowGainRange = 2.3f..3.3f
            ),
            DngDerivedPgtmFixture(
                sourceName = "PXL_20260702_230446193.RAW-02.ORIGINAL.dng",
                width = 4096,
                height = 3072,
                baselineExposureEv = 1.20f,
                embeddedWeightSum = 0.6720394f,
                embeddedInputHeadroom = 1.5439412f,
                rimmP10 = 0.283880f,
                rimmP50 = 0.356135f,
                rimmP90 = 0.436290f,
                rimmP98 = 0.468236f,
                rimmHighlightFraction = 0.057847f,
                rimmTailP95 = 1.277153f,
                rimmTailP98 = 1.660754f,
                rimmTailP99 = 2.696633f,
                rimmMaxInput = 3.887637f,
                shadowGainRange = 2.2f..3.7f,
                expectedGainP50 = floatArrayOf(
                    2.988932f, 2.988932f, 2.988932f, 2.988932f, 2.988932f, 2.988932f,
                    2.988932f, 2.929580f, 2.823456f, 2.691936f, 2.632088f, 2.547884f,
                    2.469565f, 2.396644f, 2.329094f, 2.246051f, 2.170225f, 2.101044f,
                    2.036580f, 1.977289f, 1.921968f, 1.823052f, 1.735409f, 1.588058f,
                    1.494819f, 1.414782f, 1.322162f, 1.242386f, 1.141060f, 1.032854f,
                    0.927313f, 0.843980f, 0.808448f, 0.764127f, 0.719831f, 0.695016f,
                    0.673810f
                ),
                gainTolerance = 0.26f
            ),
            DngDerivedPgtmFixture(
                sourceName = "PhotonCamera_20260704_223804.dng",
                width = 4096,
                height = 3072,
                baselineExposureEv = 0.98f,
                embeddedWeightSum = 0.8365770f,
                embeddedInputHeadroom = 1.6501193f,
                rimmP10 = 0.204276f,
                rimmP50 = 0.257364f,
                rimmP90 = 0.328286f,
                rimmP98 = 0.365104f,
                rimmHighlightFraction = 0.055410f,
                rimmTailP95 = 1.035434f,
                rimmTailP98 = 1.170545f,
                rimmTailP99 = 1.230469f,
                rimmMaxInput = 1.313306f,
                shadowGainRange = 1.7f..3.4f,
                tableInputs = BALANCED_TABLE_INPUTS,
                expectedGainP50 = floatArrayOf(
                    2.332110f, 2.332110f, 2.332110f, 2.332110f, 2.332110f, 2.332110f,
                    2.332110f, 2.308193f, 2.267080f, 2.215131f, 2.190485f, 2.155483f,
                    2.122859f, 2.091421f, 2.060914f, 2.025000f, 1.991229f, 1.957812f,
                    1.925079f, 1.893913f, 1.864003f, 1.820614f, 1.752480f, 1.701844f,
                    1.653044f, 1.585271f, 1.521480f, 1.445249f, 1.376621f, 1.287335f,
                    1.188969f, 1.108817f, 1.041345f, 1.011167f, 0.976263f, 0.931951f,
                    0.897597f, 0.886805f, 0.871180f, 0.861122f, 0.853757f, 0.846541f,
                    0.841810f, 0.839468f, 0.838950f, 0.838950f
                ),
                gainTolerance = 0.070f,
                weightTolerance = 0.030f,
                headroomTolerance = 0.06f
            ),
            DngDerivedPgtmFixture(
                sourceName = "PhotonCamera_20260705_071801.dng",
                width = 4096,
                height = 3072,
                baselineExposureEv = 1.64f,
                embeddedWeightSum = 0.2916877f,
                embeddedInputHeadroom = 0.9090933f,
                rimmP10 = 0.181586f,
                rimmP50 = 0.198066f,
                rimmP90 = 0.214809f,
                rimmP98 = 0.219718f,
                rimmHighlightFraction = 0.161018f,
                rimmTailP95 = 3.684094f,
                rimmTailP98 = 4.229066f,
                rimmTailP99 = 4.396879f,
                rimmMaxInput = 4.547501f,
                shadowGainRange = 3.0f..3.9f,
                expectedGainP50 = floatArrayOf(
                    3.565941f, 3.565941f, 3.565941f, 3.565941f, 3.565941f, 3.565941f,
                    3.565941f, 3.297646f, 2.915521f, 2.545277f, 2.397049f, 2.210206f,
                    2.054406f, 1.922145f, 1.808229f, 1.678387f, 1.568655f, 1.474137f,
                    1.391835f, 1.319495f, 1.255099f, 1.145871f, 1.056189f, 0.916869f,
                    0.836401f, 0.770297f, 0.698485f, 0.640170f, 0.570436f, 0.499898f,
                    0.434713f, 0.385786f, 0.365581f, 0.340904f, 0.316817f, 0.303566f,
                    0.292378f
                )
            )
        )
    }

    @Test
    fun testFindGapsInNewDng() {
        val statsFile = java.io.File("c:/Users/Hinnka/Projects/PhotonCamera/packed_stats_new.txt")
        if (!statsFile.exists()) {
            println("packed_stats_new.txt not found!")
            return
        }
        val statsText = statsFile.readText()
        val statsFloats = statsText.split(",").map { it.trim().toFloat() }.toFloatArray()
        
        val map = DngHdrProfileGainTableGenerator.forCellStats(
            width = 4096,
            height = 3072,
            baselineExposureEv = 1.64f,
            packedCellStats = statsFloats
        )!!

        val cellCount = 3072
        val cells = Array(cellCount) { index ->
            val offset = index * 8
            HdrPgtmCellStats(
                p10 = statsFloats[offset],
                p50 = statsFloats[offset + 1],
                p90 = statsFloats[offset + 2],
                p98 = statsFloats[offset + 3],
                highlightFraction = statsFloats[offset + 4],
                p995Input = statsFloats[offset + 6],
                p999Input = statsFloats[offset + 7],
                inputTailP95 = statsFloats[offset + 6],
                inputTailP98 = statsFloats[offset + 6],
                inputTailP99 = statsFloats[offset + 7],
                maxInput = statsFloats[offset + 7],
                sampleWeight = statsFloats[offset + 5]
            )
        }

        val googleGainsFile = java.io.File("c:/Users/Hinnka/Projects/PhotonCamera/google_gains_new.txt")
        if (!googleGainsFile.exists()) {
            println("google_gains_new.txt not found!")
            return
        }
        val googleLines = googleGainsFile.readLines()
        
        val gaps = mutableListOf<String>()
        val t_values = floatArrayOf(0.005f, 0.020f, 0.050f, 0.100f, 0.180f)
        
        for (cell in 0 until cellCount) {
            val x = cell % 64
            val y = cell / 64
            val stats = cells[cell]
            val googleVals = googleLines[cell].split(",").map { it.trim().toFloat() }
            
            for (idx in t_values.indices) {
                val google = googleVals[idx]
                val actual = sampleGain(map, t_values[idx], cell)
                val delta = actual - google
                
                if (delta < -0.15f) {
                    gaps.add(String.format("Cell %-4d (x=%-2d y=%-2d) t=%.3f: p10=%.4f p50=%.4f p98=%.4f | Google=%.3f App=%.3f | Delta=%.3f",
                        cell, x, y, t_values[idx], stats.p10, stats.p50, stats.p98, google, actual, delta))
                }
            }
        }
        
        println("CELLS WHERE APP IS DARKER THAN GOOGLE (Delta < -0.15)")
        println("=========================================================================")
        if (gaps.isEmpty()) {
            println("No cells found!")
        } else {
            gaps.take(100).forEach { println(it) }
            println("Total matching gaps: ${gaps.size}")
        }
        println("=========================================================================")
    }

    private data class DngDerivedPgtmFixture(
        val sourceName: String,
        val width: Int,
        val height: Int,
        val baselineExposureEv: Float,
        val embeddedWeightSum: Float,
        val embeddedInputHeadroom: Float,
        val rimmP10: Float,
        val rimmP50: Float,
        val rimmP90: Float,
        val rimmP98: Float,
        val rimmHighlightFraction: Float,
        val rimmTailP95: Float,
        val rimmTailP98: Float,
        val rimmTailP99: Float,
        val rimmMaxInput: Float,
        val shadowGainRange: ClosedFloatingPointRange<Float>,
        val tableInputs: FloatArray? = null,
        val expectedGainP50: FloatArray? = null,
        val gainTolerance: Float = 0.28f,
        val weightTolerance: Float = 0.035f,
        val headroomTolerance: Float = 0.10f,
    )
}
