package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog
import java.io.File
import java.io.RandomAccessFile
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.abs

internal object DngEmbeddedProfile {
    private const val TAG = "DngEmbeddedProfile"

    private const val TIFF_CLASSIC_MAGIC = 42

    private const val TIFF_TYPE_BYTE = 1
    private const val TIFF_TYPE_ASCII = 2
    private const val TIFF_TYPE_SHORT = 3
    private const val TIFF_TYPE_LONG = 4
    private const val TIFF_TYPE_RATIONAL = 5
    private const val TIFF_TYPE_UNDEFINED = 7
    private const val TIFF_TYPE_SSHORT = 8
    private const val TIFF_TYPE_SLONG = 9
    private const val TIFF_TYPE_SRATIONAL = 10
    private const val TIFF_TYPE_FLOAT = 11
    private const val TIFF_TYPE_DOUBLE = 12

    private const val TAG_COLOR_MATRIX1 = 50721
    private const val TAG_COLOR_MATRIX2 = 50722
    private const val TAG_CAMERA_CALIBRATION1 = 50723
    private const val TAG_CAMERA_CALIBRATION2 = 50724
    private const val TAG_ANALOG_BALANCE = 50727
    private const val TAG_CALIBRATION_ILLUMINANT1 = 50778
    private const val TAG_CALIBRATION_ILLUMINANT2 = 50779
    private const val TAG_PROFILE_NAME = 50936
    private const val TAG_PROFILE_HUE_SAT_MAP_DIMS = 50937
    private const val TAG_PROFILE_HUE_SAT_MAP_DATA1 = 50938
    private const val TAG_PROFILE_HUE_SAT_MAP_DATA2 = 50939
    private const val TAG_PROFILE_TONE_CURVE = 50940
    private const val TAG_FORWARD_MATRIX1 = 50964
    private const val TAG_FORWARD_MATRIX2 = 50965
    private const val TAG_PROFILE_LOOK_TABLE_DIMS = 50981
    private const val TAG_PROFILE_LOOK_TABLE_DATA = 50982
    private const val TAG_PROFILE_HUE_SAT_MAP_ENCODING = 51107
    private const val TAG_PROFILE_LOOK_TABLE_ENCODING = 51108
    private const val TAG_BASELINE_EXPOSURE_OFFSET = 51109
    private const val TAG_DEFAULT_BLACK_RENDER = 51110

    private val IDENTITY_3X3 = floatArrayOf(
        1f, 0f, 0f,
        0f, 1f, 0f,
        0f, 0f, 1f
    )

    fun resolveRenderPlan(
        file: File,
        metadata: RawMetadata,
        workingColorSpace: ColorSpace = ColorSpace.ProPhoto
    ): DcpRenderPlan? {
        val profile = readFrom(file) ?: return null
        return DcpProfileParser.resolveRenderPlan(profile, metadata, workingColorSpace)
            ?.also { plan ->
                PLog.d(
                    TAG,
                    "Resolved embedded DNG profile: ${plan.profileName} " +
                        "toneCurve=${plan.toneCurveLut != null} " +
                        "hueSat=${plan.hueSatMap?.isValid == true} " +
                        "look=${plan.lookTable?.isValid == true} " +
                        "baselineExposureOffset=${plan.baselineExposureOffset} " +
                        "defaultBlackRender=${plan.defaultBlackRender}"
                )
            }
    }

    fun readFrom(file: File): DcpProfile? {
        if (!file.exists() || file.length() < 16L) return null
        return runCatching {
            RandomAccessFile(file, "r").use { raf ->
                val byteOrder = readTiffByteOrder(raf) ?: return@use null
                val magic = raf.readUnsignedShort(byteOrder)
                if (magic != TIFF_CLASSIC_MAGIC) {
                    PLog.w(TAG, "Unsupported TIFF magic=$magic in ${file.name}")
                    return@use null
                }
                val ifd0Offset = raf.readUnsignedInt(byteOrder)
                val ifd0 = readIfdEntries(raf, ifd0Offset, byteOrder)
                decodeProfile(raf, ifd0, byteOrder)
            }
        }.onFailure {
            PLog.w(TAG, "Failed to read embedded DNG profile from ${file.absolutePath}", it)
        }.getOrNull()
    }

