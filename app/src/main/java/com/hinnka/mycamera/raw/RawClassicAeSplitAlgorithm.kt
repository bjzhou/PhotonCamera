package com.hinnka.mycamera.raw

import android.graphics.Rect
import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup

/** GPU transcription of MGC's non-QCOM RawToLoResRgb Classic-AE split. */
internal class RawClassicAeSplitAlgorithm {
    data class Size(val width: Int, val height: Int)

    data class Input(
        val rawTextureId: Int,
        val outputTextureId: Int,
        val imageWidth: Int,
        val imageHeight: Int,
        val sourceBounds: Rect,
        val cfaPattern: Int,
        val blackLevel: FloatArray,
        val whiteLevel: Float,
        val component: Int,
    )

    private var rawToLoResProgram = 0
    private var splitProgram = 0

    fun initialize(): Boolean {
        if (rawToLoResProgram == 0) {
            rawToLoResProgram = RawGlesProgram.compileCompute(
                RAW_TO_LO_RES_SHADER,
                "RAW_CLASSIC_AE_RAW_TO_LO_RES",
            )
        }
        if (splitProgram == 0) {
            splitProgram = RawGlesProgram.compileCompute(
                SPLIT_SHADER,
                "RAW_CLASSIC_AE_SPLIT",
            )
        }
        return rawToLoResProgram != 0 && splitProgram != 0
    }

