package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.ln
import kotlin.math.pow
import kotlin.math.roundToInt

class RawViewfinderExposureMathTest {
    @Test
    fun meteringUsesCandidateP25ToP50BandAndCorrespondingReferenceCoordinates() {
        val width = 10
        val height = 10
        val referencePixels = IntArray(width * height) { index ->
            grayscaleArgb(if (index in 20 until 80) 0.20f else 0.01f)
        }
        val candidatePixels = IntArray(width * height) { index ->
            grayscaleArgb(
                when {
                    index < 20 -> 0.02f
                    index < 80 -> 0.10f
                    else -> 0.50f
                }
            )
        }
        val reference = buildReference(referencePixels, width, height)
        val selection = RawViewfinderExposureMath.buildMeteringSelection(
            reference = reference,
            pixels = candidatePixels,
            width = width,
            height = height,
        )
        assertNotNull(selection)
        val match = RawViewfinderExposureMath.evaluate(
            reference = reference,
            pixels = candidatePixels,
            width = width,
            height = height,
            meteringSelection = selection!!,
        )

        assertNotNull(match)
        assertEquals(60, match!!.meteringSampleCount)
        assertEquals(-1f, match.meteringLog2Error!!, 0.04f)
        assertEquals(0.20f, match.referenceMeteringDisplayLinearLumaMean!!, 0.005f)
        assertEquals(0.10f, match.candidateMeteringDisplayLinearLumaMean!!, 0.005f)
        assertEquals(0.10f, selection.seedCandidateDisplayLinearLumaP25, 0.005f)
        assertEquals(0.10f, selection.seedCandidateDisplayLinearLumaP50, 0.005f)
    }

    @Test
    fun meteringIncludesTheContinuousCandidateP25ToP50Range() {
        val width = 16
        val height = 16
        val candidatePixels = IntArray(width * height) { index ->
            grayscaleArgb(0.01f + 0.79f * index / (width * height - 1))
        }
        val reference = buildReference(candidatePixels, width, height)
        val selection = RawViewfinderExposureMath.buildMeteringSelection(
            reference = reference,
            pixels = candidatePixels,
            width = width,
            height = height,
        )
        assertNotNull(selection)
        val match = RawViewfinderExposureMath.evaluate(
            reference = reference,
            pixels = candidatePixels,
            width = width,
            height = height,
            meteringSelection = selection!!,
        )

        assertNotNull(match)
        assertTrue(match!!.meteringSampleCount in 60..70)
        assertEquals(0f, match.meteringLog2Error!!, 0.001f)
        assertEquals(0.2075f, selection.seedCandidateDisplayLinearLumaP25, 0.01f)
        assertEquals(0.405f, selection.seedCandidateDisplayLinearLumaP50, 0.01f)
        assertTrue(selection.pixelIndices.all { it in 60..132 })
    }

    @Test
    fun meteringSelectionIsReusedAcrossExposureCandidates() {
        val width = 16
        val height = 16
        val reference = buildReference(
            grayscalePixels(width, height, linearLuma = 0.40f),
            width,
            height,
        )
        val seedCandidatePixels = IntArray(width * height) { index ->
            grayscaleArgb(0.02f + 0.48f * index / (width * height - 1))
        }
        val selection = RawViewfinderExposureMath.buildMeteringSelection(
            reference = reference,
            pixels = seedCandidatePixels,
            width = width,
            height = height,
        )
        assertNotNull(selection)

        val nextCandidatePixels = grayscalePixels(width, height, linearLuma = 0.10f)
        selection!!.pixelIndices.forEach { pixelIndex ->
            nextCandidatePixels[pixelIndex] = grayscaleArgb(0.40f)
        }
        val fixedSelectionMatch = RawViewfinderExposureMath.evaluate(
            reference = reference,
            pixels = nextCandidatePixels,
            width = width,
            height = height,
            meteringSelection = selection,
        )
        val reselectedMatch = RawViewfinderExposureMath.evaluate(
            reference = reference,
            pixels = nextCandidatePixels,
            width = width,
            height = height,
        )

        assertNotNull(fixedSelectionMatch)
        assertEquals(selection.sampleCount, fixedSelectionMatch!!.meteringSampleCount)
        assertEquals(0f, fixedSelectionMatch.meteringLog2Error!!, 0.001f)
        assertNotNull(reselectedMatch)
        assertTrue(reselectedMatch!!.meteringLog2Error!! < -1f)
    }

