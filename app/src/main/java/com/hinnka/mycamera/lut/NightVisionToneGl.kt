package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.processor.NightVisionTone
import com.hinnka.mycamera.processor.NightVisionToneCurve
import com.hinnka.mycamera.raw.RawFullscreenQuad
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * GPU night vision tone: one full-screen pass from a source texture into an owned RGBA16F
 * texture. [GLSL] is shared with the preview color pass, so preview and capture evaluate the
 * same formula. Must be used on a single GL thread with a current context.
 */
internal class NightVisionToneGl {
    private val quad = RawFullscreenQuad()
    private var program = 0
    private var curveTexture = 0
    private var outputTexture = 0
    private var framebuffer = 0
    private var outputWidth = 0
    private var outputHeight = 0

    /** Returns a texture owned by this instance holding [sourceTextureId] with [curve] applied. */
    fun apply(sourceTextureId: Int, width: Int, height: Int, curve: NightVisionToneCurve): Int {
        ensureProgram()
        uploadCurve(curve)
        ensureOutput(width, height)

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(program)
        quad.bindIdentityTextureMatrix(program)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uSource"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, curveTexture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uNightToneTexture"), 1)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, "uNightWhitePoint"), curve.whitePoint)
        quad.draw(program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        return outputTexture
    }

    fun release() {
        if (program != 0) GLES30.glDeleteProgram(program)
        if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
        val textures = intArrayOf(outputTexture, curveTexture).filter { it != 0 }.toIntArray()
        if (textures.isNotEmpty()) GLES30.glDeleteTextures(textures.size, textures, 0)
        program = 0
        framebuffer = 0
        outputTexture = 0
        curveTexture = 0
        outputWidth = 0
        outputHeight = 0
    }

    private fun ensureProgram() {
        if (program != 0) return
        program = quad.createProgram(FRAGMENT_SHADER, "NightVisionTone")
        check(program != 0) { "Night vision tone program failed to link" }
    }

    private fun uploadCurve(curve: NightVisionToneCurve) {
        if (curveTexture == 0) curveTexture = createCurveTexture()
        uploadCurveValues(curveTexture, curve)
    }

    private fun ensureOutput(width: Int, height: Int) {
        if (outputTexture != 0 && outputWidth == width && outputHeight == height) return
        if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
        if (outputTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(outputTexture), 0)
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textures[0])
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, width, height)
        setNearestClamp()
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffers[0])
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, textures[0], 0,
        )
        val complete = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) == GLES30.GL_FRAMEBUFFER_COMPLETE
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        outputTexture = textures[0]
        framebuffer = framebuffers[0]
        outputWidth = width
        outputHeight = height
        check(complete) { "Night vision tone framebuffer is incomplete" }
    }

    companion object {
        /** Creates an R32F [NightVisionTone.CURVE_SIZE] x 1 curve texture for [uploadCurveValues]. */
        fun createCurveTexture(): Int {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textures[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D, 0, GLES30.GL_R32F,
                NightVisionTone.CURVE_SIZE, 1, 0, GLES30.GL_RED, GLES30.GL_FLOAT, null,
            )
            setNearestClamp()
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            return textures[0]
        }

        fun uploadCurveValues(texture: Int, curve: NightVisionToneCurve) {
            val buffer = ByteBuffer.allocateDirect(NightVisionTone.CURVE_SIZE * Float.SIZE_BYTES)
                .order(ByteOrder.nativeOrder())
            buffer.asFloatBuffer().put(curve.values)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
            GLES30.glTexSubImage2D(
                GLES30.GL_TEXTURE_2D, 0, 0, 0,
                NightVisionTone.CURVE_SIZE, 1, GLES30.GL_RED, GLES30.GL_FLOAT, buffer,
            )
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        }

        private fun setNearestClamp() {
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        }

        /**
         * Uniforms `uNightToneTexture` (R32F, [NightVisionTone.CURVE_SIZE] x 1) and
         * `uNightWhitePoint`, and `vec3 applyNightVisionTone(vec3)`: luma-ratio gain from the
         * curve, limited per pixel so the brightest channel uses at most
         * [NightVisionTone.HIGHLIGHT_HEADROOM] of its headroom relative to the white point.
         * [NightVisionTone.estimate] builds the curve and uses the same soft minimum.
         */
        val GLSL = """
            uniform highp sampler2D uNightToneTexture;
            uniform highp float uNightWhitePoint;

            const vec3 NIGHT_TONE_LUMA = vec3(0.2126, 0.7152, 0.0722);

            float sampleNightTone(float value) {
                float position = clamp(value, 0.0, 1.0) * ${NightVisionTone.CURVE_SIZE - 1}.0;
                int lowerIndex = min(int(floor(position)), ${NightVisionTone.CURVE_SIZE - 2});
                float amount = position - float(lowerIndex);
                float lower = texelFetch(uNightToneTexture, ivec2(lowerIndex, 0), 0).r;
                float upper = texelFetch(uNightToneTexture, ivec2(lowerIndex + 1, 0), 0).r;
                return mix(lower, upper, amount);
            }

            float nightSoftMin(float a, float b) {
                float hard = min(a, b);
                float distance = abs(a - b) / ${NightVisionTone.SOFT_MIN_WIDTH};
                if (distance > 12.0) return hard;
                return hard - ${NightVisionTone.SOFT_MIN_WIDTH} * log(1.0 + exp(-distance));
            }

            vec3 applyNightVisionTone(vec3 color) {
                vec3 c = clamp(color, 0.0, 1.0);
                float y = dot(c, NIGHT_TONE_LUMA);
                if (y <= 1e-4) return c;
                float gain = sampleNightTone(y) / y;
                float m = max(max(max(c.r, c.g), c.b), 1e-4);
                float normalized = min(m / uNightWhitePoint, 1.0);
                float limit = (normalized + (1.0 - normalized) * ${NightVisionTone.HIGHLIGHT_HEADROOM}) / m;
                gain = max(nightSoftMin(gain, limit), min(1.0, gain));
                return clamp(c * gain, 0.0, 1.0);
            }
        """.trimIndent()

        private val FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uSource;

            $GLSL

            void main() {
                vec4 source = texture(uSource, vTexCoord);
                fragColor = vec4(applyNightVisionTone(source.rgb), source.a);
            }
        """.trimIndent()
    }
}
