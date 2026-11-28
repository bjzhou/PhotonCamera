package com.hinnka.mycamera.lut

import android.opengl.GLES30
import android.opengl.GLES31
import android.opengl.Matrix
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.raw.DngPhotonProfileGainTableGenerator
import com.hinnka.mycamera.raw.RawFullscreenQuad
import com.hinnka.mycamera.raw.RawGlesProgram
import com.hinnka.mycamera.utils.PLog

/**
 * Evaluates the frame's GTM and spatial LTM for the RAW renderer and DNG gain map.
 * The log-Gamma16 guided base supplies the local signal in place of the hardware IPE mask.
 */
internal class RawAdrcPreviewLtmGl {
    private val quad = RawFullscreenQuad()
    private val gamma = RawQualcommPreviewToneGl()
    private val identity = FloatArray(16).apply { Matrix.setIdentityM(this, 0) }
    private val scratch = IntArray(3)
    private var filterProgram = 0
    private var guideProgram = 0
    private var renderProgram = 0
    private var framebuffer = 0
    private var output = 0
    private var outputWidth = 0
    private var outputHeight = 0
    private var initializationFailed = false

    fun render(
        inputTexture: Int,
        width: Int,
        height: Int,
        profileStatsTexture: Int,
        toneTexture: Int,
        rendererBaselineGain: Float,
    ): Int {
        if (inputTexture == 0 || width <= 0 || height <= 0) return 0
        val guideTexture = prepareGuide(profileStatsTexture, toneTexture, rendererBaselineGain)
        if (guideTexture == 0 || !ensureOutput(width, height)) return 0

        GLES30.glUseProgram(renderProgram)
        if (!gamma.bindGamma(renderProgram, 3)) return 0
        GLES30.glUniform1f(location(renderProgram, "uBaselineGain"), rendererBaselineGain)
        bindInput(renderProgram, 0, "uSource", inputTexture)
        bindInput(renderProgram, 1, "uTone", toneTexture)
        bindInput(renderProgram, 2, "uGuide", guideTexture)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
        GLES30.glUniformMatrix4fv(location(renderProgram, "uTexMatrix"), 1, false, identity, 0)
        quad.draw(renderProgram)

        return if (checkGl("LTM draw")) output else 0
    }

    fun prepareGuide(profileStatsTexture: Int, toneTexture: Int, rendererBaselineGain: Float): Int {
        if (profileStatsTexture == 0 || toneTexture == 0 ||
            !rendererBaselineGain.isFinite() || rendererBaselineGain <= 0f || !ensureFilter()
        ) return 0

        filter(filterProgram, profileStatsTexture, toneTexture, rendererBaselineGain, 0, scratch[0])
        filter(filterProgram, scratch[0], toneTexture, rendererBaselineGain, 1, scratch[1])
        filter(filterProgram, scratch[1], toneTexture, rendererBaselineGain, 2, scratch[0])
        filter(guideProgram, scratch[0], toneTexture, rendererBaselineGain, 3, scratch[2])
        GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        return if (checkGl("LTM guide")) scratch[2] else 0
    }

    private fun filter(
        program: Int,
        source: Int,
        tone: Int,
        baselineGain: Float,
        stage: Int,
        target: Int,
    ) {
        val horizontal = stage % 2 == 0
        val outputFormat = if (stage == 3) GLES30.GL_RGBA16F else GLES30.GL_RGBA32F
        GLES31.glUseProgram(program)
        GLES31.glUniform1i(location(program, "uStage"), stage)
        GLES31.glUniform1f(location(program, "uBaselineGain"), baselineGain)
        bindInput(program, 0, "uSource", source)
        bindInput(program, 1, "uTone", tone)
        GLES31.glBindImageTexture(0, target, 0, false, 0, GLES31.GL_WRITE_ONLY, outputFormat)
        GLES31.glDispatchCompute(
            if (horizontal) RawAdrcPreviewStatsGl.HEIGHT else RawAdrcPreviewStatsGl.WIDTH, 1, 1,
        )
        GLES31.glMemoryBarrier(
            GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT,
        )
    }

    private fun ensureFilter(): Boolean {
        if (initializationFailed) return false
        if (filterProgram == 0 && !initFilter()) {
            release()
            initializationFailed = true
            return false
        }
        return true
    }

