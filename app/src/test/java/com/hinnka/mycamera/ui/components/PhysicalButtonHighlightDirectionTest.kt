package com.hinnka.mycamera.ui.components

import org.junit.Assert.assertEquals
import org.junit.Test

class PhysicalButtonHighlightDirectionTest {

    @Test
    fun `physical top follows continuous device orientation`() {
        assertDirection(orientationDegrees = 0f, expectedX = 0f, expectedY = -1f)
        assertDirection(orientationDegrees = 90f, expectedX = -1f, expectedY = 0f)
        assertDirection(orientationDegrees = 180f, expectedX = 0f, expectedY = 1f)
        assertDirection(orientationDegrees = 270f, expectedX = 1f, expectedY = 0f)
        assertDirection(
            orientationDegrees = 45f,
            expectedX = -0.70710677f,
            expectedY = -0.70710677f
        )
    }

    private fun assertDirection(
        orientationDegrees: Float,
        expectedX: Float,
        expectedY: Float
    ) {
        val direction = physicalTopDirection(orientationDegrees)
        assertEquals(expectedX, direction.x, 0.000001f)
        assertEquals(expectedY, direction.y, 0.000001f)
    }
}
