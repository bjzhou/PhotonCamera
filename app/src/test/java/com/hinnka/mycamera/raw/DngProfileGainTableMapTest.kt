package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Test
import java.nio.ByteBuffer
import java.nio.ByteOrder

class DngProfileGainTableMapTest {
    @Test
    fun version2EncoderPreservesGammaAndWritesThe80ByteHeader() {
        val map = testMap(
            mapPointsN = 2,
            gamma = 0.5f,
            gains = floatArrayOf(1.75f, 0.72f),
        )
        val payload = map.encodeProfileGainTableMap2(ByteOrder.LITTLE_ENDIAN)
        val buffer = ByteBuffer.wrap(payload).order(ByteOrder.LITTLE_ENDIAN)

        assertEquals(80 + map.gains.size * Float.SIZE_BYTES, payload.size)
        assertEquals(map.mapPointsV, buffer.int)
        assertEquals(map.mapPointsH, buffer.int)
        assertEquals(map.mapSpacingV, buffer.double, 0.0)
        assertEquals(map.mapSpacingH, buffer.double, 0.0)
        assertEquals(map.mapOriginV, buffer.double, 0.0)
        assertEquals(map.mapOriginH, buffer.double, 0.0)
        assertEquals(map.mapPointsN, buffer.int)
        map.mapInputWeights.forEach { assertEquals(it, buffer.float, 0f) }
        assertEquals(3, buffer.int)
        assertEquals(map.gamma, buffer.float, 0f)
        assertEquals(map.gains.min(), buffer.float, 0f)
        assertEquals(map.gains.max(), buffer.float, 0f)
        map.gains.forEach { assertEquals(it, buffer.float, 0f) }
        assertEquals(payload.size, buffer.position())
    }

    @Test
    fun version2EncoderWritesReference64By48By257PayloadSize() {
        val mapPointsV = 48
        val mapPointsH = 64
        val mapPointsN = 257
        val map = DngProfileGainTableMap(
            mapPointsV = mapPointsV,
            mapPointsH = mapPointsH,
            mapSpacingV = 1.0 / (mapPointsV - 1),
            mapSpacingH = 1.0 / (mapPointsH - 1),
            mapOriginV = 0.0,
            mapOriginH = 0.0,
            mapPointsN = mapPointsN,
            mapInputWeights = floatArrayOf(0.10f, 0.20f, 0.05f, 0.15f, 0.50f),
            gamma = 0.5f,
            gains = FloatArray(mapPointsV * mapPointsH * mapPointsN) { 1f },
            sourceTag = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2,
        )

        val payload = map.encodeProfileGainTableMap2(ByteOrder.LITTLE_ENDIAN)

        assertEquals(3_158_096, payload.size)
    }

    private fun testMap(
        mapPointsN: Int,
        gamma: Float,
        gains: FloatArray,
    ) = DngProfileGainTableMap(
        mapPointsV = 1,
        mapPointsH = 1,
        mapSpacingV = 1.0,
        mapSpacingH = 1.0,
        mapOriginV = 0.0,
        mapOriginH = 0.0,
        mapPointsN = mapPointsN,
        mapInputWeights = floatArrayOf(0.10f, 0.20f, 0.05f, 0.15f, 0.50f),
        gamma = gamma,
        gains = gains,
        sourceTag = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2
    )

}
