package com.hinnka.mycamera.livephoto

import com.hinnka.mycamera.utils.PLog
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.RandomAccessFile
import java.nio.charset.StandardCharsets

/**
 * Motion Photo 文件合成器
 *
 * 将 JPEG 静态图片和 MP4 视频合成为符合 Android Motion Photo 1.0 规范的文件。
 *
 * 文件结构:
 * ```
 * +-------------------+
 * |  JPEG 主图像      |  (带 XMP 元数据)
 * +-------------------+
 * |  MP4 视频         |  (紧随其后)
 * +-------------------+
 * ```
 *
 * 规范参考: https://developer.android.com/media/platform/motion-photo-format
 */
object MotionPhotoWriter {
    private const val TAG = "MotionPhotoWriter"

    // JPEG 标记
    private const val JPEG_SOI = 0xFFD8     // Start of Image
    private const val JPEG_EOI = 0xFFD9     // End of Image
    private const val JPEG_APP1 = 0xFFE1    // APP1 (EXIF/XMP)
    private const val JPEG_SOS = 0xFFDA     // Start of Scan

    // XMP 命名空间
    private const val XMP_NS_X = "adobe:ns:meta/"
    private const val XMP_NS_RDF = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    private const val XMP_NS_CAMERA = "http://ns.google.com/photos/1.0/camera/"
    private const val XMP_NS_CAMERA_XIAOMI = "http://ns.xiaomi.com/photos/1.0/camera/"
    private const val XMP_NS_CAMERA_OP = "http://ns.oplus.com/photos/1.0/camera/"
    private const val XMP_NS_CONTAINER = "http://ns.google.com/photos/1.0/container/"
    private const val XMP_NS_ITEM = "http://ns.google.com/photos/1.0/container/item/"

    /**
     * 合成 Motion Photo 文件
     *
     * @param jpegPath 静态 JPEG 图片路径
     * @param videoPath MP4 视频路径
     * @param outputPath 输出 Motion Photo 路径
     * @param presentationTimestampUs 静态帧对应的视频时间戳 (微秒)
     * @return 是否成功
     */
    fun write(
        jpegPath: String,
        videoPath: String,
        outputPath: String,
        presentationTimestampUs: Long
    ): Boolean {
        try {
            val jpegFile = File(jpegPath)
            val videoFile = File(videoPath)

            if (!jpegFile.exists()) {
                PLog.e(TAG, "JPEG file not found: $jpegPath")
                return false
            }
            if (!videoFile.exists()) {
                PLog.e(TAG, "Video file not found: $videoPath")
                return false
            }

            val videoLength = videoFile.length()

            // 生成 Motion Photo XMP 元数据
            val xmpData = buildMotionPhotoXmp(videoLength, presentationTimestampUs)

            // 使用流式处理，避免大文件 OOM
            FileOutputStream(outputPath).use { output ->
                FileInputStream(jpegPath).use { jpegInput ->
                    // 1. 注入 XMP 并写入 JPEG 内容
                    if (!injectXmpToStream(jpegInput, output, xmpData)) {
                        PLog.e(TAG, "Failed to inject XMP")
                        return false
                    }
                }

                // 2. 追加 MP4 视频
                FileInputStream(videoPath).use { videoInput ->
                    val buffer = ByteArray(8192)
                    var bytesRead: Int
                    while (videoInput.read(buffer).also { bytesRead = it } != -1) {
                        output.write(buffer, 0, bytesRead)
                    }
                }
            }

            PLog.d(TAG, "Motion Photo created: $outputPath (Video: $videoLength)")
            return true

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to write Motion Photo", e)
            return false
        }
    }

