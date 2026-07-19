package com.hinnka.mycamera.processor

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class GlesRawRadianceFusionShadersTest {
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
        assertFalse(normalize.contains("uFusionRejections"))
        assertFalse(normalize.contains("uDebugNeutralRgb"))
    }
}
