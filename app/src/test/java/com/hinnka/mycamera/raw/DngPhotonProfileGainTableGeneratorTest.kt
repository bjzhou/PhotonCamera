package com.hinnka.mycamera.raw

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.abs
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.pow

class DngPhotonProfileGainTableGeneratorTest {
    @Test
    fun photonIsGoogleExposureFusionWithPhotonParameters() {
        val fixture = uniformFixture(
            p10 = 0.015f,
            p50 = 0.08f,
            p90 = 0.55f,
            p98 = 0.80f,
            p995 = 1.058f,
            p999 = 1.15f,
        )
        val photon = generatePhotonMap(fixture)
        val directGoogle = DngHdrProfileGainTableGenerator.forCellStats(
            width = fixture.width,
            height = fixture.height,
            baselineExposureEv = fixture.baselineExposureEv,
            packedCellStats = fixture.packedStats,
            denseGlobalStats = fixture.globalStats,
            fusionParameters = DngPhotonProfileGainTableGenerator.PHOTON_FUSION_PARAMETERS,
        ) ?: error("Expected direct Google PGTM")

        assertEquals(directGoogle.mapPointsH, photon.mapPointsH)
        assertEquals(directGoogle.mapPointsV, photon.mapPointsV)
        assertEquals(directGoogle.mapPointsN, photon.mapPointsN)
        assertEquals(directGoogle.gamma, photon.gamma, 0f)
        assertArrayEquals(directGoogle.mapInputWeights, photon.mapInputWeights, 0f)
        assertArrayEquals(directGoogle.gains, photon.gains, 0f)
    }

    @Test
    fun photonKeepsGoogleDomainAndWhiteEndpoint() {
        val fixture = uniformFixture(
            baselineExposureEv = 3.000001f,
            p10 = 0.008017952f,
            p50 = 0.06326936f,
            p90 = 1f,
            p98 = 1f,
            p995 = 12.278543f,
            p999 = 14.262961f,
            highlightFraction = 0.13241959f,
        )
        val photon = generatePhotonMap(fixture)
        val google = DngHdrProfileGainTableGenerator.forCellStats(
            width = fixture.width,
            height = fixture.height,
            baselineExposureEv = fixture.baselineExposureEv,
            packedCellStats = fixture.packedStats,
        ) ?: error("Expected Google PGTM")

        assertEquals(google.gamma, photon.gamma, 0f)
        assertArrayEquals(google.mapInputWeights, photon.mapInputWeights, 0f)
        val inputScale = photon.mapInputWeights.sum()
        val sceneWhite = 1f / inputScale
        repeat(photon.mapPointsH * photon.mapPointsV) { cell ->
            val photonTerminalGain = photon.gains[(cell + 1) * photon.mapPointsN - 1]
            val googleTerminalGain = google.gains[(cell + 1) * google.mapPointsN - 1]
            assertEquals(googleTerminalGain, photonTerminalGain, 1e-6f)
            assertEquals(1f, sceneWhite * photonTerminalGain, 2e-4f)
        }
        assertCurvesAreFiniteAndMonotonic(photon, sceneWhite)
    }

    @Test
    fun tunedGoogleFusionKeepsP50NearLegacyPhotonBrightness() {
        val cases = legacyP50Cases()
        val results = cases.map { case ->
            val fixture = uniformFixture(
                baselineExposureEv = case.baselineExposureEv,
                p10 = case.p10,
                p50 = case.p50,
                p90 = case.p90,
                p98 = case.p98,
                p995 = case.p995,
                p999 = case.p999,
                highlightFraction = case.highlightFraction,
            )
            val map = generatePhotonMap(fixture)
            val actual = finalPhotonOutputForScene(map, case.p50)
            val errorEv = abs(log2(actual / case.legacyDisplayP50))
            LegacyP50Result(
                case = case,
                actualDisplayP50 = actual,
                errorEv = errorEv,
            )
        }
        assertTrue(
            results.joinToString(separator = "\n") { result ->
                "${result.case.name}: expected=${result.case.legacyDisplayP50} " +
                    "actual=${result.actualDisplayP50} errorEv=${result.errorEv}"
            },
            results.all { it.errorEv <= 0.32f },
        )
    }

    @Test
    fun invalidInputStillUsesGoogleValidation() {
        assertNull(
            DngPhotonProfileGainTableGenerator.forCellStats(
                width = 0,
                height = 480,
                baselineExposureEv = 0f,
                packedCellStats = FloatArray(0),
                globalStats = testGlobalStats(0.1f),
                emitDiagnostics = false,
            )
        )
    }

    private fun generatePhotonMap(fixture: UniformFixture): DngProfileGainTableMap {
        return DngPhotonProfileGainTableGenerator.forCellStats(
            width = fixture.width,
            height = fixture.height,
            baselineExposureEv = fixture.baselineExposureEv,
            packedCellStats = fixture.packedStats,
            globalStats = fixture.globalStats,
            emitDiagnostics = false,
        ) ?: error("Expected Photon PGTM")
    }

