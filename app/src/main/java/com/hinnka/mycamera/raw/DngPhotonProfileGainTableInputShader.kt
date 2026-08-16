package com.hinnka.mycamera.raw

/** Compute shaders for capture-time DNG ProfileGainTableMap preparation. */
internal object DngPhotonProfileGainTableInputShader {
    val CELL_SAMPLES = """
        #version 310 es

        layout(local_size_x = 16, local_size_y = 8, local_size_z = 1) in;

        precision highp float;
        precision highp int;
        precision highp usampler2D;
        precision highp sampler3D;

        uniform highp usampler2D uRawTexture;
        uniform sampler2D uLensShadingMap;
        uniform sampler3D uHueSatMap;
        uniform ivec2 uImageSize;
        uniform ivec2 uRawTextureOrigin;
        uniform ivec4 uSampleSourceBounds;
        uniform ivec4 uStatsBounds;
        uniform ivec2 uGridSize;
        uniform int uSamplesPerPixel;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        uniform mat3 uColorCorrectionMatrix;
        uniform int uLensShadingEnabled;
        uniform int uLensShadingUsesDngGrid;
        uniform vec2 uLensShadingMapSize;
        uniform vec4 uLensShadingGrid;
        uniform vec2 uLensShadingBoundsOrigin;
        uniform vec2 uLensShadingBoundsSize;
        uniform int uHueSatEnabled;
        uniform ivec3 uHueSatDivisions;
        uniform int uHueSatEncoding;
        uniform int uHueSatSupportOverrange;
        uniform int uWarpCount;

        layout(std430, binding = 0) writeonly buffer CellSampleBuffer {
            float cellSamples[];
        };
        layout(std430, binding = 1) readonly buffer WarpRectilinearBuffer {
            float warpParameters[];
        };

        const uint CELL_SAMPLE_COUNT = 256u;
        const uint CELL_LANE_COUNT = 128u;

        ${DcpHueSatMapGl.SHADER_FUNCTIONS}

        int expandedBlockSize(int cfaPattern) {
            if (cfaPattern >= 8 && cfaPattern <= 11) return 4;
            if (cfaPattern >= 4 && cfaPattern <= 7) return 2;
            return 1;
        }

        int baseBayerPattern(int cfaPattern) {
            if (cfaPattern >= 8 && cfaPattern <= 11) return cfaPattern - 8;
            if (cfaPattern >= 4 && cfaPattern <= 7) return cfaPattern - 4;
            return clamp(cfaPattern, 0, 3);
        }

        int bayerChannelIndex(int cfaPattern, int xParity, int yParity) {
            if (cfaPattern == 1) {
                if (yParity == 0 && xParity == 0) return 1;
                if (yParity == 0 && xParity == 1) return 0;
                if (yParity == 1 && xParity == 0) return 3;
                return 2;
            }
            if (cfaPattern == 2) {
                if (yParity == 0 && xParity == 0) return 2;
                if (yParity == 0 && xParity == 1) return 3;
                if (yParity == 1 && xParity == 0) return 0;
                return 1;
            }
            if (cfaPattern == 3) {
                if (yParity == 0 && xParity == 0) return 3;
                if (yParity == 0 && xParity == 1) return 2;
                if (yParity == 1 && xParity == 0) return 1;
                return 0;
            }
            if (yParity == 0 && xParity == 0) return 0;
            if (yParity == 0 && xParity == 1) return 1;
            if (yParity == 1 && xParity == 0) return 2;
            return 3;
        }

        int channelIndexForPixel(ivec2 coord) {
            int blockSize = expandedBlockSize(uCfaPattern);
            return bayerChannelIndex(
                baseBayerPattern(uCfaPattern),
                (coord.x / blockSize) & 1,
                (coord.y / blockSize) & 1
            );
        }

        float normalizeRaw(uint raw, int channelIndex) {
            float black = uBlackLevel[clamp(channelIndex, 0, 3)];
            float range = max(uWhiteLevel - black, 1.0);
            return clamp((float(raw) - black) / range, 0.0, 1.0);
        }

        int lensShadingChannelAt(int channelIndex, ivec2 coord) {
            if (uLensShadingUsesDngGrid != 0 || channelIndex == 0 || channelIndex == 3) {
                return channelIndex;
            }
            return (coord.y & 1) == 0 ? 1 : 2;
        }

        float lensShadingGainAt(int channelIndex, ivec2 coord) {
            if (uLensShadingEnabled == 0) return 1.0;
            vec2 norm = (vec2(coord) + vec2(0.5)) / vec2(uImageSize);
            vec2 uv = norm;
            if (uLensShadingUsesDngGrid != 0) {
                vec2 boundsSize = max(uLensShadingBoundsSize, vec2(1.0));
                norm = (vec2(coord) + vec2(0.5) - uLensShadingBoundsOrigin) / boundsSize;
                vec2 mapIndex = (norm - uLensShadingGrid.xy) /
                    max(uLensShadingGrid.zw, vec2(1e-8));
                uv = (mapIndex + vec2(0.5)) / max(uLensShadingMapSize, vec2(1.0));
            }
            vec4 gains = texture(uLensShadingMap, uv);
            return max(gains[lensShadingChannelAt(channelIndex, coord)], 0.0);
        }

        float profileSceneInput(vec3 cameraRgb) {
            vec3 profileRgb = max(uColorCorrectionMatrix * cameraRgb, vec3(0.0));
            if (uHueSatEnabled != 0) {
                profileRgb = dngApplyHueSatMap(
                    profileRgb,
                    uHueSatMap,
                    uHueSatDivisions,
                    uHueSatEncoding,
                    uHueSatSupportOverrange != 0
                );
            }
            const vec3 PAPER_INTENSITY_WEIGHTS = vec3(20.0, 40.0, 1.0) / 61.0;
            // DNG ProfileGainTableMap is defined over a finite [0, 1] scalar input domain.
            // Keep LL, BGU fitting, and the renderer's table coordinate on that exact domain.
            return clamp(dot(profileRgb, PAPER_INTENSITY_WEIGHTS), 0.0, 1.0);
        }

        float sampleSceneInput(ivec2 baseCoord) {
            if (uSamplesPerPixel >= 3) {
                ivec2 coord = clamp(baseCoord, ivec2(0), uImageSize - ivec2(1));
                uvec3 rawRgb = texelFetch(uRawTexture, coord - uRawTextureOrigin, 0).rgb;
                return profileSceneInput(vec3(
                    normalizeRaw(rawRgb.r, 0) * lensShadingGainAt(0, coord),
                    normalizeRaw(rawRgb.g, 1) * lensShadingGainAt(1, coord),
                    normalizeRaw(rawRgb.b, 3) * lensShadingGainAt(3, coord)
                ));
            }

            vec3 sums = vec3(0.0);
            vec3 counts = vec3(0.0);
            for (int dy = 0; dy < 2; ++dy) {
                for (int dx = 0; dx < 2; ++dx) {
                    ivec2 coord = clamp(baseCoord + ivec2(dx, dy), ivec2(0), uImageSize - ivec2(1));
                    int channel = channelIndexForPixel(coord);
                    float value =
                        normalizeRaw(
                            texelFetch(uRawTexture, coord - uRawTextureOrigin, 0).r,
                            channel
                        ) *
                        lensShadingGainAt(channel, coord);
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
            return profileSceneInput(vec3(
                counts.r > 0.0 ? sums.r / counts.r : fallback,
                counts.g > 0.0 ? sums.g / counts.g : fallback,
                counts.b > 0.0 ? sums.b / counts.b : fallback
            ));
        }

        vec2 warpDestinationToSource(vec2 destinationPixel) {
            vec2 sourcePixel = destinationPixel;
            // Rendering applies opcodes in file order. Sampling the original RAW from the final
            // output coordinate composes their destination-to-source mappings in reverse order.
            for (int warpIndex = uWarpCount - 1; warpIndex >= 0; --warpIndex) {
                int offset = warpIndex * 8;
                vec4 radial = vec4(
                    warpParameters[offset],
                    warpParameters[offset + 1],
                    warpParameters[offset + 2],
                    warpParameters[offset + 3]
                );
                vec2 tangential = vec2(
                    warpParameters[offset + 4],
                    warpParameters[offset + 5]
                );
                vec2 center = vec2(
                    warpParameters[offset + 6],
                    warpParameters[offset + 7]
                ) * vec2(uImageSize);
                vec2 difference = sourcePixel - center;
                vec2 farthest = max(center, vec2(uImageSize) - center);
                float normalizationRadius = max(length(farthest), 1.0);
                vec2 normalized = difference / normalizationRadius;
                float radiusSquared = min(dot(normalized, normalized), 1.0);
                float ratio = radial.x + radial.y * radiusSquared +
                    radial.z * radiusSquared * radiusSquared +
                    radial.w * radiusSquared * radiusSquared * radiusSquared;
                float horizontal = normalized.x;
                float vertical = normalized.y;
                vec2 tangent = vec2(
                    tangential.y * (radiusSquared + 2.0 * horizontal * horizontal) +
                        2.0 * tangential.x * horizontal * vertical,
                    tangential.x * (radiusSquared + 2.0 * vertical * vertical) +
                        2.0 * tangential.y * horizontal * vertical
                );
                sourcePixel = center + normalizationRadius * (normalized * ratio + tangent);
            }
            return clamp(sourcePixel, vec2(0.0), vec2(uImageSize - ivec2(1)));
        }

        void main() {
            ivec2 cell = ivec2(gl_WorkGroupID.xy);
            uint localIndex = gl_LocalInvocationIndex;
            int cellIndex = cell.y * uGridSize.x + cell.x;
            int statsWidth = uStatsBounds.z - uStatsBounds.x;
            int statsHeight = uStatsBounds.w - uStatsBounds.y;

            int startX = uStatsBounds.x + (cell.x * statsWidth) / uGridSize.x;
            int endX = uStatsBounds.x +
                (((cell.x + 1) * statsWidth + uGridSize.x - 1) / uGridSize.x);
            int startY = uStatsBounds.y + (cell.y * statsHeight) / uGridSize.y;
            int endY = uStatsBounds.y +
                (((cell.y + 1) * statsHeight + uGridSize.y - 1) / uGridSize.y);
            startX = (startX + 1) & ~1;
            startY = (startY + 1) & ~1;
            endX = min(endX & ~1, uStatsBounds.z);
            endY = min(endY & ~1, uStatsBounds.w);
            bool validCell = endX - startX >= 2 && endY - startY >= 2;

            for (
                uint sampleIndex = localIndex;
                sampleIndex < CELL_SAMPLE_COUNT;
                sampleIndex += CELL_LANE_COUNT
            ) {
                float inputValue = 0.0;
                if (validCell) {
                    int localX = int(sampleIndex & 15u);
                    int localY = int(sampleIndex >> 4u);
                    int cellWidth = max(endX - startX, 2);
                    int cellHeight = max(endY - startY, 2);
                    int x = startX + ((localX * 2 + 1) * cellWidth) / 32;
                    int y = startY + ((localY * 2 + 1) * cellHeight) / 32;
                    vec2 sourcePixel = warpDestinationToSource(vec2(x, y));
                    ivec2 sourceCoord = ivec2(round(sourcePixel)) & ~ivec2(1);
                    sourceCoord = clamp(sourceCoord, ivec2(0), uImageSize - ivec2(2));
                    // A streamed dispatch owns only its non-overlapping source core. The uploaded
                    // texture also contains the right/bottom support needed by the 2x2 CFA read.
                    // Dispatching every cell for every source tile preserves the exact global
                    // sampling coordinates, including WarpRectilinear, without a full RAW texture.
                    if (any(lessThan(sourceCoord, uSampleSourceBounds.xy)) ||
                        any(greaterThanEqual(sourceCoord, uSampleSourceBounds.zw))) {
                        continue;
                    }
                    inputValue = sampleSceneInput(sourceCoord);
                }
                cellSamples[cellIndex * 256 + int(sampleIndex)] = inputValue;
            }
        }
    """.trimIndent()

}
