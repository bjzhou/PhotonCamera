package com.hinnka.mycamera.processor

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.model.SafeImage

data class GlesRawHdrInputFrame(
    val image: SafeImage,
    val exposureProduct: Double,
)

internal object GlesRawHdrConfig {
    const val RGB_STRIPE_ROWS = 256
    const val WEIGHT_SMOOTH_RADIUS = 2
    const val WEIGHT_SMOOTH_HALO_ROWS = WEIGHT_SMOOTH_RADIUS
    const val SHORT_ALIGNMENT_SCORE_BUFFER_BINDING = 8
    const val SHORT_ALIGNMENT_SCORE_STRIDE = 4
    const val ALIGN_LEVEL = 2
    const val SHORT_GLOBAL_SEARCH_RADIUS_LEVEL = 8
    const val SHORT_GLOBAL_SAMPLE_STEP = 6
    const val SHORT_GLOBAL_SAMPLE_BORDER = 8
    const val DEBUG_OUTPUT_SOURCE = 0
}

internal object GlesRawHdrShaders {
    /** HDR 累加结果到统一 RCD 工作 CFA/种子 RGB 缓冲的输入适配器。 */
    fun normalCfaInputAdapter(rawCommon: String): String = """
        #version 310 es
        $rawCommon
        layout(local_size_x = 16, local_size_y = 16) in;
        uniform highp usampler2D uAccumulatorValueWeight;
        uniform highp usampler2D uReferenceRaw;
        uniform sampler2D uLensShadingMap;
        uniform ivec2 uImageSize;
        uniform ivec2 uStripeSize;
        uniform int uSourceRowOffset;
        uniform int uCfaPattern;
        uniform float uBlackLevel[4];
        uniform float uWhiteLevel;
        uniform float uReferenceExposureScale;
        uniform vec4 uCalculationWbGains;
        layout(std430, binding = 0) buffer CFA_Buf { float cfa[]; };
        layout(std430, binding = 1) buffer RGB0_Buf { float rgb0[]; };
        layout(std430, binding = 2) buffer RGB1_Buf { float rgb1[]; };
        layout(std430, binding = 3) buffer RGB2_Buf { float rgb2[]; };

        float lscGain(ivec2 p) {
            vec2 uv = (vec2(p) + vec2(0.5)) / vec2(uImageSize);
            vec4 gains = texture(uLensShadingMap, clamp(uv, vec2(0.0), vec2(1.0)));
            return gains[lensShadingChannelAt(uCfaPattern, p)];
        }

        float referenceValue(ivec2 p, int channel) {
            float raw = float(texelFetch(uReferenceRaw, p, 0).r);
            float range = max(uWhiteLevel - uBlackLevel[channel], 1.0);
            return max(raw - uBlackLevel[channel], 0.0) * lscGain(p) /
                range * uReferenceExposureScale;
        }

        void main() {
            ivec2 local = ivec2(gl_GlobalInvocationID.xy);
            if (local.x >= uStripeSize.x || local.y >= uStripeSize.y) return;
            ivec2 global = ivec2(local.x, local.y + uSourceRowOffset);
            int channel = bayerIndexAt(uCfaPattern, global);
            vec2 valueWeight = unpackHalf2x16(texelFetch(uAccumulatorValueWeight, global, 0).r);
            float value = valueWeight.y > 0.02 ?
                valueWeight.x / max(valueWeight.y, 1e-6) :
                referenceValue(global, channel);
            value = clamp(value * max(uCalculationWbGains[channel], 1e-6), 0.0, 8.0);
            int index = local.y * uStripeSize.x + local.x;
            cfa[index] = value;
            rgb0[index] = channel == 0 ? value : 0.0;
            rgb1[index] = (channel == 1 || channel == 2) ? value : 0.0;
            rgb2[index] = channel == 3 ? value : 0.0;
        }
    """.trimIndent()

    /** RCD 完成后的 HDR 曝光域转换；解马赛克与边界处理不在这里实现。 */
    val workingRgbStore: String = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout(local_size_x = 16, local_size_y = 16) in;
        layout(std430, binding = 1) readonly buffer RcdRgb0_Buf { float rcdRgb0[]; };
        layout(std430, binding = 2) readonly buffer RcdRgb1_Buf { float rcdRgb1[]; };
        layout(std430, binding = 3) readonly buffer RcdRgb2_Buf { float rcdRgb2[]; };
        layout(rgba16f, binding = 0) writeonly uniform highp image2D uOutput;
        uniform ivec2 uSourceSize;
        uniform vec3 uCalculationGains;
        uniform float uExposureScale;
        uniform int uDesaturateBeforeExposureScale;

