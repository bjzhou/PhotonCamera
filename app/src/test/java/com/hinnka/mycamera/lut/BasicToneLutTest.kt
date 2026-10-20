package com.hinnka.mycamera.lut

import java.nio.ByteBuffer
import java.nio.ByteOrder
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class BasicToneLutTest {
    @Test
    fun planarOplusData_isInterleavedWithoutChannelSwap() {
        val red = FloatArray(8) { it / 10f }
        val green = FloatArray(8) { 1f + it / 10f }
        val blue = FloatArray(8) { 2f + it / 10f }
        val raw = ByteBuffer.allocate((red.size + green.size + blue.size) * Float.SIZE_BYTES)
            .order(ByteOrder.LITTLE_ENDIAN)
            .apply {
                red.forEach(::putFloat)
                green.forEach(::putFloat)
                blue.forEach(::putFloat)
            }
            .array()

        val actual = BasicToneLut.parsePlanarFloat32(raw, size = 2)
        val expected = FloatArray(8 * 3)
        for (index in 0 until 8) {
            expected[index * 3] = red[index]
            expected[index * 3 + 1] = green[index]
            expected[index * 3 + 2] = blue[index]
        }

        assertArrayEquals(expected, actual, 0f)
    }

    @Test
    fun generatedFallbackToneCurves_adjustMidtonesAndPreserveEndpoints() {
        val size = 3
        val low = BasicToneLut.createFallbackData(size, BasicToneLut.Endpoint.LOW_KEY)
        val high = BasicToneLut.createFallbackData(size, BasicToneLut.Endpoint.HIGH_KEY)
        val middleRgbOffset = (((1 * size) + 1) * size + 1) * 3

        assertEquals(size * size * size * 3, low.size)
        assertEquals(0f, low[0], 0f)
        assertEquals(0f, high[0], 0f)
        assertEquals(1f, low[low.size - 1], 0f)
        assertEquals(1f, high[high.size - 1], 0f)
        assertTrue("Low Key should lower neutral midtones", low[middleRgbOffset] < 0.5f)
        assertTrue("High Key should lift neutral midtones", high[middleRgbOffset] > 0.5f)
        assertTrue(low.all { it.isFinite() && it in 0f..1f })
        assertTrue(high.all { it.isFinite() && it in 0f..1f })
    }
}
