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
            val file = File.createTempFile("lumix-temperature", ".rw2")
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
}
