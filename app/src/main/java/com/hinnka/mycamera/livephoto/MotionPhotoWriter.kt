package com.hinnka.mycamera.livephoto

import android.content.Context
import android.os.Build
import com.hinnka.mycamera.utils.PLog
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.nio.charset.StandardCharsets

/**
 * Motion Photo 文件合成器
 *
 * 将 JPEG 静态图片和 MP4 视频合成为符合特定厂商规范或 Android Motion Photo 1.0 规范的文件。
 */
object MotionPhotoWriter {
    private const val TAG = "MotionPhotoWriter"

    private const val JPEG_APP1 = 0xFFE1    // APP1 (EXIF/XMP)
    private const val JPEG_SOS = 0xFFDA     // Start of Scan

    /**
     * 获取适合当前设备的创建器
     */
    fun getCreator(context: Context? = null): LivePhotoCreator {
        val manufacturer = Build.MANUFACTURER.lowercase()
        return when {
            manufacturer.contains("oppo") || manufacturer.contains("realme") || manufacturer.contains("oneplus") -> 
                OppoLivePhotoCreator()
            manufacturer.contains("vivo") && context != null -> 
                VivoLivePhotoCreator(context)
            manufacturer.contains("huawei") || manufacturer.contains("honor") ->
                LegacyLivePhotoCreator()
            else -> GoogleLivePhotoCreator()
        }
    }

    /**
     * 合成 Motion Photo 文件
     *
     * @param jpegPath 静态 JPEG 图片路径
     * @param videoPath MP4 视频路径
     * @param outputPath 输出 Motion Photo 路径
     * @param presentationTimestampUs 主要帧的显示时间戳（微秒）
     * @param context 可选的 Context
     * @return 是否成功
     */
    fun write(
        jpegPath: String,
        videoPath: String,
        outputPath: String,
        presentationTimestampUs: Long = 0,
        context: Context? = null
    ): Boolean {
        try {
            val jpegFile = File(jpegPath)
            val videoFile = File(videoPath)

            if (!jpegFile.exists()) return false
            if (!videoFile.exists()) return false

            val creator = getCreator(context)
            
            return creator.create(jpegPath, videoPath, outputPath, presentationTimestampUs)

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to write Motion Photo", e)
            return false
        }
    }

