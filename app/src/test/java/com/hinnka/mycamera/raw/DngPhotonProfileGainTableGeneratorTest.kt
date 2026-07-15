package com.hinnka.mycamera.raw

import org.junit.Ignore
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.pow

class DngPhotonProfileGainTableGeneratorTest {
    @Test
    fun compatibleWideRangeFieldCalibrationStaysWithinPointTwelveEv() {
        assertFieldCalibrationCases(
            listOf(
                ExposureCalibrationCase(
                    name = "14:22 baseline-0 wide-range",
                    baselineExposureEv = 0f,
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
                    reportedObservedRangeEv = 6.6257324f,
                    reportedExposureLiftEv = 2.47f,
                    reportedBrightnessErrorEv = 0.23f
                )
            )
        )
    }

    @Ignore(
        "This persisted field case predates log-average diagnostics. The new " +
            "exposure model requires the measured log average and must not " +
            "reconstruct it from p50."
    )
    @Test
    fun lowRangeFieldCalibrationWithoutLogAverage() {
        assertFieldCalibrationCases(
            listOf(
                ExposureCalibrationCase(
                    name = "14:18 baseline-0 low-range",
                    baselineExposureEv = 0f,
                    p10 = 0.035187688f,
                    p50 = 0.08524494f,
                    p90 = 0.14404307f,
                    p98 = 0.16417652f,
                    p995 = 0.17360601f,
                    p999 = 0.18164334f,
                    maxInput = 0.20776238f,
                    linearMean = null,
                    logAverage = null,
                    highlightFraction = 0f,
                    reportedObservedRangeEv = 2.3679657f,
                    reportedExposureLiftEv = 0.66f,
                    reportedBrightnessErrorEv = 0.39f
                )
            )
        )
    }

    @Test
    fun highlightRangeSeparatesOldScenesAndStabilizesNearIdenticalDngs() {
        val oldWideRange = log2(0.5752382f / 0.09985464f)
        val oldNarrowRange = log2(0.2313348f / 0.07818398f)
        assertTrue(
            "oldWide=$oldWideRange oldNarrow=$oldNarrowRange",
            oldWideRange - oldNarrowRange > 0.90f
        )

        val dng2840LogAverage = 0.0932018935f
        val dng2840P999 = 0.3981607637f
        val dng2842LogAverage = 0.07615876645f
        val dng2842P999 = 0.3566421426f
        val dng2840Range = log2(dng2840P999 / dng2840LogAverage)
        val dng2842Range = log2(dng2842P999 / dng2842LogAverage)
        assertTrue(
            "dng2840=$dng2840Range dng2842=$dng2842Range",
            kotlin.math.abs(dng2842Range - dng2840Range) < 0.15f
        )

        val dng2840DisplayEv = log2(dng2840LogAverage) +
            DngPhotonProfileGainTableGenerator.displayExposureLiftEv(dng2840Range)
        val dng2842DisplayEv = log2(dng2842LogAverage) +
            DngPhotonProfileGainTableGenerator.displayExposureLiftEv(dng2842Range)
        assertTrue(
            "dng2840DisplayEv=$dng2840DisplayEv dng2842DisplayEv=$dng2842DisplayEv",
            kotlin.math.abs(dng2842DisplayEv - dng2840DisplayEv) <= 0.12f
        )

        val normalHighlightCases = listOf(
            DngPhotonProfileGainTableGenerator.photonHighlightRanges(
                p90 = 0.263932749f,
                p98 = 0.3304134763f,
                p995 = 0.3685588609f,
                p999 = 0.3981607637f,
                sceneMiddle = 0.0932018935f
            ),
            DngPhotonProfileGainTableGenerator.photonHighlightRanges(
                p90 = 0.2486532208f,
                p98 = 0.2975876967f,
                p995 = 0.3287509693f,
                p999 = 0.3566421426f,
                sceneMiddle = 0.07615876645f
            ),
            DngPhotonProfileGainTableGenerator.photonHighlightRanges(
                p90 = 0.35547075f,
                p98 = 0.4203099f,
                p995 = 0.44679728f,
                p999 = 0.46304873f,
                sceneMiddle = 0.039605092f
            ),
            DngPhotonProfileGainTableGenerator.photonHighlightRanges(
                p90 = 0.21021318f,
                p98 = 0.24911182f,
                p995 = 0.27169982f,
                p999 = 0.5752382f,
                sceneMiddle = 0.09985464f
            ),
            DngPhotonProfileGainTableGenerator.photonHighlightRanges(
                p90 = 0.13890508f,
                p98 = 0.18092623f,
                p995 = 0.2126976f,
                p999 = 0.2313348f,
                sceneMiddle = 0.07818398f
            )
        )
        normalHighlightCases.forEach { ranges ->
            assertTrue("sparseStrength=${ranges.sparseStrength}", ranges.sparseStrength == 0f)
            assertTrue(
                "tail=${ranges.tailRangeEv} exposure=${ranges.exposureRangeEv}",
                kotlin.math.abs(ranges.exposureRangeEv - ranges.tailRangeEv) < 1e-5f
            )
        }
    }

