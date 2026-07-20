package com.hinnka.mycamera.processor

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test
import java.io.File

class GlesRawRadianceFusionShadersTest {
    @Test
    fun highlightFlowRejectsForwardBackwardInconsistencyBeforePropagation() {
        val validation = GlesRawRadianceFusionShaders.validateHighlightFlow
        val propagation = GlesRawRadianceFusionShaders.propagateHighlightFlow
        val composition = GlesRawRadianceFusionShaders.composeHighlightFlow

        assertTrue(validation.contains("forward.rg + reverse.rg"))
        assertTrue(validation.contains("min(forward.a, reverse.a) * consistency"))
        assertTrue(propagation.contains("uConfidenceDecay"))
        assertTrue(propagation.contains("uMinimumConfidence"))
        assertTrue(propagation.contains("smoothstep("))
        assertTrue(propagation.contains("sampleValue.a * support"))
        assertTrue(propagation.contains("variance"))
        assertTrue(propagation.contains("uGuideProxy"))
        assertTrue(propagation.contains("min(centerGuide.g, neighborGuide.g) < 0.5"))
        assertTrue(
            composition.contains("referenceToAnchorFlow.rg + anchorToShortFlow.rg"),
        )
        assertTrue(
            composition.contains("referenceToAnchorFlow.a * anchorToShortFlow.a"),
        )
    }

    @Test
    fun highlightCompositionUsesOneSharedMaskAndShortExposureOutputDomain() {
        val shader = GlesRawRadianceFusionShaders.normalize(
            showRejections = false,
            reconstructHighlights = true,
        )

        assertTrue(shader.contains("shortNotClipped * shortHasSignal * highlightFlowConfidence"))
        assertTrue(shader.contains("uniform highp usampler2D uReferenceRaw"))
        assertTrue(shader.contains("float normalPeak = referenceRawPeak(referenceRawPosition)"))
        assertTrue(shader.contains("float coreShortSelection = saturatedCore * step(0.5, shortReliability)"))
        assertTrue(shader.contains("float shoulderBlend = (1.0 - saturatedCore)"))
        assertTrue(shader.contains("uHighlightFlowFullConfidence"))
        assertTrue(shader.contains("vec3 normalInShortDomain = rgb /"))
        assertTrue(shader.contains("mix(normalInShortDomain, highlightRgb, highlightWeight)"))
        assertFalse(shader.contains("vec3 highlightWeight"))
    }

    @Test
    fun highlightReconstructionDebugColorsOnlyParticipatingPixelsGreen() {
        val debugShader = GlesRawRadianceFusionShaders.normalize(
            showRejections = false,
            reconstructHighlights = true,
            showHighlightReconstruction = true,
        )
        val productionShader = GlesRawRadianceFusionShaders.normalize(
            showRejections = false,
            reconstructHighlights = true,
        )

        assertTrue(debugShader.contains("if (highlightWeight > 1e-4)"))
        assertTrue(debugShader.contains("rgb = vec3(0.0, 1.0, 0.0)"))
        assertFalse(productionShader.contains("rgb = vec3(0.0, 1.0, 0.0)"))
    }

    @Test
    fun longParticipationDebugColorsOnlyPositiveFinalNrWeightGreen() {
        val clear = GlesRawRadianceFusionShaders.clearAccumulator(
            trackRejections = false,
            trackLongParticipation = true,
        )
        val accumulate = GlesRawRadianceFusionShaders.accumulate(
            rawCommon = "",
            trackLongParticipation = true,
        )
        val normalize = GlesRawRadianceFusionShaders.normalize(
            showRejections = false,
            showLongParticipation = true,
        )

        assertTrue(clear.contains("imageStore(uLongParticipation, p, uvec4(0u))"))
        assertTrue(accumulate.contains("uIsLongFrame != 0"))
        assertTrue(accumulate.contains("any(greaterThan(nrWeight, vec3(1e-7)))"))
        assertTrue(
            accumulate.contains(
                "imageStore(uLongParticipation, accumulatorP, uvec4(1u))",
            ),
        )
        assertTrue(normalize.contains("texelFetch(uLongParticipation, p, 0).r != 0u"))
        assertTrue(normalize.contains("rgb = vec3(0.0, 1.0, 0.0)"))
    }

    @Test
    fun debugNeutralIsInverseWbNormalizedToSensorCeiling() {
        val neutral = radianceDebugNeutralRgb(floatArrayOf(2f, 1f, 1f, 4f))

        assertArrayEquals(floatArrayOf(0.5f, 1f, 0.25f), neutral, 1e-6f)
        assertArrayEquals(
            floatArrayOf(1f, 1f, 1f),
            floatArrayOf(neutral[0] * 2f, neutral[1], neutral[2] * 4f),
            1e-6f,
        )
    }

