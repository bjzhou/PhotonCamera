package com.hinnka.mycamera.ui.camera

import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class InstantPrintProjectionTest {
    @Test
    fun unprintedPaperStaysEntirelyBehindTheMouth() {
        val slotY = 40f
        for (angle in listOf(28f, 32f, 38f)) {
            val projection = projectInstantPrint(Rect(100f, -260f, 300f, slotY), slotY, angle, 720f)
            assertTrue(projection.corners.all { it.y <= slotY })
            assertEquals(slotY, projection.bottomLeft.y, 0.001f)
            assertEquals(100f, projection.bottomLeft.x, 0.001f)
        }
    }

    @Test
    fun settledPaperHasClearlyWiderLowerEdgeAndFitsReservedHeight() {
        val projection = projectInstantPrint(Rect(100f, 40f, 300f, 340f), 40f, 28f, 720f)
        val topWidth = projection.topRight.x - projection.topLeft.x
        val bottomWidth = projection.bottomRight.x - projection.bottomLeft.x
        assertTrue(bottomWidth > topWidth * 1.2f)
        assertTrue(projection.bottomLeft.y - projection.topLeft.y < 300f * 1.15f)
        assertEquals(100f, projection.topLeft.x, 0.001f)
        assertEquals(40f, projection.topLeft.y, 0.001f)
    }

    @Test
    fun collectedPaperMatchesThumbnailWithoutPerspective() {
        val bounds = Rect(20f, 600f, 60f, 660f)
        val projection = projectInstantPrint(bounds, bounds.top, 0f, 720f)
        assertEquals(bounds.topLeft, projection.topLeft)
        assertEquals(bounds.bottomRight, projection.bottomRight)
    }

    @Test
    fun hitTestingIncludesLiftedCornersButExcludesEmptySpace() {
        val projection = projectInstantPrint(Rect(100f, 40f, 300f, 340f), 40f, 32f, 720f)
        assertTrue(projection.contains(Offset(85f, 330f)))
        assertFalse(projection.contains(Offset(85f, 50f)))
        assertFalse(projection.contains(Offset(200f, 10f)))
    }
}