    fun hasGoogleToneMapProfile(file: File): Boolean {
        val profile = readFrom(file) ?: return false
        return isGoogleProfileName(profile.profileName) && profile.toneCurve?.isValid == true
    }

    fun isGoogleProfileName(profileName: String?): Boolean {
        return profileName?.contains("google", ignoreCase = true) == true
    }

    private fun decodeProfile(
        raf: RandomAccessFile,
        ifd: Map<Int, TiffEntry>,
        byteOrder: ByteOrder
    ): DcpProfile? {
        val profileName = readAscii(raf, ifd[TAG_PROFILE_NAME], byteOrder)
            ?.takeIf { it.isNotBlank() }
            ?: "Embedded"

        var illuminant1 = readIntegerValues(raf, ifd[TAG_CALIBRATION_ILLUMINANT1], byteOrder)
            ?.firstOrNull()
            ?.toInt()
            ?: 0
        val illuminant2 = readIntegerValues(raf, ifd[TAG_CALIBRATION_ILLUMINANT2], byteOrder)
            ?.firstOrNull()
            ?.toInt()
            ?: 0

        val analogBalance = readRealValues(raf, ifd[TAG_ANALOG_BALANCE], byteOrder)
            ?.takeIf { it.size >= 3 && it.take(3).all { value -> value.isFinite() && value > 0f } }
            ?.copyOf(3)
            ?: floatArrayOf(1f, 1f, 1f)
        var cameraCalibration1 = readMatrix(raf, ifd[TAG_CAMERA_CALIBRATION1], byteOrder)
            ?: IDENTITY_3X3
        val cameraCalibration2 = readMatrix(raf, ifd[TAG_CAMERA_CALIBRATION2], byteOrder)
            ?: IDENTITY_3X3

        var colorMatrix1 = readMatrix(raf, ifd[TAG_COLOR_MATRIX1], byteOrder)
        val colorMatrix2 = readMatrix(raf, ifd[TAG_COLOR_MATRIX2], byteOrder)

        if (colorMatrix1 == null && colorMatrix2 != null) {
            colorMatrix1 = colorMatrix2
            illuminant1 = illuminant2
            cameraCalibration1 = cameraCalibration2
        }

        val forwardMatrix1 = readMatrix(raf, ifd[TAG_FORWARD_MATRIX1], byteOrder)
        val forwardMatrix2 = readMatrix(raf, ifd[TAG_FORWARD_MATRIX2], byteOrder)

        val hueSatDims = readIntegerValues(raf, ifd[TAG_PROFILE_HUE_SAT_MAP_DIMS], byteOrder)
            ?.map { it.toInt() }
        val hueSatEncoding = readIntegerValues(raf, ifd[TAG_PROFILE_HUE_SAT_MAP_ENCODING], byteOrder)
            ?.firstOrNull()
            ?.toInt()
            ?: DcpHueSatMap.ENCODING_LINEAR
        val hueSatDeltas1 = readHueSatMap(
            raf = raf,
            dataEntry = ifd[TAG_PROFILE_HUE_SAT_MAP_DATA1],
            dims = hueSatDims,
            encoding = hueSatEncoding,
            byteOrder = byteOrder
        )
        val hueSatDeltas2 = readHueSatMap(
            raf = raf,
            dataEntry = ifd[TAG_PROFILE_HUE_SAT_MAP_DATA2],
            dims = hueSatDims,
            encoding = hueSatEncoding,
            byteOrder = byteOrder
        )

        val lookDims = readIntegerValues(raf, ifd[TAG_PROFILE_LOOK_TABLE_DIMS], byteOrder)
            ?.map { it.toInt() }
        val lookEncoding = readIntegerValues(raf, ifd[TAG_PROFILE_LOOK_TABLE_ENCODING], byteOrder)
            ?.firstOrNull()
            ?.toInt()
            ?: DcpHueSatMap.ENCODING_LINEAR
        val lookTable = readHueSatMap(
            raf = raf,
            dataEntry = ifd[TAG_PROFILE_LOOK_TABLE_DATA],
            dims = lookDims,
            encoding = lookEncoding,
            byteOrder = byteOrder
        )

        val toneCurve = readToneCurve(raf, ifd[TAG_PROFILE_TONE_CURVE], byteOrder)
        val baselineExposureOffset = readRealValues(raf, ifd[TAG_BASELINE_EXPOSURE_OFFSET], byteOrder)
            ?.firstOrNull()
            ?.takeIf { it.isFinite() }
            ?: 0f
        val defaultBlackRender = DcpDefaultBlackRender.fromTagValue(
            readIntegerValues(raf, ifd[TAG_DEFAULT_BLACK_RENDER], byteOrder)
                ?.firstOrNull()
                ?.toInt()
        )

        val hasProfileData = colorMatrix1 != null ||
            colorMatrix2 != null ||
            forwardMatrix1 != null ||
            forwardMatrix2 != null ||
            hueSatDeltas1 != null ||
            hueSatDeltas2 != null ||
            lookTable != null ||
            toneCurve != null ||
            abs(baselineExposureOffset) > 1e-6f ||
            defaultBlackRender != DcpDefaultBlackRender.Auto
        if (!hasProfileData) {
            return null
        }

        return DcpProfile(
            profileName = profileName,
            calibrationIlluminant1 = illuminant1,
            calibrationIlluminant2 = illuminant2,
            baselineExposureOffset = baselineExposureOffset,
            defaultBlackRender = defaultBlackRender,
            colorMatrix1 = colorMatrix1,
            colorMatrix2 = colorMatrix2,
            forwardMatrix1 = forwardMatrix1,
            forwardMatrix2 = forwardMatrix2,
            hueSatDeltas1 = hueSatDeltas1,
            hueSatDeltas2 = hueSatDeltas2,
            lookTable = lookTable,
            toneCurve = toneCurve,
            analogBalance = analogBalance,
            cameraCalibration1 = cameraCalibration1,
            cameraCalibration2 = cameraCalibration2
        )
    }

