package com.hinnka.mycamera.raw

import android.opengl.GLES30

/** Converts demosaicked camera RGB to the linear profile/working RGB contract. */
internal class RawLinearRcdPass(
    private val quad: RawFullscreenQuad,
) {
    data class Input(
        val textureId: Int,
        val targetFramebufferId: Int,
        val targetTextureId: Int,
        val width: Int,
        val height: Int,
        val colorCorrectionMatrix: FloatArray,
        val cameraWhite: FloatArray,
        val exposureGain: Float,
        val hncsCameraDomainGain: FloatArray?,
        val hncsInputEv: Float,
        val hncsHighlightTruncation: Float,
        val hncsHighlightMaximum: Float,
        val clampProfileRgb: Boolean,
        val hueSatMapSupportsOverrange: Boolean,
        val bindHueSatMap: (program: Int) -> Unit,
        val label: String,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    private var program = 0
    val isReady: Boolean get() = program != 0

    fun initialize(): Boolean = getOrCreateProgram() != 0

    fun render(input: Input): Output? {
        val activeProgram = getOrCreateProgram()
        if (activeProgram == 0) return null
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.targetFramebufferId)
        RawGlesProgram.logErrors("${input.label} setup framebuffer")
        GLES30.glUseProgram(activeProgram)
        GLES30.glViewport(0, 0, input.width, input.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, input.textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uDemosaickedTexture"), 0)
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(activeProgram, "uColorCorrectionMatrix"),
            1,
            false,
            transpose3x3(input.colorCorrectionMatrix),
            0,
        )
        GLES30.glUniform3f(
            GLES30.glGetUniformLocation(activeProgram, "uCameraWhite"),
            input.cameraWhite[0],
            input.cameraWhite[1],
            input.cameraWhite[2],
        )
        input.bindHueSatMap(activeProgram)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uExposureGain"),
            input.exposureGain,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uHncsCameraDomainEnabled"),
            if (input.hncsCameraDomainGain != null) 1 else 0,
        )
        GLES30.glUniform3fv(
            GLES30.glGetUniformLocation(activeProgram, "uHncsCameraDomainGain"),
            1,
            input.hncsCameraDomainGain ?: IDENTITY_GAIN,
            0,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uHncsInputEV"),
            input.hncsInputEv,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uHncsHrTrunc"),
            input.hncsHighlightTruncation,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uHncsHrMax"),
            input.hncsHighlightMaximum,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uClampProfileRgb"),
            if (input.clampProfileRgb) 1 else 0,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uHueSatSupportOverrange"),
            if (input.hueSatMapSupportsOverrange) 1 else 0,
        )
        quad.bindIdentityTextureMatrix(activeProgram)
        quad.draw(activeProgram)
        RawGlesProgram.logErrors("${input.label} draw")
        return Output(input.targetTextureId, input.width, input.height)
    }

    fun release() {
        if (program != 0) {
            GLES30.glDeleteProgram(program)
            program = 0
        }
    }

    private fun getOrCreateProgram(): Int {
        if (program == 0) program = quad.createProgram(FRAGMENT_SHADER, "linearRcd")
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
        private val IDENTITY_GAIN = floatArrayOf(1f, 1f, 1f)

        val FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp sampler3D;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uDemosaickedTexture;
            uniform sampler3D uLinearDcpHueSatMap;
            uniform mat3 uColorCorrectionMatrix;
            uniform vec3 uCameraWhite;
            uniform float uExposureGain;
            uniform int uHncsCameraDomainEnabled;
            uniform vec3 uHncsCameraDomainGain;
            uniform float uHncsInputEV;
            uniform float uHncsHrTrunc;
            uniform float uHncsHrMax;
            uniform int uClampProfileRgb;
            uniform int uHueSatSupportOverrange;
            uniform int uLinearDcpHueSatEnabled;
            uniform ivec3 uLinearDcpHueSatDivisions;
            uniform int uLinearDcpHueSatEncoding;

            ${DcpHueSatMapGl.SHADER_FUNCTIONS}

            void main() {
                vec3 rgb = texture(uDemosaickedTexture, vTexCoord).rgb;
                if (uHncsCameraDomainEnabled != 0) {
                    rgb *= uHncsCameraDomainGain;
                    rgb /= uHncsHrTrunc;
                    rgb = clamp(rgb, vec3(0.0), vec3(uHncsHrMax));
                    rgb *= uHncsInputEV;
                }
                if (uClampProfileRgb != 0) {
                    rgb = min(rgb, max(uCameraWhite, vec3(0.001)));
                }
                rgb = uColorCorrectionMatrix * rgb;
                if (uClampProfileRgb != 0) {
                    rgb = clamp(rgb, vec3(0.0), vec3(1.0));
                }
                if (uLinearDcpHueSatEnabled != 0) {
                    rgb = dngApplyHueSatMap(
                        rgb,
                        uLinearDcpHueSatMap,
                        uLinearDcpHueSatDivisions,
                        uLinearDcpHueSatEncoding,
                        uHueSatSupportOverrange != 0
                    );
                }
                rgb *= uExposureGain;
                fragColor = vec4(rgb, 1.0);
            }
        """.trimIndent()
    }
}