    /**
     * 将 XMP 元数据注入到 JPEG 流 (Robust Byte-level Scanner)
     *
     * 精确处理 JPEG 标记结构，
     * 策略：将 XMP 插入到 Exif (APP1) 之后，或者如果不存在 Exif，则在 SOI 之后。
     * 尽量靠前插入，以兼容部分只扫描文件头部的解析器。
     */
    private fun injectXmpToStream(input: FileInputStream, output: FileOutputStream, xmpData: ByteArray): Boolean {
        try {
            // 使用 BufferedInputStream 以提高逐字节读取性能
            val bis = java.io.BufferedInputStream(input)

            // 1. 验证 SOI (FF D8)
            val b1 = bis.read()
            val b2 = bis.read()
            if (b1 != 0xFF || b2 != 0xD8) {
                PLog.e(TAG, "Invalid JPEG: missing SOI marker")
                return false
            }
            output.write(b1)
            output.write(b2)

            // 准备 XMP APP1 段数据
            val xmpNamespace = "http://ns.adobe.com/xap/1.0/\u0000"
            val namespaceBytes = xmpNamespace.toByteArray(StandardCharsets.US_ASCII)
            val segmentLength = 2 + namespaceBytes.size + xmpData.size
            var xmpInserted = false

            while (true) {
                // 查找下一个标记开始 (0xFF)
                var markerByte = bis.read()
                while (markerByte != 0xFF && markerByte != -1) {
                    output.write(markerByte)
                    markerByte = bis.read()
                }
                if (markerByte == -1) break // EOF

                // 读取标记类型字节
                var typeByte = bis.read()
                if (typeByte == -1) {
                    output.write(markerByte) // 写入最后的 FF
                    break
                }

                // 处理填充字节 (FF FF ... FF XX)
                while (typeByte == 0xFF) {
                    output.write(markerByte) // 写入前一个 FF
                    markerByte = typeByte
                    typeByte = bis.read()
                }

                val marker = typeByte

                // 决策：在哪里插入 XMP？
                // 如果还未插入，且当前标记 不是 APP0 (JFIF) 且 不是 APP1 (Exif)，则在此插入
                // 注意：Exif 也是 APP1，通常以 "Exif\0\0" 开头。这里简化处理，假设第一个 APP1 是 Exif。
                // 如果遇到 APP0 或 APP1，先写入它们，推迟插入。
                // 如果遇到其他任何标记（APP2-15, DQT, SOF, SOS等），立即插入 XMP。

                val isApp0 = marker == 0xE0
                val isApp1 = marker == 0xE1

                if (!xmpInserted && !isApp0 && !isApp1) {
                    // --- 在此插入 XMP ---
                    output.write(0xFF)
                    output.write(0xE1)
                    output.write((segmentLength shr 8) and 0xFF)
                    output.write(segmentLength and 0xFF)
                    output.write(namespaceBytes)
                    output.write(xmpData)
                    xmpInserted = true
                }

                if (marker == 0xDA) { // SOS (Start of Scan) - 0xDA
                    // 如果到 SOS 还没插入（例如只有 APP0/APP1），强制插入
                    if (!xmpInserted) {
                        output.write(0xFF)
                        output.write(0xE1)
                        output.write((segmentLength shr 8) and 0xFF)
                        output.write(segmentLength and 0xFF)
                        output.write(namespaceBytes)
                        output.write(xmpData)
                        xmpInserted = true
                    }

                    // 写入原本的 SOS 标记
                    output.write(markerByte) // FF
                    output.write(typeByte)   // DA

                    // 复制剩余所有数据
                    val buffer = ByteArray(8192)
                    var len: Int
                    while (bis.read(buffer).also { len = it } != -1) {
                        output.write(buffer, 0, len)
                    }
                    return true
                }

                // 写入当前标记
                output.write(markerByte)
                output.write(typeByte)

                // 处理标记负载
                val isStandalone = marker == 0x01 || (marker in 0xD0..0xD9)
                if (!isStandalone) {
                    val lenHi = bis.read()
                    val lenLo = bis.read()
                    if (lenHi == -1 || lenLo == -1) return false

                    output.write(lenHi)
                    output.write(lenLo)

                    val length = ((lenHi and 0xFF) shl 8) or (lenLo and 0xFF)
                    val bodyLen = length - 2

                    if (bodyLen > 0) {
                        var remaining = bodyLen
                        val buffer = ByteArray(minOf(4096, remaining))
                        while (remaining > 0) {
                            val toRead = minOf(buffer.size, remaining)
                            val read = bis.read(buffer, 0, toRead)
                            if (read == -1) return false
                            output.write(buffer, 0, read)
                            remaining -= read
                        }
                    }
                }
            }

            PLog.e(TAG, "SOS marker not found in JPEG stream")
            return false
        } catch (e: Exception) {
            PLog.e(TAG, "Error injecting XMP", e)
            return false
        }
    }

