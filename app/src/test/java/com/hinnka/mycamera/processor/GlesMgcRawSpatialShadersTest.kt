package com.hinnka.mycamera.processor

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class GlesMgcRawSpatialShadersTest {
    @Test
    fun rgbMergeUsesJointGreenOpponentReconstruction() {
        val guide = GlesMgcRawSpatialShaders.rgbChromaGuide
        val merge = GlesMgcRawSpatialShaders.mergeRgb
        val normalize = GlesMgcRawSpatialShaders.normalizeRgb16

        assertTrue(guide.contains("float greenAtNonGreen"))
        assertTrue(merge.contains("float chromaGuideAt"))
        assertFalse(merge.contains("float greenAtNonGreen"))
        assertTrue(merge.contains("nativeValue - localGreen"))
        assertTrue(merge.contains("greenSum += gainedRaw(p)"))
        assertTrue(normalize.contains("semantic.r + semantic.g"))
        assertTrue(normalize.contains("semantic.r + semantic.b"))
        assertFalse(merge.contains("intensities[rgbChannel]"))
    }

    @Test
    fun rgbOpponentInterpolationIsGuidedByTheSameGreenReconstruction() {
        val merge = GlesMgcRawSpatialShaders.mergeRgb

        assertTrue(merge.contains("float targetGreen = greenSum"))
        assertTrue(merge.contains("chromaGuideWeight(localGreen, targetGreen)"))
        assertTrue(merge.contains("uGreenNoise.x * signal + uGreenNoise.y"))
        assertTrue(merge.contains("jointWeight"))
    }

    @Test
    fun rgbRawBoundaryFetchPreservesCfaPhase() {
        val guide = GlesMgcRawSpatialShaders.rgbChromaGuide
        val merge = GlesMgcRawSpatialShaders.mergeRgb

        assertTrue(guide.contains("clampRawCoordinateToPhase"))
        assertTrue(guide.contains("int channel = canonicalChannel(globalPixel)"))
        assertTrue(guide.contains("globalPixel = clampRawPixelToPhase(globalPixel)"))
        assertTrue(merge.contains("uniform highp usampler2D uRaw;"))
        assertFalse(merge.contains("usampler2D uRawRegion"))
        assertFalse(merge.contains("canonicalChannel(mirrorRawPixel"))
    }
}
