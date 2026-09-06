package com.hinnka.mycamera.processor

/** YUV adapters around the alignment, rejection and merge contracts used by MGC Spatial. */
internal object GlesYuvSpatialShaders {
    /**
     * Decode each 2x2 block once for both rejection and alignment. Clamp individual RGB samples
     * before averaging, as the Spatial guide does; alpha retains the unscaled Y average.
     */
    val prepareBlocks = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uLuma;
        uniform sampler2D uChroma;
        uniform ivec2 uInputSize;
        uniform ivec2 uChromaSize;
        uniform int uIsP010;
        out vec4 oBlock;

        void main() {
            ivec2 block = ivec2(gl_FragCoord.xy);
            ivec2 p = block * 2;
            vec2 cbcr = texelFetch(uChroma, min(block, uChromaSize - 1), 0).rg - 0.5;
            vec3 chroma = uIsP010 != 0
                ? vec3(1.4746 * cbcr.y, -0.16455 * cbcr.x - 0.57135 * cbcr.y, 1.8814 * cbcr.x)
                : vec3(1.402 * cbcr.y, -0.344136 * cbcr.x - 0.714136 * cbcr.y, 1.772 * cbcr.x);
            vec4 sum = vec4(0.0);
            for (int y = 0; y < 2; ++y) {
                for (int x = 0; x < 2; ++x) {
                    float luma = texelFetch(
                        uLuma,
                        clamp(p + ivec2(x, y), ivec2(0), uInputSize - ivec2(1)),
                        0
                    ).r;
                    sum += vec4(clamp(vec3(luma) + chroma, 0.0, 1.0), luma);
                }
            }
            oBlock = sum * 0.25;
        }
    """.trimIndent()

    /** Share the 3x3 low-pass reads between the RGB/variance guide and Fixed14 alignment input. */
    val guideAndAlignment = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uBlocks;
        uniform ivec2 uGuideSize;
        uniform float uExposureScale;
        uniform float uNoiseAlpha;
        uniform float uNoiseBeta;
        uniform float uGreenClippingPoint;
        layout(location = 0) out vec4 oGuide;
        layout(location = 1) out highp int oGray;
        layout(location = 2) out highp vec2 oLinearGray;

        float kernelWeight(int offset) {
            return offset == 0 ? 0.5 : 0.25;
        }

        void main() {
            ivec2 center = ivec2(gl_FragCoord.xy);
            vec3 weightedRgb = vec3(0.0);
            vec3 meanRgb = vec3(0.0);
            vec3 meanRgb2 = vec3(0.0);
            vec3 centerRgb = vec3(0.0);
            float weightedLuma = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    vec4 block = texelFetch(uBlocks,
                        clamp(center + ivec2(x, y), ivec2(0), uGuideSize - 1), 0);
                    vec3 rgb = block.rgb * uExposureScale;
                    float weight = kernelWeight(x) * kernelWeight(y);
                    weightedRgb += rgb * weight;
                    weightedLuma += block.a * weight;
                    if (x == 0 && y == 0) centerRgb = rgb;
                    meanRgb += rgb;
                    meanRgb2 += rgb * rgb;
                }
            }
            meanRgb /= 9.0;
            meanRgb2 /= 9.0;
            vec3 variance = max(meanRgb2 - meanRgb * meanRgb, vec3(0.0));
            // Spatial evaluates the green-noise threshold at its RGB luma coordinate.
            // Using G alone changes greenOnly selection for colored static textures.
            float averageLuma = dot(weightedRgb, vec3(0.25, 0.5, 0.25));
            float greenNoise = max(
                uNoiseAlpha * max(averageLuma, 0.0) + uNoiseBeta,
                1.0e-8
            );
            bool greenOnly = variance.g > 3.0 * greenNoise;
            vec3 referenceColor = greenOnly
                ? vec3(weightedRgb.r, centerRgb.g, weightedRgb.b)
                : weightedRgb;
            float referenceVariance = greenOnly
                ? -max(variance.g, dot(variance, vec3(1.0 / 3.0)))
                : dot(variance, vec3(1.0 / 3.0));
            if (centerRgb.g >= uGreenClippingPoint) {
                referenceColor = vec3(10000.0);
            }
            oGuide = vec4(referenceColor, referenceVariance * 1024.0);
            oGray = int(floor(clamp(weightedLuma * uExposureScale, 0.0, 1.0) * 16383.0 + 0.5));
            // Both components are exact in FP16. Filtering then recombining preserves
            // Fixed14 levels without R16F's loss of low bits on nearly flat patches.
            float coarseGray = floor(float(oGray) * (1.0 / 16.0));
            oLinearGray = vec2(coarseGray, float(oGray) - coarseGray * 16.0);
        }
    """.trimIndent()

