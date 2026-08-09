package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class BentoFallbackTopologyTest {
    @Test
    fun tilingGateUsesEightConnectivityAndStrictMaximumArea() {
        val fiveTiles = ByteArray(8 * 8)
        repeat(5) { index ->
            fiveTiles[index * 8 + index] = 0xff.toByte()
        }
        val sixTiles = fiveTiles.copyOf().also { mask ->
            mask[5 * 8 + 5] = 0xff.toByte()
        }

        val areaAtLimit = BentoFallbackTopology.largestEightConnectedComponentArea(
            mask = fiveTiles,
            width = 8,
            height = 8,
        )
        val areaOverLimit = BentoFallbackTopology.largestEightConnectedComponentArea(
            mask = sixTiles,
            width = 8,
            height = 8,
        )

        assertEquals(5, areaAtLimit)
        assertEquals(6, areaOverLimit)
        assertFalse(areaAtLimit > 5)
        assertTrue(areaOverLimit > 5)
    }
}
