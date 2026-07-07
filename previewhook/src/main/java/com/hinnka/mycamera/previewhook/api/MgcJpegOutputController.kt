package com.hinnka.mycamera.previewhook.api

import android.util.Log

object MgcJpegOutputController {
    private const val TAG = "codex_raw_chain"
    private const val PRIMARY_FIELD_NAME = "c"

    @Volatile
    private var suppressDefaultJpeg = false

    @JvmStatic
    fun setDefaultJpegSuppressed(enabled: Boolean) {
        if (suppressDefaultJpeg == enabled) return
        suppressDefaultJpeg = enabled
        Log.d(TAG, "MGC default JPEG suppression enabled=$enabled")
    }

    @JvmStatic
    fun shouldSuppressDefaultJpeg(output: Any?): Boolean {
        if (!suppressDefaultJpeg || output == null) return false
        val isPrimary = runCatching {
            output.javaClass.getField(PRIMARY_FIELD_NAME).getBoolean(output)
        }.getOrDefault(false)
        if (!isPrimary) return false

        Log.d(TAG, "Suppressing MGC default JPEG output")
        return true
    }
}
