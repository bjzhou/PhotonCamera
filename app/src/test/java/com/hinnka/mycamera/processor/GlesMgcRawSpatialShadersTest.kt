package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class GlesMgcRawSpatialShadersTest {
    @Test
    fun bentoHighlightCountUsesBaselineCompatibleGroupedReduction() {
        val shader = GlesMgcRawSpatialShaders.bentoCountHighlightMask

        assertEquals(
            GlesComputeWorkGroup.Size(x = 8, y = 8, z = 1),
            GlesComputeWorkGroup.declaredSize(shader),
        )
        GlesComputeWorkGroup.requireBaselineCompatible(shader, "MGC_BENTO_HIGHLIGHT_COUNT")
        assertTrue(shader.contains("shared uint localCounts[64]"))
        assertTrue(shader.contains("atomicAdd(activeCount, localCounts[0])"))
    }

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

    @Test
    fun longFrameClippingGuardUsesAlignedUnnormalizedRawPhases() {
        val clippingMask = GlesMgcRawSpatialShaders.alignedRawClippingMask

        assertTrue(clippingMask.contains("uniform highp usampler2D uRaw;"))
        assertTrue(clippingMask.contains("uniform sampler2D uFlow;"))
        assertTrue(clippingMask.contains("for (int phase = 0; phase < 4; ++phase)"))
        assertTrue(clippingMask.contains("rawValue >= uPhaseClippingLevels[phase]"))
        assertTrue(clippingMask.contains("vec2 sourceFlow = texture(uFlow, flowUv).xy"))
        assertFalse(clippingMask.contains("uGains"))
        assertFalse(clippingMask.contains("uExposureRatio"))
    }
}
