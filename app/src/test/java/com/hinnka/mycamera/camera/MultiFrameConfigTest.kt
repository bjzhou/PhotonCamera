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

    @Test
    fun configuredFrameCountIncludesOneShortFrame() {
        assertEquals(
            MultiFrameConfig.DEFAULT_FRAME_COUNT - 1,
            MultiFrameConfig.normalFrameCount(MultiFrameConfig.DEFAULT_FRAME_COUNT),
        )
        assertEquals(
            MultiFrameConfig.DEFAULT_FRAME_COUNT,
            MultiFrameConfig.captureFrameCount(MultiFrameConfig.DEFAULT_FRAME_COUNT),
        )
        assertEquals(
            MultiFrameConfig.MAX_FRAME_COUNT,
            MultiFrameConfig.captureFrameCount(Int.MAX_VALUE),
        )
    }
}
