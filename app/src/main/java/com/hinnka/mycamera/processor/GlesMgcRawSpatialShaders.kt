package com.hinnka.mycamera.processor

/**
 * GLES stages for the MGC-compatible Spatial RAW pipeline.
 *
 * The guide, rejection, dilation and merge equations below retain the embedded GLSL equations and
 * constants. The original program first extracts RAW16 into a half-resolution Bayer texture.
 * Photon reads R16UI directly; the RGB branch reconstructs jointly from native CFA observations.
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
        uniform float uForceReferenceColorRgb;
        out vec4 oGuide;

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
            float centerGreen = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    vec4 rggb = rawQuad(center * 2 + ivec2(x, y));
                    vec3 rgb = vec3(rggb.x, 0.5 * (rggb.y + rggb.z), rggb.w);
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
            oGuide = vec4(referenceColor, referenceVariance * 1024.0);
        }
    """.trimIndent()

    /**
     * Structure-adaptive Spatial RGB precision matrix recovered with MergeRgbRaw.
     *
     * MGC originally emitted this beside the guide. It is kept as an independent draw here so the
     * corrected Bayer guide/rejection transport remains byte-for-byte isolated from RGB output.
     */
    val covariance = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uRaw;
        uniform sampler2D uNoiseEstimates;
        uniform ivec2 uRawSize;
        uniform int uCfaPattern;
        uniform vec4 uGains;
        uniform vec4 uBlackLevelsTimesGains;
        uniform vec4 uNoiseTextureScaleBias;
        uniform vec4 uCovarianceParameters1;
        uniform vec4 uCovarianceParameters2;
        uniform vec4 uCovRangeRgFactors;
        uniform vec2 uCovRangeBFactor;
        out vec4 oCovariance;

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
            float singularValue1 = sqrt(max(eigenvalue1, 0.0));
            float singularValue2 = sqrt(max(eigenvalue2, 0.0));
            float correction = tensor.w * greenNoise;
            eigenvalue1 *= eigenvalue1 / max(eigenvalue1 + correction, 1.0e-8);
            float strength = sqrt(max(eigenvalue1, 0.0));
            float coherence = (singularValue1 - singularValue2) /
                (singularValue1 + singularValue2 + 1.0e-6);
            float correctedGreenStdDev = sqrt(
                greenVariance * greenVariance / max(greenVariance + greenNoise, 1.0e-8)
            );
            float dominantFeature = max(strength, correctedGreenStdDev) -
                uCovarianceParameters1.z;
            float blur = clamp(
                1.0 - dominantFeature * uCovarianceParameters2.y,
                0.0,
                1.0
            );
            float anisotropicShrinking = mix(
                uCovarianceParameters1.w,
                uCovarianceParameters1.x,
                min(coherence, strength * 5.0)
            );
            float precision1 = mix(
                anisotropicShrinking,
                uCovarianceParameters2.x,
                blur
            );
            float precision2 = mix(
                mix(uCovarianceParameters1.w, uCovarianceParameters1.y, coherence),
                uCovarianceParameters2.x,
                blur
            );
            mat2 rotation = mat2(eigenvector1, eigenvector2);
            mat2 covariance = transpose(rotation) * mat2(
                precision1 * precision1, 0.0,
                0.0, precision2 * precision2
            ) * rotation;
            return vec3(covariance[0].x, covariance[1].y, covariance[0].y);
        }

        void main() {
            ivec2 center = ivec2(gl_FragCoord.xy);
            float green0[9];
            float green1[9];
            float greenSum = 0.0;
            float greenSquareSum = 0.0;
            vec3 averageRgb = vec3(0.0);
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    vec4 rggb = rawQuad(center * 2 + ivec2(x, y));
                    int index = (y + 1) * 3 + x + 1;
                    if (uCfaPattern == 2 || uCfaPattern == 3) {
                        green0[index] = rggb.z;
                        green1[index] = rggb.y;
                    } else {
                        green0[index] = rggb.y;
                        green1[index] = rggb.z;
                    }
                    float wx = x == 0 ? 0.5 : 0.25;
                    float wy = y == 0 ? 0.5 : 0.25;
                    averageRgb += vec3(rggb.x, 0.5 * (rggb.y + rggb.z), rggb.w) * wx * wy;
                    greenSum += rggb.y + rggb.z;
                    greenSquareSum += rggb.y * rggb.y + rggb.z * rggb.z;
                }
            }
            float greenMean = greenSum / 18.0;
            float greenVariance = max(0.0, greenSquareSum / 18.0 - greenMean * greenMean);
            float averageLuma = dot(averageRgb, vec3(0.25, 0.5, 0.25));
            vec2 noiseUv = vec2(averageLuma, 1.0) * uNoiseTextureScaleBias.xy +
                uNoiseTextureScaleBias.zw;
            float greenNoise = 2.0 * texture(uNoiseEstimates, noiseUv).y;
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

        vec4 sampleBiquadraticAbsolute(sampler2D image, vec2 uv) {
            vec2 texelSize = 1.0 / vec2(uGuideSize);
            vec2 fractionalOffset = fract(uv * vec2(uGuideSize));
            vec2 c = fractionalOffset * fractionalOffset -
                fractionalOffset + 0.5;
            vec2 w0 = uv - c * texelSize;
            vec2 w1 = uv + c * texelSize;
            vec4 samples =
                abs(texture(image, vec2(w0.x, w0.y))) +
                abs(texture(image, vec2(w0.x, w1.y))) +
                abs(texture(image, vec2(w1.x, w1.y))) +
                abs(texture(image, vec2(w1.x, w0.y)));
            samples.w /= 1024.0;
            return samples * 0.25;
        }

        void main() {
            // GenerateRejectionTexture runs once per Bayer quad (RAW/2). The guide is
            // independently decimated to RAW/4 and is sampled in normalized coordinates.
            vec2 uv = gl_FragCoord.xy / vec2(uRejectionSize);
            vec2 flowUv = uv * uFlowScaleOffset.xy + uFlowScaleOffset.zw;
            vec4 flow = texture(uFlow, flowUv);
            vec2 warpedUv = mirrorUv(uv + flow.xy);
            float unblocker = texture(uUnblocker, uv * uUnblockerScale).r;
            if (flow.z < uUnblockerReductionThreshold) unblocker = 0.0;
            bool motionPrior = flow.z > uExtraMotionRobustnessMotionThreshold;
            vec4 reference = texture(uBaseGuide, uv);
            bool greenOnly = reference.w < 0.0;
            reference.w = abs(reference.w) / 1024.0;
            vec4 current = sampleBiquadraticAbsolute(uAltGuide, warpedUv);
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
            // Noise estimates are transported through RGBA16F and can quantize to zero at the
            // dark end. Keep the recovered equations defined without changing any positive
            // estimate.
            vec3 combinedNoise = max(
                referenceNoise + currentNoise,
                vec3(1.0e-8)
            );
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

    /**
     * ClippedGaussianBlurHalide (0x387cd28), recovered from the AOT workers and verified against
     * the original function with constant, impulse, step and asymmetric synthetic inputs.
     *
     * filtered_a_x = min(input, GaussianX(input))
     * output = min(filtered_a_x, GaussianY(filtered_a_x))
     *
     * MGC keeps the horizontal intermediate in Float32 and quantizes only the final result to U8.
     */
    val clippedGaussianHorizontal = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uInput;
        uniform ivec2 uSize;
        uniform float uKernel[20];
        out float oFiltered;
        float valueAt(ivec2 p) {
            return texelFetch(
                uInput,
                clamp(p, ivec2(0), uSize - ivec2(1)),
                0
            ).r;
        }
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            float filtered = 0.0;
            for (int tap = 0; tap < 20; ++tap) {
                filtered += uKernel[tap] *
                    valueAt(p + ivec2(tap - 9, 0));
            }
            oFiltered = min(valueAt(p), filtered);
        }
    """.trimIndent()

    val clippedGaussianVertical = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uInput;
        uniform ivec2 uSize;
        uniform float uKernel[20];
        out float oFiltered;
        float valueAt(ivec2 p) {
            return texelFetch(
                uInput,
                clamp(p, ivec2(0), uSize - ivec2(1)),
                0
            ).r;
        }
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            float filtered = 0.0;
            for (int tap = 0; tap < 20; ++tap) {
                filtered += uKernel[tap] *
                    valueAt(p + ivec2(0, tap - 9));
            }
            oFiltered = round(
                255.0 * clamp(min(valueAt(p), filtered), 0.0, 1.0)
            ) / 255.0;
        }
    """.trimIndent()

    /**
     * Read4xDownSample and the input preparation for
     * Downsample4xAndFilterRejectionMap from the embedded rejection.cl.
     */
    val rejectionFilterDownsample = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uBaseLuma;
        uniform sampler2D uRejection;
        uniform ivec2 uInputSize;
        layout(location = 0) out float oLuma;
        layout(location = 1) out float oRejection;

        float lumaLinearAt(vec2 coordinate) {
            vec2 shifted = coordinate - vec2(0.5);
            ivec2 p0 = ivec2(floor(shifted));
            vec2 fraction = fract(shifted);
            ivec2 maximum = uInputSize - ivec2(1);
            float v00 = float(texelFetch(
                uBaseLuma, clamp(p0, ivec2(0), maximum), 0
            ).r);
            float v10 = float(texelFetch(
                uBaseLuma, clamp(p0 + ivec2(1, 0), ivec2(0), maximum), 0
            ).r);
            float v01 = float(texelFetch(
                uBaseLuma, clamp(p0 + ivec2(0, 1), ivec2(0), maximum), 0
            ).r);
            float v11 = float(texelFetch(
                uBaseLuma, clamp(p0 + ivec2(1), ivec2(0), maximum), 0
            ).r);
            return mix(
                mix(v00, v10, fraction.x),
                mix(v01, v11, fraction.x),
                fraction.y
            );
        }

        float rejectionLinearAt(vec2 coordinate) {
            return texture(
                uRejection,
                coordinate / vec2(uInputSize)
            ).r;
        }

        void main() {
            vec2 center = 4.0 * floor(gl_FragCoord.xy) + vec2(2.0);
            center = clamp(
                center,
                vec2(2.0),
                vec2(uInputSize) - vec2(2.0)
            );
            float luma = 0.0;
            float rejection = 0.0;
            for (int y = -1; y <= 1; y += 2) {
                for (int x = -1; x <= 1; x += 2) {
                    vec2 coordinate = center + vec2(x, y);
                    luma += lumaLinearAt(coordinate);
                    rejection += rejectionLinearAt(coordinate);
                }
            }
            // The source reads CL_SNORM_INT16 and multiplies by 32767 / 16383.
            oLuma = 0.25 * luma / 16383.0;
            oRejection = 0.25 * rejection;
        }
    """.trimIndent()

    /**
     * Downsample4xAndFilterRejectionMap from the embedded rejection.cl. The input textures contain
     * the exact Read4xDownSample results, so the 7x7 loop is algebraically identical to the fused
     * OpenCL kernel while avoiding repeated 4x4 source reads.
     */
    val rejectionFilter = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uLuma;
        uniform sampler2D uRejection;
        uniform ivec2 uSize;
        uniform int uRadius;
        uniform float uSigmaSpatial;
        uniform float uColorSigma;
        uniform float uColorSigmaBoost;
        uniform int uClipRejection;
        out float oFilteredRejection;

        float bilateralWeight(float residual, float sigma) {
            float widthSquared = sigma * sigma * 5.0;
            float squaredDistance = residual * residual;
            float distance = 1.0 - squaredDistance / widthSquared;
            return squaredDistance <= widthSquared
                ? distance * distance
                : 0.0;
        }

        float spatialWeight(float radius) {
            return exp(
                -(radius * radius) /
                    (2.0 * uSigmaSpatial * uSigmaSpatial)
            );
        }

        float valueAt(sampler2D image, ivec2 p) {
            return texelFetch(
                image,
                clamp(p, ivec2(0), uSize - ivec2(1)),
                0
            ).r;
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            float centerLuma = valueAt(uLuma, p);
            float centerRejection = valueAt(uRejection, p);
            int spatialRadius = min(uRadius, 3 * int(uSigmaSpatial));
            float weightedRejection = 0.0;
            float weightSum = 0.0;
            for (int dy = -3; dy <= 3; ++dy) {
                if (abs(dy) > spatialRadius) continue;
                float spatialWeightY = spatialWeight(float(dy));
                for (int dx = -3; dx <= 3; ++dx) {
                    if (abs(dx) > spatialRadius) continue;
                    ivec2 q = p + ivec2(dx, dy);
                    float deltaLuma = valueAt(uLuma, q);
                    float deltaRejection = valueAt(uRejection, q);
                    float sigma = centerRejection <
                            deltaRejection - 1.0 / 255.0
                        ? uColorSigma
                        : uColorSigma * (
                            uClipRejection != 0 ? uColorSigmaBoost : 1.0
                        );
                    float weight = bilateralWeight(
                        abs(deltaLuma - centerLuma),
                        sigma
                    );
                    weight *= spatialWeight(float(dx)) * spatialWeightY;
                    float value = uClipRejection != 0
                        ? min(deltaRejection, centerRejection)
                        : deltaRejection;
                    weightedRejection += weight * value;
                    weightSum += weight;
                }
            }
            oFilteredRejection = weightSum > 0.0
                ? weightedRejection / weightSum
                : centerRejection;
        }
    """.trimIndent()

    /**
     * Upsample4xAndPostProcess from the embedded rejection.cl. A separate output texture avoids
     * undefined framebuffer feedback while preserving the source equation.
     */
    val rejectionPostprocess = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uOriginalRejection;
        uniform sampler2D uFilteredRejection;
        uniform sampler2D uPixelDifference;
        uniform ivec2 uSize;
        uniform float uPixelDifferenceThreshold;
        uniform float uClippedThreshold;
        out float oRejection;
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            float original = texelFetch(uOriginalRejection, p, 0).r;
            float pixelDifference = texelFetch(uPixelDifference, p, 0).r;
            vec2 uv = (vec2(p) + vec2(0.5)) / vec2(uSize);
            float filtered = texture(uFilteredRejection, uv).r;
            float postprocessed = filtered;
            if (filtered > original) {
                float weight = pixelDifference < uPixelDifferenceThreshold
                    ? 0.0
                    : pixelDifference;
                postprocessed =
                    original + weight * (filtered - original);
            }
            if (uClippedThreshold > 0.0 &&
                original <= uClippedThreshold &&
                pixelDifference <= uPixelDifferenceThreshold) {
                postprocessed = original;
            }
            oRejection = postprocessed;
        }
    """.trimIndent()

    val dilateRejection = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uRejection;
        uniform ivec2 uInputSize;
        out float oWeight;
        float rejectionAt(vec2 p) {
            return texture(uRejection, p / vec2(uInputSize)).r;
        }
        void main() {
            // Exact DilateMask mapping from the full Bayer-quad rejection domain to
            // MergeBayer's half-sized rejection texture. The nine bilinear reads and
            // coefficients are the factored form of a 5x5 box sum.
            vec2 texCoord =
                2.0 * floor(gl_FragCoord.xy - vec2(0.5)) + vec2(1.5);
            float rejection =
                4.0 * rejectionAt(texCoord + vec2(-1.5, -1.5)) +
                4.0 * rejectionAt(texCoord + vec2( 0.5, -1.5)) +
                2.0 * rejectionAt(texCoord + vec2( 2.0, -1.5)) +
                4.0 * rejectionAt(texCoord + vec2(-1.5,  0.5)) +
                4.0 * rejectionAt(texCoord + vec2( 0.5,  0.5)) +
                2.0 * rejectionAt(texCoord + vec2( 2.0,  0.5)) +
                2.0 * rejectionAt(texCoord + vec2(-1.5,  2.0)) +
                2.0 * rejectionAt(texCoord + vec2( 0.5,  2.0)) +
                      rejectionAt(texCoord + vec2( 2.0,  2.0));
            rejection = (rejection - 0.2) * 0.5;
            oWeight = 1.0 - rejection;
        }
    """.trimIndent()

    /**
     * Bento UpdateLinearKernelMaskHalide. MGC invokes this once on the rejection-buffer slice
     * selected by the accepted ultrashort index. It is not a temporal union of normal-frame
     * rejection maps.
     */
    val updateLinearKernelMask = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uRejection;
        uniform ivec2 uSize;
        out float oLinearKernelMask;
        float rejectionAt(ivec2 p) {
            return texelFetch(
                uRejection,
                clamp(p, ivec2(0), uSize - ivec2(1)),
                0
            ).r;
        }
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            float localMinimum = 1.0;
            float localMaximum = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    float rejection = rejectionAt(p + ivec2(x, y));
                    localMinimum = min(localMinimum, rejection);
                    localMaximum = max(localMaximum, rejection);
                }
            }
            // UpdateLinearKernelMaskHalide emits a strict binary mask: any non-uniform
            // 3x3 rejection neighbourhood selects the linear kernel, independently of
            // the rejection-value amplitude.
            oLinearKernelMask = localMaximum != localMinimum ? 1.0 : 0.0;
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

    /**
     * RAW-domain joint demosaic and super-resolution merge.
     *
     * No per-frame RGB image exists. Every output location gathers native CFA observations in the
     * continuously warped sensor domain. Native greens form the high-resolution edge lattice;
     * native red/blue sites contribute R-G/B-G observations against an edge-directed local green.
     * This couples all output channels to one SR edge geometry instead of reproducing the historical
     * independent-RGB support that produced purple/green fringes on high-contrast edges.
     */
    val mergeRgb = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uRawRegion;
        uniform sampler2D uAlignment;
        uniform sampler2D uFrameWeight;
        uniform sampler2D uCovariance;
        uniform ivec2 uRawSize;
        uniform ivec2 uRawRegionOrigin;
        uniform ivec2 uRawRegionSize;
        uniform ivec2 uOutputSize;
        uniform ivec2 uOutputOrigin;
        uniform vec4 uCovRangeRg;
        uniform vec2 uCovRangeB;
        uniform vec4 uGains;
        uniform vec4 uBlackLevelsTimesGains;
        uniform vec2 uGreenNoise;
        uniform float uChromaEdgeNoiseSigmas;
        uniform float uChromaEdgeSigmaFloor;
        uniform float uInterpolationFlowTolerance;
        uniform int uCfaPattern;
        uniform int uUseFrameWeight;
        layout(location = 0) out vec4 oColorAndRWeight;
        layout(location = 1) out vec4 oGbWeights;

        int canonicalChannel(ivec2 p) {
            int phase = ((p.y & 1) << 1) + (p.x & 1);
            if (uCfaPattern == 0) return phase;
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

        int clampRawCoordinateToPhase(int coordinate, int extent) {
            int phase = coordinate & 1;
            if (phase >= extent) return extent - 1;
            int last = phase + 2 * ((extent - 1 - phase) / 2);
            return clamp(coordinate, phase, last);
        }

        ivec2 clampRawPixelToPhase(ivec2 p) {
            return ivec2(
                clampRawCoordinateToPhase(p.x, uRawSize.x),
                clampRawCoordinateToPhase(p.y, uRawSize.y)
            );
        }

        float gainedRaw(ivec2 globalPixel) {
            int channel = canonicalChannel(globalPixel);
            globalPixel = clampRawPixelToPhase(globalPixel);
            ivec2 local = clamp(
                globalPixel - uRawRegionOrigin,
                ivec2(0),
                uRawRegionSize - ivec2(1)
            );
            return float(texelFetch(uRawRegion, local, 0).r) * uGains[channel] +
                uBlackLevelsTimesGains[channel];
        }

        float greenAtNonGreen(ivec2 p, float center) {
            float gL = gainedRaw(p + ivec2(-1, 0));
            float gR = gainedRaw(p + ivec2(1, 0));
            float gU = gainedRaw(p + ivec2(0, -1));
            float gD = gainedRaw(p + ivec2(0, 1));
            float cL2 = gainedRaw(p + ivec2(-2, 0));
            float cR2 = gainedRaw(p + ivec2(2, 0));
            float cU2 = gainedRaw(p + ivec2(0, -2));
            float cD2 = gainedRaw(p + ivec2(0, 2));
            float horizontalLinear = 0.5 * (gL + gR);
            float verticalLinear = 0.5 * (gU + gD);
            float horizontalCorrection = clamp(
                0.25 * (2.0 * center - cL2 - cR2),
                -0.5 * abs(gL - gR),
                0.5 * abs(gL - gR)
            );
            float verticalCorrection = clamp(
                0.25 * (2.0 * center - cU2 - cD2),
                -0.5 * abs(gU - gD),
                0.5 * abs(gU - gD)
            );
            float horizontal = horizontalLinear + horizontalCorrection;
            float vertical = verticalLinear + verticalCorrection;
            float gradientH = abs(gL - gR) + abs(2.0 * center - cL2 - cR2);
            float gradientV = abs(gU - gD) + abs(2.0 * center - cU2 - cD2);
            float blendH = gradientV / max(gradientH + gradientV, 1.0e-7);
            float green = mix(vertical, horizontal, blendH);
            float nativeMinimum = min(min(gL, gR), min(gU, gD));
            float nativeMaximum = max(max(gL, gR), max(gU, gD));
            return clamp(green, nativeMinimum, nativeMaximum);
        }

        vec2 alignmentAt(ivec2 tile) {
            ivec2 size = max(textureSize(uAlignment, 0), ivec2(1));
            return texelFetch(uAlignment, clamp(tile, ivec2(0), size - ivec2(1)), 0).xy;
        }

        vec2 interpolatedAlignment(vec2 quadPosition) {
            ivec2 tile = ivec2(floor(quadPosition / 8.0));
            vec2 baseFlow = alignmentAt(tile);
            if (uInterpolationFlowTolerance <= 0.0) return baseFlow;
            vec2 offsetWithinTile = quadPosition - vec2(tile * 8);
            bool leftHalf = offsetWithinTile.x <= 4.0;
            bool topHalf = offsetWithinTile.y <= 4.0;
            int tx0 = leftHalf ? tile.x - 1 : tile.x;
            int ty0 = topHalf ? tile.y - 1 : tile.y;
            ivec2 tile00 = ivec2(tx0, ty0);
            vec2 flow00 = alignmentAt(tile00);
            vec2 flow10 = alignmentAt(tile00 + ivec2(1, 0));
            vec2 flow01 = alignmentAt(tile00 + ivec2(0, 1));
            vec2 flow11 = alignmentAt(tile00 + ivec2(1, 1));
            float threshold = 8.0 * uInterpolationFlowTolerance;
            bool cancelInterpolation =
                any(greaterThanEqual(abs(flow00 - baseFlow), vec2(threshold))) ||
                any(greaterThanEqual(abs(flow10 - baseFlow), vec2(threshold))) ||
                any(greaterThanEqual(abs(flow01 - baseFlow), vec2(threshold))) ||
                any(greaterThanEqual(abs(flow11 - baseFlow), vec2(threshold)));
            if (cancelInterpolation) return baseFlow;
            float ux = quadPosition.x / 8.0 - (float(tx0) + 0.5);
            float uy = quadPosition.y / 8.0 - (float(ty0) + 0.5);
            return mix(mix(flow00, flow10, ux), mix(flow01, flow11, ux), uy);
        }

        vec2 mirrorUv(vec2 uv) {
            uv = mod(uv, 2.0);
            return mix(uv, 2.0 - uv, greaterThan(uv, vec2(1.0)));
        }

        float kernelWeight(vec2 pixelOffset, vec3 covariance) {
            float distance = pixelOffset.x * pixelOffset.x * covariance.x +
                pixelOffset.y * pixelOffset.y * covariance.y +
                2.0 * pixelOffset.x * pixelOffset.y * covariance.z;
            return exp2(-0.5 * max(distance, 0.0)) + 0.00005;
        }

        float chromaGuideWeight(float sampleGreen, float targetGreen) {
            float signal = max(max(sampleGreen, targetGreen), 0.0);
            float variance = max(uGreenNoise.x * signal + uGreenNoise.y, 0.0);
            float sigma = max(
                uChromaEdgeNoiseSigmas * sqrt(variance),
                uChromaEdgeSigmaFloor
            );
            float normalizedDifference = (sampleGreen - targetGreen) / sigma;
            return exp(-0.5 * normalizedDifference * normalizedDifference);
        }

        void main() {
            ivec2 localOutput = ivec2(gl_FragCoord.xy);
            ivec2 outputPixel = localOutput + uOutputOrigin;
            vec2 referenceRaw = (vec2(outputPixel) + vec2(0.5)) *
                vec2(uRawSize) / vec2(uOutputSize) - vec2(0.5);
            vec2 sourceRaw = referenceRaw + 2.0 * interpolatedAlignment(referenceRaw * 0.5);
            vec2 sourceUv = mirrorUv((sourceRaw + vec2(0.5)) / vec2(uRawSize));
            vec3 packedCovariance = texture(uCovariance, sourceUv).xyz;
            vec3 covariance = vec3(
                packedCovariance.xy * uCovRangeRg.yw + uCovRangeRg.xz,
                packedCovariance.z * uCovRangeB.y + uCovRangeB.x
            );
            vec2 samplePosition = sourceRaw + vec2(0.5);
            ivec2 anchor = ivec2(floor(samplePosition));
            vec2 subpixelOffset = vec2(anchor) + vec2(0.5) - samplePosition;
            float greenSum = 0.0;
            float greenWeight = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    ivec2 p = anchor + ivec2(x, y);
                    int channel = canonicalChannel(p);
                    if (channel != 1 && channel != 2) continue;
                    float spatialWeight = kernelWeight(
                        subpixelOffset + vec2(x, y),
                        covariance
                    );
                    greenSum += gainedRaw(p) * spatialWeight;
                    greenWeight += spatialWeight;
                }
            }
            float targetGreen = greenSum / max(greenWeight, 1.0e-8);
            vec3 semanticSums = vec3(greenSum, 0.0, 0.0);
            vec3 weights = vec3(greenWeight, 0.0, 0.0);
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    ivec2 p = anchor + ivec2(x, y);
                    int channel = canonicalChannel(p);
                    if (channel == 1 || channel == 2) continue;
                    float spatialWeight = kernelWeight(
                        subpixelOffset + vec2(x, y),
                        covariance
                    );
                    float nativeValue = gainedRaw(p);
                    float localGreen = greenAtNonGreen(p, nativeValue);
                    float jointWeight = spatialWeight *
                        chromaGuideWeight(localGreen, targetGreen);
                    int opponent = channel == 0 ? 1 : 2;
                    semanticSums[opponent] += (nativeValue - localGreen) * jointWeight;
                    weights[opponent] += jointWeight;
                }
            }
            vec2 weightUv = (referenceRaw + vec2(0.5)) / vec2(uRawSize);
            float frameWeight = uUseFrameWeight != 0 ?
                texture(uFrameWeight, clamp(weightUv, vec2(0.0), vec2(1.0))).r : 1.0;
            frameWeight = clamp(frameWeight, 0.0, 1.0);
            oColorAndRWeight = vec4(semanticSums * frameWeight, weights.r * frameWeight);
            oGbWeights = vec4(weights.gb * frameWeight, 0.0, 0.0);
        }
    """.trimIndent()

    val normalizeRgb16 = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uColorAndRWeight;
        uniform sampler2D uGbWeights;
        uniform sampler2D uLensShading;
        uniform ivec2 uAccumulatorSize;
        uniform ivec2 uTargetOrigin;
        uniform ivec2 uOutputOrigin;
        uniform ivec2 uOutputSize;
        uniform vec3 uCameraDomainScale;
        uniform int uUseLensShading;
        layout(location = 0) out highp uvec4 oRgb16;

        void main() {
            ivec2 local = ivec2(gl_FragCoord.xy) - uTargetOrigin;
            if (any(lessThan(local, ivec2(0))) || any(greaterThanEqual(local, uAccumulatorSize))) {
                oRgb16 = uvec4(0u, 0u, 0u, 65535u);
                return;
            }
            vec4 colorAndR = texelFetch(uColorAndRWeight, local, 0);
            vec2 gbWeights = texelFetch(uGbWeights, local, 0).rg;
            vec3 semantic = colorAndR.rgb / max(
                vec3(colorAndR.a, gbWeights.x, gbWeights.y),
                vec3(1.0e-8)
            );
            vec3 rgb = vec3(
                semantic.r + semantic.g,
                semantic.r,
                semantic.r + semantic.b
            );
            ivec2 outputPixel = local + uOutputOrigin;
            if (uUseLensShading != 0) {
                vec2 uv = (vec2(outputPixel) + vec2(0.5)) / vec2(uOutputSize);
                vec4 shading = texture(uLensShading, clamp(uv, vec2(0.0), vec2(1.0)));
                rgb *= vec3(shading.r, 0.5 * (shading.g + shading.b), shading.a);
            }
            rgb = max(rgb * uCameraDomainScale, vec3(0.0));
            oRgb16 = uvec4(
                uvec3(round(clamp(rgb, vec3(0.0), vec3(1.0)) * 65535.0)),
                65535u
            );
        }
    """.trimIndent()

    /**
     * MergeBayerRaw transport recovered from the Halide AOT contract.
     *
     * Alignment and the spatial kernel operate on Bayer quads, and every output sample is
     * reconstructed only from the same CFA phase in neighboring quads.
     */
    val mergeBayer = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uRaw;
        uniform sampler2D uAlignment;
        uniform sampler2D uFrameWeight;
        uniform sampler2D uLinearKernelMask;
        uniform ivec2 uRawSize;
        uniform vec4 uGains;
        uniform vec4 uBlackLevelsTimesGains;
        uniform float uKernelSigma;
        uniform float uInterpolationFlowTolerance;
        uniform int uCfaPattern;
        uniform int uUseFrameWeight;
        out vec4 oBayerAndWeight;

        int phaseIndex(ivec2 phase) {
            return (phase.y << 1) + phase.x;
        }

        int mirrorCoordinate(int coordinate, int extent) {
            if (extent <= 1) return 0;
            if (coordinate < 0) coordinate = -coordinate - 1;
            if (coordinate >= extent) coordinate = 2 * extent - coordinate - 1;
            return clamp(coordinate, 0, extent - 1);
        }

        ivec2 mirrorQuad(ivec2 quad, ivec2 extent) {
            return ivec2(
                mirrorCoordinate(quad.x, extent.x),
                mirrorCoordinate(quad.y, extent.y)
            );
        }

        float kernelWeight(vec2 pixelOffset, float kernelSigmaSquared) {
            return exp(
                -0.5 * dot(pixelOffset * pixelOffset, vec2(kernelSigmaSquared))
            );
        }

        float linearKernelWeight(vec2 pixelOffset) {
            return max(1.0 - length(pixelOffset) * 0.4, 0.0);
        }

        vec4 alignmentAt(ivec2 tile, ivec2 alignmentSize) {
            return texelFetch(
                uAlignment,
                clamp(tile, ivec2(0), alignmentSize - ivec2(1)),
                0
            );
        }

        /**
         * Exact GLES translation of MGC's interpolate_flow.cl/GetInterpolatedFlow.
         *
         * Flow samples live at 8x8 Bayer-quad tile centres. Interpolation is cancelled for
         * the whole pixel when any of the four candidates differs from the current tile by
         * at least the configured per-axis threshold, so motion boundaries stay discontinuous.
         */
        vec4 interpolatedAlignment(
            ivec2 tileId,
            ivec2 offsetWithinTile,
            ivec2 alignmentSize
        ) {
            vec4 baseFlow = alignmentAt(tileId, alignmentSize);
            if (uInterpolationFlowTolerance <= 0.0) {
                return baseFlow;
            }

            bool leftHalf = offsetWithinTile.x <= 4;
            bool topHalf = offsetWithinTile.y <= 4;
            int tx0 = leftHalf ? tileId.x - 1 : tileId.x;
            int ty0 = topHalf ? tileId.y - 1 : tileId.y;
            ivec2 tile00 = ivec2(tx0, ty0);
            ivec2 tile10 = tile00 + ivec2(1, 0);
            ivec2 tile01 = tile00 + ivec2(0, 1);
            ivec2 tile11 = tile00 + ivec2(1, 1);
            vec2 flow00 = alignmentAt(tile00, alignmentSize).xy;
            vec2 flow10 = alignmentAt(tile10, alignmentSize).xy;
            vec2 flow01 = alignmentAt(tile01, alignmentSize).xy;
            vec2 flow11 = alignmentAt(tile11, alignmentSize).xy;

            float threshold = 8.0 * uInterpolationFlowTolerance;
            bool cancelInterpolation =
                any(greaterThanEqual(abs(flow00 - baseFlow.xy), vec2(threshold))) ||
                any(greaterThanEqual(abs(flow10 - baseFlow.xy), vec2(threshold))) ||
                any(greaterThanEqual(abs(flow01 - baseFlow.xy), vec2(threshold))) ||
                any(greaterThanEqual(abs(flow11 - baseFlow.xy), vec2(threshold)));
            if (cancelInterpolation) {
                return baseFlow;
            }

            ivec2 pixelPosition = tileId * 8 + offsetWithinTile;
            float ux = float(pixelPosition.x) / 8.0 - (float(tx0) + 0.5);
            float uy = float(pixelPosition.y) / 8.0 - (float(ty0) + 0.5);
            vec2 flow = mix(
                mix(flow00, flow10, ux),
                mix(flow01, flow11, ux),
                uy
            );
            return vec4(flow, baseFlow.zw);
        }

        void main() {
            ivec2 outputPixel = ivec2(gl_FragCoord.xy);
            ivec2 phase = outputPixel & ivec2(1);
            int phaseChannel = phaseIndex(phase);
            ivec2 outputQuad = outputPixel / 2;
            // MergeBayerRaw16 addresses the converted alignment as one texel per
            // 8x8 Bayer-quad tile. X/Y are displacements in Bayer-quad units.
            // There is no normalized-UV conversion or filtering at this stage.
            ivec2 tileId = outputQuad / 8;
            ivec2 offsetWithinTile = outputQuad - tileId * 8;
            ivec2 alignmentSize = max(textureSize(uAlignment, 0), ivec2(1));
            vec2 alignmentQuadOffset = interpolatedAlignment(
                tileId,
                offsetWithinTile,
                alignmentSize
            ).xy;
            vec2 tilePosition =
                vec2(tileId * 8) + alignmentQuadOffset;
            ivec2 alignedTileQuad = ivec2(roundEven(tilePosition));
            vec2 subquadPixelOffset =
                2.0 * (vec2(alignedTileQuad) - tilePosition);
            ivec2 anchor = alignedTileQuad + offsetWithinTile;
            // MGC samples the quarter-resolution rejection image separately for all four
            // Bayer phases. In normalized GLES coordinates this is exactly the RAW-pixel
            // center, so adjacent phases retain their own linearly interpolated confidence
            // instead of sharing one nearest 4x4 RAW block.
            vec2 rawPixelUv =
                (vec2(outputPixel) + vec2(0.5)) / vec2(uRawSize);
            float frameWeight = uUseFrameWeight != 0
                ? texture(uFrameWeight, rawPixelUv).r
                : 1.0;
            // UpdateLinearKernelMask is sampled once at the center of each Bayer quad.
            vec2 quadCenterUv =
                (2.0 * vec2(outputQuad) + vec2(1.0)) / vec2(uRawSize);
            float linearKernelMix = texture(
                uLinearKernelMask,
                quadCenterUv
            ).r;
            ivec2 quadExtent = max(uRawSize / 2, ivec2(1));
            float kernelSigmaSquared = uKernelSigma * uKernelSigma;
            float intensity = 0.0;
            float accumulatedWeight = 0.0;
            for (int y = -1; y <= 1; ++y) {
                float sampleOffsetY =
                    subquadPixelOffset.y + 2.0 * float(y);
                if (abs(sampleOffsetY) > 2.5) continue;
                for (int x = -1; x <= 1; ++x) {
                    vec2 sampleOffset =
                        subquadPixelOffset + 2.0 * vec2(x, y);
                    ivec2 quad = mirrorQuad(
                        anchor + ivec2(x, y),
                        quadExtent
                    );
                    ivec2 rawPixel = quad * 2 + phase;
                    if (
                        abs(sampleOffset.x) <= 1.5 &&
                        abs(sampleOffset.y) <= 1.5
                    ) {
                        float rawValue = float(
                            texelFetch(uRaw, rawPixel, 0).r
                        );
                        float normalized =
                            rawValue * uGains[phaseChannel] +
                            uBlackLevelsTimesGains[phaseChannel];
                        float weight = mix(
                            kernelWeight(
                                sampleOffset,
                                kernelSigmaSquared
                            ),
                            linearKernelWeight(sampleOffset),
                            linearKernelMix
                        );
                        intensity += normalized * weight;
                        accumulatedWeight += weight;
                    }

                    bool diagonalGreenPair =
                        (uCfaPattern == 0 || uCfaPattern == 3) &&
                        (phaseChannel == 1 || phaseChannel == 2);
                    bool cornerGreenPair =
                        (uCfaPattern == 1 || uCfaPattern == 2) &&
                        (phaseChannel == 0 || phaseChannel == 3);
                    // SampleNeighborhoodDualKernel always merges the two green lattices.
                    // The linear-kernel mask only selects the kernel shape; it does not enable
                    // or disable this cross-phase green support.
                    if (
                        (diagonalGreenPair || cornerGreenPair)
                    ) {
                        int otherPhase = phaseChannel;
                        vec2 diagonalOffset = vec2(0.0);
                        if (diagonalGreenPair) {
                            if (phaseChannel == 1) {
                                otherPhase = 2;
                                diagonalOffset = vec2(-1.0, 1.0);
                            } else {
                                otherPhase = 1;
                                diagonalOffset = vec2(1.0, -1.0);
                            }
                        } else if (phaseChannel == 0) {
                            otherPhase = 3;
                            diagonalOffset = vec2(1.0);
                        } else {
                            otherPhase = 0;
                            diagonalOffset = vec2(-1.0);
                        }
                        vec2 otherPixelOffset =
                            sampleOffset + diagonalOffset;
                        if (
                            abs(otherPixelOffset.x) <= 1.5 &&
                            abs(otherPixelOffset.y) <= 1.5
                        ) {
                            ivec2 otherPhaseCoordinate = ivec2(
                                otherPhase & 1,
                                otherPhase >> 1
                            );
                            ivec2 otherRawPixel =
                                quad * 2 + otherPhaseCoordinate;
                            float otherRawValue = float(
                                texelFetch(uRaw, otherRawPixel, 0).r
                            );
                            float otherNormalized =
                                otherRawValue * uGains[otherPhase] +
                                uBlackLevelsTimesGains[otherPhase];
                            float otherWeight = mix(
                                kernelWeight(
                                    otherPixelOffset,
                                    kernelSigmaSquared
                                ),
                                linearKernelWeight(otherPixelOffset),
                                linearKernelMix
                            );
                            intensity += otherNormalized * otherWeight;
                            accumulatedWeight += otherWeight;
                        }
                    }
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
     * Packs the full-resolution normalized Bayer mosaic into MGC Fixed16.
     *
     * DownsampleRawF16ToFloatTileSize16 does not consume IEEE FP16. Its F16
     * input is signed Q14 and has Halide dimensions [quadX, quadY, phase].
     * The four phase planes are stacked vertically so the readback has the
     * same conventional planar strides requested by the Halide bounds query:
     *
     *   address = quadX + quadY * quadWidth
     *       + phase * quadWidth * quadHeight
     */
    val packBayerFixed16 = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uBayerAndWeight;
        uniform ivec2 uSourceSize;
        uniform ivec2 uQuadSize;
        layout(location = 0) out highp int oBayerFixed16;
        void main() {
            ivec2 packed = clamp(
                ivec2(gl_FragCoord.xy),
                ivec2(0),
                ivec2(uQuadSize.x - 1, uQuadSize.y * 4 - 1)
            );
            int phase = packed.y / uQuadSize.y;
            ivec2 quad = ivec2(packed.x, packed.y - phase * uQuadSize.y);
            ivec2 phaseOffset = ivec2(phase & 1, phase >> 1);
            ivec2 source = min(quad * 2 + phaseOffset, uSourceSize - ivec2(1));
            vec2 valueAndWeight = texelFetch(uBayerAndWeight, source, 0).rg;
            float normalized = max(
                valueAndWeight.x / max(valueAndWeight.y, 1.0e-8),
                0.0
            );
            oBayerFixed16 = int(round(clamp(normalized * 16384.0, 0.0, 32767.0)));
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
            // DownsampleRawToGrayHalide hands AlignPyramid an S16 buffer.
            oGray = uint(clamp(round(value), 0.0, 32767.0));
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
            oGray = uint(clamp(round(value), 0.0, 32767.0));
        }
    """.trimIndent()

    /**
     * GradientAndGradientProductsHalide (0x3ba9244). The generated kernel stores central
     * differences as saturated S16 and five per-tile Float32 products in this order:
     * xx, yy, xy, base*x and base*y.
     */
    val alignmentGradientProducts = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uReference;
        uniform ivec2 uImageSize;
        uniform int uTileStride;
        uniform int uTileSize;
        uniform int uNormalize;
        layout(location = 0) out vec4 oProducts0;
        layout(location = 1) out float oProducts1;

        float valueAt(ivec2 p) {
            return min(
                float(texelFetch(
                    uReference,
                    clamp(p, ivec2(0), uImageSize - ivec2(1)),
                    0
                ).r),
                32767.0
            );
        }
        vec2 gradientAt(ivec2 p) {
            return clamp(
                vec2(
                    valueAt(p + ivec2(1, 0)) - valueAt(p - ivec2(1, 0)),
                    valueAt(p + ivec2(0, 1)) - valueAt(p - ivec2(0, 1))
                ),
                vec2(-32768.0),
                vec2(32767.0)
            );
        }
        void main() {
            ivec2 tile = ivec2(gl_FragCoord.xy);
            // Halide's LK buffers have min=(1,1); the texture stores only that
            // interior extent, so local texel zero is logical tile (1,1).
            ivec2 origin = (tile + ivec2(1)) * uTileStride;
            float count = float(uTileSize * uTileSize);
            float meanBase = 0.0;
            if (uNormalize != 0) {
                for (int y = 0; y < 64; ++y) {
                    if (y >= uTileSize) break;
                    for (int x = 0; x < 64; ++x) {
                        if (x >= uTileSize) break;
                        meanBase += valueAt(origin + ivec2(x, y));
                    }
                }
                meanBase /= count;
            }

            float xx = 0.0;
            float yy = 0.0;
            float xy = 0.0;
            float baseX = 0.0;
            float baseY = 0.0;
            for (int y = 0; y < 64; ++y) {
                if (y >= uTileSize) break;
                for (int x = 0; x < 64; ++x) {
                    if (x >= uTileSize) break;
                    ivec2 p = origin + ivec2(x, y);
                    vec2 gradient = gradientAt(p);
                    float base = valueAt(p) - meanBase;
                    xx += gradient.x * gradient.x;
                    yy += gradient.y * gradient.y;
                    xy += gradient.x * gradient.y;
                    baseX += base * gradient.x;
                    baseY += base * gradient.y;
                }
            }
            float inverseCount = 1.0 / count;
            oProducts0 = vec4(
                0.25 * xx * inverseCount,
                0.25 * yy * inverseCount,
                0.25 * xy * inverseCount,
                0.5 * baseX * inverseCount
            );
            oProducts1 = 0.5 * baseY * inverseCount;
        }
    """.trimIndent()

    /**
     * UpsampleAlignmentI16Halide (0x3be8da0, three-candidate worker 0x3be8048).
     * Tile centers, rather than tile origins, determine the nearest coarse flow and
     * the next-nearest flow on each axis. The three whole candidates are evaluated
     * against the target-level S16 images, avoiding a synthesized motion vector
     * across an alignment discontinuity.
     */
    val upsampleAlignment = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uReference;
        uniform highp usampler2D uCurrent;
        uniform sampler2D uInitialAlignment;
        uniform ivec2 uImageSize;
        uniform ivec2 uInitialGridSize;
        uniform int uInitialGridMin;
        uniform int uTargetGridMin;
        uniform int uInitialTileStride;
        uniform int uTargetTileStride;
        uniform int uTargetTileSize;
        uniform float uInitialScale;
        out vec4 oAlignment;

        float valueAt(highp usampler2D image, ivec2 p) {
            return min(
                float(texelFetch(
                    image,
                    clamp(p, ivec2(0), uImageSize - ivec2(1)),
                    0
                ).r),
                32767.0
            );
        }
        ivec2 boundedInitialTile(ivec2 p) {
            return clamp(p, ivec2(0), uInitialGridSize - ivec2(1));
        }
        vec2 candidateFlow(ivec2 p) {
            return texelFetch(
                uInitialAlignment,
                boundedInitialTile(p),
                0
            ).xy * uInitialScale;
        }
        float candidateCost(ivec2 origin, vec2 flow) {
            // The AArch64 worker rounds each candidate to an integer S16-image
            // displacement for the block L1 comparison.
            ivec2 displacement = ivec2(roundEven(flow));
            float cost = 0.0;
            for (int y = 0; y < 64; ++y) {
                if (y >= uTargetTileSize) break;
                for (int x = 0; x < 64; ++x) {
                    if (x >= uTargetTileSize) break;
                    ivec2 p = origin + ivec2(x, y);
                    cost += abs(
                        valueAt(uReference, p) -
                        valueAt(uCurrent, p + displacement)
                    );
                }
            }
            return cost / float(uTargetTileSize * uTargetTileSize);
        }
        void main() {
            ivec2 targetTile = ivec2(gl_FragCoord.xy);
            ivec2 targetLogicalTile =
                targetTile + ivec2(uTargetGridMin);
            // Express the target tile center in the initial alignment grid. Using
            // the tile origin here changes the nearest coarse tile at a regular
            // half-grid cadence and produces block-shaped alignment discontinuities.
            vec2 targetCenter =
                (vec2(targetLogicalTile) + vec2(0.5)) *
                float(uTargetTileStride);
            vec2 initialGrid =
                targetCenter /
                (uInitialScale * float(uInitialTileStride)) -
                vec2(float(uInitialGridMin) + 0.5);

            vec2 nearestPosition = roundEven(initialGrid);
            ivec2 nearest = ivec2(nearestPosition);
            ivec2 nextX = nearest + ivec2(
                initialGrid.x < nearestPosition.x ? -1 : 1,
                0
            );
            ivec2 nextY = nearest + ivec2(
                0,
                initialGrid.y < nearestPosition.y ? -1 : 1
            );
            nearest = boundedInitialTile(nearest);
            nextX = boundedInitialTile(nextX);
            nextY = boundedInitialTile(nextY);

            ivec2 origin = targetLogicalTile * uTargetTileStride;
            vec2 bestFlow = candidateFlow(nearest);
            float bestCost = candidateCost(origin, bestFlow);
            float candidateIndex = 0.0;

            vec2 flowX = candidateFlow(nextX);
            float costX = candidateCost(origin, flowX);
            if (costX < bestCost) {
                bestFlow = flowX;
                bestCost = costX;
                candidateIndex = 1.0;
            }

            vec2 flowY = candidateFlow(nextY);
            float costY = candidateCost(origin, flowY);
            if (costY < bestCost) {
                bestFlow = flowY;
                bestCost = costY;
                candidateIndex = 2.0;
            }
            oAlignment = vec4(bestFlow, bestCost, candidateIndex);
        }
    """.trimIndent()

    /**
     * BlockLucasKanadeHalide (0x3b9be68, workers 0x3b9cb5c/0x3b9e72c). One draw is
     * one generated-kernel iteration. Its input has already been expanded onto this LK
     * grid by UpsampleAlignment. Bilinear weights below are the image-warp S16 Q15
     * conversion and saturating rounded shift used by the AArch64 worker.
     */
    val blockLucasKanade = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        uniform highp usampler2D uReference;
        uniform highp usampler2D uCurrent;
        uniform sampler2D uProducts0;
        uniform sampler2D uProducts1;
        uniform sampler2D uInitialAlignment;
        uniform ivec2 uImageSize;
        uniform ivec2 uGridSize;
        uniform int uTileStride;
        uniform int uTileSize;
        uniform int uNormalize;
        uniform int uHasInitialAlignment;
        out vec4 oAlignment;

        float referenceAt(ivec2 p) {
            return min(
                float(texelFetch(
                    uReference,
                    clamp(p, ivec2(0), uImageSize - ivec2(1)),
                    0
                ).r),
                32767.0
            );
        }
        vec2 gradientAt(ivec2 p) {
            return clamp(
                vec2(
                    referenceAt(p + ivec2(1, 0)) -
                        referenceAt(p - ivec2(1, 0)),
                    referenceAt(p + ivec2(0, 1)) -
                        referenceAt(p - ivec2(0, 1))
                ),
                vec2(-32768.0),
                vec2(32767.0)
            );
        }
        float currentAt(ivec2 p) {
            return min(
                float(texelFetch(
                    uCurrent,
                    clamp(p, ivec2(0), uImageSize - ivec2(1)),
                    0
                ).r),
                32767.0
            );
        }
        float q15Weight(float value) {
            return clamp(floor(value * 32768.0), 0.0, 32767.0);
        }
        float warpedCurrentAt(vec2 p) {
            vec2 bounded = clamp(
                p,
                vec2(0.0),
                vec2(uImageSize - ivec2(1))
            );
            ivec2 p0 = ivec2(floor(bounded));
            vec2 fraction = fract(bounded);
            float w00 = q15Weight((1.0 - fraction.x) * (1.0 - fraction.y));
            float w10 = q15Weight(fraction.x * (1.0 - fraction.y));
            float w01 = q15Weight((1.0 - fraction.x) * fraction.y);
            float w11 = q15Weight(fraction.x * fraction.y);
            float weighted =
                currentAt(p0) * w00 +
                currentAt(p0 + ivec2(1, 0)) * w10 +
                currentAt(p0 + ivec2(0, 1)) * w01 +
                currentAt(p0 + ivec2(1, 1)) * w11;
            return clamp(
                floor((weighted + 16384.0) / 32768.0),
                -32768.0,
                32767.0
            );
        }
        void main() {
            ivec2 tile = ivec2(gl_FragCoord.xy);
            vec2 flow = uHasInitialAlignment != 0
                ? texelFetch(
                    uInitialAlignment,
                    clamp(tile, ivec2(0), uGridSize - ivec2(1)),
                    0
                ).xy
                : vec2(0.0);
            ivec2 origin = (tile + ivec2(1)) * uTileStride;
            float count = float(uTileSize * uTileSize);
            float meanCurrent = 0.0;
            if (uNormalize != 0) {
                for (int y = 0; y < 64; ++y) {
                    if (y >= uTileSize) break;
                    for (int x = 0; x < 64; ++x) {
                        if (x >= uTileSize) break;
                        meanCurrent += warpedCurrentAt(
                            vec2(origin + ivec2(x, y)) + flow
                        );
                    }
                }
                meanCurrent /= count;
            }

            float targetX = 0.0;
            float targetY = 0.0;
            for (int y = 0; y < 64; ++y) {
                if (y >= uTileSize) break;
                for (int x = 0; x < 64; ++x) {
                    if (x >= uTileSize) break;
                    ivec2 p = origin + ivec2(x, y);
                    float current = warpedCurrentAt(vec2(p) + flow) - meanCurrent;
                    vec2 gradient = gradientAt(p);
                    targetX += current * gradient.x;
                    targetY += current * gradient.y;
                }
            }
            vec4 products0 = texelFetch(uProducts0, tile, 0);
            float products1 = texelFetch(uProducts1, tile, 0).r;
            float bx = 0.5 * targetX / count - products0.w;
            float by = 0.5 * targetY / count - products1;
            float inverseDeterminant = 1.0 / (
                1.0 +
                products0.x * products0.y -
                products0.z * products0.z
            );
            vec2 delta = inverseDeterminant * vec2(
                products0.z * by - products0.y * bx,
                products0.z * bx - products0.x * by
            );
            flow += clamp(delta, vec2(-1.0), vec2(1.0));
            oAlignment = vec4(flow, 0.0, 0.0);
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
     * ConvertAlignment (0x35cf3ec): evaluate the same edge-aware tile-centre interpolation as
     * MergeBayerRaw, convert it to normalized UV displacement, and store the pre-interpolation
     * local 3x3 range in B.
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
        uniform float uOutputToAlignmentScale;
        uniform float uGridMin;
        uniform float uInterpolationFlowTolerance;
        uniform vec2 uFlowNormalizationSize;
        out vec4 oFlow;
        vec2 flowAt(ivec2 p) {
            return texelFetch(
                uAlignment,
                clamp(p, ivec2(0), uGridSize - ivec2(1)),
                0
            ).xy * uAlignmentScale;
        }
        vec2 interpolatedFlow(
            ivec2 tile,
            ivec2 offsetWithinTile,
            vec2 baseFlow
        ) {
            if (uInterpolationFlowTolerance <= 0.0) {
                return baseFlow;
            }
            bool leftHalf =
                offsetWithinTile.x <= int(0.5 * uTileStride);
            bool topHalf =
                offsetWithinTile.y <= int(0.5 * uTileStride);
            int tx0 = leftHalf ? tile.x - 1 : tile.x;
            int ty0 = topHalf ? tile.y - 1 : tile.y;
            vec2 flow00 = flowAt(ivec2(tx0, ty0));
            vec2 flow10 = flowAt(ivec2(tx0 + 1, ty0));
            vec2 flow01 = flowAt(ivec2(tx0, ty0 + 1));
            vec2 flow11 = flowAt(ivec2(tx0 + 1, ty0 + 1));
            float threshold =
                uTileStride * uAlignmentScale *
                uInterpolationFlowTolerance;
            bool cancelInterpolation =
                any(greaterThanEqual(abs(flow00 - baseFlow), vec2(threshold))) ||
                any(greaterThanEqual(abs(flow10 - baseFlow), vec2(threshold))) ||
                any(greaterThanEqual(abs(flow01 - baseFlow), vec2(threshold))) ||
                any(greaterThanEqual(abs(flow11 - baseFlow), vec2(threshold)));
            if (cancelInterpolation) {
                return baseFlow;
            }
            vec2 logicalTile = vec2(tile) + vec2(uGridMin);
            vec2 pixelPosition =
                logicalTile * uTileStride + vec2(offsetWithinTile);
            float tx0Logical = float(tx0) + uGridMin;
            float ty0Logical = float(ty0) + uGridMin;
            float ux =
                pixelPosition.x / uTileStride -
                (tx0Logical + 0.5);
            float uy =
                pixelPosition.y / uTileStride -
                (ty0Logical + 0.5);
            return mix(
                mix(flow00, flow10, ux),
                mix(flow01, flow11, ux),
                uy
            );
        }
        void main() {
            vec2 pixel = gl_FragCoord.xy - vec2(0.5);
            vec2 alignmentPixel =
                pixel * uOutputToAlignmentScale;
            vec2 logicalGrid = alignmentPixel / uTileStride;
            vec2 grid = logicalGrid -
                vec2(uGridMin);
            ivec2 tile = ivec2(floor(grid));
            ivec2 offsetWithinTile = ivec2(floor(
                alignmentPixel -
                floor(logicalGrid) * uTileStride
            ));
            vec2 baseFlowPixels = flowAt(tile);
            vec2 flowPixels = interpolatedFlow(
                tile,
                offsetWithinTile,
                baseFlowPixels
            );
            vec2 minimumFlow = vec2(1.0e20);
            vec2 maximumFlow = vec2(-1.0e20);
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    vec2 v = flowAt(tile + ivec2(x, y));
                    minimumFlow = min(minimumFlow, v);
                    maximumFlow = max(maximumFlow, v);
                }
            }
            vec2 uvFlow = flowPixels / uFlowNormalizationSize;
            vec2 normalizedRange =
                (maximumFlow - minimumFlow) /
                max(uFlowNormalizationSize, vec2(1.0));
            // ConvertAlignmentHalide stores the Euclidean length of the normalized
            // min/max flow extent. X and Y use their own output dimensions.
            float localFlowVariation = length(normalizedRange);
            oFlow = vec4(uvFlow, localFlowVariation, 0.0);
        }
    """.trimIndent()

    /**
     * Transport from the internal LK grid to MergeBayerRaw16's alignment contract.
     *
     * Runtime buffer inspection gives a 255x192 Float32x3 alignment and a 255x192
     * Float16x4 ConvertAlignment output for a 4080x3064 RAW. X/Y remain Bayer-quad
     * displacements; they are not normalized UV coordinates. MergeBayer consumes one
     * alignment texel per 8x8 Bayer-quad tile with nearest integer addressing.
     */
    val convertBayerAlignment = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uAlignment;
        uniform ivec2 uGridSize;
        uniform float uAlignmentToBayerQuads;
        out vec4 oAlignment;

        void main() {
            ivec2 outputTile = ivec2(gl_FragCoord.xy);
            vec2 flowInBayerQuads = texelFetch(
                uAlignment,
                clamp(outputTile, ivec2(0), uGridSize - ivec2(1)),
                0
            ).xy * uAlignmentToBayerQuads;
            oAlignment = vec4(flowInBayerQuads, 0.0, 0.0);
        }
    """.trimIndent()

    val strengthAlignment = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform sampler2D uFlow;
        uniform ivec2 uOutputSize;
        out vec4 oAlignment;
        void main() {
            vec2 uv = gl_FragCoord.xy / vec2(uOutputSize);
            oAlignment = vec4(texture(uFlow, uv).xy, 0.0, 0.0);
        }
    """.trimIndent()

    /**
     * UnblockerRaw10Halide (0x35dd50c), operating on unpacked native RAW values.
     *
     * The original receives fullres_tile_size=8, scale=1 and offset=0.45. Each output cell
     * therefore covers an 8x8 Bayer-quad / 16x16 full-resolution region. The 128/9 variance
     * factor, four-noise subtraction, sqrt, offset/scale mapping and byte-domain truncation are
     * retained.
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
        uniform float uOutputScale;
        uniform float uOutputOffset;
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
            ivec2 origin = tile * 8;
            float preSum = 0.0;
            float preSquareSum = 0.0;
            float postSum = 0.0;
            float postSquareSum = 0.0;
            for (int y = 0; y < 8; ++y) {
                for (int x = 0; x < 8; ++x) {
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
            float preCount = 128.0;
            float postCount = 64.0;
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
            float mapped = uOutputScale * (
                sqrt(max(ratio, 0.0)) - uOutputOffset
            );
            // The AOT converts with fcvtzs before storing U8. Quantize explicitly so the
            // normalized GL_R8 conversion cannot round a boundary upward.
            oUnblocker = floor(clamp(mapped, 0.0, 1.0) * 255.0) / 255.0;
        }
    """.trimIndent()

}