    @Test
    fun separatedSparseHighlightsUseLogCenterAcrossHighlightGap() {
        val ranges = DngPhotonProfileGainTableGenerator.photonHighlightRanges(
            p90 = 0.20524885f,
            p98 = 0.45892385f,
            p995 = 0.5724387f,
            p999 = 0.6364626f,
            sceneMiddle = 0.09018845f
        )
        val tailLift = DngPhotonProfileGainTableGenerator.displayExposureLiftEv(
            ranges.tailRangeEv
        )
        val exposureLift = DngPhotonProfileGainTableGenerator.displayExposureLiftEv(
            ranges.exposureRangeEv
        )

        assertTrue("tailRange=${ranges.tailRangeEv}", ranges.tailRangeEv in 2.81f..2.83f)
        assertTrue(
            "exposureRange=${ranges.exposureRangeEv}",
            ranges.exposureRangeEv in 1.76f..1.78f
        )
        assertTrue("sparseStrength=${ranges.sparseStrength}", ranges.sparseStrength == 1f)
        assertTrue(
            "tailLift=$tailLift exposureLift=$exposureLift",
            exposureLift - tailLift in -1.39f..-1.37f
        )
    }

    @Test
    fun stronglySeparatedNearWhiteHighlightsDoNotForceMaximumExposureLift() {
        val ranges = DngPhotonProfileGainTableGenerator.photonHighlightRanges(
            p90 = 0.21023509f,
            p98 = 0.8875543f,
            p995 = 1.0032426f,
            p999 = 1.0724883f,
            sceneMiddle = 0.06121027f
        )
        val exposureLift = DngPhotonProfileGainTableGenerator.displayExposureLiftEv(
            ranges.exposureRangeEv
        )
        val displayMiddle = 0.06121027f * 2.0f.pow(exposureLift)

        assertTrue("gap=${ranges.highlightGapEv}", ranges.highlightGapEv in 2.07f..2.09f)
        assertTrue("sparseStrength=${ranges.sparseStrength}", ranges.sparseStrength == 1f)
        assertTrue(
            "exposureReference=${ranges.exposureReference}",
            ranges.exposureReference in 0.431f..0.433f
        )
        assertTrue(
            "exposureRange=${ranges.exposureRangeEv}",
            ranges.exposureRangeEv in 2.81f..2.83f
        )
        assertTrue("exposureLift=$exposureLift", exposureLift in 1.65f..1.67f)
        assertTrue("displayMiddle=$displayMiddle", displayMiddle in 0.192f..0.194f)
    }