    /**
     * 构建 Motion Photo XMP 元数据
     */
    private fun buildMotionPhotoXmp(videoLength: Long, presentationTimestampUs: Long): ByteArray {
        val xmp = buildString {
            // "Dual-Metadata" Strategy:
            // Reverting to Attribute-based syntax for Container Items which is standard for Google Photos.

            append("<?xpacket begin=\"\uFEFF\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>")
            append("<x:xmpmeta xmlns:x=\"$XMP_NS_X\" x:xmptk=\"Adobe XMP Core 5.1.0-jc003\">")
            append("<rdf:RDF xmlns:rdf=\"$XMP_NS_RDF\">")
            append("<rdf:Description rdf:about=\"\"")
            append(" xmlns:GCamera=\"$XMP_NS_CAMERA\"")
            append(" xmlns:MiCamera=\"$XMP_NS_CAMERA_XIAOMI\"")
            append(" xmlns:OpCamera=\"$XMP_NS_CAMERA_OP\"")
            append(" xmlns:Container=\"$XMP_NS_CONTAINER\"")
            append(" xmlns:Item=\"$XMP_NS_ITEM\"")

            // Old Standard Tags (Attributes)
            append(" GCamera:MicroVideo=\"1\"")
            append(" GCamera:MicroVideoVersion=\"1\"")
            append(" GCamera:MicroVideoOffset=\"$videoLength\"")
            append(" GCamera:MicroVideoPresentationTimestampUs=\"$presentationTimestampUs\"")

            // New Standard Tags (Attributes)
            append(" GCamera:MotionPhoto=\"1\"")
            append(" GCamera:MotionPhotoVersion=\"1\"")
            append(" GCamera:MotionPhotoPresentationTimestampUs=\"$presentationTimestampUs\"")

            append(" OpCamera:MotionPhotoPresentationTimestampUs=\"0\"")
            append(" OpCamera:MotionPhotoOwner=\"oplus\"")
            append(" OpCamera:OLivePhotoVersion=\"2\"")
            append(" OpCamera:VideoLength=\"$videoLength\"")

            append(" MiCamera:XMPMeta=\"&lt;?xml version='1.0' encoding='UTF-8' standalone='yes' ?&gt;\">")

            // Container Directory
            append("<Container:Directory>")
            append("<rdf:Seq>")

            // Item 1: Primary Image
            append("<rdf:li rdf:parseType=\"Resource\">")
            append("<Container:Item Item:Semantic=\"Primary\" Item:Mime=\"image/jpeg\"/>")
            append("</rdf:li>")

            // Item 2: Motion Photo Video
            append("<rdf:li rdf:parseType=\"Resource\">")
            append("<Container:Item Item:Semantic=\"MotionPhoto\" Item:Mime=\"video/mp4\" Item:Length=\"$videoLength\"/>")
            append("</rdf:li>")

            append("</rdf:Seq>")
            append("</Container:Directory>")

            append("</rdf:Description>")
            append("</rdf:RDF>")
            append("</x:xmpmeta>")

            // Add padding (Standard is usually whitespace in the packet wrapper)
            for (i in 0..2000) {
                append(" ")
            }

            append("<?xpacket end=\"w\"?>")
        }

        return xmp.toByteArray(StandardCharsets.UTF_8)
    }

    /**
     * 将 XMP 元数据注入到 JPEG 文件
     *
     * 在 JPEG 的 APP1 段后插入新的 APP1 段包含 Motion Photo XMP
     */
    private fun injectXmpToJpeg(jpegData: ByteArray, xmpData: ByteArray): ByteArray? {
        if (jpegData.size < 4) return null

        // 验证 JPEG SOI
        if ((jpegData[0].toInt() and 0xFF) != 0xFF || (jpegData[1].toInt() and 0xFF) != 0xD8) {
            PLog.e(TAG, "Invalid JPEG: missing SOI marker")
            return null
        }

        // 构建 APP1 段
        // 格式: FF E1 [length 2 bytes] "http://ns.adobe.com/xap/1.0/\0" [xmp data]
        val xmpNamespace = "http://ns.adobe.com/xap/1.0/\u0000"
        val namespaceBytes = xmpNamespace.toByteArray(StandardCharsets.US_ASCII)
        val segmentLength = 2 + namespaceBytes.size + xmpData.size

        if (segmentLength > 65535) {
            PLog.e(TAG, "XMP data too large for APP1 segment")
            return null
        }

        val app1Segment = ByteArray(2 + 2 + namespaceBytes.size + xmpData.size)
        app1Segment[0] = 0xFF.toByte()
        app1Segment[1] = 0xE1.toByte()
        app1Segment[2] = ((segmentLength shr 8) and 0xFF).toByte()
        app1Segment[3] = (segmentLength and 0xFF).toByte()
        System.arraycopy(namespaceBytes, 0, app1Segment, 4, namespaceBytes.size)
        System.arraycopy(xmpData, 0, app1Segment, 4 + namespaceBytes.size, xmpData.size)

        // 找到插入位置 (SOI 之后)
        var insertPos = 2  // 跳过 SOI

        // 跳过已存在的 APP0-APP15 和其他段，直到找到合适的插入点
        while (insertPos < jpegData.size - 1) {
            val marker1 = jpegData[insertPos].toInt() and 0xFF
            val marker2 = jpegData[insertPos + 1].toInt() and 0xFF

            if (marker1 != 0xFF) {
                // 不是标记，可能已经进入图像数据
                break
            }

            val marker = (marker1 shl 8) or marker2

            // 如果遇到 SOS (Start of Scan)，在它之前插入
            if (marker == JPEG_SOS) {
                break
            }

            // 跳过这个段
            if (marker in 0xFFE0..0xFFEF || marker in 0xFFC0..0xFFCF || marker == 0xFFFE) {
                if (insertPos + 3 >= jpegData.size) break
                val length = ((jpegData[insertPos + 2].toInt() and 0xFF) shl 8) or
                        (jpegData[insertPos + 3].toInt() and 0xFF)
                insertPos += 2 + length
            } else {
                // 其他标记，停止
                break
            }
        }

        // 构建输出
        val result = ByteArray(jpegData.size + app1Segment.size)
        System.arraycopy(jpegData, 0, result, 0, insertPos)
        System.arraycopy(app1Segment, 0, result, insertPos, app1Segment.size)
        System.arraycopy(jpegData, insertPos, result, insertPos + app1Segment.size, jpegData.size - insertPos)

        return result
    }

