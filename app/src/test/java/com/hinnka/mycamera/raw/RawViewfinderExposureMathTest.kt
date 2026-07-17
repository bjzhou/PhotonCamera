package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.pow
import kotlin.math.roundToInt

class RawViewfinderExposureMathTest {
    @Test
    fun displayLinearLogRatioTracksOneStopForUnclippedMidtones() {
        val referencePixels = grayscalePixels(8, 8, linearLuma = 0.18f)
        val reference = buildReference(referencePixels, 8, 8)

        val match = RawViewfinderExposureMath.evaluate(
            reference = reference,
            pixels = grayscalePixels(8, 8, linearLuma = 0.36f),
            width = 8,
            height = 8,
        )

        assertNotNull(match)
        assertEquals(1f, match!!.matchLog2Error, 0.02f)
    }

    @Test
    fun clippedReferencePixelsNeverEnterCandidateSampleSet() {
        val width = 10
        val height = 10
        val referencePixels = grayscalePixels(width, height, linearLuma = 0.18f)
        for (index in 0 until 20) referencePixels[index] = grayscaleArgb(0f)
        for (index in 20 until 40) referencePixels[index] = grayscaleArgb(1f)
        val reference = buildReference(referencePixels, width, height)
        assertEquals(60, reference.sampleCount)

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
        assertEquals(60, match!!.sampleCount)
        assertEquals(1f, match.matchLog2Error, 0.02f)
    }

    @Test
    fun candidateClippingInsideReferenceSampleSetRemainsAVisibleError() {
        val width = 8
        val height = 8
        val referencePixels = grayscalePixels(width, height, linearLuma = 0.18f)
        val reference = buildReference(referencePixels, width, height)
        val candidatePixels = grayscalePixels(width, height, linearLuma = 0.36f)
        for (index in 0 until candidatePixels.size / 2) {
            candidatePixels[index] = grayscaleArgb(0f)
        }

        val match = RawViewfinderExposureMath.evaluate(
            reference = reference,
            pixels = candidatePixels,
            width = width,
            height = height,
        )

        assertNotNull(match)
        assertTrue(match!!.matchLog2Error < -1f)
    }

    @Test
    fun referenceWithOnlyClippedPixelsIsRejected() {
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
}