        vec3 desaturateHighlightPreservingLuma(vec3 rgb) {
            rgb = max(rgb, vec3(0.0));
            const vec3 LUMA = vec3(0.2126, 0.7152, 0.0722);
            float luma = dot(rgb, LUMA);
            float ceiling = max(1.0, luma);
            vec3 chroma = rgb - vec3(luma);
            float chromaScale = 1.0;
            if (chroma.r > 0.0) {
                chromaScale = min(chromaScale, (ceiling - luma) / chroma.r);
            }
            if (chroma.g > 0.0) {
                chromaScale = min(chromaScale, (ceiling - luma) / chroma.g);
            }
            if (chroma.b > 0.0) {
                chromaScale = min(chromaScale, (ceiling - luma) / chroma.b);
            }
            return vec3(luma) + chroma * clamp(chromaScale, 0.0, 1.0);
        }

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (p.x >= uSourceSize.x || p.y >= uSourceSize.y) return;
            int index = p.y * uSourceSize.x + p.x;
            vec3 workingRgb = vec3(rcdRgb0[index], rcdRgb1[index], rcdRgb2[index]);
            if (uDesaturateBeforeExposureScale != 0) {
                workingRgb = desaturateHighlightPreservingLuma(workingRgb);
            }
            workingRgb *= uExposureScale;
            vec3 rgb = workingRgb /
                max(uCalculationGains, vec3(1e-6));
            imageStore(uOutput, p, vec4(max(rgb, vec3(0.0)), 1.0));
        }
    """.trimIndent()

    fun rgbFusion(): String = """
        #version 300 es
        precision highp float;
        precision highp int;
        in vec2 vTexCoord;
        layout(location = 0) out highp uvec4 fragColor;
        uniform sampler2D uNormalRgb;
        uniform sampler2D uReferenceRgb;
        uniform sampler2D uShortRgb;
        uniform highp usampler2D uWeightMap;
        uniform ivec2 uNormalSourceSize;
        uniform ivec2 uShortSourceSize;
        uniform int uNormalSourceRowOffset;
        uniform int uShortSourceRowOffset;
        uniform vec2 uShortRawOffset;
        uniform float uReferenceExposureScale;
        uniform int uDebugOutputSource;

        const float MIN_EFFECTIVE_FUSION_WEIGHT = 0.02;

        bool finiteFloat(float value) {
            return !isnan(value) && !isinf(value);
        }

        bool finiteRgb(vec3 value) {
            return !any(isnan(value)) && !any(isinf(value));
        }

        vec2 fusionWeightsAt(ivec2 p) {
            ivec2 size = textureSize(uWeightMap, 0);
            p = clamp(p, ivec2(0), size - ivec2(1));
            vec2 weights = unpackHalf2x16(texelFetch(uWeightMap, p, 0).r);
            if (!finiteFloat(weights.x) || !finiteFloat(weights.y)) {
                return vec2(0.0);
            }
            return clamp(weights, vec2(0.0), vec2(1.0));
        }

        vec3 desaturateHighlightPreservingLuma(vec3 rgb) {
            rgb = max(rgb, vec3(0.0));
            const vec3 LUMA = vec3(0.2126, 0.7152, 0.0722);
            float luma = dot(rgb, LUMA);
            float ceiling = max(1.0, luma);
            vec3 chroma = rgb - vec3(luma);
            float chromaScale = 1.0;
            if (chroma.r > 0.0) {
                chromaScale = min(chromaScale, (ceiling - luma) / chroma.r);
            }
            if (chroma.g > 0.0) {
                chromaScale = min(chromaScale, (ceiling - luma) / chroma.g);
            }
            if (chroma.b > 0.0) {
                chromaScale = min(chromaScale, (ceiling - luma) / chroma.b);
            }
            return vec3(luma) + chroma * clamp(chromaScale, 0.0, 1.0);
        }

        vec3 stripeFetch(sampler2D source, ivec2 p, ivec2 sourceSize) {
            p = clamp(p, ivec2(0), sourceSize - ivec2(1));
            return texelFetch(source, p, 0).rgb;
        }

        vec3 sampleStripe(sampler2D source, vec2 p, ivec2 sourceSize) {
            p = clamp(p, vec2(0.0), vec2(sourceSize - ivec2(1)));
            ivec2 p0 = ivec2(floor(p));
            ivec2 p1 = min(p0 + ivec2(1), sourceSize - ivec2(1));
            vec2 f = p - vec2(p0);
            vec3 v00 = stripeFetch(source, p0, sourceSize);
            vec3 v10 = stripeFetch(source, ivec2(p1.x, p0.y), sourceSize);
            vec3 v01 = stripeFetch(source, ivec2(p0.x, p1.y), sourceSize);
            vec3 v11 = stripeFetch(source, p1, sourceSize);
            return mix(mix(v00, v10, f.x), mix(v01, v11, f.x), f.y);
        }

        vec3 shortRgbAtGlobal(vec2 globalPos) {
            vec2 shortGlobal = globalPos + uShortRawOffset;
            vec2 local = vec2(shortGlobal.x, shortGlobal.y - float(uShortSourceRowOffset));
            return clamp(
                sampleStripe(uShortRgb, local, uShortSourceSize),
                vec3(0.0),
                vec3(1.0)
            );
        }

        bool shortRgbAvailableAtGlobal(vec2 globalPos) {
            vec2 shortGlobal = globalPos + uShortRawOffset;
            vec2 local = vec2(
                shortGlobal.x,
                shortGlobal.y - float(uShortSourceRowOffset)
            );
            ivec2 imageSize = textureSize(uWeightMap, 0);
            return all(greaterThanEqual(shortGlobal, vec2(0.0))) &&
                all(lessThanEqual(shortGlobal, vec2(imageSize - ivec2(1)))) &&
                all(greaterThanEqual(local, vec2(0.0))) &&
                all(lessThanEqual(local, vec2(uShortSourceSize - ivec2(1))));
        }

        vec3 referenceRgbAtGlobal(vec2 globalPos) {
            vec2 local = vec2(globalPos.x, globalPos.y - float(uNormalSourceRowOffset));
            return clamp(
                desaturateHighlightPreservingLuma(
                    sampleStripe(uReferenceRgb, local, uNormalSourceSize)
                ) * uReferenceExposureScale,
                vec3(0.0),
                vec3(1.0)
            );
        }

        void writeLinearRgb(vec3 rgb) {
            uvec3 linear16 = uvec3(floor(clamp(rgb, 0.0, 1.0) * 65535.0 + 0.5));
            fragColor = uvec4(linear16, 65535u);
        }

        void main() {
            ivec2 outputPos = ivec2(gl_FragCoord.xy);
            vec2 normalLocal = vec2(outputPos.x, outputPos.y - uNormalSourceRowOffset);
            vec3 accumulatedNormalRgb = clamp(
                sampleStripe(uNormalRgb, normalLocal, uNormalSourceSize),
                vec3(0.0),
                vec3(1.0)
            );
            vec3 referenceRgb = referenceRgbAtGlobal(vec2(outputPos));
            bool shortAvailable = shortRgbAvailableAtGlobal(vec2(outputPos));
            vec3 shortRgb = shortAvailable ?
                shortRgbAtGlobal(vec2(outputPos)) : vec3(0.0);
            if (!finiteRgb(referenceRgb)) referenceRgb = accumulatedNormalRgb;
            if (!finiteRgb(accumulatedNormalRgb)) accumulatedNormalRgb = referenceRgb;
            vec2 frameWeights = fusionWeightsAt(outputPos);
            if (!shortAvailable || !finiteRgb(shortRgb)) {
                shortRgb = vec3(0.0);
                frameWeights.y = 0.0;
            }
            float weightSum = frameWeights.x + frameWeights.y;
            vec3 rgb = weightSum > MIN_EFFECTIVE_FUSION_WEIGHT ?
                (
                    accumulatedNormalRgb * frameWeights.x +
                    shortRgb * frameWeights.y
                ) / weightSum :
                referenceRgb;
            if (!finiteRgb(rgb)) rgb = referenceRgb;
            if (uDebugOutputSource == 1) {
                rgb = accumulatedNormalRgb;
            } else if (uDebugOutputSource == 2) {
                rgb = referenceRgb;
            } else if (uDebugOutputSource == 3) {
                rgb = shortRgb;
            } else if (uDebugOutputSource == 4) {
                rgb = vec3(frameWeights.x);
            } else if (uDebugOutputSource == 5) {
                rgb = vec3(frameWeights.y);
            }
            writeLinearRgb(rgb);
        }
    """.trimIndent()

    val shortGlobalAlign: String = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout(local_size_x = 8, local_size_y = 8) in;
        uniform sampler2D uReference;
        uniform sampler2D uCurrent;
        uniform ivec2 uLevelSize;
        uniform int uLevelScale;
        uniform int uSearchRadius;
        uniform int uSampleStep;
        uniform int uSampleBorder;
        layout(
            std430,
            binding = ${GlesRawHdrConfig.SHORT_ALIGNMENT_SCORE_BUFFER_BINDING}
        ) buffer HdrShortAlignmentScores {
            float scores[];
        };

        const int LOCAL_COUNT = 64;
        const int SCORE_STRIDE = ${GlesRawHdrConfig.SHORT_ALIGNMENT_SCORE_STRIDE};
        shared float sadParts[LOCAL_COUNT];
        shared float weightParts[LOCAL_COUNT];
        shared float sampleParts[LOCAL_COUNT];

        vec2 readProxy(sampler2D tex, ivec2 p) {
            p = clamp(p, ivec2(0), uLevelSize - ivec2(1));
            return texelFetch(tex, p, 0).rg;
        }

        bool insideLevel(ivec2 p) {
            return p.x >= 0 && p.y >= 0 && p.x < uLevelSize.x && p.y < uLevelSize.y;
        }

        float detailAt(ivec2 p) {
            float c = readProxy(uReference, p).r;
            float gx = abs(readProxy(uReference, p + ivec2(1, 0)).r -
                readProxy(uReference, p - ivec2(1, 0)).r);
            float gy = abs(readProxy(uReference, p + ivec2(0, 1)).r -
                readProxy(uReference, p - ivec2(0, 1)).r);
            float lap = abs(4.0 * c -
                readProxy(uReference, p + ivec2(1, 0)).r -
                readProxy(uReference, p - ivec2(1, 0)).r -
                readProxy(uReference, p + ivec2(0, 1)).r -
                readProxy(uReference, p - ivec2(0, 1)).r);
            return gx + gy + 0.5 * lap;
        }

        void main() {
            ivec2 candidate = ivec2(gl_WorkGroupID.xy);
            int scoreSide = uSearchRadius * 2 + 1;
            if (candidate.x >= scoreSide || candidate.y >= scoreSide) return;
            ivec2 localId = ivec2(gl_LocalInvocationID.xy);
            int localIndex = localId.y * 8 + localId.x;
            ivec2 shift = candidate - ivec2(uSearchRadius);
            int sampleWidth = max(
                0,
                (uLevelSize.x - 2 * uSampleBorder + uSampleStep - 1) / uSampleStep
            );
            int sampleHeight = max(
                0,
                (uLevelSize.y - 2 * uSampleBorder + uSampleStep - 1) / uSampleStep
            );
            int totalSamples = sampleWidth * sampleHeight;
            float sad = 0.0;
            float weight = 0.0;
            float sampleCount = 0.0;
            for (int sampleIndex = localIndex; sampleIndex < totalSamples;
                sampleIndex += LOCAL_COUNT) {
                int sx = sampleIndex - (sampleIndex / sampleWidth) * sampleWidth;
                int sy = sampleIndex / sampleWidth;
                ivec2 rp = ivec2(
                    uSampleBorder + sx * uSampleStep,
                    uSampleBorder + sy * uSampleStep
                );
                ivec2 cp = rp + shift;
                sampleCount += 1.0;
                if (!insideLevel(cp)) continue;
                vec2 rv = readProxy(uReference, rp);
                vec2 cv = readProxy(uCurrent, cp);
                float detail = clamp(detailAt(rp) * 18.0, 0.08, 1.0);
                float w = min(rv.g, cv.g) * detail;
                sad += abs(rv.r - cv.r) * w;
                weight += w;
            }
            sadParts[localIndex] = sad;
            weightParts[localIndex] = weight;
            sampleParts[localIndex] = sampleCount;
            memoryBarrierShared();
            barrier();
            if (localIndex != 0) return;
            float totalSad = 0.0;
            float totalWeight = 0.0;
            float totalSampleCount = 0.0;
            for (int i = 0; i < LOCAL_COUNT; ++i) {
                totalSad += sadParts[i];
                totalWeight += weightParts[i];
                totalSampleCount += sampleParts[i];
            }
            float coverage = totalWeight / max(totalSampleCount, 1.0);
            float shiftPenalty = 0.0008 * float(shift.x * shift.x + shift.y * shift.y);
            float score = totalSad / max(totalWeight, 1e-4) +
                0.12 * (1.0 - clamp(coverage, 0.0, 1.0)) + shiftPenalty;
            int offset = (candidate.y * scoreSide + candidate.x) * SCORE_STRIDE;
            scores[offset + 0] = float(shift.x * uLevelScale);
            scores[offset + 1] = float(shift.y * uLevelScale);
            scores[offset + 2] = score;
            scores[offset + 3] = coverage;
        }
    """.trimIndent()
}

