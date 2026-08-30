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
        precision highp usampler2D;

        layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
        uniform highp usampler2D uRaw;
        uniform ivec2 uSourceSize;
        uniform ivec2 uOutputSize;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        layout(std430, binding = 0) writeonly buffer OutputValues {
            vec4 values[];
        } outputValues;

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

            // MGC partitions source rows directly by output row. Its wide-row kernel then assigns
            // each consecutive group of four RAW samples to floor(outputWidth * x / sourceWidth).
            // Reconstruct the corresponding gather interval here; do not impose 2x2-CFA-period
            // boundaries, because the original keeps independent sample counts for every channel.
            int startY = outputCoord.y * uSourceSize.y / uOutputSize.y;
            int endY = (outputCoord.y + 1) * uSourceSize.y / uOutputSize.y;
            bool usesWideRowKernel = uSourceSize.x >= 12 * uOutputSize.x;
            int horizontalDenominator = usesWideRowKernel
                ? uOutputSize.x * 4
                : uOutputSize.x;
            int horizontalGroupSize = usesWideRowKernel ? 4 : 1;
            int startX = horizontalGroupSize * (
                (outputCoord.x * uSourceSize.x + horizontalDenominator - 1) /
                horizontalDenominator
            );
            int endX = min(
                horizontalGroupSize * (
                    ((outputCoord.x + 1) * uSourceSize.x + horizontalDenominator - 1) /
                    horizontalDenominator
                ),
                uSourceSize.x
            );
            vec4 sums = vec4(0.0);
            ivec4 counts = ivec4(0);
            for (int sourceY = startY; sourceY < endY; ++sourceY) {
                for (int sourceX = startX; sourceX < endX; ++sourceX) {
                    ivec2 position = ivec2(sourceX, sourceY);
                    int channel = canonicalChannel(position);
                    sums[channel] += rawCode(texelFetch(uRaw, position, 0).r);
                    counts[channel] += 1;
                }
            }
            vec3 mean = vec3(
                sums.r / float(max(counts.r, 1)),
                (sums.g + sums.b) / float(max(counts.g + counts.b, 1)),
                sums.a / float(max(counts.a, 1))
            );
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

}
