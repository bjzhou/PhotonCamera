package com.hinnka.mycamera.gallery

import android.graphics.Bitmap
import android.graphics.ColorSpace
import android.graphics.Gainmap
import android.os.Build
import com.hinnka.mycamera.camera.CaptureInfo
import com.hinnka.mycamera.hdr.GainmapResult
import com.hinnka.mycamera.utils.PLog
import java.io.ByteArrayOutputStream
import java.io.File

object Jpeg444ExportEncoder {
    private const val TAG = "Jpeg444ExportEncoder"
    const val MIME_TYPE = "image/jpeg"
    const val EXTENSION = "jpg"

    val isSupported: Boolean
        get() = nativeLibraryLoaded

    fun write(
        bitmap: Bitmap,
        outputFile: File,
        quality: Int,
        gainmapResult: GainmapResult? = null,
        captureInfo: CaptureInfo? = null,
    ): Boolean {
        if (!isSupported || bitmap.isRecycled) return false
        if (outputFile.exists() && !outputFile.delete()) return false

        var encoderBitmap: Bitmap? = null
        var baseJpegFile: File? = null
        var gainmapJpegFile: File? = null
        return try {
            val source = if (bitmap.config == Bitmap.Config.ARGB_8888) {
                bitmap
            } else {
                bitmap.copy(Bitmap.Config.ARGB_8888, false)?.also {
                    encoderBitmap = it
                } ?: return false
            }
            val colorSpace = source.colorSpace
            val iccProfile = if (colorSpace != null && !colorSpace.isSrgb) {
                buildIccProfile(colorSpace) ?: run {
                    PLog.w(TAG, "Unable to preserve the ${colorSpace.name} color profile")
                    return false
                }
            } else {
                null
            }

            outputFile.parentFile?.mkdirs()
            val gainmap = gainmapResult?.gainmap
            val baseOutputFile = if (gainmap == null) {
                outputFile
            } else {
                temporarySibling(outputFile, "jpeg444_base").also {
                    baseJpegFile = it
                }
            }
            val baseEncoded = writeNative(
                bitmap = source,
                outputPath = baseOutputFile.absolutePath,
                quality = quality.coerceIn(1, 100),
                iccProfile = iccProfile,
            )
            if (!baseEncoded || !baseOutputFile.isNonEmptyFile()) {
                outputFile.delete()
                return false
            }
            captureInfo?.let { ExifWriter.writeExif(baseOutputFile, it) }

            val packaged = if (gainmap == null) {
                true
            } else {
                gainmapJpegFile = temporarySibling(outputFile, "jpeg444_gainmap")
                writeJpegR(
                    baseBitmap = source,
                    baseJpegFile = baseOutputFile,
                    gainmap = gainmap,
                    gainmapJpegFile = gainmapJpegFile,
                    outputFile = outputFile,
                )
            }
            val success = packaged && outputFile.isNonEmptyFile()
            if (!success) {
                outputFile.delete()
            }
            PLog.d(
                TAG,
                "JPEG 4:4:4 export encode result=$success, " +
                    "size=${source.width}x${source.height}, gainmap=${gainmap != null}, " +
                    "bytes=${outputFile.length()}"
            )
            success
        } catch (error: Throwable) {
            PLog.w(TAG, "JPEG 4:4:4 export encode failed: ${error.message}")
            outputFile.delete()
            false
        } finally {
            encoderBitmap?.recycle()
            baseJpegFile?.delete()
            gainmapJpegFile?.delete()
        }
    }

    fun isJpegR(file: File): Boolean {
        return isSupported &&
            file.isNonEmptyFile() &&
            runCatching { isJpegRNative(file.absolutePath) }.getOrDefault(false)
    }

    private fun writeJpegR(
        baseBitmap: Bitmap,
        baseJpegFile: File,
        gainmap: Gainmap,
        gainmapJpegFile: File?,
        outputFile: File,
    ): Boolean {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
            return false
        }
        if (Build.VERSION.SDK_INT >= API_36) {
            if (gainmap.gainmapDirection != Gainmap.GAINMAP_DIRECTION_SDR_TO_HDR) {
                PLog.w(TAG, "libultrahdr packaging requires an SDR-to-HDR gain map")
                return false
            }
            if (gainmap.alternativeImagePrimaries != null) {
                PLog.w(
                    TAG,
                    "libultrahdr packaging cannot preserve alternative gain map primaries"
                )
                return false
            }
        }

