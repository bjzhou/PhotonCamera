package com.hinnka.mycamera.raw

import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup

/** Quantizes a normalized RGBA16F Linear RAW texture to RGBA16UI. */
internal class RawLinearFloatToUintPass {
    data class Input(
        val textureId: Int,
        val targetTextureId: Int,
        val width: Int,
        val height: Int,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    private var program = 0
    val isReady: Boolean get() = program != 0

    fun initialize(): Boolean = getOrCreateProgram() != 0

    fun render(input: Input): Output? {
        val activeProgram = getOrCreateProgram()
        if (activeProgram == 0) return null
        GLES31.glUseProgram(activeProgram)
        GLES31.glBindImageTexture(0, input.textureId, 0, false, 0, GLES31.GL_READ_ONLY, GLES31.GL_RGBA16F)
        GLES31.glBindImageTexture(
            1,
            input.targetTextureId,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES31.GL_RGBA16UI,
        )
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(input.width),
            GlesComputeWorkGroup.imageGroupCount(input.height),
            1,
        )
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
        )
        GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_READ_ONLY, GLES31.GL_RGBA16F)
        GLES31.glBindImageTexture(1, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES31.GL_RGBA16UI)
        RawGlesProgram.logErrors("RawLinearFloatToUintPass.render ${input.width}x${input.height}")
        return Output(input.targetTextureId, input.width, input.height)
    }

    fun release() {
        if (program != 0) {
            GLES31.glDeleteProgram(program)
            program = 0
        }
    }

    private fun getOrCreateProgram(): Int {
        if (program == 0) program = RawGlesProgram.compileCompute(COMPUTE_SHADER, "LinearRawFloatToUint")
        return program
    }

    companion object {
        val COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp image2D;
            precision highp uimage2D;

            layout(local_size_x = 8, local_size_y = 8) in;
            layout(rgba16f, binding = 0) readonly uniform highp image2D uLinearRawInput;
            layout(rgba16ui, binding = 1) writeonly uniform highp uimage2D uLinearRawOutput;

            void main() {
                ivec2 position = ivec2(gl_GlobalInvocationID.xy);
                ivec2 size = imageSize(uLinearRawInput);
                if (any(greaterThanEqual(position, size))) return;
                vec4 normalized = clamp(imageLoad(uLinearRawInput, position), 0.0, 1.0);
                imageStore(
                    uLinearRawOutput,
                    position,
                    uvec4(floor(normalized * 65535.0 + 0.5))
                );
            }
        """.trimIndent()
    }
}
