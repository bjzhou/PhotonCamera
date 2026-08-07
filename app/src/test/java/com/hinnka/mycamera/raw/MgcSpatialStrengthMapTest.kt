package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class MgcSpatialStrengthMapTest {
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
