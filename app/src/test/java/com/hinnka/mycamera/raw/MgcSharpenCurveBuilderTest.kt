package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.PhotonSharpenBands
import com.hinnka.mycamera.processor.PhotonSharpenCurve
import com.hinnka.mycamera.processor.PhotonSharpenSnrNode
import com.hinnka.mycamera.processor.PhotonSharpenTuning
import com.hinnka.mycamera.processor.PhotonQualitySharpenTuning
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Test

class MgcSharpenCurveBuilderTest {
    @Test
    fun qualityPresetUsesSabreDomainAndP0Slot0FrequencyAmounts() {
        val tuning = PhotonQualitySharpenTuning.FIXED
        assertEquals(listOf(2f, 8f, 16f), tuning.nodes.map { it.snr })
        val selected = MgcSharpenCurveBuilder.build(16f, tuning)
        assertEquals(.0002f, selected.points[1], 0f)
        assertEquals(.02f, selected.points[2], 0f)
        assertEquals(.03f, selected.points[3], 1e-8f)
        assertEquals(1.405f, selected.points[4], 1e-7f)
        // Patched AGC: gain=10*1.125, low gain=1.375, depth2=1.375;
        // resulting y2=.225, y3=.24625, y4=1.62125, before sharpness A.
        val expectedY = floatArrayOf(
            0f,
            .0002f + .34375f * (.000275f - .0002f),
            .02f + .34375f * (.225f - .02f),
            .03f + .34375f * (.24625f - .03f),
            1.405f + .34375f * (1.62125f - 1.405f),
        )
        assertArrayEquals(expectedY, selected.points.copyOfRange(15, 20), 2e-7f)
        assertEquals(.67558594f, selected.mainGains[1], 1e-6f)
        // Global sharpness B=0 makes frequency 2 identity at every SNR.
        for (snr in listOf(.1f, 2f, 5f, 8f, 12f, 16f, 100f)) {
            val points = MgcSharpenCurveBuilder.build(snr, tuning).points
            assertArrayEquals(points.copyOfRange(10, 15), points.copyOfRange(25, 30), 0f)
        }
    }

    @Test
    fun defaultSnr20PreservesOriginalNativeCurveAndHalideLayout() {
        val actual = MgcSharpenCurveBuilder.build(20f, PhotonSharpenTuning.DEFAULT)
        // Original MGC generic SNR20 five-point curves, x blocks followed by y blocks.
        val expected = floatArrayOf(
            0f, .05f, 1f, 2f, 3f, 0f, .03f, 1f, 2f, 3f, 0f, .02f, 1f, 2f, 3f,
            0f, .05f * 1.6f, 3.2f, 2f, 3f,
            0f, .03f * 1.3f, 2.6f, 2f, 3f,
            0f, .02f, 1.4f, 2f, 3f,
        )
        assertArrayEquals(expected, actual.points, 0f)
    }

    @Test
    fun snrInterpolationUsesConvertedPointsRatherThanInterpolatedGains() {
        val selected = MgcSharpenCurveBuilder.build(30f, PhotonSharpenTuning.DEFAULT)
        assertEquals(20f, selected.lowerSnr, 0f)
        assertEquals(40f, selected.upperSnr, 0f)
        assertEquals(.5f, selected.interpolation, 0f)
        assertEquals(.035f, selected.points[1], 1e-8f)
        assertEquals(.066f, selected.points[16], 1e-8f)
        assertEquals(4.2f, selected.points[17], 1e-6f)
    }

    @Test
    fun bandAmountWorksAtNodesBetweenNodesAndBeyondTableAndDoesNotMoveOtherBands() {
        val original = PhotonSharpenTuning.DEFAULT
        val adjusted = original.copy(amount = PhotonSharpenBands(.5f, 0f, 1f))
        for (snr in listOf(0f, .1f, 5f, 7.5f, 20f, 30f, 80f, 160f)) {
            val baseline = MgcSharpenCurveBuilder.build(snr, original)
            val actual = MgcSharpenCurveBuilder.build(snr, adjusted)
            assertEquals(baseline.interpolation, actual.interpolation, 0f)
            for (point in 0..4) {
                val x = baseline.points[point]
                val y = baseline.points[point + 15]
                assertEquals(x + .5f * (y - x), actual.points[point + 15], 0f)
                assertEquals(actual.points[point + 5], actual.points[point + 20], 0f)
                assertEquals(baseline.points[point + 25], actual.points[point + 25], 0f)
            }
            assertArrayEquals(baseline.points.copyOfRange(0, 15), actual.points.copyOfRange(0, 15), 0f)
        }
    }

    @Test
    fun customContrastKnotsAndTailReachTheKernelWithoutHiddenDepthCoupling() {
        val curve = PhotonSharpenCurve(
            lowContrastInput = .1f, lowContrastGain = 1.5f,
            mainContrastInput = .5f, mainContrastGain = 3f,
            highContrastInput = 1.5f, highContrastGain = 1.25f,
            tailSpan = .5f,
        )
        val tuning = PhotonSharpenTuning(listOf(PhotonSharpenSnrNode(10f, curve, curve, curve)))
        val selected = MgcSharpenCurveBuilder.build(40f, tuning)
        assertArrayEquals(floatArrayOf(0f, .1f, .5f, 1.5f, 2f), selected.points.copyOfRange(0, 5), 0f)
        assertArrayEquals(floatArrayOf(0f, .15f, 1.5f, 1.875f, 2.375f), selected.points.copyOfRange(15, 20), 0f)
    }

    @Test
    fun invalidLocalTuningIsRejectedRatherThanSilentlyClamped() {
        assertThrows(IllegalArgumentException::class.java) { PhotonSharpenCurve(lowContrastInput = 1f) }
        assertThrows(IllegalArgumentException::class.java) { PhotonSharpenCurve(highContrastGain = Float.NaN) }
        assertThrows(IllegalArgumentException::class.java) { PhotonSharpenBands(band1 = -1f) }
        assertThrows(IllegalArgumentException::class.java) { PhotonSharpenTuning(emptyList()) }
        val node = PhotonSharpenTuning.DEFAULT.nodes.first()
        assertThrows(IllegalArgumentException::class.java) { PhotonSharpenTuning(listOf(node, node)) }
        assertThrows(IllegalArgumentException::class.java) { MgcSharpenCurveBuilder.build(-1f, PhotonSharpenTuning.DEFAULT) }
        val suppress = PhotonSharpenCurve(lowContrastGain = 0f)
        val invalidExtrapolation = PhotonSharpenTuning(
            listOf(PhotonSharpenSnrNode(5f, suppress, suppress, suppress)),
            PhotonSharpenBands(2f, 2f, 2f),
        )
        assertThrows(IllegalArgumentException::class.java) { MgcSharpenCurveBuilder.build(5f, invalidExtrapolation) }
    }
}
