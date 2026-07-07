package com.hinnka.mycamera.previewhook.api

import android.util.Log

object MgcCapturedJpegHook {
    private const val TAG = "codex_post_lut"

    @JvmStatic
    fun processJpegWithSource(source: String, jpegBytes: ByteArray?): ByteArray? {
        Log.d(TAG, "bypass MGC JPEG LUT source=$source in=${jpegBytes?.size ?: -1}")
        return jpegBytes
    }

    @JvmStatic
    fun processJpeg(jpegBytes: ByteArray?): ByteArray? = jpegBytes
}
