package com.hinnka.mycamera.raw

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog

/** Encodes a linear RGB texture to sRGB. */
internal class RawSrgbPass(
    private val quad: RawFullscreenQuad,
) {
    data class Input(
        val textureId: Int,
        val targetFramebufferId: Int,
        val targetTextureId: Int,
        val width: Int,
        val height: Int,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    private var program = 0

    fun render(input: Input): Output? {
        val activeProgram = getOrCreateProgram()
        if (activeProgram == 0) {
            PLog.e(TAG, "Unable to create RAW sRGB program")
            return null
        }
        GLES30.glUseProgram(activeProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.targetFramebufferId)
        GLES30.glViewport(0, 0, input.width, input.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, input.textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uInputTexture"), 0)
        quad.bindIdentityTextureMatrix(activeProgram)
        quad.draw(activeProgram)
        RawGlesProgram.logErrors("RawSrgbPass.render")
        return Output(input.targetTextureId, input.width, input.height)
    }

    fun release() {
        if (program != 0) {
            GLES30.glDeleteProgram(program)
            program = 0
        }
    }

    private fun getOrCreateProgram(): Int {
        if (program == 0) program = quad.createProgram(FRAGMENT_SHADER, "rawSrgb")
        return program
    }

    companion object {
        private const val TAG = "RawSrgbPass"

        val FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uInputTexture;

            vec3 linearToSrgb(vec3 color) {
                vec3 clampedColor = max(color, vec3(0.0));
                vec3 low = clampedColor * 12.92;
                vec3 high = 1.055 * pow(clampedColor, vec3(1.0 / 2.4)) - 0.055;
                bvec3 useHigh = greaterThan(clampedColor, vec3(0.0031308));
                return vec3(
                    useHigh.r ? high.r : low.r,
                    useHigh.g ? high.g : low.g,
                    useHigh.b ? high.b : low.b
                );
            }

            void main() {
                vec3 color = texture(uInputTexture, vTexCoord).rgb;
                fragColor = vec4(linearToSrgb(color), 1.0);
            }
        """.trimIndent()
    }
}
