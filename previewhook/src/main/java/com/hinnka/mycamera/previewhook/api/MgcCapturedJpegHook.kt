package com.hinnka.mycamera.previewhook.api

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.util.Log
import java.io.ByteArrayOutputStream

/**
 * Applies the active Photon look to the JPEG produced by MGC's normal capture pipeline.
 *
 * Failures are deliberately fail-open: MGC's original JPEG is returned unchanged so a LUT
 * problem can never discard a capture.
 */
object MgcCapturedJpegHook {
    private const val TAG = "codex_post_lut"
    private const val OUTPUT_JPEG_QUALITY = 95

    @JvmStatic
    fun processJpegWithSource(source: String, jpegBytes: ByteArray?): ByteArray? {
        if (jpegBytes == null || jpegBytes.isEmpty()) return jpegBytes

        return runCatching {
            MgcVfeLutRuntime.syncPhotonLookIfNeeded(force = false)
            val snapshot = MgcVfeLutRuntime.buildSnapshot()
            if (!snapshot.lutEnabled && !snapshot.colorRecipeEnabled) {
                return jpegBytes
            }

            val startedAtNs = System.nanoTime()
            val bitmap = BitmapFactory.decodeByteArray(
                jpegBytes,
                0,
                jpegBytes.size,
                BitmapFactory.Options().apply {
                    inPreferredConfig = Bitmap.Config.ARGB_8888
                    inMutable = false
                },
            ) ?: return jpegBytes

            try {
                val rendered = MgcCapturedJpegRenderer.render(bitmap, snapshot)
                    ?: return jpegBytes
                try {
                    val output = ByteArrayOutputStream(jpegBytes.size.coerceAtLeast(64 * 1024))
                    val encoded = rendered.compress(
                        Bitmap.CompressFormat.JPEG,
                        OUTPUT_JPEG_QUALITY,
                        output,
                    )
                    if (!encoded) return jpegBytes
                    output.toByteArray().also {
                        Log.d(
                            TAG,
                            "Applied Photon look source=$source size=${bitmap.width}x${bitmap.height} " +
                                "in=${jpegBytes.size} out=${it.size} " +
                                "tookMs=${(System.nanoTime() - startedAtNs) / 1_000_000L}",
                        )
                    }
                } finally {
                    if (!rendered.isRecycled) rendered.recycle()
                }
            } finally {
                if (!bitmap.isRecycled) bitmap.recycle()
            }
        }.getOrElse {
            MgcCapturedJpegRenderer.reset()
            Log.e(TAG, "Photon look failed; keeping original MGC JPEG source=$source", it)
            jpegBytes
        }
    }

    @JvmStatic
    fun processJpeg(jpegBytes: ByteArray?): ByteArray? =
        processJpegWithSource("unknown", jpegBytes)
}