    @Test
    fun meanPerceptualBrightnessTracksDisplayedMidtoneDifference() {
        val referencePixels = grayscalePixels(8, 8, linearLuma = 0.18f)
        val reference = buildReference(referencePixels, 8, 8)

        val match = RawViewfinderExposureMath.evaluate(
            reference = reference,
            pixels = grayscalePixels(8, 8, linearLuma = 0.36f),
            width = 8,
            height = 8,
        )

        assertNotNull(match)
        val expected = log2(srgbCode(0.36f) / srgbCode(0.18f))
        assertEquals(expected, match!!.matchLog2Error, 0.001f)
        assertEquals(
            match.linearArithmeticMeanLog2Error,
            match.linearLogAverageLog2Error,
            0.001f,
        )
        assertEquals(expected, match.meanBrightnessLog2Error, 0.001f)
        assertEquals(expected, match.perceptualLogAverageLog2Error, 0.001f)
        assertEquals(expected, match.p50Log2Error, 0.001f)
        assertTrue(match.linearArithmeticMeanLog2Error > match.meanBrightnessLog2Error)
        assertTrue(match.matchLog2Error > 0f)
    }

    @Test
    fun solverRecoversOneStopAcrossMixedToneDistribution() {
        val width = 16
        val height = 16
        val lumas = floatArrayOf(0.02f, 0.05f, 0.10f, 0.20f)
        val referencePixels = IntArray(width * height) { index ->
            grayscaleArgb(lumas[index % lumas.size])
        }
        val targetPixels = IntArray(width * height) { index ->
            grayscaleArgb(lumas[index % lumas.size] * 2f)
        }
        val reference = buildReference(targetPixels, width, height)

        val solvedEv = RawViewfinderExposureMath.solve { exposureEv ->
            val exposureGain = 2f.pow(exposureEv)
            val candidatePixels = IntArray(width * height) { index ->
                grayscaleArgb(lumas[index % lumas.size] * exposureGain)
            }
            RawViewfinderExposureMath.evaluate(
                reference = reference,
                pixels = candidatePixels,
                width = width,
                height = height,
            )?.matchLog2Error
        }

        assertNotNull(solvedEv)
        assertEquals(1f, solvedEv!!, 0.03f)
    }

    @Test
    fun displayedEndpointsRemainPartOfOverallBrightness() {
        val width = 10
        val height = 10
        val referencePixels = grayscalePixels(width, height, linearLuma = 0.18f)
        for (index in 0 until 20) referencePixels[index] = grayscaleArgb(0f)
        for (index in 20 until 40) referencePixels[index] = grayscaleArgb(1f)
        val reference = buildReference(referencePixels, width, height)
        assertEquals(100, reference.sampleCount)

        val candidatePixels = grayscalePixels(width, height, linearLuma = 0.36f)
        for (index in 0 until 20) candidatePixels[index] = grayscaleArgb(1f)
        for (index in 20 until 40) candidatePixels[index] = grayscaleArgb(0f)
        val match = RawViewfinderExposureMath.evaluate(
            reference = reference,
            pixels = candidatePixels,
            width = width,
            height = height,
        )

        assertNotNull(match)
        assertEquals(100, match!!.referenceSampleCount)
        assertEquals(100, match.candidateSampleCount)
        assertTrue(match.matchLog2Error > 0f)
    }

    @Test
    fun spatiallyRearrangedBrightnessDistributionStillMatches() {
        val width = 10
        val height = 10
        val referencePixels = IntArray(width * height) { index ->
            grayscaleArgb(if (index < 40) 0.04f else 0.32f)
        }
        val reference = buildReference(referencePixels, width, height)
        val candidatePixels = referencePixels.reversedArray()

        val match = RawViewfinderExposureMath.evaluate(
            reference = reference,
            pixels = candidatePixels,
            width = width,
            height = height,
        )

        assertNotNull(match)
        assertEquals(0f, match!!.matchLog2Error, 0.001f)
        assertEquals(0f, match.quantileSpreadLog2, 0.001f)
    }

    @Test
    fun opposingTonalShiftsPreferDarkAndMidtoneAppearance() {
        val width = 10
        val height = 10
        val referencePixels = IntArray(width * height) { index ->
            grayscaleArgb(if (index < 60) 0.08f else 0.24f)
        }
        val candidatePixels = IntArray(width * height) { index ->
            grayscaleArgb(if (index < 60) 0.04f else 0.48f)
        }
        val reference = buildReference(referencePixels, width, height)

        val match = RawViewfinderExposureMath.evaluate(
            reference = reference,
            pixels = candidatePixels,
            width = width,
            height = height,
        )

        assertNotNull(match)
        assertTrue(match!!.quantileSpreadLog2 > 0.75f)
        val expectedMeanError = log2(
            match.candidatePerceptualBrightnessMean /
                match.referencePerceptualBrightnessMean
        )
        assertEquals(expectedMeanError, match.meanBrightnessLog2Error, 0.001f)
        assertTrue("Brighter highlights should raise the global mean", expectedMeanError > 0f)
        assertEquals(
            0.70f * match.quantileTrimmedMeanLog2Error +
                0.30f * match.meanBrightnessLog2Error,
            match.matchLog2Error,
            0.0001f,
        )
        assertTrue(
            "Dark and midtone deficits should control the exposure target",
            match.matchLog2Error < 0f,
        )
        assertTrue(match.toneWeightedLog2Error < match.matchLog2Error)
    }

