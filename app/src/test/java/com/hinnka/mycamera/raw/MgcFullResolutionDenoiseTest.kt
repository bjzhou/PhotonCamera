package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.PhotonPyramidOverrides
import com.hinnka.mycamera.processor.PhotonSabreLumaTuningNodes
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertNull
import org.junit.Test

class MgcFullResolutionDenoiseTest {
    @Test
    fun userAdjustmentNoiseModelMapsCamera2CfaPhasesToCanonicalRgb() {
        val metadata = metadata(
            cfaPattern = RawMetadata.CFA_BGGR,
            noiseProfileLayout = RawNoiseProfileLayout.CAMERA2_CFA,
            channelNoiseProfile = floatArrayOf(
                8f, 80f,
                4f, 40f,
                2f, 20f,
                1f, 10f,
            ),
        )

        val noise = requireNotNull(
            MgcFullResolutionDenoise.resolveUserAdjustmentCameraRgbNoise(metadata),
        )

        assertArrayEquals(floatArrayOf(10f, 30f, 80f), noise.read, 0f)
        assertArrayEquals(floatArrayOf(1f, 3f, 8f), noise.shot, 0f)
    }

    @Test
    fun userAdjustmentNoiseModelRejectsIncompleteCanonicalProfile() {
        val metadata = metadata(
            cfaPattern = RawMetadata.CFA_RGGB,
            noiseProfileLayout = RawNoiseProfileLayout.CANONICAL_BAYER,
            channelNoiseProfile = floatArrayOf(1f, 10f, 2f, 20f, 4f, 40f),
        )

        assertNull(MgcFullResolutionDenoise.resolveUserAdjustmentCameraRgbNoise(metadata))
    }

    @Test
    fun lumaStrengthScalesChangeOnlyFiveLevelStrengthFields() {
        val original = MgcFullResolutionDenoise.Tuning(
            strength = floatArrayOf(1f, 2f, 3f, 4f, 5f),
            revertFactor = floatArrayOf(6f, 7f, 8f, 9f, 10f),
            outlierDistance = floatArrayOf(11f, 12f, 13f, 14f, 15f),
        )

        val patched = MgcFullResolutionDenoise.applyLumaStrengthScales(
            tuning = original,
            globalScale = 0.5f,
            levelScales = floatArrayOf(2f, 2f, 2f, 2f, 3f),
        )

        assertArrayEquals(floatArrayOf(1f, 2f, 3f, 4f, 7.5f), patched.strength, 0f)
        assertArrayEquals(original.revertFactor, patched.revertFactor, 0f)
        assertArrayEquals(original.outlierDistance, patched.outlierDistance, 0f)
    }

    @Test
    fun denoiseDomainsMultiplyTheirIndependentProtoFields() {
        val original = MgcFullResolutionDenoise.Tuning(
            strength = floatArrayOf(1f, 2f, 3f, 4f, 5f),
            revertFactor = floatArrayOf(2f, 3f, 4f, 5f, 6f),
            outlierDistance = floatArrayOf(3f, 4f, 5f, 6f, 7f),
        )

        val patched = MgcFullResolutionDenoise.applyCoreDenoiseScales(
            tuning = original,
            globalStrengthScale = 0.5f,
            strengthLevelScales = floatArrayOf(2f, 2f, 2f, 2f, 3f),
            revertLevelScales = floatArrayOf(0.25f, 0.25f, 0.25f, 0.25f, 0.5f),
            outlierLevelScales = floatArrayOf(4f, 4f, 4f, 4f, 5f),
        )

        assertArrayEquals(floatArrayOf(1f, 2f, 3f, 4f, 7.5f), patched.strength, 0f)
        assertArrayEquals(floatArrayOf(0.5f, 0.75f, 1f, 1.25f, 3f), patched.revertFactor, 0f)
        assertArrayEquals(floatArrayOf(12f, 16f, 20f, 24f, 35f), patched.outlierDistance, 0f)
    }

    @Test
    fun sabreLumaOverridesReplaceTuningNodeBeforeInterpolation() {
        val original = MgcFullResolutionDenoise.Tuning(
            strength = floatArrayOf(1f, 2f, 3f, 4f, 5f),
            revertFactor = FloatArray(5) { 6f },
            outlierDistance = FloatArray(5) { 7f },
        )
        val nodes = PhotonSabreLumaTuningNodes(
            snr5 = PhotonPyramidOverrides(0.8f, null, 0.5f, null, 0.7f),
        )

        val patched = MgcFullResolutionDenoise.applySabreLumaNodeOverrides(
            tuning = original,
            snr = PhotonSabreLumaTuningNodes.SNR_5,
            nodes = nodes,
        )

        assertArrayEquals(floatArrayOf(0.8f, 2f, 0.5f, 4f, 0.7f), patched.strength, 0f)
        assertArrayEquals(original.revertFactor, patched.revertFactor, 0f)
        assertArrayEquals(original.outlierDistance, patched.outlierDistance, 0f)
    }

    @Test
    fun fusionCorrelationControlScalesSpectrumNotNoiseCoefficients() {
        val identity = MgcFullResolutionDenoise.applyFusionCorrelationScale(
            correlation = null,
            scale = 0.5f,
            enabled = true,
        )
        assertArrayEquals(FloatArray(128) { 0.5f }, requireNotNull(identity), 0f)

        val untouched = FloatArray(128) { 2f }
        assertArrayEquals(
            untouched,
            requireNotNull(
                MgcFullResolutionDenoise.applyFusionCorrelationScale(
                    correlation = untouched,
                    scale = 0.5f,
                    enabled = false,
                ),
            ),
            0f,
        )
    }

    private fun metadata(
        cfaPattern: Int,
        noiseProfileLayout: RawNoiseProfileLayout,
        channelNoiseProfile: FloatArray,
    ): RawMetadata = RawMetadata(
        width = 64,
        height = 64,
        cfaPattern = cfaPattern,
        blackLevel = FloatArray(4),
        whiteLevel = 65535f,
        whiteBalanceGains = FloatArray(4) { 1f },
        colorCorrectionMatrix = floatArrayOf(
            1f, 0f, 0f,
            0f, 1f, 0f,
            0f, 0f, 1f,
        ),
        channelNoiseProfile = channelNoiseProfile,
        noiseProfileLayout = noiseProfileLayout,
    )
}
