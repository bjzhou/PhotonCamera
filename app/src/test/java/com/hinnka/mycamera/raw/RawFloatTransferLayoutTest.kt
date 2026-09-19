package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class RawFloatTransferLayoutTest {
    @Test
    fun twelveMegapixelFloatInputUsesBoundedAlignedRanges() {
        checkCoverage(4000, 3000, 128L * 1024 * 1024, 256)
        checkCoverage(4033, 3025, 128L * 1024 * 1024, 256)
    }

    @Test
    fun lowResolutionInputDoesNotDependOnFullResolutionOutputCapacity() {
        assertEquals(752, RawFloatTransferLayout.stripeRows(1024, 752, 128L * 1024 * 1024, 256))
    }

    @Test
    fun unalignedRowsAndPartialLastStripeStayWithinTheBinding() {
        checkCoverage(37, 35, 37L * 16 * 16, 256)
        checkCoverage(17, 19, 17L * 16 * 8, 64)
        assertEquals(0, RawFloatTransferLayout.stripeRows(37, 35, 37L * 16 * 15, 256))
        // A single range starts at zero and does not need its end aligned.
        assertEquals(3, RawFloatTransferLayout.stripeRows(37, 3, 37L * 16 * 3, 256))
    }

    @Test
    fun halfRgbaUsesEightBytePixelsIncludingOddWidthAndTail() {
        checkCoverage(4033, 3025, 16L * 1024 * 1024, 256, bytesPerPixel = 8)
        checkCoverage(37, 67, 37L * 8 * 32, 256, bytesPerPixel = 8)
        assertEquals(0, RawFloatTransferLayout.stripeRows(37, 67, 37L * 8 * 31, 256, 8))
        assertEquals(3, RawFloatTransferLayout.stripeRows(37, 3, 37L * 8 * 3, 256, 8))
    }

    private fun checkCoverage(width: Int, height: Int, limit: Long, alignment: Int, bytesPerPixel: Int = 16) {
        val stripeRows = RawFloatTransferLayout.stripeRows(width, height, limit, alignment, bytesPerPixel)
        assertTrue(stripeRows > 0)
        var covered = 0L
        for (row in 0 until height step stripeRows) {
            val offset = row.toLong() * width * bytesPerPixel
            val bytes = minOf(stripeRows, height - row).toLong() * width * bytesPerPixel
            assertEquals(covered, offset)
            assertEquals(0L, offset % alignment)
            assertTrue(bytes in 1..limit)
            covered += bytes
        }
        assertEquals(width.toLong() * height * bytesPerPixel, covered)
    }
}