    @Test
    fun isolatedDeepShadowMismatchCannotControlOverallExposure() {
        val width = 16
        val height = 10
        val darkEnd = width * height / 4
        val highlightStart = width * height * 3 / 4
        val referencePixels = IntArray(width * height) { index ->
            grayscaleArgb(
                when {
                    index < darkEnd -> 0.04f
                    index < highlightStart -> 0.18f
                    else -> 0.64f
                }
            )
        }
        val candidatePixels = IntArray(width * height) { index ->
            grayscaleArgb(
                when {
                    index < darkEnd -> 0.001f
                    index < highlightStart -> 0.18f
                    else -> 0.64f
                }
            )
        }
        val match = RawViewfinderExposureMath.evaluate(
            reference = buildReference(referencePixels, width, height),
            pixels = candidatePixels,
            width = width,
            height = height,
        )

        assertNotNull(match)
        assertTrue(match!!.quantileLog2Errors.first() < -3f)
        assertEquals(0f, match.toneWeightedLog2Error, 0.001f)
        assertTrue(match.meanBrightnessLog2Error < 0f)
        assertTrue(
            "The full-image guardrail may react, but the crushed tail must not dominate",
            match.matchLog2Error > -0.05f,
        )
    }

    @Test
    fun solverLiftsDarkAndMidtonesWhenHighlightsConflict() {
        val width = 16
        val height = 16
        val highlightStart = width * height * 3 / 4
        val referencePixels = IntArray(width * height) { index ->
            grayscaleArgb(if (index < highlightStart) 0.08f else 0.64f)
        }
        val reference = buildReference(referencePixels, width, height)

        val solvedEv = RawViewfinderExposureMath.solve { exposureEv ->
            val exposureGain = 2f.pow(exposureEv)
            val candidatePixels = IntArray(width * height) { index ->
                val baseLuma = if (index < highlightStart) 0.04f else 0.64f
                grayscaleArgb(baseLuma * exposureGain)
            }
            RawViewfinderExposureMath.evaluate(
                reference = reference,
                pixels = candidatePixels,
                width = width,
                height = height,
            )?.matchLog2Error
        }

        assertNotNull(solvedEv)
        assertTrue(
            "The solver should accept brighter highlights to restore the darker majority",
            solvedEv!! > 0.8f,
        )
        assertTrue(solvedEv < 1.2f)
    }

    @Test
    fun largeDarkAreaContributesToOverallPerceivedBrightness() {
        val width = 16
        val height = 16
        val referencePixels = grayscalePixels(width, height, linearLuma = 0.01f)
        val candidatePixels = grayscalePixels(width, height, linearLuma = 0.001f)
        val highlightStart = referencePixels.size * 3 / 4
        for (index in highlightStart until referencePixels.size) {
            referencePixels[index] = grayscaleArgb(0.64f)
            candidatePixels[index] = grayscaleArgb(0.64f)
        }
        val reference = buildReference(referencePixels, width, height)

        val match = RawViewfinderExposureMath.evaluate(
            reference = reference,
            pixels = candidatePixels,
            width = width,
            height = height,
        )

        assertNotNull(match)
        assertTrue(match!!.matchLog2Error < 0f)

        val solvedEv = RawViewfinderExposureMath.solve { exposureEv ->
            val exposureGain = 2f.pow(exposureEv)
            val renderedPixels = grayscalePixels(
                width,
                height,
                linearLuma = 0.001f * exposureGain,
            )
            for (index in highlightStart until renderedPixels.size) {
                renderedPixels[index] = grayscaleArgb(0.64f * exposureGain)
            }
            RawViewfinderExposureMath.evaluate(
                reference = reference,
                pixels = renderedPixels,
                width = width,
                height = height,
            )?.matchLog2Error
        }

        assertNotNull(solvedEv)
        assertTrue(
            "The darker majority should remain the exposure target after highlights clip",
            solvedEv!! > 2f,
        )
        assertTrue(solvedEv <= MeteringSystem.RAW_EXPOSURE_MAX_EV)
    }

