package com.hinnka.mycamera.raw

/** Compute shaders for capture-time DNG ProfileGainTableMap preparation. */
internal object DngHdrProfileGainTableGpuShaders {
    val CELL_STATS = """
        #version 310 es

        layout(local_size_x = 16, local_size_y = 16, local_size_z = 1) in;

        precision highp float;
        precision highp int;
        precision highp usampler2D;
        precision highp sampler3D;

        uniform highp usampler2D uRawTexture;
        uniform sampler2D uLensShadingMap;
        uniform sampler3D uHueSatMap;
        uniform ivec2 uImageSize;
        uniform ivec4 uStatsBounds;
        uniform ivec2 uGridSize;
        uniform int uSamplesPerPixel;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        uniform float uBaselineGain;
        uniform float uHighlightThreshold;
        uniform vec3 uCameraWhite;
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
        uniform int uWriteCellSamples;
        uniform int uWarpCount;

        layout(std430, binding = 0) writeonly buffer CellStatsBuffer {
            float cellStats[];
        };
        layout(std430, binding = 1) writeonly buffer CellSampleBuffer {
            float cellSamples[];
        };
        layout(std430, binding = 2) readonly buffer WarpRectilinearBuffer {
            float warpParameters[];
        };

        shared float inputSamples[256];

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
            vec3 boundedCameraRgb = min(cameraRgb, uCameraWhite);
            vec3 profileRgb = clamp(uColorCorrectionMatrix * boundedCameraRgb, 0.0, 1.0);
            if (uHueSatEnabled != 0) {
                profileRgb = dngApplyHueSatMap(
                    profileRgb,
                    uHueSatMap,
                    uHueSatDivisions,
                    uHueSatEncoding,
                    false
                );
            }
            profileRgb = clamp(profileRgb, 0.0, 1.0) * uBaselineGain;
            float rgbMin = min(profileRgb.r, min(profileRgb.g, profileRgb.b));
            float rgbMax = max(profileRgb.r, max(profileRgb.g, profileRgb.b));
            return max(
                0.1495 * profileRgb.r +
                0.2935 * profileRgb.g +
                0.0570 * profileRgb.b +
                0.1250 * rgbMin +
                0.3750 * rgbMax,
                0.0
            );
        }

        float sampleSceneInput(ivec2 baseCoord) {
            if (uSamplesPerPixel >= 3) {
                ivec2 coord = clamp(baseCoord, ivec2(0), uImageSize - ivec2(1));
                uvec3 rawRgb = texelFetch(uRawTexture, coord, 0).rgb;
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
                        normalizeRaw(texelFetch(uRawTexture, coord, 0).r, channel) *
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

        void sortSamples(uint localIndex) {
            for (uint sequenceSize = 2u; sequenceSize <= 256u; sequenceSize <<= 1u) {
                for (uint compareDistance = sequenceSize >> 1u;
                    compareDistance > 0u;
                    compareDistance >>= 1u
                ) {
                    uint partner = localIndex ^ compareDistance;
                    if (partner > localIndex) {
                        float first = inputSamples[localIndex];
                        float second = inputSamples[partner];
                        bool ascending = (localIndex & sequenceSize) == 0u;
                        if ((first > second) == ascending) {
                            inputSamples[localIndex] = second;
                            inputSamples[partner] = first;
                        }
                    }
                    barrier();
                }
            }
        }

        void main() {
            ivec2 cell = ivec2(gl_WorkGroupID.xy);
            uint localIndex = gl_LocalInvocationIndex;
            int cellIndex = cell.y * uGridSize.x + cell.x;
            int statsOffset = cellIndex * 8;
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

            float inputValue = 0.0;
            if (validCell) {
                int localX = int(localIndex & 15u);
                int localY = int(localIndex >> 4u);
                int cellWidth = max(endX - startX, 2);
                int cellHeight = max(endY - startY, 2);
                int x = startX + ((localX * 2 + 1) * cellWidth) / 32;
                int y = startY + ((localY * 2 + 1) * cellHeight) / 32;
                vec2 sourcePixel = warpDestinationToSource(vec2(x, y));
                ivec2 sourceCoord = ivec2(round(sourcePixel)) & ~ivec2(1);
                sourceCoord = clamp(sourceCoord, ivec2(0), uImageSize - ivec2(2));
                inputValue = sampleSceneInput(sourceCoord);
            }
            if (uWriteCellSamples != 0) {
                cellSamples[cellIndex * 256 + int(localIndex)] = inputValue;
            }
            inputSamples[localIndex] = inputValue;
            barrier();

            sortSamples(localIndex);
            if (localIndex == 0u) {
                if (!validCell) {
                    for (int component = 0; component < 8; ++component) {
                        cellStats[statsOffset + component] = 0.0;
                    }
                    return;
                }
                int highlightCount = 0;
                for (int sampleIndex = 0; sampleIndex < 256; ++sampleIndex) {
                    if (inputSamples[sampleIndex] >= uHighlightThreshold) ++highlightCount;
                }
                cellStats[statsOffset] = inputSamples[25];
                cellStats[statsOffset + 1] = inputSamples[127];
                cellStats[statsOffset + 2] = inputSamples[230];
                cellStats[statsOffset + 3] = inputSamples[250];
                cellStats[statsOffset + 4] = float(highlightCount) / 256.0;
                cellStats[statsOffset + 5] = 256.0;
                cellStats[statsOffset + 6] = inputSamples[254];
                cellStats[statsOffset + 7] = inputSamples[255];
            }
        }
    """.trimIndent()