    private fun readToneCurve(
        raf: RandomAccessFile,
        entry: TiffEntry?,
        byteOrder: ByteOrder
    ): DcpToneCurve? {
        val values = readRealValues(raf, entry, byteOrder) ?: return null
        return DcpToneCurve(values).takeIf { it.isValid }
    }

    private fun readHueSatMap(
        raf: RandomAccessFile,
        dataEntry: TiffEntry?,
        dims: List<Int>?,
        encoding: Int,
        byteOrder: ByteOrder
    ): DcpHueSatMap? {
        if (dataEntry == null || dims == null || dims.size < 2) return null
        val hues = dims[0]
        val sats = dims[1]
        val vals = dims.getOrNull(2) ?: 1
        if (hues <= 0 || sats <= 0 || vals <= 0) return null

        val data = readRealValues(raf, dataEntry, byteOrder) ?: return null
        val fullCount = hues * sats * vals * 3
        val skipSat0Count = hues * (sats - 1) * vals * 3
        val skipSat0 = data.size == skipSat0Count
        if (data.size != fullCount && !skipSat0) return null

        val values = FloatArray(fullCount)
        for (valueIndex in 0 until vals) {
            for (hue in 0 until hues) {
                for (sat in 0 until sats) {
                    val dst = ((valueIndex * hues + hue) * sats + sat) * 3
                    values[dst] = 0f
                    values[dst + 1] = 1f
                    values[dst + 2] = 1f
                }
            }
        }

        var src = 0
        for (valueIndex in 0 until vals) {
            for (hue in 0 until hues) {
                val satStart = if (skipSat0) 1 else 0
                for (sat in satStart until sats) {
                    val dst = ((valueIndex * hues + hue) * sats + sat) * 3
                    values[dst] = data[src++]
                    values[dst + 1] = data[src++]
                    values[dst + 2] = data[src++]
                }
            }
        }

        return DcpHueSatMap(
            hueDivisions = hues,
            satDivisions = sats,
            valueDivisions = vals,
            values = values,
            encoding = encoding
        ).takeIf { it.isValid }
    }