    private fun legacyP50Cases(): List<LegacyP50Case> = listOf(
        LegacyP50Case("field-wide", 0f, 0.0046890248f, 0.035560552f, 0.35547075f, 0.4203099f, 0.44679728f, 0.46304873f, 0f, 0.16989206f),
        LegacyP50Case("device-baseline3", 3.000001f, 0.0013647672f, 0.01069319f, 0.08506412f, 0.28084078f, 0.508f, 0.7334936f, 0.005f, 0.04490788f),
        LegacyP50Case("dng2840", 0f, 0.020f, 0.085f, 0.263932749f, 0.3304134763f, 0.3685588609f, 0.3981607637f, 0f, 0.12226473f),
        LegacyP50Case("dng2842", 0f, 0.018f, 0.070f, 0.2486532208f, 0.2975876967f, 0.3287509693f, 0.3566421426f, 0f, 0.11336776f),
        LegacyP50Case("range8", 0f, 0.10f, 0.15f, 0.40f, 0.60f, 0.69f, 0.75f, 0f, 0.2347192f),
        LegacyP50Case("range8.5", 0f, 0.020f, 0.10f, 0.50f, 0.75f, 0.966f, 1.05f, 0f, 0.28000832f),
        LegacyP50Case("range9", 0f, 0.015f, 0.08f, 0.55f, 0.80f, 1.058f, 1.15f, 0f, 0.30003452f),
        LegacyP50Case("range9.5", 0f, 0.012f, 0.07f, 0.55f, 0.85f, 1.104f, 1.20f, 0f, 0.32003647f),
    )

    private fun uniformFixture(
        baselineExposureEv: Float = 0f,
        p10: Float,
        p50: Float,
        p90: Float,
        p98: Float,
        p995: Float,
        p999: Float,
        highlightFraction: Float = 0.02f,
    ): UniformFixture {
        val width = 640
        val height = 480
        val grid = DngHdrProfileGainTableGenerator.gridSizeFor(width, height)
        val cellCount = grid[0] * grid[1]
        val packedStats = FloatArray(
            cellCount * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE
        )
        repeat(cellCount) { cell ->
            val offset = cell * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE
            packedStats[offset] = p10
            packedStats[offset + 1] = p50
            packedStats[offset + 2] = p90
            packedStats[offset + 3] = p98
            packedStats[offset + 4] = highlightFraction
            packedStats[offset + 5] = 64f
            packedStats[offset + 6] = p995
            packedStats[offset + 7] = p999
        }
        return UniformFixture(
            width = width,
            height = height,
            baselineExposureEv = baselineExposureEv,
            packedStats = packedStats,
            globalStats = testGlobalStats(
                p50 = p50,
                p10 = p10,
                p90 = p90,
                p98 = p98,
                p995 = p995,
                p999 = p999,
                highlightFraction = highlightFraction,
            ),
        )
    }

    private fun testGlobalStats(
        p50: Float,
        p10: Float = p50,
        p90: Float = p50,
        p98: Float = p90,
        p995: Float = p98,
        p999: Float = p995,
        highlightFraction: Float = 0f,
    ): DngPgtmGlobalStats {
        return DngPgtmGlobalStats(
            p10 = p10,
            p50 = p50,
            p90 = p90,
            p98 = p98,
            p995 = p995,
            p999 = p999,
            maxInput = p999,
            highlightFraction = highlightFraction,
            linearMean = p50,
            logAverage = p50,
            shadowEdge = p10,
            shadowFoot = p10,
            sampleCount = 256,
        )
    }

    private fun finalPhotonOutputForScene(
        map: DngProfileGainTableMap,
        sceneLinear: Float,
    ): Float {
        val inputScale = map.mapInputWeights.sum()
        val tableInput = (sceneLinear * inputScale).coerceIn(0f, 1f).pow(map.gamma)
        val pgtmOutput = sceneLinear * medianGain(map, tableInput)
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
                val amount = ((input - x0) / (x1 - x0)).coerceIn(0f, 1f)
                return y0 + (y1 - y0) * amount
            }
            index += 2
        }
        return points.last()
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
        val lower = floor(position).toInt().coerceIn(0, map.mapPointsN - 1)
        val upper = (lower + 1).coerceAtMost(map.mapPointsN - 1)
        val fraction = position - lower
        val offset = cell * map.mapPointsN
        return map.gains[offset + lower] * (1f - fraction) +
            map.gains[offset + upper] * fraction
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
                assertTrue("cell=$cell index=$index gain=$gain", gain.isFinite() && gain >= 0.05f)
                assertTrue(
                    "cell=$cell index=$index previous=$previousOutput output=$output",
                    output + 1e-5f >= previousOutput,
                )
                previousOutput = max(previousOutput, output)
            }
        }
    }

    private fun log2(value: Float): Float {
        return (ln(value.toDouble()) / ln(2.0)).toFloat()
    }

    private data class UniformFixture(
        val width: Int,
        val height: Int,
        val baselineExposureEv: Float,
        val packedStats: FloatArray,
        val globalStats: DngPgtmGlobalStats,
    )

    private data class LegacyP50Case(
        val name: String,
        val baselineExposureEv: Float,
        val p10: Float,
        val p50: Float,
        val p90: Float,
        val p98: Float,
        val p995: Float,
        val p999: Float,
        val highlightFraction: Float,
        val legacyDisplayP50: Float,
    )

    private data class LegacyP50Result(
        val case: LegacyP50Case,
        val actualDisplayP50: Float,
        val errorEv: Float,
    )

}