internal class GlesRawHdrWeightMap(
    private val width: Int,
    private val height: Int,
    private val rawCommonShader: String,
    private val backend: Backend,
) {
    interface Backend {
        fun linkComputeProgram(source: String, name: String): Int
        fun createTexture2D(width: Int, height: Int, internalFormat: Int, filter: Int): Int
        fun bindTexture(program: Int, name: String, unit: Int, texture: Int)
        fun bindImage(unit: Int, texture: Int, access: Int, format: Int)
        fun setCommonUniforms(program: Int)
        fun uniformLocation(program: Int, name: String): Int
        fun checkGlError(label: String)
    }

    data class Inputs(
        val referenceRgbTexture: Int,
        val shortRgbTexture: Int,
        val referenceRawTexture: Int,
        val lensShadingTexture: Int,
        val referenceSourceWidth: Int,
        val referenceSourceHeight: Int,
        val shortSourceWidth: Int,
        val shortSourceHeight: Int,
        val referenceSourceRowOffset: Int,
        val shortSourceRowOffset: Int,
        val weightRowOffset: Int,
        val weightRowCount: Int,
        val referenceExposureScale: Float,
        val shortRawOffsetX: Float,
        val shortRawOffsetY: Float,
        val noiseFloorVariance: Float,
        val lscNoiseGainMax: Float,
    )

    private var calculateProgram = 0
    private var smoothProgram = 0
    private var weightTextureA = 0
    private var weightTextureB = 0

    var outputTexture: Int = 0
        private set

    fun initPrograms() {
        if (calculateProgram != 0) return
        calculateProgram = backend.linkComputeProgram(
            calculateRgbWeightShader(rawCommonShader),
            "raw_hdr_pixel_weights",
        )
        smoothProgram = backend.linkComputeProgram(
            smoothRgbWeightShader(rawCommonShader),
            "raw_hdr_weight_smooth",
        )
    }

    fun initResources() {
        if (weightTextureA != 0) return
        weightTextureA = backend.createTexture2D(
            width,
            height,
            GLES30.GL_R32UI,
            GLES30.GL_NEAREST,
        )
        weightTextureB = backend.createTexture2D(
            width,
            height,
            GLES30.GL_R32UI,
            GLES30.GL_NEAREST,
        )
        outputTexture = weightTextureA
    }

    fun computeStripe(inputs: Inputs): Int {
        check(calculateProgram != 0 && smoothProgram != 0) {
            "HDR weight programs are not initialized"
        }
        check(weightTextureA != 0 && weightTextureB != 0) {
            "HDR weight textures are not initialized"
        }

        require(inputs.weightRowOffset >= 0 && inputs.weightRowCount > 0)
        require(inputs.weightRowOffset + inputs.weightRowCount <= height)
        GLES31.glUseProgram(calculateProgram)
        backend.bindTexture(calculateProgram, "uReferenceRgb", 0, inputs.referenceRgbTexture)
        backend.bindTexture(calculateProgram, "uShortRgb", 1, inputs.shortRgbTexture)
        backend.bindTexture(calculateProgram, "uReferenceRaw", 2, inputs.referenceRawTexture)
        backend.bindTexture(calculateProgram, "uLensShadingMap", 3, inputs.lensShadingTexture)
        backend.bindImage(0, weightTextureA, GLES31.GL_WRITE_ONLY, GLES30.GL_R32UI)
        backend.setCommonUniforms(calculateProgram)
        GLES31.glUniform2i(
            backend.uniformLocation(calculateProgram, "uImageSize"),
            width,
            height,
        )
        GLES31.glUniform2i(
            backend.uniformLocation(calculateProgram, "uReferenceSourceSize"),
            inputs.referenceSourceWidth,
            inputs.referenceSourceHeight,
        )
        GLES31.glUniform2i(
            backend.uniformLocation(calculateProgram, "uShortSourceSize"),
            inputs.shortSourceWidth,
            inputs.shortSourceHeight,
        )
        GLES31.glUniform1i(
            backend.uniformLocation(calculateProgram, "uReferenceSourceRowOffset"),
            inputs.referenceSourceRowOffset,
        )
        GLES31.glUniform1i(
            backend.uniformLocation(calculateProgram, "uShortSourceRowOffset"),
            inputs.shortSourceRowOffset,
        )
        GLES31.glUniform1i(
            backend.uniformLocation(calculateProgram, "uWeightRowOffset"),
            inputs.weightRowOffset,
        )
        GLES31.glUniform1i(
            backend.uniformLocation(calculateProgram, "uWeightRowCount"),
            inputs.weightRowCount,
        )
        GLES31.glUniform1f(
            backend.uniformLocation(calculateProgram, "uReferenceExposureScale"),
            inputs.referenceExposureScale,
        )
        GLES31.glUniform2f(
            backend.uniformLocation(calculateProgram, "uShortRawOffset"),
            inputs.shortRawOffsetX,
            inputs.shortRawOffsetY,
        )
        GLES31.glUniform1f(
            backend.uniformLocation(calculateProgram, "uNoiseFloorVariance"),
            inputs.noiseFloorVariance.coerceAtLeast(0f),
        )
        GLES31.glUniform1f(
            backend.uniformLocation(calculateProgram, "uLscNoiseGainMax"),
            inputs.lscNoiseGainMax.coerceAtLeast(1f),
        )
        GLES31.glUniform1f(
            backend.uniformLocation(calculateProgram, "uFullyUnsaturatedThreshold"),
            FULLY_UNSATURATED_THRESHOLD,
        )
        GLES31.glUniform1f(
            backend.uniformLocation(calculateProgram, "uFullySaturatedThreshold"),
            FULLY_SATURATED_THRESHOLD,
        )
        GLES31.glDispatchCompute(groupCount(width), groupCount(inputs.weightRowCount), 1)
        publishWeightTexture("calculate HDR RGB weights")

        smooth(
            sourceTexture = weightTextureA,
            targetTexture = weightTextureB,
            referenceRgbTexture = inputs.referenceRgbTexture,
            referenceRawTexture = inputs.referenceRawTexture,
            lensShadingTexture = inputs.lensShadingTexture,
            referenceSourceWidth = inputs.referenceSourceWidth,
            referenceSourceHeight = inputs.referenceSourceHeight,
            referenceSourceRowOffset = inputs.referenceSourceRowOffset,
            weightRowOffset = inputs.weightRowOffset,
            weightRowCount = inputs.weightRowCount,
            noiseFloorVariance = inputs.noiseFloorVariance,
            lscNoiseGainMax = inputs.lscNoiseGainMax,
            label = "smooth HDR weights 5x5 joint bilateral",
        )
        outputTexture = weightTextureB
        return weightTextureB
    }

    private fun smooth(
        sourceTexture: Int,
        targetTexture: Int,
        referenceRgbTexture: Int,
        referenceRawTexture: Int,
        lensShadingTexture: Int,
        referenceSourceWidth: Int,
        referenceSourceHeight: Int,
        referenceSourceRowOffset: Int,
        weightRowOffset: Int,
        weightRowCount: Int,
        noiseFloorVariance: Float,
        lscNoiseGainMax: Float,
        label: String,
    ) {
        GLES31.glUseProgram(smoothProgram)
        backend.bindTexture(smoothProgram, "uSourceWeights", 0, sourceTexture)
        backend.bindTexture(smoothProgram, "uReferenceRgb", 1, referenceRgbTexture)
        backend.bindTexture(smoothProgram, "uReferenceRaw", 2, referenceRawTexture)
        backend.bindTexture(smoothProgram, "uLensShadingMap", 3, lensShadingTexture)
        backend.bindImage(0, targetTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_R32UI)
        backend.setCommonUniforms(smoothProgram)
        GLES31.glUniform2i(
            backend.uniformLocation(smoothProgram, "uImageSize"),
            width,
            height,
        )
        GLES31.glUniform2i(
            backend.uniformLocation(smoothProgram, "uReferenceSourceSize"),
            referenceSourceWidth,
            referenceSourceHeight,
        )
        GLES31.glUniform1i(
            backend.uniformLocation(smoothProgram, "uReferenceSourceRowOffset"),
            referenceSourceRowOffset,
        )
        GLES31.glUniform1i(
            backend.uniformLocation(smoothProgram, "uWeightRowOffset"),
            weightRowOffset,
        )
        GLES31.glUniform1i(
            backend.uniformLocation(smoothProgram, "uWeightRowCount"),
            weightRowCount,
        )
        GLES31.glUniform1f(
            backend.uniformLocation(smoothProgram, "uNoiseFloorVariance"),
            noiseFloorVariance.coerceAtLeast(0f),
        )
        GLES31.glUniform1f(
            backend.uniformLocation(smoothProgram, "uLscNoiseGainMax"),
            lscNoiseGainMax.coerceAtLeast(1f),
        )
        GLES31.glUniform1f(
            backend.uniformLocation(smoothProgram, "uFullyUnsaturatedThreshold"),
            FULLY_UNSATURATED_THRESHOLD,
        )
        GLES31.glUniform1f(
            backend.uniformLocation(smoothProgram, "uFullySaturatedThreshold"),
            FULLY_SATURATED_THRESHOLD,
        )
        GLES31.glDispatchCompute(groupCount(width), groupCount(weightRowCount), 1)
        publishWeightTexture(label)
    }

    private fun publishWeightTexture(label: String) {
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
        )
        backend.checkGlError(label)
    }

    private fun groupCount(value: Int): Int = (value + LOCAL_SIZE - 1) / LOCAL_SIZE

    companion object {
        private const val LOCAL_SIZE = 16
        private const val FULLY_UNSATURATED_THRESHOLD = 0.90f
        private const val FULLY_SATURATED_THRESHOLD = 0.985f

        private fun calculateRgbWeightShader(rawCommon: String): String = """
            #version 310 es
            $rawCommon
            layout(local_size_x = 16, local_size_y = 16) in;
            uniform sampler2D uReferenceRgb;
            uniform sampler2D uShortRgb;
            uniform highp usampler2D uReferenceRaw;
            uniform sampler2D uLensShadingMap;
            layout(r32ui, binding = 0) writeonly uniform highp uimage2D uOutputWeights;
            uniform ivec2 uImageSize;
            uniform ivec2 uReferenceSourceSize;
            uniform ivec2 uShortSourceSize;
            uniform int uReferenceSourceRowOffset;
            uniform int uShortSourceRowOffset;
            uniform int uWeightRowOffset;
            uniform int uWeightRowCount;
            uniform float uReferenceExposureScale;
            uniform vec2 uShortRawOffset;
            uniform int uCfaPattern;
            uniform float uBlackLevel[4];
            uniform float uWhiteLevel;
            uniform float uNoiseAlphaByChannel[4];
            uniform float uNoiseBetaByChannel[4];
            uniform float uNoiseFloorVariance;
            uniform float uLscNoiseGainMax;
            uniform float uFullyUnsaturatedThreshold;
            uniform float uFullySaturatedThreshold;

            const vec3 LUMA = vec3(0.2126, 0.7152, 0.0722);

            float finiteOr(float value, float fallback) {
                return isnan(value) || isinf(value) ? fallback : value;
            }

            vec3 finiteRgb(vec3 value, vec3 fallback) {
                return any(isnan(value)) || any(isinf(value)) ? fallback : value;
            }

            float referenceSensorAt(ivec2 p) {
                p = clamp(p, ivec2(0), uImageSize - ivec2(1));
                int channel = bayerIndexAt(uCfaPattern, p);
                float raw = float(texelFetch(uReferenceRaw, p, 0).r);
                float range = max(uWhiteLevel - uBlackLevel[channel], 1.0);
                return clamp(
                    finiteOr(max(raw - uBlackLevel[channel], 0.0) / range, 0.0),
                    0.0,
                    1.0
                );
            }

            float referenceSaturationAt(ivec2 p) {
                int period = cfaPeriod(uCfaPattern);
                ivec2 base = (p / period) * period;
                float saturation = 0.0;
                for (int y = 0; y < 8; ++y) {
                    if (y >= period) break;
                    for (int x = 0; x < 8; ++x) {
                        if (x >= period) break;
                        saturation = max(
                            saturation,
                            referenceSensorAt(base + ivec2(x, y))
                        );
                    }
                }
                return saturation;
            }

            vec3 rgbLensShadingGainAt(vec2 globalPos) {
                vec2 uv = (globalPos + vec2(0.5)) / vec2(uImageSize);
                vec4 gains = texture(
                    uLensShadingMap,
                    clamp(uv, vec2(0.0), vec2(1.0))
                );
                vec3 rgbGains = vec3(
                    gains.r,
                    0.5 * (gains.g + gains.b),
                    gains.a
                );
                if (any(isnan(rgbGains)) || any(isinf(rgbGains))) {
                    return vec3(1.0);
                }
                return clamp(
                    rgbGains,
                    vec3(1e-3),
                    vec3(max(uLscNoiseGainMax, 1.0))
                );
            }

            vec3 stripeFetch(sampler2D source, ivec2 p, ivec2 sourceSize) {
                p = clamp(p, ivec2(0), sourceSize - ivec2(1));
                return finiteRgb(texelFetch(source, p, 0).rgb, vec3(0.0));
            }

            vec3 sampleStripe(sampler2D source, vec2 p, ivec2 sourceSize) {
                p = clamp(p, vec2(0.0), vec2(sourceSize - ivec2(1)));
                ivec2 p0 = ivec2(floor(p));
                ivec2 p1 = min(p0 + ivec2(1), sourceSize - ivec2(1));
                vec2 f = p - vec2(p0);
                vec3 v00 = stripeFetch(source, p0, sourceSize);
                vec3 v10 = stripeFetch(source, ivec2(p1.x, p0.y), sourceSize);
                vec3 v01 = stripeFetch(source, ivec2(p0.x, p1.y), sourceSize);
                vec3 v11 = stripeFetch(source, p1, sourceSize);
                return finiteRgb(
                    mix(mix(v00, v10, f.x), mix(v01, v11, f.x), f.y),
                    vec3(0.0)
                );
            }

            vec3 referenceNativeAt(vec2 globalPos) {
                vec2 local = vec2(
                    globalPos.x,
                    globalPos.y - float(uReferenceSourceRowOffset)
                );
                return max(
                    sampleStripe(uReferenceRgb, local, uReferenceSourceSize),
                    vec3(0.0)
                );
            }

            vec3 referenceWorkingAt(vec2 globalPos) {
                return referenceNativeAt(globalPos) * uReferenceExposureScale;
            }

            vec3 shortWorkingAt(vec2 globalPos) {
                vec2 shortGlobal = globalPos + uShortRawOffset;
                vec2 local = vec2(
                    shortGlobal.x,
                    shortGlobal.y - float(uShortSourceRowOffset)
                );
                return max(
                    sampleStripe(uShortRgb, local, uShortSourceSize),
                    vec3(0.0)
                );
            }

            bool shortAvailableAt(vec2 globalPos) {
                vec2 shortGlobal = globalPos + uShortRawOffset;
                vec2 local = vec2(
                    shortGlobal.x,
                    shortGlobal.y - float(uShortSourceRowOffset)
                );
                return all(greaterThanEqual(shortGlobal, vec2(0.0))) &&
                    all(lessThanEqual(shortGlobal, vec2(uImageSize - ivec2(1)))) &&
                    all(greaterThanEqual(local, vec2(0.0))) &&
                    all(lessThanEqual(local, vec2(uShortSourceSize - ivec2(1))));
            }

            vec3 rgbNoiseVariance(
                vec2 globalPos,
                vec3 referenceNative,
                vec3 shortWorking
            ) {
                vec3 alpha = vec3(
                    uNoiseAlphaByChannel[0],
                    0.5 * (uNoiseAlphaByChannel[1] + uNoiseAlphaByChannel[2]),
                    uNoiseAlphaByChannel[3]
                );
                vec3 beta = vec3(
                    uNoiseBetaByChannel[0],
                    0.5 * (uNoiseBetaByChannel[1] + uNoiseBetaByChannel[2]),
                    uNoiseBetaByChannel[3]
                );
                vec3 floorVariance = vec3(max(uNoiseFloorVariance, 0.0));
                vec3 referenceGain = rgbLensShadingGainAt(globalPos);
                vec3 shortGain = rgbLensShadingGainAt(globalPos + uShortRawOffset);
                vec3 referenceVariance = (
                    alpha * clamp(referenceNative, vec3(0.0), vec3(1.0)) *
                        referenceGain +
                        (beta + floorVariance) * referenceGain * referenceGain
                ) * uReferenceExposureScale * uReferenceExposureScale;
                vec3 shortVariance =
                    alpha * clamp(shortWorking, vec3(0.0), vec3(1.0)) *
                        shortGain +
                    (beta + floorVariance) * shortGain * shortGain;
                vec3 signal = max(
                    referenceNative * uReferenceExposureScale,
                    shortWorking
                );
                vec3 relativeTolerance = vec3(0.008) + 0.018 * signal;
                return max(
                    referenceVariance +
                        shortVariance +
                        relativeTolerance * relativeTolerance,
                    vec3(1e-8)
                );
            }

            float normalizedRgbResidual(vec2 globalPos) {
                vec3 referenceNative = referenceNativeAt(globalPos);
                vec3 referenceRgb = referenceNative * uReferenceExposureScale;
                vec3 shortRgb = shortWorkingAt(globalPos);
                vec3 residual = (referenceRgb - shortRgb) /
                    sqrt(rgbNoiseVariance(globalPos, referenceNative, shortRgb));
                float value = length(residual) * 0.57735026919;
                return max(finiteOr(value, 1e6), 0.0);
            }

            float noiseConfidence(vec2 globalPos) {
                float evidence = max(normalizedRgbResidual(globalPos) - 1.0, 0.0);
                return clamp(
                    finiteOr(exp(-0.5 * pow(evidence / 2.5, 2.0)), 0.0),
                    0.0,
                    1.0
                );
            }

            float alignmentConfidence(vec2 globalPos) {
                vec3 referenceDx = referenceWorkingAt(globalPos + vec2(1.0, 0.0)) -
                    referenceWorkingAt(globalPos - vec2(1.0, 0.0));
                vec3 referenceDy = referenceWorkingAt(globalPos + vec2(0.0, 1.0)) -
                    referenceWorkingAt(globalPos - vec2(0.0, 1.0));
                vec3 shortDx = shortWorkingAt(globalPos + vec2(1.0, 0.0)) -
                    shortWorkingAt(globalPos - vec2(1.0, 0.0));
                vec3 shortDy = shortWorkingAt(globalPos + vec2(0.0, 1.0)) -
                    shortWorkingAt(globalPos - vec2(0.0, 1.0));
                float residual = length(referenceDx - shortDx) +
                    length(referenceDy - shortDy);
                float structure = length(referenceDx) + length(referenceDy) +
                    length(shortDx) + length(shortDy);
                float evidence = max(residual / max(0.025 + 0.25 * structure, 1e-5) - 1.0, 0.0);
                return clamp(
                    finiteOr(exp(-0.5 * pow(evidence / 2.0, 2.0)), 0.0),
                    0.0,
                    1.0
                );
            }

            float motionConfidence(vec2 globalPos) {
                float residualSum = 0.0;
                float residualSquaredSum = 0.0;
                float count = 0.0;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        float residual = normalizedRgbResidual(
                            globalPos + vec2(float(x), float(y))
                        );
                        residualSum += residual;
                        residualSquaredSum += residual * residual;
                        count += 1.0;
                    }
                }
                float meanResidual = residualSum / max(count, 1.0);
                float residualVariance = max(
                    residualSquaredSum / max(count, 1.0) -
                        meanResidual * meanResidual,
                    0.0
                );
                float evidence = max(meanResidual - 1.5, 0.0) +
                    0.35 * sqrt(residualVariance);
                return clamp(
                    finiteOr(exp(-0.5 * pow(evidence / 2.5, 2.0)), 0.0),
                    0.0,
                    1.0
                );
            }

            void storeWeightInputs(ivec2 p, vec2 inputs) {
                if (any(isnan(inputs)) || any(isinf(inputs))) {
                    inputs = vec2(0.0);
                }
                imageStore(
                    uOutputWeights,
                    p,
                    uvec4(packHalf2x16(clamp(inputs, vec2(0.0), vec2(1.0))))
                );
            }

            void main() {
                ivec2 local = ivec2(gl_GlobalInvocationID.xy);
                if (local.x >= uImageSize.x || local.y >= uWeightRowCount) return;
                ivec2 p = ivec2(local.x, local.y + uWeightRowOffset);
                vec2 globalPos = vec2(p);
                float referenceSaturation = referenceSaturationAt(p);
                bool fullySaturated =
                    referenceSaturation >= uFullySaturatedThreshold;
                bool fullyUnsaturated =
                    referenceSaturation <= uFullyUnsaturatedThreshold;

                if (fullyUnsaturated) {
                    storeWeightInputs(p, vec2(0.0, 1.0));
                    return;
                }

                float saturationWeight = smoothstep(
                    uFullyUnsaturatedThreshold,
                    uFullySaturatedThreshold,
                    referenceSaturation
                );
                float reliability = 0.0;
                if (shortAvailableAt(globalPos)) {
                    // Once the reference is clipped, photometric residuals are no longer
                    // comparable. Structural alignment remains useful and deliberately
                    // allows a poor short-frame candidate to fall back to the reference.
                    reliability = fullySaturated ?
                        alignmentConfidence(globalPos) :
                        pow(
                            max(
                                noiseConfidence(globalPos) *
                                    alignmentConfidence(globalPos) *
                                    motionConfidence(globalPos),
                                0.0
                            ),
                            1.0 / 3.0
                        );
                }
                storeWeightInputs(p, vec2(saturationWeight, reliability));
            }
        """.trimIndent()

        private fun smoothRgbWeightShader(rawCommon: String): String = """
            #version 310 es
            $rawCommon
            precision highp float;
            precision highp int;
            layout(local_size_x = 16, local_size_y = 16) in;
            uniform highp usampler2D uSourceWeights;
            uniform sampler2D uReferenceRgb;
            uniform highp usampler2D uReferenceRaw;
            uniform sampler2D uLensShadingMap;
            layout(r32ui, binding = 0) writeonly uniform highp uimage2D uOutputWeights;
            uniform ivec2 uImageSize;
            uniform ivec2 uReferenceSourceSize;
            uniform int uReferenceSourceRowOffset;
            uniform int uWeightRowOffset;
            uniform int uWeightRowCount;
            uniform int uCfaPattern;
            uniform float uBlackLevel[4];
            uniform float uWhiteLevel;
            uniform float uNoiseAlphaByChannel[4];
            uniform float uNoiseBetaByChannel[4];
            uniform float uNoiseFloorVariance;
            uniform float uLscNoiseGainMax;
            uniform float uFullyUnsaturatedThreshold;
            uniform float uFullySaturatedThreshold;

            const vec3 LUMA = vec3(0.2126, 0.7152, 0.0722);
            const vec3 LUMA_SQUARED = LUMA * LUMA;
            const float LOG_LUMA_SCALE = 8.0;
            const float INVERSE_LOG_TWO = 1.44269504089;
            const float LOG_LUMA_MODEL_VARIANCE = 0.0025;
            const float CHROMA_MODEL_VARIANCE = 0.0036;
            const float SATURATION_MODEL_VARIANCE = 0.1225;
            const float SATURATION_GUIDE_STRENGTH = 0.20;

            struct GuideStats {
                float logLuma;
                float logLumaVariance;
                vec2 chroma;
                float chromaTrust;
                float saturationWeight;
            };

            bool finiteFloat(float value) {
                return !isnan(value) && !isinf(value);
            }

            float referenceSensorAt(ivec2 p) {
                p = clamp(p, ivec2(0), uImageSize - ivec2(1));
                int channel = bayerIndexAt(uCfaPattern, p);
                float raw = float(texelFetch(uReferenceRaw, p, 0).r);
                float range = max(uWhiteLevel - uBlackLevel[channel], 1.0);
                return clamp(
                    max(raw - uBlackLevel[channel], 0.0) / range,
                    0.0,
                    1.0
                );
            }

            float referenceSaturationAt(ivec2 p) {
                int period = cfaPeriod(uCfaPattern);
                ivec2 base = (p / period) * period;
                float saturation = 0.0;
                for (int y = 0; y < 8; ++y) {
                    if (y >= period) break;
                    for (int x = 0; x < 8; ++x) {
                        if (x >= period) break;
                        saturation = max(
                            saturation,
                            referenceSensorAt(base + ivec2(x, y))
                        );
                    }
                }
                return saturation;
            }

            vec3 referenceNativeAt(ivec2 globalPos) {
                ivec2 local = ivec2(
                    globalPos.x,
                    globalPos.y - uReferenceSourceRowOffset
                );
                local = clamp(local, ivec2(0), uReferenceSourceSize - ivec2(1));
                vec3 value = texelFetch(uReferenceRgb, local, 0).rgb;
                return any(isnan(value)) || any(isinf(value)) ?
                    vec3(0.0) : max(value, vec3(0.0));
            }

            vec3 rgbLensShadingGainAt(ivec2 globalPos) {
                vec2 uv = (vec2(globalPos) + vec2(0.5)) / vec2(uImageSize);
                vec4 gains = texture(
                    uLensShadingMap,
                    clamp(uv, vec2(0.0), vec2(1.0))
                );
                vec3 rgbGains = vec3(
                    gains.r,
                    0.5 * (gains.g + gains.b),
                    gains.a
                );
                if (any(isnan(rgbGains)) || any(isinf(rgbGains))) {
                    return vec3(1.0);
                }
                return clamp(
                    rgbGains,
                    vec3(1e-3),
                    vec3(max(uLscNoiseGainMax, 1.0))
                );
            }

            vec3 referenceRgbVarianceAt(ivec2 globalPos, vec3 referenceRgb) {
                vec3 alpha = vec3(
                    uNoiseAlphaByChannel[0],
                    0.5 * (uNoiseAlphaByChannel[1] + uNoiseAlphaByChannel[2]),
                    uNoiseAlphaByChannel[3]
                );
                vec3 beta = vec3(
                    uNoiseBetaByChannel[0],
                    0.5 * (uNoiseBetaByChannel[1] + uNoiseBetaByChannel[2]),
                    uNoiseBetaByChannel[3]
                );
                vec3 gain = rgbLensShadingGainAt(globalPos);
                vec3 variance =
                    alpha * clamp(referenceRgb, vec3(0.0), vec3(1.0)) * gain +
                    (beta + vec3(max(uNoiseFloorVariance, 0.0))) * gain * gain;
                if (any(isnan(variance)) || any(isinf(variance))) {
                    return vec3(1e-4);
                }
                return max(variance, vec3(1e-10));
            }

            vec2 weightInputsAt(ivec2 p) {
                p.x = clamp(p.x, 0, uImageSize.x - 1);
                p.y = clamp(
                    p.y,
                    uWeightRowOffset,
                    uWeightRowOffset + uWeightRowCount - 1
                );
                vec2 inputs = unpackHalf2x16(texelFetch(uSourceWeights, p, 0).r);
                return finiteFloat(inputs.x) && finiteFloat(inputs.y) ?
                    clamp(inputs, vec2(0.0), vec2(1.0)) :
                    vec2(0.0);
            }

            GuideStats guideStatsAt(ivec2 globalPos, float saturationWeight) {
                vec3 rgb = referenceNativeAt(globalPos);
                vec3 variance = referenceRgbVarianceAt(globalPos, rgb);
                float luma = max(dot(rgb, LUMA), 0.0);
                float lumaVariance = max(dot(variance, LUMA_SQUARED), 1e-10);
                float logArgument = 1.0 + LOG_LUMA_SCALE * luma;
                float logSlope = LOG_LUMA_SCALE * INVERSE_LOG_TWO /
                    max(logArgument, 1e-4);
                float rgbSum = max(rgb.r + rgb.g + rgb.b, 1e-4);
                float lumaSnr = luma / sqrt(lumaVariance);

                GuideStats result;
                result.logLuma = log2(logArgument);
                result.logLumaVariance = max(
                    lumaVariance * logSlope * logSlope,
                    1e-8
                );
                result.chroma = vec2(rgb.r, rgb.b) / rgbSum;
                result.chromaTrust =
                    smoothstep(2.0, 8.0, lumaSnr) *
                    (1.0 - smoothstep(0.15, 0.85, saturationWeight));
                result.saturationWeight = saturationWeight;
                return result;
            }

            float spatialWeight(ivec2 offset) {
                int distanceSquared = offset.x * offset.x + offset.y * offset.y;
                if (distanceSquared == 0) return 1.0;
                if (distanceSquared == 1) return 0.80;
                if (distanceSquared == 2) return 0.64;
                if (distanceSquared == 4) return 0.41;
                if (distanceSquared == 5) return 0.33;
                return 0.17;
            }

            float guideWeight(GuideStats center, GuideStats neighbor) {
                float logLumaDifference = neighbor.logLuma - center.logLuma;
                float logLumaVariance =
                    center.logLumaVariance + neighbor.logLumaVariance +
                    LOG_LUMA_MODEL_VARIANCE;
                float lumaDistance =
                    logLumaDifference * logLumaDifference /
                    max(logLumaVariance, 1e-6);

                vec2 chromaDifference = neighbor.chroma - center.chroma;
                float chromaDistance = dot(chromaDifference, chromaDifference) /
                    CHROMA_MODEL_VARIANCE;
                float chromaTrust = min(center.chromaTrust, neighbor.chromaTrust);

                float saturationDifference =
                    neighbor.saturationWeight - center.saturationWeight;
                float saturationDistance =
                    saturationDifference * saturationDifference /
                    SATURATION_MODEL_VARIANCE;
                float distance =
                    lumaDistance +
                    chromaTrust * chromaDistance +
                    SATURATION_GUIDE_STRENGTH * saturationDistance;
                return exp(-0.5 * clamp(distance, 0.0, 24.0));
            }

            void storeWeights(ivec2 p, vec2 weights) {
                if (!finiteFloat(weights.x) || !finiteFloat(weights.y)) {
                    weights = vec2(0.0);
                }
                imageStore(
                    uOutputWeights,
                    p,
                    uvec4(packHalf2x16(clamp(weights, vec2(0.0), vec2(1.0))))
                );
            }

            void main() {
                ivec2 local = ivec2(gl_GlobalInvocationID.xy);
                if (local.x >= uImageSize.x || local.y >= uWeightRowCount) return;
                ivec2 p = ivec2(local.x, local.y + uWeightRowOffset);
                float referenceSaturation = referenceSaturationAt(p);
                if (referenceSaturation <= uFullyUnsaturatedThreshold) {
                    storeWeights(p, vec2(1.0, 0.0));
                    return;
                }

                vec2 centerInputs = weightInputsAt(p);
                GuideStats centerGuide = guideStatsAt(p, centerInputs.x);
                float shortPreferenceSum = 0.0;
                float filterWeightSum = 0.0;
                for (int y = -${GlesRawHdrConfig.WEIGHT_SMOOTH_RADIUS};
                    y <= ${GlesRawHdrConfig.WEIGHT_SMOOTH_RADIUS}; ++y) {
                    for (int x = -${GlesRawHdrConfig.WEIGHT_SMOOTH_RADIUS};
                        x <= ${GlesRawHdrConfig.WEIGHT_SMOOTH_RADIUS}; ++x) {
                        ivec2 offset = ivec2(x, y);
                        ivec2 q = p + offset;
                        vec2 sampleInputs = weightInputsAt(q);
                        GuideStats sampleGuide = guideStatsAt(q, sampleInputs.x);
                        float weight = spatialWeight(offset) *
                            guideWeight(centerGuide, sampleGuide);
                        shortPreferenceSum +=
                            sampleInputs.x * sampleInputs.y * weight;
                        filterWeightSum += weight;
                    }
                }
                // Smooth the actual short-frame preference, not only the clipping mask.
                // Low-confidence candidates therefore fade continuously to the normal
                // accumulation even when that means leaving a highlight clipped.
                float shortWeight = clamp(
                    shortPreferenceSum / max(filterWeightSum, 1e-6),
                    0.0,
                    1.0
                );
                float referenceWeight = 1.0 - shortWeight;
                storeWeights(p, vec2(referenceWeight, shortWeight));
            }
        """.trimIndent()

    }
}
