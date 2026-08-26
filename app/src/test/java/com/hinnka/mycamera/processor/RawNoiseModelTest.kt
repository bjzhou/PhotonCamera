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
        val model = RawNoiseModel.fromDngNoiseProfile(
            floatArrayOf(
                1f, 10f,
                2f, 20f,
                3f, 30f,
            ),
        )

        assertArrayEquals(
            floatArrayOf(1f, 2f, 2f, 3f),
            model.normalizedShotNoiseForShader(cfaPattern = 3),
            0f,
        )
    }

    @Test
    fun camera2ImporterRejectsAThreePlaneDngProfile() {
        val model = RawNoiseModel.fromCamera2NoiseProfile(
            floatArrayOf(
                1f, 10f,
                2f, 20f,
                3f, 30f,
            ),
        )

        assertFalse(model.hasValidCamera2Profile)
        assertArrayEquals(FloatArray(4), model.shotNoise, 0f)
        assertArrayEquals(FloatArray(4), model.readNoise, 0f)
    }

    @Test
    fun camera2ImporterRejectsShotOnlyProfile() {
        val model = RawNoiseModel.fromCamera2NoiseProfile(
            floatArrayOf(
                1f, 0f,
                2f, 0f,
                3f, 0f,
                4f, 0f,
            ),
        )

        assertFalse(model.hasValidCamera2Profile)
        assertArrayEquals(floatArrayOf(1f, 2f, 3f, 4f), model.shotNoise, 0f)
        assertArrayEquals(FloatArray(4), model.readNoise, 0f)
    }

    @Test
    fun camera2ImporterAllowsAnIndividualZeroReadTerm() {
        val model = RawNoiseModel.fromCamera2NoiseProfile(
            floatArrayOf(
                1f, 0f,
                2f, 20f,
                3f, 30f,
                4f, 40f,
            ),
        )

        assertTrue(model.hasValidCamera2Profile)
    }

    @Test
    fun defaultResolverUsesExactPerFrameCamera2PairsWithoutCalibrationOrAveraging() {
        val perFrame = floatArrayOf(
            1f, 10f,
            2f, 20f,
            3f, 30f,
            4f, 40f,
        )
        val base = RawNoiseModel.fromCamera2NoiseProfile(
            floatArrayOf(
                11f, 110f,
                12f, 120f,
                13f, 130f,
                14f, 140f,
            ),
        )

        val resolved = RawNoiseModelResolver.resolve(
            selection = RawNoiseProfileSelection.Camera2,
            sensitivity = 8000,
            perFrameCamera2Profile = perFrame,
            baseFrameCamera2Model = base,
        )

        assertEquals(RawNoiseModelSource.CAMERA2_PER_FRAME, resolved.source)
        assertArrayEquals(floatArrayOf(1f, 2f, 3f, 4f), resolved.model.shotNoise, 0f)
        assertArrayEquals(floatArrayOf(10f, 20f, 30f, 40f), resolved.model.readNoise, 0f)
    }

    @Test
    fun defaultResolverFallsBackOnlyToExactBaseCamera2Model() {
        val base = RawNoiseModel.fromCamera2NoiseProfile(
            floatArrayOf(
                1f, 10f,
                2f, 20f,
                3f, 30f,
                4f, 40f,
            ),
        )

        val resolved = RawNoiseModelResolver.resolve(
            selection = RawNoiseProfileSelection.Camera2,
            sensitivity = 8000,
            perFrameCamera2Profile = null,
            baseFrameCamera2Model = base,
        )

        assertEquals(RawNoiseModelSource.CAMERA2_BASE_FRAME, resolved.source)
        assertArrayEquals(base.shotNoise, resolved.model.shotNoise, 0f)
        assertArrayEquals(base.readNoise, resolved.model.readNoise, 0f)
    }

    @Test
    fun defaultResolverReportsUnavailableWhenCamera2ProfilesAreUnavailable() {
        val resolved = RawNoiseModelResolver.resolve(
            selection = RawNoiseProfileSelection.Camera2,
            sensitivity = 8000,
            perFrameCamera2Profile = null,
            baseFrameCamera2Model = RawNoiseModel.EMPTY,
        )

        assertEquals(RawNoiseModelSource.UNAVAILABLE, resolved.source)
        assertArrayEquals(FloatArray(4), resolved.model.shotNoise, 0f)
        assertArrayEquals(FloatArray(4), resolved.model.readNoise, 0f)
    }

    @Test
    fun defaultResolverReportsUnavailableWhenCamera2ReadTermsAreZero() {
        val shotOnlyProfile = floatArrayOf(
            1f, 0f,
            2f, 0f,
            3f, 0f,
            4f, 0f,
        )

        val resolved = RawNoiseModelResolver.resolve(
            selection = RawNoiseProfileSelection.Camera2,
            sensitivity = 800,
            perFrameCamera2Profile = shotOnlyProfile,
            baseFrameCamera2Model = RawNoiseModel.fromCamera2NoiseProfile(shotOnlyProfile),
        )

        assertEquals(RawNoiseModelSource.UNAVAILABLE, resolved.source)
        assertArrayEquals(FloatArray(4), resolved.model.shotNoise, 0f)
        assertArrayEquals(FloatArray(4), resolved.model.readNoise, 0f)
    }

    @Test
    fun calibratedSelectionNeverFallsBackToCamera2() {
        val camera2 = floatArrayOf(
            1f, 10f,
            2f, 20f,
            3f, 30f,
            4f, 40f,
        )
        val resolved = RawNoiseModelResolver.resolve(
            selection = RawNoiseProfileSelection.Calibrated(
                CalibratedRawNoiseProfile.MGC_GOOGLE_BLUELINE_REAR,
            ),
            sensitivity = 0,
            perFrameCamera2Profile = camera2,
            baseFrameCamera2Model = RawNoiseModel.fromCamera2NoiseProfile(camera2),
        )

        assertEquals(RawNoiseModelSource.UNAVAILABLE, resolved.source)
    }

    @Test
    fun bayerNoiseModelRemapAveragesGreenCoefficients() {
        val rgb = RawNoiseModel.bayerNoiseModelToRgb(
            floatArrayOf(4f, 6f, 10f, 12f),
        )

        assertArrayEquals(floatArrayOf(4f, 8f, 12f), rgb, 0f)
    }

    @Test
    fun equalBayerNoiseCoefficientsRemainEqualAfterMgcRgbRemap() {
        val rgb = RawNoiseModel.bayerNoiseModelToRgb(FloatArray(4) { 0.003f })

        assertArrayEquals(FloatArray(3) { 0.003f }, rgb, 0f)
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