    @Test
    fun rejectionDiagnosticsPreserveSpecificCauseByInvestigationPriority() {
        val shader = GlesRawRadianceFusionShaders.accumulate("", trackRejections = true)

        assertTrue(shader.contains("vec4 tileConfidence = vec4(1.0, 1.0, 0.0, 0.0)"))
        assertTrue(shader.contains("fusionRejectionPriority(tileConfidence.b)"))
        assertTrue(shader.contains("return vec4(confidence, texelFetch(uTileMask, reasonTile, 0).ba)"))
        assertTrue(shader.contains("const float MATERIAL_REJECTION_THRESHOLD = 0.5"))
        assertTrue(shader.contains("considerFusionRejection"))
        assertTrue(shader.contains("8.0,"))
        assertTrue(shader.contains("10.0,"))
        assertTrue(shader.contains("11.0,"))
        assertTrue(shader.contains("12.0,"))
        assertTrue(shader.contains("uniform highp sampler2D uPreviousFusionRejections;"))
        assertTrue(shader.contains("writeonly uniform highp image2D uNextFusionRejections;"))
        assertTrue(shader.contains("uniform int uRecordFusionRejections;"))
        assertTrue(shader.contains("if (uRecordFusionRejections == 0)"))
        assertTrue(shader.contains("texelFetch("))
        assertTrue(shader.contains("storeFusionRejection(accumulatorP, vec3(9.0, 120.0, 1.0));"))
        assertTrue(shader.contains("fusionRejection.z >= MATERIAL_REJECTION_THRESHOLD"))
        assertFalse(shader.contains("imageLoad(uFusionRejections"))
    }

    @Test
    fun nrAndDetailUseIndependentConfidenceChains() {
        val shader = GlesRawRadianceFusionShaders.accumulate("", trackRejections = false)

        assertTrue(shader.contains("tileConfidence.r * robust"))
        assertTrue(shader.contains("tileConfidence.g * robust"))
        assertTrue(shader.contains("float nrCoverage"))
        assertTrue(shader.contains("float detailCoverage"))
        assertFalse(shader.contains("float robustFloor"))
        assertFalse(shader.contains("float relaxedCoverage"))
        assertFalse(shader.contains("uDenoiseNonReferenceWeightFloor"))
        assertFalse(shader.contains("uRobustnessFloorFactor"))
    }

    @Test
    fun participationLogCountsFinalNrAndDetailWeightsInsideOutputCore() {
        val shader = GlesRawRadianceFusionShaders.accumulate(
            rawCommon = "",
            trackParticipation = true,
        )

        assertTrue(shader.contains("buffer RadianceFusionParticipationStats"))
        assertTrue(shader.contains("uniform ivec2 uFusionStatsCoreOrigin"))
        assertTrue(shader.contains("shouldSampleFusionParticipation"))
        assertTrue(shader.contains("recordFusionParticipation(outputP, nrWeight, detailWeight)"))
        assertTrue(shader.contains("recordFusionParticipation(outputP, vec3(0.0), vec3(0.0))"))
        assertTrue(shader.contains("float meanNrWeight = dot(nrWeight, vec3(0.3333333))"))
        assertTrue(shader.contains("atomicAdd(uFusionParticipationStats[offset + 1], 1u)"))
        assertTrue(shader.contains("atomicAdd(uFusionParticipationStats[offset + 3], 1u)"))
    }

    @Test
    fun chromaConsistencyUsesIndependentOpponentChannelNoise() {
        val shader = GlesRawRadianceFusionShaders.accumulate("", trackRejections = false)

        assertTrue(shader.contains("vec2 referenceChroma = referenceRgb.rb - referenceRgb.gg"))
        assertTrue(shader.contains("differenceVariance.r + differenceVariance.g"))
        assertTrue(shader.contains("differenceVariance.b + differenceVariance.g"))
        assertTrue(shader.contains("normalizedSquaredResidual"))
        assertTrue(shader.contains("channelConsistency = vec3(chromaConfidence.x, 1.0, chromaConfidence.y)"))
        assertTrue(shader.contains("float sharedConsistency = min(chromaConfidence.x, chromaConfidence.y)"))
        assertFalse(shader.contains("float sensorPrecision"))
    }

    @Test
    fun longFramesNormalizeRadianceAndNoiseFromActualExposure() {
        val shader = GlesRawRadianceFusionShaders.accumulate("", trackRejections = false)

        assertTrue(shader.contains("uniform float uExposureScale"))
        assertTrue(shader.contains("sourceRgb.detail * radiometricScale"))
        assertTrue(shader.contains("sourceRgb.denoise * radiometricScale"))
        assertTrue(shader.contains("uniform float uReferenceNoiseAlpha[4]"))
        assertTrue(shader.contains("uniform float uCurrentNoiseAlpha[4]"))
        assertTrue(shader.contains("referenceRgb / max(radiometricScale, 1e-4)"))
        assertTrue(shader.contains("radiometricScale * radiometricScale"))
        assertTrue(shader.contains("uLongPrecisionWeightCap"))
    }