    /**
     * 从 Motion Photo 文件的 XMP 中获取视频长度
     */
    private fun getVideoLength(motionPhotoPath: String): Long {
        try {
            val jpegData = File(motionPhotoPath).readBytes()
            var pos = 2
            while (pos < jpegData.size - 1) {
                val marker = ((jpegData[pos].toInt() and 0xFF) shl 8) or (jpegData[pos + 1].toInt() and 0xFF)
                if (marker == JPEG_SOS) break
                if (marker == JPEG_APP1) {
                    val length = ((jpegData[pos + 2].toInt() and 0xFF) shl 8) or (jpegData[pos + 3].toInt() and 0xFF)
                    val segmentData = jpegData.copyOfRange(pos + 4, minOf(pos + 4 + length - 2, jpegData.size))
                    val segmentString = String(segmentData, StandardCharsets.UTF_8)
                    if (segmentString.contains("MicroVideoOffset")) {
                        val regex = """MicroVideoOffset="(\d+)"""".toRegex()
                        val match = regex.find(segmentString)
                        if (match != null) return match.groupValues[1].toLongOrNull() ?: 0L
                    }
                    pos += 2 + length
                } else {
                    val length = ((jpegData[pos + 2].toInt() and 0xFF) shl 8) or (jpegData[pos + 3].toInt() and 0xFF)
                    pos += 2 + length
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to parse XMP for offset", e)
        }
        return 0L
    }

    /**
     * 检查文件是否是 Motion Photo
     */
    fun isMotionPhoto(filePath: String): Boolean {
        try {
            val jpegData = File(filePath).readBytes()
            var pos = 2
            while (pos < jpegData.size - 1) {
                val marker = ((jpegData[pos].toInt() and 0xFF) shl 8) or (jpegData[pos + 1].toInt() and 0xFF)
                if (marker == JPEG_SOS) break
                if (marker == JPEG_APP1) {
                    val length = ((jpegData[pos + 2].toInt() and 0xFF) shl 8) or (jpegData[pos + 3].toInt() and 0xFF)
                    val segmentData = jpegData.copyOfRange(pos + 4, minOf(pos + 4 + length - 2, jpegData.size))
                    val segmentString = String(segmentData, StandardCharsets.UTF_8)
                    if (segmentString.contains("MicroVideo=\"1\"")) return true
                    pos += 2 + length
                } else {
                    val length = ((jpegData[pos + 2].toInt() and 0xFF) shl 8) or (jpegData[pos + 3].toInt() and 0xFF)
                    pos += 2 + length
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to check Motion Photo", e)
        }
        return false
    }

    /**
     * 获取 Motion Photo 的视频时间戳
     */
    fun getPresentationTimestampUs(filePath: String): Long {
        try {
            val jpegData = File(filePath).readBytes()
            var pos = 2
            while (pos < jpegData.size - 1) {
                val marker = ((jpegData[pos].toInt() and 0xFF) shl 8) or (jpegData[pos + 1].toInt() and 0xFF)
                if (marker == JPEG_SOS) break
                if (marker == JPEG_APP1) {
                    val length = ((jpegData[pos + 2].toInt() and 0xFF) shl 8) or (jpegData[pos + 3].toInt() and 0xFF)
                    val segmentData = jpegData.copyOfRange(pos + 4, minOf(pos + 4 + length - 2, jpegData.size))
                    val segmentString = String(segmentData, StandardCharsets.UTF_8)
                    if (segmentString.contains("MicroVideoPresentationTimestampUs")) {
                        val regex = """MicroVideoPresentationTimestampUs="(\d+)"""".toRegex()
                        val match = regex.find(segmentString)
                        if (match != null) return match.groupValues[1].toLongOrNull() ?: -1L
                    }
                    pos += 2 + length
                } else {
                    val length = ((jpegData[pos + 2].toInt() and 0xFF) shl 8) or (jpegData[pos + 3].toInt() and 0xFF)
                    pos += 2 + length
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to get timestamp", e)
        }
        return -1L
    }
}
