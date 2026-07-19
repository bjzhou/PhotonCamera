package com.hinnka.mycamera.camera

import org.junit.Assert.assertEquals
import org.junit.Test

class MultiFrameConfigTest {
    @Test
    fun cameraStateStartsWithValidMultiFrameCount() {
        assertEquals(MultiFrameConfig.DEFAULT_FRAME_COUNT, CameraState().multiFrameCount)
    }

    @Test
    fun normalizeFrameCountNeverAllowsEmptyBurst() {
        assertEquals(MultiFrameConfig.MIN_FRAME_COUNT, MultiFrameConfig.normalizeFrameCount(0))
        assertEquals(MultiFrameConfig.DEFAULT_FRAME_COUNT, MultiFrameConfig.normalizeFrameCount(6))
        assertEquals(MultiFrameConfig.MAX_FRAME_COUNT, MultiFrameConfig.normalizeFrameCount(100))
    }
}