    /** Resolve the small alignment grid at the rejection consumer, without a dense flow texture. */
    val tiledRejectionFlow = """
        uniform sampler2D uAlignment;
        uniform ivec2 uAlignmentGridSize;
        uniform int uAlignmentTileSize;
        uniform int uAlignmentGridMin;
        uniform float uAlignmentScale;
        ivec2 alignmentTile(ivec2 p) {
            p = clamp(p, ivec2(0), uGuideSize - 1);
            return clamp(p / uAlignmentTileSize - uAlignmentGridMin,
                ivec2(0), uAlignmentGridSize - 1);
        }
        vec2 alignmentAt(ivec2 tile) {
            return texelFetch(uAlignment, tile, 0).xy * uAlignmentScale;
        }
        vec4 rejectionFlow(vec2 uv) {
            ivec2 p = ivec2(uv * vec2(uGuideSize));
            ivec2 center = alignmentTile(p);
            ivec2 first = alignmentTile(p - 1);
            ivec2 last = alignmentTile(p + 1);
            vec2 flow = alignmentAt(center);
            vec2 minimumFlow = flow;
            vec2 maximumFlow = flow;
            // A 3x3 guide neighborhood intersects at most four merge tiles. Interior pixels
            // only fetch their own tile; boundary pixels visit each distinct neighbor once.
            for (int y = 0; y < 2; ++y) {
                if (first.y + y > last.y) break;
                for (int x = 0; x < 2; ++x) {
                    ivec2 tile = first + ivec2(x, y);
                    if (tile.x > last.x) break;
                    if (all(equal(tile, center))) continue;
                    vec2 value = alignmentAt(tile);
                    minimumFlow = min(minimumFlow, value);
                    maximumFlow = max(maximumFlow, value);
                }
            }
            vec2 size = vec2(uGuideSize);
            return vec4(flow / size, length((maximumFlow - minimumFlow) / size), 0.0);
        }
    """.trimIndent()

    val rejection = GlesMgcRawSpatialShaders.rejectionWithFlowSource(tiledRejectionFlow)

    /** Produce both quarter-resolution rejection inputs in one framebuffer pass. */
    val rejectionDownsample = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uRejection;
        uniform sampler2D uPixelDifference;
        uniform ivec2 uInputSize;
        layout(location = 0) out float oWeight;
        layout(location = 1) out float oPixelDifference;
        float rejectionAt(vec2 p) {
            return texture(uRejection, p / vec2(uInputSize)).r;
        }
        void main() {
            vec2 source = 2.0 * floor(gl_FragCoord.xy);
            vec2 p = source + vec2(1.5);
            float rejection =
                4.0 * rejectionAt(p + vec2(-1.5, -1.5)) +
                4.0 * rejectionAt(p + vec2( 0.5, -1.5)) +
                2.0 * rejectionAt(p + vec2( 2.0, -1.5)) +
                4.0 * rejectionAt(p + vec2(-1.5,  0.5)) +
                4.0 * rejectionAt(p + vec2( 0.5,  0.5)) +
                2.0 * rejectionAt(p + vec2( 2.0,  0.5)) +
                2.0 * rejectionAt(p + vec2(-1.5,  2.0)) +
                2.0 * rejectionAt(p + vec2( 0.5,  2.0)) +
                      rejectionAt(p + vec2( 2.0,  2.0));
            oWeight = 1.0 - (rejection - 0.2) * 0.5;
            oPixelDifference = texture(uPixelDifference, (source + 1.0) / vec2(uInputSize)).r;
        }
    """.trimIndent()

    /** Pair adjacent Gaussian taps through linear filtering; the asymmetric -9..10 support stays. */
    val clippedGaussian = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uInput;
        uniform ivec2 uSize;
        uniform vec2 uDirection;
        uniform vec2 uPairedKernel[10];
        uniform int uQuantize;
        out float oFiltered;
        void main() {
            vec2 uv = gl_FragCoord.xy / vec2(uSize);
            float filtered = 0.0;
            for (int tap = 0; tap < 10; ++tap) {
                vec2 kernel = uPairedKernel[tap];
                filtered += kernel.x * texture(uInput,
                    uv + uDirection * kernel.y / vec2(uSize)).r;
            }
            float value = min(texelFetch(uInput, ivec2(gl_FragCoord.xy), 0).r, filtered);
            oFiltered = uQuantize != 0 ? round(255.0 * clamp(value, 0.0, 1.0)) / 255.0 : value;
        }
    """.trimIndent()

