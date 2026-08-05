package com.hinnka.mycamera.processor

/**
 * GLES transport of the Spatial Bayer shaders embedded in MGC 9.6.080 V24
 * libgcastartup.so.
 *
 * The guide, rejection, dilation and merge equations below retain the embedded GLSL equations and
 * constants. The original program first extracts RAW16 into a half-resolution Bayer texture.
 * Photon reads R16UI directly instead; [rawQuad] and [gainedRaw] are the only transport adaptation.
 *
 * Alignment and unblocker are compiled Halide in MGC. Their ports below follow the generated
 * AArch64 kernels and the stage graph recovered from the same build.
 */
internal object GlesMgcRawSpatialShaders {
    val guide = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uRaw;
        uniform ivec2 uRawSize;
        uniform ivec2 uGuideSize;
        uniform int uCfaPattern;
        uniform vec4 uGains;
        uniform vec4 uBlackLevelsTimesGains;
        uniform sampler2D uNoiseEstimates;
        uniform vec4 uNoiseTextureScaleBias;
        uniform float uGreenClippingPoint;
        uniform vec4 uCovarianceParameters1;
        uniform vec4 uCovarianceParameters2;
        uniform vec4 uCovRangeRgFactors;
        uniform vec2 uCovRangeBFactor;
        uniform float uForceReferenceColorRgb;
        layout(location = 0) out vec4 oGuide;
        layout(location = 1) out vec4 oCovariance;

        vec4 rawQuad(ivec2 quad) {
            ivec2 p = clamp(quad * 2, ivec2(0), uRawSize - ivec2(2));
            float p00 = float(texelFetch(uRaw, p, 0).r);
            float p10 = float(texelFetch(uRaw, p + ivec2(1, 0), 0).r);
            float p01 = float(texelFetch(uRaw, p + ivec2(0, 1), 0).r);
            float p11 = float(texelFetch(uRaw, p + ivec2(1, 1), 0).r);
            vec4 raw;
            if (uCfaPattern == 0) raw = vec4(p00, p10, p01, p11);
            else if (uCfaPattern == 1) raw = vec4(p10, p00, p11, p01);
            else if (uCfaPattern == 2) raw = vec4(p01, p11, p00, p10);
            else raw = vec4(p11, p01, p10, p00);
            return raw * uGains + uBlackLevelsTimesGains;
        }

        vec4 rotateStructureTensor(vec4 s) {
            float c0 = 0.5 * (s.x + s.y);
            float c1 = 0.5 * (s.y - s.x);
            return vec4(c0 + s.z, c0 - s.z, c1, s.w);
        }

        void analyzeStructureTensor(
            vec4 s,
            float greenVariance,
            out vec2 eigenvector1,
            out vec2 eigenvector2,
            out float strength,
            out float coherence
        ) {
            float trace = s.x + s.y;
            float diff = s.x - s.y;
            float sqrtD = sqrt(max(diff * diff + 4.0 * s.z * s.z, 0.0));
            float eigenvalue1 = (trace + sqrtD) * 0.5;
            float eigenvalue2 = (trace - sqrtD) * 0.5;
            eigenvector1 = vec2(1.0, 0.0);
            eigenvector2 = vec2(0.0, 1.0);
            if (abs(s.z) > 0.0001) {
                eigenvector1 =
                    normalize(vec2(s.z, eigenvalue1 - s.x)) * -sign(s.z);
                eigenvector2 = vec2(-eigenvector1.y, eigenvector1.x);
            } else if (s.x < s.y) {
                eigenvector1 = vec2(0.0, 1.0);
                eigenvector2 = vec2(1.0, 0.0);
            }
            float singularValue1 = sqrt(eigenvalue1);
            float singularValue2 = sqrt(max(eigenvalue2, 0.0));
            float correction = s.w * greenVariance;
            eigenvalue1 *= eigenvalue1 / (eigenvalue1 + correction);
            strength = sqrt(eigenvalue1);
            coherence = (singularValue1 - singularValue2) /
                (singularValue1 + singularValue2 + 1.0e-6);
        }

        float gradientBlurring(float strength, float greenStdDev) {
            float dominantFeature = max(strength, greenStdDev) -
                uCovarianceParameters1.z;
            return clamp(
                1.0 - dominantFeature * uCovarianceParameters2.y,
                0.0,
                1.0
            );
        }

        vec3 constructCovariance(
            vec2 eigenvector1,
            vec2 eigenvector2,
            float strength,
            float coherence,
            float greenStdDev
        ) {
            float blur = gradientBlurring(strength, greenStdDev);
            float baseSigma = uCovarianceParameters1.w;
            float shrinkedSigma = uCovarianceParameters1.x;
            float stretchedSigma = uCovarianceParameters1.y;
            float blurredSigma = uCovarianceParameters2.x;
            float anisotropicShrinking = mix(
                baseSigma,
                shrinkedSigma,
                min(coherence, strength * 5.0)
            );
            float singularValue1 = mix(anisotropicShrinking, blurredSigma, blur);
            float singularValue2 = mix(
                mix(baseSigma, stretchedSigma, coherence),
                blurredSigma,
                blur
            );
            mat2 rotation = mat2(eigenvector1, eigenvector2);
            mat2 covariance = transpose(rotation) *
                mat2(
                    singularValue1 * singularValue1, 0.0,
                    0.0, singularValue2 * singularValue2
                ) * rotation;
            return vec3(covariance[0].x, covariance[1].y, covariance[0].y);
        }

        void accumulateGradient(float dx, float dy, inout vec4 s) {
            s += vec4(dx * dx, dy * dy, dx * dy, 0.0);
        }

