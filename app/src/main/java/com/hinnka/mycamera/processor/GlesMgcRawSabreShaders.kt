package com.hinnka.mycamera.processor

/**
 * GLES translation of MGC's Sabre programs from sabre_programs.cc/sabre_merge.cc.
 *
 * Sabre works on an extracted 2x2 Bayer texture, builds its guide and covariance at one sample
 * per Bayer quad, accumulates camera RGB and three independent weights in a full-resolution MRT,
 * then dehomogenizes the result before the ResolveSabre stage.
 */
internal object GlesMgcRawSabreShaders {
    val extractBayer = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uRaw;
        uniform ivec2 uRawSize;
        layout(location = 0) out vec4 oExtractedBayer;

        float rawAt(ivec2 p) {
            return float(texelFetch(uRaw, clamp(p, ivec2(0), uRawSize - ivec2(1)), 0).r);
        }

        void main() {
            ivec2 q = ivec2(gl_FragCoord.xy);
            ivec2 p = q * 2;
            // GetFourPixelsFromPacked16 stores the spatial 2x2 order. The epsilon is present in
            // the embedded MGC source and prevents zero-valued half-float samples.
            oExtractedBayer = vec4(
                rawAt(p),
                rawAt(p + ivec2(1, 0)),
                rawAt(p + ivec2(0, 1)),
                rawAt(p + ivec2(1, 1))
            ) + vec4(1.0e-4);
        }
    """.trimIndent()

    val guideAndCovariance = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uExtractedBayer;
        uniform sampler2D uNoiseEstimates;
        uniform ivec2 uGuideSize;
        uniform vec4 uFrameBorderPadded;
        uniform int uCfaPattern;
        uniform vec4 uGains;
        uniform vec4 uBlackLevelsTimesGains;
        uniform vec4 uNoiseTextureScaleBias;
        uniform vec4 uCovarianceParameters1;
        uniform vec4 uCovarianceParameters2;
        uniform vec4 uCovRangeRgFactors;
        uniform vec2 uCovRangeBFactor;
        uniform float uGreenClippingPoint;
        // Exact Sabre contract: x is a 0/1 switch; the remaining components are unused.
        uniform vec4 uForceReferenceColorRgb;
        layout(location = 0) out vec4 oGuide;
        layout(location = 1) out vec4 oCovariance;

        vec2 mirrorUvs(vec2 sampleUv) {
            if (sampleUv.x <= uFrameBorderPadded.x) {
                sampleUv.x = 2.0 * uFrameBorderPadded.x - sampleUv.x;
            }
            if (sampleUv.y <= uFrameBorderPadded.y) {
                sampleUv.y = 2.0 * uFrameBorderPadded.y - sampleUv.y;
            }
            if (sampleUv.x > uFrameBorderPadded.z) {
                sampleUv.x = 2.0 * uFrameBorderPadded.z - sampleUv.x;
            }
            if (sampleUv.y > uFrameBorderPadded.w) {
                sampleUv.y = 2.0 * uFrameBorderPadded.w - sampleUv.y;
            }
            return sampleUv;
        }

        vec4 canonicalQuad(vec2 uv) {
            vec4 spatial = vec4(uvec4(texture(uExtractedBayer, uv)));
            vec4 canonical;
            if (uCfaPattern == 0) canonical = spatial;
            else if (uCfaPattern == 1) canonical = spatial.yxwz;
            else if (uCfaPattern == 2) canonical = spatial.zwxy;
            else canonical = spatial.wzyx;
            return canonical * uGains + uBlackLevelsTimesGains;
        }

        float weight1d(int x) {
            return x == 0 ? 0.5 : 0.25;
        }

        void accumulateGradient(float dx, float dy, inout vec4 tensor) {
            tensor += vec4(dx * dx, dy * dy, dx * dy, 0.0);
        }

        vec4 structureTensor(float green0[9], float green1[9]) {
            vec4 tensor = vec4(0.0);
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
                    accumulateGradient(bdx, bdy, tensor);
                    accumulateGradient(rdx, rdy, tensor);
                    accumulateGradient(0.5 * (g21 - g00), 0.5 * (g01 - g20), tensor);
                    accumulateGradient(0.5 * (g31 - g10), 0.5 * (g11 - g30), tensor);
                }
            }
            tensor /= 16.0;
            tensor.w = 0.75;
            float c0 = 0.5 * (tensor.x + tensor.y);
            float c1 = 0.5 * (tensor.y - tensor.x);
            return vec4(c0 + tensor.z, c0 - tensor.z, c1, tensor.w);
        }

        vec3 constructCovariance(vec4 tensor, float greenVariance, float greenNoise) {
            float trace = tensor.x + tensor.y;
            float difference = tensor.x - tensor.y;
            float discriminant = sqrt(max(
                difference * difference + 4.0 * tensor.z * tensor.z,
                0.0
            ));
            float eigenvalue1 = 0.5 * (trace + discriminant);
            float eigenvalue2 = 0.5 * (trace - discriminant);
            vec2 eigenvector1 = vec2(1.0, 0.0);
            if (abs(tensor.z) > 0.0001) {
                eigenvector1 = normalize(vec2(tensor.z, eigenvalue1 - tensor.x)) *
                    -sign(tensor.z);
            } else if (tensor.x < tensor.y) {
                eigenvector1 = vec2(0.0, 1.0);
            }
            vec2 eigenvector2 = vec2(-eigenvector1.y, eigenvector1.x);
            float singularValue1 = sqrt(eigenvalue1);
            float singularValue2 = sqrt(max(eigenvalue2, 0.0));
            float correction = tensor.w * greenNoise;
            eigenvalue1 *= eigenvalue1 / (eigenvalue1 + correction);
            float strength = sqrt(max(eigenvalue1, 0.0));
            float coherence = (singularValue1 - singularValue2) /
                (singularValue1 + singularValue2 + 1.0e-6);
            float greenStdDev = sqrt(
                greenVariance * greenVariance / (greenVariance + greenNoise)
            );
            float gradientBlurring = clamp(
                1.0 -
                    (max(strength, greenStdDev) - uCovarianceParameters1.z) *
                    uCovarianceParameters2.y,
                0.0,
                1.0
            );
            float anisotropicShrinking = mix(
                uCovarianceParameters1.w,
                uCovarianceParameters1.x,
                min(coherence, strength * 5.0)
            );
            float sigma1 = mix(
                anisotropicShrinking,
                uCovarianceParameters2.x,
                gradientBlurring
            );
            float sigma2 = mix(
                mix(uCovarianceParameters1.w, uCovarianceParameters1.y, coherence),
                uCovarianceParameters2.x,
                gradientBlurring
            );
            mat2 rotation = mat2(eigenvector1, eigenvector2);
            mat2 covariance = transpose(rotation) * mat2(
                sigma1 * sigma1, 0.0,
                0.0, sigma2 * sigma2
            ) * rotation;
            return vec3(covariance[0].x, covariance[1].y, covariance[0].y);
        }

        void main() {
            vec2 centerUv = mirrorUvs(gl_FragCoord.xy / vec2(uGuideSize));
            vec2 reciprocalSize = 1.0 / vec2(uGuideSize);
            float green0[9];
            float green1[9];
            vec3 rgbSum = vec3(0.0);
            vec3 rgbSquareSum = vec3(0.0);
            float greenSum = 0.0;
            float greenSquareSum = 0.0;
            vec3 averageRgb = vec3(0.0);
            float centerGreen = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    vec4 rggb = canonicalQuad(
                        centerUv + vec2(float(x), float(y)) * reciprocalSize
                    );
                    // MGC constructs Bayer Sabre programs with SQRT_COLOR_SPACE enabled. Guide
                    // color, local variance, and the structure tensor must all use this domain.
                    rggb = sqrt(max(vec4(0.0), rggb));
                    int index = (y + 1) * 3 + x + 1;
                    if (uCfaPattern == 2 || uCfaPattern == 3) {
                        green0[index] = rggb.z;
                        green1[index] = rggb.y;
                    } else {
                        green0[index] = rggb.y;
                        green1[index] = rggb.z;
                    }
                    vec3 rgb = vec3(rggb.x, 0.5 * (rggb.y + rggb.z), rggb.w);
                    averageRgb += rgb * weight1d(x) * weight1d(y);
                    rgbSum += rgb;
                    rgbSquareSum += rgb * rgb;
                    greenSum += rggb.y + rggb.z;
                    greenSquareSum += rggb.y * rggb.y + rggb.z * rggb.z;
                    if (x == 0 && y == 0) centerGreen = rgb.y;
                }
            }
            vec3 rgbMean = rgbSum / 9.0;
            vec3 rgbVariance = max(vec3(0.0), rgbSquareSum / 9.0 - rgbMean * rgbMean);
            float greenMean = greenSum / 18.0;
            float greenVariance = max(
                0.0,
                greenSquareSum / 18.0 - greenMean * greenMean
            );
            float averageLuma = dot(averageRgb, vec3(0.25, 0.5, 0.25));
            vec2 noiseUv = vec2(averageLuma, 1.0) * uNoiseTextureScaleBias.xy +
                uNoiseTextureScaleBias.zw;
            float greenNoise = 2.0 * texture(uNoiseEstimates, noiseUv).y;

            vec3 referenceColor;
            float referenceVariance;
            if (greenVariance > 3.0 * greenNoise && uForceReferenceColorRgb.x == 0.0) {
                referenceColor = vec3(averageRgb.x, centerGreen, averageRgb.z);
                referenceVariance = -max(rgbVariance.y, greenVariance);
            } else {
                referenceColor = averageRgb;
                referenceVariance = dot(rgbVariance, vec3(1.0 / 3.0));
            }
            if (centerGreen >= uGreenClippingPoint) referenceColor = vec3(10000.0);
            oGuide = vec4(referenceColor, referenceVariance * 1024.0);

            vec3 covariance = constructCovariance(
                structureTensor(green0, green1),
                greenVariance,
                greenNoise
            );
            vec2 packedRg = clamp(
                covariance.xy * uCovRangeRgFactors.yw + uCovRangeRgFactors.xz,
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
        uniform ivec2 uRejectionSize;
        uniform vec4 uFrameBorderPadded;
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

        vec2 mirrorUvs(vec2 sampleUv) {
            if (sampleUv.x <= uFrameBorderPadded.x) {
                sampleUv.x = 2.0 * uFrameBorderPadded.x - sampleUv.x;
            }
            if (sampleUv.y <= uFrameBorderPadded.y) {
                sampleUv.y = 2.0 * uFrameBorderPadded.y - sampleUv.y;
            }
            if (sampleUv.x > uFrameBorderPadded.z) {
                sampleUv.x = 2.0 * uFrameBorderPadded.z - sampleUv.x;
            }
            if (sampleUv.y > uFrameBorderPadded.w) {
                sampleUv.y = 2.0 * uFrameBorderPadded.w - sampleUv.y;
            }
            return sampleUv;
        }

        vec4 sampleBiquadraticAbsolute(sampler2D image, vec2 uv) {
            vec2 fractionalOffset = fract(uv * vec2(uGuideSize));
            vec2 c = fractionalOffset * fractionalOffset - fractionalOffset + 0.5;
            vec2 reciprocalSize = 1.0 / vec2(uGuideSize);
            vec2 w0 = uv - c * reciprocalSize;
            vec2 w1 = uv + c * reciprocalSize;
            return 0.25 * (
                abs(texture(image, vec2(w0.x, w0.y))) +
                abs(texture(image, vec2(w0.x, w1.y))) +
                abs(texture(image, vec2(w1.x, w1.y))) +
                abs(texture(image, vec2(w1.x, w0.y)))
            );
        }

        void main() {
            vec2 referenceUv = gl_FragCoord.xy / vec2(uRejectionSize);
            vec2 flowUv = referenceUv * uFlowScaleOffset.xy + uFlowScaleOffset.zw;
            vec4 flow = texture(uFlow, flowUv);
            vec2 warpedUv = mirrorUvs(referenceUv + flow.xy);
            float unblocker = texture(uUnblocker, referenceUv * uUnblockerScale).r;
            float localFlowVariation = flow.z;
            if (localFlowVariation < uUnblockerReductionThreshold) {
                unblocker = 0.0;
            }
            bool motionPrior =
                localFlowVariation > uExtraMotionRobustnessMotionThreshold;

            vec4 reference = texture(uBaseGuide, referenceUv);
            bool greenOnly = reference.w < 0.0;
            reference.w = abs(reference.w) / 1024.0;
            vec4 current = sampleBiquadraticAbsolute(uAltGuide, warpedUv);
            current.w /= 1024.0;
            float referenceLuma = greenOnly
                ? reference.y
                : dot(reference.rgb, vec3(1.0 / 3.0));
            vec2 referenceNoiseUv =
                vec2(referenceLuma, 0.0) * uNoiseTextureScaleBias.xy +
                uNoiseTextureScaleBias.zw;
            vec2 currentNoiseUv =
                vec2(referenceLuma, 1.0) * uNoiseTextureScaleBias.xy +
                uNoiseTextureScaleBias.zw;
            vec3 referenceNoise = texture(uNoiseEstimates, referenceNoiseUv).xyz;
            vec3 currentNoise = texture(uNoiseEstimates, currentNoiseUv).xyz;
            float filterVarianceScale = greenOnly ? 0.25 : 0.0976597;
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

    val merge = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uExtractedBayer;
        uniform sampler2D uFlow;
        uniform sampler2D uCovariance;
        uniform sampler2D uRejection;
        uniform ivec2 uExtractedSize;
        uniform ivec2 uOutputSize;
        uniform vec4 uFrameBorderPadded;
        uniform int uCfaPattern;
        uniform int uUseFrameWeight;
        uniform vec4 uGains;
        uniform vec4 uBlackLevelsTimesGains;
        uniform vec4 uCovRangeRg;
        uniform vec2 uCovRangeB;
        layout(location = 0) out vec4 oColorAndRWeight;
        layout(location = 1) out vec2 oWeightsGb;

        vec2 mirrorUvs(vec2 sampleUv) {
            if (sampleUv.x <= uFrameBorderPadded.x) {
                sampleUv.x = 2.0 * uFrameBorderPadded.x - sampleUv.x;
            }
            if (sampleUv.y <= uFrameBorderPadded.y) {
                sampleUv.y = 2.0 * uFrameBorderPadded.y - sampleUv.y;
            }
            if (sampleUv.x > uFrameBorderPadded.z) {
                sampleUv.x = 2.0 * uFrameBorderPadded.z - sampleUv.x;
            }
            if (sampleUv.y > uFrameBorderPadded.w) {
                sampleUv.y = 2.0 * uFrameBorderPadded.w - sampleUv.y;
            }
            return sampleUv;
        }

        float kernelWeight(vec2 pixelOffset, vec3 covariance) {
            float kernelDistance =
                pixelOffset.x * pixelOffset.x * covariance.x +
                pixelOffset.y * pixelOffset.y * covariance.y +
                pixelOffset.x * pixelOffset.y * covariance.z * 2.0;
            return exp2(-0.5 * kernelDistance) + 0.00005;
        }

        vec3 unpackCovariance(vec3 packed) {
            return vec3(
                packed.x * uCovRangeRg.y + uCovRangeRg.x,
                packed.y * uCovRangeRg.w + uCovRangeRg.z,
                packed.z * uCovRangeB.y + uCovRangeB.x
            );
        }

        mat3 get3x3FromExtractedBayer(ivec2 bayerPosition) {
            mat3 values = mat3(0.0);
            int type = (bayerPosition.y % 2) * 2 + (bayerPosition.x % 2);
            vec2 texturePosition = vec2(bayerPosition / 2);
            if (type == 0) texturePosition += vec2(-1.0, -1.0);
            else if (type == 1) texturePosition += vec2(0.0, -1.0);
            else if (type == 2) texturePosition += vec2(-1.0, 0.0);
            texturePosition += vec2(0.5);
            vec2 reciprocalSize = 1.0 / vec2(uExtractedSize);
            vec4 bayer0 = texture(uExtractedBayer, texturePosition * reciprocalSize);
            vec4 bayer1 = texture(
                uExtractedBayer,
                (texturePosition + vec2(1.0, 0.0)) * reciprocalSize
            );
            vec4 bayer2 = texture(
                uExtractedBayer,
                (texturePosition + vec2(0.0, 1.0)) * reciprocalSize
            );
            vec4 bayer3 = texture(
                uExtractedBayer,
                (texturePosition + vec2(1.0, 1.0)) * reciprocalSize
            );
            if (type == 0) {
                values[0][0] = bayer0.w; values[1][0] = bayer1.z; values[2][0] = bayer1.w;
                values[0][1] = bayer2.y; values[1][1] = bayer3.x; values[2][1] = bayer3.y;
                values[0][2] = bayer2.w; values[1][2] = bayer3.z; values[2][2] = bayer3.w;
            } else if (type == 1) {
                values[0][0] = bayer0.z; values[1][0] = bayer0.w; values[2][0] = bayer1.z;
                values[0][1] = bayer2.x; values[1][1] = bayer2.y; values[2][1] = bayer3.x;
                values[0][2] = bayer2.z; values[1][2] = bayer2.w; values[2][2] = bayer3.z;
            } else if (type == 2) {
                values[0][0] = bayer0.y; values[1][0] = bayer1.x; values[2][0] = bayer1.y;
                values[0][1] = bayer0.w; values[1][1] = bayer1.z; values[2][1] = bayer1.w;
                values[0][2] = bayer2.y; values[1][2] = bayer3.x; values[2][2] = bayer3.y;
            } else {
                values[0][0] = bayer0.x; values[1][0] = bayer0.y; values[2][0] = bayer1.x;
                values[0][1] = bayer0.z; values[1][1] = bayer0.w; values[2][1] = bayer1.z;
                values[0][2] = bayer2.x; values[1][2] = bayer2.y; values[2][2] = bayer3.x;
            }
            return values;
        }

        vec4 swizzleForType(vec4 value, int type) {
            if (type == 0) return value.rgba;
            if (type == 1) return value.grab;
            if (type == 2) return value.barg;
            return value.abgr;
        }

        void sampleNeighborhoodRbf(
            vec2 sampleUv,
            vec3 covariance,
            out vec3 accumulatedIntensities,
            out vec3 accumulatedWeights
        ) {
            accumulatedIntensities = vec3(0.0);
            accumulatedWeights = vec3(0.0);
            vec2 coordinateScaled = sampleUv * (vec2(uExtractedSize) * 2.0);
            ivec2 position = ivec2(coordinateScaled);
            mat3 bayerValue = get3x3FromExtractedBayer(position);
            mat3 weights = mat3(0.0);
            vec2 subpixelOffset = floor(coordinateScaled) + 0.5 - coordinateScaled;
            for (int i = -1; i <= 1; ++i) {
                for (int j = -1; j <= 1; ++j) {
                    weights[i + 1][j + 1] = kernelWeight(
                        subpixelOffset + vec2(ivec2(i, j)),
                        covariance
                    );
                }
            }
            ivec2 bayerOffset = ivec2(0);
            if (uCfaPattern == 0) bayerOffset = ivec2(1, 1);
            else if (uCfaPattern == 1) bayerOffset = ivec2(0, 1);
            else if (uCfaPattern == 2) bayerOffset = ivec2(1, 0);
            int type = (((position.y + bayerOffset.y) & 1) << 1) +
                ((position.x + bayerOffset.x) & 1);
            vec4 cornerWeights = vec4(
                weights[0][0], weights[0][2], weights[2][0], weights[2][2]
            );
            vec2 upDownWeights = vec2(weights[1][0], weights[1][2]);
            vec2 leftRightWeights = vec2(weights[0][1], weights[2][1]);
            vec4 value1 = vec4(
                bayerValue[0][0], bayerValue[0][2], bayerValue[2][0], bayerValue[2][2]
            );
            vec2 value2 = vec2(bayerValue[1][0], bayerValue[1][2]);
            vec2 value3 = vec2(bayerValue[0][1], bayerValue[2][1]);
            vec4 reorderedGains = swizzleForType(uGains, type);
            vec4 reorderedBlack = swizzleForType(uBlackLevelsTimesGains, type);
            vec4 intensities = vec4(
                dot(value1 * reorderedGains.r + reorderedBlack.r, cornerWeights),
                dot(value2 * reorderedGains.g + reorderedBlack.g, upDownWeights),
                dot(value3 * reorderedGains.b + reorderedBlack.b, leftRightWeights),
                (bayerValue[1][1] * reorderedGains.a + reorderedBlack.a) * weights[1][1]
            );
            vec4 reorderedWeights = vec4(
                dot(cornerWeights, vec4(1.0)),
                dot(upDownWeights, vec2(1.0)),
                dot(leftRightWeights, vec2(1.0)),
                weights[1][1]
            );
            intensities = swizzleForType(intensities, type);
            reorderedWeights = swizzleForType(reorderedWeights, type);
            accumulatedIntensities = vec3(
                intensities.r,
                intensities.g + intensities.b,
                intensities.a
            );
            accumulatedWeights = vec3(
                reorderedWeights.r,
                reorderedWeights.g + reorderedWeights.b,
                reorderedWeights.a
            );
        }

        void main() {
            vec2 referenceUv = gl_FragCoord.xy / vec2(uOutputSize);
            vec4 flow = texture(uFlow, referenceUv);
            vec2 sampleUv = mirrorUvs(referenceUv + flow.xy);
            vec3 covariance = unpackCovariance(texture(uCovariance, sampleUv).xyz);
            vec3 accumulatedColor = vec3(0.0);
            vec3 accumulatedWeight = vec3(0.0);
            sampleNeighborhoodRbf(
                sampleUv,
                covariance,
                accumulatedColor,
                accumulatedWeight
            );
            float frameWeight = uUseFrameWeight != 0
                ? texture(uRejection, referenceUv).r
                : 1.0;
            accumulatedColor *= frameWeight;
            accumulatedWeight *= frameWeight;
            oColorAndRWeight = vec4(accumulatedColor, accumulatedWeight.r);
            oWeightsGb = accumulatedWeight.gb;
        }
    """.trimIndent()

