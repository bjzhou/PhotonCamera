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
    fun photonKeepsGoogleDomainWhileAdaptingItsSceneBrightness() {
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
            fusionParameters = DngPhotonProfileGainTableGenerator.PHOTON_FUSION_PARAMETERS,
        ) ?: error("Expected direct Google PGTM")

        assertEquals(directGoogle.gamma, photon.gamma, 0f)
        assertArrayEquals(directGoogle.mapInputWeights, photon.mapInputWeights, 0f)
        assertTrue(
            "Brightness target must change the fusion curve",
            !directGoogle.gains.contentEquals(photon.gains),
        )
        val target = PhotonPgtmBrightnessModel.resolve(fixture.globalStats)
            ?: error("Expected Photon brightness target")
        val actual = finalPhotonOutputForScene(photon, target.sceneAnchor)
        assertEquals(target.displayTarget, actual, 0.004f)
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
    fun centeredFusionHitsPre3e320SceneBrightnessTargets() {
        val cases = historicalBrightnessCases()
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
                maxInput = case.maxInput,
                linearMean = case.linearMean,
                logAverage = case.logAverage,
            )
            val map = generatePhotonMap(fixture)
            val target = PhotonPgtmBrightnessModel.resolve(fixture.globalStats)
                ?: error("Expected target for ${case.name}")
            val actual = finalPhotonOutputForScene(map, target.sceneAnchor)
            val errorEv = abs(log2(actual / target.displayTarget))
            HistoricalBrightnessResult(
                case = case,
                targetDisplayAnchor = target.displayTarget,
                actualDisplayAnchor = actual,
                errorEv = errorEv,
            )
        }
        assertTrue(
            results.joinToString(separator = "\n") { result ->
                "${result.case.name}: expected=${result.targetDisplayAnchor} " +
                    "actual=${result.actualDisplayAnchor} errorEv=${result.errorEv}"
            },
            results.all { it.errorEv <= 0.04f },
        )
    }

    @Test
    fun pre3e320WideFieldUsesHistoricalLogAverageLift() {
        val stats = testGlobalStats(
            p10 = 0.0046890248f,
            p50 = 0.035560552f,
            p90 = 0.35547075f,
            p98 = 0.4203099f,
            p995 = 0.44679728f,
            p999 = 0.46304873f,
            maxInput = 0.5280757f,
            linearMean = 0.114991106f,
            logAverage = 0.039605092f,
            highlightFraction = 0f,
        )
        val target = PhotonPgtmBrightnessModel.resolve(stats) ?: error("Expected target")

        assertEquals(
            PhotonPgtmBrightnessAnchorSource.LOG_AVERAGE,
            target.anchorSource,
        )
        assertEquals(2.24f, target.exposureLiftEv, 1e-5f)
        assertEquals(0.039605092f * 2.0f.pow(2.24f), target.displayTarget, 1e-5f)
        assertEquals(9f, target.dynamicRangeEv, 0f)
    }

    @Test
    fun sparseHighlightsUseTheMainHighlightPopulationForExposure() {
        val ranges = PhotonPgtmBrightnessModel.highlightRanges(
            p90 = 0.20524885f,
            p98 = 0.45892385f,
            p995 = 0.5724387f,
            p999 = 0.6364626f,
            sceneMiddle = 0.09018845f,
        )
        val tailLift = PhotonPgtmBrightnessModel.displayExposureLiftEv(ranges.tailRangeEv)
        val exposureLift = PhotonPgtmBrightnessModel.displayExposureLiftEv(ranges.exposureRangeEv)

        assertTrue(ranges.tailRangeEv in 2.81f..2.83f)
        assertTrue(ranges.exposureRangeEv in 1.18f..1.20f)
        assertEquals(0.20524885f, ranges.exposureReference, 1e-6f)
        assertEquals(1f, ranges.sparseStrength, 0f)
        assertTrue(exposureLift - tailLift in -1.39f..-1.37f)
    }

    @Test
    fun separatedHighlightScenesDoNotRaiseTheWholeFrameExposure() {
        val saturatedTarget = PhotonPgtmBrightnessModel.resolve(
            testGlobalStats(
                p10 = 0.01f,
                p50 = 0.064226665f,
                p90 = 2.1271088f,
                p98 = 3.989237f,
                p995 = 5f,
                p999 = 6.0202312f,
                logAverage = 0.07215811f,
            )
        ) ?: error("Expected saturated sparse-highlight target")
        val separatedTarget = PhotonPgtmBrightnessModel.resolve(
            testGlobalStats(
                p10 = 0.01f,
                p50 = 0.0600047f,
                p90 = 0.21020813f,
                p98 = 0.88294554f,
                p995 = 0.94f,
                p999 = 0.9819474f,
                logAverage = 0.06115667f,
            )
        ) ?: error("Expected separated sparse-highlight target")

        assertEquals(0.26f, saturatedTarget.displayTarget, 0f)
        assertTrue(separatedTarget.exposureRangeEv in 1.77f..1.79f)
        assertTrue(separatedTarget.displayTarget < 0.08f)
    }

    @Test
    fun pre3e320DngPairRetainsItsMeasuredBrightnessRelationship() {
        fun displayEv(
            logAverage: Float,
            p90: Float,
            p98: Float,
            p995: Float,
            p999: Float,
        ): Float {
            val ranges = PhotonPgtmBrightnessModel.highlightRanges(
                p90 = p90,
                p98 = p98,
                p995 = p995,
                p999 = p999,
                sceneMiddle = logAverage,
            )
            return log2(logAverage) +
                PhotonPgtmBrightnessModel.displayExposureLiftEv(ranges.exposureRangeEv)
        }

        val dng2840DisplayEv = displayEv(
            logAverage = 0.0932018935f,
            p90 = 0.263932749f,
            p98 = 0.3304134763f,
            p995 = 0.3685588609f,
            p999 = 0.3981607637f,
        )
        val dng2842DisplayEv = displayEv(
            logAverage = 0.07615876645f,
            p90 = 0.2486532208f,
            p98 = 0.2975876967f,
            p995 = 0.3287509693f,
            p999 = 0.3566421426f,
        )

        assertTrue(abs(dng2842DisplayEv - dng2840DisplayEv) <= 0.12f)
    }

    @Test
    fun missingLogAverageFallsBackToP50WithoutChangingTheModel() {
        val target = PhotonPgtmBrightnessModel.resolve(
            testGlobalStats(
                p10 = 0.035187688f,
                p50 = 0.08524494f,
                p90 = 0.14404307f,
                p98 = 0.16417652f,
                p995 = 0.17360601f,
                p999 = 0.18164334f,
                maxInput = 0.20776238f,
                logAverage = Float.NaN,
            )
        ) ?: error("Expected P50 fallback")

        assertEquals(PhotonPgtmBrightnessAnchorSource.P50_FALLBACK, target.anchorSource)
        assertEquals(0.08524494f, target.sceneAnchor, 0f)
    }

    @Test
    fun pre3e320ExtendedHdrShoulderKeepsSeparationNearWhite() {
        val map = generatePhotonMap(fixtureFor(dynamicRangeTiers().last()))
        val sceneWhite = 1f / map.mapInputWeights.sum()
        val output85 = finalPhotonOutputForScene(map, sceneWhite * 0.85f)
        val output95 = finalPhotonOutputForScene(map, sceneWhite * 0.95f)
        val output100 = finalPhotonOutputForScene(map, sceneWhite)
        val lowerHighlightSpan = output95 - output85
        val endpointSpan = output100 - output95

        assertTrue(
            "output85=$output85 output95=$output95 output100=$output100",
            endpointSpan > 0.008f,
        )
        assertTrue(
            "lowerHighlightSpan=$lowerHighlightSpan endpointSpan=$endpointSpan",
            endpointSpan > lowerHighlightSpan * 0.30f,
        )
    }

    @Test
    fun adaptiveBrightnessKeepsAnIntrinsicToeAndShoulder() {
        historicalBrightnessCases().forEach { case ->
            val fixture = uniformFixture(
                baselineExposureEv = case.baselineExposureEv,
                p10 = case.p10,
                p50 = case.p50,
                p90 = case.p90,
                p98 = case.p98,
                p995 = case.p995,
                p999 = case.p999,
                highlightFraction = case.highlightFraction,
                maxInput = case.maxInput,
                linearMean = case.linearMean,
                logAverage = case.logAverage,
            )
            val map = generatePhotonMap(fixture)
            val sceneWhite = 1f / map.mapInputWeights.sum()
            val shadowSpanEv = log2(
                finalPhotonOutputForScene(map, sceneWhite / 16f) /
                    finalPhotonOutputForScene(map, sceneWhite / 64f)
            )
            val output85 = finalPhotonOutputForScene(map, sceneWhite * 0.85f)
            val output95 = finalPhotonOutputForScene(map, sceneWhite * 0.95f)
            val output100 = finalPhotonOutputForScene(map, sceneWhite)
            assertTrue(
                "${case.name}: shadowSpanEv=$shadowSpanEv",
                shadowSpanEv >= 0.8f,
            )
            assertTrue(
                "${case.name}: output85=$output85 output95=$output95 output100=$output100",
                output85 < output95 && output95 < output100,
            )
            assertCurvesAreFiniteAndMonotonic(map, sceneWhite)
        }
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

    // Fixtures recovered from 3e320e229^, before Photon was replaced by fixed fusion parameters.
    private fun historicalBrightnessCases(): List<HistoricalBrightnessCase> = listOf(
        HistoricalBrightnessCase(
            "14:22 baseline-0 wide",
            0f,
            0.0046890248f,
            0.035560552f,
            0.35547075f,
            0.4203099f,
            0.44679728f,
            0.46304873f,
            0.5280757f,
            0.114991106f,
            0.039605092f,
            0f,
        ),
        HistoricalBrightnessCase(
            "18:53 baseline-3 sparse-tail",
            3f,
            0.022204947f,
            0.13993193f,
            0.21021318f,
            0.24911182f,
            0.27169982f,
            0.5752382f,
            1.249979f,
            0.1295324f,
            0.09985464f,
            6.739298E-5f,
        ),
        HistoricalBrightnessCase(
            "18:54 baseline-3 low-range",
            3f,
            0.045957692f,
            0.08537395f,
            0.13890508f,
            0.18092623f,
            0.2126976f,
            0.2313348f,
            0.27256522f,
            0.08850919f,
            0.07818398f,
            0f,
        ),
    )

    private fun dynamicRangeTiers(): List<DynamicRangeTier> = listOf(
        DynamicRangeTier(0.10f, 0.15f, 0.40f, 0.60f, 0.75f, 8f),
        DynamicRangeTier(0.020f, 0.10f, 0.50f, 0.75f, 1.05f, 8.5f),
        DynamicRangeTier(0.015f, 0.08f, 0.55f, 0.80f, 1.15f, 9f),
        DynamicRangeTier(0.012f, 0.07f, 0.55f, 0.85f, 1.20f, 9.5f),
    )

    private fun fixtureFor(tier: DynamicRangeTier): UniformFixture {
        return uniformFixture(
            p10 = tier.p10,
            p50 = tier.p50,
            p90 = tier.p90,
            p98 = tier.p98,
            p995 = tier.p999 * 0.92f,
            p999 = tier.p999,
            highlightFraction = 0f,
            maxInput = tier.p999,
            logAverage = tier.p50,
        )
    }

    private fun uniformFixture(
        baselineExposureEv: Float = 0f,
        p10: Float,
        p50: Float,
        p90: Float,
        p98: Float,
        p995: Float,
        p999: Float,
        highlightFraction: Float = 0.02f,
        maxInput: Float = p999,
        linearMean: Float = p50,
        logAverage: Float = p50,
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
                maxInput = maxInput,
                highlightFraction = highlightFraction,
                linearMean = linearMean,
                logAverage = logAverage,
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
        maxInput: Float = p999,
        highlightFraction: Float = 0f,
        linearMean: Float = p50,
        logAverage: Float = p50,
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
            linearMean = linearMean,
            logAverage = logAverage,
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

    private data class HistoricalBrightnessCase(
        val name: String,
        val baselineExposureEv: Float,
        val p10: Float,
        val p50: Float,
        val p90: Float,
        val p98: Float,
        val p995: Float,
        val p999: Float,
        val maxInput: Float,
        val linearMean: Float,
        val logAverage: Float,
        val highlightFraction: Float,
    )

    private data class HistoricalBrightnessResult(
        val case: HistoricalBrightnessCase,
        val targetDisplayAnchor: Float,
        val actualDisplayAnchor: Float,
        val errorEv: Float,
    )

    private data class DynamicRangeTier(
        val p10: Float,
        val p50: Float,
        val p90: Float,
        val p98: Float,
        val p999: Float,
        val dynamicRangeEv: Float,
    )

}
