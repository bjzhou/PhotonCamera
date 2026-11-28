package com.hinnka.mycamera.raw

import android.content.Context
import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Evaluates Fast Moments HDRNet on the GL context that owns the calibrated RAW texture. */
internal class RawHdrNetGl {
    class Prepared internal constructor(
        val modelInputTexture: Int,
        val coefficientsTexture: Int,
        val exposureTexture: Int,
        val profileStatsTexture: Int,
    )

    private var exposure: RawHdrNetExposureGl? = null
    private val coefficients = RawHdrNetCoefficientsGl()
    private val quad = RawFullscreenQuad()
    private var inputProgram = 0
    private var modelInputTexture = 0
    private var overrideTexture = 0
    private var curveTexture = 0
    private var renderProgram = 0
    private var framebuffer = 0
    private var renderTexture = 0
    private var renderWidth = 0
    private var renderHeight = 0

    fun prepare(
        context: Context,
        profileTexture: Int,
        width: Int,
        height: Int,
        profileToLinearSrgb: FloatArray,
        metadata: RawMetadata,
        maxHdrRatio: Float,
        exposureOverride: Pair<Float, Float>? = null,
        profileAlphaHasPeak: Boolean = false,
        boxedSourceWidth: Int = width,
        boxedSourceHeight: Int = height,
    ): Prepared? {
        if (profileTexture == 0 || width <= 0 || height <= 0 ||
            (profileAlphaHasPeak && (width != INPUT_WIDTH || height != INPUT_HEIGHT))
        ) return null
        if (inputProgram == 0) inputProgram = RawGlesProgram.compileCompute(INPUT_GLSL, "rawHdrNetInput")
        if (inputProgram == 0) return null
        if (modelInputTexture == 0) modelInputTexture = createTexture(INPUT_WIDTH, INPUT_HEIGHT, GLES31.GL_RGBA32F)
        if (modelInputTexture == 0 || !ensureOutputCurve()) return null
        val exposureTexture = if (exposureOverride != null) {
            uploadOverride(exposureOverride.first, exposureOverride.second)
        } else {
            val solver = exposure ?: RawHdrNetExposureGl(context.applicationContext).also { exposure = it }
            solver.prepare(
                profileTexture, width, height, profileToLinearSrgb, metadata, maxHdrRatio,
                boxedSourceWidth = boxedSourceWidth, boxedSourceHeight = boxedSourceHeight,
            )
        }
        if (exposureTexture == 0) return null
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
        GLES31.glUseProgram(inputProgram)
        bindTexture(inputProgram, "uProfile", 0, GLES31.GL_TEXTURE_2D, profileTexture)
        bindTexture(inputProgram, "uHdrNetExposure", 1, GLES31.GL_TEXTURE_2D, exposureTexture)
        GLES31.glUniform2i(location(inputProgram, "uProfileSize"), width, height)
        GLES31.glBindImageTexture(0, modelInputTexture, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA32F)
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(INPUT_WIDTH),
            GlesComputeWorkGroup.imageGroupCount(INPUT_HEIGHT),
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA32F)
        if (!checkGl("model input")) return null
        val grid = coefficients.run(context, modelInputTexture)
        if (grid == 0) return null
        return Prepared(modelInputTexture, grid, exposureTexture, if (profileAlphaHasPeak) profileTexture else 0)
    }

    /**
     * Applies the grid to the corresponding frame and returns profile RGB before the engine's
     * exposure ramp. The same tone evaluation is used to serialize capture DNGs.
     */
    fun render(
        prepared: Prepared,
        profileTexture: Int,
        width: Int,
        height: Int,
        baselineGain: Float,
    ): Int {
        if (!baselineGain.isFinite() || baselineGain <= 0f) return 0
        if (renderProgram == 0) renderProgram = quad.createProgram(RENDER_GLSL, "rawHdrNetRender")
        val program = renderProgram
        if (program == 0 || !ensureRenderTarget(width, height)) return 0
        GLES30.glUseProgram(program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glDisable(GLES30.GL_SCISSOR_TEST)
        GLES30.glDisable(GLES30.GL_DEPTH_TEST)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
        bindTexture(program, "uProfile", 0, GLES30.GL_TEXTURE_2D, profileTexture)
        bindTone(program, prepared, coefficientsUnit = 1, exposureUnit = 2, curveUnit = 3)
        GLES30.glUniform1f(location(program, "uBaselineGain"), baselineGain)
        quad.bindIdentityTextureMatrix(program)
        quad.draw(program)
        return if (checkGl("tone render")) renderTexture else 0
    }

    fun bindTone(
        program: Int,
        prepared: Prepared,
        coefficientsUnit: Int,
        exposureUnit: Int,
        curveUnit: Int,
    ) {
        bindTexture(program, "uHdrNetGrid", coefficientsUnit, GLES30.GL_TEXTURE_3D, prepared.coefficientsTexture)
        bindTexture(program, "uHdrNetExposure", exposureUnit, GLES30.GL_TEXTURE_2D, prepared.exposureTexture)
        bindTexture(program, "uHdrNetOutputCurve", curveUnit, GLES30.GL_TEXTURE_2D, curveTexture)
        GLES30.glUniform1i(location(program, "uHdrNetOutputLastIndex"), MgcHdrNetOutputCurve.samples().lastIndex)
    }

    private fun uploadOverride(shortGain: Float, ratio: Float): Int {
        if (!shortGain.isFinite() || shortGain <= 0f || !ratio.isFinite() || ratio < 1f) return 0
        if (overrideTexture == 0) overrideTexture = createTexture(1, 1, GLES30.GL_RGBA32F)
        if (overrideTexture == 0) return 0
        val values = directFloats(4).put(floatArrayOf(shortGain, ratio, shortGain * ratio, 0f))
        values.rewind()
        bindUpload(overrideTexture)
        GLES30.glTexSubImage2D(GLES30.GL_TEXTURE_2D, 0, 0, 0, 1, 1, GLES30.GL_RGBA, GLES30.GL_FLOAT, values)
        return if (checkGl("exposure override")) overrideTexture else 0
    }

    private fun ensureOutputCurve(): Boolean {
        if (curveTexture != 0) return true
        val samples = MgcHdrNetOutputCurve.samples()
        val height = (samples.size + CURVE_WIDTH - 1) / CURVE_WIDTH
        val buffer = directFloats(CURVE_WIDTH * height).put(samples)
        buffer.rewind()
        val texture = createTexture(CURVE_WIDTH, height, GLES30.GL_R32F)
        if (texture == 0) return false
        bindUpload(texture)
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D, 0, 0, 0, CURVE_WIDTH, height, GLES30.GL_RED, GLES30.GL_FLOAT, buffer,
        )
        if (!checkGl("output curve upload")) {
            GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
            return false
        }
        curveTexture = texture
        return true
    }

    private fun ensureRenderTarget(width: Int, height: Int): Boolean {
        if (renderTexture != 0 && width == renderWidth && height == renderHeight) return true
        if (framebuffer == 0) {
            val ids = IntArray(1)
            GLES30.glGenFramebuffers(1, ids, 0)
            framebuffer = ids[0]
            if (framebuffer == 0) return false
        }
        val texture = createTexture(width, height, GLES30.GL_RGBA16F)
        if (texture == 0) return false
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, texture, 0,
        )
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
            if (renderTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(renderTexture), 0)
            renderTexture = 0
            PLog.e(TAG, "Output framebuffer incomplete status=$status")
            return false
        }
        if (renderTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(renderTexture), 0)
        renderTexture = texture
        renderWidth = width
        renderHeight = height
        return true
    }

    fun reset() {
        exposure?.reset()
        coefficients.reset()
        inputProgram = 0
        modelInputTexture = 0
        overrideTexture = 0
        curveTexture = 0
        renderProgram = 0
        framebuffer = 0
        renderTexture = 0
        renderWidth = 0
        renderHeight = 0
    }

    fun release() {
        exposure?.release()
        coefficients.release()
        if (inputProgram != 0) GLES30.glDeleteProgram(inputProgram)
        if (renderProgram != 0) GLES30.glDeleteProgram(renderProgram)
        if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
        val textures = intArrayOf(modelInputTexture, overrideTexture, curveTexture, renderTexture)
        GLES30.glDeleteTextures(textures.size, textures, 0)
        reset()
    }

    companion object {
        private const val TAG = "RawHdrNetGl"
        private const val INPUT_WIDTH = DngPhotonProfileGainTableGenerator.HDRNET_INPUT_WIDTH
        private const val INPUT_HEIGHT = DngPhotonProfileGainTableGenerator.HDRNET_INPUT_HEIGHT
        private const val CURVE_WIDTH = 1024
        private const val TILE = GlesComputeWorkGroup.IMAGE_TILE_SIZE
        private const val LUMA_GLSL = "const vec3 HDRNET_LUMA = vec3(0.298828125, 0.5869140625, 0.1142578125);"
        private val GUIDE_SHIFTS = DngPhotonProfileGainTableGenerator.HDRNET_GUIDE_SHIFTS.joinToString()
        private val GUIDE_SLOPES = DngPhotonProfileGainTableGenerator.HDRNET_GUIDE_SLOPES.joinToString()

        private fun location(program: Int, uniform: String): Int = GLES30.glGetUniformLocation(program, uniform)

        private fun bindTexture(program: Int, uniform: String, unit: Int, target: Int, texture: Int) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
            GLES30.glBindTexture(target, texture)
            GLES30.glBindSampler(unit, 0)
            GLES30.glUniform1i(location(program, uniform), unit)
        }

        private fun createTexture(width: Int, height: Int, format: Int): Int {
            val ids = IntArray(1)
            GLES30.glGenTextures(1, ids, 0)
            val texture = ids[0]
            if (texture == 0) return 0
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, format, width, height)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            if (checkGl("texture allocation")) return texture
            GLES30.glDeleteTextures(1, ids, 0)
            return 0
        }

        private fun bindUpload(texture: Int) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
            GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_SKIP_PIXELS, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_SKIP_ROWS, 0)
        }

        private fun directFloats(count: Int) = ByteBuffer.allocateDirect(count * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder()).asFloatBuffer()

        private fun checkGl(stage: String): Boolean {
            val error = GLES30.glGetError()
            if (error == GLES30.GL_NO_ERROR) return true
            PLog.e(TAG, "HDRNet $stage failed GL=$error")
            return false
        }

        private val INPUT_GLSL = """
            #version 310 es
            layout(local_size_x = $TILE, local_size_y = $TILE, local_size_z = 1) in;
            precision highp float;
            precision highp int;
            uniform highp sampler2D uProfile;
            uniform highp sampler2D uHdrNetExposure;
            uniform ivec2 uProfileSize;
            layout(rgba32f, binding = 0) writeonly uniform highp image2D uModelInput;
            $LUMA_GLSL

            void main() {
                const ivec2 SIZE = ivec2($INPUT_WIDTH, $INPUT_HEIGHT);
                ivec2 cell = ivec2(gl_GlobalInvocationID.xy);
                if (any(greaterThanEqual(cell, SIZE))) return;
                ivec2 first = cell * uProfileSize / SIZE;
                ivec2 end = max((cell + 1) * uProfileSize / SIZE, first + 1);
                vec3 sum = vec3(0.0);
                for (int y = first.y; y < end.y; ++y) {
                    for (int x = first.x; x < end.x; ++x) {
                        sum += texelFetch(uProfile, ivec2(x, y), 0).rgb;
                    }
                }
                vec2 exposure = texelFetch(uHdrNetExposure, ivec2(0), 0).rg;
                vec3 shortRgb = clamp(sum * (exposure.x / float((end.x - first.x) * (end.y - first.y))), 0.0, 1.0);
                float longLuma = min(dot(shortRgb, HDRNET_LUMA) * exposure.y, 12.0);
                imageStore(uModelInput, cell, vec4(shortRgb, longLuma));
            }
        """.trimIndent()

        val TONE_GLSL = """
            uniform highp sampler3D uHdrNetGrid;
            uniform highp sampler2D uHdrNetExposure;
            uniform highp sampler2D uHdrNetOutputCurve;
            uniform highp int uHdrNetOutputLastIndex;

            $LUMA_GLSL
            const float HDRNET_GUIDE_SHIFTS[16] = float[16]($GUIDE_SHIFTS);
            const float HDRNET_GUIDE_SLOPES[16] = float[16]($GUIDE_SLOPES);

            vec2 hdrNetExposure() {
                return texelFetch(uHdrNetExposure, ivec2(0), 0).rg;
            }

            float hdrNetCurveTexel(int index) {
                return texelFetch(uHdrNetOutputCurve, ivec2(index % $CURVE_WIDTH, index / $CURVE_WIDTH), 0).r;
            }

            float hdrNetTargetLuma(vec3 shortRgb, vec2 uv, float ratio) {
                float luma = clamp(dot(shortRgb, HDRNET_LUMA), 0.0, 1.0);
                float guide = 0.0;
                for (int i = 0; i < 16; ++i) {
                    guide += HDRNET_GUIDE_SLOPES[i] * max(luma - HDRNET_GUIDE_SHIFTS[i], 0.0);
                }
                vec2 affine = texture(uHdrNetGrid, vec3(uv, clamp(guide, 0.0, 1.0))).rg;
                float lumaOut = (1.0 + (ratio - 1.0) * affine.x) * luma + affine.y;
                float gain = clamp(lumaOut / (luma + 1e-6), 0.03, 30.0);
                float target = dot(clamp(shortRgb * gain, 0.0, 1.0), HDRNET_LUMA);
                float position = clamp(target, 0.0, 1.0) * float(uHdrNetOutputLastIndex);
                int low = int(position);
                int high = min(low + 1, uHdrNetOutputLastIndex);
                return mix(hdrNetCurveTexel(low), hdrNetCurveTexel(high), position - float(low));
            }
        """.trimIndent()

        private val RENDER_GLSL = """
            #version 300 es
            precision highp float;
            precision highp int;
            uniform highp sampler2D uProfile;
            uniform float uBaselineGain;
            in vec2 vTexCoord;
            out vec4 fragColor;

            $TONE_GLSL

            void main() {
                vec4 source = texelFetch(uProfile, ivec2(gl_FragCoord.xy), 0);
                vec3 rgb = max(source.rgb, 0.0);
                vec2 exposure = hdrNetExposure();
                float target = hdrNetTargetLuma(rgb * exposure.x, vTexCoord, exposure.y);
                float sourceLuma = dot(rgb, HDRNET_LUMA);
                float gain = clamp(target / max(sourceLuma * uBaselineGain, 1e-8), 1.0 / 4096.0, 4096.0);
                fragColor = vec4(source.rgb * gain, source.a);
            }
        """.trimIndent()
    }
}
