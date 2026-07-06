package com.hinnka.mycamera.livephoto

import java.io.File
import java.io.RandomAccessFile
import java.nio.charset.StandardCharsets

internal object Mp4DurationReader {
    private const val BOX_HEADER_SIZE = 8L
    private const val EXTENDED_BOX_HEADER_SIZE = 16L
    private const val MICROSECONDS_PER_SECOND = 1_000_000L

    fun readDurationUs(file: File): Long? {
        if (!file.exists() || file.length() < BOX_HEADER_SIZE) return null
        return try {
            RandomAccessFile(file, "r").use { input ->
                val moov = findBox(input, 0L, input.length(), "moov") ?: return null
                val mvhd = findBox(input, moov.payloadOffset, moov.endOffset, "mvhd") ?: return null
                readMovieHeaderDurationUs(input, mvhd.payloadOffset, mvhd.endOffset)
            }
        } catch (e: Exception) {
            null
        }
    }

    private fun findBox(
        input: RandomAccessFile,
        startOffset: Long,
        endOffset: Long,
        targetType: String
    ): Mp4Box? {
        var offset = startOffset
        while (offset + BOX_HEADER_SIZE <= endOffset) {
            input.seek(offset)
            val size32 = readUInt32(input)
            val type = readType(input)

            var headerSize = BOX_HEADER_SIZE
            val size = when (size32) {
                0L -> endOffset - offset
                1L -> {
                    if (offset + EXTENDED_BOX_HEADER_SIZE > endOffset) return null
                    headerSize = EXTENDED_BOX_HEADER_SIZE
                    readUInt64(input)
                }
                else -> size32
            }

            if (size < headerSize) return null
            val nextOffset = offset + size
            if (nextOffset > endOffset) return null

            if (type == targetType) {
                return Mp4Box(
                    payloadOffset = offset + headerSize,
                    endOffset = nextOffset
                )
            }

            offset = nextOffset
        }
        return null
    }

    private fun readMovieHeaderDurationUs(
        input: RandomAccessFile,
        payloadOffset: Long,
        endOffset: Long
    ): Long? {
        if (payloadOffset + 4 > endOffset) return null
        input.seek(payloadOffset)
        val version = input.readUnsignedByte()
        input.skipBytes(3)

        val durationInfoOffset = if (version == 1) {
            payloadOffset + 4 + 8 + 8
        } else {
            payloadOffset + 4 + 4 + 4
        }
        val requiredDurationBytes = if (version == 1) 12 else 8
        if (durationInfoOffset + requiredDurationBytes > endOffset) return null

        input.seek(durationInfoOffset)
        val timescale = readUInt32(input)
        val duration = if (version == 1) readUInt64(input) else readUInt32(input)
        if (timescale <= 0L || duration <= 0L) return null

        return durationToMicroseconds(duration, timescale)
    }

    private fun durationToMicroseconds(duration: Long, timescale: Long): Long {
        val wholeSeconds = duration / timescale
        val remainingUnits = duration % timescale
        return wholeSeconds * MICROSECONDS_PER_SECOND +
            remainingUnits * MICROSECONDS_PER_SECOND / timescale
    }

    private fun readUInt32(input: RandomAccessFile): Long {
        return (input.readUnsignedByte().toLong() shl 24) or
            (input.readUnsignedByte().toLong() shl 16) or
            (input.readUnsignedByte().toLong() shl 8) or
            input.readUnsignedByte().toLong()
    }

    private fun readUInt64(input: RandomAccessFile): Long {
        var value = 0L
        repeat(8) {
            value = (value shl 8) or input.readUnsignedByte().toLong()
        }
        return value
    }

    private fun readType(input: RandomAccessFile): String {
        val bytes = ByteArray(4)
        input.readFully(bytes)
        return String(bytes, StandardCharsets.US_ASCII)
    }

    private data class Mp4Box(
        val payloadOffset: Long,
        val endOffset: Long
    )
}
