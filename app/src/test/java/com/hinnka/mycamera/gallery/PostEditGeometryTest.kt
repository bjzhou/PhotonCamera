package com.hinnka.mycamera.gallery

import org.junit.Assert.assertEquals
import org.junit.Test

class PostEditGeometryTest {
    @Test
    fun normalizeRotationWrapsBothDirections() {
        assertEquals(90, PostEditGeometry.normalizeRotation(450))
        assertEquals(270, PostEditGeometry.normalizeRotation(-90))
        assertEquals(0, PostEditGeometry.normalizeRotation(360))
    }

    @Test
    fun rotatedDimensionsSwapOnlyForQuarterTurns() {
        assertEquals(4000 to 3000, PostEditGeometry.rotatedDimensions(4000, 3000, 0))
        assertEquals(3000 to 4000, PostEditGeometry.rotatedDimensions(4000, 3000, 90))
        assertEquals(4000 to 3000, PostEditGeometry.rotatedDimensions(4000, 3000, 180))
        assertEquals(3000 to 4000, PostEditGeometry.rotatedDimensions(4000, 3000, 270))
    }

    @Test
    fun rotateNormalizedRectPreservesSelectionThroughClockwiseTurn() {
        val rotated = PostEditGeometry.rotateNormalizedBounds(
            left = 0.1f,
            top = 0.2f,
            right = 0.6f,
            bottom = 0.8f,
            clockwiseDegrees = 90
        )

        assertEquals(0.2f, rotated.left, 0.0001f)
        assertEquals(0.1f, rotated.top, 0.0001f)
        assertEquals(0.8f, rotated.right, 0.0001f)
        assertEquals(0.6f, rotated.bottom, 0.0001f)
    }

    @Test
    fun rotatedDisplayPointMapsBackToPreRotationSource() {
        val source = PostEditGeometry.mapRotatedPointToSource(
            x = 0.8f,
            y = 0.25f,
            rotationDegrees = 90
        )

        assertEquals(0.25f, source.first, 0.0001f)
        assertEquals(0.2f, source.second, 0.0001f)
    }

    @Test
    fun mirroredRotatedDisplayPointMapsBackToPreRotationSource() {
        val source = PostEditGeometry.mapEditedPointToSource(
            x = 0.2f,
            y = 0.25f,
            rotationDegrees = 90,
            mirrorHorizontal = true
        )

        assertEquals(0.25f, source.first, 0.0001f)
        assertEquals(0.2f, source.second, 0.0001f)
    }

    @Test
    fun clockwiseTurnAccountsForMirroredOrientation() {
        assertEquals(
            90,
            PostEditGeometry.rotationAfterClockwiseTurn(
                rotationDegrees = 0,
                mirrorHorizontal = false
            )
        )
        assertEquals(
            270,
            PostEditGeometry.rotationAfterClockwiseTurn(
                rotationDegrees = 0,
                mirrorHorizontal = true
            )
        )
    }

    @Test
    fun horizontalMirrorPreservesSelectedPixels() {
        val mirrored = PostEditGeometry.mirrorNormalizedBoundsHorizontally(
            left = 0.1f,
            top = 0.2f,
            right = 0.6f,
            bottom = 0.8f
        )

        assertEquals(0.4f, mirrored.left, 0.0001f)
        assertEquals(0.2f, mirrored.top, 0.0001f)
        assertEquals(0.9f, mirrored.right, 0.0001f)
        assertEquals(0.8f, mirrored.bottom, 0.0001f)
    }
}
