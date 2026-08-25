package com.hinnka.mycamera.processor

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
    fun sabreOutputScalingConsumesTheComputeConvertedFloatTexture() {
        val shader = GlesMgcRawSabreShaders.resampleOutputBicubic

        assertTrue(shader.contains("uniform sampler2D uSource"))
        assertFalse(shader.contains("usampler2D"))
        assertTrue(shader.contains("const float A = -0.75"))
        assertTrue(shader.contains("vec2(uSourceSize) / vec2(uOutputSize)"))
        assertTrue(shader.contains("* 65504.0"))
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
            GlesMgcRawSpatialShaders.resampleAotRgbHorizontal,
            GlesMgcRawSpatialShaders.normalizeAotRgb16,
            GlesMgcRawSabreShaders.resampleOutputBicubic,
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

    @Test
    fun alignmentPyramidPreservesMgcSignedS16BlackResiduals() {
        val rawToGray = GlesMgcRawSpatialShaders.rawToGray
        val signedConsumers = listOf(
            GlesMgcRawSpatialShaders.grayDownsample,
            GlesMgcRawSpatialShaders.grayDownsample4,
            GlesMgcRawSpatialShaders.alignmentGradientProducts,
            GlesMgcRawSpatialShaders.upsampleAlignment,
            GlesMgcRawSpatialShaders.blockLucasKanade,
            GlesMgcRawSpatialShaders.rejectionFilterDownsample,
        )

        assertTrue(rawToGray.contains("out highp int oGray"))
        assertTrue(rawToGray.contains("return (v - uBlackLevels) * uGain"))
        assertTrue(rawToGray.contains("value + 0.5, -16383.0, 16383.0"))
        assertFalse(rawToGray.contains("max(v - uBlackLevels"))
        signedConsumers.forEach { shader ->
            assertTrue(shader.contains("precision highp isampler2D"))
            assertFalse(shader.contains("highp usampler2D uReference"))
            assertFalse(shader.contains("highp usampler2D uCurrent"))
        }
        assertTrue(
            GlesMgcRawSpatialShaders.rejectionFilterDownsample.contains(
                "uniform highp isampler2D uBaseLuma",
            ),
        )
        assertFalse(
            GlesMgcRawSpatialShaders.rejectionFilterDownsample.contains(
                "uniform highp usampler2D uBaseLuma",
            ),
        )
    }

    @Test
    fun alignmentPyramidUsesOriginalSingleQuantizationFourTimesKernel() {
        val shader = GlesMgcRawSpatialShaders.grayDownsample4

        assertTrue(shader.contains("ivec2(gl_FragCoord.xy) * 4"))
        assertTrue(shader.contains("for (int y = -3; y <= 3; ++y)"))
        assertTrue(shader.contains("float(4 - abs(offset)) * (1.0 / 16.0)"))
        assertTrue(shader.contains("floor(value + 0.5)"))
        assertFalse(shader.contains("ivec2(gl_FragCoord.xy) * 2"))
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

    @Test
    fun spatialRejectionPipelineKeepsMergeAcceptanceWeightSemantics() {
        val pixelDifferenceDownsample =
            GlesMgcRawSpatialShaders.rejectionPixelDifferenceDownsample
        val dilate = GlesMgcRawSpatialShaders.dilateRejection
        val filter = GlesMgcRawSpatialShaders.rejectionFilter
        val postprocess = GlesMgcRawSpatialShaders.rejectionPostprocess

        assertTrue(pixelDifferenceDownsample.contains("ivec2(gl_FragCoord.xy) * 2"))
        assertTrue(pixelDifferenceDownsample.contains("source + ivec2(1, 1)"))
        assertTrue(dilate.contains("oWeight = 1.0 - rejection"))
        assertTrue(filter.contains("max(deltaWeight, centerWeight)"))
        assertFalse(filter.contains("min(deltaWeight, centerWeight)"))
        assertTrue(postprocess.contains("uniform sampler2D uOriginalWeight"))
        assertTrue(postprocess.contains("uniform sampler2D uFilteredWeight"))
        assertTrue(postprocess.contains("if (filtered > original)"))
    }

    @Test
    fun finalAlignmentUpsampleSelectsWholeCandidateBeforeMergeInterpolation() {
        val shader = GlesMgcRawSpatialShaders.upsampleAlignment

        assertTrue(shader.contains("uniform int uTargetTileSize"))
        assertTrue(shader.contains("float candidateCost"))
        assertTrue(shader.contains("vec2 bestFlow = candidateFlow(nearest)"))
        assertTrue(shader.contains("vec2 flowY = candidateFlow(nextY)"))
        assertTrue(shader.contains("vec2 flowX = candidateFlow(nextX)"))
        assertFalse(shader.contains("mix(flow00, flow10"))

        // MergeBayer consumes the selected 8-quad grid and performs its own guarded
        // interpolation; ConvertAlignment independently expands the same grid for rejection.
        assertTrue(GlesMgcRawSpatialShaders.mergeBayer.contains("cancelInterpolation"))
        assertTrue(GlesMgcRawSpatialShaders.convertAlignment.contains("cancelInterpolation"))
    }
}
