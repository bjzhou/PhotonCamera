package com.hinnka.mycamera.gallery

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class BitmapDecodeSizingTest {
    @Test
    fun longEdgeLimitDownscalesWithoutChangingAspectRatio() {
        val target = calculateBitmapDecodeTarget(
            sourceWidth = 8000,
            sourceHeight = 6000,
            maxEdge = 4096,
            assumedBytesPerPixel = 4,
        )

        assertEquals(4096, target.width)
        assertEquals(3072, target.height)
    }

    @Test
    fun hdrByteBudgetCanTightenLongEdgeLimit() {
        val byteBudget = 80L * 1024L * 1024L
        val target = calculateBitmapDecodeTarget(
            sourceWidth = 8000,
            sourceHeight = 6000,
            maxEdge = 4096,
            maxByteCount = byteBudget,
            assumedBytesPerPixel = 8,
        )

        assertTrue(target.width < 4096)
        assertTrue(target.width.toLong() * target.height * 8L <= byteBudget)
        assertEquals(4.0 / 3.0, target.width.toDouble() / target.height, 0.001)
    }

    @Test
    fun squareHalfFloatBitmapAlsoStaysWithinByteBudget() {
        val byteBudget = 80L * 1024L * 1024L
        val target = calculateBitmapDecodeTarget(
            sourceWidth = 8000,
            sourceHeight = 8000,
            maxEdge = 4096,
            maxByteCount = byteBudget,
            assumedBytesPerPixel = 8,
        )

        assertEquals(target.width, target.height)
        assertTrue(target.width.toLong() * target.height * 8L <= byteBudget)
    }

    @Test
    fun smallerSourceIsNotUpscaled() {
        val target = calculateBitmapDecodeTarget(
            sourceWidth = 1920,
            sourceHeight = 1080,
            maxEdge = 4096,
            maxByteCount = 80L * 1024L * 1024L,
            assumedBytesPerPixel = 8,
        )

        assertEquals(BitmapDecodeTarget(1920, 1080), target)
    }
}