    val GOOGLE_GAIN_CURVES = """
        #version 310 es

        layout(local_size_x = 64, local_size_y = 1, local_size_z = 1) in;

        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer CurvePlanBuffer {
            float curvePlans[];
        };
        layout(std430, binding = 1) writeonly buffer GainCurveBuffer {
            float gainCurves[];
        };
        uniform int uCellCount;
        uniform int uPointCount;
        uniform float uInputScale;
        uniform float uMinTableGain;
        uniform float uMaxTableGain;
        uniform float uToeEnd;
        uniform float uShapeQ;
        uniform float uMinShapePower;
        uniform float uMaxShapePower;
        uniform int uDiagnosticMode;
        uniform float uDiagnosticStart;
        uniform float uDiagnosticEnd;
        uniform float uDiagnosticFeather;

        const float CURVE_EPS = 1e-6;

        float smoothUnit(float edge0, float edge1, float value) {
            float amount = clamp((value - edge0) / max(edge1 - edge0, CURVE_EPS), 0.0, 1.0);
            return amount * amount * (3.0 - 2.0 * amount);
        }

        float diagnosticMask(float inputValue) {
            float enter = uDiagnosticStart <= 0.0 || uDiagnosticFeather <= 0.0
                ? (inputValue >= uDiagnosticStart ? 1.0 : 0.0)
                : smoothUnit(
                    uDiagnosticStart - uDiagnosticFeather,
                    uDiagnosticStart + uDiagnosticFeather,
                    inputValue
                );
            float exit = uDiagnosticEnd >= 1.0 || uDiagnosticFeather <= 0.0
                ? (inputValue <= uDiagnosticEnd ? 1.0 : 0.0)
                : 1.0 - smoothUnit(
                    uDiagnosticEnd - uDiagnosticFeather,
                    uDiagnosticEnd + uDiagnosticFeather,
                    inputValue
                );
            return clamp(min(enter, exit), 0.0, 1.0);
        }

        void main() {
            int cellIndex = int(gl_GlobalInvocationID.x);
            if (cellIndex >= uCellCount) return;

            int planOffset = cellIndex * 3;
            float blackGain = clamp(
                curvePlans[planOffset], uMinTableGain, uMaxTableGain
            );
            float endpointGain = clamp(
                curvePlans[planOffset + 1], uMinTableGain, uMaxTableGain
            );
            float shapePower = clamp(
                curvePlans[planOffset + 2], uMinShapePower, uMaxShapePower
            );
            float endpointRatio = blackGain / max(endpointGain, CURVE_EPS);
            float shoulderAmount = pow(endpointRatio, uShapeQ) - 1.0;
            float previousFinalOutput = 0.0;
            int outputOffset = cellIndex * uPointCount;
            for (int point = 0; point < uPointCount; ++point) {
                float tableInput = point == uPointCount - 1
                    ? 1.0
                    : float(point) / float(uPointCount);
                float shoulderInput = clamp(
                    (tableInput - uToeEnd) / max(1.0 - uToeEnd, CURVE_EPS),
                    0.0,
                    1.0
                );
                float denominator = pow(
                    max(1.0 + shoulderAmount * pow(shoulderInput, shapePower), CURVE_EPS),
                    1.0 / uShapeQ
                );
                float trueGain = point == uPointCount - 1
                    ? uInputScale
                    : clamp(blackGain / denominator, uMinTableGain, uMaxTableGain);

                float finalGain = trueGain;
                if (uDiagnosticMode >= 0) {
                    float mask = diagnosticMask(tableInput);
                    float mixedGain = uDiagnosticMode == 0
                        ? mix(1.0, trueGain, mask)
                        : mix(trueGain, 1.0, mask);
                    float monotonicOutput = max(previousFinalOutput, tableInput * mixedGain);
                    finalGain = tableInput <= CURVE_EPS
                        ? clamp(mixedGain, uMinTableGain, uMaxTableGain)
                        : clamp(
                            monotonicOutput / tableInput,
                            uMinTableGain,
                            uMaxTableGain
                        );
                    previousFinalOutput = monotonicOutput;
                }
                gainCurves[outputOffset + point] = finalGain;
            }
        }
    """.trimIndent()

}
