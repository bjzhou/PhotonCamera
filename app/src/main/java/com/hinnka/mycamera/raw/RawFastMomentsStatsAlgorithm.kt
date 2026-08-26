package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup

/** Builds MGC Fast Moments' 1/16-resolution per-CFA-channel RAW maximum surface. */
internal class RawFastMomentsStatsAlgorithm {
    data class Input(
        val rawTextureId: Int,
        val outputTextureId: Int,
        val width: Int,
        val height: Int,
        val cfaPattern: Int,
        val blackLevel: FloatArray,
        val whiteLevel: Float,
    )

    private var program = 0

    fun initialize(): Boolean {
        if (program == 0) {
            program = RawGlesProgram.compileCompute(SHADER, "RAW_FAST_MOMENTS_STATS")
        }
        return program != 0
    }

    fun execute(input: Input): Boolean {
        if (!initialize()) return false
        require(input.rawTextureId != 0 && input.outputTextureId != 0)
        require(input.width > 0 && input.height > 0)
        require(input.cfaPattern in RawMetadata.CFA_RGGB..RawMetadata.CFA_QUAD_8X8_BGGR)
        require(input.blackLevel.size >= 4)
        require(
            input.whiteLevel.isFinite() && input.whiteLevel > 0f &&
                input.blackLevel.take(4).all {
                    it.isFinite() && it >= 0f && input.whiteLevel > it
                },
        )

        val outputWidth = (input.width + DOWNSAMPLE - 1) / DOWNSAMPLE
        val outputHeight = (input.height + DOWNSAMPLE - 1) / DOWNSAMPLE
        try {
            GLES31.glUseProgram(program)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RAW_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, input.rawTextureId)
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(program, "uRawTexture"),
                RAW_TEXTURE_UNIT,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(program, "uImageSize"),
                input.width,
                input.height,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(program, "uOutputSize"),
                outputWidth,
                outputHeight,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(program, "uCfaPattern"),
                input.cfaPattern,
            )
            GLES31.glUniform4fv(
                GLES31.glGetUniformLocation(program, "uBlackLevel"),
                1,
                input.blackLevel,
                0,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(program, "uWhiteLevel"),
                input.whiteLevel,
            )
            GLES31.glBindImageTexture(
                0,
                input.outputTextureId,
                0,
                false,
                0,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16F,
            )
            GLES31.glDispatchCompute(
                GlesComputeWorkGroup.imageGroupCount(outputWidth),
                GlesComputeWorkGroup.imageGroupCount(outputHeight),
                1,
            )
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                    GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
            )
            RawGlesProgram.logErrors("RAW Fast Moments statistics")
            return true
        } finally {
            GLES31.glBindImageTexture(
                0,
                0,
                0,
                false,
                0,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16F,
            )
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RAW_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        }
    }

    fun release() {
        if (program != 0) {
            GLES31.glDeleteProgram(program)
            program = 0
        }
    }

    companion object {
        const val DOWNSAMPLE = 16
        private const val RAW_TEXTURE_UNIT = 0

        private val SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp usampler2D;
            precision highp image2D;

            layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
            uniform highp usampler2D uRawTexture;
            uniform ivec2 uImageSize;
            uniform ivec2 uOutputSize;
            uniform int uCfaPattern;
            uniform vec4 uBlackLevel;
            uniform float uWhiteLevel;
            layout(rgba16f, binding = 0) writeonly uniform image2D uOutput;

            int channelAt(int pattern, ivec2 coord) {
                int basePattern = pattern >= 8 ? pattern - 8 :
                    (pattern >= 4 ? pattern - 4 : pattern);
                int blockSize = pattern >= 8 ? 4 : (pattern >= 4 ? 2 : 1);
                int blockCol = (coord.x / blockSize) & 1;
                int blockRow = (coord.y / blockSize) & 1;
                if (basePattern == 0) {
                    if (blockRow == 0) return blockCol == 0 ? 0 : 1;
                    return blockCol == 0 ? 2 : 3;
                } else if (basePattern == 1) {
                    if (blockRow == 0) return blockCol == 0 ? 1 : 0;
                    return blockCol == 0 ? 3 : 2;
                } else if (basePattern == 2) {
                    if (blockRow == 0) return blockCol == 0 ? 2 : 3;
                    return blockCol == 0 ? 0 : 1;
                }
                if (blockRow == 0) return blockCol == 0 ? 3 : 2;
                return blockCol == 0 ? 1 : 0;
            }

            void main() {
                ivec2 outputCoord = ivec2(gl_GlobalInvocationID.xy);
                if (any(greaterThanEqual(outputCoord, uOutputSize))) return;
                ivec2 origin = outputCoord * ${DOWNSAMPLE};
                vec4 maxima = vec4(0.0);
                for (int y = 0; y < ${DOWNSAMPLE}; ++y) {
                    for (int x = 0; x < ${DOWNSAMPLE}; ++x) {
                        ivec2 coord = origin + ivec2(x, y);
                        if (any(greaterThanEqual(coord, uImageSize))) continue;
                        int channel = channelAt(uCfaPattern, coord);
                        float raw = float(texelFetch(uRawTexture, coord, 0).r);
                        float black = uBlackLevel[channel];
                        float sensor = max(raw - black, 0.0) /
                            max(uWhiteLevel - black, 1.0);
                        maxima[channel] = max(maxima[channel], sensor);
                    }
                }
                imageStore(uOutput, outputCoord, maxima);
            }
        """.trimIndent()
    }
}
