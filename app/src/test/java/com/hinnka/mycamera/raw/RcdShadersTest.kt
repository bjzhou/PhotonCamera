package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class RcdShadersTest {
    @Test
    fun sharedGradientTileFitsTheBaselineAndKeepsItsFourPixelHalo() {
        val shader = RcdShaders.STEP_1

        assertEquals(
            GlesComputeWorkGroup.Size(x = 8, y = 8, z = 1),
            GlesComputeWorkGroup.declaredSize(shader),
        )
        assertTrue(shader.contains("shared float sh_buffer[256];"))
        assertTrue(shader.contains("int stride = 16;"))
        assertTrue(shader.contains("int buf_offset = (ylid + 4) * stride + (xlid + 4);"))
        GlesComputeWorkGroup.requireBaselineCompatible(shader, "RCD_STEP_1")
    }

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
