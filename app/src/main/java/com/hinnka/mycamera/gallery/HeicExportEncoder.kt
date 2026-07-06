package com.hinnka.mycamera.gallery

import android.graphics.Bitmap
import android.media.MediaCodecList
import android.media.MediaFormat
import android.os.Build
import androidx.heifwriter.HeifWriter
import com.hinnka.mycamera.hdr.GainmapResult
import com.hinnka.mycamera.utils.PLog
import java.io.File

object HeicExportEncoder {
    private const val TAG = "HeicExportEncoder"
    const val MIME_TYPE = "image/heic"
    const val EXTENSION = "heic"
    private const val ENCODE_TIMEOUT_MS = 10_000L

    val isSupported: Boolean
        by lazy { hasHeicEncoder() }

    private fun hasHeicEncoder(): Boolean {
        return runCatching {
            MediaCodecList(MediaCodecList.REGULAR_CODECS).codecInfos.any { codecInfo ->
                codecInfo.isEncoder && codecInfo.supportedTypes.any { type ->
                    type.equals(MediaFormat.MIMETYPE_IMAGE_ANDROID_HEIC, ignoreCase = true)
                }
            }
        }.getOrElse { error ->
            PLog.w(TAG, "HEIC encoder capability check failed: ${error.message}")
            false
        }
    }

    fun write(
        bitmap: Bitmap,
        outputFile: File,
        quality: Int,
        gainmapResult: GainmapResult? = null,
        exifData: ByteArray? = null,
    ): Boolean {
        if (!isSupported) return false

        return runCatching {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE && gainmapResult != null) {
                bitmap.gainmap = gainmapResult.gainmap
            }

            HeifWriter.Builder(
                outputFile.absolutePath,
                bitmap.width,
                bitmap.height,
                HeifWriter.INPUT_MODE_BITMAP
            )
                .setQuality(quality.coerceIn(0, 100))
                .setMaxImages(1)
                .setPrimaryIndex(0)
                .setGridEnabled(true)
                .build()
                .use { writer ->
                    writer.start()
                    if (exifData != null) {
                        writer.addExifData(0, exifData, 0, exifData.size)
                    }
                    writer.addBitmap(bitmap)
                    writer.stop(ENCODE_TIMEOUT_MS)
                }

            val success = outputFile.exists() && outputFile.length() > 0L
            PLog.d(
                TAG,
                "HEIC export encode result=$success, size=${bitmap.width}x${bitmap.height}, gainmap=${gainmapResult != null}, exif=${exifData != null}, bytes=${outputFile.length()}"
            )
            success
        }.getOrElse { error ->
            PLog.w(TAG, "HEIC export encode failed: ${error.message}")
            outputFile.delete()
            false
        }
    }
}