    @Test
    fun baselineExposureHeadroomRemainsInsideProfileGainTableDomain() {
        val width = 1280
        val height = 960
        val grid = DngHdrProfileGainTableGenerator.gridSizeFor(width, height)
        val cellCount = grid[0] * grid[1]
        val stats = FloatArray(
            cellCount * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE
        )
        repeat(cellCount) { cell ->
            val offset = cell * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE
            stats[offset] = 0.008017952f
            stats[offset + 1] = 0.06326936f
            stats[offset + 2] = 1f
            stats[offset + 3] = 1f
            stats[offset + 4] = 0.13241959f
            stats[offset + 5] = 256f
            stats[offset + 6] = 12.278543f
            stats[offset + 7] = 14.262961f
        }
        val baselineGain = 2.0f.pow(3.000001f)
        val map = DngPhotonProfileGainTableGenerator.forCellStats(
            width = width,
            height = height,
            baselineExposureEv = 3.000001f,
            packedCellStats = stats,
            globalStats = testGlobalStats(
                p10 = 0.008017952f,
                p50 = 0.06326936f,
                p90 = 1f,
                p98 = 1f,
                p995 = 12.278543f,
                p999 = 14.262961f,
                maxInput = 14.262961f,
                highlightFraction = 0.13241959f,
                linearMean = 0.51709765f,
                logAverage = 0.07712941f,
                shadowEdge = 0.025163911f,
                shadowFoot = 0.0035361373f
            ),
            emitDiagnostics = false
        ) ?: error("Expected Photon PGTM")

        val inputScale = map.mapInputWeights.sum()
        val sceneWhite = 1f / inputScale
        val rawRight = sceneWhite / baselineGain
        val displayAtNominalWhite = finalOutputForScene(map, inputScale, 1.3f)
        val displayAtRawWhite = finalOutputForScene(map, inputScale, baselineGain)
        val displayAtDomainRight = finalOutputForScene(map, inputScale, sceneWhite)

        assertTrue("sceneWhite=$sceneWhite", sceneWhite in 10.39f..10.41f)
        assertTrue("rawRight=$rawRight", rawRight in 1.299f..1.301f)
        assertTrue(
            "nominal=$displayAtNominalWhite rawWhite=$displayAtRawWhite",
            displayAtRawWhite > displayAtNominalWhite + 0.05f
        )
        assertTrue("domainRight=$displayAtDomainRight", displayAtDomainRight in 0.99f..1.01f)
        assertCurvesAreFiniteAndMonotonic(map, sceneWhite)
    }

    @Ignore(
        "Conflicting field feedback: the baseline-3 low-range case has nearly " +
            "the same observed range and p50 as the active 14:18 case but " +
            "requires 0.51 EV more exposure. Keep both cases without changing " +
            "the stable one-dimensional range model."
    )
    @Test
    fun conflictingBaselineThreeFieldCalibrationScenes() {
        assertFieldCalibrationCases(
            listOf(
                ExposureCalibrationCase(
                    name = "18:53 baseline-3 sparse-tail",
                    baselineExposureEv = 3f,
                    p10 = 0.022204947f,
                    p50 = 0.13993193f,
                    p90 = 0.21021318f,
                    p98 = 0.24911182f,
                    p995 = 0.27169982f,
                    p999 = 0.5752382f,
                    maxInput = 1.249979f,
                    linearMean = 0.1295324f,
                    logAverage = 0.09985464f,
                    highlightFraction = 6.739298E-5f,
                    reportedObservedRangeEv = 4.6952066f,
                    reportedExposureLiftEv = 0.2878443f,
                    reportedBrightnessErrorEv = 0.28f
                ),
                ExposureCalibrationCase(
                    name = "18:54 baseline-3 low-range",
                    baselineExposureEv = 3f,
                    p10 = 0.045957692f,
                    p50 = 0.08537395f,
                    p90 = 0.13890508f,
                    p98 = 0.18092623f,
                    p995 = 0.2126976f,
                    p999 = 0.2313348f,
                    maxInput = 0.27256522f,
                    linearMean = 0.08850919f,
                    logAverage = 0.07818398f,
                    highlightFraction = 0f,
                    reportedObservedRangeEv = 2.331604f,
                    reportedExposureLiftEv = 0.27f,
                    reportedBrightnessErrorEv = -0.51f
                )
            )
        )
    }

