package com.hinnka.mycamera.livephoto

import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.utils.PLog
import java.io.BufferedInputStream
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.nio.charset.StandardCharsets

/**
 * Live Photo creator for Oppo/Realme/OnePlus devices.
 *
 * The current ColorOS file uses:
 * 1. EXIF UserComment with an oplus_* private tag.
 * 2. Google Motion Photo XMP plus OpCamera v2 fields.
 * 3. Appended video bytes, optionally followed by Oppo private video metadata.
 */
class OppoLivePhotoCreator : LivePhotoCreator {
    private val TAG = "OppoLivePhotoCreator"

    override fun create(
        jpegPath: String,
        videoPath: String,
        outputPath: String,
        presentationTimestampUs: Long
    ): Boolean {
        val jpegFile = File(jpegPath)
        val sourceVideoFile = File(videoPath)
        val outputFile = File(outputPath)

        if (!jpegFile.exists() || !sourceVideoFile.exists()) return false

        var preparedJpegFile: File? = null
        var oppoVideoFile: File? = null
        return try {
            val videoDurationUs = readVideoDurationUs(sourceVideoFile, presentationTimestampUs)
            val primaryTimestampUs = normalizePresentationTimestampUs(
                presentationTimestampUs = presentationTimestampUs,
                videoDurationUs = videoDurationUs
            )

            oppoVideoFile = createOppoVideoFile(sourceVideoFile, outputFile, primaryTimestampUs)
            val videoFile = oppoVideoFile ?: sourceVideoFile
            val xmpData = buildOppoXmp(
                appendedVideoLength = videoFile.length(),
                videoDurationUs = videoDurationUs,
                presentationTimestampUs = primaryTimestampUs
            )

            val preparedJpeg = prepareJpegWithOppoUserComment(jpegFile, outputFile)
            preparedJpegFile = preparedJpeg

            FileOutputStream(outputPath).use { output ->
                FileInputStream(preparedJpeg).use { jpegInput ->
                    if (!injectXmpSegment(jpegInput, output, xmpData)) {
                        return false
                    }
                }
                FileInputStream(videoFile).use { videoInput ->
                    videoInput.copyTo(output)
                }
            }

            true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to create Oppo Live Photo", e)
            false
        } finally {
            preparedJpegFile?.delete()
            oppoVideoFile?.delete()
        }
    }

    private fun readVideoDurationUs(videoFile: File, presentationTimestampUs: Long): Long {
        return Mp4DurationReader.readDurationUs(videoFile)
            ?: presentationTimestampUs.takeIf { it > 0L }?.let { it * 2L }
            ?: 0L
    }

    private fun normalizePresentationTimestampUs(
        presentationTimestampUs: Long,
        videoDurationUs: Long
    ): Long {
        val timestampUs = presentationTimestampUs.coerceAtLeast(0L)
        if (videoDurationUs <= 0L) return timestampUs
        return timestampUs.coerceAtMost(videoDurationUs - 1L)
    }

    private fun createOppoVideoFile(
        sourceVideoFile: File,
        outputFile: File,
        presentationTimestampUs: Long
    ): File? {
        val tempVideoFile = createSiblingTempFile(outputFile, "oppo_motion_video_", ".mp4")
        return if (OppoMotionVideoExtender.appendLivePhotoExtension(
                sourceVideo = sourceVideoFile,
                outputVideo = tempVideoFile,
                coverFramePtsUs = presentationTimestampUs
            )
        ) {
            tempVideoFile
        } else {
            tempVideoFile.delete()
            null
        }
    }

