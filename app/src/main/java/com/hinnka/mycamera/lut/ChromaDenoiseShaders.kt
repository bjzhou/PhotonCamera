package com.hinnka.mycamera.lut

/**
 * Shared multi-scale edge-guided chroma denoise shader.
 *
 * RAW input is filtered in normalized camera RGB opponent space before white
 * balance and color conversion. Bitmap input retains its luma/chroma transform.
 * Above half strength, a prefiltered green/luma guide is relaxed independently
 * of the chroma bandwidth so dense color noise can regain spatial support.
 */
object ChromaDenoiseShaders {
    val PASS_EDGE_GUIDE = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform int uCameraRgbInput;

        float guideSignal(vec3 rgb) {
            if (uCameraRgbInput != 0) {
                return rgb.g;
            }
            return dot(rgb, vec3(0.2126, 0.7152, 0.0722));
        }

        float guideAt(vec2 coord) {
            return guideSignal(texture(uInputTexture, coord).rgb);
        }

        void main() {
            float guide = guideAt(vTexCoord) * 0.5;
            guide += guideAt(vTexCoord + vec2( uTexelSize.x, 0.0)) * 0.125;
            guide += guideAt(vTexCoord + vec2(-uTexelSize.x, 0.0)) * 0.125;
            guide += guideAt(vTexCoord + vec2(0.0,  uTexelSize.y)) * 0.125;
            guide += guideAt(vTexCoord + vec2(0.0, -uTexelSize.y)) * 0.125;
            fragColor = vec4(guide, 0.0, 0.0, 1.0);
        }
    """.trimIndent()

    val PASS_CHROMA_DENOISE = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform sampler2D uGuideTexture;
        uniform vec2 uTexelSize;
        uniform float uH;
        uniform float uOutputStrength;
        uniform float uEdgeGuidanceRelaxation;
        uniform int uCameraRgbInput;
        // [red slope, red offset, blue slope, blue offset].
        uniform vec4 uNoiseModelRB;

        vec3 rgb2ycbcr(vec3 rgb) {
            float y = dot(rgb, vec3(0.2126, 0.7152, 0.0722));
            return vec3(y,
                        dot(rgb, vec3(-0.114572, -0.385428,  0.5     )),
                        dot(rgb, vec3( 0.5,      -0.454153, -0.045847)));
        }
        vec3 ycbcr2rgb(vec3 yuv) {
            return vec3(yuv.x + 1.5748   * yuv.z,
                        yuv.x - 0.187324 * yuv.y - 0.468124 * yuv.z,
                        yuv.x + 1.8556   * yuv.y);
        }

        vec2 redBlueNoiseSigma(vec3 rgb) {
            float redVariance =
                uNoiseModelRB.x * max(rgb.r, 0.0) + uNoiseModelRB.y;
            float blueVariance =
                uNoiseModelRB.z * max(rgb.b, 0.0) + uNoiseModelRB.w;
            return sqrt(max(vec2(redVariance, blueVariance), vec2(1e-10)));
        }

        float cameraChromaScale(vec3 rgb) {
            // Above the noise floor this is ordinary green-normalized opponent
            // color. In deep shadows the R/B model supplies a stable denominator
            // so chroma ratios cannot explode as green approaches zero.
            vec2 rbSigma = redBlueNoiseSigma(rgb);
            float noiseFloor = 4.0 * max(rbSigma.x, rbSigma.y);
            return max(max(rgb.g, 0.0), max(noiseFloor, 1e-4));
        }

        vec3 rgbToFilterSpace(vec3 rgb) {
            if (uCameraRgbInput != 0) {
                float scale = cameraChromaScale(rgb);
                return vec3(
                    rgb.g,
                    (rgb.r - rgb.g) / scale,
                    (rgb.b - rgb.g) / scale
                );
            }
            return rgb2ycbcr(rgb);
        }

        vec3 filterSpaceToRgb(vec3 value, vec3 referenceRgb) {
            if (uCameraRgbInput != 0) {
                float green = value.x;
                float scale = cameraChromaScale(referenceRgb);
                return max(
                    vec3(
                        green + value.y * scale,
                        green,
                        green + value.z * scale
                    ),
                    vec3(0.0)
                );
            }
            return ycbcr2rgb(value);
        }

        vec2 chromaNoiseSigma(vec3 rgb) {
            vec2 rbSigma = redBlueNoiseSigma(rgb);
            if (uCameraRgbInput != 0) {
                // Normalized opponent order is (R-G)/scale, (B-G)/scale.
                return rbSigma / cameraChromaScale(rgb);
            }
            // Bitmap filter-space order is Cb, Cr.
            return rbSigma.yx;
        }

        float guideNoiseSigma(vec3 rgb) {
            // The guide remains in linear green/luma units, so its range bandwidth
            // must use the unnormalized R/B sigma rather than opponent-space sigma.
            vec2 rbSigma = redBlueNoiseSigma(rgb);
            return max(rbSigma.x, rbSigma.y);
        }

        void filterScale(
            float radius,
            float centerGuide,
            vec2 baseChroma,
            vec2 chromaGuide,
            float invGuideH2,
            vec2 invChromaH2,
            out vec2 filteredChroma,
            out float edgeSupport
        ) {
            // The center estimate anchors each wider scale and prevents a sparse
            // coarse neighborhood from replacing a small valid color feature.
            vec2 sumChroma = baseChroma;
            float sumWeight = 1.0;
            float acceptedLumaSupport = 0.0;
            float totalSupport = 0.0;

            for (int x = -1; x <= 1; x++) {
                for (int y = -1; y <= 1; y++) {
                    if (x == 0 && y == 0) continue;

                    vec2 gridOffset = vec2(float(x), float(y));
                    float distance2 = dot(gridOffset, gridOffset);
                    float spatialWeight = exp(-0.72 * distance2);
                    vec2 offset = gridOffset * uTexelSize * radius;
                    vec2 sampleCoord = vTexCoord + offset;
                    vec3 sampleValue = rgbToFilterSpace(
                        texture(uInputTexture, sampleCoord).rgb
                    );

                    float guideDelta =
                        texture(uGuideTexture, sampleCoord).r - centerGuide;
                    float guideWeight =
                        exp(-(guideDelta * guideDelta) * invGuideH2);
                    vec2 chromaDelta = sampleValue.yz - chromaGuide;
                    float chromaWeight = exp(-dot(chromaDelta * chromaDelta, invChromaH2));
                    float weight = spatialWeight * guideWeight * chromaWeight;

                    sumChroma += sampleValue.yz * weight;
                    sumWeight += weight;
                    acceptedLumaSupport += spatialWeight * guideWeight;
                    totalSupport += spatialWeight;
                }
            }

            filteredChroma = sumChroma / max(sumWeight, 1e-6);
            // The guide is always active. Above half strength its bandwidth grows,
            // admitting weak/noisy pseudo-edges while real strong edges still
            // receive exponential rejection.
            edgeSupport = acceptedLumaSupport / max(totalSupport, 1e-6);
        }

        float featheredEdgeSupport(float support, float exponent) {
            return pow(clamp(support, 0.0, 1.0), exponent);
        }

        void main() {
            vec4 source = texture(uInputTexture, vTexCoord);
            if (uH <= 0.00001) {
                fragColor = source;
                return;
            }

            vec3 centerValue = rgbToFilterSpace(source.rgb);
            vec2 noiseSigma = chromaNoiseSigma(source.rgb);
            vec2 localH = max(uH * noiseSigma, vec2(1e-5));
            float shadowFactor =
                1.0 - smoothstep(0.03, 0.35, max(centerValue.x, 0.0));

            float centerGuide = texture(uGuideTexture, vTexCoord).r;
            float guideBandwidthScale =
                mix(1.0, 4.0, uEdgeGuidanceRelaxation);
            float guideH =
                guideNoiseSigma(source.rgb) * 4.0 * guideBandwidthScale;
            float invGuideH2 = 1.0 / max(guideH * guideH, 1e-8);

            vec2 fineCandidate;
            float fineSupport;
            // Radius one directly covers the one-to-two-pixel sensor grain that
            // was skipped by the previous sparse fine scale.
            vec2 fineH = localH * 4.0;
            filterScale(
                1.0,
                centerGuide,
                centerValue.yz,
                centerValue.yz,
                invGuideH2,
                1.0 / max(fineH * fineH, vec2(1e-8)),
                fineCandidate,
                fineSupport
            );
            vec2 fineChroma =
                mix(centerValue.yz, fineCandidate, uOutputStrength);

            vec2 mediumCandidate;
            float mediumSupport;
            vec2 mediumH = localH * 1.8;
            filterScale(
                4.0,
                centerGuide,
                fineChroma,
                fineChroma,
                invGuideH2,
                1.0 / max(mediumH * mediumH, vec2(1e-8)),
                mediumCandidate,
                mediumSupport
            );
            float mediumMix =
                uOutputStrength * featheredEdgeSupport(mediumSupport, 1.5);
            vec2 mediumChroma = mix(fineChroma, mediumCandidate, mediumMix);

            vec2 coarseCandidate;
            float coarseSupport;
            vec2 coarseH = localH * 2.1;
            filterScale(
                14.0,
                centerGuide,
                mediumChroma,
                mediumChroma,
                invGuideH2,
                1.0 / max(coarseH * coarseH, vec2(1e-8)),
                coarseCandidate,
                coarseSupport
            );
            float coarseMix =
                uOutputStrength * featheredEdgeSupport(coarseSupport, 2.0);
            vec2 coarseChroma = mix(mediumChroma, coarseCandidate, coarseMix);

            // Low-frequency chroma clouds need samples well outside the grain
            // neighborhood. The radius and bandwidth expand only in shadows;
            // guide support rejects cross-structure fusion while it is active,
            // while the chroma bandwidth remains wide enough to treat a cast as noise.
            vec2 cloudCandidate;
            float cloudSupport;
            vec2 cloudH = localH * mix(2.5, 3.5, shadowFactor);
            float cloudRadius = 56.0 * mix(1.0, 1.25, shadowFactor);
            filterScale(
                cloudRadius,
                centerGuide,
                coarseChroma,
                coarseChroma,
                invGuideH2,
                1.0 / max(cloudH * cloudH, vec2(1e-8)),
                cloudCandidate,
                cloudSupport
            );
            float cloudMix =
                uOutputStrength * featheredEdgeSupport(cloudSupport, 1.5);

            centerValue.yz = mix(coarseChroma, cloudCandidate, cloudMix);
            fragColor = vec4(filterSpaceToRgb(centerValue, source.rgb), source.a);
        }
    """.trimIndent()
}
