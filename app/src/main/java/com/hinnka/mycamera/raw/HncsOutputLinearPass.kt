package com.hinnka.mycamera.raw

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog

/** Decodes HNCS FilmCurve companding and transforms it to linear output RGB. */
internal class HncsOutputLinearPass(
    private val quad: RawFullscreenQuad,
) {
    data class Input(
        val textureId: Int,
        val targetFramebufferId: Int,
        val targetTextureId: Int,
        val outputTransform: FloatArray,
        val width: Int,
        val height: Int,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    private var program = 0

    fun render(input: Input): Output? {
        val activeProgram = getOrCreateProgram()
        if (activeProgram == 0) {
            PLog.e(TAG, "Unable to create HNCS colorspace-convert program")
            return null
        }
        GLES30.glUseProgram(activeProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.targetFramebufferId)
        GLES30.glViewport(0, 0, input.width, input.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, input.textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uInputTexture"), 0)
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(activeProgram, "uHncsToLinearOutput"),
            1,
            false,
            transpose3x3(input.outputTransform),
            0,
        )
        quad.bindIdentityTextureMatrix(activeProgram)
        quad.draw(activeProgram)
        RawGlesProgram.logErrors("HncsOutputLinearPass.render")
        return Output(input.targetTextureId, input.width, input.height)
    }

    fun release() {
        if (program != 0) {
            GLES30.glDeleteProgram(program)
            program = 0
        }
    }

    private fun getOrCreateProgram(): Int {
        if (program == 0) program = quad.createProgram(FRAGMENT_SHADER, "hncsOutputLinear")
        return program
    }

    private fun transpose3x3(matrix: FloatArray): FloatArray {
        require(matrix.size == 9) { "Expected a 3x3 matrix" }
        return floatArrayOf(
            matrix[0], matrix[3], matrix[6],
            matrix[1], matrix[4], matrix[7],
            matrix[2], matrix[5], matrix[8],
        )
    }

    companion object {
        private const val TAG = "HncsOutputLinearPass"

        val FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp sampler2D;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uInputTexture;
            uniform mat3 uHncsToLinearOutput;

            vec3 gamma22Eotf(vec3 color) {
                return pow(max(color, vec3(0.0)), vec3(2.2));
            }

            void main() {
                vec4 sampleValue = texture(uInputTexture, vTexCoord);
                vec3 hncsLinear = gamma22Eotf(sampleValue.rgb);
                fragColor = vec4(uHncsToLinearOutput * hncsLinear, sampleValue.a);
            }
        """.trimIndent()
    }
}
