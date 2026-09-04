package com.hinnka.mycamera.processor

/** YUV adapters around the alignment, rejection and merge contracts used by MGC Spatial. */
internal object GlesYuvSpatialShaders {
    /**
     * Produces Spatial's signed Fixed14 alignment input at one sample per 2x2 YUV block.
     * The asymmetric half-add ordering of the RAW worker is algebraically preserved before the
     * single final S16 quantization.
     */
    val alignmentInput = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uLuma;
        uniform ivec2 uInputSize;
        uniform ivec2 uGuideSize;
        uniform float uExposureScale;
        layout(location = 0) out highp int oGray;

        float quadAverage(ivec2 quad) {
            quad = clamp(quad, ivec2(0), uGuideSize - ivec2(1));
            ivec2 p = quad * 2;
            float value = 0.0;
            for (int y = 0; y < 2; ++y) {
                for (int x = 0; x < 2; ++x) {
                    value += texelFetch(
                        uLuma,
                        clamp(p + ivec2(x, y), ivec2(0), uInputSize - ivec2(1)),
                        0
                    ).r;
                }
            }
            return 0.25 * value;
        }

        float verticalAt(ivec2 quad) {
            return 0.5 * quadAverage(quad) + 0.25 * (
                quadAverage(quad + ivec2(0, -1)) +
                quadAverage(quad + ivec2(0, 1))
            );
        }

        void main() {
            ivec2 quad = ivec2(gl_FragCoord.xy);
            float filtered = 0.5 * verticalAt(quad) + 0.25 * (
                verticalAt(quad + ivec2(-1, 0)) +
                verticalAt(quad + ivec2(1, 0))
            );
            float value = clamp(filtered * uExposureScale, 0.0, 1.0);
            oGray = int(floor(value * 16383.0 + 0.5));
        }
    """.trimIndent()

    /** Builds the half-resolution RGB/variance guide consumed by Spatial rejection. */
    val guide = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uLuma;
        uniform sampler2D uChroma;
        uniform ivec2 uInputSize;
        uniform ivec2 uChromaSize;
        uniform ivec2 uGuideSize;
        uniform float uExposureScale;
        uniform float uNoiseAlpha;
        uniform float uNoiseBeta;
        uniform float uGreenClippingPoint;
        uniform int uIsP010;
        out vec4 oGuide;

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

        vec3 rgbAt(ivec2 p) {
            p = clamp(p, ivec2(0), uInputSize - ivec2(1));
            float y = texelFetch(uLuma, p, 0).r;
            vec2 cbcr = texelFetch(
                uChroma,
                clamp(p / 2, ivec2(0), uChromaSize - ivec2(1)),
                0
            ).rg;
            return clamp(yccToRgb(vec3(y, cbcr)), vec3(0.0), vec3(1.0)) *
                uExposureScale;
        }

        vec3 blockRgb(ivec2 block) {
            block = clamp(block, ivec2(0), uGuideSize - ivec2(1));
            ivec2 p = block * 2;
            return 0.25 * (
                rgbAt(p) + rgbAt(p + ivec2(1, 0)) +
                rgbAt(p + ivec2(0, 1)) + rgbAt(p + ivec2(1, 1))
            );
        }

        float kernelWeight(int offset) {
            return offset == 0 ? 0.5 : 0.25;
        }

        void main() {
            ivec2 center = ivec2(gl_FragCoord.xy);
            vec3 weightedRgb = vec3(0.0);
            vec3 meanRgb = vec3(0.0);
            vec3 meanRgb2 = vec3(0.0);
            vec3 centerRgb = blockRgb(center);
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    vec3 rgb = blockRgb(center + ivec2(x, y));
                    weightedRgb += rgb * kernelWeight(x) * kernelWeight(y);
                    meanRgb += rgb;
                    meanRgb2 += rgb * rgb;
                }
            }
            meanRgb /= 9.0;
            meanRgb2 /= 9.0;
            vec3 variance = max(meanRgb2 - meanRgb * meanRgb, vec3(0.0));
            float greenNoise = max(
                uNoiseAlpha * max(weightedRgb.g, 0.0) + uNoiseBeta,
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
