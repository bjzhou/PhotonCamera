package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class DngProfileToneCurveTest {
    @Test
    fun photonPgtmCurveUsesReference257PointSerialization() {
        val points = DngProfileToneCurve.photonPgtmToneCurvePoints()

        assertEquals(514, points.size)
        assertTrue(DcpToneCurve(points).isValid)
        repeat(257) { pointIndex ->
            assertEquals(pointIndex / 256f, points[pointIndex * 2], 0f)
        }
        assertEquals(0f, points[1], 0f)
        assertEquals(0.15f, points[64 * 2 + 1], 1e-6f)
        assertEquals(0.8f, points[192 * 2 + 1], 1e-6f)
        assertEquals(1f, points.last(), 0f)
    }
}
