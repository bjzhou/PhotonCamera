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
        assertTrue(shader.contains("const int RCD_OUTPUT_MARGIN = ${RcdShaders.OUTPUT_MARGIN};"))
        assertFalse(shader.contains("uniform int uBorder"))
        assertFalse(shader.contains("borderInterpolateAt"))
        assertFalse(shader.contains("inOutermostBorder"))
    }

    @Test
    fun regionRcdUsesTheSamePpgKernelOnTheRealPhotoBorder() {
        val fullImageShader = RcdShaders.WRITE_OUTPUT
        val regionShader = RcdShaders.REGION_BORDER_PPG
        val sharedKernelLines = listOf(
            "float ppgGreenAt(ivec2 coord)",
            "vec3 ppgColorAt(ivec2 coord)",
            "float guessx = (pxm + pc + pxM) * 2.0 - pxM2 - pxm2;",
            "return max(color, vec3(0.0));",
        )

        sharedKernelLines.forEach { line ->
            assertTrue(fullImageShader.contains(line))
            assertTrue(regionShader.contains(line))
        }
        assertTrue(regionShader.contains("vec3 color = ppgColorAt(global);"))
        assertTrue(regionShader.contains("mirrorIndex(global.y + delta, uFullImageSize.y)"))
    }
}
