package com.hinnka.mycamera.processor

import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs
import kotlin.math.ln

/**
 * Unified same-exposure RAW fusion.
 *
 * The reconstruction algorithm is independent of output scale: every accepted RAW frame
 * contributes a wide-kernel denoise estimate and a narrow-kernel detail estimate in the
 * sensor-linear RGB domain. Standard Bayer references use the full VGN demosaic core while
 * non-reference frames use phase-safe dense-G/R-G/B-G semantic reconstruction. Non-standard
 * CFAs retain the region RCD backend. [outputScale] only selects the output sampling grid.
 */
class GlesRawRadianceFusion(
    private val width: Int,
    private val height: Int,
    private val cfaPattern: Int,
    private val blackLevel: FloatArray,
    private val whiteLevel: Int,
    private val whiteBalanceGains: FloatArray = floatArrayOf(1f, 1f, 1f, 1f),
    private val noiseModel: FloatArray,
    private val rawNoiseModel: RawNoiseModel = RawNoiseModel.fromLegacyNoiseModel(noiseModel),
    private val lensShading: FloatArray?,
    private val lensShadingWidth: Int,
    private val lensShadingHeight: Int,
    outputScale: Float,
    private val debugConfig: RawStackDebugConfig = RawStackDebugConfig.Disabled,
    private val fusionTuning: RawRadianceFusionTuning = RawRadianceFusionTuning(),
) {
    private val outputScale = outputScale.coerceIn(1f, 2f)

    fun processFrames(frames: List<RawStackFrame>): RawStackResult? {
        if (frames.isEmpty()) return null
        val sameExposureFrames = selectSameExposureFrames(frames)
        if (sameExposureFrames.size != frames.size) {
            PLog.w(
                TAG,
                "Radiance fusion excluded ${frames.size - sameExposureFrames.size} exposure-mismatched " +
                    "frames; reference exposure=${frames.first().exposureProduct}",
            )
        }

        val tuning = RawStackTuningResolver.resolve(
            mode = RawStackMode.MFSR,
            frameCount = sameExposureFrames.size,
            superResolutionScale = outputScale,
        )
        return GlesRawStacker(
            width = width,
            height = height,
            cfaPattern = cfaPattern,
            blackLevel = blackLevel,
            whiteLevel = whiteLevel,
            whiteBalanceGains = whiteBalanceGains,
            noiseModel = noiseModel,
            rawNoiseModel = rawNoiseModel,
            lensShading = lensShading,
            lensShadingWidth = lensShadingWidth,
            lensShadingHeight = lensShadingHeight,
            tuning = tuning,
            debugConfig = debugConfig,
            fusionPipeline = RawFusionPipeline.RADIANCE_RGB,
            radianceFusionTuning = fusionTuning,
        ).processFrames(sameExposureFrames)
    }

    private fun selectSameExposureFrames(frames: List<RawStackFrame>): List<RawStackFrame> {
        val reference = frames.first().exposureProduct
            .takeIf { it.isFinite() && it > 0.0 }
            ?: return frames
        val accepted = ArrayList<RawStackFrame>(frames.size)
        accepted += frames.first()
        for (frame in frames.drop(1)) {
            val exposure = frame.exposureProduct.takeIf { it.isFinite() && it > 0.0 }
            if (exposure == null) {
                accepted += frame
                continue
            }
            val deltaEv = abs(ln(exposure / reference) / LN_2).toFloat()
            if (deltaEv <= SAME_EXPOSURE_TOLERANCE_EV) {
                accepted += frame
            } else {
                frame.image.close()
            }
        }
        return accepted
    }

    companion object {
        private const val TAG = "GlesRawRadianceFusion"
        private const val SAME_EXPOSURE_TOLERANCE_EV = 0.08f
        private val LN_2 = ln(2.0)
    }
}

enum class RawFusionPipeline {
    LEGACY_CFA,
    RADIANCE_RGB,
}

/**
 * Parameters are expressed in input RAW pixels, so changing output scale does not silently
 * change denoise radius, detail radius, or confidence behavior.
 */
data class RawRadianceFusionTuning(
    val tileCoreSizeRawPx: Int = 1024,
    val denoiseSigmaRawPx: Float = 1.10f,
    val denoiseSteeringStrength: Float = 0.48f,
    val robustnessSpatialMix: Float = 0.68f,
    val nrConfidenceStart: Float = 0.15f,
    val nrConfidenceFull: Float = 1.35f,
    val detailConfidenceStart: Float = 0.18f,
    val detailConfidenceFull: Float = 1.45f,
    val referenceDetailFloor: Float = 0.18f,
    val bilateralNoiseScale: Float = 8.0f,
    val detailChromaStrength: Float = 0.0f,
    val chromaConsistencySigmaStart: Float = 3.0f,
    val chromaConsistencySigmaFull: Float = 6.0f,
)

/** Returns a sensor-linear RGB value that becomes neutral after the capture WB is applied. */
internal fun radianceDebugNeutralRgb(calculationWbGains: FloatArray): FloatArray {
    require(calculationWbGains.size >= 4) { "Radiance debug WB gains must contain RGGB channels" }
    val rgbGains = floatArrayOf(
        calculationWbGains[0],
        1f,
        calculationWbGains[3],
    )
    require(rgbGains.all { it.isFinite() && it > 0f }) {
        "Radiance debug WB gains must be finite and positive"
    }
    val neutral = FloatArray(3) { index -> 1f / rgbGains[index] }
    val peak = neutral.maxOrNull()?.coerceAtLeast(1e-6f) ?: 1f
    return FloatArray(3) { index -> neutral[index] / peak }
}

