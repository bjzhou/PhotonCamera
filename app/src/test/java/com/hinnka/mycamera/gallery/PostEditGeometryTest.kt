package com.hinnka.mycamera.gallery

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.abs
import kotlin.math.cos
import kotlin.math.sin

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

    @Test
    fun straightenDegreesAreClampedAndInvalidValuesReset() {
        assertEquals(45f, PostEditGeometry.normalizeStraightenDegrees(90f), 0f)
        assertEquals(-45f, PostEditGeometry.normalizeStraightenDegrees(-90f), 0f)
        assertEquals(0f, PostEditGeometry.normalizeStraightenDegrees(Float.NaN), 0f)
    }

    @Test
    fun straightenedDimensionsIncludeExpandedRotationBounds() {
        assertEquals(
            4950 to 4950,
            PostEditGeometry.straightenedDimensions(4000, 3000, 45f)
        )
        assertEquals(
            3000 to 4000,
            PostEditGeometry.editedDimensions(4000, 3000, 90, 0f)
        )
    }

    @Test
    fun safeCropAcrossFullAngleRangeContainsNoTransparentCorners() {
        for (degrees in -45..45) {
            if (degrees != 0) {
                assertCropCornersInsideSource(4000, 3000, degrees.toFloat())
                assertCropCornersInsideSource(3000, 4000, degrees.toFloat())
            }
        }
    }

    @Test
    fun maximumSquareCropCanMoveAlongLandscapeImage() {
        val crop = PostEditGeometry.straightenSafeNormalizedBoundsForAspect(
            width = 4000,
            height = 3000,
            straightenDegrees = 0f,
            pixelAspect = 1f
        )

        val translated = PostEditGeometry.translateNormalizedCropBoundsWithinStraightenedSource(
            rect = crop,
            deltaX = 0.5f,
            deltaY = 0.25f,
            width = 4000,
            height = 3000,
            straightenDegrees = 0f
        )

        assertEquals(crop.right - crop.left, translated.right - translated.left, 0.0001f)
        assertEquals(crop.bottom - crop.top, translated.bottom - translated.top, 0.0001f)
        assertTrue(translated.left + translated.right > crop.left + crop.right)
        assertEquals(1f, translated.right, 0.0001f)
        assertEquals(crop.top + crop.bottom, translated.top + translated.bottom, 0.0001f)
    }

    @Test
    fun translatedCropStaysInsideStraightenedSource() {
        val maximalCrop = PostEditGeometry.straightenSafeNormalizedBoundsForAspect(
            width = 4000,
            height = 3000,
            straightenDegrees = 27f,
            pixelAspect = 1f
        )
        val maximalCenterX = (maximalCrop.left + maximalCrop.right) / 2f
        val maximalCenterY = (maximalCrop.top + maximalCrop.bottom) / 2f
        val scaledHalfWidth = (maximalCrop.right - maximalCrop.left) * 0.35f
        val scaledHalfHeight = (maximalCrop.bottom - maximalCrop.top) * 0.35f
        val crop = PostEditGeometry.NormalizedBounds(
            maximalCenterX - scaledHalfWidth,
            maximalCenterY - scaledHalfHeight,
            maximalCenterX + scaledHalfWidth,
            maximalCenterY + scaledHalfHeight
        )

        val translated = PostEditGeometry.translateNormalizedCropBoundsWithinStraightenedSource(
            rect = crop,
            deltaX = 0.6f,
            deltaY = -0.4f,
            width = 4000,
            height = 3000,
            straightenDegrees = 27f
        )

        assertEquals(crop.right - crop.left, translated.right - translated.left, 0.0001f)
        assertEquals(crop.bottom - crop.top, translated.bottom - translated.top, 0.0001f)
        assertTrue(
            PostEditGeometry.isNormalizedCropBoundsInsideStraightenedSource(
                translated,
                width = 4000,
                height = 3000,
                straightenDegrees = 27f
            )
        )
        assertTrue(
            translated.left + translated.right != crop.left + crop.right ||
                translated.top + translated.bottom != crop.top + crop.bottom
        )
    }

    @Test
    fun remappingFullCropOutAndBackDoesNotAccumulateShrinkage() {
        val straightened = PostEditGeometry.remapNormalizedCropBoundsForStraighten(
            rect = PostEditGeometry.NormalizedBounds(0f, 0f, 1f, 1f),
            width = 4000,
            height = 3000,
            oldDegrees = 0f,
            newDegrees = 37f
        )
        val expectedSafeBounds = PostEditGeometry.straightenSafeNormalizedBoundsForAspect(
            width = 4000,
            height = 3000,
            straightenDegrees = 37f,
            pixelAspect = 4f / 3f
        )
        assertEquals(expectedSafeBounds.left, straightened.left, 0.0001f)
        assertEquals(expectedSafeBounds.top, straightened.top, 0.0001f)
        assertEquals(expectedSafeBounds.right, straightened.right, 0.0001f)
        assertEquals(expectedSafeBounds.bottom, straightened.bottom, 0.0001f)

        val restored = PostEditGeometry.remapNormalizedCropBoundsForStraighten(
            rect = straightened,
            width = 4000,
            height = 3000,
            oldDegrees = 37f,
            newDegrees = 0f
        )

        assertEquals(0f, restored.left, 0.0001f)
        assertEquals(0f, restored.top, 0.0001f)
        assertEquals(1f, restored.right, 0.0001f)
        assertEquals(1f, restored.bottom, 0.0001f)
    }

    @Test
    fun remappingStraightenPreservesCropPixelAspect() {
        val width = 3000
        val height = 4000
        val expectedAspect = width.toFloat() / height
        var crop = PostEditGeometry.NormalizedBounds(0f, 0f, 1f, 1f)
        var previous = 0f

        for (degrees in 1..45) {
            crop = PostEditGeometry.remapNormalizedCropBoundsForStraighten(
                rect = crop,
                width = width,
                height = height,
                oldDegrees = previous,
                newDegrees = degrees.toFloat()
            )
            val radians = Math.toRadians(degrees.toDouble())
            val outputWidth = width * abs(cos(radians)) + height * abs(sin(radians))
            val outputHeight = width * abs(sin(radians)) + height * abs(cos(radians))
            val actualAspect = (crop.right - crop.left) * outputWidth /
                ((crop.bottom - crop.top) * outputHeight)

            assertEquals(expectedAspect.toDouble(), actualAspect, 0.0001)
            assertCropCornersInsideSource(width, height, degrees.toFloat(), crop)
            previous = degrees.toFloat()
        }
    }

    @Test
    fun remappingDenseAngleTransitionsNeverCreatesAnEmptyClampRange() {
        val dimensions = listOf(
            4000 to 3000,
            3000 to 4000,
            4032 to 3024,
            4080 to 3072,
            9248 to 6936
        )
        dimensions.forEach { (width, height) ->
            var crop = PostEditGeometry.NormalizedBounds(0f, 0f, 1f, 1f)
            var previous = -45f
            for (step in 1..900) {
                val degrees = -45f + step / 10f
                crop = PostEditGeometry.remapNormalizedCropBoundsForStraighten(
                    rect = crop,
                    width = width,
                    height = height,
                    oldDegrees = previous,
                    newDegrees = degrees
                )
                assertTrue(crop.left >= -0.000001f)
                assertTrue(crop.top >= -0.000001f)
                assertTrue(crop.right <= 1.000001f)
                assertTrue(crop.bottom <= 1.000001f)
                assertTrue(crop.right >= crop.left)
                assertTrue(crop.bottom >= crop.top)
                assertCropCornersInsideSource(width, height, degrees, crop)
                previous = degrees
            }
        }
    }

    @Test
    fun straightenedPointMapsBackToPreStraightenCoordinates() {
        val width = 4000
        val height = 3000
        val degrees = 31f
        val sourceX = 0.27
        val sourceY = 0.68
        val radians = Math.toRadians(degrees.toDouble())
        val cosine = cos(radians)
        val sine = sin(radians)
        val outputWidth = width * abs(cosine) + height * abs(sine)
        val outputHeight = width * abs(sine) + height * abs(cosine)
        val centeredX = sourceX * width - width / 2.0
        val centeredY = sourceY * height - height / 2.0
        val straightenedX = (cosine * centeredX - sine * centeredY + outputWidth / 2.0) / outputWidth
        val straightenedY = (sine * centeredX + cosine * centeredY + outputHeight / 2.0) / outputHeight

        val mapped = PostEditGeometry.mapStraightenedPointToSource(
            x = straightenedX.toFloat(),
            y = straightenedY.toFloat(),
            width = width,
            height = height,
            straightenDegrees = degrees
        )

        assertEquals(sourceX.toFloat(), mapped.first, 0.0001f)
        assertEquals(sourceY.toFloat(), mapped.second, 0.0001f)
    }

    private fun assertCropCornersInsideSource(width: Int, height: Int, degrees: Float) {
        val crop = PostEditGeometry.straightenSafeNormalizedBounds(width, height, degrees)
        assertCropCornersInsideSource(width, height, degrees, crop)
    }

    private fun assertCropCornersInsideSource(
        width: Int,
        height: Int,
        degrees: Float,
        crop: PostEditGeometry.NormalizedBounds
    ) {
        val radians = Math.toRadians(degrees.toDouble())
        val cosine = cos(radians)
        val sine = sin(radians)
        val outputWidth = width * abs(cosine) + height * abs(sine)
        val outputHeight = width * abs(sine) + height * abs(cosine)
        val corners = listOf(
            crop.left to crop.top,
            crop.right to crop.top,
            crop.left to crop.bottom,
            crop.right to crop.bottom
        )

        corners.forEach { (normalizedX, normalizedY) ->
            val rotatedX = normalizedX * outputWidth - outputWidth / 2.0
            val rotatedY = normalizedY * outputHeight - outputHeight / 2.0
            val sourceX = cosine * rotatedX + sine * rotatedY
            val sourceY = -sine * rotatedX + cosine * rotatedY
            assertTrue(abs(sourceX) <= width / 2.0 + 0.001)
            assertTrue(abs(sourceY) <= height / 2.0 + 0.001)
        }
    }
}