        val gainmapOutputFile = gainmapJpegFile ?: return false
        val contents = gainmap.gainmapContents
        if (contents.isRecycled) return false

        var convertedContents: Bitmap? = null
        return try {
            val encoderContents = when (contents.config) {
                Bitmap.Config.ALPHA_8,
                Bitmap.Config.ARGB_8888 -> contents

                else -> contents.copy(Bitmap.Config.ARGB_8888, false)?.also {
                    convertedContents = it
                } ?: return false
            }
            if (
                !encodeGainmapNative(
                    bitmap = encoderContents,
                    outputPath = gainmapOutputFile.absolutePath,
                    quality = GAINMAP_JPEG_QUALITY,
                ) ||
                !gainmapOutputFile.isNonEmptyFile()
            ) {
                return false
            }

            packageJpegRNative(
                baseJpegPath = baseJpegFile.absolutePath,
                gainmapJpegPath = gainmapOutputFile.absolutePath,
                outputPath = outputFile.absolutePath,
                baseColorGamut = toUltraHdrColorGamut(baseBitmap.colorSpace),
                ratioMin = gainmap.ratioMin,
                ratioMax = gainmap.ratioMax,
                gamma = gainmap.gamma,
                epsilonSdr = gainmap.epsilonSdr,
                epsilonHdr = gainmap.epsilonHdr,
                displayRatioSdr = gainmap.minDisplayRatioForHdrTransition,
                displayRatioHdr = gainmap.displayRatioForFullHdr,
                useBaseColorSpace = true,
            ) &&
                outputFile.isNonEmptyFile() &&
                isJpegRNative(outputFile.absolutePath)
        } finally {
            convertedContents?.recycle()
        }
    }

    private external fun encodeGainmapNative(
        bitmap: Bitmap,
        outputPath: String,
        quality: Int,
    ): Boolean

    private external fun packageJpegRNative(
        baseJpegPath: String,
        gainmapJpegPath: String,
        outputPath: String,
        baseColorGamut: Int,
        ratioMin: FloatArray,
        ratioMax: FloatArray,
        gamma: FloatArray,
        epsilonSdr: FloatArray,
        epsilonHdr: FloatArray,
        displayRatioSdr: Float,
        displayRatioHdr: Float,
        useBaseColorSpace: Boolean,
    ): Boolean

    private external fun isJpegRNative(path: String): Boolean

    private external fun writeNative(
        bitmap: Bitmap,
        outputPath: String,
        quality: Int,
        iccProfile: ByteArray?,
    ): Boolean

    private fun buildIccProfile(colorSpace: ColorSpace): ByteArray? {
        val probe = Bitmap.createBitmap(
            1,
            1,
            Bitmap.Config.ARGB_8888,
            false,
            colorSpace,
        )
        return try {
            val encoded = ByteArrayOutputStream().use { output ->
                if (!probe.compress(Bitmap.CompressFormat.JPEG, 100, output)) {
                    return null
                }
                output.toByteArray()
            }
            extractIccProfile(encoded)
        } finally {
            probe.recycle()
        }
    }

    private fun extractIccProfile(jpeg: ByteArray): ByteArray? {
        if (
            jpeg.size < 4 ||
            jpeg[0] != JPEG_MARKER_PREFIX ||
            jpeg[1] != JPEG_SOI
        ) {
            return null
        }

        val chunks = mutableMapOf<Int, ByteArray>()
        var expectedChunkCount: Int? = null
        var offset = 2
        while (offset + 4 <= jpeg.size) {
            if (jpeg[offset] != JPEG_MARKER_PREFIX) return null
            val marker = jpeg[offset + 1]
            if (marker == JPEG_SOS || marker == JPEG_EOI) break

            val segmentLength =
                ((jpeg[offset + 2].toInt() and 0xFF) shl 8) or
                    (jpeg[offset + 3].toInt() and 0xFF)
            if (segmentLength < 2 || offset + 2 + segmentLength > jpeg.size) return null

            val payloadOffset = offset + 4
            val payloadLength = segmentLength - 2
            if (
                marker == JPEG_APP2 &&
                payloadLength >= ICC_HEADER.size + 2 &&
                ICC_HEADER.indices.all { index ->
                    jpeg[payloadOffset + index] == ICC_HEADER[index]
                }
            ) {
                val sequence = jpeg[payloadOffset + ICC_HEADER.size].toInt() and 0xFF
                val chunkCount = jpeg[payloadOffset + ICC_HEADER.size + 1].toInt() and 0xFF
                if (
                    sequence == 0 ||
                    chunkCount == 0 ||
                    sequence > chunkCount ||
                    (expectedChunkCount != null && expectedChunkCount != chunkCount)
                ) {
                    return null
                }
                expectedChunkCount = chunkCount
                val profileOffset = payloadOffset + ICC_HEADER.size + 2
                chunks[sequence] = jpeg.copyOfRange(
                    profileOffset,
                    payloadOffset + payloadLength,
                )
            }
            offset += 2 + segmentLength
        }

        val chunkCount = expectedChunkCount ?: return null
        if (chunks.size != chunkCount) return null
        return ByteArrayOutputStream().use { profile ->
            for (sequence in 1..chunkCount) {
                profile.write(chunks[sequence] ?: return null)
            }
            profile.toByteArray()
        }
    }

    private val nativeLibraryLoaded: Boolean by lazy {
        runCatching {
            System.loadLibrary("my-native-lib")
            true
        }.getOrElse { error ->
            PLog.w(TAG, "JPEG 4:4:4 native encoder unavailable: ${error.message}")
            false
        }
    }

    private fun temporarySibling(outputFile: File, label: String): File {
        return File(
            outputFile.absoluteFile.parentFile,
            ".${outputFile.name}.$label.${System.nanoTime()}.jpg",
        )
    }

    private fun File.isNonEmptyFile(): Boolean = exists() && length() > 0L

    private fun toUltraHdrColorGamut(colorSpace: ColorSpace?): Int {
        if (colorSpace == null || colorSpace.isSrgb) {
            return UHDR_CG_BT_709
        }
        return when (colorSpace) {
            ColorSpace.get(ColorSpace.Named.BT709),
            ColorSpace.get(ColorSpace.Named.EXTENDED_SRGB),
            ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB),
            ColorSpace.get(ColorSpace.Named.LINEAR_SRGB) -> UHDR_CG_BT_709

            ColorSpace.get(ColorSpace.Named.DISPLAY_P3),
            ColorSpace.get(ColorSpace.Named.DCI_P3) -> UHDR_CG_DISPLAY_P3

            ColorSpace.get(ColorSpace.Named.BT2020),
            ColorSpace.get(ColorSpace.Named.BT2020_HLG),
            ColorSpace.get(ColorSpace.Named.BT2020_PQ) -> UHDR_CG_BT_2100

            else -> UHDR_CG_UNSPECIFIED
        }
    }

    private const val GAINMAP_JPEG_QUALITY = 95
    private const val API_36 = 36
    private const val UHDR_CG_UNSPECIFIED = -1
    private const val UHDR_CG_BT_709 = 0
    private const val UHDR_CG_DISPLAY_P3 = 1
    private const val UHDR_CG_BT_2100 = 2

    private val ICC_HEADER = byteArrayOf(
        'I'.code.toByte(),
        'C'.code.toByte(),
        'C'.code.toByte(),
        '_'.code.toByte(),
        'P'.code.toByte(),
        'R'.code.toByte(),
        'O'.code.toByte(),
        'F'.code.toByte(),
        'I'.code.toByte(),
        'L'.code.toByte(),
        'E'.code.toByte(),
        0,
    )
    private val JPEG_MARKER_PREFIX = 0xFF.toByte()
    private val JPEG_SOI = 0xD8.toByte()
    private val JPEG_EOI = 0xD9.toByte()
    private val JPEG_SOS = 0xDA.toByte()
    private val JPEG_APP2 = 0xE2.toByte()
}
