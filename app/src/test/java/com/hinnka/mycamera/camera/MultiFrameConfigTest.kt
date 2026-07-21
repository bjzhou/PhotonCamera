package com.hinnka.mycamera.camera

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class MultiFrameConfigTest {
    @Test
    fun cameraStateStartsWithValidMultiFrameCount() {
        assertEquals(MultiFrameConfig.DEFAULT_FRAME_COUNT, CameraState().multiFrameCount)
    }

    @Test
    fun cameraStateRoutesMaxModeByCaptureFormat() {
        val jpgMax = CameraState(
            multiFrameOutputScale = 1f,
            useRaw = false,
        )
        val rawMax = CameraState(
            multiFrameOutputScale = 1.5f,
            useRaw = true,
            isRawSupported = true,
        )

        assertTrue(jpgMax.isJpgMaxEnabled)
        assertFalse(jpgMax.isRawMaxEnabled)
        assertTrue(rawMax.isRawMaxEnabled)
        assertFalse(rawMax.isJpgMaxEnabled)
    }

    @Test
    fun rawMaxNeverFallsBackToYuvWhenRawIsUnsupported() {
        val unsupportedRawMax = CameraState(
            multiFrameOutputScale = 1.5f,
            useRaw = true,
            isRawSupported = false,
        )

        assertFalse(unsupportedRawMax.isMultiFrameEnabled)
        assertFalse(unsupportedRawMax.isJpgMaxEnabled)
        assertFalse(unsupportedRawMax.isRawMaxEnabled)
    }

    @Test
    fun normalizeFrameCountNeverAllowsEmptyBurst() {
        assertEquals(MultiFrameConfig.MIN_FRAME_COUNT, MultiFrameConfig.normalizeFrameCount(0))
        assertEquals(MultiFrameConfig.DEFAULT_FRAME_COUNT, MultiFrameConfig.normalizeFrameCount(6))
        assertEquals(MultiFrameConfig.MAX_FRAME_COUNT, MultiFrameConfig.normalizeFrameCount(100))
    }

    @Test
    fun outputScaleSupportsFloatingPointRangeAndRejectsNonFiniteValues() {
        assertEquals(1f, MultiFrameConfig.normalizeOutputScale(0.5f))
        assertEquals(1.35f, MultiFrameConfig.normalizeOutputScale(1.35f))
        assertEquals(2f, MultiFrameConfig.normalizeOutputScale(2.5f))
        assertEquals(1f, MultiFrameConfig.normalizeOutputScale(Float.NaN))
        assertEquals(
            MultiFrameConfig.DEFAULT_SUPER_RESOLUTION_SCALE,
            MultiFrameConfig.normalizeOutputScale(
                Float.POSITIVE_INFINITY,
                MultiFrameConfig.DEFAULT_SUPER_RESOLUTION_SCALE,
            ),
        )
    }

    @Test
    fun fractionalRawOutputDimensionsMatchRadianceEvenSizeRule() {
        assertEquals(65, MultiFrameConfig.scaledRawOutputDimension(65, 1f))
        assertEquals(98, MultiFrameConfig.scaledRawOutputDimension(65, 1.5f))
        assertEquals(98, MultiFrameConfig.scaledRawOutputDimension(66, 1.5f))
        assertEquals(130, MultiFrameConfig.scaledRawOutputDimension(65, 2f))
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
