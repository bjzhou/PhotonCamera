package com.hinnka.mycamera.raw

import android.opengl.GLES30

internal data class RawEngineToneShaderDefinition(
    val engineUniforms: String,
    val engineFunctions: String,
    val profileUniforms: String = RawEngineTonePass.PROFILE_EXPOSURE_COMBINED_UNIFORMS,
    val profileFunctions: String = "",
    val includeAdobeProfilePipeline: Boolean = false,
)

/** Shared GLES lifecycle for one selectable rendering-engine shader. */
internal abstract class RawRenderingEngineToneAlgorithm(
    private val quad: RawFullscreenQuad,
    internal val shaderDefinition: RawEngineToneShaderDefinition,
) {
    private var program = 0

    private fun ensureProgram(): Int {
        if (program != 0) return program
        return quad.createProgram(
            RawEngineTonePass.fragmentShader(shaderDefinition),
            "rawEngineTone${javaClass.simpleName}",
        ).also { program = it }
    }

    fun render(input: RawEngineTonePass.Input): RawEngineTonePass.Output? {
        val activeProgram = ensureProgram()
        if (activeProgram == 0) return null

        GLES30.glUseProgram(activeProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.targetFramebufferId)
        GLES30.glViewport(0, 0, input.width, input.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, input.textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uInputTexture"), 0)
        RawToneMappingGl.bindRawToneMappingUniforms(activeProgram, input.toneMappingParameters)
        bindEngineResources(activeProgram, input)
        input.bindProfileGainTable(activeProgram)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(activeProgram, "uGlobalUvOrigin"),
            input.globalOriginX.toFloat() / input.fullImageWidth.coerceAtLeast(1),
            input.globalOriginY.toFloat() / input.fullImageHeight.coerceAtLeast(1),
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(activeProgram, "uGlobalUvScale"),
            input.width.toFloat() / input.fullImageWidth.coerceAtLeast(1),
            input.height.toFloat() / input.fullImageHeight.coerceAtLeast(1),
        )
        if (!input.colorEngine.isHncs) {
            GLES30.glUniformMatrix3fv(
                GLES30.glGetUniformLocation(activeProgram, "uOutputTransform"),
                1,
                false,
                transpose3x3(input.outputTransform),
                0,
            )
        }
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(activeProgram, "uProfileToEngineTransform"),
            1,
            false,
            transpose3x3(input.profileToEngineTransform),
            0,
        )
        quad.bindIdentityTextureMatrix(activeProgram)
        // Resource binders may leave another texture unit active.
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, input.textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uInputTexture"), 0)
        quad.draw(activeProgram)
        RawGlesProgram.logErrors("${javaClass.simpleName}.render")
        return RawEngineTonePass.Output(input.targetTextureId, input.width, input.height)
    }

    fun release() {
        if (program != 0) {
            GLES30.glDeleteProgram(program)
            program = 0
        }
        releaseEngineResources()
    }

    protected open fun bindEngineResources(
        program: Int,
        input: RawEngineTonePass.Input,
    ) {
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileExposureLinearGain"),
            input.profileExposure.linearGain,
        )
    }

    protected open fun releaseEngineResources() = Unit

    private fun transpose3x3(matrix: FloatArray): FloatArray {
        require(matrix.size == 9) { "Expected a 3x3 matrix" }
        return floatArrayOf(
            matrix[0], matrix[3], matrix[6],
            matrix[1], matrix[4], matrix[7],
            matrix[2], matrix[5], matrix[8],
        )
    }
}
