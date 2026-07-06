package com.hinnka.mycamera.utils

import java.io.File
import java.io.RandomAccessFile
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.roundToInt

object DngBlackLevelPatcher {
    private const val TAG = "DngBlackLevelPatcher"
    private const val TIFF_TAG_SUB_IFDS = 330
    private const val TIFF_TAG_BLACK_LEVEL = 50714
    private const val TYPE_SHORT = 3
    private const val TYPE_LONG = 4
    private const val MAX_IFD_VISITS = 64

    private data class IfdScanResult(
        val blackLevelEntryOffset: Long,
        val subIfdOffsets: List<Long>,
        val nextIfdOffset: Long
    )

    fun patchFromMode(file: File, mode: String?, customBlackLevel: Float?): Boolean {
        val level = resolveBlackLevel(mode, customBlackLevel) ?: return false
        return patchUniformBlackLevel(file, level)
    }

    private fun resolveBlackLevel(mode: String?, customBlackLevel: Float?): Float? {
        return when (mode) {
            "0" -> 0f
            "16" -> 16f
            "64" -> 64f
            "256" -> 256f
            "512" -> 512f
            "Custom" -> customBlackLevel ?: 0f
            else -> null
        }
    }

    private fun patchUniformBlackLevel(file: File, level: Float): Boolean {
        if (!file.exists() || file.length() < 16L) {
            return false
        }

        return runCatching {
            RandomAccessFile(file, "rw").use { raf ->
                val header = ByteArray(8)
                raf.seek(0)
                raf.readFully(header)

                val byteOrder = when {
                    header[0] == 'I'.code.toByte() && header[1] == 'I'.code.toByte() -> ByteOrder.LITTLE_ENDIAN
                    header[0] == 'M'.code.toByte() && header[1] == 'M'.code.toByte() -> ByteOrder.BIG_ENDIAN
                    else -> return@use false
                }
                val magic = readUnsignedShort(header, 2, byteOrder)
                if (magic != 42) {
                    return@use false
                }

                val firstIfdOffset = readUnsignedInt(header, 4, byteOrder)
                if (firstIfdOffset <= 0L || firstIfdOffset + 2L > raf.length()) {
                    return@use false
                }

                val pendingIfds = mutableListOf(firstIfdOffset)
                val visitedIfds = mutableSetOf<Long>()
                var patchedCount = 0

                while (pendingIfds.isNotEmpty() && visitedIfds.size < MAX_IFD_VISITS) {
                    val ifdOffset = pendingIfds.removeAt(0)
                    if (ifdOffset <= 0L || ifdOffset in visitedIfds) {
                        continue
                    }
                    visitedIfds += ifdOffset

                    val scan = scanIfd(raf, ifdOffset, byteOrder) ?: continue
                    if (scan.blackLevelEntryOffset >= 0L) {
                        val entry = ByteArray(12)
                        raf.seek(scan.blackLevelEntryOffset)
                        raf.readFully(entry)
                        val type = readUnsignedShort(entry, 2, byteOrder)
                        val count = readUnsignedInt(entry, 4, byteOrder)
                        val valueBytes = valueByteCount(type, count) ?: continue
                        val valueOffset = valueOffsetForEntry(
                            entry = entry,
                            entryOffset = scan.blackLevelEntryOffset,
                            valueBytes = valueBytes,
                            byteOrder = byteOrder
                        )
                        if (valueOffset >= 0L && valueOffset + valueBytes <= raf.length()) {
                            writeBlackLevelValues(raf, valueOffset, type, count, byteOrder, level)
                            patchedCount++
                            PLog.d(TAG, "Patched DNG BlackLevel to $level ifd=$ifdOffset in ${file.name}")
                        }
                    }

                    if (scan.nextIfdOffset > 0L) {
                        pendingIfds += scan.nextIfdOffset
                    }
                    scan.subIfdOffsets.forEach { subIfdOffset ->
                        if (subIfdOffset > 0L && subIfdOffset !in visitedIfds) {
                            pendingIfds += subIfdOffset
                        }
                    }
                }

                if (patchedCount == 0) {
                    PLog.w(TAG, "DNG BlackLevel tag missing in ${file.name}; scannedIfds=${visitedIfds.size}")
                    return@use false
                }
                true
            }
        }.onFailure {
            PLog.w(TAG, "Failed to patch DNG BlackLevel: ${file.absolutePath}", it)
        }.getOrDefault(false)
    }

