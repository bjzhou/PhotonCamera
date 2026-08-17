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
        assertEquals(MgcSpatialOutputMode.BAYER, MgcRawMaxMode.SABRE.outputMode)
        assertEquals(MgcMergeMethod.SABRE, MgcRawMaxMode.SABRE.mergeMethod)
        assertEquals(MgcSpatialOutputMode.BAYER, MgcRawMaxMode.SPATIAL_BAYER.outputMode)
        assertEquals(MgcMergeMethod.SPATIAL_BAYER, MgcRawMaxMode.SPATIAL_BAYER.mergeMethod)
        assertEquals(MgcSpatialOutputMode.RGB, MgcRawMaxMode.SPATIAL_RGB.outputMode)
        assertEquals(MgcMergeMethod.SPATIAL_RGB, MgcRawMaxMode.SPATIAL_RGB.mergeMethod)
    }
}
