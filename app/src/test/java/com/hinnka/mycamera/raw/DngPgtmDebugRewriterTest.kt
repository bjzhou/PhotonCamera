package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.ByteArrayOutputStream
import java.io.File
import java.nio.ByteBuffer
import java.nio.ByteOrder

class DngPgtmDebugRewriterTest {
    @Test
    fun rewriteProfileGainTableMapAddsAnonymousLookAndVersion2Map() {
        val file = File.createTempFile("pgtm-debug-rewrite", ".dng")
        try {
            file.writeBytes(minimalClassicDng())
            assertTrue(DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2 in readRawIfd(file))
            val map = DngProfileGainTableMap(
                mapPointsV = 1,
                mapPointsH = 1,
                mapSpacingV = 1.0,
                mapSpacingH = 1.0,
                mapOriginV = 0.0,
                mapOriginH = 0.0,
                mapPointsN = 257,
                mapInputWeights = floatArrayOf(0.10f, 0.20f, 0.05f, 0.15f, 0.50f),
                gamma = 0.5f,
                gains = FloatArray(257) { index ->
                    1.75f + (0.72f - 1.75f) * index.toFloat() / 256f
                }
            )

            assertTrue(DngPgtmDebugRewriter.rewriteProfileGainTableMap(file, map))

            val decoded = DngProfileGainTableMap.readFrom(file)
            assertTrue(decoded?.isValid == true)
            assertEquals(map.mapPointsH, decoded?.mapPointsH)
            assertEquals(map.mapPointsV, decoded?.mapPointsV)
            assertEquals(DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2, decoded?.sourceTag)
            assertEquals(map.gamma, decoded?.gamma ?: 0f, 0f)
            assertEquals(257, decoded?.mapPointsN)
            assertEquals(map.gains[0], decoded?.gains?.get(0) ?: 0f, 0f)
            val ifd0 = readIfd0(file)
            val rawIfd = readRawIfd(file)
            assertFalse(DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP in ifd0)
            assertTrue(DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2 in ifd0)
            assertFalse(DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP in rawIfd)
            assertFalse(DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2 in rawIfd)
            assertTrue(ifd0[50706]?.inlineOrOffset?.contentEquals(byteArrayOf(1, 7, 0, 0)) == true)
            val cameraRawXmp = readEntryBytes(file, ifd0.getValue(700)).toString(Charsets.UTF_8)
            assertTrue(cameraRawXmp.contains("<crs:Look>"))
            assertTrue(cameraRawXmp.contains("crs:ProfileGainTableMap=\"100\""))
            assertTrue(cameraRawXmp.contains("crs:ProfileToneCurve=\"100\""))
            assertTrue(cameraRawXmp.contains("crs:Name=\"Photon HDR\""))
            assertFalse(cameraRawXmp.contains("crs:CameraProfile="))
            assertFalse(ifd0.containsKey(50936))
            assertEquals(514, ifd0.getValue(50940).count)
            assertEquals(
                1,
                ifd0.getValue(51110).inlineOrOffset
                    .let { ByteBuffer.wrap(it).order(ByteOrder.LITTLE_ENDIAN).int },
            )
            assertTrue(DngEmbeddedProfile.hasPhotonPgtmProfile(file))
        } finally {
            file.delete()
        }
    }

    private fun readIfd0(file: File): Map<Int, TestEntry> {
        val bytes = file.readBytes()
        val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
        val ifdOffset = buffer.getInt(4)
        return readIfd(buffer, ifdOffset)
    }

    private fun readRawIfd(file: File): Map<Int, TestEntry> {
        val bytes = file.readBytes()
        val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
        val ifd0 = readIfd(buffer, buffer.getInt(4))
        val rawIfdOffset = ifd0.getValue(330).inlineOrOffset
            .let { ByteBuffer.wrap(it).order(ByteOrder.LITTLE_ENDIAN).int }
        return readIfd(buffer, rawIfdOffset)
    }

    private fun readIfd(buffer: ByteBuffer, ifdOffset: Int): Map<Int, TestEntry> {
        buffer.position(ifdOffset)
        val count = buffer.short.toInt() and 0xFFFF
        return buildMap(count) {
            repeat(count) {
                val tag = buffer.short.toInt() and 0xFFFF
                val type = buffer.short.toInt() and 0xFFFF
                val valueCount = buffer.int.toLong() and 0xFFFF_FFFFL
                val inlineOrOffset = ByteArray(4).also(buffer::get)
                put(tag, TestEntry(type, valueCount, inlineOrOffset))
            }
        }
    }

    private fun readEntryBytes(file: File, entry: TestEntry): ByteArray {
        val bytes = file.readBytes()
        val byteCount = entry.count.toInt()
        if (byteCount <= 4) return entry.inlineOrOffset.copyOf(byteCount)
        val offset = ByteBuffer.wrap(entry.inlineOrOffset)
            .order(ByteOrder.LITTLE_ENDIAN)
            .int
        return bytes.copyOfRange(offset, offset + byteCount)
    }

    private fun minimalClassicDng(): ByteArray {
        val byteOrder = ByteOrder.LITTLE_ENDIAN
        val rawIfdOffset = 8 + 2 + 2 * 12 + 4
        return ByteArrayOutputStream().apply {
            write(byteArrayOf('I'.code.toByte(), 'I'.code.toByte()))
            writeUShort(42, byteOrder)
            writeUInt(8, byteOrder)
            writeUShort(2, byteOrder)
            writeUShort(50706, byteOrder)
            writeUShort(1, byteOrder)
            writeUInt(4, byteOrder)
            write(byteArrayOf(1, 4, 0, 0))
            writeUShort(330, byteOrder)
            writeUShort(4, byteOrder)
            writeUInt(1, byteOrder)
            writeUInt(rawIfdOffset.toLong(), byteOrder)
            writeUInt(0, byteOrder)

            writeUShort(2, byteOrder)
            writeUShort(254, byteOrder)
            writeUShort(4, byteOrder)
            writeUInt(1, byteOrder)
            writeUInt(0, byteOrder)
            writeUShort(DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2, byteOrder)
            writeUShort(7, byteOrder)
            writeUInt(1, byteOrder)
            write(byteArrayOf(0, 0, 0, 0))
            writeUInt(0, byteOrder)
        }.toByteArray()
    }

    private fun ByteArrayOutputStream.writeUShort(value: Int, byteOrder: ByteOrder) {
        write(ByteBuffer.allocate(2).order(byteOrder).putShort((value and 0xFFFF).toShort()).array())
    }

    private fun ByteArrayOutputStream.writeUInt(value: Long, byteOrder: ByteOrder) {
        write(
            ByteBuffer
                .allocate(4)
                .order(byteOrder)
                .putInt((value and 0xFFFF_FFFFL).toInt())
                .array()
        )
    }

    private data class TestEntry(
        val type: Int,
        val count: Long,
        val inlineOrOffset: ByteArray,
    )
}
