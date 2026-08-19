package com.hinnka.mycamera.raw

import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup

/** Expands a strip of RGB16UI texels to image-load-compatible RGBA16UI. */
internal class RawLinearRgbExpandPass {
    data class Input(
        val textureId: Int,
        val targetTextureId: Int,
        val sourceY: Int,
        val rowCount: Int,
        val width: Int,
    )

    data class Output(val textureId: Int, val rowCount: Int)

    private var program = 0
    val isReady: Boolean get() = program != 0

    fun initialize(): Boolean = getOrCreateProgram() != 0

    fun render(input: Input): Output? {
        val activeProgram = getOrCreateProgram()
        if (activeProgram == 0) return null
        GLES31.glUseProgram(activeProgram)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, input.textureId)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(activeProgram, "uLinearRawRgbInput"),
            0,
        )
        GLES31.glUniform1i(GLES31.glGetUniformLocation(activeProgram, "uSourceY"), input.sourceY)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(activeProgram, "uRowCount"), input.rowCount)
        GLES31.glBindImageTexture(
            0,
            input.targetTextureId,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES31.GL_RGBA16UI,
        )
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(input.width),
            GlesComputeWorkGroup.imageGroupCount(input.rowCount),
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
        RawGlesProgram.logErrors("RawLinearRgbExpandPass.render")
        return Output(input.targetTextureId, input.rowCount)
    }

    fun release() {
        if (program != 0) {
            GLES31.glDeleteProgram(program)
            program = 0
        }
    }

    private fun getOrCreateProgram(): Int {
        if (program == 0) program = RawGlesProgram.compileCompute(COMPUTE_SHADER, "LinearRawRgbExpand")
        return program
    }

    companion object {
        val COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp usampler2D;
            precision highp uimage2D;

            layout(local_size_x = 8, local_size_y = 8) in;
            uniform highp usampler2D uLinearRawRgbInput;
            layout(rgba16ui, binding = 0) writeonly uniform highp uimage2D uLinearRawRgbaOutput;
            uniform int uSourceY;
            uniform int uRowCount;

            void main() {
                ivec2 position = ivec2(gl_GlobalInvocationID.xy);
                ivec2 inputSize = textureSize(uLinearRawRgbInput, 0);
                if (position.x >= inputSize.x || position.y >= uRowCount) return;
                ivec2 sourcePosition = ivec2(position.x, position.y + uSourceY);
                uvec3 rgb = texelFetch(uLinearRawRgbInput, sourcePosition, 0).rgb;
                imageStore(uLinearRawRgbaOutput, position, uvec4(rgb, 65535u));
            }
        """.trimIndent()
    }
}
