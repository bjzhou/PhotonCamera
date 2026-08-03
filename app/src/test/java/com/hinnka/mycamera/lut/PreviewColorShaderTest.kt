package com.hinnka.mycamera.lut

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class PreviewColorShaderTest {
    @Test
    fun jpegInputToneCurveRunsBeforeRecipeAndPhotonLut() {
        val variant = PreviewColorShaderVariant(
            textureSource = PreviewColorTextureSource.TEXTURE_2D,
            includeHlgInput = false,
            includeExtendedLutCurves = true,
            includeOklchDensity = true,
            includeLchMixer = true,
            includeFilmGrain = true,
            includeJpegInputToneCurve = true,
        )
        val source = PreviewColorShader.source(variant)

        val inputCurveIndex = source.indexOf("color.rgb = applyJpegInputToneCurve(color.rgb);")
        val recipeIndex = source.indexOf("if (uColorRecipeEnabled)")
        val lutIndex = source.indexOf("if (uLutEnabled && uLutIntensity > 0.0)")
        assertTrue(inputCurveIndex >= 0)
        assertTrue(recipeIndex > inputCurveIndex)
        assertTrue(lutIndex > recipeIndex)
    }

    @Test
    fun normalPreviewDoesNotContainJpegInputToneCurve() {
        val variant = PreviewColorShaderVariant(
            textureSource = PreviewColorTextureSource.EXTERNAL_OES,
            includeHlgInput = false,
            includeExtendedLutCurves = true,
            includeOklchDensity = true,
            includeLchMixer = true,
            includeFilmGrain = true,
        )

        assertFalse(
            PreviewColorShader.source(variant).contains("uJpegInputToneCurveTexture"),
        )
    }

    @Test
    fun capturedSpatialEffectsMatchStaticImageOrder() {
        val variant = PreviewColorShaderVariant(
            textureSource = PreviewColorTextureSource.TEXTURE_2D,
            includeHlgInput = false,
            includeExtendedLutCurves = true,
            includeOklchDensity = true,
            includeLchMixer = true,
            includeFilmGrain = true,
            includeJpegInputToneCurve = true,
            includeSpatialRecipeEffects = true,
        )
        val source = PreviewColorShader.source(variant)

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
