package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class MgcMergeMethodTest {
    @Test
    fun valuesMatchMgcShotParamsMergeMethodOverride() {
        assertEquals(0, MgcMergeMethod.WIENER.mgcValue)
        assertEquals(1, MgcMergeMethod.SABRE.mgcValue)
        assertEquals(2, MgcMergeMethod.SPATIAL_BAYER.mgcValue)
        assertEquals(3, MgcMergeMethod.SPATIAL_RGB.mgcValue)
    }

    @Test
    fun rawMaxModesSelectMatchingOutputAndMergePaths() {
        assertEquals(MgcSpatialOutputMode.RGB, MgcRawMaxMode.SABRE.outputMode)
        assertEquals(MgcMergeMethod.SABRE, MgcRawMaxMode.SABRE.mergeMethod)
        assertEquals(MgcSpatialOutputMode.RGB, MgcRawMaxMode.SPATIAL.outputMode)
        assertEquals(MgcMergeMethod.SPATIAL_RGB, MgcRawMaxMode.SPATIAL.mergeMethod)
    }

    @Test
    fun bothRawMaxModesPreserveRequestedRgbOutputScale() {
        MgcRawMaxMode.entries.forEach { mode ->
            assertEquals(
                1.5f,
                resolveRawStackOutputScale(mode.outputMode, 1.5f),
                0f,
            )
        }
        assertEquals(
            1f,
            resolveRawStackOutputScale(MgcSpatialOutputMode.BAYER, 1.5f),
            0f,
        )
    }
}