internal object GlesRawRadianceFusionShaders {
    fun clearAccumulator(trackRejections: Boolean): String {
        val rejectionDeclaration = if (trackRejections) {
            "layout(rgba16f, binding = 6) writeonly uniform highp image2D uFusionRejections;"
        } else {
            ""
        }
        val rejectionClear = if (trackRejections) {
            "imageStore(uFusionRejections, p, vec4(0.0));"
        } else {
            ""
        }
        return """
        #version 310 es
        precision highp float;
        precision highp int;
        layout(local_size_x = 16, local_size_y = 16) in;
        layout(r32ui, binding = 0) writeonly uniform highp uimage2D uNrSumRg;
        layout(r32ui, binding = 1) writeonly uniform highp uimage2D uNrSumBw;
        layout(r32ui, binding = 2) writeonly uniform highp uimage2D uNrWeightRg;
        layout(r32ui, binding = 3) writeonly uniform highp uimage2D uDetailSumRg;
        layout(r32ui, binding = 4) writeonly uniform highp uimage2D uDetailSumBw;
        layout(r32ui, binding = 5) writeonly uniform highp uimage2D uDetailWeightRg;
        $rejectionDeclaration
        uniform ivec2 uImageSize;

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (p.x >= uImageSize.x || p.y >= uImageSize.y) return;
            imageStore(uNrSumRg, p, uvec4(0u));
            imageStore(uNrSumBw, p, uvec4(0u));
            imageStore(uNrWeightRg, p, uvec4(0u));
            imageStore(uDetailSumRg, p, uvec4(0u));
            imageStore(uDetailSumBw, p, uvec4(0u));
            imageStore(uDetailWeightRg, p, uvec4(0u));
            $rejectionClear
        }
        """.trimIndent()
    }