    fun execute(input: Input): Boolean {
        if (!initialize()) return false
        val outputSize = outputSize(input.sourceBounds, input.cfaPattern) ?: return false
        val loResSize = loResSize(input.sourceBounds, input.cfaPattern) ?: return false
        require(input.rawTextureId != 0 && input.outputTextureId != 0)
        require(input.imageWidth > 0 && input.imageHeight > 0)
        require(input.component in 0..1)
        require(input.blackLevel.size >= 4)
        require(
            input.sourceBounds.left >= 0 && input.sourceBounds.top >= 0 &&
                input.sourceBounds.right <= input.imageWidth &&
                input.sourceBounds.bottom <= input.imageHeight &&
                !input.sourceBounds.isEmpty,
        )
        require(
            input.whiteLevel.isFinite() && input.whiteLevel > 0f &&
                input.blackLevel.take(4).all {
                    it.isFinite() && it >= 0f && input.whiteLevel > it
                },
        )
        val loResTexture = IntArray(1)
        try {
            GLES30.glGenTextures(1, loResTexture, 0)
            if (loResTexture[0] == 0) return false
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, loResTexture[0])
            GLES30.glTexStorage2D(
                GLES30.GL_TEXTURE_2D,
                1,
                GLES30.GL_RGBA16F,
                loResSize.width,
                loResSize.height,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_MIN_FILTER,
                GLES30.GL_NEAREST,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_MAG_FILTER,
                GLES30.GL_NEAREST,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_WRAP_S,
                GLES30.GL_CLAMP_TO_EDGE,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_WRAP_T,
                GLES30.GL_CLAMP_TO_EDGE,
            )

            // V25 first box-resamples the CFA into one <=180-edge camera-RGB image.
            GLES31.glUseProgram(rawToLoResProgram)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RAW_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, input.rawTextureId)
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rawToLoResProgram, "uRawTexture"),
                RAW_TEXTURE_UNIT,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(rawToLoResProgram, "uImageSize"),
                input.imageWidth,
                input.imageHeight,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(rawToLoResProgram, "uOutputSize"),
                loResSize.width,
                loResSize.height,
            )
            GLES31.glUniform4i(
                GLES31.glGetUniformLocation(rawToLoResProgram, "uSourceBounds"),
                input.sourceBounds.left,
                input.sourceBounds.top,
                input.sourceBounds.right,
                input.sourceBounds.bottom,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(rawToLoResProgram, "uCfaPattern"),
                input.cfaPattern,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(rawToLoResProgram, "uWhiteLevel"),
                input.whiteLevel,
            )
            GLES31.glBindImageTexture(
                0,
                loResTexture[0],
                0,
                false,
                0,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16F,
            )
            GLES31.glDispatchCompute(
                GlesComputeWorkGroup.imageGroupCount(loResSize.width),
                GlesComputeWorkGroup.imageGroupCount(loResSize.height),
                1,
            )
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                    GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
            )
            RawGlesProgram.logErrors("RAW Classic AE RawToLoResRgb")

            // CreateForClassicAe then splits that RGB image into a fixed 40-pixel-wide surface.
            GLES31.glUseProgram(splitProgram)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + LO_RES_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, loResTexture[0])
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(splitProgram, "uLoResTexture"),
                LO_RES_TEXTURE_UNIT,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(splitProgram, "uInputSize"),
                loResSize.width,
                loResSize.height,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(splitProgram, "uOutputSize"),
                outputSize.width,
                outputSize.height,
            )
            GLES31.glUniform4fv(
                GLES31.glGetUniformLocation(splitProgram, "uBlackLevel"),
                1,
                input.blackLevel,
                0,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(splitProgram, "uWhiteLevel"),
                input.whiteLevel,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(splitProgram, "uComponent"),
                input.component,
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
                GlesComputeWorkGroup.imageGroupCount(outputSize.width),
                GlesComputeWorkGroup.imageGroupCount(outputSize.height),
                1,
            )
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                    GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
            )
            RawGlesProgram.logErrors("RAW Classic AE split component ${input.component}")
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
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + LO_RES_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RAW_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
            if (loResTexture[0] != 0) {
                GLES30.glDeleteTextures(1, loResTexture, 0)
            }
        }
    }

    fun release() {
        if (rawToLoResProgram != 0) {
            GLES31.glDeleteProgram(rawToLoResProgram)
            rawToLoResProgram = 0
        }
        if (splitProgram != 0) {
            GLES31.glDeleteProgram(splitProgram)
            splitProgram = 0
        }
    }

    companion object {
        private const val LO_RES_MAX_EDGE = 180
        private const val CLASSIC_AE_WIDTH = 40
        private const val RAW_TEXTURE_UNIT = 0
        private const val LO_RES_TEXTURE_UNIT = 1

        fun outputSize(sourceBounds: Rect, cfaPattern: Int): Size? {
            if (sourceBounds.isEmpty || cfaPattern !in 0..11) return null
            val width = sourceBounds.width()
            val height = sourceBounds.height()
            if (width <= 0 || height <= 0) return null
            return Size(
                width = CLASSIC_AE_WIDTH,
                height = maxOf(
                    1,
                    kotlin.math.floor(
                        height.toDouble() / width.toDouble() * CLASSIC_AE_WIDTH + 0.5,
                    ).toInt(),
                ),
            )
        }

        internal fun loResSize(sourceBounds: Rect, cfaPattern: Int): Size? {
            if (sourceBounds.isEmpty || cfaPattern !in 0..11) return null
            val colorBlockSize = when (cfaPattern) {
                in 0..3 -> 1
                in 4..7 -> 2
                else -> 4
            }
            val cfaPeriod = colorBlockSize * 2
            val sampleWidth = sourceBounds.width() / cfaPeriod
            val sampleHeight = sourceBounds.height() / cfaPeriod
            if (sampleWidth <= 0 || sampleHeight <= 0) return null
            val directThreshold = if (colorBlockSize == 1) 539 else 899
            if (maxOf(sourceBounds.width(), sourceBounds.height()) <= directThreshold) {
                return Size(sampleWidth, sampleHeight)
            }
            return if (sampleWidth >= sampleHeight) {
                Size(
                    LO_RES_MAX_EDGE,
                    maxOf(1, LO_RES_MAX_EDGE * sampleHeight / sampleWidth),
                )
            } else {
                Size(
                    maxOf(1, LO_RES_MAX_EDGE * sampleWidth / sampleHeight),
                    LO_RES_MAX_EDGE,
                )
            }
        }

        internal fun cfaSampleCount(sourceBounds: Rect, cfaPattern: Int): Int {
            val colorBlockSize = when (cfaPattern) {
                in 0..3 -> 1
                in 4..7 -> 2
                in 8..11 -> 4
                else -> return 0
            }
            val cfaPeriod = colorBlockSize * 2
            return (sourceBounds.width() / cfaPeriod) * (sourceBounds.height() / cfaPeriod)
        }

        private val RAW_TO_LO_RES_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp usampler2D;
            precision highp image2D;

            layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
            uniform highp usampler2D uRawTexture;
            uniform ivec2 uImageSize;
            uniform ivec2 uOutputSize;
            uniform ivec4 uSourceBounds;
            uniform int uCfaPattern;
            uniform float uWhiteLevel;
            layout(rgba16f, binding = 0) writeonly uniform image2D uOutput;

            int colorBlockSize() {
                return uCfaPattern >= 8 ? 4 : (uCfaPattern >= 4 ? 2 : 1);
            }

            int channelAt(ivec2 coord) {
                int pattern = uCfaPattern & 3;
                int blockSize = colorBlockSize();
                int blockColumn = ((coord.x - uSourceBounds.x) / blockSize) & 1;
                int blockRow = ((coord.y - uSourceBounds.y) / blockSize) & 1;
                if (pattern == 0) {
                    if (blockRow == 0) return blockColumn == 0 ? 0 : 1;
                    return blockColumn == 0 ? 2 : 3;
                } else if (pattern == 1) {
                    if (blockRow == 0) return blockColumn == 0 ? 1 : 0;
                    return blockColumn == 0 ? 3 : 2;
                } else if (pattern == 2) {
                    if (blockRow == 0) return blockColumn == 0 ? 2 : 3;
                    return blockColumn == 0 ? 0 : 1;
                }
                if (blockRow == 0) return blockColumn == 0 ? 3 : 2;
                return blockColumn == 0 ? 1 : 0;
            }

            float rawAt(ivec2 coord) {
                uint code = texelFetch(uRawTexture, coord, 0).r;
                // Avoid driver paths that lower uint16 -> float directly to FP16.
                return float(code >> 8) * 256.0 + float(code & 255u);
            }

            vec4 cfaSample(ivec2 sampleCoord) {
                int blockSize = colorBlockSize();
                int period = blockSize * 2;
                ivec2 origin = uSourceBounds.xy + sampleCoord * period;
                vec4 sums = vec4(0.0);
                ivec4 counts = ivec4(0);
                bool clipped = false;
                for (int y = 0; y < 8; ++y) {
                    if (y >= period) break;
                    for (int x = 0; x < 8; ++x) {
                        if (x >= period) break;
                        ivec2 coord = origin + ivec2(x, y);
                        if (any(greaterThanEqual(coord, uSourceBounds.zw)) ||
                            any(greaterThanEqual(coord, uImageSize))) continue;
                        int channel = channelAt(coord);
                        float raw = rawAt(coord);
                        sums[channel] += raw;
                        counts[channel] += 1;
                        clipped = clipped || raw >= uWhiteLevel;
                    }
                }
                float red = sums.r / float(max(counts.r, 1));
                float green = (sums.g + sums.b) / float(max(counts.g + counts.b, 1));
                float blue = sums.a / float(max(counts.a, 1));
                return vec4(red, green, blue, clipped ? 1.0 : 0.0);
            }

            void main() {
                ivec2 outputCoord = ivec2(gl_GlobalInvocationID.xy);
                if (any(greaterThanEqual(outputCoord, uOutputSize))) return;
                int period = colorBlockSize() * 2;
                ivec2 sampleSize = (uSourceBounds.zw - uSourceBounds.xy) / period;
                ivec2 start = outputCoord * sampleSize / uOutputSize;
                ivec2 end = (outputCoord + 1) * sampleSize / uOutputSize;
                end = min(max(end, start + 1), sampleSize);

                vec4 accumulated = vec4(0.0);
                int sampleCount = 0;
                for (int y = start.y; y < end.y; ++y) {
                    for (int x = start.x; x < end.x; ++x) {
                        accumulated += cfaSample(ivec2(x, y));
                        sampleCount += 1;
                    }
                }
                vec3 mean = accumulated.rgb / float(max(sampleCount, 1));
                imageStore(uOutput, outputCoord, vec4(mean / uWhiteLevel, accumulated.a));
            }
        """.trimIndent()

        private val SPLIT_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp sampler2D;
            precision highp image2D;

            layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
            uniform highp sampler2D uLoResTexture;
            uniform ivec2 uInputSize;
            uniform ivec2 uOutputSize;
            uniform vec4 uBlackLevel;
            uniform float uWhiteLevel;
            uniform int uComponent;
            layout(rgba16f, binding = 0) writeonly uniform image2D uOutput;

            void main() {
                ivec2 outputCoord = ivec2(gl_GlobalInvocationID.xy);
                if (any(greaterThanEqual(outputCoord, uOutputSize))) return;
                ivec2 start = outputCoord * uInputSize / uOutputSize;
                ivec2 end = (outputCoord + 1) * uInputSize / uOutputSize;
                end = min(max(end, start + 1), uInputSize);

                vec3 mean = vec3(0.0);
                int sampleCount = 0;
                for (int y = start.y; y < end.y; ++y) {
                    for (int x = start.x; x < end.x; ++x) {
                        mean += texelFetch(uLoResTexture, ivec2(x, y), 0).rgb;
                        sampleCount += 1;
                    }
                }
                mean /= float(max(sampleCount, 1));
                float meanSum = mean.r + mean.g + mean.b;
                vec3 brightSum = vec3(0.0);
                vec3 darkSum = vec3(0.0);
                int brightCount = 0;
                float clippedCount = 0.0;
                for (int y = start.y; y < end.y; ++y) {
                    for (int x = start.x; x < end.x; ++x) {
                        vec4 loResSample = texelFetch(uLoResTexture, ivec2(x, y), 0);
                        vec3 sampleRgb = loResSample.rgb;
                        clippedCount += loResSample.a;
                        if (sampleRgb.r + sampleRgb.g + sampleRgb.b > meanSum) {
                            brightSum += sampleRgb;
                            brightCount += 1;
                        } else {
                            darkSum += sampleRgb;
                        }
                    }
                }
                int darkCount = sampleCount - brightCount;
                vec3 bright = brightSum / float(max(brightCount, 1));
                vec3 dark = darkSum / float(max(darkCount, 1));
                vec3 black = vec3(
                    uBlackLevel.r / uWhiteLevel,
                    0.5 * (uBlackLevel.g + uBlackLevel.b) / uWhiteLevel,
                    uBlackLevel.a / uWhiteLevel
                );
                for (int channel = 0; channel < 3; ++channel) {
                    if (bright[channel] > black[channel] ||
                        dark[channel] > 2.0 * black[channel]) {
                        bright[channel] = max(bright[channel] - black[channel], 0.0);
                        dark[channel] = max(dark[channel] - black[channel], 0.0);
                    } else {
                        float merged = max(
                            0.5 * (bright[channel] + dark[channel]) - black[channel],
                            0.0
                        );
                        bright[channel] = merged;
                        dark[channel] = merged;
                    }
                }
                float sensorRange = max(
                    1.0 - max(black.r, max(black.g, black.b)),
                    1.0 / uWhiteLevel
                );
                int maskCode = 255 * brightCount / max(sampleCount, 1);
                vec3 outputRgb = (uComponent == 0 ? bright : dark) / sensorRange;
                imageStore(
                    uOutput,
                    outputCoord,
                    vec4(
                        outputRgb,
                        uComponent == 0 ? float(maskCode) / 255.0 : clippedCount
                    )
                );
            }
        """.trimIndent()
    }
}
