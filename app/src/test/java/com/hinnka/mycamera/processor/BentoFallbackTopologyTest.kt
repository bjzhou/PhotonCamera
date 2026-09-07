package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class BentoFallbackTopologyTest {
    @Test
    fun diagonalPixelsFormOneEightConnectedComponent() {
        val fivePixels = ByteArray(8 * 8)
        repeat(5) { index ->
            fivePixels[index * 8 + index] = 0xff.toByte()
        }
        val sixPixels = fivePixels.copyOf().also { mask ->
            mask[5 * 8 + 5] = 0xff.toByte()
        }

        val fivePixelArea = BentoFallbackTopology.largestEightConnectedComponentArea(
            mask = fivePixels,
            width = 8,
            height = 8,
        )
        val sixPixelArea = BentoFallbackTopology.largestEightConnectedComponentArea(
            mask = sixPixels,
            width = 8,
            height = 8,
        )

        assertEquals(5, fivePixelArea)
        assertEquals(6, sixPixelArea)
    }
}
