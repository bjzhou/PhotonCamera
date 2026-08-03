package com.hinnka.mycamera.processor

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class RawStackRegistrationTest {
    @Test
    fun selectsCamxRegistrationSizeFromHalfResolutionInput() {
        val setup = RawStackRegistrationResolver.resolve(4096, 3072)

        assertEquals(2048, setup.registrationInputWidth)
        assertEquals(1536, setup.registrationInputHeight)
        assertEquals(RawStackRegistrationResolution(1920, 1440), setup.registrationSize)
    }

    @Test
    fun selectsAspectCompatibleCamxRegistrationSize() {
        val setup = RawStackRegistrationResolver.resolve(3840, 2160)

        assertEquals(1920, setup.registrationInputWidth)
        assertEquals(1080, setup.registrationInputHeight)
        assertEquals(RawStackRegistrationResolution(1920, 1080), setup.registrationSize)
    }

    @Test
    fun fallsBackToSmallestCamxRegistrationSize() {
        val setup = RawStackRegistrationResolver.resolve(1280, 720)

        assertEquals(640, setup.registrationInputWidth)
        assertEquals(360, setup.registrationInputHeight)
        assertEquals(RawStackRegistrationResolution(480, 270), setup.registrationSize)
    }

    @Test
    fun mirrorsCamxDs64DisableGate() {
        assertTrue(RawStackRegistrationResolver.resolve(4096, 3072).ds64Enabled)
        assertTrue(RawStackRegistrationResolver.resolve(1921, 1665).ds64Enabled)
        assertFalse(RawStackRegistrationResolver.resolve(1920, 2000).ds64Enabled)
        assertFalse(RawStackRegistrationResolver.resolve(2500, 1664).ds64Enabled)
    }

    @Test
    fun identityTransformUsesCamxRegistrationGeometry() {
        val setup = RawStackRegistrationResolver.resolve(4096, 3072)
        val transform = setup.identityTransform(RawStackRegistrationStage.BLEND)

        assertEquals(3, transform.geometryColumns)
        assertEquals(3, transform.geometryRows)
        assertEquals(9, transform.matrixCount)
        assertEquals(81, transform.perspectiveTransformArray.size)
        repeat(transform.matrixCount) { index ->
            assertArrayEquals(
                floatArrayOf(
                    1f, 0f, 0f,
                    0f, 1f, 0f,
                    0f, 0f, 1f,
                ),
                transform.matrixAt(index),
                0f,
            )
        }
    }

    @Test
    fun confidenceConfigPreservesCamxIdentityFallbackThreshold() {
        val config = RawStackRegistrationConfidenceConfig.CamxMfBlend

        assertEquals(256, config.maxConfidence)
        assertEquals(255, config.transformConfidenceMappingBase)
        assertEquals(0, config.transformConfidenceMappingC1)
        assertEquals(0, config.transformConfidenceMappingC2)
        assertEquals(100, config.forceIdentityThreshold)
        assertTrue(config.shouldForceIdentity(99))
        assertFalse(config.shouldForceIdentity(100))
    }
}
