package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.processor.GlesGpuScheduler

/** Converts an RGBA16UI Linear RAW image or strip to RGBA16F. */
internal class RawLinearUintToFloatPass {
    data class Input(
        val textureId: Int,
        val targetTextureId: Int,
        val outputY: Int,
        val rowCount: Int,
        val width: Int,
        val waitForCpuReuse: Boolean,
        val label: String,
    )

    data class Output(val textureId: Int, val outputY: Int, val rowCount: Int)

    private var program = 0
    val isReady: Boolean get() = program != 0

    fun initialize(): Boolean = getOrCreateProgram() != 0

    fun render(input: Input): Output? {
        val activeProgram = getOrCreateProgram()
        if (activeProgram == 0) return null
        GLES31.glUseProgram(activeProgram)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(activeProgram, "uOutputY"), input.outputY)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(activeProgram, "uRowCount"), input.rowCount)
        GLES31.glBindImageTexture(
            0,
            input.textureId,
            0,
            false,
            0,
            GLES31.GL_READ_ONLY,
            GLES31.GL_RGBA16UI,
        )
        GLES31.glBindImageTexture(
            1,
            input.targetTextureId,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES31.GL_RGBA16F,
        )
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(input.width),
            GlesComputeWorkGroup.imageGroupCount(input.rowCount),
            1,
        )
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
        )
        GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_READ_ONLY, GLES31.GL_RGBA16UI)
        GLES31.glBindImageTexture(1, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA16F)
        RawGlesProgram.logErrors(input.label)
        if (input.waitForCpuReuse) {
            GlesGpuScheduler.waitForGpuCheckpoint(TAG, input.label)
        }
        return Output(input.targetTextureId, input.outputY, input.rowCount)
    }

    fun release() {
        if (program != 0) {
            GLES31.glDeleteProgram(program)
            program = 0
        }
    }

    private fun getOrCreateProgram(): Int {
        if (program == 0) program = RawGlesProgram.compileCompute(COMPUTE_SHADER, "LinearRawUintToFloat")
        return program
    }

    companion object {
        private const val TAG = "RawLinearUintToFloatPass"

        val COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp image2D;
            precision highp uimage2D;

            layout(local_size_x = 8, local_size_y = 8) in;
            layout(rgba16ui, binding = 0) readonly uniform highp uimage2D uLinearRawInput;
            layout(rgba16f, binding = 1) writeonly uniform highp image2D uLinearRawOutput;
            uniform int uOutputY;
            uniform int uRowCount;

            void main() {
                ivec2 position = ivec2(gl_GlobalInvocationID.xy);
                ivec2 inputSize = imageSize(uLinearRawInput);
                ivec2 outputPosition = ivec2(position.x, position.y + uOutputY);
                ivec2 outputSize = imageSize(uLinearRawOutput);
                if (position.x >= inputSize.x || position.y >= uRowCount ||
                    any(greaterThanEqual(outputPosition, outputSize))) return;
                uvec4 sample16 = imageLoad(uLinearRawInput, position);
                imageStore(uLinearRawOutput, outputPosition, vec4(sample16) / 65535.0);
            }
        """.trimIndent()
    }
}
