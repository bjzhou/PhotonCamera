package com.hinnka.mycamera.processor

import com.hinnka.mycamera.raw.RawOutputPass
import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test

class GlesMgcRawSpatialShadersTest {
    @Test
    fun sabreBayerMergePreservesMgcRbfAndCfaContract() {
        val shader = GlesMgcRawSpatialShaders.sabreMergeBayer

        assertTrue(shader.contains("exp2(-0.5 * kernelDistance) + 0.00005"))
        assertTrue(shader.contains("pixelOffset.x * pixelOffset.y * covariance.z * 2.0"))
        assertTrue(shader.contains("uniform sampler2D uCovariance"))
        assertTrue(shader.contains("uniform sampler2D uFrameWeight"))
        assertTrue(shader.contains("targetIsGreen"))
        assertTrue(shader.contains("uBlackLevelsTimesGains[channel]"))
        assertFalse(shader.contains("uLinearKernelMask"))
    }

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
    fun filteredRgb16UsesComputeForTheFirstFloatConversion() {
        val shader = GlesMgcRawSpatialShaders.copyRgb16ToFloat

        assertEquals(
            GlesComputeWorkGroup.Size(x = 8, y = 8, z = 1),
            GlesComputeWorkGroup.declaredSize(shader),
        )
        GlesComputeWorkGroup.requireBaselineCompatible(shader, "MGC_RGB_CHROMA_TO_FLOAT")
        assertTrue(shader.contains("readonly uniform highp uimage2D uRgb16"))
        assertTrue(shader.contains("writeonly uniform highp image2D uRgb16f"))
        assertTrue(shader.contains("uvec3 encoded = imageLoad(uRgb16, p).rgb"))
        assertFalse(shader.contains("usampler2D"))
        assertFalse(shader.contains("texelFetch"))
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
    fun rgbMergeCarriesFusedRawGreenDirectionWithoutAnotherSurface() {
        val merge = GlesMgcRawSpatialShaders.mergeRgb
        val normalize = GlesMgcRawSpatialShaders.normalizeRgb16

        assertTrue(merge.contains("vec2 greenDirectionMoment"))
        assertTrue(merge.contains("directionMoment * weights.r * frameWeight"))
        assertTrue(normalize.contains("gbWeightsAndDirection.ba / max(colorAndR.a"))
        assertTrue(normalize.contains("packDirectionMoment(directionMoment)"))
    }

    @Test
    fun changedRgbFragmentShadersPassAvailableNdkValidator() {
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

        listOf(
            GlesMgcRawSpatialShaders.mergeRgb,
            GlesMgcRawSpatialShaders.normalizeRgb16,
            GlesMgcRawSpatialShaders.normalizeAotRgb16,
            RawOutputPass.FRAGMENT_SHADER,
            GlesYuvSpatialShaders.lanczosOutput,
            GlesYuvSpatialShaders.lanczosFrameOutput,
        ).forEachIndexed { index, shader ->
            val sourceFile = File.createTempFile("mgc-spatial-rgb-$index-", ".frag")
            val outputFile = File.createTempFile("mgc-spatial-rgb-$index-", ".spv")
            try {
                sourceFile.writeText(shader.replaceFirst("#version 300 es", "#version 310 es"))
                val process = ProcessBuilder(
                    checkNotNull(validator).absolutePath,
                    "--target-env=opengl",
                    "-fauto-map-locations",
                    "-fauto-bind-uniforms",
                    "-fshader-stage=frag",
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
    fun originalAotOutputUsesPlanarQ14CameraRgbWithoutWbUndo() {
        val shader = GlesMgcRawSpatialShaders.normalizeAotRgb16

        assertTrue(shader.contains("#version 300 es"))
        assertTrue(shader.contains("* (1.0 / 16384.0)"))
        assertTrue(shader.contains("float channelShading"))
        assertTrue(shader.contains("out highp uvec4 oRgb16"))
        assertTrue(shader.contains("oRgb16 = uvec4(uvec3(encodedValue), 0u)"))
        assertFalse(shader.contains("oRgb16[uChannel]"))
        assertFalse(shader.contains("uimage2D"))
        assertFalse(shader.contains("imageLoad"))
        assertFalse(shader.contains("imageStore"))
        assertFalse(shader.contains("uCalculationGains"))
        assertFalse(shader.contains("uCameraDomainScale"))
    }

}
