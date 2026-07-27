package com.hinnka.mycamera.livephoto

import org.junit.Assert.assertEquals
import org.junit.Test

class LivePhotoOrientationTest {
    @Test
    fun landscapeUsesDeviceDisplayRotationWithoutFrontCameraInversion() {
        assertEquals(90, resolveLivePhotoRotationDegrees(90, 0))
        assertEquals(270, resolveLivePhotoRotationDegrees(270, 0))
    }

    @Test
    fun cameraCalibrationOffsetIsAppliedAndNormalized() {
        assertEquals(0, resolveLivePhotoRotationDegrees(270, 90))
        assertEquals(270, resolveLivePhotoRotationDegrees(0, -90))
    }
}
