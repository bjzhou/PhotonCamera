package com.hinnka.mycamera.raw

import java.io.File
import java.nio.ByteBuffer
import java.nio.ByteOrder
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class LumixColorTemperatureTest {
    @Test
    fun originalCoordinatesTruncateBeforeMixingAndClampAtEndpoints() {
        assertEquals(256, LumixColorTemperature.coordinateForKelvin(3000f))
        assertEquals(512, LumixColorTemperature.coordinateForKelvin(5000f))
        assertEquals(618, LumixColorTemperature.coordinateForKelvin(6500f))
        assertEquals(725, LumixColorTemperature.coordinateForKelvin(7500f))
        assertEquals(0f, LumixColorTemperature.highWeight(2000f), 0f)
        assertEquals(0.5f, LumixColorTemperature.highWeight(4000f), 0f)
        assertEquals(128f / 256f, LumixColorTemperature.highWeight(4007f), 0f)
        assertEquals(1f, LumixColorTemperature.highWeight(9000f), 0f)
        assertEquals(1f, LumixColorTemperature.highWeight(null), 0f)
    }

    @Test
    fun rw2CorrectionCoordinateOverridesKelvinButOrdinaryTiffTagDoesNot() {
        for (order in listOf(ByteOrder.LITTLE_ENDIAN, ByteOrder.BIG_ENDIAN)) {
            // Imported RW2 bytes are stored as original.dng: dispatch must use the header.
            val file = File.createTempFile("lumix-temperature", ".dng")
            try {
                val bytes = ByteBuffer.allocate(26).order(order)
                bytes.putShort(if (order == ByteOrder.LITTLE_ENDIAN) 0x4949 else 0x4d4d)
                bytes.putShort(85).putInt(8).putShort(1)
                bytes.putShort(0x011c).putShort(3).putInt(1).putShort(320).putShort(0).putInt(0)
                file.writeBytes(bytes.array())
                assertEquals(320, LumixColorTemperature.readAsShotCoordinate(file))
                assertEquals(0.25f, LumixColorTemperature.highWeight(6500f, LumixColorTemperature.readAsShotCoordinate(file)), 0f)
                bytes.putShort(2, 42)
                file.writeBytes(bytes.array())
                assertNull(LumixColorTemperature.readAsShotCoordinate(file))
            } finally { file.delete() }
        }
    }

    @Test
    fun s9AsShotWeightMatchesOriginalIntegerCoordinateMixAcrossTheWholeInterval() {
        assertEquals(246f / 256f, LumixColorTemperature.highWeight(3000f, 502), 0f)
        // Original native pre-mixes LUT nodes. Runtime trilinear interpolation is linear,
        // so mixing the two interpolated values must have the same weights and direction.
        val low = floatArrayOf(0.04f, 0.12f, 0.83f)
        val high = floatArrayOf(0.71f, 0.31f, 0.26f)
        for (coordinate in 0..768) {
            val weight = LumixColorTemperature.highWeight(6500f, coordinate)
            for (channel in low.indices) {
                val expected = when {
                    coordinate <= 256 -> low[channel]
                    coordinate >= 512 -> high[channel]
                    else -> (low[channel] * (512 - coordinate) +
                        high[channel] * (coordinate - 256)) / 256f
                }
                val actual = low[channel] * (1f - weight) + high[channel] * weight
                assertEquals(expected, actual, 0.00000012f)
            }
        }
    }
}
