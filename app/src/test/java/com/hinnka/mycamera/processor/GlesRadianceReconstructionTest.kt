package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class GlesRadianceReconstructionTest {
    @Test
    fun everyStandardBayerPatternMapsItsRedSiteToCanonicalVgnRedPhase() {
        val redPhases = arrayOf(
            intArrayOf(0, 0),
            intArrayOf(1, 0),
            intArrayOf(0, 1),
            intArrayOf(1, 1),
        )

        redPhases.forEachIndexed { pattern, redPhase ->
            val geometry = RadianceVgnGeometry.forRegion(1068, 1064, pattern)

            assertEquals(0, (geometry.roiLeft + redPhase[0]) and 1)
            assertEquals(0, (geometry.roiTop + redPhase[1]) and 1)
            assertTrue(geometry.roiLeft >= RadianceVgnGeometry.WORK_HALO_PX)
            assertTrue(geometry.roiTop >= RadianceVgnGeometry.WORK_HALO_PX)
            assertEquals(0, geometry.workWidth % 4)
            assertEquals(0, geometry.workHeight % 2)
            assertEquals(geometry.workHeight / 2, geometry.halfHeight)
        }
    }

    @Test
    fun semanticProxyUsesGlobalCfaAndSameColorOpponentLattices() {
        val seed = GlesRadianceReconstructionShaders.semanticSeed
        val resolve = GlesRadianceReconstructionShaders.semanticResolve

        assertTrue(seed.contains("ivec2 global = local + uGlobalOrigin"))
        assertTrue(seed.contains("int mirrorIndex(int value, int size)"))
        assertTrue(seed.contains("float redGreen = channel == 0 ? native - green : 0.0"))
        assertTrue(seed.contains("float blueGreen = channel == 3 ? native - green : 0.0"))
        assertTrue(resolve.contains("ivec2 channelPhase(int channel)"))
        assertTrue(resolve.contains("resolveOpponent(global, 0, 1, green)"))
        assertTrue(resolve.contains("resolveOpponent(global, 3, 2, green)"))
        assertTrue(resolve.contains("global.x - ((global.x - phase.x) & 1)"))
        assertFalse(resolve.contains("bayerIndexAt(uCfaPattern, local)"))
    }

    @Test
    fun semanticDenseGreenCannotCreateAnExtremumOutsideNativeGreenNeighbors() {
        val seed = GlesRadianceReconstructionShaders.semanticSeed

        assertTrue(seed.contains("float horizontalLimit = 0.5 * abs(gL - gR)"))
        assertTrue(seed.contains("float verticalLimit = 0.5 * abs(gU - gD)"))
        assertTrue(seed.contains("float horizontalCorrection"))
        assertTrue(seed.contains("-horizontalLimit"))
        assertTrue(seed.contains("float verticalCorrection"))
        assertTrue(seed.contains("-verticalLimit"))
        assertTrue(seed.contains("float nativeGreenMin"))
        assertTrue(seed.contains("float nativeGreenMax"))
        assertTrue(seed.contains("return clamp(green"))
        assertFalse(seed.contains("return max(mix(vertical, horizontal, blendH), 0.0)"))
    }

    @Test
    fun opponentChromaInterpolationUsesDenseGreenAsAnEdgeGuide() {
        val resolve = GlesRadianceReconstructionShaders.semanticResolve

        assertTrue(resolve.contains("float opponentGuideWeight"))
        assertTrue(resolve.contains("vec4 s00 = semanticAt(p00)"))
        assertTrue(resolve.contains("float g00 = s00.r"))
        assertTrue(resolve.contains("float edgeStrength = smoothstep"))
        assertTrue(resolve.contains("vec4 spatialWeight"))
        assertTrue(resolve.contains("vec4 guideWeight"))
        assertTrue(resolve.contains("vec4 weight = spatialWeight * guideWeight"))
        assertFalse(resolve.contains("return mix(a, b, ty)"))
    }

    @Test
    fun vgnReferenceReturnsToCameraRgbWithoutColorNoiseOrIirStages() {
        val prepare = GlesRadianceReconstructionShaders.vgnPrepareRegion
        val finish = GlesRadianceReconstructionShaders.vgnYccdToCameraRgb

        assertTrue(prepare.contains("uGlobalOrigin"))
        assertTrue(prepare.contains("uSourceOffset"))
        assertTrue(finish.contains("calculationRgb / max(uCalculationGains"))
        assertFalse(prepare.contains("COLOR_NOISE"))
        assertFalse(finish.contains("IIR"))
    }
}
