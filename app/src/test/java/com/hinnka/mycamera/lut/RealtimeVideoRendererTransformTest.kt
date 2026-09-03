package com.hinnka.mycamera.lut

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class RealtimeVideoRendererTransformTest {
    @Test
    fun identityAndFlipDoNotSwapAxes() {
        assertFalse(
            isTextureTransformAxesSwapped(
                floatArrayOf(
                    1f, 0f, 0f, 0f,
                    0f, -1f, 0f, 0f,
                    0f, 0f, 1f, 0f,
                    0f, 1f, 0f, 1f,
                )
            )
        )
    }

    @Test
    fun quarterTurnSwapsAxes() {
        assertTrue(
            isTextureTransformAxesSwapped(
                floatArrayOf(
                    0f, 1f, 0f, 0f,
                    1f, 0f, 0f, 0f,
                    0f, 0f, 1f, 0f,
                    0f, 0f, 0f, 1f,
                )
            )
        )
    }

    @Test
    fun sensorOrientationBuildsRawYuvPresentationTransform() {
        assertMappedCorners(
            orientationDegrees = 0,
            bottomLeft = floatArrayOf(0f, 0f),
            bottomRight = floatArrayOf(1f, 0f),
            topLeft = floatArrayOf(0f, 1f),
        )
        assertMappedCorners(
            orientationDegrees = 90,
            bottomLeft = floatArrayOf(1f, 0f),
            bottomRight = floatArrayOf(1f, 1f),
            topLeft = floatArrayOf(0f, 0f),
        )
        assertMappedCorners(
            orientationDegrees = 180,
            bottomLeft = floatArrayOf(1f, 1f),
            bottomRight = floatArrayOf(0f, 1f),
            topLeft = floatArrayOf(1f, 0f),
        )
        assertMappedCorners(
            orientationDegrees = 270,
            bottomLeft = floatArrayOf(0f, 1f),
            bottomRight = floatArrayOf(0f, 0f),
            topLeft = floatArrayOf(1f, 1f),
        )
    }

    @Test
    fun sensorOrientationMustBeCardinal() {
        assertNull(resolveMgcEisPresentationMatrix(45))
    }

    private fun assertMappedCorners(
        orientationDegrees: Int,
        bottomLeft: FloatArray,
        bottomRight: FloatArray,
        topLeft: FloatArray,
    ) {
        val matrix = requireNotNull(resolveMgcEisPresentationMatrix(orientationDegrees))
        assertArrayEquals(bottomLeft, map(matrix, 0f, 0f), 0f)
        assertArrayEquals(bottomRight, map(matrix, 1f, 0f), 0f)
        assertArrayEquals(topLeft, map(matrix, 0f, 1f), 0f)
        assertTrue(isTextureTransformAxesSwapped(matrix) == (orientationDegrees % 180 != 0))
    }

    private fun map(matrix: FloatArray, x: Float, y: Float): FloatArray {
        return floatArrayOf(
            matrix[0] * x + matrix[4] * y + matrix[12],
            matrix[1] * x + matrix[5] * y + matrix[13],
        )
    }
}
