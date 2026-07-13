package com.hinnka.mycamera.raw

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class RcdShadersTest {
    @Test
    fun ordinaryBayerBorderUsesPpgWithParityPreservingMirroring() {
        val shader = RcdShaders.WRITE_OUTPUT

        assertTrue(shader.contains("ivec2 mirrorCoord"))
        assertTrue(shader.contains("color = ppgColorAt(coord);"))
        assertFalse(shader.contains("borderInterpolateAt"))
        assertFalse(shader.contains("inOutermostBorder"))
    }
}
