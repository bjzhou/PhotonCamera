package com.hinnka.mycamera.processor

/** Geometry of the canonical RGGB work surface used by the packed VGN shaders. */
internal data class RadianceVgnGeometry(
    val regionWidth: Int,
    val regionHeight: Int,
    val roiLeft: Int,
    val roiTop: Int,
    val roiRight: Int,
    val roiBottom: Int,
    val packedWidth: Int,
    val workWidth: Int,
    val workHeight: Int,
    val halfHeight: Int,
) {
    companion object {
        const val WORK_HALO_PX = 20

        fun forRegion(regionWidth: Int, regionHeight: Int, cfaPattern: Int): RadianceVgnGeometry {
            require(regionWidth > 0 && regionHeight > 0)
            require(cfaPattern in 0..3) { "Radiance VGN requires a standard Bayer CFA" }
            val phaseX = if (cfaPattern == 1 || cfaPattern == 3) 1 else 0
            val phaseY = if (cfaPattern == 2 || cfaPattern == 3) 1 else 0
            val roiLeft = WORK_HALO_PX + phaseX
            val roiTop = WORK_HALO_PX + phaseY
            val roiRight = roiLeft + regionWidth
            val roiBottom = roiTop + regionHeight
            val packedWidth = (roiRight + WORK_HALO_PX + 3) / 4
            val workWidth = packedWidth * 4
            val workHeight = ((roiBottom + WORK_HALO_PX + 1) / 2) * 2
            return RadianceVgnGeometry(
                regionWidth = regionWidth,
                regionHeight = regionHeight,
                roiLeft = roiLeft,
                roiTop = roiTop,
                roiRight = roiRight,
                roiBottom = roiBottom,
                packedWidth = packedWidth,
                workWidth = workWidth,
                workHeight = workHeight,
                halfHeight = workHeight / 2,
            )
        }
    }
}

/**
 * Radiance-only reconstruction adapters.
 *
 * The reference path adapts a RAW tile to the canonical VGN work domain and converts Pass 3
 * YCCD directly to un-white-balanced camera RGB. The non-reference path uses the exact same
 * black-level, LSC, and calculation-WB conditioning before it creates dense G plus native R-G/B-G
 * samples. Each opponent plane is resolved exclusively on its own global two-pixel lattice and
 * remains in the calculation-WB domain until the post-warp fusion decoder returns it to camera RGB.
 */
internal object GlesRadianceReconstructionShaders {
    /**
     * Shared standard-Bayer RAW conditioning for every Radiance reconstruction backend.
     *
     * Keep this as one shader fragment: reference/non-reference differences start at demosaic,
     * never at black level, LSC channel selection, or calculation white balance.
     */
    private val standardBayerCalculationHelpers: String = """
        int bayerIndexAt(int pattern, ivec2 p) {
            int phase = (p.x & 1) + ((p.y & 1) << 1);
            if (pattern == 0) return phase;
            if (pattern == 1) {
                if (phase == 0) return 1;
                if (phase == 1) return 0;
                if (phase == 2) return 3;
                return 2;
            }
            if (pattern == 2) {
                if (phase == 0) return 2;
                if (phase == 1) return 3;
                if (phase == 2) return 0;
                return 1;
            }
            if (phase == 0) return 3;
            if (phase == 1) return 2;
            if (phase == 2) return 1;
            return 0;
        }

        int colorAt(ivec2 global) {
            int channel = bayerIndexAt(uCfaPattern, global);
            return channel == 0 ? 0 : (channel == 3 ? 2 : 1);
        }

        int lensChannelAt(ivec2 global) {
            int channel = bayerIndexAt(uCfaPattern, global);
            if (channel == 0 || channel == 3) return channel;
            return (global.y & 1) == 0 ? 1 : 2;
        }

        int mirrorIndex(int value, int size) {
            if (size <= 1) return 0;
            int period = 2 * (size - 1);
            int wrapped = value % period;
            if (wrapped < 0) wrapped += period;
            return wrapped < size ? wrapped : period - wrapped;
        }

        ivec2 clampLocal(ivec2 local) {
            return ivec2(
                mirrorIndex(local.x, uRegionSize.x),
                mirrorIndex(local.y, uRegionSize.y)
            );
        }

        float sensorAt(ivec2 local) {
            local = clampLocal(local);
            ivec2 global = local + uGlobalOrigin;
            int channel = bayerIndexAt(uCfaPattern, global);
            float raw = float(texelFetch(uRawRegion, local, 0).r);
            return max(raw - uBlackLevel[channel], 0.0) /
                max(uWhiteLevel - uBlackLevel[channel], 1.0);
        }

        float calculationAt(ivec2 local) {
            local = clampLocal(local);
            ivec2 global = local + uGlobalOrigin;
            int channel = bayerIndexAt(uCfaPattern, global);
            vec2 uv = (vec2(global) + vec2(0.5)) / vec2(uFullImageSize);
            vec4 lsc = texture(uLensShadingMap, clamp(uv, vec2(0.0), vec2(1.0)));
            return clamp(
                sensorAt(local) * max(lsc[lensChannelAt(global)], 0.0) *
                    max(uCalculationGains[channel], 1e-6),
                0.0,
                8.0
            );
        }
    """.trimIndent()

