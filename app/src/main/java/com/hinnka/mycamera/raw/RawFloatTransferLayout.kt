package com.hinnka.mycamera.raw

/** Each SSBO range covers whole rows and starts at a driver-aligned byte offset. */
internal object RawFloatTransferLayout {
    fun stripeRows(width: Int, height: Int, maxBlockBytes: Long, offsetAlignment: Int): Int {
        require(width > 0 && height > 0 && offsetAlignment > 0)
        val rowBytes = width.toLong() * 16
        if (rowBytes * height <= maxBlockBytes) return height
        var a = rowBytes
        var b = offsetAlignment.toLong()
        while (b != 0L) {
            val remainder = a % b
            a = b
            b = remainder
        }
        val alignedRows = offsetAlignment / a
        // Zero means even one aligned stripe cannot fit: retain framebuffer readback.
        return (maxBlockBytes / rowBytes / alignedRows * alignedRows).toInt()
    }
}
