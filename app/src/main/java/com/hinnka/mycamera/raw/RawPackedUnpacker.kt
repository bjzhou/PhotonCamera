package com.hinnka.mycamera.raw

import android.graphics.ImageFormat
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer

/** Decodes Android packed RAW into native-order uint16 Bayer samples without rescaling values. */
internal object RawPackedUnpacker {
    init {
        System.loadLibrary("my-native-lib")
    }

    private external fun unpackNative(
        source: ByteBuffer,
        sourceLimit: Int,
        destination: ByteBuffer,
        format: Int,
        width: Int,
        height: Int,
        rowStride: Int,
    ): Boolean

    fun unpack(format: Int, source: ByteBuffer, width: Int, height: Int, rowStride: Int): ByteBuffer {
        val name = formatName(format)
        require(source.isDirect) { "$name input must be a direct buffer" }
        require(width > 0 && width % 4 == 0 && height > 0 && height % 2 == 0) {
            "Invalid $name dimensions: ${width}x$height"
        }
        val packedRowBytes = width.toLong() / 4 * (if (format == ImageFormat.RAW10) 5 else 6)
        val requiredBytes = (height - 1).toLong() * rowStride + packedRowBytes
        require(rowStride >= packedRowBytes && requiredBytes <= source.limit()) {
            "Invalid $name plane: size=${width}x$height rowStride=$rowStride limit=${source.limit()}"
        }
        val output = LargeDirectBuffer.allocate(width.toLong() * height * Short.SIZE_BYTES, "$name unpack")
            ?: error("Cannot allocate $name unpack buffer for ${width}x$height")
        try {
            val startNs = System.nanoTime()
            check(unpackNative(source, source.limit(), output, format, width, height, rowStride)) {
                "Native $name unpack failed for ${width}x$height rowStride=$rowStride"
            }
            val unpackMs = (System.nanoTime() - startNs) / 1_000_000.0
            PLog.d(
                "RawPackedUnpacker",
                "Unpacked $name ${width}x$height rowStride=$rowStride to uint16 Bayer with NEON, unpackMs=$unpackMs"
            )
            return output
        } catch (error: Throwable) {
            LargeDirectBuffer.free(output)
            throw error
        }
    }

    private fun formatName(format: Int): String = when (format) {
        ImageFormat.RAW10 -> "RAW10"
        ImageFormat.RAW12 -> "RAW12"
        else -> throw IllegalArgumentException("Unsupported packed RAW format $format")
    }
}
