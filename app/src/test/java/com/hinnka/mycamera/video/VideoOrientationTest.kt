package com.hinnka.mycamera.video

import org.junit.Assert.assertEquals
import org.junit.Test

class VideoOrientationTest {
    @Test
    fun portraitDoesNotReapplySensorOrientation() {
        assertEquals(0, resolveSurfaceTextureVideoOrientationDegrees(0, 0))
    }

    @Test
    fun landscapeUsesDeviceDisplayRotation() {
        assertEquals(90, resolveSurfaceTextureVideoOrientationDegrees(90, 0))
        assertEquals(270, resolveSurfaceTextureVideoOrientationDegrees(270, 0))
    }

    @Test
    fun cameraCalibrationOffsetIsAppliedAndNormalized() {
        assertEquals(0, resolveSurfaceTextureVideoOrientationDegrees(270, 90))
        assertEquals(270, resolveSurfaceTextureVideoOrientationDegrees(0, -90))
    }
}