    @Test
    fun saturatedLongRawIsRejectedBeforeExposureScaling() {
        val shader = GlesRawRadianceFusionShaders.accumulate("", trackRejections = true)

        assertTrue(shader.contains("uniform highp usampler2D uRawRegion"))
        assertTrue(shader.contains("float longHeadroomConfidence(vec2 sourceRaw)"))
        assertTrue(shader.contains("rawSensorNormAt(phaseOrigin + ivec2(x, y))"))
        assertTrue(shader.contains("float longClipConfidence = longHeadroomConfidence(sourceRaw)"))
        assertTrue(shader.contains("longClipConfidence * clamp(uLongDetailWeightScale"))
        assertTrue(shader.contains("13.0,"))
        assertTrue(shader.contains("uIsLongFrame != 0 ? 1.0 - longClipConfidence"))
    }

    @Test
    fun longEligibilityRequiresUnclippedObservableSupportAtComposedFlow() {
        val shader = GlesRawRadianceFusionShaders.longEligibility

        assertTrue(shader.contains("uniform sampler2D uReferenceProxy"))
        assertTrue(shader.contains("uniform sampler2D uCurrentProxy"))
        assertTrue(shader.contains("uniform sampler2D uComposedFlow"))
        assertTrue(shader.contains("min(referenceSample.g, currentSample.g)"))
        assertTrue(shader.contains("min(referenceSample.b, currentSample.b)"))
        assertTrue(shader.contains("eligibilitySum += validity * observability"))
    }

    @Test
    fun generatedLongFusionShadersPassAvailableNdkValidator() {
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

        val rawCommonStub = "int bayerIndexAt(int cfaPattern, ivec2 p) { return 0; }"
        val sources = listOf(
            "compute" to GlesRawRadianceFusionShaders.accumulate(
                rawCommon = rawCommonStub,
                trackRejections = true,
                trackParticipation = true,
                trackLongParticipation = true,
            ),
            "fragment" to GlesRawRadianceFusionShaders.longEligibility,
        )
        sources.forEach { (stage, source) ->
            val sourceFile = File.createTempFile("radiance-long-", ".$stage")
            val outputFile = File.createTempFile("radiance-long-", ".spv")
            try {
                // glslc emits SPIR-V even for syntax-only validation and requires ESSL 3.10.
                // The production fragment shader remains ESSL 3.00 for GLES 3.0 compatibility;
                // 3.10 does not change any syntax used by this shader.
                val validatorSource = if (stage == "fragment") {
                    source.replaceFirst("#version 300 es", "#version 310 es")
                } else {
                    source
                }
                sourceFile.writeText(validatorSource)
                val process = ProcessBuilder(
                    checkNotNull(validator).absolutePath,
                    "--target-env=opengl",
                    "-fauto-map-locations",
                    "-fauto-bind-uniforms",
                    "-fshader-stage=$stage",
                    sourceFile.absolutePath,
                    "-o",
                    outputFile.absolutePath,
                ).redirectErrorStream(true).start()
                val output = process.inputStream.bufferedReader().use { it.readText() }
                assertEquals("$stage: $output", 0, process.waitFor())
            } finally {
                sourceFile.delete()
                outputFile.delete()
            }
        }
    }

    @Test
    fun nonReferenceSemanticPlanesDecodeOnlyAfterCfaIndependentReconstruction() {
        val shader = GlesRawRadianceFusionShaders.accumulate("", trackRejections = false)

        assertTrue(shader.contains("uniform int uSemanticEncoding"))
        assertTrue(shader.contains("uIsReference != 0 || uSemanticEncoding == 0"))
        assertTrue(
            shader.contains(
                "vec3(encoded.r + encoded.g, encoded.r, encoded.r + encoded.b)",
            ),
        )
        assertFalse(shader.contains("bayerIndexAt(uCfaPattern, outputP)"))
    }

