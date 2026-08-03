package com.hinnka.mycamera.raw

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
