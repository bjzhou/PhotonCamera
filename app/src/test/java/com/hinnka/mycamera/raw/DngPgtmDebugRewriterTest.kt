package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.ByteArrayOutputStream
import java.io.File
import java.nio.ByteBuffer
import java.nio.ByteOrder

class DngPgtmDebugRewriterTest {
    @Test
    fun rewriteProfileGainTableMap2AddsReadableDebugTags() {
        val file = File.createTempFile("pgtm-debug-rewrite", ".dng")
        try {
            file.writeBytes(minimalClassicDng())
            val map = DngProfileGainTableMap(
                mapPointsV = 1,
                mapPointsH = 1,
                mapSpacingV = 1.0,
                mapSpacingH = 1.0,
                mapOriginV = 0.0,
                mapOriginH = 0.0,
                mapPointsN = 2,
                mapInputWeights = floatArrayOf(0.10f, 0.20f, 0.05f, 0.15f, 0.50f),
                gamma = 1f,
                gains = floatArrayOf(1.75f, 0.72f)
            )

            assertTrue(DngPgtmDebugRewriter.rewriteProfileGainTableMap2(file, map))

            val decoded = DngProfileGainTableMap.readFrom(file)
            assertTrue(decoded?.isValid == true)
            assertEquals(map.mapPointsH, decoded?.mapPointsH)
            assertEquals(map.mapPointsV, decoded?.mapPointsV)
            assertEquals(map.mapPointsN, decoded?.mapPointsN)
            assertEquals(map.gains[0], decoded?.gains?.get(0) ?: 0f, 0f)
            assertEquals(map.gains[1], decoded?.gains?.get(1) ?: 0f, 0f)
            assertTrue(DngEmbeddedProfile.hasGoogleHdrToneCurve(file))
        } finally {
            file.delete()
        }
    }

    private fun minimalClassicDng(): ByteArray {
        val byteOrder = ByteOrder.LITTLE_ENDIAN
        return ByteArrayOutputStream().apply {
            write(byteArrayOf('I'.code.toByte(), 'I'.code.toByte()))
            writeUShort(42, byteOrder)
            writeUInt(8, byteOrder)
            writeUShort(1, byteOrder)
            writeUShort(50706, byteOrder)
            writeUShort(1, byteOrder)
            writeUInt(4, byteOrder)
            write(byteArrayOf(1, 4, 0, 0))
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
}