    private fun prepareJpegWithOppoUserComment(jpegFile: File, outputFile: File): File {
        val tempJpegFile = createSiblingTempFile(outputFile, "oppo_motion_photo_", ".jpg")
        jpegFile.copyTo(tempJpegFile, overwrite = true)

        try {
            val exif = ExifInterface(tempJpegFile.absolutePath)
            val currentUserComment = exif.getAttribute(ExifInterface.TAG_USER_COMMENT)
            if (currentUserComment?.contains(OPPO_USER_COMMENT_PREFIX) != true) {
                exif.setAttribute(ExifInterface.TAG_USER_COMMENT, OPPO_USER_COMMENT)
                exif.saveAttributes()
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to set Oppo EXIF UserComment", e)
        }

        return tempJpegFile
    }

    private fun injectXmpSegment(
        input: FileInputStream,
        output: FileOutputStream,
        xmpData: ByteArray
    ): Boolean {
        val bis = BufferedInputStream(input)
        val b1 = bis.read()
        val b2 = bis.read()
        if (b1 != 0xFF || b2 != 0xD8) {
            PLog.e(TAG, "Invalid JPEG: missing SOI marker")
            return false
        }

        output.write(b1)
        output.write(b2)

        var xmpInserted = false
        while (true) {
            val marker = readMarker(bis)
            if (marker == -1) {
                if (!xmpInserted && !writeXmpSegment(output, xmpData)) return false
                return true
            }

            if (marker == JPEG_SOS || marker == JPEG_EOI) {
                if (!xmpInserted && !writeXmpSegment(output, xmpData)) return false
                output.write(0xFF)
                output.write(marker and 0xFF)
                bis.copyTo(output)
                return true
            }

            val segment = readSegment(bis) ?: return false
            val isXmp = marker == JPEG_APP1 && segment.payload.startsWith(XMP_NAMESPACE_BYTES)
            val shouldCopyBeforeXmp = marker == JPEG_APP0 ||
                (marker == JPEG_APP1 && segment.payload.startsWith(EXIF_NAMESPACE_BYTES))

            if (shouldCopyBeforeXmp) {
                writeSegment(output, marker, segment)
                continue
            }

            if (!xmpInserted) {
                if (!writeXmpSegment(output, xmpData)) return false
                xmpInserted = true
            }

            if (!isXmp) {
                writeSegment(output, marker, segment)
            }
        }
    }

    private fun readMarker(input: BufferedInputStream): Int {
        var value = input.read()
        while (value != -1 && value != 0xFF) {
            value = input.read()
        }
        if (value == -1) return -1

        do {
            value = input.read()
        } while (value == 0xFF)

        return if (value == -1) -1 else 0xFF00 or value
    }

    private fun readSegment(input: BufferedInputStream): JpegSegment? {
        val high = input.read()
        val low = input.read()
        if (high == -1 || low == -1) return null

        val length = (high shl 8) or low
        if (length < 2) return null

        val payload = ByteArray(length - 2)
        var offset = 0
        while (offset < payload.size) {
            val read = input.read(payload, offset, payload.size - offset)
            if (read == -1) return null
            offset += read
        }

        return JpegSegment(
            lengthHigh = high,
            lengthLow = low,
            payload = payload
        )
    }

    private fun writeSegment(output: FileOutputStream, marker: Int, segment: JpegSegment) {
        output.write(0xFF)
        output.write(marker and 0xFF)
        output.write(segment.lengthHigh)
        output.write(segment.lengthLow)
        output.write(segment.payload)
    }

    private fun writeXmpSegment(output: FileOutputStream, xmpData: ByteArray): Boolean {
        val segmentLength = 2 + XMP_NAMESPACE_BYTES.size + xmpData.size
        if (segmentLength > 0xFFFF) {
            PLog.e(TAG, "Oppo XMP data too large")
            return false
        }

        output.write(0xFF)
        output.write(JPEG_APP1 and 0xFF)
        output.write((segmentLength shr 8) and 0xFF)
        output.write(segmentLength and 0xFF)
        output.write(XMP_NAMESPACE_BYTES)
        output.write(xmpData)
        return true
    }

    private fun buildOppoXmp(
        appendedVideoLength: Long,
        videoDurationUs: Long,
        presentationTimestampUs: Long
    ): ByteArray {
        val xmp = """
            <x:xmpmeta xmlns:x="adobe:ns:meta/" x:xmptk="Adobe XMP Core Test.SNAPSHOT">
              <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
                <rdf:Description rdf:about=""
                    xmlns:GCamera="http://ns.google.com/photos/1.0/camera/"
                    xmlns:OpCamera="http://ns.oplus.com/photos/1.0/camera/"
                    xmlns:Container="http://ns.google.com/photos/1.0/container/"
                    xmlns:Item="http://ns.google.com/photos/1.0/container/item/"
                  GCamera:MotionPhoto="1"
                  GCamera:MotionPhotoVersion="1"
                  GCamera:MotionPhotoPresentationTimestampUs="$presentationTimestampUs"
                  OpCamera:MotionPhotoPrimaryPresentationTimestampUs="$presentationTimestampUs"
                  OpCamera:MotionPhotoOwner="oplus"
                  OpCamera:OLivePhotoVersion="2"
                  OpCamera:VideoLength="$videoDurationUs">
                  <Container:Directory>
                    <rdf:Seq>
                      <rdf:li rdf:parseType="Resource">
                        <Container:Item
                          Item:Mime="image/jpeg"
                          Item:Semantic="Primary"
                          Item:Length="0"
                          Item:Padding="0"/>
                      </rdf:li>
                      <rdf:li rdf:parseType="Resource">
                        <Container:Item
                          Item:Mime="video/mp4"
                          Item:Semantic="MotionPhoto"
                          Item:Length="$appendedVideoLength"/>
                      </rdf:li>
                    </rdf:Seq>
                  </Container:Directory>
                </rdf:Description>
              </rdf:RDF>
            </x:xmpmeta>
        """.trimIndent()
        return xmp.toByteArray(StandardCharsets.UTF_8)
    }

    private fun createSiblingTempFile(outputFile: File, prefix: String, suffix: String): File {
        val parent = outputFile.parentFile ?: File(System.getProperty("java.io.tmpdir") ?: ".")
        return File.createTempFile(prefix, suffix, parent)
    }

    private fun ByteArray.startsWith(prefix: ByteArray): Boolean {
        if (size < prefix.size) return false
        for (index in prefix.indices) {
            if (this[index] != prefix[index]) return false
        }
        return true
    }

    private data class JpegSegment(
        val lengthHigh: Int,
        val lengthLow: Int,
        val payload: ByteArray
    )

    private companion object {
        private const val JPEG_APP0 = 0xFFE0
        private const val JPEG_APP1 = 0xFFE1
        private const val JPEG_SOS = 0xFFDA
        private const val JPEG_EOI = 0xFFD9
        private const val OPPO_USER_COMMENT_PREFIX = "oplus_8601468960"
        private const val OPPO_USER_COMMENT = "oplus_8601468960{}"

        private val XMP_NAMESPACE_BYTES =
            "http://ns.adobe.com/xap/1.0/\u0000".toByteArray(StandardCharsets.UTF_8)
        private val EXIF_NAMESPACE_BYTES =
            "Exif\u0000\u0000".toByteArray(StandardCharsets.UTF_8)
    }
}