    /** Spatial RBF transport adapted from Bayer phases to full-resolution YUV samples. */
    val merge = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uCurrentY;
        uniform sampler2D uCurrentCbCr;
        uniform sampler2D uAlignment;
        uniform sampler2D uFrameWeight;
        uniform ivec2 uImageSize;
        uniform float uExposureScale;
        uniform float uGlobalFrameWeight;
        uniform float uKernelSigma;
        uniform int uUseFrameWeight;
        out vec4 oYccAndWeight;

        int mirrorCoordinate(int coordinate, int extent) {
            if (extent <= 1) return 0;
            if (coordinate < 0) coordinate = -coordinate - 1;
            if (coordinate >= extent) coordinate = 2 * extent - coordinate - 1;
            return clamp(coordinate, 0, extent - 1);
        }

        ivec2 mirrorPixel(ivec2 p) {
            return ivec2(
                mirrorCoordinate(p.x, uImageSize.x),
                mirrorCoordinate(p.y, uImageSize.y)
            );
        }

        vec3 yccAt(ivec2 p) {
            p = mirrorPixel(p);
            float y = clamp(texelFetch(uCurrentY, p, 0).r * uExposureScale, 0.0, 1.0);
            ivec2 chromaSize = (uImageSize + ivec2(1)) / 2;
            vec2 cbcr = texelFetch(
                uCurrentCbCr,
                clamp(p / 2, ivec2(0), chromaSize - ivec2(1)),
                0
            ).rg;
            cbcr = clamp(
                vec2(0.5) + (cbcr - vec2(0.5)) * uExposureScale,
                vec2(0.0),
                vec2(1.0)
            );
            return vec3(y, cbcr);
        }

