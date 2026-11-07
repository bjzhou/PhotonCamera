package com.hinnka.mycamera.raw

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test

class MgcSpatialStrengthMapTest {
    @Test
    fun partialRawCellsUseIdentityWithoutRescalingValidAotSamples() {
        val values = shortArrayOf(37, 129, 411, 87, 303, 902)
        val native = MgcSpatialStrengthMap(3, 2, values)
        val covered = native.withIdentityBorder(fullWidth = 14, fullHeight = 10)

        assertEquals(4, covered.width)
        assertEquals(3, covered.height)
        assertArrayEquals(
            shortArrayOf(37, 129, 411, 256, 87, 303, 902, 256, 256, 256, 256, 256),
            covered.q8,
        )
        assertArrayEquals(values, native.q8)
        assertSame(native, native.withIdentityBorder(fullWidth = 12, fullHeight = 8))
    }

    @Test
    fun identityMapUsesQuarterResolutionQ8Defaults() {
        val strengthMap = MgcSpatialStrengthMap.identityForFullResolution(
            fullWidth = 4033,
            fullHeight = 3025,
        )

        assertEquals(1009, strengthMap.width)
        assertEquals(757, strengthMap.height)
        assertEquals(strengthMap.width * strengthMap.height, strengthMap.q8.size)
        assertTrue(strengthMap.q8.all { it.toInt() == 256 })
    }
}
