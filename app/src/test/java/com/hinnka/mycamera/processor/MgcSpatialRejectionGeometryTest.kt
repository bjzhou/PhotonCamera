package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class MgcSpatialRejectionGeometryTest {
    @Test
    fun v25SpatialRejectionUsesGuideSizedRaw4InputAndRaw8MergeWeight() {
        val geometry = mgcSpatialRejectionGeometry(
            imageWidth = 4080,
            imageHeight = 3064,
            filterDownsample = 4,
        )

        assertEquals(2040, geometry.bayerQuadWidth)
        assertEquals(1532, geometry.bayerQuadHeight)
        assertEquals(1020, geometry.guideWidth)
        assertEquals(766, geometry.guideHeight)
        assertEquals(geometry.guideWidth, geometry.rejectionWidth)
        assertEquals(geometry.guideHeight, geometry.rejectionHeight)
        assertEquals(510, geometry.mergeWeightWidth)
        assertEquals(383, geometry.mergeWeightHeight)
        assertEquals(128, geometry.filterWidth)
        assertEquals(96, geometry.filterHeight)
    }
}
