package com.hinnka.mycamera.utils

import com.hinnka.mycamera.raw.RawCfaCorrection
import java.io.File
import java.io.RandomAccessFile
import java.nio.ByteBuffer
import java.nio.ByteOrder

object DngCfaPatternPatcher {
    private const val TAG = "DngCfaPatternPatcher"
    private const val TIFF_TAG_SUB_IFDS = 330
    private const val TIFF_TAG_CFA_REPEAT_PATTERN_DIM = 33421
    private const val TIFF_TAG_CFA_PATTERN = 33422
    private const val TYPE_BYTE = 1
    private const val TYPE_SHORT = 3
    private const val TYPE_LONG = 4
    private const val MAX_IFD_VISITS = 64

    private data class IfdScanResult(
        val cfaDimEntryOffset: Long,
        val cfaPatternEntryOffset: Long,
        val subIfdOffsets: List<Long>,
        val nextIfdOffset: Long
    )

    fun patchFromMode(file: File, mode: String?): Boolean {
        val cfaPattern = RawCfaCorrection.patternFromMode(mode) ?: return false
        return patchCfaPattern(file, cfaPattern)
    }

    private fun patchCfaPattern(file: File, cfaPattern: Int): Boolean {
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
                    else -> return false
                }
                val magic = readUnsignedShort(header, 2, byteOrder)
                if (magic != 42) {
                    return false
                }

                val firstIfdOffset = readUnsignedInt(header, 4, byteOrder)
                if (firstIfdOffset <= 0L || firstIfdOffset + 2L > raf.length()) {
                    return false
                }

                val dim = RawCfaCorrection.repeatPatternDim(cfaPattern)
                val patternBytes = RawCfaCorrection.cfaPatternBytes(cfaPattern)
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
                    if (scan.cfaDimEntryOffset >= 0L && scan.cfaPatternEntryOffset >= 0L) {
                        writeEntry(
                            raf = raf,
                            entryOffset = scan.cfaDimEntryOffset,
                            type = TYPE_SHORT,
                            count = 2,
                            value = shortBytes(dim[0], byteOrder) + shortBytes(dim[1], byteOrder),
                            byteOrder = byteOrder
                        )
                        writeEntry(
                            raf = raf,
                            entryOffset = scan.cfaPatternEntryOffset,
                            type = TYPE_BYTE,
                            count = patternBytes.size.toLong(),
                            value = patternBytes,
                            byteOrder = byteOrder
                        )
                        patchedCount++
                        PLog.d(
                            TAG,
                            "Patched DNG CFA pattern cfa=$cfaPattern dim=${dim.joinToString("x")} " +
                                "ifd=$ifdOffset bytes=${patternBytes.joinToString()} in ${file.name}"
                        )
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
                    PLog.w(TAG, "DNG CFA tags missing in ${file.name}; scannedIfds=${visitedIfds.size}")
                    return false
                }
                true
            }
        }.onFailure {
            PLog.w(TAG, "Failed to patch DNG CFA pattern: ${file.absolutePath}", it)
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

        var cfaDimEntryOffset = -1L
        var cfaPatternEntryOffset = -1L
        val subIfdOffsets = mutableListOf<Long>()

        for (entryIndex in 0 until entryCount) {
            val entryOffset = entriesStart + entryIndex * 12L
            val entry = ByteArray(12)
            raf.seek(entryOffset)
            raf.readFully(entry)
            when (readUnsignedShort(entry, 0, byteOrder)) {
                TIFF_TAG_CFA_REPEAT_PATTERN_DIM -> cfaDimEntryOffset = entryOffset
                TIFF_TAG_CFA_PATTERN -> cfaPatternEntryOffset = entryOffset
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
            cfaDimEntryOffset = cfaDimEntryOffset,
            cfaPatternEntryOffset = cfaPatternEntryOffset,
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
        val valueOffset = if (valueBytes <= 4L) {
            entryOffset + 8L
        } else {
            readUnsignedInt(entry, 8, byteOrder)
        }
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

    private fun writeEntry(
        raf: RandomAccessFile,
        entryOffset: Long,
        type: Int,
        count: Long,
        value: ByteArray,
        byteOrder: ByteOrder
    ) {
        raf.seek(entryOffset + 2L)
        raf.write(shortBytes(type, byteOrder))
        raf.write(intBytes(count, byteOrder))
        val valueOrOffset = if (value.size <= 4) {
            ByteArray(4).also { value.copyInto(it, endIndex = value.size) }
        } else {
            val valueOffset = appendValue(raf, value)
            intBytes(valueOffset, byteOrder)
        }
        raf.seek(entryOffset + 8L)
        raf.write(valueOrOffset)
    }

    private fun appendValue(raf: RandomAccessFile, value: ByteArray): Long {
        var offset = raf.length()
        if ((offset and 1L) != 0L) {
            raf.seek(offset)
            raf.write(0)
            offset += 1L
        }
        raf.seek(offset)
        raf.write(value)
        return offset
    }

    private fun readUnsignedShort(bytes: ByteArray, offset: Int, byteOrder: ByteOrder): Int {
        return ByteBuffer.wrap(bytes, offset, 2).order(byteOrder).short.toInt() and 0xFFFF
    }

    private fun readUnsignedInt(bytes: ByteArray, offset: Int, byteOrder: ByteOrder): Long {
        return ByteBuffer.wrap(bytes, offset, 4).order(byteOrder).int.toLong() and 0xFFFFFFFFL
    }

    private fun shortBytes(value: Int, byteOrder: ByteOrder): ByteArray =
        ByteBuffer.allocate(2).order(byteOrder).putShort((value and 0xFFFF).toShort()).array()

    private fun intBytes(value: Long, byteOrder: ByteOrder): ByteArray =
        ByteBuffer.allocate(4).order(byteOrder).putInt((value and 0xFFFFFFFFL).toInt()).array()
}
