package com.hinnka.mycamera.camera

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
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
    fun configuredFrameCountIsPartitionedWithoutGrowingBurst() {
        assertEquals(
            4,
            MultiFrameConfig.normalFrameCount(MultiFrameConfig.DEFAULT_FRAME_COUNT),
        )
        assertEquals(1, MultiFrameConfig.longFrameCount(MultiFrameConfig.DEFAULT_FRAME_COUNT))
        assertEquals(
            MultiFrameConfig.DEFAULT_FRAME_COUNT,
            MultiFrameConfig.captureFrameCount(MultiFrameConfig.DEFAULT_FRAME_COUNT),
        )
        assertEquals(
            MultiFrameConfig.MAX_FRAME_COUNT,
            MultiFrameConfig.captureFrameCount(Int.MAX_VALUE),
        )
        assertEquals(5, MultiFrameConfig.longFrameCount(Int.MAX_VALUE))
        assertEquals(14, MultiFrameConfig.normalFrameCount(Int.MAX_VALUE))
    }

    @Test
    fun minimumBurstRetainsOneFrameForEveryExposureRole() {
        assertEquals(1, MultiFrameConfig.normalFrameCount(0))
        assertEquals(1, MultiFrameConfig.SHORT_FRAME_COUNT)
        assertEquals(1, MultiFrameConfig.longFrameCount(0))
        assertEquals(3, MultiFrameConfig.captureFrameCount(0))
    }

    @Test
    fun everySupportedCountPreservesTheConfiguredTotal() {
        for (frameCount in MultiFrameConfig.MIN_FRAME_COUNT..MultiFrameConfig.MAX_FRAME_COUNT) {
            assertEquals(frameCount, MultiFrameConfig.captureFrameCount(frameCount))
            assertEquals(
                frameCount,
                MultiFrameConfig.normalFrameCount(frameCount) +
                    MultiFrameConfig.SHORT_FRAME_COUNT +
                    MultiFrameConfig.longFrameCount(frameCount),
            )
            assertTrue(MultiFrameConfig.normalFrameCount(frameCount) >= 1)
        }
    }
}
