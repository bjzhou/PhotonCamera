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

    private const val JPEG_SOI = 0xFFD8     // Start of Image
    private const val JPEG_APP1 = 0xFFE1    // APP1 (EXIF/XMP)
    private const val JPEG_SOS = 0xFFDA     // Start of Scan
    private const val JPEG_EOI = 0xFFD9     // End of Image

    private val xmpItemTagRegex = "<(?:[A-Za-z_][\\w.-]*:)?Item\\b([^>]*)/?>".toRegex()
    private val xmpAttributeRegex =
        "(?:[A-Za-z_][\\w.-]*:)?([A-Za-z_][\\w.-]*)\\s*=\\s*\"([^\"]*)\"".toRegex()

    private data class XmpContainerItem(
        val mime: String?,
        val semantic: String?,
        val length: Long?
    )

    private data class XmpVideoInfo(
        val containerLength: Long,
        val videoLength: Long
    )

    private data class EmbeddedVideoRange(
        val offset: Long,
        val length: Long
    )

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
        context: Context? = null,
        livePhotoCreator: LivePhotoCreator? = null
    ): Boolean {
        try {
            val jpegFile = File(jpegPath)
            val videoFile = File(videoPath)

            if (!jpegFile.exists()) return false
            if (!videoFile.exists()) return false

            val creator = livePhotoCreator ?: getCreator(context)
            
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
            parseXmpVideoInfo(file)?.let { return it.videoLength }
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
            val jpegData = file.readBytes()
            val isXmpMotionPhoto = findInApp1Segments(jpegData) { segmentString ->
                if (segmentString.contains("MicroVideo=\"1\"") ||
                    segmentString.contains("MotionPhoto=\"1\"") ||
                    parseXmpVideoInfo(segmentString) != null
                ) {
                    true
                } else {
                    null
                }
            } ?: false
            if (isXmpMotionPhoto) return true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to check Motion Photo", e)
        }
        return false
    }

    fun isVivoPhoto(filePath: String): Boolean {
        return VivoLivePhotoCreator.isVivoLivePhoto(filePath)
    }

    /**
     * 获取 Motion Photo 的视频时间戳
     */
    fun getPresentationTimestampUs(filePath: String): Long {
        try {
            val file = File(filePath)
            val jpegData = file.readBytes()
            return findInApp1Segments(jpegData) { segmentString ->
                findFirstLongAttribute(
                    segmentString,
                    listOf(
                        "MicroVideoPresentationTimestampUs",
                        "MotionPhotoPresentationTimestampUs",
                        "MotionPhotoPrimaryPresentationTimestampUs"
                    )
                )
            } ?: -1L
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

            val file = File(motionPhotoPath)
            val videoRange = resolveEmbeddedVideoRange(file) ?: return false

            var copiedCompletely = false
            FileInputStream(file).use { input ->
                input.channel.position(videoRange.offset)
                FileOutputStream(outputVideoPath).use { output ->
                    val buffer = ByteArray(8192)
                    var lenRemaining = videoRange.length
                    while (lenRemaining > 0) {
                        val toRead = minOf(buffer.size.toLong(), lenRemaining).toInt()
                        val bytesRead = input.read(buffer, 0, toRead)
                        if (bytesRead == -1) break
                        output.write(buffer, 0, bytesRead)
                        lenRemaining -= bytesRead
                    }
                    copiedCompletely = lenRemaining == 0L
                }
            }
            if (!copiedCompletely) {
                File(outputVideoPath).delete()
                return false
            }
            return true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to extract video", e)
            return false
        }
    }

    private fun parseXmpVideoInfo(file: File): XmpVideoInfo? {
        return findInApp1Segments(file.readBytes(), ::parseXmpVideoInfo)
    }

    private fun parseXmpVideoInfo(segmentString: String): XmpVideoInfo? {
        val containerItemLength = parseContainerMotionPhotoLength(segmentString)
        val microVideoOffset = findLongAttribute(segmentString, "MicroVideoOffset")
        val legacyVideoLengthAttribute = findLongAttribute(segmentString, "VideoLength")
            ?.takeUnless { containerItemLength != null && isOppoLivePhotoV2(segmentString) }

        val containerLength = listOfNotNull(
            containerItemLength,
            microVideoOffset,
            legacyVideoLengthAttribute
        ).firstOrNull { it > 0L } ?: return null

        return XmpVideoInfo(
            containerLength = containerLength,
            videoLength = containerLength
        )
    }

    private fun isOppoLivePhotoV2(segmentString: String): Boolean {
        return findLongAttribute(segmentString, "OLivePhotoVersion")?.let { it >= 2L } == true ||
            segmentString.contains("http://ns.oplus.com/photos/1.0/camera/")
    }

    private fun parseContainerMotionPhotoLength(segmentString: String): Long? {
        val items = xmpItemTagRegex.findAll(segmentString)
            .map { match ->
                val attributes = xmpAttributeRegex.findAll(match.groupValues[1])
                    .associate { attribute ->
                        attribute.groupValues[1].lowercase() to attribute.groupValues[2]
                    }

                XmpContainerItem(
                    mime = attributes["mime"],
                    semantic = attributes["semantic"],
                    length = attributes["length"]?.toLongOrNull()
                )
            }
            .filter { (it.length ?: 0L) > 0L }
            .toList()

        return items.firstOrNull { it.isMotionPhotoSemantic() && it.isVideoMime() }?.length
            ?: items.firstOrNull { it.isMotionPhotoSemantic() }?.length
            ?: items.firstOrNull { it.isVideoMime() }?.length
    }

    private fun XmpContainerItem.isMotionPhotoSemantic(): Boolean {
        val value = semantic ?: return false
        return value.contains("MotionPhoto", ignoreCase = true) ||
            value.contains("MicroVideo", ignoreCase = true) ||
            value.contains("LivePhoto", ignoreCase = true)
    }

    private fun XmpContainerItem.isVideoMime(): Boolean {
        val value = mime ?: return false
        return value.startsWith("video/", ignoreCase = true) ||
            value.equals("application/mp4", ignoreCase = true)
    }

    private fun findFirstLongAttribute(segmentString: String, names: List<String>): Long? {
        for (name in names) {
            findLongAttribute(segmentString, name)?.let { return it }
        }
        return null
    }

    private fun findLongAttribute(segmentString: String, name: String): Long? {
        val regex = "(?:[A-Za-z_][\\w.-]*:)?${Regex.escape(name)}\\s*=\\s*\"(\\d+)\"".toRegex()
        return regex.find(segmentString)?.groupValues?.get(1)?.toLongOrNull()
    }

    private fun resolveEmbeddedVideoRange(file: File): EmbeddedVideoRange? {
        readLegacyVideoLength(file)?.let { videoLength ->
            val offset = file.length() - videoLength - 20L
            if (offset >= 0L && videoLength > 0L) {
                return EmbeddedVideoRange(offset = offset, length = videoLength)
            }
        }

        val xmpInfo = parseXmpVideoInfo(file) ?: return null
        val offset = file.length() - xmpInfo.containerLength
        if (offset < 0L || xmpInfo.videoLength <= 0L) return null

        val availableLength = file.length() - offset
        return EmbeddedVideoRange(
            offset = offset,
            length = minOf(xmpInfo.videoLength, availableLength)
        )
    }

    private fun readLegacyVideoLength(file: File): Long? {
        if (file.length() <= 20) return null
        return try {
            FileInputStream(file).use { fis ->
                fis.skip(file.length() - 20)
                val buffer = ByteArray(20)
                fis.read(buffer)
                val marker = String(buffer, StandardCharsets.UTF_8).trim()
                if (marker.startsWith("LIVE_")) {
                    marker.substring(5).toLongOrNull()?.takeIf { it > 0L }
                } else {
                    null
                }
            }
        } catch (e: Exception) {
            null
        }
    }

    private fun <T> findInApp1Segments(jpegData: ByteArray, parser: (String) -> T?): T? {
        if (jpegData.size < 4) return null
        val soi = ((jpegData[0].toInt() and 0xFF) shl 8) or (jpegData[1].toInt() and 0xFF)
        if (soi != JPEG_SOI) return null

        var pos = 2
        while (pos < jpegData.size - 1) {
            if ((jpegData[pos].toInt() and 0xFF) != 0xFF) {
                pos++
                continue
            }

            while (pos < jpegData.size && (jpegData[pos].toInt() and 0xFF) == 0xFF) {
                pos++
            }
            if (pos >= jpegData.size) break

            val marker = 0xFF00 or (jpegData[pos].toInt() and 0xFF)
            pos++

            if (marker == JPEG_SOS || marker == JPEG_EOI) break
            if (marker == 0xFF01 || marker in 0xFFD0..0xFFD7) continue
            if (pos + 1 >= jpegData.size) break

            val length = ((jpegData[pos].toInt() and 0xFF) shl 8) or (jpegData[pos + 1].toInt() and 0xFF)
            if (length < 2) break

            val segmentStart = pos + 2
            val segmentEnd = minOf(segmentStart + length - 2, jpegData.size)
            if (marker == JPEG_APP1 && segmentStart <= segmentEnd) {
                val segmentString = String(
                    jpegData.copyOfRange(segmentStart, segmentEnd),
                    StandardCharsets.UTF_8
                )
                parser(segmentString)?.let { return it }
            }

            pos += length
        }

        return null
    }
}
