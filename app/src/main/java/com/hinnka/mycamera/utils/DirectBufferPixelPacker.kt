package com.hinnka.mycamera.utils

import java.nio.ByteBuffer

/**
 * Bulk pixel-layout transforms between native direct buffers.
 *
 * These transforms must stay out of per-pixel Kotlin loops: direct-buffer absolute access carries
 * enough JNI and bounds-check overhead to dominate a full-resolution RAW readback.
 */
object DirectBufferPixelPacker {
    init {
        System.loadLibrary("my-native-lib")
    }

    external fun unpackRgba16TileToRgb16(
        source: ByteBuffer,
        sourceWidth: Int,
        sourceHeight: Int,
        destination: ByteBuffer,
        destinationWidth: Int,
        destinationHeight: Int,
        destinationLeft: Int,
        destinationTop: Int,
    ): Boolean

    /**
     * Converts normalized RGBA16F camera RGB into packed unsigned RGB16.
     *
     * MGC's full-resolution denoise boundary is RGBA16F while a standard LinearRaw DNG stores
     * unsigned RGB16 samples. Keeping this bulk conversion native avoids millions of direct-buffer
     * accesses from Kotlin.
     */
    external fun packRgba16fToRgb16(
        source: ByteBuffer,
        width: Int,
        height: Int,
        destination: ByteBuffer,
    ): Boolean
}
