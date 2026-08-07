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
            RawMetadata.greenNoiseProfile(
                profile,
                RawMetadata.CFA_RGGB,
                RawNoiseProfileLayout.CAMERA2_CFA,
            ),
            0f
        )
        assertArrayEquals(
            floatArrayOf(4.5f, 45f),
            RawMetadata.greenNoiseProfile(
                profile,
                RawMetadata.CFA_GRBG,
                RawNoiseProfileLayout.CAMERA2_CFA,
            ),
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
            RawMetadata.greenNoiseProfile(
                profile,
                RawMetadata.CFA_RGGB,
                RawNoiseProfileLayout.DNG_RGB,
            ),
            0f
        )
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
            RawMetadata.redBlueNoiseProfile(
                profile,
                RawMetadata.CFA_RGGB,
                RawNoiseProfileLayout.CAMERA2_CFA,
            ),
            0f
        )
        assertArrayEquals(
            floatArrayOf(2f, 20f, 4f, 40f),
            RawMetadata.redBlueNoiseProfile(
                profile,
                RawMetadata.CFA_GRBG,
                RawNoiseProfileLayout.CAMERA2_CFA,
            ),
            0f
        )
        assertArrayEquals(
            floatArrayOf(4f, 40f, 2f, 20f),
            RawMetadata.redBlueNoiseProfile(
                profile,
                RawMetadata.CFA_GBRG,
                RawNoiseProfileLayout.CAMERA2_CFA,
            ),
            0f
        )
        assertArrayEquals(
            floatArrayOf(8f, 80f, 1f, 10f),
            RawMetadata.redBlueNoiseProfile(
                profile,
                RawMetadata.CFA_BGGR,
                RawNoiseProfileLayout.CAMERA2_CFA,
            ),
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
            RawMetadata.redBlueNoiseProfile(
                profile,
                RawMetadata.CFA_BGGR,
                RawNoiseProfileLayout.DNG_RGB,
            ),
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
    fun nlmSearchOffsetsCoverSymmetricWindowExactlyOnce() {
        val radius = DenoiseProfileShaders.SEARCH_RADIUS
        val candidates = buildList {
            DenoiseProfileNlmConfig.buildSearchOffsets(radius).forEach { q ->
                add(q.x to q.y)
                if (q.x != 0 || q.y != 0) {
                    add(-q.x to -q.y)
                }
            }
        }

        val windowWidth = 2 * radius + 1
        assertEquals(windowWidth * windowWidth, candidates.size)
        assertEquals(candidates.size, candidates.toSet().size)
        assertTrue(candidates.all { (x, y) -> x in -radius..radius && y in -radius..radius })
    }

    @Test
    fun nlmWeightTuningSubtractsVarianceStabilizedNoiseFloor() {
        val tuning = DenoiseProfileNlmConfig.weightTuning(
            DenoiseProfileShaders.PATCH_RADIUS
        )

        assertEquals(54f, tuning.expectedFineDistance, 0f)
        assertEquals(2.53125f, tuning.expectedGuideDistance, 1e-6f)
        assertEquals(1f / 54f, tuning.inverseBandwidth, 1e-7f)
        assertEquals(8f, tuning.coarseGuideWeight, 0f)
    }

    @Test
    fun nlmShaderUsesCoarseGuideAndExplicitNoiseFloor() {
        val shader = DenoiseProfileShaders.PRECONDITION_V2 +
            DenoiseProfileShaders.FUSED_ACCU +
            DenoiseProfileShaders.FINISH_V2

        assertTrue(shader.contains("t.a = guide"))
        assertTrue(shader.contains("uExpectedFineDistance"))
        assertTrue(shader.contains("uExpectedGuideDistance"))
        assertTrue(shader.contains("uCoarseGuideWeight"))
        assertTrue(shader.contains("uDenoiseMix"))
        assertFalse(shader.contains("distacc * uNorm - 2.0"))
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
