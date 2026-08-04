package com.hinnka.mycamera.lut

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class PreviewColorShaderTest {
    @Test
    fun capturedSpatialEffectsMatchStaticImageOrder() {
        val variant = PreviewColorShaderVariant(
            textureSource = PreviewColorTextureSource.TEXTURE_2D,
            includeHlgInput = false,
            includeExtendedLutCurves = true,
            includeOklchDensity = true,
            includeLchMixer = true,
            includeFilmGrain = true,
            includeSpatialRecipeEffects = true,
        )
        val source = PreviewColorShader.source(variant)

        assertFalse(source.contains("JpegInputToneCurve"))
        val curveIndex = source.indexOf("if (uCurveEnabled)")
        val halationIndex = source.indexOf("if (uRedHalation > 0.0)")
        val lutIndex = source.indexOf("if (uLutEnabled && uLutIntensity > 0.0)")
        val softLightIndex = source.indexOf("if (uSoftLight > 0.0)")
        assertTrue(curveIndex >= 0)
        assertTrue(halationIndex > curveIndex)
        assertTrue(lutIndex > halationIndex)
        assertTrue(softLightIndex > lutIndex)
    }
}