        vec4 structureTensor(float green0[9], float green1[9]) {
            vec4 s = vec4(0.0);
            for (int y = 0; y < 2; ++y) {
                for (int x = 0; x < 2; ++x) {
                    float g00 = green0[y * 3 + x];
                    float g01 = green0[y * 3 + x + 1];
                    float g10 = green1[y * 3 + x];
                    float g11 = green1[y * 3 + x + 1];
                    float g20 = green0[(y + 1) * 3 + x];
                    float g21 = green0[(y + 1) * 3 + x + 1];
                    float g30 = green1[(y + 1) * 3 + x];
                    float g31 = green1[(y + 1) * 3 + x + 1];
                    float bdx;
                    float bdy;
                    float rdx;
                    float rdy;
                    if (uCfaPattern == 1 || uCfaPattern == 2) {
                        bdx = 0.5 * ((g11 - g01) + (g21 - g10));
                        bdy = 0.5 * ((g01 - g10) + (g11 - g21));
                        rdx = 0.5 * ((g21 - g10) + (g30 - g20));
                        rdy = 0.5 * ((g21 - g30) + (g10 - g20));
                    } else {
                        bdx = 0.5 * ((g11 - g00) + (g20 - g10));
                        bdy = 0.5 * ((g00 - g10) + (g11 - g20));
                        rdx = 0.5 * ((g21 - g11) + (g31 - g20));
                        rdy = 0.5 * ((g21 - g31) + (g11 - g20));
                    }
                    float g1dx = 0.5 * (g21 - g00);
                    float g1dy = 0.5 * (g01 - g20);
                    float g2dx = 0.5 * (g31 - g10);
                    float g2dy = 0.5 * (g11 - g30);
                    accumulateGradient(bdx, bdy, s);
                    accumulateGradient(rdx, rdy, s);
                    accumulateGradient(g1dx, g1dy, s);
                    accumulateGradient(g2dx, g2dy, s);
                }
            }
            s /= 16.0;
            s.w = 3.0 / 4.0;
            return s;
        }

        float luma(vec3 rgb) {
            return dot(rgb, vec3(0.25, 0.5, 0.25));
        }

        float kernelWeight(int offset) {
            return offset == 0 ? 0.5 : 0.25;
        }