    private fun readMatrix(
        raf: RandomAccessFile,
        entry: TiffEntry?,
        byteOrder: ByteOrder
    ): FloatArray? {
        val values = readRealValues(raf, entry, byteOrder) ?: return null
        return values.takeIf { it.size == 9 && it.all { value -> value.isFinite() } }?.copyOf()
    }

    private fun readTiffByteOrder(raf: RandomAccessFile): ByteOrder? {
        raf.seek(0)
        val marker0 = raf.readUnsignedByte()
        val marker1 = raf.readUnsignedByte()
        return when {
            marker0 == 'I'.code && marker1 == 'I'.code -> ByteOrder.LITTLE_ENDIAN
            marker0 == 'M'.code && marker1 == 'M'.code -> ByteOrder.BIG_ENDIAN
            else -> null
        }
    }

    private fun readIfdEntries(
        raf: RandomAccessFile,
        offset: Long,
        byteOrder: ByteOrder
    ): Map<Int, TiffEntry> {
        if (offset <= 0L || offset >= raf.length()) return emptyMap()
        raf.seek(offset)
        val entryCount = raf.readUnsignedShort(byteOrder)
        val entries = LinkedHashMap<Int, TiffEntry>(entryCount)
        repeat(entryCount) {
            val tag = raf.readUnsignedShort(byteOrder)
            val type = raf.readUnsignedShort(byteOrder)
            val count = raf.readUnsignedInt(byteOrder)
            val inlineOrOffset = ByteArray(4)
            raf.readFully(inlineOrOffset)
            entries[tag] = TiffEntry(tag, type, count, inlineOrOffset)
        }
        return entries
    }

    private fun readAscii(
        raf: RandomAccessFile,
        entry: TiffEntry?,
        byteOrder: ByteOrder
    ): String? {
        if (entry == null || entry.type != TIFF_TYPE_ASCII) return null
        val bytes = readEntryBytes(raf, entry, byteOrder)
        if (bytes.isEmpty()) return null
        return String(bytes, Charsets.UTF_8)
            .trimEnd('\u0000')
            .trim()
    }

    private fun readRealValues(
        raf: RandomAccessFile,
        entry: TiffEntry?,
        byteOrder: ByteOrder
    ): FloatArray? {
        if (entry == null) return null
        val count = entry.count.takeIf { it in 1L..Int.MAX_VALUE.toLong() }?.toInt() ?: return null
        val bytes = readEntryBytes(raf, entry, byteOrder)
        val expectedBytes = typeSize(entry.type)?.let { it * count } ?: return null
        if (bytes.size < expectedBytes) return null
        val buffer = ByteBuffer.wrap(bytes).order(byteOrder)
        return when (entry.type) {
            TIFF_TYPE_BYTE -> FloatArray(count) { (buffer.get().toInt() and 0xFF).toFloat() }
            TIFF_TYPE_SHORT -> FloatArray(count) { (buffer.short.toInt() and 0xFFFF).toFloat() }
            TIFF_TYPE_LONG -> FloatArray(count) { (buffer.int.toLong() and 0xFFFFFFFFL).toFloat() }
            TIFF_TYPE_SSHORT -> FloatArray(count) { buffer.short.toFloat() }
            TIFF_TYPE_SLONG -> FloatArray(count) { buffer.int.toFloat() }
            TIFF_TYPE_RATIONAL -> FloatArray(count) {
                val numerator = buffer.int.toLong() and 0xFFFFFFFFL
                val denominator = buffer.int.toLong() and 0xFFFFFFFFL
                if (denominator == 0L) 0f else numerator.toDouble().div(denominator.toDouble()).toFloat()
            }

            TIFF_TYPE_SRATIONAL -> FloatArray(count) {
                val numerator = buffer.int
                val denominator = buffer.int
                if (denominator == 0) 0f else numerator.toFloat() / denominator.toFloat()
            }

            TIFF_TYPE_FLOAT -> FloatArray(count) { buffer.float }
            TIFF_TYPE_DOUBLE -> FloatArray(count) { buffer.double.toFloat() }
            else -> null
        }
    }