    fun accumulate(
        rawCommon: String,
        trackRejections: Boolean = false,
        trackParticipation: Boolean = false,
    ): String {
        val rejectionDeclaration = if (trackRejections) {
            """
            uniform highp sampler2D uPreviousFusionRejections;
            layout(rgba16f, binding = 6) writeonly uniform highp image2D uNextFusionRejections;
            uniform int uRecordFusionRejections;
            """.trimIndent()
        } else {
            ""
        }
        val rejectionHelper = if (trackRejections) {
            """
            const float MATERIAL_REJECTION_THRESHOLD = 0.5;

            bool shouldReplaceFusionRejection(vec3 previous, vec3 candidate) {
                if (candidate.x <= 0.0 || candidate.z <= 0.0) return false;
                if (previous.x <= 0.0 || previous.z <= 0.0) return true;
                bool previousMaterial = previous.z >= MATERIAL_REJECTION_THRESHOLD;
                bool candidateMaterial = candidate.z >= MATERIAL_REJECTION_THRESHOLD;
                if (candidateMaterial != previousMaterial) return candidateMaterial;
                if (candidateMaterial && candidate.y != previous.y) {
                    return candidate.y > previous.y;
                }
                return candidate.z > previous.z;
            }

            float fusionRejectionPriority(float reasonId) {
                if (reasonId < 1.5) return 110.0;
                if (reasonId < 5.5) return 70.0;
                if (reasonId < 6.5) return 60.0;
                if (reasonId < 7.5) return 50.0;
                return 0.0;
            }

            void considerFusionRejection(
                inout vec3 selected,
                float reasonId,
                float priority,
                float rejectionStrength
            ) {
                vec3 candidate = vec3(
                    reasonId,
                    priority,
                    clamp(rejectionStrength, 0.0, 1.0)
                );
                if (shouldReplaceFusionRejection(selected, candidate)) {
                    selected = candidate;
                }
            }

            void storeFusionRejection(ivec2 p, vec3 rejection) {
                vec4 previousSample = texelFetch(
                    uPreviousFusionRejections,
                    p,
                    0
                );
                if (uRecordFusionRejections == 0) {
                    imageStore(uNextFusionRejections, p, previousSample);
                    return;
                }
                vec3 selected = previousSample.rgb;
                if (shouldReplaceFusionRejection(selected, rejection)) {
                    selected = rejection;
                }
                imageStore(
                    uNextFusionRejections,
                    p,
                    vec4(selected, previousSample.a + (rejection.x > 0.0 ? 1.0 : 0.0))
                );
            }
            """.trimIndent()
        } else {
            ""
        }
        val participationDeclaration = if (trackParticipation) {
            """
            layout(std430, binding = 0) buffer RadianceFusionParticipationStats {
                uint uFusionParticipationStats[];
            };
            uniform int uFusionStatsIndex;
            uniform int uFusionStatsSampleStep;
            uniform ivec2 uFusionStatsCoreOrigin;
            uniform ivec2 uFusionStatsCoreSize;
            """.trimIndent()
        } else {
            ""
        }
        val participationHelper = if (trackParticipation) {
            """
            const int FUSION_STATS_STRIDE = 5;
            const float FUSION_WEIGHT_QUANTIZATION = 63.0;

            bool shouldSampleFusionParticipation(ivec2 outputP) {
                ivec2 coreEnd = uFusionStatsCoreOrigin + uFusionStatsCoreSize;
                bool insideCore = all(greaterThanEqual(outputP, uFusionStatsCoreOrigin)) &&
                    all(lessThan(outputP, coreEnd));
                int step = max(uFusionStatsSampleStep, 1);
                return insideCore && (outputP.x % step) == 0 && (outputP.y % step) == 0;
            }

            void recordFusionParticipation(
                ivec2 outputP,
                vec3 nrWeight,
                vec3 detailWeight
            ) {
                if (!shouldSampleFusionParticipation(outputP)) return;
                int offset = uFusionStatsIndex * FUSION_STATS_STRIDE;
                float meanNrWeight = dot(nrWeight, vec3(0.3333333));
                float meanDetailWeight = dot(detailWeight, vec3(0.3333333));
                atomicAdd(uFusionParticipationStats[offset + 0], 1u);
                if (meanNrWeight > 1e-7) {
                    atomicAdd(uFusionParticipationStats[offset + 1], 1u);
                }
                atomicAdd(
                    uFusionParticipationStats[offset + 2],
                    uint(floor(clamp(meanNrWeight, 0.0, 1.0) * FUSION_WEIGHT_QUANTIZATION + 0.5))
                );
                if (meanDetailWeight > 1e-7) {
                    atomicAdd(uFusionParticipationStats[offset + 3], 1u);
                }
                atomicAdd(
                    uFusionParticipationStats[offset + 4],
                    uint(floor(clamp(meanDetailWeight, 0.0, 1.0) * FUSION_WEIGHT_QUANTIZATION + 0.5))
                );
            }
            """.trimIndent()
        } else {
            ""
        }
        val outOfBoundsHandling = buildString {
            if (trackRejections) {
                // reason 9: the warped RAW sample is outside the source frame.
                appendLine("storeFusionRejection(accumulatorP, vec3(9.0, 120.0, 1.0));")
            }
            if (trackParticipation) {
                append("recordFusionParticipation(outputP, vec3(0.0), vec3(0.0));")
            }
        }
        val rejectionVariable = if (trackRejections) {
            "vec3 fusionRejection = vec3(0.0);"
        } else {
            ""
        }
        val rejectionAssignment = if (trackRejections) {
            """
            // BA contains the NR rejection reason and severity selected while the
            // reference/current proxy pair is still available. Patch evidence lives only in
            // the detail-confidence channel and therefore cannot reject NR.
            fusionRejection = vec3(
                tileConfidence.b,
                fusionRejectionPriority(tileConfidence.b),
                tileConfidence.a
            );
            // reason 8: the accepted frame has been reduced to zero by frame registration quality.
            considerFusionRejection(
                fusionRejection,
                8.0,
                40.0,
                1.0 - clamp(uRegistrationNrWeight, 0.0, 1.0)
            );
            // reason 10: relative per-channel sensor precision reduced the sample.
            considerFusionRejection(
                fusionRejection,
                10.0,
                30.0,
                1.0 - min(min(
                    clamp(channelPrecision.r, 0.0, 1.0),
                    clamp(channelPrecision.g, 0.0, 1.0)
                ), clamp(channelPrecision.b, 0.0, 1.0))
            );
            // reason 11: highlight protection eliminated the sample.
            considerFusionRejection(
                fusionRejection,
                11.0,
                20.0,
                1.0 - min(min(highlight.r, highlight.g), highlight.b)
            );
            // reason 12: noise-normalized R-G or B-G consistency reduced its channel.
            considerFusionRejection(
                fusionRejection,
                12.0,
                65.0,
                1.0 - min(channelConsistency.r, channelConsistency.b)
            );
            """.trimIndent()
        } else {
            ""
        }
        val rejectionStore = if (trackRejections) {
            """
            storeFusionRejection(
                accumulatorP,
                uIsReference == 0 && fusionRejection.z >= MATERIAL_REJECTION_THRESHOLD ?
                    fusionRejection : vec3(0.0)
            );
            """.trimIndent()
        } else {
            ""
        }
        val participationStore = if (trackParticipation) {
            "recordFusionParticipation(outputP, nrWeight, detailWeight);"
        } else {
            ""
        }
        return """
        #version 310 es
        $rawCommon
        layout(local_size_x = 16, local_size_y = 16) in;
        uniform sampler2D uRcdRgbTile;
        uniform sampler2D uFlowGrid;
        uniform sampler2D uRobustness;
        uniform sampler2D uTileMask;
        uniform sampler2D uKernel;
        uniform sampler2D uLensShadingMap;
        uniform sampler2D uReferenceBase;
        layout(r32ui, binding = 0) uniform highp uimage2D uNrSumRg;
        layout(r32ui, binding = 1) uniform highp uimage2D uNrSumBw;
        layout(r32ui, binding = 2) uniform highp uimage2D uNrWeightRg;
        layout(r32ui, binding = 3) uniform highp uimage2D uDetailSumRg;
        layout(r32ui, binding = 4) uniform highp uimage2D uDetailSumBw;
        layout(r32ui, binding = 5) uniform highp uimage2D uDetailWeightRg;
        $rejectionDeclaration
        $participationDeclaration
        uniform ivec2 uImageSize;
        uniform ivec2 uSourceSize;
        uniform ivec2 uSourceOrigin;
        uniform ivec2 uOutputSize;
        uniform ivec2 uPlaneSize;
        uniform ivec2 uGridSize;
        uniform int uTileSize;
        uniform int uIsReference;
        uniform int uSemanticEncoding;
        uniform int uCfaPattern;
        uniform float uBlackLevel[4];
        uniform float uWhiteLevel;
        uniform float uNoiseAlphaByChannel[4];
        uniform float uNoiseBetaByChannel[4];
        uniform float uFrameWeight;
        uniform float uRegistrationNrWeight;
        uniform float uRegistrationDetailWeight;
        uniform float uDenoiseSigmaRawPx;
        uniform float uDenoiseSteeringStrength;
        uniform float uRobustnessSpatialMix;
        uniform float uPrecisionReferenceSignal;
        uniform float uLscNoiseGainMax;
        uniform float uDenoiseSignalLow;
        uniform float uDenoiseSignalHigh;
        uniform float uDenoiseStaticRobustStart;
        uniform float uDenoiseStaticRobustEnd;
        uniform float uDenoiseStaticTileStart;
        uniform float uDenoiseStaticTileEnd;
        uniform float uDenoiseNonReferenceWeightBoost;
        uniform float uDenoiseReferenceDarkWeightScale;
        uniform float uHighlightSuppressionStrength;
        uniform float uHighlightSuppressionStart;
        uniform float uHighlightSuppressionEnd;
        uniform float uChromaConsistencySigmaStart;
        uniform float uChromaConsistencySigmaFull;
        uniform ivec2 uAccumulatorOrigin;
        uniform ivec2 uAccumulatorSize;

        $rejectionHelper
        $participationHelper

        struct DualRgb {
            vec3 detail;
            vec3 denoise;
        };

        vec2 referenceRawPos(ivec2 outputPos) {
            return (vec2(outputPos) + vec2(0.5)) * vec2(uImageSize) /
                vec2(uOutputSize) - vec2(0.5);
        }

        vec2 flowAt(vec2 planePos) {
            vec2 grid = planePos / float(uTileSize) - vec2(0.5);
            vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
            return texture(uFlowGrid, clamp(uv, vec2(0.0), vec2(1.0))).rg;
        }

        float mapAt(sampler2D tex, vec2 planePos, ivec2 size) {
            vec2 uv = (clamp(planePos, vec2(0.0), vec2(size - ivec2(1))) + vec2(0.5)) /
                vec2(size);
            return texture(tex, uv).r;
        }

        vec4 tileConfidenceAt(vec2 planePos) {
            vec2 grid = planePos / float(uTileSize) - vec2(0.5);
            vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
            vec2 confidence = texture(
                uTileMask,
                clamp(uv, vec2(0.0), vec2(1.0))
            ).rg;
            ivec2 reasonTile = clamp(
                ivec2(round(grid)),
                ivec2(0),
                uGridSize - ivec2(1)
            );
            return vec4(confidence, texelFetch(uTileMask, reasonTile, 0).ba);
        }

        float spatiallySmoothedRobustness(vec2 planePos) {
            ivec2 centerP = clamp(ivec2(round(planePos)), ivec2(0), uPlaneSize - ivec2(1));
            float center = texelFetch(uRobustness, centerP, 0).r;
            float sum = 0.0;
            float weightSum = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    ivec2 q = clamp(centerP + ivec2(x, y), ivec2(0), uPlaneSize - ivec2(1));
                    float spatial = (x == 0 && y == 0) ? 4.0 :
                        ((x == 0 || y == 0) ? 2.0 : 1.0);
                    sum += texelFetch(uRobustness, q, 0).r * spatial;
                    weightSum += spatial;
                }
            }
            float smoothed = sum / max(weightSum, 1e-6);
            return clamp(mix(center, smoothed, clamp(uRobustnessSpatialMix, 0.0, 1.0)), 0.0, 1.0);
        }

        vec4 lscAt(ivec2 samplePos) {
            vec2 uv = (vec2(samplePos) + vec2(0.5)) / vec2(uImageSize);
            return texture(uLensShadingMap, clamp(uv, vec2(0.0), vec2(1.0)));
        }

        vec3 reconstructedRgbAt(vec2 globalRawPos) {
            vec2 localPos = globalRawPos - vec2(uSourceOrigin);
            vec2 maxPos = vec2(max(uSourceSize - ivec2(1), ivec2(0)));
            vec2 storageSize = vec2(textureSize(uRcdRgbTile, 0));
            vec2 uv = (clamp(localPos, vec2(0.0), maxPos) + vec2(0.5)) /
                storageSize;
            vec3 encoded = texture(uRcdRgbTile, uv).rgb;
            if (uIsReference != 0 || uSemanticEncoding == 0) {
                return clamp(encoded, 0.0, 1.0);
            }
            // Non-reference tiles encode (G, R-G, B-G). Decoding only after the semantic
            // planes have been warped/interpolated keeps CFA phase out of the fusion domain.
            return clamp(vec3(encoded.r + encoded.g, encoded.r, encoded.r + encoded.b),
                0.0, 1.0);
        }

        vec3 kernelMatrix(vec4 params) {
            float sumK = params.x + params.y;
            float diffK = params.x - params.y;
            return vec3(
                0.5 * (sumK + diffK * params.z),
                0.5 * diffK * params.w,
                0.5 * (sumK - diffK * params.z)
            );
        }

        float steeringWeight(vec2 tap, vec4 params) {
            vec3 k = kernelMatrix(params);
            float d = k.x * tap.x * tap.x + 2.0 * k.y * tap.x * tap.y +
                k.z * tap.y * tap.y;
            return exp(-0.5 * max(d, 0.0));
        }

        DualRgb reconstructRgb(vec2 rawPos, vec4 steeringKernel) {
            vec3 detail = reconstructedRgbAt(rawPos);
            float sigma = max(uDenoiseSigmaRawPx, 0.5);
            vec2 offsets[5] = vec2[5](
                vec2(0.0),
                vec2(-1.0, 0.0),
                vec2(1.0, 0.0),
                vec2(0.0, -1.0),
                vec2(0.0, 1.0)
            );
            vec3 denoiseSum = vec3(0.0);
            float denoiseWeightSum = 0.0;
            for (int i = 0; i < 5; ++i) {
                vec2 offset = offsets[i];
                float steered = steeringWeight(offset * 0.5, steeringKernel);
                float steering = mix(
                    1.0,
                    steered,
                    clamp(uDenoiseSteeringStrength, 0.0, 1.0)
                );
                float weight = exp(
                    -0.5 * dot(offset, offset) / (sigma * sigma)
                ) * steering;
                vec3 sampleRgb = i == 0 ? detail : reconstructedRgbAt(rawPos + offset);
                denoiseSum += sampleRgb * weight;
                denoiseWeightSum += weight;
            }
            return DualRgb(detail, denoiseSum / max(denoiseWeightSum, 1e-6));
        }

        float noiseVariance(float signal, int bayerIndex, float lscGainForNoise) {
            float alpha = uNoiseAlphaByChannel[bayerIndex];
            float beta = uNoiseBetaByChannel[bayerIndex];
            if (alpha <= 0.0 && beta <= 0.0) return 1e-10;
            float gain = clamp(lscGainForNoise, 1e-3, max(uLscNoiseGainMax, 1.0));
            return max(alpha * clamp(signal, 0.0, 1.0) * gain + beta * gain * gain, 1e-10);
        }

        vec3 cameraNoiseVariance(vec3 signal, vec4 lsc) {
            return vec3(
                noiseVariance(signal.r, 0, lsc.r),
                0.5 * (
                    noiseVariance(signal.g, 1, lsc.g) +
                    noiseVariance(signal.g, 2, lsc.b)
                ),
                noiseVariance(signal.b, 3, lsc.a)
            );
        }

        vec2 opponentChromaConfidence(
            vec3 referenceRgb,
            vec3 currentRgb,
            vec3 differenceVariance
        ) {
            vec2 referenceChroma = referenceRgb.rb - referenceRgb.gg;
            vec2 currentChroma = currentRgb.rb - currentRgb.gg;
            vec2 chromaDelta = currentChroma - referenceChroma;
            // R-G and B-G are differences of independent sensor channels, therefore their
            // variances add. Keeping the two opponent axes separate prevents red noise from
            // reducing blue/green fusion weight and vice versa.
            vec2 opponentVariance = max(
                vec2(
                    differenceVariance.r + differenceVariance.g,
                    differenceVariance.b + differenceVariance.g
                ),
                vec2(1e-10)
            );
            vec2 normalizedSquaredResidual = chromaDelta * chromaDelta / opponentVariance;
            float sigmaStart = max(uChromaConsistencySigmaStart, 0.0);
            float sigmaFull = max(uChromaConsistencySigmaFull, sigmaStart + 1e-3);
            return vec2(1.0) - smoothstep(
                vec2(sigmaStart * sigmaStart),
                vec2(sigmaFull * sigmaFull),
                normalizedSquaredResidual
            );
        }

        float denoiseNeed(float signal) {
            return 1.0 - smoothstep(
                min(uDenoiseSignalLow, uDenoiseSignalHigh),
                max(uDenoiseSignalLow, uDenoiseSignalHigh),
                signal
            );
        }

        float denoiseStaticConfidence(float tile, float robust) {
            float tileConfidence = smoothstep(
                min(uDenoiseStaticTileStart, uDenoiseStaticTileEnd),
                max(uDenoiseStaticTileStart, uDenoiseStaticTileEnd),
                tile
            );
            float robustConfidence = smoothstep(
                min(uDenoiseStaticRobustStart, uDenoiseStaticRobustEnd),
                max(uDenoiseStaticRobustStart, uDenoiseStaticRobustEnd),
                robust
            );
            return clamp(tileConfidence * robustConfidence, 0.0, 1.0);
        }

        void main() {
            ivec2 accumulatorP = ivec2(gl_GlobalInvocationID.xy);
            ivec2 outputP = accumulatorP + uAccumulatorOrigin;
            if (accumulatorP.x >= uAccumulatorSize.x ||
                accumulatorP.y >= uAccumulatorSize.y ||
                outputP.x >= uOutputSize.x || outputP.y >= uOutputSize.y) {
                return;
            }

            vec2 refRaw = referenceRawPos(outputP);
            vec2 planePos = refRaw * 0.5;
            vec2 sourceRaw = refRaw;
            vec4 tileConfidence = vec4(1.0, 1.0, 0.0, 0.0);
            float robust = 1.0;
            if (uIsReference == 0) {
                sourceRaw += flowAt(planePos) * 2.0;
                if (sourceRaw.x < -0.5 || sourceRaw.y < -0.5 ||
                    sourceRaw.x > float(uImageSize.x) - 0.5 ||
                    sourceRaw.y > float(uImageSize.y) - 0.5) {
                    $outOfBoundsHandling
                    return;
                }
                tileConfidence = tileConfidenceAt(planePos);
                robust = spatiallySmoothedRobustness(planePos);
            }

            vec2 kernelUv = (clamp(planePos, vec2(0.0), vec2(uPlaneSize - ivec2(1))) +
                vec2(0.5)) / vec2(uPlaneSize);
            vec4 steeringKernel = texture(uKernel, kernelUv);
            DualRgb rgb = reconstructRgb(sourceRaw, steeringKernel);
            float signal = dot(rgb.denoise, vec3(0.2126, 0.7152, 0.0722));
            ivec2 nearestSource = clamp(ivec2(round(sourceRaw)), ivec2(0), uImageSize - ivec2(1));
            vec4 lsc = lscAt(nearestSource);
            float shadow = denoiseNeed(signal);
            vec3 highlight = vec3(1.0) - uHighlightSuppressionStrength *
                smoothstep(uHighlightSuppressionStart, uHighlightSuppressionEnd,
                    rgb.denoise);

            vec3 channelPrecision = vec3(1.0);
            vec3 channelConsistency = vec3(1.0);
            vec3 nrWeight;
            vec3 detailWeight;
            $rejectionVariable
            if (uIsReference != 0) {
                nrWeight = vec3(1.0);
                detailWeight = vec3(1.0);
            } else {
                vec3 referenceRgb = clamp(
                    texelFetch(uReferenceBase, accumulatorP, 0).rgb,
                    0.0,
                    1.0
                );
                ivec2 nearestReference = clamp(
                    ivec2(round(refRaw)),
                    ivec2(0),
                    uImageSize - ivec2(1)
                );
                vec4 referenceLsc = lscAt(nearestReference);
                vec3 referenceVariance = cameraNoiseVariance(referenceRgb, referenceLsc);
                // Both estimates use the reference signal so shot-noise weighting cannot be
                // biased by the current frame's random positive/negative noise excursion.
                vec3 currentExpectedVariance = cameraNoiseVariance(referenceRgb, lsc);
                channelPrecision = clamp(
                    referenceVariance / max(currentExpectedVariance, vec3(1e-10)),
                    vec3(0.25),
                    vec3(4.0)
                );
                vec2 chromaConfidence = opponentChromaConfidence(
                    referenceRgb,
                    rgb.denoise,
                    referenceVariance + currentExpectedVariance
                );
                channelConsistency = vec3(chromaConfidence.x, 1.0, chromaConfidence.y);
                // Keep the noise model channel-specific, but couple the final color support.
                // Independent RGB weights let G keep accumulating while R/B fall back to the
                // reference at chromatic or slightly misregistered edges. That combines channels
                // from different effective frame sets and creates green/magenta fringes. The
                // conservative shared support preserves the reconstructed RGB triplet as a unit.
                float sharedPrecision = min(
                    min(channelPrecision.r, channelPrecision.g),
                    channelPrecision.b
                );
                float sharedConsistency = min(chromaConfidence.x, chromaConfidence.y);
                float sharedHighlight = min(min(highlight.r, highlight.g), highlight.b);
                float nrCoverage = clamp(tileConfidence.r * robust, 0.0, 1.0) *
                    clamp(uRegistrationNrWeight, 0.0, 1.0);
                float detailCoverage = clamp(tileConfidence.g * robust, 0.0, 1.0);
                $rejectionAssignment
                float staticConfidence = denoiseStaticConfidence(tileConfidence.r, robust);
                float sharedNrWeight = uFrameWeight * sharedPrecision * sharedConsistency *
                    nrCoverage * sharedHighlight * mix(
                    1.0,
                    max(uDenoiseNonReferenceWeightBoost, 1.0),
                    shadow * staticConfidence
                );
                float sharedDetailWeight = uFrameWeight * sharedPrecision * sharedConsistency *
                    detailCoverage * sharedHighlight *
                    clamp(uRegistrationDetailWeight, 0.0, 1.0);
                nrWeight = vec3(sharedNrWeight);
                detailWeight = vec3(sharedDetailWeight);
            }
            $rejectionStore
            $participationStore

            if (any(greaterThan(nrWeight, vec3(1e-7)))) {
                vec2 nrRg = unpackHalf2x16(imageLoad(uNrSumRg, accumulatorP).r);
                vec2 nrBw = unpackHalf2x16(imageLoad(uNrSumBw, accumulatorP).r);
                vec2 nrWeightRg = unpackHalf2x16(imageLoad(uNrWeightRg, accumulatorP).r);
                nrRg += rgb.denoise.rg * nrWeight.rg;
                nrBw += vec2(rgb.denoise.b * nrWeight.b, nrWeight.b);
                nrWeightRg += nrWeight.rg;
                imageStore(
                    uNrSumRg,
                    accumulatorP,
                    uvec4(packHalf2x16(nrRg), 0u, 0u, 0u)
                );
                imageStore(
                    uNrSumBw,
                    accumulatorP,
                    uvec4(packHalf2x16(nrBw), 0u, 0u, 0u)
                );
                imageStore(
                    uNrWeightRg,
                    accumulatorP,
                    uvec4(packHalf2x16(nrWeightRg), 0u, 0u, 0u)
                );
            }
            if (any(greaterThan(detailWeight, vec3(1e-7)))) {
                vec2 detailRg = unpackHalf2x16(imageLoad(uDetailSumRg, accumulatorP).r);
                vec2 detailBw = unpackHalf2x16(imageLoad(uDetailSumBw, accumulatorP).r);
                vec2 detailWeightRg = unpackHalf2x16(
                    imageLoad(uDetailWeightRg, accumulatorP).r
                );
                detailRg += rgb.detail.rg * detailWeight.rg;
                detailBw += vec2(rgb.detail.b * detailWeight.b, detailWeight.b);
                detailWeightRg += detailWeight.rg;
                imageStore(
                    uDetailSumRg,
                    accumulatorP,
                    uvec4(packHalf2x16(detailRg), 0u, 0u, 0u)
                );
                imageStore(
                    uDetailSumBw,
                    accumulatorP,
                    uvec4(packHalf2x16(detailBw), 0u, 0u, 0u)
                );
                imageStore(
                    uDetailWeightRg,
                    accumulatorP,
                    uvec4(packHalf2x16(detailWeightRg), 0u, 0u, 0u)
                );
            }
        }
        """.trimIndent()
    }

