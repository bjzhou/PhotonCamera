package com.hinnka.mycamera.lut

import java.nio.ByteBuffer
import java.nio.ByteOrder
import org.junit.Assert.assertArrayEquals
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
}
