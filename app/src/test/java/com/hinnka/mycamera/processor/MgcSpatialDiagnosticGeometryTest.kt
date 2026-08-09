package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class MgcSpatialDiagnosticGeometryTest {
    @Test
    fun rgbFixed16PlanesCoverTheFinalCompleteAotTile() {
        val geometry = mgcSpatialDiagnosticGeometry(
            outputMode = MgcSpatialOutputMode.RGB,
            imageWidth = 4080,
            imageHeight = 3064,
        )

        assertEquals(4080, geometry.fixed16Width)
        assertEquals(3072, geometry.fixed16Height)
        assertEquals(4080L * 3072L * 3L, geometry.fixed16SampleCount)
    }

    @Test
    fun rgbGeometryUsesOutputPixelsAndPlanarRgbSignal() {
        val geometry = mgcSpatialDiagnosticGeometry(
            outputMode = MgcSpatialOutputMode.RGB,
            imageWidth = 6120,
            imageHeight = 4596,
        )

        assertEquals(383, geometry.alignmentWidth)
        assertEquals(288, geometry.alignmentHeight)
        assertEquals(1530, geometry.rejectionWidth)
        assertEquals(1149, geometry.rejectionHeight)
        assertEquals(6128, geometry.fixed16Width)
        assertEquals(4608, geometry.fixed16Height)
        assertEquals(6128L * 4608L * 3L, geometry.fixed16SampleCount)
    }

    @Test
    fun bayerGeometryPreservesPaddedQuadPlaneContract() {
        val geometry = mgcSpatialDiagnosticGeometry(
            outputMode = MgcSpatialOutputMode.BAYER,
            imageWidth = 4080,
            imageHeight = 3064,
        )

        assertEquals(510, geometry.alignmentWidth)
        assertEquals(383, geometry.alignmentHeight)
        assertEquals(1020, geometry.rejectionWidth)
        assertEquals(766, geometry.rejectionHeight)
        assertEquals(2040, geometry.fixed16Width)
        assertEquals(1536, geometry.fixed16Height)
        assertEquals(2040L * 1536L * 4L, geometry.fixed16SampleCount)
    }
}
