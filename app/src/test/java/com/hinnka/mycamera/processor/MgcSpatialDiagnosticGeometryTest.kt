package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class MgcSpatialDiagnosticGeometryTest {
    @Test
    fun croppedRawAcceptanceMatchesV25ProducerWithoutPadding() {
        for ((width, height) in listOf(2862 to 2146, 2862 to 2144, 2864 to 2146)) {
            val producer = mgcSpatialRejectionGeometry(width, height, 4)
            for (mode in MgcSpatialOutputMode.entries) {
                val consumer = mgcSpatialDiagnosticGeometry(mode, width, height)
                assertEquals(width / 4, consumer.rejectionWidth)
                assertEquals(height / 4, consumer.rejectionHeight)
                assertEquals(producer.mergeWeightWidth, consumer.rejectionWidth)
                assertEquals(producer.mergeWeightHeight, consumer.rejectionHeight)
            }
        }
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
    }
}
