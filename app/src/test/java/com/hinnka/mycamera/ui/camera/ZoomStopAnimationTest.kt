package com.hinnka.mycamera.ui.camera

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.sqrt

class ZoomStopAnimationTest {

    @Test
    fun logarithmicInterpolationUsesGeometricMidpoint() {
        assertEquals(1f, interpolateZoomRatio(1f, 4f, 0f), 0.0001f)
        assertEquals(sqrt(4f), interpolateZoomRatio(1f, 4f, 0.5f), 0.0001f)
        assertEquals(4f, interpolateZoomRatio(1f, 4f, 1f), 0.0001f)
    }

    @Test
    fun fartherZoomStopsReceiveLongerBoundedAnimation() {
        val oneStopDuration = resolveZoomStopAnimationDurationMillis(1f, 2f)
        val twoStopDuration = resolveZoomStopAnimationDurationMillis(1f, 4f)
        val longDuration = resolveZoomStopAnimationDurationMillis(0.5f, 20f)

        assertTrue(twoStopDuration > oneStopDuration)
        assertTrue(longDuration >= twoStopDuration)
        assertTrue(longDuration <= 420)
    }
}
