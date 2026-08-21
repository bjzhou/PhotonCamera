package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class MgcSpatialNoiseEstimatesLutTest {
    @Test
    fun `lut texel centers represent inclusive signal endpoints`() {
        val referenceShot = floatArrayOf(0.10f, 0.20f, 0.30f, 0.40f)
        val referenceRead = floatArrayOf(0.01f, 0.02f, 0.03f, 0.04f)
        val currentShot = floatArrayOf(0.50f, 0.60f, 0.70f, 0.80f)
        val currentRead = floatArrayOf(0.05f, 0.06f, 0.07f, 0.08f)

        val lut = MgcSpatialNoiseEstimatesLut.create(
            referenceShotNoise = referenceShot,
            referenceReadNoise = referenceRead,
            currentShotNoise = currentShot,
            currentReadNoise = currentRead,
        )

        assertTexel(lut, 0, 0, floatArrayOf(0.01f, 0.0125f, 0.04f, 0f))
        assertTexel(
            lut,
            0,
            MgcSpatialNoiseEstimatesLut.WIDTH - 1,
            floatArrayOf(0.11f, 0.1375f, 0.44f, 0f),
        )
        assertTexel(lut, 1, 0, floatArrayOf(0.05f, 0.0325f, 0.08f, 0f))
        assertTexel(
            lut,
            1,
            MgcSpatialNoiseEstimatesLut.WIDTH - 1,
            floatArrayOf(0.55f, 0.3575f, 0.88f, 0f),
        )
    }

    private fun assertTexel(
        lut: FloatArray,
        row: Int,
        x: Int,
        expected: FloatArray,
    ) {
        val offset = (
            row * MgcSpatialNoiseEstimatesLut.WIDTH + x
            ) * MgcSpatialNoiseEstimatesLut.CHANNELS
        expected.indices.forEach { channel ->
            assertEquals(expected[channel], lut[offset + channel], 1e-6f)
        }
    }
}
