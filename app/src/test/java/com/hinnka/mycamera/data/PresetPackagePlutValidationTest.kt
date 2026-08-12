package com.hinnka.mycamera.data

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.ByteBuffer
import java.nio.ByteOrder

class PresetPackagePlutValidationTest {
    @Test
    fun validVersion3Payload_isAccepted() {
        val payload = ByteArray(2 * 2 * 2 * 3)
        val bytes = plutBytes(version = 3, dimension = 2, payload = payload)

        assertTrue(isStructurallyValidPresetPlut(bytes))
    }

    @Test
    fun oversizedHeaderDimension_isRejectedBeforeAllocation() {
        val bytes = plutBytes(version = 3, dimension = 1024, payload = ByteArray(0))

        assertFalse(isStructurallyValidPresetPlut(bytes))
    }

    @Test
    fun truncatedPayload_isRejected() {
        val payload = ByteArray(2 * 2 * 2 * 3 - 1)
        val bytes = plutBytes(version = 3, dimension = 2, payload = payload)

        assertFalse(isStructurallyValidPresetPlut(bytes))
    }

    private fun plutBytes(version: Int, dimension: Int, payload: ByteArray): ByteArray {
        return ByteBuffer.allocate(24 + payload.size)
            .order(ByteOrder.LITTLE_ENDIAN)
            .apply {
                put("PLUT".toByteArray(Charsets.US_ASCII))
                putInt(version)
                putInt(dimension)
                putInt(0)
                putInt(0)
                putInt(0)
                put(payload)
            }
            .array()
    }
}