    @Test
    fun radianceAccumulatorsUseOneSharedColorSupportThroughNormalization() {
        val clear = GlesRawRadianceFusionShaders.clearAccumulator(trackRejections = false)
        val accumulate = GlesRawRadianceFusionShaders.accumulate("", trackRejections = false)
        val reference = GlesRawRadianceFusionShaders.captureReferenceBase
        val normalize = GlesRawRadianceFusionShaders.normalize(showRejections = false)

        assertTrue(clear.contains("uNrWeightRg"))
        assertTrue(clear.contains("uDetailWeightRg"))
        assertTrue(accumulate.contains("vec3 nrWeight"))
        assertTrue(accumulate.contains("nrWeight = vec3(sharedNrWeight)"))
        assertTrue(accumulate.contains("detailWeight = vec3(sharedDetailWeight)"))
        assertTrue(accumulate.contains("rgb.denoise.rg * nrWeight.rg"))
        assertTrue(accumulate.contains("rgb.denoise.b * nrWeight.b"))
        assertTrue(reference.contains("rg / weightRg"))
        assertTrue(reference.contains("bw.x / weightB"))
        assertTrue(normalize.contains("uniform highp usampler2D uNrWeightRg"))
        assertTrue(normalize.contains("uniform highp usampler2D uDetailWeightRg"))
        assertTrue(normalize.contains("vec3 weight = vec3(weightRg, max(bw.y, 0.0))"))
        assertTrue(normalize.contains("vec3 confidence = vec3(sharedConfidence)"))
    }

    @Test
    fun rejectionOverlayColorsMaterialPerFrameRejectionsByFrequency() {
        val shader = GlesRawRadianceFusionShaders.normalize(showRejections = true)

        assertTrue(shader.contains("uniform float uAcceptedFusionFrameCount"))
        assertTrue(shader.contains("rejection.a / max(uAcceptedFusionFrameCount, 1.0)"))
        assertTrue(shader.contains("displayStrength = sqrt(rejectedFrameFraction)"))
        assertTrue(shader.contains("displayColor = vec3(1.0, 1.0, 0.0)"))
        assertTrue(shader.contains("displayColor = vec3(1.0, 0.35, 0.0)"))
        assertTrue(shader.contains("displayColor = vec3(1.0, 0.0, 1.0)"))
        assertTrue(shader.contains("displayColor = vec3(0.0, 1.0, 1.0)"))
        assertTrue(shader.contains("displayColor = vec3(0.0, 0.0, 1.0)"))
        assertTrue(shader.contains("displayColor = vec3(1.0, 0.0, 0.0)"))
        assertTrue(shader.contains("displayColor = vec3(0.0, 1.0, 0.0)"))
        assertTrue(shader.contains("displayColor = vec3(1.0, 0.0, 1.0)"))
        assertTrue(shader.contains("displayColor * uDebugNeutralRgb"))
        assertTrue(shader.contains("displayStrength"))
        assertTrue(shader.contains("uniform vec3 uDebugNeutralRgb;"))
        assertFalse(shader.contains("mix(rgb, uDebugNeutralRgb"))
    }

    @Test
    fun srDetailOverlayUsesFinalNonReferenceDetailConfidence() {
        val shader = GlesRawRadianceFusionShaders.normalize(
            showRejections = false,
            showSrDetail = true,
        )

        assertTrue(shader.contains("float srDetailConfidence = detailLumaSupport * centerLumaConsistency"))
        assertTrue(shader.contains("srDetailConfidence * detailStability"))
        assertTrue(shader.contains("vec3 srDetailColor = vec3(0.0, 1.0, 1.0)"))
        assertTrue(shader.contains("mix(rgb, srDetailColor, srDetailConfidence)"))
        assertTrue(shader.contains("uniform vec3 uDebugNeutralRgb;"))
        assertFalse(shader.contains("uFusionRejections"))
    }

    @Test
    fun lumaDetailIsInjectedOnTheWhiteBalancedNeutralAxis() {
        val shader = GlesRawRadianceFusionShaders.normalize(showRejections = false)

        assertTrue(shader.contains("uniform vec3 uCalculationGains"))
        assertTrue(shader.contains("vec3 nrCalculation = nrSpatial * calculationGains"))
        assertTrue(shader.contains("vec3 detailCalculation = detail * calculationGains"))
        assertTrue(shader.contains("detailCalculation - nrCalculation"))
        assertTrue(
            shader.contains(
                "(nrCalculation + vec3(signedLumaDetail)) / calculationGains",
            ),
        )
        assertFalse(shader.contains("nrSpatial + vec3(signedLumaDetail)"))
    }

    @Test
    fun productionShadersExcludeRejectionResources() {
        val clear = GlesRawRadianceFusionShaders.clearAccumulator(trackRejections = false)
        val accumulate = GlesRawRadianceFusionShaders.accumulate("", trackRejections = false)
        val normalize = GlesRawRadianceFusionShaders.normalize(showRejections = false)

        assertFalse(clear.contains("uFusionRejections"))
        assertFalse(accumulate.contains("uFusionRejections"))
        assertFalse(accumulate.contains("uFusionParticipationStats"))
        assertFalse(clear.contains("uLongParticipation"))
        assertFalse(accumulate.contains("uLongParticipation"))
        assertFalse(normalize.contains("uLongParticipation"))
        assertFalse(normalize.contains("uFusionRejections"))
        assertFalse(normalize.contains("uDebugNeutralRgb"))
    }
}
