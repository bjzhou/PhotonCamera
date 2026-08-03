package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class RawFramePreAlignmentTest {
    @Test
    fun expandsRotationAroundBayerPlaneCenter() {
        val alignment = RawFramePreAlignment(
            translationXPlanePx = 3f,
            translationYPlanePx = -2f,
            rotationDegrees = 90f,
            confidence = 1f,
        )

        val flow = alignment.flowAtPlanePosition(
            xPlanePx = 6f,
            yPlanePx = 5f,
            planeWidth = 11,
            planeHeight = 11,
        )

        assertEquals(2f, flow.first, 1.0e-4f)
        assertEquals(-1f, flow.second, 1.0e-4f)
    }
}