    @Test
    fun referenceWithOnlyBlackAndWhiteEndpointsHasDefinedDiagnostics() {
        val pixels = IntArray(64) { index ->
            if (index % 2 == 0) grayscaleArgb(0f) else grayscaleArgb(1f)
        }

        val reference = RawViewfinderExposureMath.buildReference(
            pixels = pixels,
            width = 8,
            height = 8,
            left = 0,
            top = 0,
            right = 8,
            bottom = 8,
        )

        assertNotNull(reference)
        assertEquals(0.5f, reference!!.perceptualBrightnessMean, 0.001f)
    }

    @Test
    fun candidateWithBlackAndWhiteEndpointsHasDefinedBrightness() {
        val width = 8
        val height = 8
        val reference = buildReference(
            grayscalePixels(width, height, linearLuma = 0.18f),
            width,
            height,
        )
        val candidatePixels = IntArray(width * height) { index ->
            if (index % 2 == 0) grayscaleArgb(0f) else grayscaleArgb(1f)
        }

        val match = RawViewfinderExposureMath.evaluate(
            reference = reference,
            pixels = candidatePixels,
            width = width,
            height = height,
        )

        assertNotNull(match)
        assertEquals(0.5f, match!!.candidatePerceptualBrightnessMean, 0.001f)
        assertEquals(32, match.meteringSampleCount)
        assertNotNull(match.meteringLog2Error)
    }

    @Test
    fun fullyTransparentReferenceIsUnavailable() {
        val reference = RawViewfinderExposureMath.buildReference(
            pixels = IntArray(64),
            width = 8,
            height = 8,
            left = 0,
            top = 0,
            right = 8,
            bottom = 8,
        )

        assertNull(reference)
    }

    @Test
    fun solverMeasuresUnknownDisplaySlopeBeforeInterpolatingRawEv() {
        val calls = mutableListOf<Float>()

        val solvedEv = RawViewfinderExposureMath.solve { exposureEv ->
            calls += exposureEv
            (exposureEv - 1.25f) * 0.4f
        }

        assertNotNull(solvedEv)
        assertEquals(1.25f, solvedEv!!, 0.001f)
        assertEquals(0f, calls[0], 0.0001f)
        assertEquals(0.5f, calls[1], 0.0001f)
        assertTrue(calls.size <= 3)
    }

    @Test
    fun solverProbesInNegativeDirectionWhenCandidateIsTooBright() {
        val calls = mutableListOf<Float>()

        val solvedEv = RawViewfinderExposureMath.solve { exposureEv ->
            calls += exposureEv
            (exposureEv + 1.5f) * 0.6f
        }

        assertNotNull(solvedEv)
        assertEquals(-1.5f, solvedEv!!, 0.001f)
        assertEquals(-0.5f, calls[1], 0.0001f)
    }

    @Test
    fun solverExpandsProbeAcrossAFlatToneMappedRegion() {
        val calls = mutableListOf<Float>()

        val solvedEv = RawViewfinderExposureMath.solve { exposureEv ->
            calls += exposureEv
            if (exposureEv < 1.5f) {
                -0.5f
            } else {
                exposureEv - 2f
            }
        }

        assertNotNull(solvedEv)
        assertEquals(2f, solvedEv!!, 0.001f)
        assertEquals(listOf(0f, 0.5f, 1.5f, 3.5f, 2f), calls)
    }

    private fun buildReference(
        pixels: IntArray,
        width: Int,
        height: Int,
    ): RawViewfinderExposureMath.Reference {
        return RawViewfinderExposureMath.buildReference(
            pixels = pixels,
            width = width,
            height = height,
            left = 0,
            top = 0,
            right = width,
            bottom = height,
        ) ?: error("Expected a valid reference")
    }

    private fun grayscalePixels(width: Int, height: Int, linearLuma: Float): IntArray {
        return IntArray(width * height) { grayscaleArgb(linearLuma) }
    }

    private fun grayscaleArgb(linearLuma: Float): Int {
        val byte = linearToSrgbByte(linearLuma)
        return (0xff shl 24) or (byte shl 16) or (byte shl 8) or byte
    }

    private fun linearToSrgbByte(linear: Float): Int {
        val clamped = linear.coerceIn(0f, 1f)
        val srgb = if (clamped <= 0.0031308f) {
            clamped * 12.92f
        } else {
            1.055f * clamped.pow(1f / 2.4f) - 0.055f
        }
        return (srgb * 255f).roundToInt().coerceIn(0, 255)
    }

    private fun srgbCode(linearLuma: Float): Float {
        return linearToSrgbByte(linearLuma) / 255f
    }

    private fun log2(value: Float): Float {
        return (ln(value.toDouble()) / ln(2.0)).toFloat()
    }
}
