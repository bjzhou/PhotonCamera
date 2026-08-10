package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class MgcSpatialStrengthAtlasLayoutTest {
    @Test
    fun alignmentPlanesRemainInOneColumnWhenTheyFit() {
        val layout = createMgcSpatialStrengthAtlasLayout(
            planeWidth = 510,
            planeHeight = 383,
            planeCount = 38,
            maximumTextureSize = 16_384,
        )

        assertEquals(1, layout.columns)
        assertEquals(38, layout.rows)
        assertEquals(510, layout.atlasWidth)
        assertEquals(14_554, layout.atlasHeight)
    }

    @Test
    fun rejectionPlanesWrapAcrossColumnsAtTheTextureHeightLimit() {
        val layout = createMgcSpatialStrengthAtlasLayout(
            planeWidth = 2_040,
            planeHeight = 1_532,
            planeCount = 19,
            maximumTextureSize = 16_384,
        )

        assertEquals(2, layout.columns)
        assertEquals(10, layout.rows)
        assertEquals(4_080, layout.atlasWidth)
        assertEquals(15_320, layout.atlasHeight)
        assertEquals(2_040, layout.originX(9))
        assertEquals(6_128, layout.originY(9))
        assertEquals(0, layout.originX(10))
        assertEquals(7_660, layout.originY(10))
        assertEquals(0, layout.originX(18))
        assertEquals(13_788, layout.originY(18))
    }

    @Test
    fun rejectionPackDispatchWrapsAcrossTheDeviceGroupCountLimit() {
        val valueCount = 2_040L * 1_532L * 19L
        val invocationCount = (valueCount + 3L) / 4L
        val dispatch = createMgcSpatialStrengthPackDispatch(
            invocationCount = invocationCount,
            localSize = GlesComputeWorkGroup.LINEAR_SIZE,
            maximumGroupsX = 65_535,
            maximumGroupsY = 65_535,
        )

        assertEquals(65_535, dispatch.groupsX)
        assertEquals(2, dispatch.groupsY)
    }
}
