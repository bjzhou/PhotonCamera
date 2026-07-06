package com.hinnka.mycamera.raw

import android.util.Half
import com.hinnka.mycamera.utils.PLog
import java.io.File
import java.io.RandomAccessFile
import java.nio.ByteBuffer
import java.nio.ByteOrder

data class DngProfileGainTableMap(
    val mapPointsV: Int,
    val mapPointsH: Int,
    val mapSpacingV: Double,
    val mapSpacingH: Double,
    val mapOriginV: Double,
    val mapOriginH: Double,
    val mapPointsN: Int,
    val mapInputWeights: FloatArray,
    val gamma: Float,
    val gains: FloatArray,
    val sourceTag: Int = TAG_PROFILE_GAIN_TABLE_MAP2,
) {
    val isValid: Boolean
        get() = mapPointsV > 0 &&
            mapPointsH > 0 &&
            mapPointsN > 0 &&
            mapSpacingV > 0.0 &&
            mapSpacingH > 0.0 &&
            mapInputWeights.size == MAP_INPUT_WEIGHT_COUNT &&
            mapInputWeights.all { it.isFinite() } &&
            gamma in MIN_GAMMA..MAX_GAMMA &&
            gains.size == mapPointsV * mapPointsH * mapPointsN &&
            gains.all { it.isFinite() && it in MIN_GAIN_VALUE..MAX_GAIN_VALUE }

    fun encodeProfileGainTableMap2(byteOrder: ByteOrder): ByteArray {
        require(isValid) { "Invalid ProfileGainTableMap2" }
        val gainMin = gains.minOrNull()
            ?.coerceIn(MIN_GAIN_VALUE, MAX_GAIN_VALUE)
            ?: 1f
        val gainMax = gains.maxOrNull()
            ?.coerceIn(gainMin, MAX_GAIN_VALUE)
            ?: gainMin
        val buffer = ByteBuffer
            .allocate(PROFILE_GAIN_TABLE_MAP2_HEADER_BYTES + gains.size * FLOAT_BYTES)
            .order(byteOrder)
        buffer.putInt(mapPointsV)
        buffer.putInt(mapPointsH)
        buffer.putDouble(mapSpacingV)
        buffer.putDouble(mapSpacingH)
        buffer.putDouble(mapOriginV)
        buffer.putDouble(mapOriginH)
        buffer.putInt(mapPointsN)
        repeat(MAP_INPUT_WEIGHT_COUNT) { index ->
            buffer.putFloat(mapInputWeights[index])
        }
        buffer.putInt(DATA_TYPE_FLOAT32)
        buffer.putFloat(gamma)
        buffer.putFloat(gainMin)
        buffer.putFloat(gainMax)
        gains.forEach { buffer.putFloat(it) }
        return buffer.array()
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false
        other as DngProfileGainTableMap
        return mapPointsV == other.mapPointsV &&
            mapPointsH == other.mapPointsH &&
            mapSpacingV == other.mapSpacingV &&
            mapSpacingH == other.mapSpacingH &&
            mapOriginV == other.mapOriginV &&
            mapOriginH == other.mapOriginH &&
            mapPointsN == other.mapPointsN &&
            gamma == other.gamma &&
            sourceTag == other.sourceTag &&
            mapInputWeights.contentEquals(other.mapInputWeights) &&
            gains.contentEquals(other.gains)
    }

    override fun hashCode(): Int {
        var result = mapPointsV
        result = 31 * result + mapPointsH
        result = 31 * result + mapSpacingV.hashCode()
        result = 31 * result + mapSpacingH.hashCode()
        result = 31 * result + mapOriginV.hashCode()
        result = 31 * result + mapOriginH.hashCode()
        result = 31 * result + mapPointsN
        result = 31 * result + mapInputWeights.contentHashCode()
        result = 31 * result + gamma.hashCode()
        result = 31 * result + gains.contentHashCode()
        result = 31 * result + sourceTag
        return result
    }

    companion object {
        private const val TAG = "DngProfileGainTableMap"

        const val TAG_PROFILE_GAIN_TABLE_MAP = 52525
        const val TAG_PROFILE_GAIN_TABLE_MAP2 = 52544

        private const val TIFF_TAG_SUB_IFDS = 330
        private const val TIFF_TYPE_UNDEFINED = 7
        private const val TIFF_TYPE_LONG = 4
        private const val TIFF_CLASSIC_MAGIC = 42
        private const val MAP_INPUT_WEIGHT_COUNT = 5
        private const val PROFILE_GAIN_TABLE_MAP_HEADER_BYTES = 64
        private const val PROFILE_GAIN_TABLE_MAP2_HEADER_BYTES = 80
        private const val FLOAT_BYTES = 4

        private const val DATA_TYPE_UINT8 = 0
        private const val DATA_TYPE_UINT16 = 1
        private const val DATA_TYPE_FLOAT16 = 2
        private const val DATA_TYPE_FLOAT32 = 3
        private const val MIN_GAMMA = 0.125f
        private const val MAX_GAMMA = 8.0f
        private const val MIN_GAIN_VALUE = 0.000244140625f
        private const val MAX_GAIN_VALUE = 4096.0f
        fun readFrom(file: File): DngProfileGainTableMap? {
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
                    val map2 = decodeMap2FromIfd(raf, ifd0, byteOrder)
                    if (map2?.isValid == true) {
                        return@use map2
                    }
                    decodeMap1FromIfd(raf, ifd0, byteOrder)?.takeIf { it.isValid }
                        ?: readRawIfds(raf, ifd0, byteOrder)
                            .firstNotNullOfOrNull { rawIfd ->
                                decodeMap2FromIfd(raf, rawIfd, byteOrder)?.takeIf { it.isValid }
                                    ?: decodeMap1FromIfd(raf, rawIfd, byteOrder)?.takeIf { it.isValid }
                            }
                }
            }.onFailure {
                PLog.w(TAG, "Failed to read ProfileGainTableMap from ${file.absolutePath}", it)
            }.getOrNull()
        }

        private fun decodeMap2FromIfd(
            raf: RandomAccessFile,
            ifd: Map<Int, TiffEntry>,
            byteOrder: ByteOrder,
        ): DngProfileGainTableMap? {
            return ifd[TAG_PROFILE_GAIN_TABLE_MAP2]?.takeIf {
                it.type == TIFF_TYPE_UNDEFINED
            }?.let { entry ->
                decodeProfileGainTableMap2(readEntryBytes(raf, entry, byteOrder), byteOrder)
            }
        }

        private fun decodeMap1FromIfd(
            raf: RandomAccessFile,
            ifd: Map<Int, TiffEntry>,
            byteOrder: ByteOrder,
        ): DngProfileGainTableMap? {
            return ifd[TAG_PROFILE_GAIN_TABLE_MAP]?.takeIf {
                it.type == TIFF_TYPE_UNDEFINED
            }?.let { entry ->
                decodeProfileGainTableMap(readEntryBytes(raf, entry, byteOrder), byteOrder)
            }
        }

        private fun decodeProfileGainTableMap(
            bytes: ByteArray,
            byteOrder: ByteOrder,
        ): DngProfileGainTableMap? {
            if (bytes.size < PROFILE_GAIN_TABLE_MAP_HEADER_BYTES) return null
            val buffer = ByteBuffer.wrap(bytes).order(byteOrder)
            val mapPointsV = buffer.int
            val mapPointsH = buffer.int
            val mapSpacingV = buffer.double
            val mapSpacingH = buffer.double
            val mapOriginV = buffer.double
            val mapOriginH = buffer.double
            val mapPointsN = buffer.int
            val inputWeights = FloatArray(MAP_INPUT_WEIGHT_COUNT) { buffer.float }
            val count = checkedGainCount(mapPointsV, mapPointsH, mapPointsN) ?: return null
            val expectedBytes = PROFILE_GAIN_TABLE_MAP_HEADER_BYTES + count * FLOAT_BYTES
            if (bytes.size < expectedBytes) return null
            val gains = FloatArray(count) { buffer.float }
            return DngProfileGainTableMap(
                mapPointsV = mapPointsV,
                mapPointsH = mapPointsH,
                mapSpacingV = mapSpacingV,
                mapSpacingH = mapSpacingH,
                mapOriginV = mapOriginV,
                mapOriginH = mapOriginH,
                mapPointsN = mapPointsN,
                mapInputWeights = inputWeights,
                gamma = 1f,
                gains = gains,
                sourceTag = TAG_PROFILE_GAIN_TABLE_MAP
            )
        }

        private fun decodeProfileGainTableMap2(
            bytes: ByteArray,
            byteOrder: ByteOrder,
        ): DngProfileGainTableMap? {
            if (bytes.size < PROFILE_GAIN_TABLE_MAP2_HEADER_BYTES) return null
            val buffer = ByteBuffer.wrap(bytes).order(byteOrder)
            val mapPointsV = buffer.int
            val mapPointsH = buffer.int
            val mapSpacingV = buffer.double
            val mapSpacingH = buffer.double
            val mapOriginV = buffer.double
            val mapOriginH = buffer.double
            val mapPointsN = buffer.int
            val inputWeights = FloatArray(MAP_INPUT_WEIGHT_COUNT) { buffer.float }
            val dataType = buffer.int
            val gamma = buffer.float
            val gainMin = buffer.float
            val gainMax = buffer.float
            if (!gamma.isFinite() || gamma !in MIN_GAMMA..MAX_GAMMA) return null
            if (!gainMin.isFinite() || gainMin < MIN_GAIN_VALUE) return null
            if (!gainMax.isFinite() || gainMax > MAX_GAIN_VALUE || gainMax < gainMin) return null
            val count = checkedGainCount(mapPointsV, mapPointsH, mapPointsN) ?: return null
            val bytesPerGain = when (dataType) {
                DATA_TYPE_UINT8 -> 1
                DATA_TYPE_UINT16, DATA_TYPE_FLOAT16 -> 2
                DATA_TYPE_FLOAT32 -> 4
                else -> return null
            }
            val expectedBytes = PROFILE_GAIN_TABLE_MAP2_HEADER_BYTES + count * bytesPerGain
            if (bytes.size < expectedBytes) return null
            val gains = FloatArray(count) {
                when (dataType) {
                    DATA_TYPE_UINT8 -> {
                        val value = buffer.get().toInt() and 0xFF
                        gainMin + value.toFloat() / 255f * (gainMax - gainMin)
                    }

                    DATA_TYPE_UINT16 -> {
                        val value = buffer.short.toInt() and 0xFFFF
                        gainMin + value.toFloat() / 65535f * (gainMax - gainMin)
                    }

                    DATA_TYPE_FLOAT16 -> Half.toFloat(buffer.short)
                    else -> buffer.float
                }.takeIf { value ->
                    value.isFinite() && value in MIN_GAIN_VALUE..MAX_GAIN_VALUE
                } ?: 1f
            }
            return DngProfileGainTableMap(
                mapPointsV = mapPointsV,
                mapPointsH = mapPointsH,
                mapSpacingV = mapSpacingV,
                mapSpacingH = mapSpacingH,
                mapOriginV = mapOriginV,
                mapOriginH = mapOriginH,
                mapPointsN = mapPointsN,
                mapInputWeights = inputWeights,
                gamma = gamma,
                gains = gains,
                sourceTag = TAG_PROFILE_GAIN_TABLE_MAP2
            )
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
            byteOrder: ByteOrder,
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

        private fun readEntryBytes(
            raf: RandomAccessFile,
            entry: TiffEntry,
            byteOrder: ByteOrder,
        ): ByteArray {
            val count = entry.count.coerceAtMost(Int.MAX_VALUE.toLong()).toInt()
            if (count <= 4) {
                return entry.inlineOrOffset.copyOfRange(0, count)
            }
            val offset = ByteBuffer.wrap(entry.inlineOrOffset).order(byteOrder).int.toLong() and 0xFFFFFFFFL
            if (offset <= 0L || offset + count > raf.length()) {
                return ByteArray(0)
            }
            val bytes = ByteArray(count)
            raf.seek(offset)
            raf.readFully(bytes)
            return bytes
        }

        private fun readRawIfds(
            raf: RandomAccessFile,
            ifd0: Map<Int, TiffEntry>,
            byteOrder: ByteOrder,
        ): List<Map<Int, TiffEntry>> {
            val subIfdEntry = ifd0[TIFF_TAG_SUB_IFDS]?.takeIf { it.type == TIFF_TYPE_LONG }
                ?: return emptyList()
            return readLongValues(raf, subIfdEntry, byteOrder).mapNotNull { offset ->
                readIfdEntries(raf, offset, byteOrder).takeIf { it.isNotEmpty() }
            }
        }

        private fun readLongValues(
            raf: RandomAccessFile,
            entry: TiffEntry,
            byteOrder: ByteOrder,
        ): List<Long> {
            val count = entry.count.coerceAtMost(1024L).toInt()
            if (count <= 0) return emptyList()
            if (count == 1) {
                return listOf(ByteBuffer.wrap(entry.inlineOrOffset).order(byteOrder).int.toLong() and 0xFFFFFFFFL)
            }
            val valueOffset = ByteBuffer.wrap(entry.inlineOrOffset).order(byteOrder).int.toLong() and 0xFFFFFFFFL
            if (valueOffset <= 0L || valueOffset + count * 4L > raf.length()) {
                return emptyList()
            }
            raf.seek(valueOffset)
            return List(count) { raf.readUnsignedInt(byteOrder) }
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

        private fun checkedGainCount(mapPointsV: Int, mapPointsH: Int, mapPointsN: Int): Int? {
            if (mapPointsV <= 0 || mapPointsH <= 0 || mapPointsN <= 0) return null
            val total = mapPointsV.toLong() * mapPointsH.toLong() * mapPointsN.toLong()
            return total.takeIf { it in 1L..Int.MAX_VALUE.toLong() }?.toInt()
        }

    }

    private data class TiffEntry(
        val tag: Int,
        val type: Int,
        val count: Long,
        val inlineOrOffset: ByteArray,
    )

}
