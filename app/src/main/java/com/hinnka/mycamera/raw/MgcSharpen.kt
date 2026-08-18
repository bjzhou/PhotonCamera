package com.hinnka.mycamera.raw

import java.nio.ByteBuffer

/** Exact MGC 9.6.080 FinishRaw SharpenTo16Bit bridge for the final RGBA8 stage. */
internal object MgcSharpen {
    init {
        System.loadLibrary("my-native-lib")
    }

    fun sharpenRgba8(
        rgba: ByteBuffer,
        width: Int,
        height: Int,
        snr: Float,
        sharpenAttenuationScale: Float,
    ) {
        require(rgba.isDirect) { "MGC sharpen input must be a direct buffer" }
        require(width > 0 && height > 0) { "Invalid MGC sharpen dimensions" }
        require(snr.isFinite() && snr > 0f) { "Invalid MGC sharpen SNR: $snr" }
        require(sharpenAttenuationScale.isFinite() && sharpenAttenuationScale >= 0f) {
            "Invalid MGC sharpen attenuation: $sharpenAttenuationScale"
        }
        val requiredBytes = width.toLong() * height * 4L
        require(requiredBytes <= rgba.capacity().toLong()) {
            "MGC sharpen buffer is too small: ${rgba.capacity()} < $requiredBytes"
        }
        val result = nativeSharpenRgba8(
            rgba,
            width,
            height,
            snr,
            sharpenAttenuationScale,
        )
        check(result == 0) { "MGC SharpenTo16Bit failed with status=$result" }
        rgba.position(0)
        rgba.limit(requiredBytes.toInt())
    }

    private external fun nativeSharpenRgba8(
        rgba: ByteBuffer,
        width: Int,
        height: Int,
        snr: Float,
        sharpenAttenuationScale: Float,
    ): Int
}
