package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.pow

class RawSceneExposureMathTest {
    @Test
    fun sceneBrightnessIsInvariantToMatchedSignalAndTetChange() {
        val first = RawSceneExposureMath.measureSceneBrightness(
            frame = constantFrame(0.1f),
            exposureTimeNs = 10_000_000L,
            sensitivityIso = 100,
            referenceSensitivityIso = 100,
            aperture = 2f,
        )
        val second = RawSceneExposureMath.measureSceneBrightness(
            frame = constantFrame(0.2f),
            exposureTimeNs = 20_000_000L,
            sensitivityIso = 100,
            referenceSensitivityIso = 100,
            aperture = 2f,
        )

        assertNotNull(first)
        assertNotNull(second)
        assertEquals(first!!.logSceneBrightness, second!!.logSceneBrightness, 0.002f)
    }

    @Test
    fun sceneBrightnessUsesMgcNaturalLogRadiometricCoordinate() {
        val measurement = RawSceneExposureMath.measureSceneBrightness(
            frame = constantFrame(0.1f),
            exposureTimeNs = 10_000_000L,
            sensitivityIso = 200,
            referenceSensitivityIso = 100,
            aperture = 2f,
        )

        assertNotNull(measurement)
        assertEquals(0.1f, measurement!!.predictedImageBrightness, 1e-5f)
        assertEquals(10f, measurement.exposureTimeMs, 0f)
        assertEquals(2f, measurement.overallGain, 0f)
        assertEquals(20f, measurement.currentTetMs, 0f)
        assertEquals(0.25f, measurement.apertureTransmission, 0f)
        val normalizedExposure = (0.25 / 14.6) * (20.0 / 1_000.0)
        val expected = kotlin.math.ln(0.1 / normalizedExposure + 1e-4)
        assertEquals(expected.toFloat(), measurement.logSceneBrightness, 1e-5f)
    }

    @Test
    fun currentTetIncludesOverallGainFromReferenceSensitivity() {
        val first = RawSceneExposureMath.measureSceneBrightness(
            frame = constantFrame(0.1f),
            exposureTimeNs = 10_000_000L,
            sensitivityIso = 800,
            referenceSensitivityIso = 100,
            aperture = 2f,
        )
        val second = RawSceneExposureMath.measureSceneBrightness(
            frame = constantFrame(0.1f),
            exposureTimeNs = 10_000_000L,
            sensitivityIso = 1_600,
            referenceSensitivityIso = 100,
            aperture = 2f,
        )

        assertEquals(8f, first!!.overallGain, 0f)
        assertEquals(80f, first.currentTetMs, 0f)
        assertEquals(16f, second!!.overallGain, 0f)
        assertEquals(160f, second.currentTetMs, 0f)
    }

    @Test
    fun deviceTetRangeUsesMgcCamera2Confinement() {
        val limits = RawSceneExposureDeviceLimits.fromCamera2Ranges(
            maxExposureTimeNs = 30_000_000_000L,
            minSensitivityIso = 50,
            maxSensitivityIso = 6_400,
        )

        assertNotNull(limits)
        assertEquals(0.04f, limits!!.minTetMs, 0f)
        assertEquals(1_000f, limits.maxExposureTimeMs, 0f)
        assertEquals(50, limits.referenceSensitivityIso)
        assertEquals(128f, limits.deviceMaxOverallGain, 0f)
        assertEquals(128_000f, limits.deviceMaxTetMs, 0f)
    }

    @Test
    fun recoveredHighIsoCaptureUsesMgcOverallGainShotLimit() {
        val exposureTimeMs = 29.999994f
        val overallGain = 9_052f / 100f
        val range = RawSceneExposureMath.resolveMgcShotRange(
            exposureTimeMs = exposureTimeMs,
            overallGain = overallGain,
        )

        assertNotNull(range)
        val currentTetMs = exposureTimeMs * overallGain
        assertEquals(currentTetMs, range!!.minTetMs, 1e-3f)
        assertEquals(exposureTimeMs * 102f, range.maxTetMs, 1e-3f)
        assertEquals(
            RawSceneExposureShotMaxSource.MAX_OVERALL_GAIN,
            range.maxSource,
        )
        val finalGain = range.maxTetMs / currentTetMs
        assertEquals(102f / overallGain, finalGain, 1e-6f)
        assertEquals(0.172256f, RawSceneExposureMath.linearGainToEv(finalGain)!!, 1e-4f)
    }