    val vgnPrepareRegion: String = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp image2D;

        layout(local_size_x = 8, local_size_y = 8) in;
        layout(binding = 0) uniform highp usampler2D uRawRegion;
        layout(binding = 1) uniform highp sampler2D uLensShadingMap;
        layout(rgba16f, binding = 0) writeonly uniform image2D uPackedRaw;

        uniform ivec2 uRegionSize;
        uniform ivec2 uFullImageSize;
        uniform ivec2 uGlobalOrigin;
        uniform ivec2 uPackedSize;
        uniform ivec2 uSourceOffset;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        uniform vec4 uCalculationGains;
        uniform int uReconstructHighlights;

        $standardBayerCalculationHelpers

        float opposedEstimate(ivec2 local, int ownColor, float fallback) {
            vec3 sum = vec3(0.0);
            vec3 count = vec3(0.0);
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    ivec2 q = clampLocal(local + ivec2(x, y));
                    int color = colorAt(q + uGlobalOrigin);
                    sum[color] += calculationAt(q);
                    count[color] += 1.0;
                }
            }
            const float power = 3.0;
            vec3 roots = pow(max(sum / max(count, vec3(1.0)), vec3(0.0)),
                vec3(1.0 / power));
            float opposed = ownColor == 0 ? 0.5 * (roots.g + roots.b) :
                (ownColor == 1 ? 0.5 * (roots.r + roots.b) :
                    0.5 * (roots.r + roots.g));
            return max(pow(max(opposed, 0.0), power), fallback);
        }

        float preparedSample(ivec2 workPosition) {
            ivec2 local = clampLocal(workPosition - uSourceOffset);
            float sensor = sensorAt(local);
            float value = calculationAt(local);
            if (uReconstructHighlights != 0) {
                float clipMask = smoothstep(0.985, 1.0, sensor);
                if (clipMask > 0.0) {
                    int ownColor = colorAt(local + uGlobalOrigin);
                    value = min(mix(value, opposedEstimate(local, ownColor, value), clipMask), 8.0);
                }
            }
            return value;
        }

        void main() {
            ivec2 packed = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(packed, uPackedSize))) return;
            int x = packed.x * 4;
            imageStore(uPackedRaw, packed, vec4(
                preparedSample(ivec2(x + 0, packed.y)),
                preparedSample(ivec2(x + 1, packed.y)),
                preparedSample(ivec2(x + 2, packed.y)),
                preparedSample(ivec2(x + 3, packed.y))
            ));
        }
    """.trimIndent()

    val vgnYccdToCameraRgb: String = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp uimage2D;
        precision highp image2D;

        layout(local_size_x = 8, local_size_y = 8) in;
        layout(rgba16ui, binding = 0) readonly uniform uimage2D uYccd;
        layout(rgba16f, binding = 1) writeonly uniform image2D uCameraRgb;
        uniform ivec2 uOutputSize;
        uniform ivec2 uRoiOrigin;
        uniform vec3 uCalculationGains;

        int signed16(int value) {
            return (value & (1 << 15)) != 0 ? value | ~((1 << 16) - 1) : value;
        }

        vec3 yccdToRgb(uvec3 yccd) {
            float y = clamp(float(yccd.r), 0.0, 65534.0);
            float rg = float(signed16(int(yccd.g)));
            float bg = float(signed16(int(yccd.b)));
            float r = clamp(y * 3.0 * rg / 32768.0 - y * bg / 32768.0 + y,
                0.0, 65535.0);
            float b = clamp(y * 3.0 * bg / 32768.0 - y * rg / 32768.0 + y,
                0.0, 65535.0);
            float g = clamp((4.0 * y - r - b) * 0.5, 0.0, 65535.0);
            return vec3(r, g, b) / 65535.0;
        }

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(p, uOutputSize))) return;
            vec3 calculationRgb = yccdToRgb(imageLoad(uYccd, p + uRoiOrigin).rgb);
            vec3 cameraRgb = calculationRgb / max(uCalculationGains, vec3(1e-6));
            imageStore(uCameraRgb, p, vec4(max(cameraRgb, vec3(0.0)), 1.0));
        }
    """.trimIndent()

    val semanticSeed: String = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp image2D;

        layout(local_size_x = 8, local_size_y = 8) in;
        layout(binding = 0) uniform highp usampler2D uRawRegion;
        layout(binding = 1) uniform highp sampler2D uLensShadingMap;
        layout(rgba16f, binding = 0) writeonly uniform image2D uSemanticSeed;
        uniform ivec2 uRegionSize;
        uniform ivec2 uFullImageSize;
        uniform ivec2 uGlobalOrigin;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        uniform vec4 uCalculationGains;

        $standardBayerCalculationHelpers

        float denseGreenAt(ivec2 p) {
            p = clampLocal(p);
            ivec2 global = p + uGlobalOrigin;
            int channel = bayerIndexAt(uCfaPattern, global);
            float center = calculationAt(p);
            if (channel == 1 || channel == 2) return center;

            float gL = calculationAt(p + ivec2(-1, 0));
            float gR = calculationAt(p + ivec2(1, 0));
            float gU = calculationAt(p + ivec2(0, -1));
            float gD = calculationAt(p + ivec2(0, 1));
            float cL2 = calculationAt(p + ivec2(-2, 0));
            float cR2 = calculationAt(p + ivec2(2, 0));
            float cU2 = calculationAt(p + ivec2(0, -2));
            float cD2 = calculationAt(p + ivec2(0, 2));
            float horizontalLinear = 0.5 * (gL + gR);
            float verticalLinear = 0.5 * (gU + gD);
            float horizontalCorrection = 0.25 * (2.0 * center - cL2 - cR2);
            float verticalCorrection = 0.25 * (2.0 * center - cU2 - cD2);
            // The second-derivative correction is useful for detail, but an unrestricted value
            // can overshoot on defocused/high-contrast chromatic edges and create a false green
            // extremum. A missing G sample on a monotonic edge must stay between its two native
            // G neighbors along the chosen direction.
            float horizontalLimit = 0.5 * abs(gL - gR);
            float verticalLimit = 0.5 * abs(gU - gD);
            float horizontal = horizontalLinear + clamp(
                horizontalCorrection,
                -horizontalLimit,
                horizontalLimit
            );
            float vertical = verticalLinear + clamp(
                verticalCorrection,
                -verticalLimit,
                verticalLimit
            );
            float gradientH = abs(gL - gR) + abs(2.0 * center - cL2 - cR2);
            float gradientV = abs(gU - gD) + abs(2.0 * center - cU2 - cD2);
            float blendH = gradientV / max(gradientH + gradientV, 1e-7);
            float green = mix(vertical, horizontal, blendH);
            float nativeGreenMin = min(min(gL, gR), min(gU, gD));
            float nativeGreenMax = max(max(gL, gR), max(gU, gD));
            return clamp(green, max(nativeGreenMin, 0.0), max(nativeGreenMax, 0.0));
        }

        void main() {
            ivec2 local = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(local, uRegionSize))) return;
            ivec2 global = local + uGlobalOrigin;
            int channel = bayerIndexAt(uCfaPattern, global);
            float green = denseGreenAt(local);
            float nativeCalculation = calculationAt(local);
            float redGreen = channel == 0 ? nativeCalculation - green : 0.0;
            float blueGreen = channel == 3 ? nativeCalculation - green : 0.0;
            imageStore(uSemanticSeed, local, vec4(green, redGreen, blueGreen, 1.0));
        }
    """.trimIndent()

    val semanticResolve: String = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp image2D;

        layout(local_size_x = 8, local_size_y = 8) in;
        layout(rgba16f, binding = 0) readonly uniform image2D uSemanticSeed;
        layout(rgba16f, binding = 1) writeonly uniform image2D uSemanticOutput;
        uniform ivec2 uRegionSize;
        uniform ivec2 uFullImageSize;
        uniform ivec2 uGlobalOrigin;
        uniform int uCfaPattern;

        ivec2 channelPhase(int channel) {
            if (uCfaPattern == 0) return channel == 0 ? ivec2(0, 0) : ivec2(1, 1);
            if (uCfaPattern == 1) return channel == 0 ? ivec2(1, 0) : ivec2(0, 1);
            if (uCfaPattern == 2) return channel == 0 ? ivec2(0, 1) : ivec2(1, 0);
            return channel == 0 ? ivec2(1, 1) : ivec2(0, 0);
        }

        int clampToPhase(int value, int phase, int fullSize, int regionStart, int regionSize) {
            int globalFirst = phase;
            int globalLast = phase + 2 * max((fullSize - 1 - phase) / 2, 0);
            int regionEnd = regionStart + regionSize - 1;
            int first = globalFirst + 2 * max((regionStart - globalFirst + 1) / 2, 0);
            int last = globalLast - 2 * max((globalLast - regionEnd + 1) / 2, 0);
            return clamp(value, first, max(first, last));
        }

        vec4 semanticAt(ivec2 global) {
            ivec2 local = global - uGlobalOrigin;
            return imageLoad(uSemanticSeed, local);
        }

        float opponentGuideWeight(
            float candidateGreen,
            float targetGreen,
            float guideSigma,
            float edgeStrength
        ) {
            float normalized = (candidateGreen - targetGreen) / max(guideSigma, 1e-5);
            float similarity = max(exp(-0.5 * normalized * normalized), 0.02);
            // In flat/noisy regions retain ordinary bilinear interpolation. The range guide is
            // activated only where a real luminance edge is strong enough to locate chroma.
            return mix(1.0, similarity, edgeStrength);
        }

        float resolveOpponent(
            ivec2 global,
            int channel,
            int component,
            float targetGreen
        ) {
            ivec2 phase = channelPhase(channel);
            ivec2 lower = ivec2(
                global.x - ((global.x - phase.x) & 1),
                global.y - ((global.y - phase.y) & 1)
            );
            ivec2 upper = lower + ivec2(2);
            float tx = clamp(float(global.x - lower.x) * 0.5, 0.0, 1.0);
            float ty = clamp(float(global.y - lower.y) * 0.5, 0.0, 1.0);
            lower.x = clampToPhase(lower.x, phase.x, uFullImageSize.x,
                uGlobalOrigin.x, uRegionSize.x);
            lower.y = clampToPhase(lower.y, phase.y, uFullImageSize.y,
                uGlobalOrigin.y, uRegionSize.y);
            upper.x = clampToPhase(upper.x, phase.x, uFullImageSize.x,
                uGlobalOrigin.x, uRegionSize.x);
            upper.y = clampToPhase(upper.y, phase.y, uFullImageSize.y,
                uGlobalOrigin.y, uRegionSize.y);
            ivec2 p00 = ivec2(lower.x, lower.y);
            ivec2 p10 = ivec2(upper.x, lower.y);
            ivec2 p01 = ivec2(lower.x, upper.y);
            ivec2 p11 = ivec2(upper.x, upper.y);
            // Fetch each lattice site once; the same RGBA16F texel carries G and opponent.
            vec4 s00 = semanticAt(p00);
            vec4 s10 = semanticAt(p10);
            vec4 s01 = semanticAt(p01);
            vec4 s11 = semanticAt(p11);
            float o00 = s00[component];
            float o10 = s10[component];
            float o01 = s01[component];
            float o11 = s11[component];
            float g00 = s00.r;
            float g10 = s10.r;
            float g01 = s01.r;
            float g11 = s11.r;
            float guideMin = min(min(g00, g10), min(g01, g11));
            float guideMax = max(max(g00, g10), max(g01, g11));
            float guideRange = guideMax - guideMin;
            float edgeStrength = smoothstep(0.01, 0.08, guideRange);
            float guideSigma = max(0.15 * guideRange, 0.004);

            vec4 spatialWeight = vec4(
                (1.0 - tx) * (1.0 - ty),
                tx * (1.0 - ty),
                (1.0 - tx) * ty,
                tx * ty
            );
            vec4 guideWeight = vec4(
                opponentGuideWeight(g00, targetGreen, guideSigma, edgeStrength),
                opponentGuideWeight(g10, targetGreen, guideSigma, edgeStrength),
                opponentGuideWeight(g01, targetGreen, guideSigma, edgeStrength),
                opponentGuideWeight(g11, targetGreen, guideSigma, edgeStrength)
            );
            vec4 weight = spatialWeight * guideWeight;
            return dot(weight, vec4(o00, o10, o01, o11)) /
                max(dot(weight, vec4(1.0)), 1e-7);
        }

        void main() {
            ivec2 local = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(local, uRegionSize))) return;
            ivec2 global = local + uGlobalOrigin;
            float green = imageLoad(uSemanticSeed, local).r;
            float redGreen = resolveOpponent(global, 0, 1, green);
            float blueGreen = resolveOpponent(global, 3, 2, green);
            imageStore(uSemanticOutput, local, vec4(green, redGreen, blueGreen, 1.0));
        }
    """.trimIndent()
}
