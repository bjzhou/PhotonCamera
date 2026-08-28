package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class MgcSpatialRejectionGeometryTest {
    @Test
    fun v25SpatialRejectionUsesRaw2GuideRaw4MergeWeightAndRaw16Filter() {
        val geometry = mgcSpatialRejectionGeometry(
            imageWidth = 4080,
            imageHeight = 3064,
            filterDownsample = 4,
        )

        assertEquals(2040, geometry.bayerQuadWidth)
        assertEquals(1532, geometry.bayerQuadHeight)
        assertEquals(2040, geometry.guideWidth)
        assertEquals(1532, geometry.guideHeight)
        assertEquals(geometry.guideWidth, geometry.rejectionWidth)
        assertEquals(geometry.guideHeight, geometry.rejectionHeight)
        assertEquals(1020, geometry.mergeWeightWidth)
        assertEquals(766, geometry.mergeWeightHeight)
        assertEquals(255, geometry.filterWidth)
        assertEquals(192, geometry.filterHeight)
    }
}