    @Test
    fun modelInputUsesRgbLogSceneBrightnessAndZeroMissingSemanticChannels() {
        val rgb = FloatArray(64 * 64 * 3)
        rgb[0] = 0.25f
        rgb[1] = 0.5f
        rgb[2] = 1.25f
        val destination = ByteBuffer.allocateDirect(64 * 64 * 9 * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())

        assertTrue(
            RawSceneExposureMath.writeCombinedModelInput(
                frame = RawSceneLinearFrame(64, 64, rgb),
                logSceneBrightness = -2.5f,
                destination = destination,
            ),
        )
        assertEquals(kotlin.math.ln(0.25f + 1e-6f), destination.float, 1e-6f)
        assertEquals(kotlin.math.ln(0.5f + 1e-6f), destination.float, 1e-6f)
        assertEquals(kotlin.math.ln(1.25f + 1e-6f), destination.float, 1e-6f)
        assertEquals(-2.5f, destination.float, 0f)
        repeat(5) { assertEquals(0f, destination.float, 0f) }
    }

    @Test
    fun longModelSplitInputsPreserveColorAndMissingSemanticContract() {
        val rgb = FloatArray(64 * 64 * 3)
        rgb[0] = 0.25f
        rgb[1] = 0.5f
        rgb[2] = 1.25f
        val color = ByteBuffer.allocateDirect(64 * 64 * 4 * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
        val semantics = ByteBuffer.allocateDirect(64 * 64 * 5 * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())

        assertTrue(
            RawSceneExposureMath.writeSplitModelInputs(
                frame = RawSceneLinearFrame(64, 64, rgb),
                logSceneBrightness = -2.5f,
                colorDestination = color,
                semanticDestination = semantics,
            ),
        )
        assertEquals(kotlin.math.ln(0.25f + 1e-6f), color.float, 1e-6f)
        assertEquals(kotlin.math.ln(0.5f + 1e-6f), color.float, 1e-6f)
        assertEquals(kotlin.math.ln(1.25f + 1e-6f), color.float, 1e-6f)
        assertEquals(-2.5f, color.float, 0f)
        repeat(5) { assertEquals(0f, semantics.float, 0f) }
    }

    @Test
    fun invalidPhysicalExposureIsRejected() {
        assertEquals(
            null,
            RawSceneExposureMath.measureSceneBrightness(
                frame = constantFrame(0.1f),
                exposureTimeNs = 0L,
                sensitivityIso = 100,
                referenceSensitivityIso = 100,
                aperture = 2f,
            ),
        )
        val destination = ByteBuffer.allocateDirect(64 * 64 * 9 * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
        assertFalse(
            RawSceneExposureMath.writeCombinedModelInput(
                frame = RawSceneLinearFrame(63, 64, FloatArray(63 * 64 * 3)),
                logSceneBrightness = 0f,
                destination = destination,
            ),
        )
    }

    @Test
    fun modelOutputIsNaturalLogLinearGainNotEv() {
        val gain = RawSceneExposureMath.modelLogGainToLinear(
            kotlin.math.ln(2.0 + 1e-6).toFloat(),
        )

        assertNotNull(gain)
        assertEquals(2f, gain!!, 1e-5f)
        assertEquals(1f, RawSceneExposureMath.linearGainToEv(gain)!!, 1e-5f)
    }

    @Test
    fun recoveredMgcPlanUsesContinuousExposureCountAndLogPlacement() {
        val plan = MgcLocalToneMappingMath.planSyntheticExposures(2.4375658f)

        assertNotNull(plan)
        assertEquals(4, plan!!.size)
        assertEquals(0f, plan[0].fraction, 1e-7f)
        assertEquals(0.13826938f, plan[1].fraction, 1e-6f)
        assertEquals(0.5691347f, plan[2].fraction, 1e-6f)
        assertEquals(1f, plan[3].fraction, 1e-7f)
        assertEquals(1f, plan[0].fusionWeight, 1e-7f)
        assertEquals(0.32091093f, plan[1].fusionWeight, 1e-6f)
        assertEquals(1f, plan[2].fusionWeight, 1e-7f)
        assertEquals(MgcLocalToneMappingMath.bentoFactor(2.4375658f), plan.first().gain, 1e-6f)
        assertEquals(2.4375658f, plan.last().gain, 1e-6f)
    }

    @Test
    fun recoveredMgcPlanPreservesBothLowHdrTransitions() {
        val veryLowHdr = MgcLocalToneMappingMath.planSyntheticExposures(1.05f)!!
        val middleHdr = MgcLocalToneMappingMath.planSyntheticExposures(1.5f)!!

        assertEquals(2, veryLowHdr.size)
        assertEquals(0.620252f, veryLowHdr[0].fusionWeight, 1e-5f)
        assertEquals(0f, veryLowHdr[0].fraction, 0f)
        assertEquals(1f, veryLowHdr[1].fraction, 0f)
        assertEquals(3, middleHdr.size)
        assertEquals(0.475513f, middleHdr[1].fusionWeight, 1e-5f)
        assertEquals(0.5f, middleHdr[1].fraction, 0f)
    }

    @Test
    fun recoveredMgcShadowMaskConcentratesOnLongExposureMidShadows() {
        val center = 0.5.pow(1.0 / 0.35)
        val centerWeight = MgcLocalToneMappingMath.shadowWeight(center)
        val darkWeight = MgcLocalToneMappingMath.shadowWeight(0.01)
        val highlightWeight = MgcLocalToneMappingMath.shadowWeight(1.0)

        assertEquals(1.0, centerWeight, 1e-9)
        assertTrue(centerWeight > darkWeight)
        assertTrue(centerWeight > highlightWeight)
        assertEquals(0.0, highlightWeight, 0.0)
    }

    @Test
    fun recoveredMgcLongTargetAveragesAfterGammaEncoding() {
        val rgb = FloatArray(64 * 64 * 3)
        for (pixel in 0 until 64 * 64) {
            val value = if (pixel < 64 * 32) 0.01f else 0.1f
            rgb[pixel * 3] = value
            rgb[pixel * 3 + 1] = value
            rgb[pixel * 3 + 2] = value
        }
        val target = MgcLocalToneMappingMath.longTargetAverageLdr(
            frame = RawSceneLinearFrame(64, 64, rgb),
            idealLongGain = 4f,
        )
        val expected = (
            0.04.pow(1.0 / 2.2) + 0.4.pow(1.0 / 2.2)
            ) * 0.5 * 255.0

        assertEquals(expected.toFloat(), target!!, 1e-4f)
    }

    @Test
    fun curveCalibrationMatchesSceneBrightnessWithoutReplacingAcr3() {
        val ltmOutput = FloatArray(4096) { index ->
            0.002f + 0.7f * index / 4095f
        }
        val match = MgcLocalToneMappingMath.solveAcr3BrightnessMatch(ltmOutput)

        assertNotNull(match)
        assertEquals(
            match!!.googleDisplayBrightness,
            match.acr3DisplayBrightnessAfter,
            1e-5f,
        )
        assertTrue(match.gain.isFinite() && match.gain > 0f)
        assertTrue(kotlin.math.abs(match.acr3DisplayBrightnessBefore -
            match.googleDisplayBrightness) > 1e-4f)
    }

    @Test
    fun histogramCurveCalibrationMatchesEquivalentLinearSamples() {
        val histogram = IntArray(32_768)
        val occupiedBins = intArrayOf(0, 37, 1024, 8192, 16_384, 24_576, 32_767)
        occupiedBins.forEachIndexed { index, bin ->
            histogram[bin] = index + 1
        }
        val samples = occupiedBins.flatMapIndexed { index, bin ->
            List(index + 1) { bin.toFloat() / histogram.lastIndex }
        }.toFloatArray()

        val sampleMatch = MgcLocalToneMappingMath.solveAcr3BrightnessMatch(samples)
        val histogramMatch = MgcLocalToneMappingMath.solveAcr3BrightnessMatch(
            linearHistogram = histogram,
            expectedSampleCount = samples.size,
        )

        assertNotNull(sampleMatch)
        assertNotNull(histogramMatch)
        assertEquals(
            sampleMatch!!.googleDisplayBrightness,
            histogramMatch!!.googleDisplayBrightness,
            1e-6f,
        )
        assertEquals(sampleMatch.gain, histogramMatch.gain, 1e-6f)
        assertEquals(
            histogramMatch.googleDisplayBrightness,
            histogramMatch.acr3DisplayBrightnessAfter,
            1e-5f,
        )
    }

    @Test
    fun shadowLevelGainIsSolvedOnLtmOutputInsteadOfBaselineExposure() {
        val source = FloatArray(4096) { 0.05f }
        val fused = FloatArray(4096) { 0.1f }
        val targetLdr = (0.2.pow(1.0 / 2.2) * 255.0).toFloat()
        val match = MgcLocalToneMappingMath.solveShadowLevelMatch(
            source = source,
            fusedLinear = fused,
            finalLongGain = 4f,
            longTargetAverageLdr = targetLdr,
        )

        assertNotNull(match)
        assertEquals(0.2f, match!!.targetLevelLinear, 1e-5f)
        assertEquals(0.1f, match.measuredLevelLinear, 1e-6f)
        assertEquals(2f, match.gain, 1e-5f)
    }

    @Test
    fun finalShortTetIsShortestOfAllThreePositiveIdealTets() {
        val fusion = RawSceneExposureMath.finalizeAeResults(
            frame = constantFrame(0.2f),
            currentTetMs = 10f,
            branches = branches(shortGain = 2f, longGain = 3f, portraitGain = 1.25f),
            finalization = wideFinalization(),
        )

        assertNotNull(fusion)
        assertEquals(20f, fusion!!.idealShortTetMs, 1e-4f)
        assertEquals(30f, fusion.idealLongTetMs, 1e-4f)
        assertEquals(12.5f, fusion.idealPortraitTetMs, 1e-4f)
        assertEquals(12.5f, fusion.finalShortTetMs, 1e-4f)
        assertEquals(30f, fusion.finalLongTetMs, 1e-4f)
        assertEquals(12.5f, fusion.finalPortraitTetMs, 1e-4f)
        assertEquals(1.25f, fusion.finalGain, 1e-5f)
        assertEquals(kotlin.math.log2(1.25f), fusion.shortCaptureEv, 1e-5f)
    }

    @Test
    fun finalShortTetNeverSelectsPortraitAsDisplayBaseline() {
        val fusion = RawSceneExposureMath.finalizeAeResults(
            frame = constantFrame(0.2f),
            currentTetMs = 10f,
            branches = branches(shortGain = 0.5f, longGain = 2f, portraitGain = 3f),
            finalization = wideFinalization(),
        )

        assertNotNull(fusion)
        assertEquals(0.5f, fusion!!.finalShortGain, 1e-5f)
        assertEquals(2f, fusion.finalLongGain, 1e-5f)
        assertEquals(3f, fusion.finalPortraitGain, 1e-5f)
        assertEquals(fusion.finalShortGain, fusion.finalGain, 0f)
    }

    @Test
    fun brightPixelDoesNotInterpolateFinalShortTetTowardLongTet() {
        val rgb = FloatArray(64 * 64 * 3) { 0.2f }
        rgb[0] = 0.9f
        rgb[1] = 0.9f
        rgb[2] = 0.9f
        val fusion = RawSceneExposureMath.finalizeAeResults(
            frame = RawSceneLinearFrame(64, 64, rgb),
            currentTetMs = 10f,
            branches = branches(shortGain = 0.5f, longGain = 2f, portraitGain = 3f),
            finalization = wideFinalization(),
        )

        assertNotNull(fusion)
        assertEquals(0.5f, fusion!!.finalGain, 1e-5f)
        assertEquals(0f, fusion.finalClippedFraction, 0f)
    }

    @Test
    fun recoveredMgcLogsResolveToShortIdealTetInsteadOfLongTet() {
        val first = RawSceneExposureMath.finalizeAeResults(
            frame = constantFrame(0.18f),
            currentTetMs = 31.799961f,
            branches = RawSceneExposureBranches(
                shortLogGain = 0.20822555f,
                longLogGain = 0.5206455f,
                portraitLogGain = 0.60882473f,
            ),
            finalization = wideFinalization(),
        )
        val second = RawSceneExposureMath.finalizeAeResults(
            frame = constantFrame(0.073f),
            currentTetMs = 34.999958f,
            branches = RawSceneExposureBranches(
                shortLogGain = 0.2955367f,
                longLogGain = 1.1176094f,
                portraitLogGain = 1.6020534f,
            ),
            finalization = wideFinalization(),
        )

        assertEquals(1.2314899f, first!!.finalShortGain, 1e-5f)
        assertEquals(1.2314899f, first.finalGain, 1e-5f)
        assertEquals(1.3438464f, second!!.finalShortGain, 1e-5f)
        assertEquals(1.3438464f, second.finalGain, 1e-5f)
    }

    @Test
    fun maxHdrRatioUsesMgcLongFractionMigrationCurve() {
        val fusion = RawSceneExposureMath.finalizeAeResults(
            frame = constantFrame(0.01f),
            currentTetMs = 10f,
            branches = branches(shortGain = 1f, longGain = 16f, portraitGain = 20f),
            finalization = RawSceneExposureFinalization(
                shotMinTetMs = 0.1f,
                shotMaxTetMs = 1_000f,
                maxHdrRatio = 4f,
                weightedFractionOfPixelsFromLongExposure = 0.37f,
            ),
        )

        assertNotNull(fusion)
        assertTrue(fusion!!.hdrRatioLimited)
        assertEquals(2f, fusion.finalShortGain, 1e-4f)
        assertEquals(8f, fusion.finalLongGain, 1e-4f)
        assertEquals(4f, fusion.finalHdrRatio, 1e-4f)
    }

    @Test
    fun touchClipProtectionKeepsShortTetWhenReducingHdrRatio() {
        val fusion = RawSceneExposureMath.finalizeAeResults(
            frame = constantFrame(0.01f),
            currentTetMs = 10f,
            branches = branches(shortGain = 1f, longGain = 16f, portraitGain = 20f),
            finalization = RawSceneExposureFinalization(
                shotMinTetMs = 0.1f,
                shotMaxTetMs = 1_000f,
                maxHdrRatio = 4f,
                weightedFractionOfPixelsFromLongExposure = 1f,
                touchRoiClipProtectionTripped = true,
            ),
        )

        assertEquals(1f, fusion!!.finalShortGain, 1e-5f)
        assertEquals(4f, fusion.finalLongGain, 1e-5f)
    }

    @Test
    fun finalOverridesStillEnforceShortTetOrdering() {
        val fusion = RawSceneExposureMath.finalizeAeResults(
            frame = constantFrame(0.1f),
            currentTetMs = 10f,
            branches = branches(shortGain = 1f, longGain = 2f, portraitGain = 3f),
            finalization = RawSceneExposureFinalization(
                shotMinTetMs = 0.1f,
                shotMaxTetMs = 1_000f,
                finalShortTetOverrideMs = 80f,
                finalLongTetOverrideMs = 30f,
                finalPortraitTetOverrideMs = 40f,
            ),
        )

        assertEquals(30f, fusion!!.finalShortTetMs, 1e-5f)
        assertEquals(30f, fusion.finalLongTetMs, 1e-5f)
        assertEquals(40f, fusion.finalPortraitTetMs, 1e-5f)
    }

    @Test
    fun portraitTetUsesAchievedLongTetFactorization() {
        val fusion = RawSceneExposureMath.finalizeAeResults(
            frame = constantFrame(0.01f),
            currentTetMs = 10f,
            branches = branches(shortGain = 1f, longGain = 20f, portraitGain = 10f),
            finalization = RawSceneExposureFinalization(
                shotMinTetMs = 1f,
                shotMaxTetMs = 100f,
            ),
        )

        assertEquals(200f, fusion!!.idealLongTetMs, 1e-4f)
        assertEquals(100f, fusion.idealPortraitTetMs, 1e-4f)
        assertEquals(100f, fusion.finalLongTetMs, 1e-4f)
        assertEquals(50f, fusion.finalPortraitTetMs, 1e-4f)
    }

    @Test
    fun typeZeroDeviceTetUpperBoundClampsFinalShortTet() {
        val fusion = RawSceneExposureMath.finalizeAeResults(
            frame = constantFrame(0.01f),
            currentTetMs = 100f,
            branches = branches(shortGain = 10f, longGain = 12f, portraitGain = 12f),
            finalization = RawSceneExposureFinalization(
                shotMinTetMs = RawSceneExposureDeviceLimits.MIN_TET_MS,
                shotMaxTetMs = 120f,
            ),
        )

        assertEquals(120f, fusion!!.finalShortTetMs, 0f)
        assertEquals(1.2f, fusion.finalShortGain, 1e-6f)
        assertEquals(kotlin.math.log2(1.2f), fusion.shortCaptureEv, 1e-6f)
    }

    private fun branches(
        shortGain: Float,
        longGain: Float,
        portraitGain: Float,
    ): RawSceneExposureBranches = RawSceneExposureBranches(
        shortLogGain = kotlin.math.ln(shortGain.toDouble() + 1e-6).toFloat(),
        longLogGain = kotlin.math.ln(longGain.toDouble() + 1e-6).toFloat(),
        portraitLogGain = kotlin.math.ln(portraitGain.toDouble() + 1e-6).toFloat(),
    )

    private fun wideFinalization(): RawSceneExposureFinalization =
        RawSceneExposureFinalization(
            shotMinTetMs = RawSceneExposureDeviceLimits.MIN_TET_MS,
            shotMaxTetMs = 1_000_000f,
        )

    private fun constantFrame(value: Float): RawSceneLinearFrame = RawSceneLinearFrame(
        width = RawSceneExposureMath.INPUT_WIDTH,
        height = RawSceneExposureMath.INPUT_HEIGHT,
        rgb = FloatArray(
            RawSceneExposureMath.INPUT_WIDTH * RawSceneExposureMath.INPUT_HEIGHT * 3,
        ) { value },
    )
}
