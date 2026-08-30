package com.hinnka.mycamera.processor

/** Compute passes for the selected-base RAW statistics consumed by Fast Moments and Classic AE. */
internal object GlesRawAEStatsShaders {
    /**
     * The only pass that reads the RAW texture. Each invocation owns one 16x16 source block and
     * emits both its exact CFA maxima and camera-RGB mean for all downstream low-resolution work.
     */
    val FAST_MOMENTS = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;

        layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
        uniform highp usampler2D uRaw;
        uniform ivec2 uSourceSize;
        uniform ivec2 uOutputSize;
        uniform int uDownsample;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        struct StatsCell {
            vec4 maxima;
            vec4 cameraRgb;
        };
        layout(std430, binding = 0) writeonly buffer OutputCells {
            StatsCell cells[];
        } outputCells;

        int canonicalChannel(ivec2 position) {
            int phase = ((position.y & 1) << 1) | (position.x & 1);
            int pattern = uCfaPattern & 3;
            if (pattern == 0) return phase;
            if (pattern == 1) {
                const int channels[4] = int[4](1, 0, 3, 2);
                return channels[phase];
            }
            if (pattern == 2) {
                const int channels[4] = int[4](2, 3, 0, 1);
                return channels[phase];
            }
            const int channels[4] = int[4](3, 2, 1, 0);
            return channels[phase];
        }

        float rawCode(uint code) {
            return float(code >> 8) * 256.0 + float(code & 255u);
        }

        void main() {
            ivec2 outputCoord = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(outputCoord, uOutputSize))) return;
            ivec2 start = outputCoord * uDownsample;
            ivec2 end = min(start + ivec2(uDownsample), uSourceSize);
            uvec4 maxima = uvec4(0u);
            vec4 sums = vec4(0.0);
            ivec4 counts = ivec4(0);
            int clippedCfaSamples = 0;
            for (int blockY = start.y; blockY < end.y; blockY += 2) {
                for (int blockX = start.x; blockX < end.x; blockX += 2) {
                    bool completeCfa = blockX + 1 < end.x && blockY + 1 < end.y;
                    bool clippedCfa = false;
                    for (int dy = 0; dy < 2; ++dy) {
                        int y = blockY + dy;
                        if (y >= end.y) continue;
                        for (int dx = 0; dx < 2; ++dx) {
                            int x = blockX + dx;
                            if (x >= end.x) continue;
                            ivec2 position = ivec2(x, y);
                            int channel = canonicalChannel(position);
                            uint raw = texelFetch(uRaw, position, 0).r;
                            maxima[channel] = max(maxima[channel], raw);
                            sums[channel] += rawCode(raw);
                            counts[channel] += 1;
                            clippedCfa = clippedCfa || raw >= uint(uWhiteLevel);
                        }
                    }
                    if (completeCfa && clippedCfa) clippedCfaSamples += 1;
                }
            }
            vec4 normalizedMaxima = vec4(0.0);
            for (int channel = 0; channel < 4; ++channel) {
                float range = max(uWhiteLevel - uBlackLevel[channel], 1.0);
                normalizedMaxima[channel] =
                    max(rawCode(maxima[channel]) - uBlackLevel[channel], 0.0) / range;
            }
            vec3 cameraRgb = vec3(
                sums.r / float(max(counts.r, 1)),
                (sums.g + sums.b) / float(max(counts.g + counts.b, 1)),
                sums.a / float(max(counts.a, 1))
            );
            int outputIndex = outputCoord.y * uOutputSize.x + outputCoord.x;
            outputCells.cells[outputIndex].maxima = normalizedMaxima;
            outputCells.cells[outputIndex].cameraRgb =
                vec4(cameraRgb, float(clippedCfaSamples));
        }
    """.trimIndent()

    val BASE_METERING = """
        #version 310 es
        precision highp float;
        precision highp int;

        layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
        uniform ivec2 uInputSize;
        uniform ivec2 uOutputSize;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        struct StatsCell {
            vec4 maxima;
            vec4 cameraRgb;
        };
        layout(std430, binding = 0) readonly buffer InputCells {
            StatsCell cells[];
        } inputCells;
        layout(std430, binding = 1) writeonly buffer OutputValues {
            vec4 values[];
        } outputValues;

        void main() {
            ivec2 outputCoord = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(outputCoord, uOutputSize))) return;
            ivec2 start = outputCoord * uInputSize / uOutputSize;
            ivec2 end = (outputCoord + 1) * uInputSize / uOutputSize;
            end = min(max(end, start + 1), uInputSize);
            vec3 sum = vec3(0.0);
            int count = 0;
            for (int y = start.y; y < end.y; ++y) {
                for (int x = start.x; x < end.x; ++x) {
                    StatsCell localCell = inputCells.cells[y * uInputSize.x + x];
                    sum += localCell.cameraRgb.rgb;
                    count += 1;
                }
            }
            vec3 mean = sum / float(max(count, 1));
            vec3 black = vec3(
                uBlackLevel.r,
                0.5 * (uBlackLevel.g + uBlackLevel.b),
                uBlackLevel.a
            );
            float sensorRange = max(
                uWhiteLevel - max(black.r, max(black.g, black.b)),
                1.0
            );
            vec3 normalized = max(mean - black, vec3(0.0)) / sensorRange;
            outputValues.values[outputCoord.y * uOutputSize.x + outputCoord.x] =
                vec4(normalized, 0.0);
        }
    """.trimIndent()

    val CLASSIC_SPLIT = """
        #version 310 es
        precision highp float;
        precision highp int;

        layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
        uniform ivec2 uInputSize;
        uniform ivec2 uOutputSize;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        struct StatsCell {
            vec4 maxima;
            vec4 cameraRgb;
        };
        layout(std430, binding = 0) readonly buffer InputCells {
            StatsCell cells[];
        } inputCells;
        struct SplitCell {
            vec4 bright;
            vec4 dark;
        };
        layout(std430, binding = 1) writeonly buffer OutputCells {
            SplitCell cells[];
        } outputCells;

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
                    StatsCell localCell = inputCells.cells[y * uInputSize.x + x];
                    mean += localCell.cameraRgb.rgb;
                    sampleCount += 1;
                }
            }
            mean /= float(max(sampleCount, 1));
            float meanSum = mean.r + mean.g + mean.b;
            vec3 brightSum = vec3(0.0);
            vec3 darkSum = vec3(0.0);
            int brightCount = 0;
            for (int y = start.y; y < end.y; ++y) {
                for (int x = start.x; x < end.x; ++x) {
                    StatsCell localCell = inputCells.cells[y * uInputSize.x + x];
                    vec3 sampleRgb = localCell.cameraRgb.rgb;
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
                uBlackLevel.r,
                0.5 * (uBlackLevel.g + uBlackLevel.b),
                uBlackLevel.a
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
                uWhiteLevel - max(black.r, max(black.g, black.b)),
                1.0
            );
            float maskCode = float(255 * brightCount / max(sampleCount, 1));
            int outputIndex = outputCoord.y * uOutputSize.x + outputCoord.x;
            outputCells.cells[outputIndex].bright = vec4(bright / sensorRange, maskCode);
            outputCells.cells[outputIndex].dark = vec4(dark / sensorRange, 0.0);
        }
    """.trimIndent()
}
