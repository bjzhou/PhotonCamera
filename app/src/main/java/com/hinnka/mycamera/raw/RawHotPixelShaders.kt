package com.hinnka.mycamera.raw

/**
 * RAW-domain hot-pixel detection and repair for standard 2x2 Bayer mosaics.
 *
 * Detection combines MGC's second-maximum test with Phocus-style local noise statistics.
 * The second pass consumes the first-pass mask so a detected pixel cannot contaminate the
 * replacement of an adjacent hot pixel.
 */
internal object RawHotPixelShaders {
    private val COMMON = """
        uniform ivec2 uImageSize;
        uniform ivec2 uGlobalOrigin;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        uniform vec3 uNoiseSlope;
        uniform vec3 uNoiseOffset;

        const int NEIGHBOR_COUNT = 12;
        const float LOCAL_SIGMA_FACTOR = 6.0;
        const float SECOND_MAXIMUM_SCALE = 1.03125;
        const float SECOND_MAXIMUM_SIGMA_FACTOR = 4.0;
        const float POLARITY_SIGMA_FACTOR = 3.0;
        const int MINIMUM_LOWER_NEIGHBORS = 10;
        const ivec2 SAME_CFA_OFFSETS[NEIGHBOR_COUNT] = ivec2[NEIGHBOR_COUNT](
            ivec2(-2,  0), ivec2( 2,  0),
            ivec2( 0, -2), ivec2( 0,  2),
            ivec2(-2, -2), ivec2( 2, -2),
            ivec2(-2,  2), ivec2( 2,  2),
            ivec2(-4,  0), ivec2( 4,  0),
            ivec2( 0, -4), ivec2( 0,  4)
        );

        int mirrorIndex(int value, int size) {
            if (size <= 1) return 0;
            int period = 2 * (size - 1);
            int wrapped = value % period;
            if (wrapped < 0) wrapped += period;
            return wrapped < size ? wrapped : period - wrapped;
        }

        ivec2 safeCoord(ivec2 coord) {
            return ivec2(
                mirrorIndex(coord.x, uImageSize.x),
                mirrorIndex(coord.y, uImageSize.y)
            );
        }

        uint rawAt(ivec2 coord) {
            return texelFetch(uRawTexture, safeCoord(coord), 0).r;
        }

        int colorAt(ivec2 localCoord) {
            ivec2 coord = localCoord + uGlobalOrigin;
            int index = (coord.x & 1) + ((coord.y & 1) << 1);
            if (uCfaPattern == 0) return index == 0 ? 0 : (index == 3 ? 2 : 1);
            if (uCfaPattern == 1) return index == 1 ? 0 : (index == 2 ? 2 : 1);
            if (uCfaPattern == 2) return index == 2 ? 0 : (index == 1 ? 2 : 1);
            return index == 3 ? 0 : (index == 0 ? 2 : 1);
        }

        int blackChannelAt(ivec2 localCoord) {
            ivec2 coord = localCoord + uGlobalOrigin;
            int index = (coord.x & 1) + ((coord.y & 1) << 1);
            if (uCfaPattern == 0) return index;
            if (uCfaPattern == 1) {
                if (index == 0) return 1;
                if (index == 1) return 0;
                if (index == 2) return 3;
                return 2;
            }
            if (uCfaPattern == 2) {
                if (index == 0) return 2;
                if (index == 1) return 3;
                if (index == 2) return 0;
                return 1;
            }
            if (index == 0) return 3;
            if (index == 1) return 2;
            if (index == 2) return 1;
            return 0;
        }

        float componentForColor(vec3 value, int color) {
            return color == 0 ? value.r : (color == 1 ? value.g : value.b);
        }

        float signalAt(ivec2 coord, float blackLevel, float sensorRange) {
            return clamp(float(rawAt(coord)) - blackLevel, 0.0, sensorRange);
        }

        float sensorSigma(float signal, float sensorRange, int color) {
            float normalizedSignal = signal / sensorRange;
            float variance = componentForColor(uNoiseSlope, color) * normalizedSignal +
                componentForColor(uNoiseOffset, color);
            return sqrt(max(variance, 1.0e-12)) * sensorRange;
        }

        void sort12(inout float values[NEIGHBOR_COUNT]) {
            for (int i = 0; i < NEIGHBOR_COUNT; ++i) {
                for (int j = i + 1; j < NEIGHBOR_COUNT; ++j) {
                    if (values[i] > values[j]) {
                        float temporary = values[i];
                        values[i] = values[j];
                        values[j] = temporary;
                    }
                }
            }
        }

        void sort4(inout float values[4]) {
            for (int i = 0; i < 4; ++i) {
                for (int j = i + 1; j < 4; ++j) {
                    if (values[i] > values[j]) {
                        float temporary = values[i];
                        values[i] = values[j];
                        values[j] = temporary;
                    }
                }
            }
        }

        void collectNeighborSignals(
            ivec2 coord,
            float blackLevel,
            float sensorRange,
            out float values[NEIGHBOR_COUNT]
        ) {
            for (int i = 0; i < NEIGHBOR_COUNT; ++i) {
                values[i] = signalAt(
                    coord + SAME_CFA_OFFSETS[i],
                    blackLevel,
                    sensorRange
                );
            }
        }

        float median12(float values[NEIGHBOR_COUNT]) {
            float sortedValues[NEIGHBOR_COUNT];
            for (int i = 0; i < NEIGHBOR_COUNT; ++i) {
                sortedValues[i] = values[i];
            }
            sort12(sortedValues);
            return 0.5 * (sortedValues[5] + sortedValues[6]);
        }

        bool isHotFromNeighbors(
            float center,
            float values[NEIGHBOR_COUNT],
            float sensorRange,
            int color
        ) {
            float sum = 0.0;
            float sumSquared = 0.0;
            float maximum = -1.0;
            float secondMaximum = -1.0;
            for (int i = 0; i < NEIGHBOR_COUNT; ++i) {
                float value = values[i];
                sum += value;
                sumSquared += value * value;
                if (value > maximum) {
                    secondMaximum = maximum;
                    maximum = value;
                } else if (value > secondMaximum) {
                    secondMaximum = value;
                }
            }
            // Phocus estimates local mean/deviation without the center sample. Removing the two
            // largest neighbors additionally keeps a small hot-pixel cluster from inflating its
            // own threshold. The second maximum is retained separately for MGC's edge gate.
            float trimmedMean = (sum - maximum - secondMaximum) / 10.0;
            float trimmedVariance = max(
                (sumSquared - maximum * maximum - secondMaximum * secondMaximum) / 10.0 -
                    trimmedMean * trimmedMean,
                0.0
            );
            float localSigma = sqrt(trimmedVariance);
            // Expected shot noise belongs to the uncontaminated neighborhood signal. Using the
            // impulse itself here would let a hot pixel inflate the threshold that detects it.
            float noiseSigma = sensorSigma(trimmedMean, sensorRange, color);
            float effectiveSigma = max(noiseSigma, localSigma);
            float trivialDifference = max(2.0, sensorRange / 2048.0);
            float statisticalThreshold = trimmedMean +
                max(LOCAL_SIGMA_FACTOR * effectiveSigma, trivialDifference);
            // MGC's second-maximum gate rejects ordinary edges and textured detail. Applying the
            // scale to black-subtracted signal keeps its meaning consistent across sensors.
            float secondMaximumThreshold = secondMaximum * SECOND_MAXIMUM_SCALE +
                max(SECOND_MAXIMUM_SIGMA_FACTOR * noiseSigma, trivialDifference);
            float clearlyLowerDifference = max(
                POLARITY_SIGMA_FACTOR * noiseSigma,
                trivialDifference
            );
            int clearlyLowerCount = 0;
            for (int i = 0; i < NEIGHBOR_COUNT; ++i) {
                if (center > values[i] + clearlyLowerDifference) {
                    clearlyLowerCount += 1;
                }
            }
            return center > statisticalThreshold &&
                center > secondMaximumThreshold &&
                clearlyLowerCount >= MINIMUM_LOWER_NEIGHBORS;
        }

    """.trimIndent()

