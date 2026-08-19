package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.processor.GlesGpuScheduler
import com.hinnka.mycamera.utils.PLog

/**
 * Capture-metering RAW preparation.
 *
 * Each output texel collapses one standard 2x2 Bayer cell into un-white-balanced camera RGB.
 * Spatial interpolation is deliberately omitted: exposure matching consumes a 256-pixel preview,
 * while preserving the RAW black-level and lens-shading domains is materially more important than
 * reconstructing full-resolution edges.
 */
internal object RawMeteringDemosaicShaders {
    val HALF_RESOLUTION = """
        #version 310 es

        layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;

        precision highp float;
        precision highp int;
        precision highp usampler2D;
        precision highp image2D;

        uniform highp usampler2D uRawTexture;
        uniform sampler2D uLensShadingMap;
        uniform ivec2 uImageSize;
        uniform ivec2 uOutputSize;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        uniform int uLensShadingEnabled;
        uniform int uLensShadingUsesDngGrid;
        uniform vec2 uLensShadingMapSize;
        uniform vec4 uLensShadingGrid;
        uniform vec2 uLensShadingBoundsOrigin;
        uniform vec2 uLensShadingBoundsSize;

        layout(rgba16f, binding = 0) writeonly uniform image2D uOutput;

        int channelAt(int pattern, ivec2 coord) {
            int index = (coord.x & 1) + ((coord.y & 1) << 1);
            if (pattern == 1) {
                if (index == 0) return 1;
                if (index == 1) return 0;
                if (index == 2) return 3;
                return 2;
            }
            if (pattern == 2) {
                if (index == 0) return 2;
                if (index == 1) return 3;
                if (index == 2) return 0;
                return 1;
            }
            if (pattern == 3) {
                if (index == 0) return 3;
                if (index == 1) return 2;
                if (index == 2) return 1;
                return 0;
            }
            return index;
        }

        int lensShadingChannelAt(int channel, ivec2 coord) {
            if (uLensShadingUsesDngGrid != 0 || channel == 0 || channel == 3) {
                return channel;
            }
            return (coord.y & 1) == 0 ? 1 : 2;
        }

        float lensShadingGainAt(int channel, ivec2 coord) {
            if (uLensShadingEnabled == 0) return 1.0;
            vec2 normalized = (vec2(coord) + vec2(0.5)) / vec2(uImageSize);
            vec2 uv = normalized;
            if (uLensShadingUsesDngGrid != 0) {
                vec2 boundsSize = max(uLensShadingBoundsSize, vec2(1.0));
                normalized =
                    (vec2(coord) + vec2(0.5) - uLensShadingBoundsOrigin) / boundsSize;
                vec2 mapIndex = (normalized - uLensShadingGrid.xy) /
                    max(uLensShadingGrid.zw, vec2(1e-8));
                uv = (mapIndex + vec2(0.5)) / max(uLensShadingMapSize, vec2(1.0));
            }
            vec4 gains = texture(uLensShadingMap, uv);
            return max(gains[lensShadingChannelAt(channel, coord)], 0.0);
        }

        float normalizedRawAt(ivec2 coord, int channel) {
            float raw = float(texelFetch(uRawTexture, coord, 0).r);
            float black = uBlackLevel[clamp(channel, 0, 3)];
            float sensorRange = max(uWhiteLevel - black, 1.0);
            return clamp((raw - black) / sensorRange, 0.0, 1.0) *
                lensShadingGainAt(channel, coord);
        }

        void main() {
            ivec2 outputCoord = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(outputCoord, uOutputSize))) return;

            ivec2 base = outputCoord * 2;
            vec3 sums = vec3(0.0);
            vec3 counts = vec3(0.0);
            for (int dy = 0; dy < 2; ++dy) {
                for (int dx = 0; dx < 2; ++dx) {
                    ivec2 coord = min(base + ivec2(dx, dy), uImageSize - ivec2(1));
                    int channel = channelAt(uCfaPattern, coord);
                    float value = normalizedRawAt(coord, channel);
                    if (channel == 0) {
                        sums.r += value;
                        counts.r += 1.0;
                    } else if (channel == 3) {
                        sums.b += value;
                        counts.b += 1.0;
                    } else {
                        sums.g += value;
                        counts.g += 1.0;
                    }
                }
            }

            float fallback = (sums.r + sums.g + sums.b) /
                max(counts.r + counts.g + counts.b, 1.0);
            vec3 cameraRgb = vec3(
                counts.r > 0.0 ? sums.r / counts.r : fallback,
                counts.g > 0.0 ? sums.g / counts.g : fallback,
                counts.b > 0.0 ? sums.b / counts.b : fallback
            );
            imageStore(uOutput, outputCoord, vec4(max(cameraRgb, vec3(0.0)), 1.0));
        }
    """.trimIndent()
}

/** Single-pass half-resolution Bayer demosaic used only by capture metering. */
internal class RawMeteringDemosaicAlgorithm {
    data class Input(
        val rawTextureId: Int,
        val outputTextureId: Int,
        val width: Int,
        val height: Int,
        val cfaPattern: Int,
        val blackLevel: FloatArray,
        val whiteLevel: Float,
        val bindLensShading: (programId: Int) -> Unit,
    )

    data class Output(
        val textureId: Int,
        val width: Int,
        val height: Int,
    )

    private var program = 0

    fun initialize(): Boolean {
        if (program == 0) {
            program = RawGlesProgram.compileCompute(
                RawMeteringDemosaicShaders.HALF_RESOLUTION,
                "RAW_METERING_HALF_RESOLUTION",
            )
        }
        return program != 0
    }

    fun execute(input: Input): Output? {
        if (!initialize()) return null
        require(input.cfaPattern in RawMetadata.CFA_RGGB..RawMetadata.CFA_BGGR) {
            "Half-resolution metering requires a standard 2x2 Bayer CFA"
        }
        require(input.blackLevel.size >= 4) { "RAW metering requires four black levels" }

        val outputWidth = (input.width + 1) / 2
        val outputHeight = (input.height + 1) / 2
        val startedAt = System.nanoTime()
        try {
            GLES31.glUseProgram(program)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RAW_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, input.rawTextureId)
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(program, "uRawTexture"),
                RAW_TEXTURE_UNIT,
            )
            input.bindLensShading(program)
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
                    GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
            )
            RawGlesProgram.logErrors("RAW metering half-resolution demosaic")
            GlesGpuScheduler.waitForGpuCheckpoint(TAG, "half-resolution demosaic")
            PLog.d(
                TAG,
                "complete: source=${input.width}x${input.height} " +
                    "output=${outputWidth}x$outputHeight cfa=${input.cfaPattern} " +
                    "tookMs=${(System.nanoTime() - startedAt) / 1_000_000}",
            )
            return Output(input.outputTextureId, outputWidth, outputHeight)
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
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + LENS_SHADING_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
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

    private companion object {
        const val TAG = "RawMeteringDemosaic"
        const val RAW_TEXTURE_UNIT = 0
        const val LENS_SHADING_TEXTURE_UNIT = 1
    }
}
