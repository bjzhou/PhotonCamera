package com.hinnka.mycamera.processor

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class GlesMgcRawSpatialShadersTest {
    @Test
    fun rgbMergeUsesJointGreenOpponentReconstruction() {
        val merge = GlesMgcRawSpatialShaders.mergeRgb
        val normalize = GlesMgcRawSpatialShaders.normalizeRgb16

        assertTrue(merge.contains("float greenAtNonGreen"))
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
        val merge = GlesMgcRawSpatialShaders.mergeRgb

        assertTrue(merge.contains("clampRawCoordinateToPhase"))
        assertTrue(merge.contains("int channel = canonicalChannel(globalPixel)"))
        assertTrue(merge.contains("globalPixel = clampRawPixelToPhase(globalPixel)"))
        assertFalse(merge.contains("canonicalChannel(mirrorRawPixel"))
    }
}
