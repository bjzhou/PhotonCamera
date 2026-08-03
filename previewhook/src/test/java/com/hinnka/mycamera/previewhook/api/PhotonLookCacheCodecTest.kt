package com.hinnka.mycamera.previewhook.api

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Test

class PhotonLookCacheCodecTest {
    @Test
    fun completeLookRoundTrips() {
        val payload = ByteArray(2 * 2 * 2 * 3 * 2) { index -> (index * 7).toByte() }
        val record = PhotonLookCacheRecord(
            signature = "look:signature",
            lutId = "photon-look",
            lutTitle = "Photon Look",
            lutSize = 2,
            lutDataType = 1,
            lutCurveShaderId = 4,
            lutColorSpaceOrdinal = 2,
            lutPayload = payload,
            recipeJson = """{"exposure":0.25,"gradingBalance":-0.2}""",
        )

        val decoded = PhotonLookCacheCodec.decode(PhotonLookCacheCodec.encode(record))

        assertEquals(record.signature, decoded.signature)
        assertEquals(record.lutId, decoded.lutId)
        assertEquals(record.lutTitle, decoded.lutTitle)
        assertEquals(record.lutSize, decoded.lutSize)
        assertEquals(record.lutDataType, decoded.lutDataType)
        assertEquals(record.lutCurveShaderId, decoded.lutCurveShaderId)
        assertEquals(record.lutColorSpaceOrdinal, decoded.lutColorSpaceOrdinal)
        assertArrayEquals(payload, decoded.lutPayload)
        assertEquals(record.recipeJson, decoded.recipeJson)
    }

    @Test
    fun emptyLookRoundTripsAndClearsPriorSelection() {
        val record = PhotonLookCacheRecord(
            signature = "none",
            lutId = null,
            lutTitle = "",
            lutSize = 0,
            lutDataType = 0,
            lutCurveShaderId = 0,
            lutColorSpaceOrdinal = 0,
            lutPayload = null,
            recipeJson = "{}",
        )

        val decoded = PhotonLookCacheCodec.decode(PhotonLookCacheCodec.encode(record))

        assertNull(decoded.lutId)
        assertNull(decoded.lutPayload)
        assertEquals(0, decoded.lutSize)
        assertEquals("{}", decoded.recipeJson)
    }

    @Test
    fun corruptCacheIsRejected() {
        val record = PhotonLookCacheRecord(
            signature = "look",
            lutId = null,
            lutTitle = "",
            lutSize = 0,
            lutDataType = 0,
            lutCurveShaderId = 0,
            lutColorSpaceOrdinal = 0,
            lutPayload = null,
            recipeJson = "{}",
        )
        val encoded = PhotonLookCacheCodec.encode(record)
        encoded[encoded.lastIndex / 2] = (encoded[encoded.lastIndex / 2].toInt() xor 0x5A).toByte()

        assertThrows(IllegalArgumentException::class.java) {
            PhotonLookCacheCodec.decode(encoded)
        }
    }
}