    val copyMask = """
        #version 300 es
        precision highp float;
        uniform sampler2D uRejection;
        uniform float uAccumulatedWeightScale;
        layout(location = 0) out float oAccumulatedWeight;
        void main() {
            vec2 uv = gl_FragCoord.xy / vec2(textureSize(uRejection, 0));
            oAccumulatedWeight = texture(uRejection, uv).r / uAccumulatedWeightScale;
        }
    """.trimIndent()

    val copyAlpha = """
        #version 300 es
        precision highp float;
        uniform sampler2D uSource;
        layout(location = 0) out float oWeight;
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            oWeight = texelFetch(uSource, p, 0).a;
        }
    """.trimIndent()

    /**
     * Matches SabreProcessor::GetMergedNoiseModel's average-merge-factor input. The original
     * accumulator is Q8, so quantize the GLES floating-point accumulator before taking 256/w.
     * Four-by-four reduction keeps the readback small without changing the global average.
     */
    val reciprocalGreenWeight4x4 = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uAccumulatedWeightsGb;
        uniform ivec2 uInputSize;
        layout(location = 0) out vec2 oReciprocalSumAndCount;
        void main() {
            ivec2 base = ivec2(gl_FragCoord.xy) * 4;
            float reciprocalSum = 0.0;
            float sampleCount = 0.0;
            for (int y = 0; y < 4; ++y) {
                for (int x = 0; x < 4; ++x) {
                    ivec2 p = base + ivec2(x, y);
                    if (p.x >= uInputSize.x || p.y >= uInputSize.y) {
                        continue;
                    }
                    float weight = texelFetch(uAccumulatedWeightsGb, p, 0).r;
                    float weightQ8 = max(floor(weight * 256.0 + 0.5), 1.0);
                    reciprocalSum += 256.0 / weightQ8;
                    sampleCount += 1.0;
                }
            }
            oReciprocalSumAndCount = vec2(reciprocalSum, sampleCount);
        }
    """.trimIndent()

    val dehomogenize = """
        #version 300 es
        precision highp float;
        uniform sampler2D uSourceWeightR;
        uniform sampler2D uSourceWeightGb;
        uniform sampler2D uSourceAlpha;
        uniform float uAlphaScale;
        uniform float uAlphaBias;
        layout(location = 0) out vec4 oColor;
        void main() {
            vec2 uv = gl_FragCoord.xy / vec2(textureSize(uSourceWeightR, 0));
            vec3 weights = vec3(
                texture(uSourceWeightR, uv).r,
                texture(uSourceWeightGb, uv).rg
            );
            float targetAlpha = texture(uSourceAlpha, uv).r * uAlphaScale + uAlphaBias;
            oColor = vec4(vec3(1.0) / max(weights, vec3(1.0e-7)), targetAlpha);
        }
    """.trimIndent()

    private val outputTransformBody = """
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uResolvedR;
        uniform highp usampler2D uResolvedG;
        uniform highp usampler2D uResolvedB;
        uniform sampler2D uLensShading;
        uniform ivec2 uOutputSize;
        uniform int uUseLensShading;
        uniform vec3 uFinalBlackLevel;
        uniform float uDemosaicWhiteLevel;
        uniform float uOutputExposureScale;

