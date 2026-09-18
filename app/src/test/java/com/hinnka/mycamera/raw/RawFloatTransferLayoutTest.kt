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

    private fun checkCoverage(width: Int, height: Int, limit: Long, alignment: Int) {
        val stripeRows = RawFloatTransferLayout.stripeRows(width, height, limit, alignment)
        assertTrue(stripeRows > 0)
        var covered = 0L
        for (row in 0 until height step stripeRows) {
            val offset = row.toLong() * width * 16
            val bytes = minOf(stripeRows, height - row).toLong() * width * 16
            assertEquals(covered, offset)
            assertEquals(0L, offset % alignment)
            assertTrue(bytes in 1..limit)
            covered += bytes
        }
        assertEquals(width.toLong() * height * 16, covered)
    }
}