    private fun scanIfd(raf: RandomAccessFile, ifdOffset: Long, byteOrder: ByteOrder): IfdScanResult? {
        if (ifdOffset <= 0L || ifdOffset + 2L > raf.length()) {
            return null
        }

        raf.seek(ifdOffset)
        val entryCountBytes = ByteArray(2)
        raf.readFully(entryCountBytes)
        val entryCount = readUnsignedShort(entryCountBytes, 0, byteOrder)
        val entriesStart = ifdOffset + 2L
        val nextIfdPointerOffset = entriesStart + entryCount * 12L
        if (nextIfdPointerOffset + 4L > raf.length()) {
            return null
        }

        var blackLevelEntryOffset = -1L
        val subIfdOffsets = mutableListOf<Long>()

        for (entryIndex in 0 until entryCount) {
            val entryOffset = entriesStart + entryIndex * 12L
            val entry = ByteArray(12)
            raf.seek(entryOffset)
            raf.readFully(entry)
            when (readUnsignedShort(entry, 0, byteOrder)) {
                TIFF_TAG_BLACK_LEVEL -> blackLevelEntryOffset = entryOffset
                TIFF_TAG_SUB_IFDS -> {
                    val type = readUnsignedShort(entry, 2, byteOrder)
                    val count = readUnsignedInt(entry, 4, byteOrder)
                    subIfdOffsets += readUnsignedValues(raf, entry, entryOffset, type, count, byteOrder)
                }
            }
        }

        raf.seek(nextIfdPointerOffset)
        val nextIfdBytes = ByteArray(4)
        raf.readFully(nextIfdBytes)
        return IfdScanResult(
            blackLevelEntryOffset = blackLevelEntryOffset,
            subIfdOffsets = subIfdOffsets,
            nextIfdOffset = readUnsignedInt(nextIfdBytes, 0, byteOrder)
        )
    }

    private fun readUnsignedValues(
        raf: RandomAccessFile,
        entry: ByteArray,
        entryOffset: Long,
        type: Int,
        count: Long,
        byteOrder: ByteOrder
    ): List<Long> {
        if (count <= 0L || count > 64L) {
            return emptyList()
        }
        val typeSize = when (type) {
            TYPE_SHORT -> 2L
            TYPE_LONG -> 4L
            else -> return emptyList()
        }
        val valueBytes = typeSize * count
        val valueOffset = valueOffsetForEntry(entry, entryOffset, valueBytes, byteOrder)
        if (valueOffset < 0L || valueOffset + valueBytes > raf.length()) {
            return emptyList()
        }

        return buildList {
            raf.seek(valueOffset)
            repeat(count.toInt()) {
                when (type) {
                    TYPE_SHORT -> {
                        val bytes = ByteArray(2)
                        raf.readFully(bytes)
                        add(readUnsignedShort(bytes, 0, byteOrder).toLong())
                    }
                    TYPE_LONG -> {
                        val bytes = ByteArray(4)
                        raf.readFully(bytes)
                        add(readUnsignedInt(bytes, 0, byteOrder))
                    }
                }
            }
        }
    }

    private fun valueOffsetForEntry(
        entry: ByteArray,
        entryOffset: Long,
        valueBytes: Long,
        byteOrder: ByteOrder
    ): Long {
        return if (valueBytes <= 4L) {
            entryOffset + 8L
        } else {
            readUnsignedInt(entry, 8, byteOrder)
        }
    }

    private fun writeBlackLevelValues(
        raf: RandomAccessFile,
        valueOffset: Long,
        type: Int,
        count: Long,
        byteOrder: ByteOrder,
        level: Float
    ) {
        raf.seek(valueOffset)
        val rounded = level.roundToInt().coerceAtLeast(0)
        repeat(count.coerceAtMost(4096L).toInt()) {
            when (type) {
                3 -> raf.write(shortBytes(rounded.coerceAtMost(0xFFFF), byteOrder))
                4 -> raf.write(intBytes(rounded, byteOrder))
                5 -> {
                    raf.write(intBytes(rounded, byteOrder))
                    raf.write(intBytes(1, byteOrder))
                }
                9 -> raf.write(intBytes(rounded, byteOrder))
                10 -> {
                    raf.write(intBytes(rounded, byteOrder))
                    raf.write(intBytes(1, byteOrder))
                }
                11 -> raf.write(floatBytes(level, byteOrder))
                12 -> raf.write(doubleBytes(level.toDouble(), byteOrder))
                else -> return
            }
        }
    }

    private fun valueByteCount(type: Int, count: Long): Long? {
        val typeSize = when (type) {
            1, 2, 6, 7 -> 1L
            3, 8 -> 2L
            4, 9, 11 -> 4L
            5, 10, 12 -> 8L
            else -> return null
        }
        return typeSize * count
    }

    private fun readUnsignedShort(bytes: ByteArray, offset: Int, byteOrder: ByteOrder): Int {
        return ByteBuffer.wrap(bytes, offset, 2).order(byteOrder).short.toInt() and 0xFFFF
    }

    private fun readUnsignedInt(bytes: ByteArray, offset: Int, byteOrder: ByteOrder): Long {
        return ByteBuffer.wrap(bytes, offset, 4).order(byteOrder).int.toLong() and 0xFFFFFFFFL
    }

    private fun shortBytes(value: Int, byteOrder: ByteOrder): ByteArray =
        ByteBuffer.allocate(2).order(byteOrder).putShort(value.toShort()).array()

    private fun intBytes(value: Int, byteOrder: ByteOrder): ByteArray =
        ByteBuffer.allocate(4).order(byteOrder).putInt(value).array()

    private fun floatBytes(value: Float, byteOrder: ByteOrder): ByteArray =
        ByteBuffer.allocate(4).order(byteOrder).putFloat(value).array()

    private fun doubleBytes(value: Double, byteOrder: ByteOrder): ByteArray =
        ByteBuffer.allocate(8).order(byteOrder).putDouble(value).array()
}