    /**
     * 从 Motion Photo 文件的 XMP 中获取视频长度
     */
    fun getVideoLength(motionPhotoPath: String): Long {
        try {
            val file = File(motionPhotoPath)
            if (!file.exists()) return 0L
            
            // 1. Check for Vivo separate file (beside the jpg)
            if (isVivoPhoto(motionPhotoPath)) {
                val videoFile = File(motionPhotoPath.substring(0, motionPhotoPath.lastIndexOf('.')) + ".mp4")
                if (videoFile.exists()) {
                    // For Vivo, the video length is the whole file minus the metadata at the end
                    // But usually, we just need the whole file to play it.
                    return videoFile.length()
                }
            }

            // 2. Check for Legacy format (last 20 bytes)
            if (file.length() > 20) {
                FileInputStream(file).use { fis ->
                    fis.skip(file.length() - 20)
                    val buffer = ByteArray(20)
                    fis.read(buffer)
                    val marker = String(buffer, StandardCharsets.UTF_8).trim()
                    if (marker.startsWith("LIVE_")) {
                        return marker.substring(5).toLongOrNull() ?: 0L
                    }
                }
            }

            // 3. Check standard XMP / Oppo XMP
            val jpegData = file.readBytes()
            var pos = 2
            while (pos < jpegData.size - 1) {
                val marker = ((jpegData[pos].toInt() and 0xFF) shl 8) or (jpegData[pos + 1].toInt() and 0xFF)
                if (marker == JPEG_SOS) break
                if (marker == JPEG_APP1) {
                    val length = ((jpegData[pos + 2].toInt() and 0xFF) shl 8) or (jpegData[pos + 3].toInt() and 0xFF)
                    val segmentData = jpegData.copyOfRange(pos + 4, minOf(pos + 4 + length - 2, jpegData.size))
                    val segmentString = String(segmentData, StandardCharsets.UTF_8)
                    
                    val regexes = listOf(
                        """MicroVideoOffset="(\d+)"""".toRegex(),
                        """VideoLength="(\d+)"""".toRegex()
                    )
                    for (regex in regexes) {
                        val match = regex.find(segmentString)
                        if (match != null) return match.groupValues[1].toLongOrNull() ?: 0L
                    }
                    pos += 2 + length
                } else if (marker in 0xFFE0..0xFFEF || marker == 0xFFFE) {
                    val length = ((jpegData[pos + 2].toInt() and 0xFF) shl 8) or (jpegData[pos + 3].toInt() and 0xFF)
                    pos += 2 + length
                } else {
                    pos++
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to parse video length", e)
        }
        return 0L
    }

    /**
     * 检查文件是否是 Motion Photo
     */
    fun isMotionPhoto(filePath: String): Boolean {
        try {
            val file = File(filePath)
            if (!file.exists()) return false
            
            // Check Vivo
            if (isVivoPhoto(filePath)) return true

            // Check Legacy
            if (file.length() > 20) {
                FileInputStream(file).use { fis ->
                    fis.skip(file.length() - 20)
                    val buffer = ByteArray(20)
                    fis.read(buffer)
                    if (String(buffer, StandardCharsets.UTF_8).contains("LIVE_")) return true
                }
            }

            // Check standard XMP / Oppo XMP
            // To be efficient, we check for common markers in the first 64KB
            val jpegData = file.readBytes()
            var pos = 2
            while (pos < jpegData.size - 1) {
                val marker = ((jpegData[pos].toInt() and 0xFF) shl 8) or (jpegData[pos + 1].toInt() and 0xFF)
                if (marker == JPEG_SOS) break
                if (marker == JPEG_APP1) {
                    val length = ((jpegData[pos + 2].toInt() and 0xFF) shl 8) or (jpegData[pos + 3].toInt() and 0xFF)
                    val segmentData = jpegData.copyOfRange(pos + 4, minOf(pos + 4 + length - 2, jpegData.size))
                    val segmentString = String(segmentData, StandardCharsets.UTF_8)
                    if (segmentString.contains("MicroVideo=\"1\"") || 
                        segmentString.contains("MotionPhoto=\"1\"")) return true
                    pos += 2 + length
                } else if (marker in 0xFFE0..0xFFEF || marker == 0xFFFE) {
                    val length = ((jpegData[pos + 2].toInt() and 0xFF) shl 8) or (jpegData[pos + 3].toInt() and 0xFF)
                    pos += 2 + length
                } else {
                    pos++
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to check Motion Photo", e)
        }
        return false
    }

    private fun isVivoPhoto(filePath: String): Boolean {
        // Vivo files end with magic bytes and a "vcameralbum!" string
        // We check the last 100 bytes for "vcameralbum!" or "vivo{"
        try {
            val file = File(filePath)
            if (file.length() < 100) return false
            FileInputStream(file).use { fis ->
                fis.skip(file.length() - 100)
                val buffer = ByteArray(100)
                fis.read(buffer)
                val content = String(buffer, StandardCharsets.US_ASCII)
                return content.contains("vcameralbum!") || content.contains("vivo{")
            }
        } catch (e: Exception) {
            return false
        }
    }

    /**
     * 获取 Motion Photo 的视频时间戳
     */
    fun getPresentationTimestampUs(filePath: String): Long {
        try {
            val file = File(filePath)
            val jpegData = file.readBytes()
            var pos = 2
            while (pos < jpegData.size - 1) {
                val marker = ((jpegData[pos].toInt() and 0xFF) shl 8) or (jpegData[pos + 1].toInt() and 0xFF)
                if (marker == JPEG_SOS) break
                if (marker == JPEG_APP1) {
                    val length = ((jpegData[pos + 2].toInt() and 0xFF) shl 8) or (jpegData[pos + 3].toInt() and 0xFF)
                    val segmentData = jpegData.copyOfRange(pos + 4, minOf(pos + 4 + length - 2, jpegData.size))
                    val segmentString = String(segmentData, StandardCharsets.UTF_8)
                    
                    val regexes = listOf(
                        """MicroVideoPresentationTimestampUs="(\d+)"""".toRegex(),
                        """MotionPhotoPresentationTimestampUs="(\d+)"""".toRegex(),
                        """MotionPhotoPrimaryPresentationTimestampUs="(\d+)"""".toRegex()
                    )
                    for (regex in regexes) {
                        val match = regex.find(segmentString)
                        if (match != null) return match.groupValues[1].toLongOrNull() ?: -1L
                    }
                    pos += 2 + length
                } else if (marker in 0xFFE0..0xFFEF || marker == 0xFFFE) {
                    val length = ((jpegData[pos + 2].toInt() and 0xFF) shl 8) or (jpegData[pos + 3].toInt() and 0xFF)
                    pos += 2 + length
                } else {
                    pos++
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to get timestamp", e)
        }
        return -1L
    }

    /**
     * 从 Motion Photo 中提取视频文件
     */
    fun extractVideo(motionPhotoPath: String, outputVideoPath: String): Boolean {
        try {
            if (isVivoPhoto(motionPhotoPath)) {
                // For Vivo, video is a separate file beside the JPEG
                val videoFile = File(motionPhotoPath.substring(0, motionPhotoPath.lastIndexOf('.')) + ".mp4")
                if (videoFile.exists()) {
                    videoFile.copyTo(File(outputVideoPath), overwrite = true)
                    return true
                }
                return false
            }

            val videoLength = getVideoLength(motionPhotoPath)
            if (videoLength <= 0) return false

            val file = File(motionPhotoPath)
            val fileLength = file.length()
            
            val hasLegacyMarker = checkLegacyMarker(motionPhotoPath)
            val offset = if (hasLegacyMarker) {
                fileLength - videoLength - 20
            } else {
                fileLength - videoLength
            }

            FileInputStream(file).use { input ->
                input.skip(offset)
                FileOutputStream(outputVideoPath).use { output ->
                    val buffer = ByteArray(8192)
                    var lenRemaining = videoLength
                    while (lenRemaining > 0) {
                        val toRead = minOf(buffer.size.toLong(), lenRemaining).toInt()
                        val bytesRead = input.read(buffer, 0, toRead)
                        if (bytesRead == -1) break
                        output.write(buffer, 0, bytesRead)
                        lenRemaining -= bytesRead
                    }
                }
            }
            return true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to extract video", e)
            return false
        }
    }

    private fun checkLegacyMarker(filePath: String): Boolean {
        val file = File(filePath)
        if (file.length() < 20) return false
        return try {
            FileInputStream(file).use { fis ->
                fis.skip(file.length() - 20)
                val buffer = ByteArray(20)
                fis.read(buffer)
                String(buffer, StandardCharsets.UTF_8).contains("LIVE_")
            }
        } catch (e: Exception) {
            false
        }
    }
}
