package com.hinnka.mycamera.raw

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.max
import kotlin.math.pow
import kotlin.math.sqrt

class RawNoiseProfileSelectionTest {
    @Test
    fun camera2ProfileAveragesTheTwoGreenChannels() {
        val profile = floatArrayOf(
            1f, 10f,
            2f, 20f,
            4f, 40f,
            8f, 80f,
        )

        assertArrayEquals(
            floatArrayOf(3f, 30f),
            RawMetadata.greenNoiseProfile(profile, RawMetadata.CFA_RGGB),
            0f
        )
        assertArrayEquals(
            floatArrayOf(4.5f, 45f),
            RawMetadata.greenNoiseProfile(profile, RawMetadata.CFA_GRBG),
            0f
        )
    }

    @Test
    fun threePlaneDngProfileUsesGreenAndIgnoresNativePadding() {
        val profile = floatArrayOf(
            1f, 10f,
            2f, 20f,
            8f, 80f,
            0f, 0f,
        )

        assertArrayEquals(
            floatArrayOf(2f, 20f),
            RawMetadata.greenNoiseProfile(profile, RawMetadata.CFA_RGGB),
            0f
        )
        assertArrayEquals(floatArrayOf(11f / 3f, 110f / 3f), RawMetadata.averageNoiseProfile(profile), 1e-6f)
    }

    @Test
    fun camera2ProfileSelectsRedAndBlueFromCfaPositionOrder() {
        val profile = floatArrayOf(
            1f, 10f,
            2f, 20f,
            4f, 40f,
            8f, 80f,
        )

        assertArrayEquals(
            floatArrayOf(1f, 10f, 8f, 80f),
            RawMetadata.redBlueNoiseProfile(profile, RawMetadata.CFA_RGGB),
            0f
        )
        assertArrayEquals(
            floatArrayOf(2f, 20f, 4f, 40f),
            RawMetadata.redBlueNoiseProfile(profile, RawMetadata.CFA_GRBG),
            0f
        )
        assertArrayEquals(
            floatArrayOf(4f, 40f, 2f, 20f),
            RawMetadata.redBlueNoiseProfile(profile, RawMetadata.CFA_GBRG),
            0f
        )
        assertArrayEquals(
            floatArrayOf(8f, 80f, 1f, 10f),
            RawMetadata.redBlueNoiseProfile(profile, RawMetadata.CFA_BGGR),
            0f
        )
    }

    @Test
    fun threePlaneDngProfileSelectsRedAndBlueAndIgnoresPadding() {
        val profile = floatArrayOf(
            1f, 10f,
            2f, 20f,
            8f, 80f,
            0f, 0f,
        )

        assertArrayEquals(
            floatArrayOf(1f, 10f, 8f, 80f),
            RawMetadata.redBlueNoiseProfile(profile, RawMetadata.CFA_BGGR),
            0f
        )
    }

    @Test
    fun denoiseProfileShaderUsesCameraDomainSignalScaleInsteadOfWhiteBalanceScale() {
        val shader = DenoiseProfileShaders.PRECONDITION_V2 + DenoiseProfileShaders.FINISH_V2

        assertTrue(shader.contains("uniform vec4 uSignalScale;"))
        assertTrue(shader.contains("pixel / uSignalScale"))
        assertTrue(shader.contains("px *= uSignalScale"))
        assertFalse(shader.contains("uWb"))
    }

    @Test
    fun zeroBiasBacktransformExactlyPreservesAnUnchangedDarkSample() {
        val input = 0.003f
        val signalScale = 0.38f
        val a = 0.0089f
        val b = 3.55e-7f
        val p = 0.62f
        val transformed = 2f * max(input / signalScale + b, 0f).pow(1f - p / 2f) /
            ((2f - p) * sqrt(a))

        val delta = transformed * transformed + DenoiseProfileShaders.BLACK_PRESERVING_BIAS
        val denominator = 4f / (sqrt(a) * (2f - p))
        val z1 = (transformed + sqrt(max(delta, 0f))) / denominator
        val restored = max(z1.pow(1f / (1f - p / 2f)) - b, 0f) * signalScale

        assertEquals(0f, DenoiseProfileShaders.BLACK_PRESERVING_BIAS, 0f)
        assertEquals(input, restored, 1e-6f)
    }

    @Test
    fun fiftyMegapixelNlmAccumulatorIsSplitIntoBoundedStripes() {
        val width = 6144
        val height = 8192
        val maxSsboBytes = 128L * 1024L * 1024L

        val capacityRows = DenoiseProfileStripePlanner.capacityRows(
            imageWidth = width,
            imageHeight = height,
            maxShaderStorageBlockBytes = maxSsboBytes,
        )
        val stripes = DenoiseProfileStripePlanner.plan(height, capacityRows)

        assertEquals(256, capacityRows)
        assertEquals(32, stripes.size)
        assertEquals(
            24L * 1024L * 1024L,
            DenoiseProfileStripePlanner.requiredBytes(width, capacityRows),
        )
        assertEquals(0, stripes.first().rowOffset)
        assertEquals(height, stripes.last().rowOffset + stripes.last().rowCount)
        stripes.zipWithNext().forEach { (left, right) ->
            assertEquals(left.rowOffset + left.rowCount, right.rowOffset)
        }
    }

    @Test
    fun nlmStripeShaderKeepsSamplingInFullImageCoordinates() {
        val shader = DenoiseProfileShaders.FUSED_ACCU + DenoiseProfileShaders.FINISH_V2

        assertTrue(shader.contains("uStripeRowOffset"))
        assertTrue(shader.contains("coord = stripeCoord + ivec2(0, uStripeRowOffset)"))
        assertTrue(shader.contains("stripeCoord.y * uImageSize.x + stripeCoord.x"))
        assertFalse(shader.contains("pixelIndex(coord, uImageSize)"))
    }
}
