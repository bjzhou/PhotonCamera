package com.hinnka.mycamera.livephoto

import android.media.MediaMetadataRetriever
import com.hinnka.mycamera.utils.PLog
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets

internal object OppoMotionVideoExtender {
    private const val TAG = "OppoMotionVideoExtender"
    private const val LPEX_BOX_TYPE = "lpex"
    private const val LPEX_PAYLOAD_PREFIX = "LivePhotoExtension"

    fun appendLivePhotoExtension(
        sourceVideo: File,
        outputVideo: File,
        coverFramePtsUs: Long
    ): Boolean {
        return try {
            val videoInfo = readVideoInfo(sourceVideo)
            FileOutputStream(outputVideo).use { output ->
                FileInputStream(sourceVideo).use { input ->
                    input.copyTo(output)
                }
                output.write(buildLpexBox(coverFramePtsUs, videoInfo))
            }
            outputVideo.length() > sourceVideo.length()
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to append Oppo Live Photo video extension", e)
            outputVideo.delete()
            false
        }
    }

    private fun buildLpexBox(coverFramePtsUs: Long, videoInfo: VideoInfo): ByteArray {
        val payload = "$LPEX_PAYLOAD_PREFIX${buildExtensionJson(coverFramePtsUs, videoInfo)}"
            .toByteArray(StandardCharsets.UTF_8)
        val box = ByteBuffer.allocate(8 + payload.size).order(ByteOrder.BIG_ENDIAN)
        box.putInt(8 + payload.size)
        box.put(LPEX_BOX_TYPE.toByteArray(StandardCharsets.US_ASCII))
        box.put(payload)
        return box.array()
    }

    private fun buildExtensionJson(coverFramePtsUs: Long, videoInfo: VideoInfo): String {
        return """{"coverFramePts":$coverFramePtsUs,"desc":"OppoMotionVideoExt","matrixCount":0,"photoCropFactor":0.0,"photoCropRect":[0,0,0,0],"photoEisCropFactor":[1.0,1.0],"photoEisMatrix":[1.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,1.0],"subVideoScaleFactor":1.0,"version":1,"videoOrientation":${videoInfo.rotationDegrees},"videoSize":[${videoInfo.width},${videoInfo.height}]}"""
    }

    private fun readVideoInfo(videoFile: File): VideoInfo {
        val retriever = MediaMetadataRetriever()
        return try {
            retriever.setDataSource(videoFile.absolutePath)
            VideoInfo(
                width = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_WIDTH)
                    ?.toIntOrNull()
                    ?: 0,
                height = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_HEIGHT)
                    ?.toIntOrNull()
                    ?: 0,
                rotationDegrees = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_VIDEO_ROTATION)
                    ?.toIntOrNull()
                    ?: 0
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to read video metadata for Oppo extension", e)
            VideoInfo(width = 0, height = 0, rotationDegrees = 0)
        } finally {
            retriever.release()
        }
    }

    private data class VideoInfo(
        val width: Int,
        val height: Int,
        val rotationDegrees: Int
    )
}