        vec3 transformOutput(ivec2 p) {
            uvec3 encoded = uvec3(
                texelFetch(uResolvedR, p, 0).r,
                texelFetch(uResolvedG, p, 0).r,
                texelFetch(uResolvedB, p, 0).r
            );
            // ResolveSabre emits camera RGB in its RAW14 domain and deliberately retains the
            // per-channel final black level. Convert that native result to the black-free,
            // normalized camera domain expected by Photon's linear-RGB pipeline.
            vec3 resolved = max(vec3(encoded) - uFinalBlackLevel, vec3(0.0)) /
                max(vec3(uDemosaicWhiteLevel) - uFinalBlackLevel, vec3(1.0));
            if (uUseLensShading != 0) {
                vec2 uv = (vec2(p) + vec2(0.5)) / vec2(uOutputSize);
                vec4 shading = texture(uLensShading, uv);
                resolved *= vec3(shading.r, 0.5 * (shading.g + shading.b), shading.a);
            }
            return max(
                resolved * uOutputExposureScale,
                vec3(0.0)
            );
        }
    """.trimIndent()

    val outputTransformUint16 = """
        #version 300 es
        $outputTransformBody
        layout(location = 0) out highp uvec4 oResolved;
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            vec3 resolved = clamp(transformOutput(p), 0.0, 1.0);
            oResolved = uvec4(uvec3(round(resolved * 65535.0)), 65535u);
        }
    """.trimIndent()

    val outputTransformFloat = """
        #version 300 es
        $outputTransformBody
        layout(location = 0) out vec4 oResolved;
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            oResolved = vec4(transformOutput(p), 1.0);
        }
    """.trimIndent()
}