    private fun readIntegerValues(
        raf: RandomAccessFile,
        entry: TiffEntry?,
        byteOrder: ByteOrder
    ): List<Long>? {
        if (entry == null) return null
        val count = entry.count.takeIf { it in 1L..4096L }?.toInt() ?: return null
        val bytes = readEntryBytes(raf, entry, byteOrder)
        val expectedBytes = typeSize(entry.type)?.let { it * count } ?: return null
        if (bytes.size < expectedBytes) return null
        val buffer = ByteBuffer.wrap(bytes).order(byteOrder)
        return when (entry.type) {
            TIFF_TYPE_BYTE, TIFF_TYPE_UNDEFINED -> List(count) { (buffer.get().toInt() and 0xFF).toLong() }
            TIFF_TYPE_SHORT -> List(count) { (buffer.short.toInt() and 0xFFFF).toLong() }
            TIFF_TYPE_LONG -> List(count) { buffer.int.toLong() and 0xFFFFFFFFL }
            TIFF_TYPE_SSHORT -> List(count) { buffer.short.toLong() }
            TIFF_TYPE_SLONG -> List(count) { buffer.int.toLong() }
            else -> null
        }
    }

    private fun readEntryBytes(
        raf: RandomAccessFile,
        entry: TiffEntry,
        byteOrder: ByteOrder
    ): ByteArray {
        val valueSize = typeSize(entry.type) ?: return ByteArray(0)
        val byteCountLong = entry.count * valueSize.toLong()
        val byteCount = byteCountLong.takeIf { it in 1L..Int.MAX_VALUE.toLong() }?.toInt()
            ?: return ByteArray(0)
        if (byteCount <= 4) {
            return entry.inlineOrOffset.copyOfRange(0, byteCount)
        }
        val offset = ByteBuffer.wrap(entry.inlineOrOffset).order(byteOrder).int.toLong() and 0xFFFFFFFFL
        if (offset <= 0L || offset + byteCount > raf.length()) {
            return ByteArray(0)
        }
        val bytes = ByteArray(byteCount)
        raf.seek(offset)
        raf.readFully(bytes)
        return bytes
    }

    private fun typeSize(type: Int): Int? {
        return when (type) {
            TIFF_TYPE_BYTE,
            TIFF_TYPE_ASCII,
            TIFF_TYPE_UNDEFINED -> 1

            TIFF_TYPE_SHORT,
            TIFF_TYPE_SSHORT -> 2

            TIFF_TYPE_LONG,
            TIFF_TYPE_SLONG,
            TIFF_TYPE_FLOAT -> 4

            TIFF_TYPE_RATIONAL,
            TIFF_TYPE_SRATIONAL,
            TIFF_TYPE_DOUBLE -> 8

            else -> null
        }
    }

    private fun RandomAccessFile.readUnsignedShort(byteOrder: ByteOrder): Int {
        val bytes = ByteArray(2)
        readFully(bytes)
        return ByteBuffer.wrap(bytes).order(byteOrder).short.toInt() and 0xFFFF
    }

    private fun RandomAccessFile.readUnsignedInt(byteOrder: ByteOrder): Long {
        val bytes = ByteArray(4)
        readFully(bytes)
        return ByteBuffer.wrap(bytes).order(byteOrder).int.toLong() and 0xFFFFFFFFL
    }

    private data class TiffEntry(
        val tag: Int,
        val type: Int,
        val count: Long,
        val inlineOrOffset: ByteArray
    )
}