        void main() {
            ivec2 outputPixel = ivec2(gl_FragCoord.xy);
            ivec2 alignmentSize = max(textureSize(uAlignment, 0), ivec2(1));
            ivec2 tile = clamp(outputPixel / 16, ivec2(0), alignmentSize - ivec2(1));
            vec2 flow = texelFetch(uAlignment, tile, 0).xy * 2.0;
            vec2 source = vec2(outputPixel) + flow;
            ivec2 anchor = ivec2(roundEven(source));
            vec2 subpixelOffset = vec2(anchor) - source;
            vec3 value = vec3(0.0);
            float kernelWeightSum = 0.0;
            float sigmaSquared = uKernelSigma * uKernelSigma;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    vec2 sampleOffset = subpixelOffset + vec2(x, y);
                    if (any(greaterThan(abs(sampleOffset), vec2(1.5)))) continue;
                    float kernelWeight = exp(
                        -0.5 * dot(sampleOffset * sampleOffset, vec2(sigmaSquared))
                    );
                    value += yccAt(anchor + ivec2(x, y)) * kernelWeight;
                    kernelWeightSum += kernelWeight;
                }
            }
            vec2 weightUv = (vec2(outputPixel) + vec2(0.5)) / vec2(uImageSize);
            float frameWeight = uUseFrameWeight != 0
                ? texture(uFrameWeight, weightUv).r
                : 1.0;
            frameWeight = clamp(frameWeight, 0.0, 1.0) * uGlobalFrameWeight;
            oYccAndWeight = vec4(value * frameWeight, kernelWeightSum * frameWeight);
        }
    """.trimIndent()

    /** Spatial RBF merge evaluated on the requested output grid. */
    val superResolutionMerge = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uCurrentY;
        uniform sampler2D uCurrentCbCr;
        uniform sampler2D uAlignment;
        uniform sampler2D uFrameWeight;
        uniform ivec2 uInputSize;
        uniform ivec2 uOutputSize;
        uniform float uExposureScale;
        uniform float uGlobalFrameWeight;
        uniform float uKernelSigma;
        uniform int uUseFrameWeight;
        uniform vec3 uTransformX;
        uniform vec3 uTransformY;
        out vec4 oYccAndWeight;

        vec2 referencePixel(ivec2 p) {
            return vec2(
                float(p.x) * uTransformX.x + float(p.y) * uTransformX.y + uTransformX.z,
                float(p.x) * uTransformY.x + float(p.y) * uTransformY.y + uTransformY.z
            );
        }

        int mirrorCoordinate(int coordinate, int extent) {
            if (extent <= 1) return 0;
            if (coordinate < 0) coordinate = -coordinate - 1;
            if (coordinate >= extent) coordinate = 2 * extent - coordinate - 1;
            return clamp(coordinate, 0, extent - 1);
        }

        ivec2 mirrorPixel(ivec2 p) {
            return ivec2(
                mirrorCoordinate(p.x, uInputSize.x),
                mirrorCoordinate(p.y, uInputSize.y)
            );
        }

        vec3 yccAt(ivec2 p) {
            p = mirrorPixel(p);
            float y = clamp(texelFetch(uCurrentY, p, 0).r * uExposureScale, 0.0, 1.0);
            ivec2 chromaSize = (uInputSize + ivec2(1)) / 2;
            vec2 cbcr = texelFetch(
                uCurrentCbCr,
                clamp(p / 2, ivec2(0), chromaSize - ivec2(1)),
                0
            ).rg;
            cbcr = clamp(
                vec2(0.5) + (cbcr - vec2(0.5)) * uExposureScale,
                vec2(0.0),
                vec2(1.0)
            );
            return vec3(y, cbcr);
        }

        void main() {
            ivec2 outputPixel = ivec2(gl_FragCoord.xy);
            vec2 reference = referencePixel(outputPixel);
            if (any(lessThan(reference, vec2(0.0))) ||
                any(greaterThan(reference, vec2(uInputSize - ivec2(1))))) {
                oYccAndWeight = vec4(0.0);
                return;
            }
            ivec2 alignmentSize = max(textureSize(uAlignment, 0), ivec2(1));
            ivec2 tile = clamp(ivec2(floor(reference)) / 16, ivec2(0), alignmentSize - ivec2(1));
            vec2 flow = texelFetch(uAlignment, tile, 0).xy * 2.0;
            vec2 source = reference + flow;
            ivec2 anchor = ivec2(roundEven(source));
            vec2 subpixelOffset = vec2(anchor) - source;
            vec3 value = vec3(0.0);
            float kernelWeightSum = 0.0;
            float sigmaSquared = uKernelSigma * uKernelSigma;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    vec2 sampleOffset = subpixelOffset + vec2(x, y);
                    if (any(greaterThan(abs(sampleOffset), vec2(1.5)))) continue;
                    float kernelWeight = exp(
                        -0.5 * dot(sampleOffset * sampleOffset, vec2(sigmaSquared))
                    );
                    value += yccAt(anchor + ivec2(x, y)) * kernelWeight;
                    kernelWeightSum += kernelWeight;
                }
            }
            vec2 weightUv = (reference + vec2(0.5)) / vec2(uInputSize);
            float frameWeight = uUseFrameWeight != 0
                ? texture(uFrameWeight, clamp(weightUv, vec2(0.0), vec2(1.0))).r
                : 1.0;
            frameWeight = clamp(frameWeight, 0.0, 1.0) * uGlobalFrameWeight;
            oYccAndWeight = vec4(value * frameWeight, kernelWeightSum * frameWeight);
        }
    """.trimIndent()

    val superResolutionNormalize = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uSrAccumulator;
        uniform sampler2D uBaseAccumulator;
        uniform ivec2 uInputSize;
        uniform vec3 uTransformX;
        uniform vec3 uTransformY;
        uniform int uIsP010;
        out vec4 oColor;

        vec2 referencePixel(ivec2 p) {
            return vec2(
                float(p.x) * uTransformX.x + float(p.y) * uTransformX.y + uTransformX.z,
                float(p.x) * uTransformY.x + float(p.y) * uTransformY.y + uTransformY.z
            );
        }

        vec3 normalizedYcc(vec4 value) {
            return value.a > 1.0e-8
                ? clamp(value.rgb / value.a, vec3(0.0), vec3(1.0))
                : vec3(0.0, 0.5, 0.5);
        }

        vec3 baseYcc(vec2 pixel) {
            vec2 uv = (pixel + vec2(0.5)) / vec2(uInputSize);
            return normalizedYcc(texture(uBaseAccumulator, clamp(uv, vec2(0.0), vec2(1.0))));
        }

        vec3 yccToRgb(vec3 ycc) {
            float cb = ycc.y - 0.5;
            float cr = ycc.z - 0.5;
            if (uIsP010 != 0) {
                return vec3(
                    ycc.x + 1.4746 * cr,
                    ycc.x - 0.16455 * cb - 0.57135 * cr,
                    ycc.x + 1.8814 * cb
                );
            }
            return vec3(
                ycc.x + 1.402 * cr,
                ycc.x - 0.344136 * cb - 0.714136 * cr,
                ycc.x + 1.772 * cb
            );
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            vec4 accumulated = texelFetch(uSrAccumulator, p, 0);
            vec3 ycc = accumulated.a > 1.0e-8
                ? normalizedYcc(accumulated)
                : baseYcc(referencePixel(p));
            oColor = vec4(clamp(yccToRgb(ycc), vec3(0.0), vec3(1.0)), 1.0);
        }
    """.trimIndent()
}
