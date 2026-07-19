package com.hinnka.mycamera.processor

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class RawNoiseModelTest {
    @Test
    fun legacyNoiseModelReplicatesScalarCoefficientsAcrossBayerChannels() {
        val model = RawNoiseModel.fromLegacyNoiseModel(floatArrayOf(1024f, 256f))

        assertFalse(model.hasValidCamera2Profile)
        assertArrayEquals(floatArrayOf(1024f, 1024f, 1024f, 1024f), model.shotNoise, 0f)
        assertArrayEquals(floatArrayOf(256f, 256f, 256f, 256f), model.readNoise, 0f)
        assertEquals(1024f, model.greenShotNoise, 0f)
        assertEquals(256f, model.greenReadNoise, 0f)
    }

    @Test
    fun camera2NoiseProfilePreservesFourChannelPairs() {
        val model = RawNoiseModel.fromCamera2NoiseProfile(
            floatArrayOf(
                1f, 2f,
                3f, 4f,
                5f, 6f,
                7f, 8f,
            ),
        )

        assertTrue(model.hasValidCamera2Profile)
        assertArrayEquals(floatArrayOf(1f, 3f, 5f, 7f), model.shotNoise, 0f)
        assertArrayEquals(floatArrayOf(2f, 4f, 6f, 8f), model.readNoise, 0f)
        assertEquals(4f, model.averageShotNoise, 0f)
        assertEquals(5f, model.averageReadNoise, 0f)
        assertEquals(4f, model.greenShotNoise, 0f)
        assertEquals(5f, model.greenReadNoise, 0f)
    }

    @Test
    fun noiseModelKeepsAlreadyNormalizedSensorCoefficientsInShaderDomain() {
        val model = RawNoiseModel.fromCamera2NoiseProfile(
            floatArrayOf(
                0.001f, 0.00001f,
                0.002f, 0.00002f,
                0.003f, 0.00003f,
                0.004f, 0.00004f,
            ),
        )

        assertArrayEquals(
            floatArrayOf(0.001f, 0.002f, 0.003f, 0.004f),
            model.normalizedShotNoiseForShader(),
            0f,
        )
        assertArrayEquals(
            floatArrayOf(0.00001f, 0.00002f, 0.00003f, 0.00004f),
            model.normalizedReadNoiseForShader(),
            0f,
        )
    }

    @Test
    fun camera2PhaseNoiseIsReorderedToCanonicalBayerChannels() {
        val model = RawNoiseModel.fromCamera2NoiseProfile(
            floatArrayOf(
                1f, 10f,
                2f, 20f,
                3f, 30f,
                4f, 40f,
            ),
        )

        assertArrayEquals(
            floatArrayOf(2f, 1f, 4f, 3f),
            model.normalizedShotNoiseForShader(cfaPattern = 1),
            0f,
        )
        assertArrayEquals(
            floatArrayOf(30f, 40f, 10f, 20f),
            model.normalizedReadNoiseForShader(cfaPattern = 2),
            0f,
        )
    }

    @Test
    fun threePlaneDngNoiseExpandsGreenWithoutCfaReordering() {
        val model = RawNoiseModel.fromCamera2NoiseProfile(
            floatArrayOf(
                1f, 10f,
                2f, 20f,
                3f, 30f,
                0f, 0f,
            ),
        )

        assertArrayEquals(
            floatArrayOf(1f, 2f, 2f, 3f),
            model.normalizedShotNoiseForShader(cfaPattern = 3),
            0f,
        )
    }

    @Test
    fun invalidNoiseProfilesCollapseToZeroModel() {
        val empty = RawNoiseModel.fromCamera2NoiseProfile(FloatArray(0))
        val negative = RawNoiseModel.fromCamera2NoiseProfile(
            floatArrayOf(
                -1f, -2f,
                Float.NaN, Float.POSITIVE_INFINITY,
            ),
        )

        assertFalse(empty.hasValidCamera2Profile)
        assertArrayEquals(FloatArray(4), empty.shotNoise, 0f)
        assertArrayEquals(FloatArray(4), empty.readNoise, 0f)

        assertFalse(negative.hasValidCamera2Profile)
        assertArrayEquals(FloatArray(4), negative.shotNoise, 0f)
        assertArrayEquals(FloatArray(4), negative.readNoise, 0f)
    }
}