    val DETECT = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp uimage2D;

        layout(local_size_x = 8, local_size_y = 8) in;

        uniform highp usampler2D uRawTexture;
        layout(rgba8ui, binding = 0) writeonly uniform highp uimage2D uHotPixelMask;

        $COMMON

        void main() {
            ivec2 packedCoord = ivec2(gl_GlobalInvocationID.xy);
            int packedWidth = (uImageSize.x + 3) / 4;
            if (packedCoord.x >= packedWidth || packedCoord.y >= uImageSize.y) return;

            uvec4 mask = uvec4(0u);
            for (int lane = 0; lane < 4; ++lane) {
                ivec2 coord = ivec2(packedCoord.x * 4 + lane, packedCoord.y);
                if (coord.x >= uImageSize.x) continue;
                int blackChannel = blackChannelAt(coord);
                float blackLevel = uBlackLevel[blackChannel];
                float sensorRange = max(uWhiteLevel - blackLevel, 1.0);
                float center = signalAt(coord, blackLevel, sensorRange);
                float neighbors[NEIGHBOR_COUNT];
                collectNeighborSignals(coord, blackLevel, sensorRange, neighbors);
                bool hot = isHotFromNeighbors(center, neighbors, sensorRange, colorAt(coord));
                mask[lane] = hot ? 255u : 0u;
            }
            imageStore(uHotPixelMask, packedCoord, mask);
        }
    """.trimIndent()

    val REPAIR = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp uimage2D;

        layout(local_size_x = 8, local_size_y = 8) in;

        uniform highp usampler2D uRawTexture;
        layout(rgba8ui, binding = 0) readonly uniform highp uimage2D uHotPixelMask;
        layout(rgba16ui, binding = 1) writeonly uniform highp uimage2D uRepairedRawTexture;

        $COMMON

        bool maskedAt(ivec2 coord) {
            ivec2 safe = safeCoord(coord);
            uvec4 packedMask = imageLoad(
                uHotPixelMask,
                ivec2(safe.x / 4, safe.y)
            );
            return packedMask[safe.x & 3] != 0u;
        }

        uint repairAt(ivec2 coord) {
            uint original = rawAt(coord);
            int blackChannel = blackChannelAt(coord);
            float blackLevel = uBlackLevel[blackChannel];
            float sensorRange = max(uWhiteLevel - blackLevel, 1.0);
            float center = clamp(float(original) - blackLevel, 0.0, sensorRange);
            bool repairCenter = maskedAt(coord);
            int maskedNeighborCount = 0;
            bool maskedNeighbors[NEIGHBOR_COUNT];
            for (int i = 0; i < NEIGHBOR_COUNT; ++i) {
                bool neighborMasked = maskedAt(coord + SAME_CFA_OFFSETS[i]);
                maskedNeighbors[i] = neighborMasked;
                if (neighborMasked) {
                    maskedNeighborCount += 1;
                }
            }

            // The mask is sparse, so ordinary pixels avoid RAW neighborhood reads and sorting.
            if (!repairCenter && maskedNeighborCount == 0) {
                return original;
            }

            float neighbors[NEIGHBOR_COUNT];
            collectNeighborSignals(coord, blackLevel, sensorRange, neighbors);
            float baseMedian = median12(neighbors);
            for (int i = 0; i < NEIGHBOR_COUNT; ++i) {
                if (maskedNeighbors[i]) {
                    neighbors[i] = baseMedian;
                }
            }

            // This is the Phocus hotPixelPlus role: once an isolated impulse is known, remove it
            // from the statistics and test the remaining members of a small same-CFA cluster.
            if (!repairCenter && maskedNeighborCount > 0) {
                repairCenter = isHotFromNeighbors(
                    center,
                    neighbors,
                    sensorRange,
                    colorAt(coord)
                );
            }

            if (!repairCenter) {
                return original;
            }

            float cleanMedian = median12(neighbors);
            float cardinal[4];
            for (int i = 0; i < 4; ++i) {
                cardinal[i] = maskedNeighbors[i]
                    ? cleanMedian
                    : neighbors[i];
            }
            sort4(cardinal);
            // Match MGC's same-plane cardinal median: for four samples the median is the mean
            // of the middle pair, which avoids a directional bias on Bayer edges.
            float replacement = 0.5 * (cardinal[1] + cardinal[2]);
            return uint(round(clamp(replacement + blackLevel, 0.0, 65535.0)));
        }

        void main() {
            ivec2 packedCoord = ivec2(gl_GlobalInvocationID.xy);
            int packedWidth = (uImageSize.x + 3) / 4;
            if (packedCoord.x >= packedWidth || packedCoord.y >= uImageSize.y) return;

            uvec4 repaired = uvec4(0u);
            for (int lane = 0; lane < 4; ++lane) {
                ivec2 coord = ivec2(packedCoord.x * 4 + lane, packedCoord.y);
                if (coord.x < uImageSize.x) {
                    repaired[lane] = repairAt(coord);
                }
            }
            imageStore(uRepairedRawTexture, packedCoord, repaired);
        }
    """.trimIndent()
}