    private fun ensureOutput(width: Int, height: Int): Boolean {
        if (renderProgram == 0) {
            renderProgram = quad.createProgram(renderShader, "rawAdrcLtmApply")
            if (renderProgram == 0) return false
            bindKnots(renderProgram)
        }
        if (outputWidth == width && outputHeight == height) return true
        val size = IntArray(1)
        if (framebuffer == 0) {
            GLES30.glGenFramebuffers(1, size, 0)
            framebuffer = size[0]
            if (framebuffer == 0) return false
        }
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, size, 0)
        if (width > size[0] || height > size[0]) {
            PLog.e(TAG, "LTM output ${width}x$height exceeds GL_MAX_TEXTURE_SIZE=${size[0]}")
            return false
        }

        if (output != 0) GLES30.glDeleteTextures(1, intArrayOf(output), 0)
        outputWidth = 0
        outputHeight = 0
        GLES30.glGenTextures(1, size, 0)
        output = size[0]
        if (output == 0) return false
        allocateTexture(output, width, height, GLES30.GL_RGBA16F, GLES30.GL_NEAREST)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, output, 0,
        )
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            PLog.e(TAG, "LTM RGBA16F output framebuffer incomplete status=$status")
            return false
        }
        if (!checkGl("LTM output allocation")) return false
        outputWidth = width
        outputHeight = height
        return true
    }

    private fun initFilter(): Boolean {
        val limit = IntArray(1)
        GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_IMAGE_UNIFORMS, limit, 0)
        if (limit[0] < 1) return false
        GLES31.glGetIntegerv(GLES31.GL_MAX_IMAGE_UNITS, limit, 0)
        if (limit[0] < 1) return false

        filterProgram = RawGlesProgram.compileCompute(filterShader("rgba32f"), "rawAdrcLtmFilter")
        if (filterProgram == 0) return false
        guideProgram = RawGlesProgram.compileCompute(filterShader("rgba16f"), "rawAdrcLtmGuide")
        if (guideProgram == 0) return false
        bindKnots(filterProgram)
        bindKnots(guideProgram)
        GLES30.glGenTextures(scratch.size, scratch, 0)
        if (scratch.any { it == 0 }) return false
        for (i in scratch.indices) {
            allocateTexture(
                scratch[i], RawAdrcPreviewStatsGl.WIDTH, RawAdrcPreviewStatsGl.HEIGHT,
                if (i == 2) GLES30.GL_RGBA16F else GLES30.GL_RGBA32F,
                if (i == 2) GLES30.GL_LINEAR else GLES30.GL_NEAREST,
            )
        }
        return checkGl("LTM resource allocation")
    }

    fun reset() {
        gamma.reset()
        scratch.fill(0)
        filterProgram = 0
        guideProgram = 0
        renderProgram = 0
        framebuffer = 0
        output = 0
        outputWidth = 0
        outputHeight = 0
        initializationFailed = false
    }

    fun release() {
        gamma.release()
        if (filterProgram != 0) GLES30.glDeleteProgram(filterProgram)
        if (guideProgram != 0) GLES30.glDeleteProgram(guideProgram)
        if (renderProgram != 0) GLES30.glDeleteProgram(renderProgram)
        if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
        if (output != 0) GLES30.glDeleteTextures(1, intArrayOf(output), 0)
        GLES30.glDeleteTextures(scratch.size, scratch, 0)
        reset()
    }

    companion object {
        private const val TAG = "RawAdrcPreviewLtm"
        private const val LINE_LANES = GlesComputeWorkGroup.LINEAR_SIZE
        private const val SCAN_SIZE = LINE_LANES * 2

        private fun location(program: Int, uniform: String): Int = GLES30.glGetUniformLocation(program, uniform)

        fun bindKnots(program: Int) {
            GLES30.glUseProgram(program)
            GLES30.glUniform1iv(location(program, "uCamxGtmX[0]"), RAW_ADRC_CAMX_GTM_X.size, RAW_ADRC_CAMX_GTM_X, 0)
            GLES30.glUniform1iv(
                location(program, "uCamxGamma16[0]"), RAW_ADRC_CAMX_GAMMA16.size, RAW_ADRC_CAMX_GAMMA16, 0,
            )
        }

        fun bindInput(program: Int, unit: Int, uniform: String, texture: Int) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
            GLES30.glBindSampler(unit, 0)
            GLES30.glUniform1i(location(program, uniform), unit)
        }

        private fun allocateTexture(texture: Int, width: Int, height: Int, format: Int, filter: Int) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, format, width, height)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, filter)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, filter)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        }

        private fun checkGl(operation: String): Boolean {
            val error = GLES30.glGetError()
            if (error == GLES30.GL_NO_ERROR) return true
            val driver = GLES30.glGetString(GLES30.GL_RENDERER)
            val version = GLES30.glGetString(GLES30.GL_VERSION)
            PLog.e(TAG, "$operation failed GL=$error, renderer=$driver, version=$version")
            return false
        }

        private val camxToneGlsl = DngPhotonProfileGainTableGenerator.PXL_PROFILE_GAIN_TABLE_INPUT_WEIGHTS.let { w ->
            """
            uniform int uCamxGtmX[65];
            uniform int uCamxGamma16[65];
            uniform highp sampler2D uTone;
            uniform float uBaselineGain;
            const float GUIDE_FLOOR = 1.0e-4;

            float profileIntensity(vec3 rgb) {
                vec3 p = max(rgb * uBaselineGain, vec3(0.0));
                return dot(p, vec3(${w[0]}, ${w[1]}, ${w[2]})) +
                    min(p.r, min(p.g, p.b)) * ${w[3]} + max(p.r, max(p.g, p.b)) * ${w[4]};
            }

            float applyGtm(float intensity) {
                if (intensity >= 1.0) return intensity;
                float code = intensity * 16383.0;
                int lo = 0;
                int hi = 64;
                for (int level = 0; level < 6; ++level) {
                    int mid = (lo + hi) / 2;
                    if (code < float(uCamxGtmX[mid])) hi = mid;
                    else lo = mid;
                }
                float from = float(uCamxGtmX[lo]);
                float fraction = (code - from) / (float(uCamxGtmX[hi]) - from);
                float gain = mix(texelFetch(uTone, ivec2(lo, 0), 0).r,
                                 texelFetch(uTone, ivec2(hi, 0), 0).r, fraction);
                return min(intensity * gain, 1.0);
            }

            float encodeGamma16(float linear) {
                float x = clamp(linear, 0.0, 1.0) * 64.0;
                int lo = int(x);
                return mix(float(uCamxGamma16[lo]), float(uCamxGamma16[min(lo + 1, 64)]),
                           x - float(lo)) / 1024.0;
            }

            float decodeGamma16(float encoded) {
                float code = clamp(encoded, 0.0, 1.0) * 1024.0;
                int lo = 0;
                int hi = 64;
                for (int level = 0; level < 6; ++level) {
                    int mid = (lo + hi) / 2;
                    if (code < float(uCamxGamma16[mid])) hi = mid;
                    else lo = mid;
                }
                float from = float(uCamxGamma16[lo]);
                float fraction = (code - from) / (float(uCamxGamma16[hi]) - from);
                return (float(lo) + fraction) / 64.0;
            }

            float ltmScale(float localEncoded) {
                float x = clamp(localEncoded, 0.0, 1.0) * 64.0;
                int lo = int(x);
                return mix(texelFetch(uTone, ivec2(lo, 0), 0).g,
                           texelFetch(uTone, ivec2(min(lo + 1, 64), 0), 0).g, x - float(lo));
            }
            """.trimIndent()
        }

        private fun filterShader(format: String): String = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = $LINE_LANES) in;
            layout($format, binding = 0) writeonly uniform highp image2D uOutput;
            uniform highp sampler2D uSource;
            uniform int uStage;

            $camxToneGlsl

            // One workgroup per row or column. A second sample per lane covers the
            // complete 256x192 profile grid while using the GLES 3.1 baseline group size.
            const int SCAN_SIZE = $SCAN_SIZE;
            const int PROFILE_WIDTH = ${RawAdrcPreviewStatsGl.WIDTH};
            const int PROFILE_HEIGHT = ${RawAdrcPreviewStatsGl.HEIGHT};
            shared vec4 prefix[SCAN_SIZE];
            shared vec4 total;
            shared vec4 firstValue;
            shared vec4 lastValue;

            ivec2 pixel(int index) {
                int line = int(gl_WorkGroupID.x);
                return (uStage & 1) == 0 ? ivec2(index, line) : ivec2(line, index);
            }

            vec4 inputValue(int index, int length) {
                if (index >= length) return vec4(0.0);
                vec4 value = texelFetch(uSource, pixel(index), 0);
                if (uStage != 0) return value;
                float signal = log(encodeGamma16(applyGtm(profileIntensity(value.rgb))) + GUIDE_FLOOR);
                return vec4(signal, signal * signal, signal, signal * signal);
            }

            vec4 boxMean(int index, int length, int radius) {
                int left = index - radius;
                int right = index + radius + 1;
                vec4 endSum = right >= length ? total : prefix[min(right, SCAN_SIZE - 1)];
                vec4 inside = endSum - prefix[max(left, 0)];
                vec4 edges = firstValue * float(max(-left, 0)) + lastValue * float(max(right - length, 0));
                return (inside + edges) / float(radius * 2 + 1);
            }

            vec2 linearCoefficients(vec2 moments, float epsilon) {
                float variance = max(moments.y - moments.x * moments.x, 0.0);
                float a = variance / (variance + epsilon);
                return vec2(a, moments.x * (1.0 - a));
            }

            void store(int index, int length) {
                if (index >= length) return;
                vec2 medium = boxMean(index, length, 7).xy;
                vec2 large = boxMean(index, length, 20).zw;
                if (uStage == 1) {
                    medium = linearCoefficients(medium, 0.035);
                    large = linearCoefficients(large, 0.050);
                }
                // The two ranges have the same signal, so the weighted affine
                // coefficients can be combined before full-resolution sampling.
                vec4 value = uStage == 3 ? vec4(mix(medium, large, 0.55), 0.0, 0.0) : vec4(medium, large);
                imageStore(uOutput, pixel(index), value);
            }

            void main() {
                int lane = int(gl_LocalInvocationID.x);
                int next = lane + $LINE_LANES;
                int length = (uStage & 1) == 0 ? PROFILE_WIDTH : PROFILE_HEIGHT;
                prefix[lane] = inputValue(lane, length);
                prefix[next] = inputValue(next, length);
                barrier();
                if (lane == 0) {
                    firstValue = prefix[0];
                    lastValue = prefix[length - 1];
                }
                barrier();

                // Blelloch exclusive scan. Each box window costs two prefix fetches,
                // independent of its radius, and edge clamping contributes repeated endpoints.
                for (int stride = 1; stride < SCAN_SIZE; stride *= 2) {
                    int index = (lane + 1) * (stride * 2) - 1;
                    if (index < SCAN_SIZE) prefix[index] += prefix[index - stride];
                    barrier();
                }
                if (lane == 0) {
                    total = prefix[SCAN_SIZE - 1];
                    prefix[SCAN_SIZE - 1] = vec4(0.0);
                }
                barrier();
                for (int stride = SCAN_SIZE / 2; stride >= 1; stride /= 2) {
                    int index = (lane + 1) * (stride * 2) - 1;
                    if (index < SCAN_SIZE) {
                        vec4 left = prefix[index - stride];
                        prefix[index - stride] = prefix[index];
                        prefix[index] += left;
                    }
                    barrier();
                }
                store(lane, length);
                store(next, length);
            }
        """.trimIndent()

        val TONE_MAPPING_GLSL = """
            $camxToneGlsl
            ${RawQualcommPreviewToneGl.GAMMA_GLSL}

            uniform highp sampler2D uGuide;

            float adrcOutputGain(float intensity, vec2 uv, float maxToneGain) {
                if (intensity <= 0.0) return 1.0;
                float mappedIntensity;
                if (intensity < 1.0) {
                    float postGtm = applyGtm(intensity);
                    float encoded = encodeGamma16(postGtm);
                    vec2 guide = textureLod(uGuide, uv, 0.0).rg;
                    float base = max(exp(guide.x * log(encoded + GUIDE_FLOOR) + guide.y) - GUIDE_FLOOR, 0.0);
                    float mapped = decodeGamma16(encoded * (1.0 + ltmScale(base)));
                    float maxMapped = min(intensity * maxToneGain, 1.0);
                    mappedIntensity = clamp(mapped, intensity * 0.05, maxMapped);
                } else {
                    float slope = texelFetch(uTone, ivec2(8, 0), 0).a;
                    float clipLimit = texelFetch(uTone, ivec2(9, 0), 0).a;
                    float headroom = clipLimit - 1.0;
                    if (headroom <= 0.0001) headroom = 0.15;
                    mappedIntensity = 1.0 + headroom * (1.0 - exp(-(intensity - 1.0) * slope / headroom));
                }
                // Share the DNG profile's scalar Gamma15 mapping for all RGB channels.
                return clamp(applyQualcommGamma(mappedIntensity) / intensity, 1.0 / 4096.0,
                    min(4096.0, maxToneGain * 1.25));
            }
        """.trimIndent()

        private val renderShader = """
            #version 300 es
            precision highp float;
            precision highp int;
            uniform highp sampler2D uSource;
            in vec2 vTexCoord;
            out vec4 outColor;

            $TONE_MAPPING_GLSL

            void main() {
                vec4 source = texture(uSource, vTexCoord);
                float intensity = profileIntensity(source.rgb);
                float gain = adrcOutputGain(intensity, vTexCoord, texelFetch(uTone, ivec2(0, 0), 0).b);
                outColor = vec4(source.rgb * gain, source.a);
            }
        """.trimIndent()
    }
}