    @Test
    fun sparseHighlightTailSelectsNineEvAndRaisesSceneMedian() {
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
        val baselineGain = 2.0f.pow(0.64f)
        val rawRight = sceneWhite / baselineGain
        val sourceBlackPoint = max(
            0.045098f / 2.0f.pow(
                DngPhotonProfileGainTableGenerator.SHADOW_FOOT_HEADROOM_EV
            ),
            rawRight / 2.0f.pow(9.75f)
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
        assertTrue(
            "sceneWhite=$sceneWhite baselineGain=$baselineGain",
            sceneWhite / baselineGain in 1f..1.3001f
        )
        assertTrue(
            "rawRight=$rawRight",
            rawRight in 1f..1.3001f
        )
        assertTrue("outputDynamicRangeEv=$outputDynamicRangeEv", outputDynamicRangeEv in 8.8f..9.2f)
        assertTrue("finalMiddleOutput=$finalMiddleOutput", finalMiddleOutput in 0.285f..0.305f)
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
    fun everyTierCompressesToItsDisplayRangeAndUsesHighlightAwareMiddle() {
        val cases = listOf(
            TierCase(0.10f, 0.15f, 0.40f, 0.60f, 0.75f, 8f, 0.26f),
            TierCase(0.020f, 0.10f, 0.50f, 0.75f, 1.05f, 8.5f, 0.28f),
            TierCase(0.015f, 0.08f, 0.55f, 0.80f, 1.15f, 9f, 0.30f),
            TierCase(0.012f, 0.07f, 0.55f, 0.85f, 1.20f, 9.5f, 0.32f)
        )
        cases.forEach { tier ->
            val map = buildUniformMap(tier)
            val inputScale = map.mapInputWeights.sum()
            val sceneWhite = 1f / inputScale
            val sourceBlack = max(
                (tier.p10 * 0.25f) / 2.0f.pow(
                    DngPhotonProfileGainTableGenerator.SHADOW_FOOT_HEADROOM_EV
                ),
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
            val highlightRanges = DngPhotonProfileGainTableGenerator.photonHighlightRanges(
                p90 = tier.p90,
                p98 = tier.p98,
                p995 = tier.tailP99 * 0.92f,
                p999 = tier.tailP99,
                sceneMiddle = tier.p50
            )
            val expectedLift = DngPhotonProfileGainTableGenerator.displayExposureLiftEv(
                highlightRanges.exposureRangeEv
            )
            val expectedMiddle = (tier.p50 * 2.0f.pow(expectedLift)).coerceIn(
                4f / 2.0f.pow(tier.dynamicRangeEv),
                tier.displayMiddleGray
            )

            assertTrue(
                "tier=${tier.dynamicRangeEv} outputRangeEv=$outputRangeEv",
                outputRangeEv in (tier.dynamicRangeEv - 0.20f)..(tier.dynamicRangeEv + 0.20f)
            )
            assertTrue(
                "tier=${tier.dynamicRangeEv} finalMiddle=$finalMiddle expectedMiddle=$expectedMiddle",
                finalMiddle in (expectedMiddle - 0.015f)..(expectedMiddle + 0.015f)
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
                highlightFraction = 0f,
                shadowEdge = tier.p10 * 0.5f,
                shadowFoot = tier.p10 * 0.25f
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
        linearMean: Float = p50,
        logAverage: Float = p50,
        shadowEdge: Float = p10,
        shadowFoot: Float = p10,
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
            shadowEdge = shadowEdge,
            shadowFoot = shadowFoot,
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

    private fun assertFieldCalibrationCases(cases: List<ExposureCalibrationCase>) {
        cases.forEach { case ->
            val calculatedLegacyRangeEv = log2(
                max(case.p999, max(case.p995, case.p98)) /
                    max(case.p10, 0.002f)
            )
            val logAverage = case.logAverage
                ?: error("${case.name}: logAverage is required by the highlight-range model")
            val calculatedHighlightRangeEv = log2(
                max(case.p999, logAverage) / logAverage
            )
            val actualExposureLiftEv =
                DngPhotonProfileGainTableGenerator.displayExposureLiftEv(calculatedHighlightRangeEv)
            val expectedExposureLiftEv =
                case.reportedExposureLiftEv - case.reportedBrightnessErrorEv
            val residualEv = actualExposureLiftEv - expectedExposureLiftEv

            assertTrue(
                "${case.name}: legacyObserved=$calculatedLegacyRangeEv " +
                    "reported=${case.reportedObservedRangeEv}",
                kotlin.math.abs(
                    calculatedLegacyRangeEv - case.reportedObservedRangeEv
                ) <= 0.002f
            )
            assertTrue(
                "${case.name}: highlightRange=$calculatedHighlightRangeEv " +
                    "actualLift=$actualExposureLiftEv " +
                    "expectedLift=$expectedExposureLiftEv residual=$residualEv",
                residualEv in -0.12f..0.12f
            )
        }
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

    @Suppress("unused")
    private data class ExposureCalibrationCase(
        val name: String,
        val baselineExposureEv: Float,
        val p10: Float,
        val p50: Float,
        val p90: Float,
        val p98: Float,
        val p995: Float,
        val p999: Float,
        val maxInput: Float,
        val linearMean: Float?,
        val logAverage: Float?,
        val highlightFraction: Float,
        val reportedObservedRangeEv: Float,
        val reportedExposureLiftEv: Float,
        val reportedBrightnessErrorEv: Float,
    )
}
