package com.hinnka.mycamera.raw

import android.graphics.ImageFormat
import android.hardware.HardwareBuffer
import android.media.Image

/** Describes the native RAW plane without locking pixels or decoding packed samples. */
internal object RawImageBufferLayout {
    init {
        System.loadLibrary("my-native-lib")
    }

    fun describeByteCount(image: Image): Long? {
        val format = image.format
        val packedName = when (format) {
            ImageFormat.RAW10 -> "RAW10"
            ImageFormat.RAW12 -> "RAW12"
            ImageFormat.RAW_SENSOR -> null
            else -> return null
        }
        val width = image.width
        val height = image.height
        val hardwareBuffer = image.hardwareBuffer
        if (hardwareBuffer == null) {
            check(packedName == null) { "$packedName image has no hardware buffer" }
            return null
        }
        val bytes = hardwareBuffer.use { describeByteCountNative(it, format, width, height) }
        // A malformed packed stride may abort in ImageReader.getPlanes().
        check(packedName == null || bytes > 0L) {
            "Invalid $packedName hardware buffer layout for ${width}x${height}"
        }
        return bytes.takeIf { it > 0L }
    }

    private external fun describeByteCountNative(
        buffer: HardwareBuffer,
        format: Int,
        width: Int,
        height: Int,
    ): Long
}
