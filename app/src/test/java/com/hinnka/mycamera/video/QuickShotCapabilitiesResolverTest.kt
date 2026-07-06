package com.hinnka.mycamera.video

import org.junit.Assert.assertEquals
import org.junit.Test

class QuickShotCapabilitiesResolverTest {
    @Test
    fun resolveFromOutputSizes_prefersExactAspectAndTargetLongEdge() {
        val snapshot = QuickShotCapabilitiesResolver.resolveFromOutputSizes(
            outputSizes = listOf(
                QuickShotOutputSize(1920, 1080),
                QuickShotOutputSize(1920, 1440),
                QuickShotOutputSize(2560, 1440),
                QuickShotOutputSize(2560, 1920)
            ),
            requestedConfig = QuickShotConfig(QuickShotResolutionPreset.QHD_2K),
            portraitAspectRatio = 3f / 4f
        )

        assertEquals(QuickShotResolutionPreset.QHD_2K, snapshot.config.resolution)
        assertEquals(QuickShotOutputSize(2560, 1920), snapshot.previewSize)
    }

    @Test
    fun resolveFromOutputSizes_usesClosestLargerSizeWhenExactLongEdgeMissing() {
        val snapshot = QuickShotCapabilitiesResolver.resolveFromOutputSizes(
            outputSizes = listOf(
                QuickShotOutputSize(1920, 1440),
                QuickShotOutputSize(2688, 2016),
                QuickShotOutputSize(3840, 2160)
            ),
            requestedConfig = QuickShotConfig(QuickShotResolutionPreset.QHD_2K),
            portraitAspectRatio = 3f / 4f
        )

        assertEquals(QuickShotResolutionPreset.QHD_2K, snapshot.config.resolution)
        assertEquals(QuickShotOutputSize(2688, 2016), snapshot.previewSize)
    }

    @Test
    fun resolveFromOutputSizes_fullUsesLargestSurfaceTextureSize() {
        val snapshot = QuickShotCapabilitiesResolver.resolveFromOutputSizes(
            outputSizes = listOf(
                QuickShotOutputSize(1920, 1440),
                QuickShotOutputSize(3840, 2160),
                QuickShotOutputSize(4000, 3000)
            ),
            requestedConfig = QuickShotConfig(QuickShotResolutionPreset.FULL),
            portraitAspectRatio = 3f / 4f
        )

        assertEquals(QuickShotResolutionPreset.FULL, snapshot.config.resolution)
        assertEquals(QuickShotOutputSize(4000, 3000), snapshot.previewSize)
    }

    @Test
    fun resolveFromOutputSizes_fallsBackWhenRequestedPresetUnavailable() {
        val snapshot = QuickShotCapabilitiesResolver.resolveFromOutputSizes(
            outputSizes = listOf(QuickShotOutputSize(1280, 720)),
            requestedConfig = QuickShotConfig(QuickShotResolutionPreset.UHD_4K),
            portraitAspectRatio = 9f / 16f
        )

        assertEquals(QuickShotResolutionPreset.FULL, snapshot.config.resolution)
        assertEquals(QuickShotOutputSize(1280, 720), snapshot.previewSize)
    }
}
