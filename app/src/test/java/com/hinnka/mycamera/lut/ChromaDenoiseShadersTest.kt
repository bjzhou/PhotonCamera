package com.hinnka.mycamera.lut

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ChromaDenoiseShadersTest {
    @Test
    fun rawOpponentValuesStayInOneLinearCameraRgbDomain() {
        val shader = ChromaDenoiseShaders.PASS_CHROMA_DENOISE

        assertTrue(shader.contains("rgb.r - rgb.g"))
        assertTrue(shader.contains("rgb.b - rgb.g"))
        assertTrue(shader.contains("(rgb.r + rgb.g + rgb.b) / 3.0"))
        assertTrue(shader.contains("value.x - (value.y + value.z) / 3.0"))
        assertTrue(shader.contains("green + value.y"))
        assertTrue(shader.contains("green + value.z"))
        assertFalse(shader.contains("cameraChromaScale"))
    }

    @Test
    fun rawNeighborMeanIsNormalizedBackToTheCenterSignal() {
        val shader = ChromaDenoiseShaders.PASS_CHROMA_DENOISE

        assertTrue(shader.contains("sumSignal += sampleValue.x * weight"))
        assertTrue(shader.contains("centerSignal / max(averageSignal, 1e-6)"))
        assertTrue(shader.contains("averageChroma * signalScale"))
    }

    @Test
    fun rawOpponentAndGuideBandwidthsIncludeGreenNoise() {
        val shader = ChromaDenoiseShaders.PASS_CHROMA_DENOISE

        assertTrue(shader.contains("uniform vec2 uNoiseModelG;"))
        assertTrue(shader.contains("variance.rb + variance.gg"))
        assertTrue(shader.contains("variance.r + variance.g + variance.b"))
    }

    @Test
    fun everyScaleUsesTheSameBoundedChromaEdgeThreshold() {
        val shader = ChromaDenoiseShaders.PASS_CHROMA_DENOISE

        assertTrue(shader.contains("exp(-chromaDistance)"))
        assertTrue(shader.contains("float chromaEdgeSigmaMultiplier"))
        assertFalse(shader.contains("signalSnr"))
        assertFalse(shader.contains("cloudRadius"))
        assertFalse(shader.contains("vec2 cloudH"))
    }

    @Test
    fun rawCameraRgbUsesSymmetricLuminanceInsteadOfGreenGuide() {
        val shader = ChromaDenoiseShaders.PASS_CHROMA_DENOISE

        assertTrue(shader.contains("texture(uGuideTexture, sampleCoord).r - centerGuide"))
        assertTrue(ChromaDenoiseShaders.PASS_EDGE_GUIDE.contains(
            "(rgb.r + rgb.g + rgb.b) / 3.0"
        ))
        assertFalse(ChromaDenoiseShaders.PASS_EDGE_GUIDE.contains("return rgb.g"))
    }
}
