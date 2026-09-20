package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer

/** Converts Android RAW10 packing to native-order uint16 Bayer samples without rescaling values. */
internal object Raw10Unpacker {
    init {
        System.loadLibrary("my-native-lib")
    }

    private external fun unpackNative(
        source: ByteBuffer,
        sourceLimit: Int,
        destination: ByteBuffer,
        width: Int,
        height: Int,
        rowStride: Int,
    ): Boolean

    fun unpack(source: ByteBuffer, width: Int, height: Int, rowStride: Int): ByteBuffer {
        require(source.isDirect) { "RAW10 input must be a direct buffer" }
        require(width > 0 && width % 4 == 0 && height > 0 && height % 2 == 0) {
            "Invalid RAW10 dimensions: ${width}x$height"
        }
        val packedRowBytes = width.toLong() / 4 * 5
        val requiredBytes = (height - 1).toLong() * rowStride + packedRowBytes
        require(rowStride >= packedRowBytes && requiredBytes <= source.limit()) {
            "Invalid RAW10 plane: size=${width}x$height rowStride=$rowStride limit=${source.limit()}"
        }
        val output = LargeDirectBuffer.allocate(width.toLong() * height * 2, "RAW10 unpack")
            ?: error("Cannot allocate RAW10 unpack buffer for ${width}x$height")
        try {
            val startNs = System.nanoTime()
            check(unpackNative(source, source.limit(), output, width, height, rowStride)) {
                "Native RAW10 unpack failed for ${width}x$height rowStride=$rowStride"
            }
            val unpackMs = (System.nanoTime() - startNs) / 1_000_000.0
            PLog.d(
                "Raw10Unpacker",
                "Unpacked RAW10 ${width}x$height rowStride=$rowStride to uint16 Bayer with NEON, unpackMs=$unpackMs"
            )
            return output
        } catch (error: Throwable) {
            LargeDirectBuffer.free(output)
            throw error
        }
    }
}
