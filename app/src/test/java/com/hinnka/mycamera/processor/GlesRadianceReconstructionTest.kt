package com.hinnka.mycamera.processor

import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
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
        assertTrue(seed.contains("float nativeCalculation = calculationAt(local)"))
        assertTrue(seed.contains("float redGreen = channel == 0 ? nativeCalculation - green : 0.0"))
        assertTrue(seed.contains("float blueGreen = channel == 3 ? nativeCalculation - green : 0.0"))
        assertTrue(resolve.contains("ivec2 channelPhase(int channel)"))
        assertTrue(resolve.contains("resolveOpponent(global, 0, 1, green)"))
        assertTrue(resolve.contains("resolveOpponent(global, 3, 2, green)"))
        assertTrue(resolve.contains("global.x - ((global.x - phase.x) & 1)"))
        assertFalse(resolve.contains("bayerIndexAt(uCfaPattern, local)"))
    }

    @Test
    fun referenceAndSemanticPathsShareLscAndCalculationWhiteBalanceConditioning() {
        val reference = GlesRadianceReconstructionShaders.vgnPrepareRegion
        val semantic = GlesRadianceReconstructionShaders.semanticSeed

        listOf(reference, semantic).forEach { shader ->
            assertTrue(shader.contains("uniform highp sampler2D uLensShadingMap"))
            assertTrue(shader.contains("uniform vec4 uCalculationGains"))
            assertTrue(shader.contains("float calculationAt(ivec2 local)"))
            assertTrue(shader.contains("max(lsc[lensChannelAt(global)], 0.0)"))
            assertTrue(shader.contains("max(uCalculationGains[channel], 1e-6)"))
        }
        assertFalse(semantic.contains("float cameraAt"))
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

    @Test
    fun generatedReconstructionShadersPassAvailableNdkValidator() {
        val sdkRoot = System.getenv("ANDROID_SDK_ROOT") ?: System.getenv("ANDROID_HOME")
        val validator = sdkRoot?.let(::File)
            ?.resolve("ndk")
            ?.listFiles()
            ?.sortedByDescending { it.name }
            ?.asSequence()
            ?.mapNotNull { ndk ->
                ndk.resolve("shader-tools")
                    .walkTopDown()
                    .firstOrNull { it.name == "glslc" && it.canExecute() }
            }
            ?.firstOrNull()
        assumeTrue("Android NDK glslc is unavailable", validator != null)

        val sources = listOf(
            GlesRadianceReconstructionShaders.vgnPrepareRegion,
            GlesRadianceReconstructionShaders.vgnYccdToCameraRgb,
            GlesRadianceReconstructionShaders.semanticSeed,
            GlesRadianceReconstructionShaders.semanticResolve,
        )
        sources.forEachIndexed { index, source ->
            val sourceFile = File.createTempFile("radiance-reconstruction-$index-", ".compute")
            val outputFile = File.createTempFile("radiance-reconstruction-$index-", ".spv")
            try {
                sourceFile.writeText(source)
                val process = ProcessBuilder(
                    checkNotNull(validator).absolutePath,
                    "--target-env=opengl",
                    "-fauto-map-locations",
                    "-fauto-bind-uniforms",
                    "-fshader-stage=compute",
                    sourceFile.absolutePath,
                    "-o",
                    outputFile.absolutePath,
                ).redirectErrorStream(true).start()
                val output = process.inputStream.bufferedReader().use { it.readText() }
                assertEquals("shader $index: $output", 0, process.waitFor())
            } finally {
                sourceFile.delete()
                outputFile.delete()
            }
        }
    }
}
