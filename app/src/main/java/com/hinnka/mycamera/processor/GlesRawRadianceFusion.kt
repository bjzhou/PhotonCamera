package com.hinnka.mycamera.processor

import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs
import kotlin.math.ln

/**
 * Unified same-exposure RAW fusion.
 *
 * The reconstruction algorithm is independent of output scale: every accepted RAW frame
 * contributes a wide-kernel denoise estimate and a narrow-kernel detail estimate in the
 * sensor-linear RGB domain. [outputScale] only selects the output sampling grid.
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
)

internal object GlesRawRadianceFusionShaders {
    val clearAccumulator: String = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout(local_size_x = 16, local_size_y = 16) in;
        layout(r32ui, binding = 0) writeonly uniform highp uimage2D uNrSumRg;
        layout(r32ui, binding = 1) writeonly uniform highp uimage2D uNrSumBw;
        layout(r32ui, binding = 2) writeonly uniform highp uimage2D uDetailSumRg;
        layout(r32ui, binding = 3) writeonly uniform highp uimage2D uDetailSumBw;
        uniform ivec2 uImageSize;

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (p.x >= uImageSize.x || p.y >= uImageSize.y) return;
            imageStore(uNrSumRg, p, uvec4(0u));
            imageStore(uNrSumBw, p, uvec4(0u));
            imageStore(uDetailSumRg, p, uvec4(0u));
            imageStore(uDetailSumBw, p, uvec4(0u));
        }
    """.trimIndent()

    fun accumulate(rawCommon: String): String = """
        #version 310 es
        $rawCommon
        layout(local_size_x = 16, local_size_y = 16) in;
        uniform sampler2D uRcdRgbStripe;
        uniform sampler2D uFlowGrid;
        uniform sampler2D uRobustness;
        uniform sampler2D uTileMask;
        uniform sampler2D uKernel;
        uniform sampler2D uLensShadingMap;
        layout(r32ui, binding = 0) uniform highp uimage2D uNrSumRg;
        layout(r32ui, binding = 1) uniform highp uimage2D uNrSumBw;
        layout(r32ui, binding = 2) uniform highp uimage2D uDetailSumRg;
        layout(r32ui, binding = 3) uniform highp uimage2D uDetailSumBw;
        uniform ivec2 uImageSize;
        uniform ivec2 uSourceSize;
        uniform int uSourceRowOffset;
        uniform ivec2 uOutputSize;
        uniform ivec2 uPlaneSize;
        uniform ivec2 uGridSize;
        uniform int uTileSize;
        uniform int uIsReference;
        uniform int uCfaPattern;
        uniform float uBlackLevel[4];
        uniform float uWhiteLevel;
        uniform float uNoiseAlphaByChannel[4];
        uniform float uNoiseBetaByChannel[4];
        uniform float uOutputScale;
        uniform float uFrameWeight;
        uniform float uRegistrationNrWeight;
        uniform float uRegistrationDetailWeight;
        uniform float uDenoiseSigmaRawPx;
        uniform float uDenoiseSteeringStrength;
        uniform float uRobustnessSpatialMix;
        uniform float uRobustnessFloorFactor;
        uniform float uPrecisionReferenceSignal;
        uniform float uLscNoiseGainMax;
        uniform float uDenoiseSignalLow;
        uniform float uDenoiseSignalHigh;
        uniform float uDenoiseStaticRobustStart;
        uniform float uDenoiseStaticRobustEnd;
        uniform float uDenoiseStaticTileStart;
        uniform float uDenoiseStaticTileEnd;
        uniform float uDenoiseNonReferenceWeightBoost;
        uniform float uDenoiseNonReferenceWeightFloor;
        uniform float uDenoiseReferenceDarkWeightScale;
        uniform float uHighlightSuppressionStrength;
        uniform float uHighlightSuppressionStart;
        uniform float uHighlightSuppressionEnd;
        uniform int uOutputRowOffset;
        uniform int uOutputRowCount;

        struct DualRgb {
            vec3 detail;
            vec3 denoise;
        };

        vec2 referenceRawPos(ivec2 outputPos) {
            return (vec2(outputPos) + vec2(0.5)) / max(uOutputScale, 1.0) - vec2(0.5);
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

        float tileMaskAt(vec2 planePos) {
            vec2 grid = planePos / float(uTileSize) - vec2(0.5);
            vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
            return texture(uTileMask, clamp(uv, vec2(0.0), vec2(1.0))).r;
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

        vec3 rcdRgbAt(vec2 globalRawPos) {
            vec2 localPos = globalRawPos - vec2(0.0, float(uSourceRowOffset));
            vec2 maxPos = vec2(max(uSourceSize - ivec2(1), ivec2(0)));
            vec2 storageSize = vec2(textureSize(uRcdRgbStripe, 0));
            vec2 uv = (clamp(localPos, vec2(0.0), maxPos) + vec2(0.5)) /
                storageSize;
            return clamp(texture(uRcdRgbStripe, uv).rgb, 0.0, 1.0);
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
            vec3 detail = rcdRgbAt(rawPos);
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
                vec3 sampleRgb = i == 0 ? detail : rcdRgbAt(rawPos + offset);
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

        float precisionWeight(float signal, int bayerIndex, float lscGainForNoise) {
            float alpha = uNoiseAlphaByChannel[bayerIndex];
            float beta = uNoiseBetaByChannel[bayerIndex];
            if (alpha <= 0.0 && beta <= 0.0) return 1.0;
            float variance = noiseVariance(signal, bayerIndex, lscGainForNoise);
            float referenceVariance = noiseVariance(uPrecisionReferenceSignal, bayerIndex, 1.0);
            return clamp(referenceVariance / variance, 0.05, 4.0);
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
            ivec2 outputP = accumulatorP + ivec2(0, uOutputRowOffset);
            if (accumulatorP.x >= uOutputSize.x ||
                accumulatorP.y >= uOutputRowCount ||
                outputP.y >= uOutputSize.y) {
                return;
            }

            vec2 refRaw = referenceRawPos(outputP);
            vec2 planePos = refRaw * 0.5;
            vec2 sourceRaw = refRaw;
            float tile = 1.0;
            float robust = 1.0;
            if (uIsReference == 0) {
                sourceRaw += flowAt(planePos) * 2.0;
                if (sourceRaw.x < -0.5 || sourceRaw.y < -0.5 ||
                    sourceRaw.x > float(uImageSize.x) - 0.5 ||
                    sourceRaw.y > float(uImageSize.y) - 0.5) {
                    return;
                }
                tile = tileMaskAt(planePos);
                robust = spatiallySmoothedRobustness(planePos);
            }

            vec2 kernelUv = (clamp(planePos, vec2(0.0), vec2(uPlaneSize - ivec2(1))) +
                vec2(0.5)) / vec2(uPlaneSize);
            vec4 steeringKernel = texture(uKernel, kernelUv);
            DualRgb rgb = reconstructRgb(sourceRaw, steeringKernel);
            float signal = dot(rgb.denoise, vec3(0.2126, 0.7152, 0.0722));
            ivec2 nearestSource = clamp(ivec2(round(sourceRaw)), ivec2(0), uImageSize - ivec2(1));
            vec4 lsc = lscAt(nearestSource);
            float redPrecision = precisionWeight(rgb.denoise.r, 0, lsc.r);
            float greenPrecision = 0.5 * (
                precisionWeight(rgb.denoise.g, 1, lsc.g) +
                precisionWeight(rgb.denoise.g, 2, lsc.b)
            );
            float bluePrecision = precisionWeight(rgb.denoise.b, 3, lsc.a);
            float sensorPrecision = (redPrecision + greenPrecision + bluePrecision) / 3.0;
            float shadow = denoiseNeed(signal);
            float highlight = 1.0 - uHighlightSuppressionStrength *
                smoothstep(uHighlightSuppressionStart, uHighlightSuppressionEnd,
                    max(max(rgb.denoise.r, rgb.denoise.g), rgb.denoise.b));

            float nrWeight;
            float detailWeight;
            if (uIsReference != 0) {
                nrWeight = 1.0;
                detailWeight = 1.0;
            } else {
                float robustFloor = max(robust, uRobustnessFloorFactor * tile);
                float strictCoverage = clamp(tile * robustFloor, 0.0, 1.0);
                float relaxedRobust = smoothstep(
                    0.25 * min(uDenoiseStaticRobustStart, uDenoiseStaticRobustEnd),
                    min(uDenoiseStaticRobustStart, uDenoiseStaticRobustEnd),
                    robust
                );
                float relaxedCoverage = shadow * relaxedRobust *
                    max(uDenoiseNonReferenceWeightFloor, 0.0);
                float nrCoverage = max(
                    strictCoverage,
                    relaxedCoverage
                ) * clamp(uRegistrationNrWeight, 0.0, 1.0);
                float staticConfidence = denoiseStaticConfidence(tile, robust);
                nrWeight = uFrameWeight * sensorPrecision * nrCoverage * highlight * mix(
                    1.0,
                    max(uDenoiseNonReferenceWeightBoost, 1.0),
                    shadow * staticConfidence
                );
                detailWeight = uFrameWeight * sensorPrecision * strictCoverage * highlight *
                    clamp(uRegistrationDetailWeight, 0.0, 1.0);
            }

            if (nrWeight > 1e-7) {
                vec2 nrRg = unpackHalf2x16(imageLoad(uNrSumRg, accumulatorP).r);
                vec2 nrBw = unpackHalf2x16(imageLoad(uNrSumBw, accumulatorP).r);
                nrRg += rgb.denoise.rg * nrWeight;
                nrBw += vec2(rgb.denoise.b, 1.0) * nrWeight;
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
            }
            if (detailWeight > 1e-7) {
                vec2 detailRg = unpackHalf2x16(imageLoad(uDetailSumRg, accumulatorP).r);
                vec2 detailBw = unpackHalf2x16(imageLoad(uDetailSumBw, accumulatorP).r);
                detailRg += rgb.detail.rg * detailWeight;
                detailBw += vec2(rgb.detail.b, 1.0) * detailWeight;
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
            }
        }
    """.trimIndent()

    val captureReferenceBase: String = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        layout(local_size_x = 16, local_size_y = 16) in;
        uniform highp usampler2D uNrSumRg;
        uniform highp usampler2D uNrSumBw;
        layout(rgba16f, binding = 0) writeonly uniform highp image2D uReferenceBase;
        uniform ivec2 uImageSize;

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (p.x >= uImageSize.x || p.y >= uImageSize.y) return;
            vec2 rg = unpackHalf2x16(texelFetch(uNrSumRg, p, 0).r);
            vec2 bw = unpackHalf2x16(texelFetch(uNrSumBw, p, 0).r);
            float weight = max(bw.y, 1e-6);
            imageStore(
                uReferenceBase,
                p,
                vec4(clamp(vec3(rg / weight, bw.x / weight), 0.0, 1.0), 1.0)
            );
        }
    """.trimIndent()

    val normalize: String = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        in vec2 vTexCoord;
        layout(location = 0) out highp uvec4 fragColor;
        uniform highp usampler2D uNrSumRg;
        uniform highp usampler2D uNrSumBw;
        uniform highp usampler2D uDetailSumRg;
        uniform highp usampler2D uDetailSumBw;
        uniform sampler2D uReferenceBase;
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
        uniform int uAccumulatorRowOffset;
        uniform int uOutputRowOffset;

        struct NrState {
            vec3 base;
            vec3 nr;
            vec3 noise;
            float confidence;
            float consistency;
            float effectiveSupport;
            float weight;
        };

        ivec2 clampAccumulatorPos(ivec2 p) {
            return clamp(p, ivec2(0), textureSize(uNrSumRg, 0) - ivec2(1));
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

        vec4 packedRgbWeightAt(
            highp usampler2D rgTexture,
            highp usampler2D bwTexture,
            ivec2 p
        ) {
            p = clampAccumulatorPos(p);
            vec2 rg = unpackHalf2x16(texelFetch(rgTexture, p, 0).r);
            vec2 bw = unpackHalf2x16(texelFetch(bwTexture, p, 0).r);
            float weight = max(bw.y, 0.0);
            return vec4(
                weight > 1e-7 ? clamp(vec3(rg / weight, bw.x / weight), 0.0, 1.0) :
                    vec3(0.0),
                weight
            );
        }

        NrState nrStateAt(ivec2 p) {
            p = clampAccumulatorPos(p);
            vec3 base = clamp(texelFetch(uReferenceBase, p, 0).rgb, 0.0, 1.0);
            vec4 sampleValue = packedRgbWeightAt(uNrSumRg, uNrSumBw, p);
            float weight = sampleValue.a;
            vec3 nr = weight > 1e-7 ? sampleValue.rgb : base;
            vec3 noise = sensorNoise(nr);
            float noiseStd = sqrt(max(dot(noise, vec3(0.3333333)), 1e-10));
            float residual = abs(dot(nr - base, vec3(0.2126, 0.7152, 0.0722)));
            float consistency = 1.0 - smoothstep(
                3.0 * noiseStd + 0.002,
                10.0 * noiseStd + 0.015,
                residual
            );
            float additionalWeight = max(weight - 1.0, 0.0);
            float support = smoothstep(
                min(uNrConfidenceStart, uNrConfidenceFull),
                max(uNrConfidenceStart, uNrConfidenceFull),
                additionalWeight
            );
            float confidence = support * mix(0.35, 1.0, consistency);
            return NrState(
                base,
                nr,
                noise,
                clamp(confidence, 0.0, 1.0),
                clamp(consistency, 0.0, 1.0),
                max(weight, 1.0),
                weight
            );
        }

        void main() {
            ivec2 outputP = ivec2(gl_FragCoord.xy) + ivec2(0, uOutputRowOffset);
            ivec2 p = outputP - ivec2(0, uAccumulatorRowOffset);
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
                (1.0 + 0.35 * (1.0 - center.confidence));
            spatialSmooth = clamp(spatialSmooth, 0.0, uMaxSmoothStrength);
            vec3 nrSpatial = mix(safeCenter, bilateral, spatialSmooth);

            vec4 detailSample = packedRgbWeightAt(uDetailSumRg, uDetailSumBw, p);
            vec3 detail = detailSample.a > 1e-7 ? detailSample.rgb : center.base;
            float additionalDetailWeight = max(detailSample.a - 1.0, 0.0);
            float detailSupport = smoothstep(
                min(uDetailConfidenceStart, uDetailConfidenceFull),
                max(uDetailConfidenceStart, uDetailConfidenceFull),
                additionalDetailWeight
            );
            float referenceFloor = clamp(uReferenceDetailFloor, 0.0, 1.0) * structure;
            float detailConfidence = max(
                referenceFloor,
                detailSupport * center.consistency
            );
            float detailLumaDelta = abs(dot(
                detail - nrSpatial,
                vec3(0.2126, 0.7152, 0.0722)
            ));
            float flatStability = 1.0 - smoothstep(
                3.0 * finalNoiseStd + 0.003,
                10.0 * finalNoiseStd + 0.020,
                detailLumaDelta
            );
            detailConfidence *= mix(flatStability, 1.0, structure);
            detailConfidence = clamp(detailConfidence, 0.0, 1.0);
            vec3 lumaWeights = vec3(0.2126, 0.7152, 0.0722);
            float signedLumaDetail = dot(detail - nrSpatial, lumaWeights) *
                detailConfidence;
            float lowerHeadroom = min(min(nrSpatial.r, nrSpatial.g), nrSpatial.b);
            float upperHeadroom = 1.0 -
                max(max(nrSpatial.r, nrSpatial.g), nrSpatial.b);
            signedLumaDetail = clamp(
                signedLumaDetail,
                -lowerHeadroom,
                upperHeadroom
            );
            vec3 lumaDetail = nrSpatial + vec3(signedLumaDetail);
            vec3 fullRgbDetail = nrSpatial + detailConfidence * (detail - nrSpatial);
            float chromaConfidence = clamp(uDetailChromaStrength, 0.0, 1.0) *
                detailSupport * center.consistency;
            vec3 rgb = clamp(
                mix(lumaDetail, fullRgbDetail, chromaConfidence),
                0.0,
                1.0
            );
            fragColor = uvec4(
                uvec3(floor(rgb * 65535.0 + vec3(0.5))),
                65535u
            );
        }
    """.trimIndent()
}