    val captureReferenceBase: String = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        layout(local_size_x = 16, local_size_y = 16) in;
        uniform highp usampler2D uNrSumRg;
        uniform highp usampler2D uNrSumBw;
        uniform highp usampler2D uNrWeightRg;
        layout(rgba16f, binding = 0) writeonly uniform highp image2D uReferenceBase;
        uniform ivec2 uImageSize;

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (p.x >= uImageSize.x || p.y >= uImageSize.y) return;
            vec2 rg = unpackHalf2x16(texelFetch(uNrSumRg, p, 0).r);
            vec2 bw = unpackHalf2x16(texelFetch(uNrSumBw, p, 0).r);
            vec2 weightRg = max(
                unpackHalf2x16(texelFetch(uNrWeightRg, p, 0).r),
                vec2(1e-6)
            );
            float weightB = max(bw.y, 1e-6);
            imageStore(
                uReferenceBase,
                p,
                vec4(clamp(vec3(rg / weightRg, bw.x / weightB), 0.0, 1.0), 1.0)
            );
        }
    """.trimIndent()

    fun normalize(
        showRejections: Boolean,
        showSrDetail: Boolean = false,
    ): String {
        val rejectionUniforms = if (showRejections) {
            """
            uniform highp sampler2D uFusionRejections;
            uniform float uGlobalAlignmentRejectCount;
            uniform float uAcceptedFusionFrameCount;
            """.trimIndent()
        } else {
            ""
        }
        val debugColorUniform = if (showRejections || showSrDetail) {
            "uniform vec3 uDebugNeutralRgb;"
        } else {
            ""
        }
        val rejectionOverlay = if (showRejections) {
            """
            {
                vec4 rejection = texelFetch(uFusionRejections, p, 0);
                float reasonId = rejection.x;
                float displayStrength = 0.0;
                if (reasonId > 0.0 && rejection.a > 0.0) {
                    float rejectedFrameFraction = clamp(
                        rejection.a / max(uAcceptedFusionFrameCount, 1.0),
                        0.0,
                        1.0
                    );
                    displayStrength = sqrt(rejectedFrameFraction);
                } else if (center.lumaConfidence <= 1e-6 &&
                    uGlobalAlignmentRejectCount > 0.0) {
                    reasonId = 8.0;
                    displayStrength = 1.0;
                }
                vec3 displayColor = vec3(0.5);
                if (reasonId < 1.5) {
                    displayColor = vec3(1.0, 1.0, 0.0);       // proxy validity: yellow
                } else if (reasonId < 2.5) {
                    displayColor = vec3(1.0, 0.35, 0.0);      // patch peak: orange
                } else if (reasonId < 3.5) {
                    displayColor = vec3(1.0, 0.0, 1.0);       // patch score: magenta
                } else if (reasonId < 4.5) {
                    displayColor = vec3(0.0, 1.0, 1.0);       // absolute flow: cyan
                } else if (reasonId < 5.5) {
                    displayColor = vec3(0.0, 0.0, 1.0);       // local flow range: blue
                } else if (reasonId < 6.5) {
                    displayColor = vec3(1.0, 0.0, 0.0);       // photometric residual: red
                } else if (reasonId < 7.5) {
                    displayColor = vec3(0.0, 1.0, 0.0);       // tile aggregation: green
                } else if (reasonId < 8.5) {
                    displayColor = vec3(0.45, 0.0, 1.0);      // frame gate: violet
                } else if (reasonId < 9.5) {
                    displayColor = vec3(0.0, 1.0, 0.35);      // out of bounds: turquoise
                } else if (reasonId < 10.5) {
                    displayColor = vec3(1.0, 0.20, 0.45);     // sensor precision: pink
                } else if (reasonId < 11.5) {
                    displayColor = vec3(0.45, 1.0, 0.0);      // highlight suppression: lime
                } else if (reasonId < 12.5) {
                    displayColor = vec3(1.0, 0.0, 1.0);       // opponent chroma: magenta
                }
                if (reasonId > 0.0 && displayStrength > 0.0) {
                    rgb = mix(
                        rgb,
                        displayColor * uDebugNeutralRgb,
                        displayStrength
                    );
                }
            }
            """.trimIndent()
        } else {
            ""
        }
        val srDetailOverlay = if (showSrDetail) {
            """
            if (srDetailConfidence > 1e-6) {
                vec3 srDetailColor = vec3(0.0, 1.0, 1.0) * uDebugNeutralRgb;
                rgb = mix(rgb, srDetailColor, srDetailConfidence);
            }
            """.trimIndent()
        } else {
            ""
        }
        return """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        in vec2 vTexCoord;
        layout(location = 0) out highp uvec4 fragColor;
        uniform highp usampler2D uNrSumRg;
        uniform highp usampler2D uNrSumBw;
        uniform highp usampler2D uNrWeightRg;
        uniform highp usampler2D uDetailSumRg;
        uniform highp usampler2D uDetailSumBw;
        uniform highp usampler2D uDetailWeightRg;
        uniform sampler2D uReferenceBase;
        $rejectionUniforms
        $debugColorUniform
        uniform float uNoiseAlphaByChannel[4];
        uniform float uNoiseBetaByChannel[4];
        uniform float uNrConfidenceStart;
        uniform float uNrConfidenceFull;
        uniform float uDetailConfidenceStart;
        uniform float uDetailConfidenceFull;
        uniform float uReferenceDetailFloor;
        uniform float uDetailChromaStrength;
        uniform float uBilateralNoiseScale;
        uniform float uFinalSmoothStrength;
        uniform float uLowLightSignalLow;
        uniform float uLowLightSignalHigh;
        uniform float uLowLightSmoothBoost;
        uniform float uMaxSmoothStrength;
        uniform vec3 uCalculationGains;
        uniform ivec2 uAccumulatorOrigin;
        uniform ivec2 uAccumulatorSize;
        uniform ivec2 uOutputOrigin;

        struct NrState {
            vec3 base;
            vec3 nr;
            vec3 noise;
            vec3 confidence;
            vec3 consistency;
            vec3 effectiveSupport;
            vec3 weight;
            float lumaConfidence;
        };

        struct WeightedRgb {
            vec3 value;
            vec3 weight;
        };

        ivec2 clampAccumulatorPos(ivec2 p) {
            return clamp(p, ivec2(0), uAccumulatorSize - ivec2(1));
        }

        vec3 sensorNoise(vec3 rgb) {
            return max(vec3(
                uNoiseAlphaByChannel[0] * rgb.r + uNoiseBetaByChannel[0],
                0.5 * (
                    uNoiseAlphaByChannel[1] + uNoiseAlphaByChannel[2]
                ) * rgb.g + 0.5 * (
                    uNoiseBetaByChannel[1] + uNoiseBetaByChannel[2]
                ),
                uNoiseAlphaByChannel[3] * rgb.b + uNoiseBetaByChannel[3]
            ), vec3(1e-10));
        }

        WeightedRgb packedRgbWeightAt(
            highp usampler2D rgTexture,
            highp usampler2D bwTexture,
            highp usampler2D weightRgTexture,
            ivec2 p
        ) {
            p = clampAccumulatorPos(p);
            vec2 rg = unpackHalf2x16(texelFetch(rgTexture, p, 0).r);
            vec2 bw = unpackHalf2x16(texelFetch(bwTexture, p, 0).r);
            vec2 weightRg = max(
                unpackHalf2x16(texelFetch(weightRgTexture, p, 0).r),
                vec2(0.0)
            );
            vec3 weight = vec3(weightRg, max(bw.y, 0.0));
            vec3 value = vec3(
                weight.r > 1e-7 ? rg.r / weight.r : 0.0,
                weight.g > 1e-7 ? rg.g / weight.g : 0.0,
                weight.b > 1e-7 ? bw.x / weight.b : 0.0
            );
            return WeightedRgb(clamp(value, 0.0, 1.0), weight);
        }

        NrState nrStateAt(ivec2 p) {
            p = clampAccumulatorPos(p);
            vec3 base = clamp(texelFetch(uReferenceBase, p, 0).rgb, 0.0, 1.0);
            WeightedRgb sampleValue = packedRgbWeightAt(
                uNrSumRg,
                uNrSumBw,
                uNrWeightRg,
                p
            );
            vec3 weight = sampleValue.weight;
            vec3 nr = vec3(
                weight.r > 1e-7 ? sampleValue.value.r : base.r,
                weight.g > 1e-7 ? sampleValue.value.g : base.g,
                weight.b > 1e-7 ? sampleValue.value.b : base.b
            );
            vec3 noise = sensorNoise(nr);
            vec3 noiseStd = sqrt(max(noise + sensorNoise(base), vec3(1e-10)));
            vec3 residual = abs(nr - base);
            vec3 channelConsistency = vec3(1.0) - smoothstep(
                3.0 * noiseStd + vec3(0.002),
                10.0 * noiseStd + vec3(0.015),
                residual
            );
            vec3 additionalWeight = max(weight - vec3(1.0), vec3(0.0));
            vec3 channelSupport = smoothstep(
                vec3(min(uNrConfidenceStart, uNrConfidenceFull)),
                vec3(max(uNrConfidenceStart, uNrConfidenceFull)),
                additionalWeight
            );
            // Accumulation uses one shared color weight. Keep reference fallback coupled as
            // well; per-channel fallback would recreate the same effective-frame mismatch here.
            float sharedConsistency = min(
                min(channelConsistency.r, channelConsistency.g),
                channelConsistency.b
            );
            float sharedSupport = min(min(channelSupport.r, channelSupport.g), channelSupport.b);
            float sharedConfidence = clamp(
                sharedSupport * mix(0.35, 1.0, sharedConsistency),
                0.0,
                1.0
            );
            vec3 consistency = vec3(sharedConsistency);
            vec3 confidence = vec3(sharedConfidence);
            return NrState(
                base,
                nr,
                noise,
                clamp(confidence, 0.0, 1.0),
                clamp(consistency, 0.0, 1.0),
                max(weight, vec3(1.0)),
                weight,
                sharedConfidence
            );
        }

        void main() {
            ivec2 outputP = ivec2(gl_FragCoord.xy) + uOutputOrigin;
            ivec2 p = outputP - uAccumulatorOrigin;
            NrState center = nrStateAt(p);
            vec3 safeCenter = mix(center.base, center.nr, center.confidence);
            float rangeVariance = max(
                dot(center.noise / center.effectiveSupport, vec3(0.3333333)) *
                    max(uBilateralNoiseScale, 1.0),
                1e-7
            );
            vec3 bilateralSum = vec3(0.0);
            float bilateralWeight = 0.0;
            vec3 baseLeft = center.base;
            vec3 baseRight = center.base;
            vec3 baseUp = center.base;
            vec3 baseDown = center.base;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    ivec2 q = p + ivec2(x, y);
                    NrState neighbor = nrStateAt(q);
                    if (x == -1 && y == 0) baseLeft = neighbor.base;
                    if (x == 1 && y == 0) baseRight = neighbor.base;
                    if (x == 0 && y == -1) baseDown = neighbor.base;
                    if (x == 0 && y == 1) baseUp = neighbor.base;
                    vec3 guideDelta = neighbor.base - center.base;
                    float spatial = (x == 0 && y == 0) ? 4.0 :
                        ((x == 0 || y == 0) ? 2.0 : 1.0);
                    float range = exp(-dot(guideDelta, guideDelta) / rangeVariance);
                    float weight = spatial * range;
                    bilateralSum += mix(
                        neighbor.base,
                        neighbor.nr,
                        neighbor.confidence
                    ) * weight;
                    bilateralWeight += weight;
                }
            }
            vec3 bilateral = bilateralSum / max(bilateralWeight, 1e-6);
            vec3 gradientX = 0.5 * (baseRight - baseLeft);
            vec3 gradientY = 0.5 * (baseUp - baseDown);
            float gradient = sqrt(
                dot(gradientX, gradientX) + dot(gradientY, gradientY)
            );
            float finalNoiseStd = sqrt(max(
                dot(center.noise / center.effectiveSupport, vec3(0.3333333)),
                1e-10
            ));
            float structure = smoothstep(
                1.5 * finalNoiseStd,
                6.0 * finalNoiseStd + 1e-5,
                gradient
            );
            float luma = dot(safeCenter, vec3(0.2126, 0.7152, 0.0722));
            float shadow = 1.0 - smoothstep(
                min(uLowLightSignalLow, uLowLightSignalHigh),
                max(uLowLightSignalLow, uLowLightSignalHigh),
                luma
            );
            float spatialSmooth = uFinalSmoothStrength *
                (0.35 + uLowLightSmoothBoost * shadow) *
                (1.0 - 0.82 * structure) *
                (1.0 + 0.35 * (1.0 - center.lumaConfidence));
            spatialSmooth = clamp(spatialSmooth, 0.0, uMaxSmoothStrength);
            vec3 nrSpatial = mix(safeCenter, bilateral, spatialSmooth);

            WeightedRgb detailSample = packedRgbWeightAt(
                uDetailSumRg,
                uDetailSumBw,
                uDetailWeightRg,
                p
            );
            vec3 detail = vec3(
                detailSample.weight.r > 1e-7 ? detailSample.value.r : center.base.r,
                detailSample.weight.g > 1e-7 ? detailSample.value.g : center.base.g,
                detailSample.weight.b > 1e-7 ? detailSample.value.b : center.base.b
            );
            vec3 additionalDetailWeight = max(
                detailSample.weight - vec3(1.0),
                vec3(0.0)
            );
            vec3 detailSupport = smoothstep(
                vec3(min(uDetailConfidenceStart, uDetailConfidenceFull)),
                vec3(max(uDetailConfidenceStart, uDetailConfidenceFull)),
                additionalDetailWeight
            );
            vec3 lumaWeights = vec3(0.2126, 0.7152, 0.0722);
            float detailLumaSupport = dot(detailSupport, lumaWeights);
            float centerLumaConsistency = dot(center.consistency, lumaWeights);
            float srDetailConfidence = detailLumaSupport * centerLumaConsistency;
            float referenceFloor = clamp(uReferenceDetailFloor, 0.0, 1.0) * structure;
            float detailConfidence = max(
                referenceFloor,
                detailLumaSupport * centerLumaConsistency
            );
            vec3 calculationGains = max(uCalculationGains, vec3(1e-6));
            vec3 nrCalculation = nrSpatial * calculationGains;
            vec3 detailCalculation = detail * calculationGains;
            float detailLumaDelta = abs(dot(
                detailCalculation - nrCalculation,
                vec3(0.2126, 0.7152, 0.0722)
            ));
            float flatStability = 1.0 - smoothstep(
                3.0 * finalNoiseStd + 0.003,
                10.0 * finalNoiseStd + 0.020,
                detailLumaDelta
            );
            float detailStability = mix(flatStability, 1.0, structure);
            detailConfidence *= detailStability;
            srDetailConfidence = clamp(srDetailConfidence * detailStability, 0.0, 1.0);
            detailConfidence = clamp(detailConfidence, 0.0, 1.0);
            // Radiance is stored as un-white-balanced camera RGB. Equal RGB deltas are not
            // achromatic in that domain: after capture WB they turn into complementary
            // magenta/green edge ringing. Extract, limit and inject luma detail in the
            // calculation-WB domain, then return to the camera-RGB output contract.
            float signedLumaDetail = dot(
                detailCalculation - nrCalculation,
                lumaWeights
            ) *
                detailConfidence;
            float lowerHeadroom = min(
                min(nrCalculation.r, nrCalculation.g),
                nrCalculation.b
            );
            vec3 calculationCeiling = calculationGains;
            vec3 availableHeadroom = max(calculationCeiling - nrCalculation, vec3(0.0));
            float upperHeadroom = min(
                min(availableHeadroom.r, availableHeadroom.g),
                availableHeadroom.b
            );
            signedLumaDetail = clamp(
                signedLumaDetail,
                -lowerHeadroom,
                upperHeadroom
            );
            vec3 lumaDetail =
                (nrCalculation + vec3(signedLumaDetail)) / calculationGains;
            vec3 fullRgbDetail = nrSpatial + detailConfidence * (detail - nrSpatial);
            float chromaConfidence = clamp(uDetailChromaStrength, 0.0, 1.0) *
                min(min(detailSupport.r, detailSupport.g), detailSupport.b) *
                min(min(center.consistency.r, center.consistency.g), center.consistency.b);
            vec3 rgb = clamp(
                mix(lumaDetail, fullRgbDetail, chromaConfidence),
                0.0,
                1.0
            );
            $srDetailOverlay
            $rejectionOverlay
            fragColor = uvec4(
                uvec3(floor(rgb * 65535.0 + vec3(0.5))),
                65535u
            );
        }
        """.trimIndent()
    }
}
