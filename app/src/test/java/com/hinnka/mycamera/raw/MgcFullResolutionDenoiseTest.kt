package com.hinnka.mycamera.raw

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
