package com.hinnka.mycamera.hdr

import android.graphics.Bitmap
import android.os.Build
import com.hinnka.mycamera.utils.PLog
import java.io.OutputStream

object UltraHdrWriter {
    private const val TAG = "UltraHdrWriter"

    data class Request(
        val bitmap: Bitmap,
        val outputStream: OutputStream,
        val quality: Int = 95,
        val gainmap: GainmapPayload? = null,
        val preferUltraHdr: Boolean = true,
    )

    fun writeJpeg(request: Request): Boolean {
        val effectiveGainmap = request.gainmap ?: extractExistingGainmap(request.bitmap)
        if (!request.preferUltraHdr || effectiveGainmap?.platformGainmap == null) {
            return request.bitmap.compress(Bitmap.CompressFormat.JPEG, request.quality, request.outputStream)
        }

        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
            PLog.d(TAG, "Ultra HDR requested below API 34, falling back to standard JPEG")
            return request.bitmap.compress(Bitmap.CompressFormat.JPEG, request.quality, request.outputStream)
        }

        return writeWithGainmap(request.copy(gainmap = effectiveGainmap))
    }

    private fun writeWithGainmap(request: Request): Boolean {
        val gainmapClass = runCatching { Class.forName("android.graphics.Gainmap") }.getOrNull()
            ?: return fallbackWithLog("Gainmap class unavailable at runtime", request)

        val gainmap = request.gainmap?.platformGainmap
        if (gainmap == null || !gainmapClass.isInstance(gainmap)) {
            return fallbackWithLog("Unsupported gainmap payload, falling back to standard JPEG", request)
        }

        return try {
            val bitmapClass = request.bitmap.javaClass
            val setGainmap = bitmapClass.getMethod("setGainmap", gainmapClass)
            val getGainmap = bitmapClass.getMethod("getGainmap")
            val previousGainmap = getGainmap.invoke(request.bitmap)
            setGainmap.invoke(request.bitmap, gainmap)
            try {
                request.bitmap.compress(Bitmap.CompressFormat.JPEG, request.quality, request.outputStream)
            } finally {
                setGainmap.invoke(request.bitmap, previousGainmap)
            }
        } catch (t: Throwable) {
            PLog.e(TAG, "Failed to write Ultra HDR JPEG, falling back to standard JPEG", t)
            request.bitmap.compress(Bitmap.CompressFormat.JPEG, request.quality, request.outputStream)
        }
    }

    private fun fallbackWithLog(message: String, request: Request): Boolean {
        PLog.w(TAG, message)
        return request.bitmap.compress(Bitmap.CompressFormat.JPEG, request.quality, request.outputStream)
    }

    private fun extractExistingGainmap(bitmap: Bitmap): GainmapPayload? {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) return null
        return try {
            val getGainmap = bitmap.javaClass.getMethod("getGainmap")
            val gainmap = getGainmap.invoke(bitmap) ?: return null
            GainmapPayload(
                platformGainmap = gainmap,
                description = "embedded_bitmap_gainmap"
            )
        } catch (_: Throwable) {
            null
        }
    }

    fun hasGainmap(bitmap: Bitmap?): Boolean {
        if (bitmap == null || Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) return false
        return extractExistingGainmap(bitmap)?.platformGainmap != null
    }

    fun attachGainmap(bitmap: Bitmap, gainmap: GainmapPayload?): Boolean {
        if (gainmap?.platformGainmap == null || Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
            return false
        }
        return try {
            val gainmapClass = Class.forName("android.graphics.Gainmap")
            val setGainmap = bitmap.javaClass.getMethod("setGainmap", gainmapClass)
            setGainmap.invoke(bitmap, gainmap.platformGainmap)
            true
        } catch (_: Throwable) {
            false
        }
    }
}