        void main() {
            ivec2 center = ivec2(gl_FragCoord.xy);
            vec3 m0Rgb = vec3(0.0);
            vec3 m1Rgb = vec3(0.0);
            float m0Green = 0.0;
            float m1Green = 0.0;
            vec3 averageRgb = vec3(0.0);
            float green0[9];
            float green1[9];
            float centerGreen = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    vec4 rggb = rawQuad(
                        clamp(center + ivec2(x, y), ivec2(0), uGuideSize - ivec2(1))
                    );
                    vec3 rgb = vec3(rggb.x, 0.5 * (rggb.y + rggb.z), rggb.w);
                    int index = (y + 1) * 3 + x + 1;
                    if (uCfaPattern == 2 || uCfaPattern == 3) {
                        green0[index] = rggb.z;
                        green1[index] = rggb.y;
                    } else {
                        green0[index] = rggb.y;
                        green1[index] = rggb.z;
                    }
                    averageRgb += rgb * kernelWeight(x) * kernelWeight(y);
                    if (x == 0 && y == 0) centerGreen = rgb.y;
                    m0Rgb += rgb;
                    m1Rgb += rgb * rgb;
                    m0Green += rggb.y + rggb.z;
                    m1Green += rggb.y * rggb.y + rggb.z * rggb.z;
                }
            }
            m0Rgb /= 9.0;
            m1Rgb /= 9.0;
            vec3 rgbVariance = max(vec3(0.0), m1Rgb - m0Rgb * m0Rgb);
            m0Green /= 18.0;
            m1Green /= 18.0;
            float greenVariance = max(0.0, m1Green - m0Green * m0Green);
            float averageLuma = luma(averageRgb);
            vec2 noiseUv =
                vec2(averageLuma, 1.0) * uNoiseTextureScaleBias.xy +
                uNoiseTextureScaleBias.zw;
            float greenVarianceNoise =
                2.0 * texture(uNoiseEstimates, noiseUv).y;
            vec3 referenceColor;
            float referenceVariance;
            if (greenVariance > 3.0 * greenVarianceNoise &&
                uForceReferenceColorRgb == 0.0) {
                referenceColor = vec3(averageRgb.x, centerGreen, averageRgb.z);
                referenceVariance = -max(rgbVariance.y, greenVariance);
            } else {
                referenceColor = averageRgb;
                referenceVariance = dot(rgbVariance, vec3(1.0 / 3.0));
            }
            if (centerGreen >= uGreenClippingPoint) {
                referenceColor = vec3(10000.0);
            }
            vec4 tensor = rotateStructureTensor(structureTensor(green0, green1));
            vec2 eigenvector1;
            vec2 eigenvector2;
            float strength;
            float coherence;
            analyzeStructureTensor(
                tensor,
                greenVarianceNoise,
                eigenvector1,
                eigenvector2,
                strength,
                coherence
            );
            float correctedGreenStdDev = sqrt(
                greenVariance * greenVariance /
                    (greenVariance + greenVarianceNoise)
            );
            oGuide = vec4(referenceColor, referenceVariance * 1024.0);
            vec3 covariance = constructCovariance(
                eigenvector1,
                eigenvector2,
                strength,
                coherence,
                correctedGreenStdDev
            );
            vec2 packedRg = clamp(
                covariance.xy * uCovRangeRgFactors.yw +
                    uCovRangeRgFactors.xz,
                0.0,
                1.0
            );
            float packedB = clamp(
                covariance.z * uCovRangeBFactor.y + uCovRangeBFactor.x,
                0.0,
                1.0
            );
            oCovariance = vec4(packedRg, packedB, 0.0);
        }
    """.trimIndent()

    val rejection = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uBaseGuide;
        uniform sampler2D uAltGuide;
        uniform sampler2D uFlow;
        uniform sampler2D uUnblocker;
        uniform sampler2D uNoiseEstimates;
        uniform ivec2 uGuideSize;
        uniform vec4 uFlowScaleOffset;
        uniform vec2 uUnblockerScale;
        uniform vec4 uNoiseTextureScaleBias;
        uniform vec2 uColorDifferenceMultiplier;
        uniform float uUnblockerReductionThreshold;
        uniform float uExtraMotionRobustnessBoost;
        uniform float uMotionRobustnessBoostVarianceThreshold;
        uniform float uExtraMotionRobustnessMotionThreshold;
        layout(location = 0) out float oReverseWeight;
        layout(location = 1) out float oPixelDifference;

        vec2 mirrorUv(vec2 uv) {
            uv = mod(uv, 2.0);
            return mix(uv, 2.0 - uv, greaterThan(uv, vec2(1.0)));
        }

        void computeBicubicParameters(
            vec2 uv,
            vec4 texelSize,
            out vec2 g0,
            out vec2 g1,
            out vec2 p0,
            out vec2 p1,
            out vec2 p2,
            out vec2 p3
        ) {
            uv = uv * texelSize.xy + 0.5;
            vec2 integerUv = floor(uv);
            vec2 a = fract(uv);
            vec2 w0 = (1.0 / 6.0) *
                (a * (a * (-a + 3.0) - 3.0) + 1.0);
            vec2 w1 = (1.0 / 6.0) *
                (a * a * (3.0 * a - 6.0) + 4.0);
            vec2 w2 = (1.0 / 6.0) *
                (a * (a * (-3.0 * a + 3.0) + 3.0) + 1.0);
            vec2 w3 = (1.0 / 6.0) * (a * a * a);
            g0 = w0 + w1;
            g1 = w2 + w3;
            vec2 h0 = -1.0 + w1 / g0;
            vec2 h1 = 1.0 + w3 / g1;
            vec2 q0 = (integerUv + h0 - 0.5) * texelSize.zw;
            vec2 q1 = (integerUv + h1 - 0.5) * texelSize.zw;
            p0 = q0;
            p1 = vec2(q1.x, q0.y);
            p2 = vec2(q0.x, q1.y);
            p3 = q1;
        }

        vec4 sampleBicubicAbsolute(sampler2D image, vec2 uv) {
            vec4 texelSize = vec4(
                vec2(uGuideSize),
                1.0 / vec2(uGuideSize)
            );
            vec2 g0;
            vec2 g1;
            vec2 p0;
            vec2 p1;
            vec2 p2;
            vec2 p3;
            computeBicubicParameters(
                uv, texelSize, g0, g1, p0, p1, p2, p3
            );
            return g0.y * (
                g0.x * abs(texture(image, p0)) +
                g1.x * abs(texture(image, p1))
            ) + g1.y * (
                g0.x * abs(texture(image, p2)) +
                g1.x * abs(texture(image, p3))
            );
        }

        void main() {
            vec2 uv = gl_FragCoord.xy / vec2(uGuideSize);
            vec2 flowUv = uv * uFlowScaleOffset.xy + uFlowScaleOffset.zw;
            vec4 flow = texture(uFlow, flowUv);
            vec2 warpedUv = mirrorUv(uv + flow.xy);
            float unblocker = texture(uUnblocker, uv * uUnblockerScale).r;
            if (flow.z < uUnblockerReductionThreshold) unblocker = 0.0;
            bool motionPrior = flow.z > uExtraMotionRobustnessMotionThreshold;
            vec4 reference = texture(uBaseGuide, uv);
            bool greenOnly = reference.w < 0.0;
            reference.w = abs(reference.w) / 1024.0;
            vec4 current = sampleBicubicAbsolute(uAltGuide, warpedUv);
            current.w /= 1024.0;
            float luma = greenOnly
                ? reference.y
                : dot(reference.rgb, vec3(1.0 / 3.0));
            vec2 referenceNoiseUv =
                vec2(luma, 0.0) * uNoiseTextureScaleBias.xy +
                uNoiseTextureScaleBias.zw;
            vec2 currentNoiseUv =
                vec2(luma, 1.0) * uNoiseTextureScaleBias.xy +
                uNoiseTextureScaleBias.zw;
            vec3 referenceNoise =
                texture(uNoiseEstimates, referenceNoiseUv).xyz;
            vec3 currentNoise =
                texture(uNoiseEstimates, currentNoiseUv).xyz;
            float filterVarianceScale = greenOnly ? 0.211665 : 0.0898866;
            referenceNoise *= filterVarianceScale;
            currentNoise *= filterVarianceScale;
            reference.w *= filterVarianceScale;
            current.w *= filterVarianceScale;
            float pixelVariance = min(reference.w, current.w);
            float minimumVariance = greenOnly
                ? referenceNoise.y
                : dot(referenceNoise, vec3(1.0 / 3.0));
            float robustnessBoost = 1.0;
            if (reference.w >
                    uMotionRobustnessBoostVarianceThreshold * minimumVariance &&
                motionPrior) {
                robustnessBoost = uExtraMotionRobustnessBoost;
            }
            pixelVariance *= 2.0;
            vec3 combinedNoise = referenceNoise + currentNoise;
            vec3 difference = current.rgb - reference.rgb;
            vec3 differenceSquared = max(
                difference * difference - combinedNoise,
                vec3(0.0)
            );
            vec3 variance = max(vec3(pixelVariance), combinedNoise);
            vec3 pixelDistanceSquared = differenceSquared / combinedNoise;
            differenceSquared /= variance;
            float distance = greenOnly
                ? uColorDifferenceMultiplier.y * differenceSquared.y
                : uColorDifferenceMultiplier.x *
                    dot(differenceSquared, vec3(1.0 / 3.0));
            float pixelDistance = greenOnly
                ? uColorDifferenceMultiplier.y * pixelDistanceSquared.y
                : uColorDifferenceMultiplier.x *
                    dot(pixelDistanceSquared, vec3(1.0 / 3.0));
            float pixelDifference = exp2(min(-pixelDistance, 0.0));
            distance *= robustnessBoost;
            float frameWeight = exp2(min(-distance, 0.0));
            float weight = min(1.0 - unblocker, frameWeight);
            oReverseWeight = 1.0 - weight;
            oPixelDifference = pixelDifference;
        }
    """.trimIndent()

    val dilateRejection = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uRejection;
        uniform ivec2 uSize;
        out float oWeight;
        float rejectionAt(ivec2 p) {
            return texelFetch(
                uRejection,
                clamp(p, ivec2(0), uSize - ivec2(1)),
                0
            ).r;
        }
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            float rejection = 0.0;
            for (int y = -2; y <= 2; ++y) {
                for (int x = -2; x <= 2; ++x) {
                    rejection += rejectionAt(p + ivec2(x, y));
                }
            }
            rejection = (rejection - 0.2) / 2.0;
            oWeight = 1.0 - rejection;
        }
    """.trimIndent()

    // Embedded OpenCL source: Mask_GenerateHighlightMask.
    val bentoGenerateHighlightMask = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uBaseFrame;
        uniform ivec2 uSize;
        uniform float uMaxRgbClippingThreshold;
        out float oHighlightMask;
        void main() {
            ivec2 p = clamp(
                ivec2(gl_FragCoord.xy),
                ivec2(0),
                uSize - ivec2(1)
            );
            vec3 rgb = round(
                65535.0 * clamp(texelFetch(uBaseFrame, p, 0).rgb, 0.0, 1.0)
            ) / 65535.0;
            float maxIntensity = max(rgb.r, max(rgb.g, rgb.b));
            float clippedRatio =
                (maxIntensity - uMaxRgbClippingThreshold) /
                (1.0 - uMaxRgbClippingThreshold);
            oHighlightMask = clamp(clippedRatio, 0.0, 1.0);
        }
    """.trimIndent()

    // Embedded OpenCL sources: GainUp and
    // Mask_AdjustHighlightMaskAndGenerateInpaintingMask. The third output is the aligned
    // ultrashort clipping mask consumed by Bento's high-overlap fallback predicate.
    val bentoAdjustHighlightMask = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uBaseFrame;
        uniform sampler2D uUltrashortFrame;
        uniform sampler2D uHighlightMask;
        uniform sampler2D uFlow;
        uniform ivec2 uSize;
        uniform float uExposureRatio;
        uniform float uMinNormalizedIntensityError;
        uniform float uMaxRgbClippingThreshold;
        uniform float uMinRgbForInpainting;
        layout(location = 0) out float oAdjustedHighlightMask;
        layout(location = 1) out float oInpaintingMask;
        layout(location = 2) out float oUltrashortClippingMask;

        vec2 mirrorUv(vec2 uv) {
            uv = mod(uv, 2.0);
            return mix(uv, 2.0 - uv, greaterThan(uv, vec2(1.0)));
        }

        void main() {
            ivec2 p = clamp(
                ivec2(gl_FragCoord.xy),
                ivec2(0),
                uSize - ivec2(1)
            );
            vec2 uv = gl_FragCoord.xy / vec2(uSize);
            vec2 flow = texture(uFlow, uv).xy;
            vec3 base = round(
                65535.0 * clamp(texelFetch(uBaseFrame, p, 0).rgb, 0.0, 1.0)
            ) / 65535.0;
            vec3 ultrashort = clamp(
                texture(uUltrashortFrame, mirrorUv(uv + flow)).rgb,
                0.0,
                1.0
            );
            vec3 gainedUltrashort = floor(
                65535.0 * clamp(ultrashort * uExposureRatio, 0.0, 1.0)
            ) / 65535.0;
            vec3 difference = min(gainedUltrashort - base, vec3(0.0));
            float normalizedIntensityError = length(difference);
            float fallback = normalizedIntensityError >=
                    uMinNormalizedIntensityError
                ? floor(normalizedIntensityError * 255.0) / 255.0
                : 0.0;
            float highlight = texelFetch(uHighlightMask, p, 0).r;
            fallback = highlight > 0.0 ? fallback : 0.0;
            oAdjustedHighlightMask = floor(
                (1.0 - fallback) * highlight * 255.0
            ) / 255.0;

            vec3 base8 = round(clamp(base, 0.0, 1.0) * 255.0) / 255.0;
            float smallest = min(base8.r, min(base8.g, base8.b));
            float largest = max(base8.r, max(base8.g, base8.b));
            float middle = base8.r + base8.g + base8.b - smallest - largest;
            oInpaintingMask =
                fallback > 0.0 &&
                smallest >= uMinRgbForInpainting &&
                middle >= uMaxRgbClippingThreshold
                    ? 1.0
                    : 0.0;

            float ultrashortMax = max(
                ultrashort.r,
                max(ultrashort.g, ultrashort.b)
            );
            oUltrashortClippingMask = clamp(
                (ultrashortMax - uMaxRgbClippingThreshold) /
                    (1.0 - uMaxRgbClippingThreshold),
                0.0,
                1.0
            );
        }
    """.trimIndent()

    // Embedded OpenCL source: MaskRejectionWithClippedHighlights.
    val bentoRewriteWeight = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uExistingWeight;
        uniform sampler2D uBentoMask;
        uniform ivec2 uSize;
        uniform int uHasExistingWeight;
        out float oWeight;
        void main() {
            vec2 uv = gl_FragCoord.xy / vec2(uSize);
            float existingWeight = uHasExistingWeight != 0
                ? texture(uExistingWeight, uv).r
                : 1.0;
            float maskWeight = texture(uBentoMask, uv).r;
            oWeight = existingWeight * (1.0 - maskWeight);
        }
    """.trimIndent()

    val merge = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uRaw;
        uniform sampler2D uFlow;
        uniform sampler2D uFrameWeight;
        uniform sampler2D uCovariance;
        uniform ivec2 uRawSize;
        uniform ivec2 uOutputSize;
        uniform vec4 uFlowScaleOffset;
        uniform vec4 uCovRangeRg;
        uniform vec2 uCovRangeB;
        uniform int uCfaPattern;
        uniform vec4 uGains;
        uniform vec4 uBlackLevelsTimesGains;
        uniform int uUseFrameWeight;
        layout(location = 0) out vec4 oColorAndRWeight;
        layout(location = 1) out vec4 oGbWeights;

        vec2 mirrorUv(vec2 uv) {
            uv = mod(uv, 2.0);
            return mix(uv, 2.0 - uv, greaterThan(uv, vec2(1.0)));
        }

        int canonicalChannel(ivec2 p) {
            int phase = ((p.y & 1) << 1) + (p.x & 1);
            if (uCfaPattern == 0) {
                if (phase == 0) return 0;
                if (phase == 1) return 1;
                if (phase == 2) return 2;
                return 3;
            }
            if (uCfaPattern == 1) {
                if (phase == 0) return 1;
                if (phase == 1) return 0;
                if (phase == 2) return 3;
                return 2;
            }
            if (uCfaPattern == 2) {
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

        float gainedRaw(ivec2 p, int channel) {
            p = clamp(p, ivec2(0), uRawSize - ivec2(1));
            return float(texelFetch(uRaw, p, 0).r) * uGains[channel] +
                uBlackLevelsTimesGains[channel];
        }

        float kernelWeight(vec2 pixelOffset, vec3 covariance) {
            float distance =
                pixelOffset.x * pixelOffset.x * covariance.x +
                pixelOffset.y * pixelOffset.y * covariance.y +
                pixelOffset.x * pixelOffset.y * covariance.z * 2.0;
            return exp2(-0.5 * distance) + 0.00005;
        }

        void main() {
            vec2 uv = gl_FragCoord.xy / vec2(uOutputSize);
            vec2 flowUv = uv * uFlowScaleOffset.xy + uFlowScaleOffset.zw;
            vec4 flow = texture(uFlow, flowUv);
            float frameWeight = uUseFrameWeight != 0
                ? texture(uFrameWeight, uv).r
                : 1.0;
            vec2 sampleUv = mirrorUv(uv + flow.xy);
            vec3 packedCovariance = texture(uCovariance, sampleUv).xyz;
            vec3 covariance = vec3(
                packedCovariance.xy * uCovRangeRg.yw + uCovRangeRg.xz,
                packedCovariance.z * uCovRangeB.y + uCovRangeB.x
            );
            vec2 scaled = sampleUv * vec2(uRawSize);
            ivec2 anchor = ivec2(scaled);
            vec2 subpixelOffset = floor(scaled) + 0.5 - scaled;
            vec3 intensities = vec3(0.0);
            vec3 weights = vec3(0.0);
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    ivec2 p = anchor + ivec2(x, y);
                    int channel = canonicalChannel(p);
                    int rgbChannel = channel == 3 ? 2 : min(channel, 1);
                    float weight = kernelWeight(
                        subpixelOffset + vec2(x, y),
                        covariance
                    );
                    intensities[rgbChannel] += gainedRaw(p, channel) * weight;
                    weights[rgbChannel] += weight;
                }
            }
            intensities *= frameWeight;
            weights *= frameWeight;
            oColorAndRWeight = vec4(intensities, weights.r);
            oGbWeights = vec4(weights.gb, 0.0, 0.0);
        }
    """.trimIndent()

    /**
     * MergeBayerRaw transport recovered from the Halide AOT contract.
     *
     * Unlike MergeRgbRaw, this branch never demosaics or applies white balance. Alignment and the
     * covariance kernel operate on Bayer quads, and every output sample is reconstructed only from
     * the same CFA phase in neighboring quads. This preserves the original Bayer lattice exactly.
     */
    val mergeBayer = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uRaw;
        uniform sampler2D uFlow;
        uniform sampler2D uFrameWeight;
        uniform sampler2D uCovariance;
        uniform ivec2 uRawSize;
        uniform vec4 uCovRangeRg;
        uniform vec2 uCovRangeB;
        uniform vec4 uGains;
        uniform vec4 uBlackLevelsTimesGains;
        uniform int uUseFrameWeight;
        out vec4 oBayerAndWeight;

        vec2 mirrorUv(vec2 uv) {
            uv = mod(uv, 2.0);
            return mix(uv, 2.0 - uv, greaterThan(uv, vec2(1.0)));
        }

        int phaseIndex(ivec2 phase) {
            return (phase.y << 1) + phase.x;
        }

        float kernelWeight(vec2 quadOffset, vec3 covariance) {
            float distance =
                quadOffset.x * quadOffset.x * covariance.x +
                quadOffset.y * quadOffset.y * covariance.y +
                quadOffset.x * quadOffset.y * covariance.z * 2.0;
            return exp2(-0.5 * distance) + 0.00005;
        }

        void main() {
            ivec2 outputPixel = ivec2(gl_FragCoord.xy);
            ivec2 phase = outputPixel & ivec2(1);
            int phaseChannel = phaseIndex(phase);
            vec2 uv = gl_FragCoord.xy / vec2(uRawSize);
            vec4 flow = texture(uFlow, uv);
            float frameWeight = uUseFrameWeight != 0
                ? texture(uFrameWeight, uv).r
                : 1.0;
            vec2 sampleUv = mirrorUv(uv + flow.xy);
            vec3 packedCovariance = texture(uCovariance, sampleUv).xyz;
            vec3 covariance = vec3(
                packedCovariance.xy * uCovRangeRg.yw + uCovRangeRg.xz,
                packedCovariance.z * uCovRangeB.y + uCovRangeB.x
            );

            // Pixel-center coordinates are converted to the same-phase Bayer-quad lattice.
            vec2 samplePixel = sampleUv * vec2(uRawSize) - vec2(0.5);
            vec2 quadPosition = (samplePixel - vec2(phase)) * 0.5;
            ivec2 anchor = ivec2(floor(quadPosition));
            ivec2 maximumQuad = max(
                (uRawSize - ivec2(1) - phase) / 2,
                ivec2(0)
            );
            float intensity = 0.0;
            float accumulatedWeight = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    ivec2 quad = clamp(
                        anchor + ivec2(x, y),
                        ivec2(0),
                        maximumQuad
                    );
                    ivec2 rawPixel = quad * 2 + phase;
                    float rawValue = float(texelFetch(uRaw, rawPixel, 0).r);
                    float normalized =
                        rawValue * uGains[phaseChannel] +
                        uBlackLevelsTimesGains[phaseChannel];
                    float weight = kernelWeight(
                        vec2(anchor + ivec2(x, y)) - quadPosition,
                        covariance
                    );
                    intensity += normalized * weight;
                    accumulatedWeight += weight;
                }
            }
            oBayerAndWeight = vec4(
                intensity * frameWeight,
                accumulatedWeight * frameWeight,
                0.0,
                0.0
            );
        }
    """.trimIndent()

    val normalizeBayer = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uBayerAndWeight;
        uniform ivec2 uOutputSize;
        layout(location = 0) out highp uint oBayer16;
        void main() {
            ivec2 p = clamp(
                ivec2(gl_FragCoord.xy),
                ivec2(0),
                uOutputSize - ivec2(1)
            );
            vec2 valueAndWeight = texelFetch(uBayerAndWeight, p, 0).rg;
            float normalized = valueAndWeight.x / max(valueAndWeight.y, 1.0e-8);
            oBayer16 = uint(round(clamp(normalized, 0.0, 1.0) * 65535.0));
        }
    """.trimIndent()

    /**
     * Raw16ToGrayHalide (0x3bbaf98): one value per Bayer quad, phase black
     * subtraction, scalar gain, equal RGGB average and separable 1:2:1 filtering.
     */
    val rawToGray = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uRaw;
        uniform ivec2 uRawSize;
        uniform ivec2 uGraySize;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevels;
        uniform float uGain;
        layout(location = 0) out highp uint oGray;

        vec4 canonicalQuad(ivec2 q) {
            ivec2 p = clamp(q * 2, ivec2(0), uRawSize - ivec2(2));
            float p00 = float(texelFetch(uRaw, p, 0).r);
            float p10 = float(texelFetch(uRaw, p + ivec2(1, 0), 0).r);
            float p01 = float(texelFetch(uRaw, p + ivec2(0, 1), 0).r);
            float p11 = float(texelFetch(uRaw, p + ivec2(1, 1), 0).r);
            vec4 v;
            if (uCfaPattern == 0) v = vec4(p00, p10, p01, p11);
            else if (uCfaPattern == 1) v = vec4(p10, p00, p11, p01);
            else if (uCfaPattern == 2) v = vec4(p01, p11, p00, p10);
            else v = vec4(p11, p01, p10, p00);
            return max(v - uBlackLevels, vec4(0.0)) * uGain;
        }

        float grayAt(ivec2 q) {
            q = clamp(q, ivec2(0), uGraySize - ivec2(1));
            return dot(canonicalQuad(q), vec4(0.25));
        }

        void main() {
            ivec2 q = ivec2(gl_FragCoord.xy);
            float value = 0.0;
            for (int y = -1; y <= 1; ++y) {
                float wy = y == 0 ? 0.5 : 0.25;
                for (int x = -1; x <= 1; ++x) {
                    float wx = x == 0 ? 0.5 : 0.25;
                    value += grayAt(q + ivec2(x, y)) * wx * wy;
                }
            }
            oGray = uint(clamp(round(value), 0.0, 65535.0));
        }
    """.trimIndent()

    val grayDownsample = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uInput;
        uniform ivec2 uInputSize;
        layout(location = 0) out highp uint oGray;
        float valueAt(ivec2 p) {
            return float(texelFetch(
                uInput,
                clamp(p, ivec2(0), uInputSize - ivec2(1)),
                0
            ).r);
        }
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy) * 2;
            float value = 0.0;
            for (int y = -1; y <= 1; ++y) {
                float wy = y == 0 ? 0.5 : 0.25;
                for (int x = -1; x <= 1; ++x) {
                    float wx = x == 0 ? 0.5 : 0.25;
                    value += valueAt(p + ivec2(x, y)) * wx * wy;
                }
            }
            oGray = uint(clamp(round(value), 0.0, 65535.0));
        }
    """.trimIndent()

    /**
     * AlignL1Halide UInt16 path (0x3be3c58). Candidate ties retain the first
     * candidate. The quadratic correction is exactly
     * .5*(Eminus-Eplus)/(Eminus+Eplus-2*Ecenter).
     */
    val alignL1 = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uReference;
        uniform highp usampler2D uCurrent;
        uniform sampler2D uInitialAlignment;
        uniform ivec2 uImageSize;
        uniform ivec2 uGridSize;
        uniform ivec2 uInitialGridSize;
        uniform int uTileStride;
        uniform int uTileSize;
        uniform int uSearchRadius;
        uniform float uInitialScale;
        uniform int uHasInitialAlignment;
        out vec4 oAlignment;

        float valueAt(highp usampler2D image, ivec2 p) {
            return float(texelFetch(
                image,
                clamp(p, ivec2(0), uImageSize - ivec2(1)),
                0
            ).r);
        }
        float sadAt(ivec2 origin, ivec2 displacement) {
            float sad = 0.0;
            for (int y = 0; y < 16; ++y) {
                if (y >= uTileSize) break;
                for (int x = 0; x < 16; ++x) {
                    if (x >= uTileSize) break;
                    ivec2 p = origin + ivec2(x, y);
                    sad += abs(
                        valueAt(uReference, p) -
                        valueAt(uCurrent, p + displacement)
                    );
                }
            }
            return sad / float(uTileSize * uTileSize);
        }
        void main() {
            ivec2 tile = ivec2(gl_FragCoord.xy);
            ivec2 initialTile = clamp(
                ivec2(
                    floor(
                        (vec2(tile) + 0.5) *
                        vec2(uInitialGridSize) / vec2(uGridSize)
                    )
                ),
                ivec2(0),
                uInitialGridSize - ivec2(1)
            );
            vec2 initial = uHasInitialAlignment != 0
                ? texelFetch(uInitialAlignment, initialTile, 0).xy * uInitialScale
                : vec2(0.0);
            ivec2 center = ivec2(round(initial));
            ivec2 origin = tile * uTileStride;
            ivec2 best = center;
            float bestCost = sadAt(origin, center);
            for (int y = -3; y <= 3; ++y) {
                for (int x = -3; x <= 3; ++x) {
                    if (abs(x) > uSearchRadius || abs(y) > uSearchRadius) continue;
                    if (x == 0 && y == 0) continue;
                    ivec2 candidate = center + ivec2(x, y);
                    float cost = sadAt(origin, candidate);
                    if (cost < bestCost) {
                        bestCost = cost;
                        best = candidate;
                    }
                }
            }
            float minusX = sadAt(origin, best - ivec2(1, 0));
            float plusX = sadAt(origin, best + ivec2(1, 0));
            float minusY = sadAt(origin, best - ivec2(0, 1));
            float plusY = sadAt(origin, best + ivec2(0, 1));
            float denomX = minusX + plusX - 2.0 * bestCost;
            float denomY = minusY + plusY - 2.0 * bestCost;
            float subX = abs(denomX) > 1.0e-12
                ? 0.5 * (minusX - plusX) / denomX
                : 0.0;
            float subY = abs(denomY) > 1.0e-12
                ? 0.5 * (minusY - plusY) / denomY
                : 0.0;
            oAlignment = vec4(vec2(best) + clamp(vec2(subX, subY), -0.5, 0.5),
                bestCost, 0.0);
        }
    """.trimIndent()

    /** Component-wise 3x3 median used by the alignment graph. */
    val medianAlignment = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uAlignment;
        uniform ivec2 uGridSize;
        out vec4 oAlignment;
        float median9(float v[9]) {
            for (int i = 1; i < 9; ++i) {
                float x = v[i];
                int j = i - 1;
                while (j >= 0 && v[j] > x) {
                    v[j + 1] = v[j];
                    --j;
                }
                v[j + 1] = x;
            }
            return v[4];
        }
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            float x[9];
            float y[9];
            float z[9];
            int i = 0;
            for (int oy = -1; oy <= 1; ++oy) {
                for (int ox = -1; ox <= 1; ++ox) {
                    vec3 v = texelFetch(
                        uAlignment,
                        clamp(p + ivec2(ox, oy), ivec2(0), uGridSize - ivec2(1)),
                        0
                    ).xyz;
                    x[i] = v.x;
                    y[i] = v.y;
                    z[i] = v.z;
                    ++i;
                }
            }
            oAlignment = vec4(median9(x), median9(y), median9(z), 0.0);
        }
    """.trimIndent()

    /**
     * ConvertAlignment (0x35cf3ec): interpolate tile flow, convert pixels to
     * normalized UV displacement and store the truncated 3x3 min/max range in B.
     */
    val convertAlignment = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uAlignment;
        uniform ivec2 uGridSize;
        uniform ivec2 uOutputSize;
        uniform float uTileStride;
        uniform float uAlignmentScale;
        out vec4 oFlow;
        vec2 flowAt(ivec2 p) {
            return texelFetch(
                uAlignment,
                clamp(p, ivec2(0), uGridSize - ivec2(1)),
                0
            ).xy * uAlignmentScale;
        }
        void main() {
            vec2 pixel = gl_FragCoord.xy - vec2(0.5);
            vec2 grid = pixel / uTileStride;
            ivec2 p0 = ivec2(floor(grid));
            vec2 f = fract(grid);
            vec2 a = mix(flowAt(p0), flowAt(p0 + ivec2(1, 0)), f.x);
            vec2 b = mix(flowAt(p0 + ivec2(0, 1)), flowAt(p0 + ivec2(1)), f.x);
            vec2 flowPixels = mix(a, b, f.y);
            vec2 minimumFlow = vec2(1.0e20);
            vec2 maximumFlow = vec2(-1.0e20);
            ivec2 center = ivec2(round(grid));
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    vec2 v = flowAt(center + ivec2(x, y));
                    minimumFlow = min(minimumFlow, v);
                    maximumFlow = max(maximumFlow, v);
                }
            }
            vec2 uvFlow = flowPixels / vec2(uOutputSize);
            float range = max(maximumFlow.x - minimumFlow.x,
                maximumFlow.y - minimumFlow.y);
            oFlow = vec4(uvFlow, range / max(vec2(uOutputSize).y, 1.0), 0.0);
        }
    """.trimIndent()

    /**
     * UnblockerRaw16Halide (0x35e11c4/0x35e2ddc), expressed in normalized
     * sensor space. The 128/9 variance factor, four-noise subtraction, sqrt and
     * byte-domain clamp are retained.
     */
    val unblocker = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uRaw;
        uniform ivec2 uRawSize;
        uniform ivec2 uGridSize;
        uniform int uCfaPattern;
        uniform float uBlackLevelGreen;
        uniform float uNoiseQuadratic;
        uniform float uNoiseScale;
        uniform float uNoiseOffset;
        out float oUnblocker;

        vec2 greensAt(ivec2 q) {
            ivec2 p = clamp(q * 2, ivec2(0), uRawSize - ivec2(2));
            float p00 = float(texelFetch(uRaw, p, 0).r);
            float p10 = float(texelFetch(uRaw, p + ivec2(1, 0), 0).r);
            float p01 = float(texelFetch(uRaw, p + ivec2(0, 1), 0).r);
            float p11 = float(texelFetch(uRaw, p + ivec2(1), 0).r);
            vec4 v;
            if (uCfaPattern == 0) v = vec4(p00, p10, p01, p11);
            else if (uCfaPattern == 1) v = vec4(p10, p00, p11, p01);
            else if (uCfaPattern == 2) v = vec4(p01, p11, p00, p10);
            else v = vec4(p11, p01, p10, p00);
            return v.yz;
        }
        float averageGreen(ivec2 q) {
            q = clamp(q, ivec2(0), (uRawSize / 2) - ivec2(1));
            vec2 g = greensAt(q);
            return 0.5 * (g.x + g.y);
        }
        float blurredGreen(ivec2 q) {
            float value = 0.0;
            for (int y = -1; y <= 1; ++y) {
                float wy = y == 0 ? 0.5 : 0.25;
                for (int x = -1; x <= 1; ++x) {
                    float wx = x == 0 ? 0.5 : 0.25;
                    value += averageGreen(q + ivec2(x, y)) * wx * wy;
                }
            }
            return value;
        }
        void main() {
            ivec2 tile = ivec2(gl_FragCoord.xy);
            ivec2 origin = tile * 16;
            float preSum = 0.0;
            float preSquareSum = 0.0;
            float postSum = 0.0;
            float postSquareSum = 0.0;
            for (int y = 0; y < 16; ++y) {
                for (int x = 0; x < 16; ++x) {
                    ivec2 q = origin + ivec2(x, y);
                    vec2 g = greensAt(clamp(
                        q, ivec2(0), (uRawSize / 2) - ivec2(1)
                    ));
                    float b = blurredGreen(q);
                    preSum += g.x + g.y;
                    preSquareSum += dot(g, g);
                    postSum += b;
                    postSquareSum += b * b;
                }
            }
            float preCount = 512.0;
            float postCount = 256.0;
            float preMean = preSum / preCount;
            float postMean = postSum / postCount;
            float preVariance = max(
                preSquareSum / preCount - preMean * preMean,
                0.0
            );
            float postVariance = max(
                postSquareSum / postCount - postMean * postMean,
                0.0
            );
            float signal = max(preMean - uBlackLevelGreen, 0.0);
            float predictedNoise =
                (uNoiseQuadratic * signal + uNoiseScale) * signal +
                uNoiseOffset;
            float correctedVariance = max(
                preVariance - 4.0 * predictedNoise,
                0.0
            );
            float denominator = postVariance * (128.0 / 9.0);
            float ratio = denominator > 0.0
                ? correctedVariance / denominator
                : 0.0;
            oUnblocker = clamp(sqrt(max(ratio, 0.0)), 0.0, 1.0);
        }
    """.trimIndent()

    val normalize = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uColorAndRWeight;
        uniform sampler2D uGbWeights;
        uniform sampler2D uLensShading;
        uniform int uUseLensShading;
        uniform ivec2 uOutputSize;
        uniform vec3 uCameraDomainScale;
        out vec4 oLinearRgb;
        void main() {
            ivec2 p = clamp(
                ivec2(gl_FragCoord.xy),
                ivec2(0),
                uOutputSize - ivec2(1)
            );
            vec4 colorAndR = texelFetch(uColorAndRWeight, p, 0);
            vec2 gb = texelFetch(uGbWeights, p, 0).rg;
            vec3 rgb = colorAndR.rgb /
                max(vec3(colorAndR.a, gb.x, gb.y), vec3(1.0e-8));
            if (uUseLensShading != 0) {
                vec2 uv = (vec2(p) + 0.5) / vec2(uOutputSize);
                vec4 shading = texture(uLensShading, uv);
                rgb *= vec3(shading.r, 0.5 * (shading.g + shading.b), shading.a);
            }
            // Spatial merge is calculated with WB gains, while Photon LINEAR_RGB is camera RGB.
            // This is the same output-domain conversion used by RCD WRITE_OUTPUT.
            rgb *= uCameraDomainScale;
            oLinearRgb = vec4(max(rgb, vec3(0.0)), 1.0);
        }
    """.trimIndent()

    val transferToRgb16 = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uLinearRgb;
        uniform ivec2 uOutputSize;
        layout(location = 0) out highp uvec4 oRgb16;
        void main() {
            ivec2 p = clamp(
                ivec2(gl_FragCoord.xy),
                ivec2(0),
                uOutputSize - ivec2(1)
            );
            vec3 rgb = clamp(texelFetch(uLinearRgb, p, 0).rgb, 0.0, 1.0);
            oRgb16 = uvec4(round(rgb * 65535.0), 65535.0);
        }
    """.trimIndent()
}
