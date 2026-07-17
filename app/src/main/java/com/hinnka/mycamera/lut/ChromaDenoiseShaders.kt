package com.hinnka.mycamera.lut

/**
 * Shared multi-scale edge-guided chroma denoise shader.
 *
 * RAW input is filtered in linear camera RGB opponent space before white
 * balance and color conversion. Bitmap input retains its luma/chroma transform.
 * Both paths use a prefiltered luminance guide. RAW luminance is the symmetric
 * camera-RGB mean; bitmap luminance retains its display-space coefficients.
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
                return (rgb.r + rgb.g + rgb.b) / 3.0;
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
        // Camera-domain variance models. RB order is
        // [red slope, red offset, blue slope, blue offset].
        uniform vec4 uNoiseModelRB;
        // [green slope, green offset].
        uniform vec2 uNoiseModelG;

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

        vec3 channelNoiseVariance(vec3 rgb) {
            return max(
                vec3(
                    uNoiseModelRB.x * max(rgb.r, 0.0) + uNoiseModelRB.y,
                    uNoiseModelG.x * max(rgb.g, 0.0) + uNoiseModelG.y,
                    uNoiseModelRB.z * max(rgb.b, 0.0) + uNoiseModelRB.w
                ),
                vec3(1e-10)
            );
        }

        vec3 rgbToFilterSpace(vec3 rgb) {
            if (uCameraRgbInput != 0) {
                // Keep every sample in one linear camera-RGB coordinate system.
                // Exposure invariance is restored after each weighted mean, not
                // by averaging unstable per-pixel ratios in the shadows.
                return vec3(
                    (rgb.r + rgb.g + rgb.b) / 3.0,
                    rgb.r - rgb.g,
                    rgb.b - rgb.g
                );
            }
            return rgb2ycbcr(rgb);
        }

        vec3 filterSpaceToRgb(vec3 value) {
            if (uCameraRgbInput != 0) {
                // value.x is the symmetric camera-RGB mean, not green. Recover
                // the three channels from mean, R-G and B-G without giving any
                // channel a privileged luminance role.
                float green = value.x - (value.y + value.z) / 3.0;
                return max(
                    vec3(
                        green + value.y,
                        green,
                        green + value.z
                    ),
                    vec3(0.0)
                );
            }
            return ycbcr2rgb(value);
        }

        vec2 chromaNoiseSigma(vec3 rgb) {
            vec3 variance = channelNoiseVariance(rgb);
            if (uCameraRgbInput != 0) {
                // Var(R-G) = Var(R) + Var(G), likewise for B-G.
                return sqrt(max(variance.rb + variance.gg, vec2(1e-10)));
            }
            const vec3 cb = vec3(-0.114572, -0.385428, 0.5);
            const vec3 cr = vec3(0.5, -0.454153, -0.045847);
            return sqrt(max(
                vec2(dot(cb * cb, variance), dot(cr * cr, variance)),
                vec2(1e-10)
            ));
        }

        float guideNoiseSigma(vec3 rgb) {
            vec3 variance = channelNoiseVariance(rgb);
            if (uCameraRgbInput != 0) {
                return sqrt(max((variance.r + variance.g + variance.b) / 9.0, 1e-10));
            }
            const vec3 luma = vec3(0.2126, 0.7152, 0.0722);
            return sqrt(max(dot(luma * luma, variance), 1e-10));
        }

        void filterScale(
            float radius,
            float centerGuide,
            float centerSignal,
            vec2 baseChroma,
            vec2 chromaGuide,
            float chromaGuidance,
            float invGuideH2,
            vec2 invChromaH2,
            out vec2 filteredChroma,
            out float edgeSupport
        ) {
            // The center estimate anchors each wider scale and prevents a sparse
            // coarse neighborhood from replacing a small valid color feature.
            vec2 sumChroma = baseChroma;
            float sumSignal = centerSignal;
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
                    float chromaDistance =
                        dot(chromaDelta * chromaDelta, invChromaH2);
                    // A noisy center chroma must not select only samples with the
                    // same noise color. In low-SNR shadows chroma is the value
                    // being estimated, never an edge guide; the prefiltered
                    // luminance remains responsible for structure. RAW uses the
                    // symmetric RGB mean rather than a single-channel edge veto.
                    float chromaWeight =
                        exp(-chromaDistance * chromaGuidance);
                    float weight = spatialWeight * guideWeight * chromaWeight;

                    sumChroma += sampleValue.yz * weight;
                    sumSignal += sampleValue.x * weight;
                    sumWeight += weight;
                    acceptedLumaSupport += spatialWeight * guideWeight;
                    totalSupport += spatialWeight;
                }
            }

            vec2 averageChroma = sumChroma / max(sumWeight, 1e-6);
            if (uCameraRgbInput != 0) {
                // averageChroma is the opponent component of the weighted RGB
                // mean. Scale that mean back to the center RGB mean so exposure
                // differences in sparse/coarse samples cannot turn into color.
                // This ratio-of-means is stable in shadows and exactly preserves
                // a constant camera chromaticity across an exposure gradient.
                float averageSignal = sumSignal / max(sumWeight, 1e-6);
                float signalScale = centerSignal / max(averageSignal, 1e-6);
                filteredChroma = averageChroma * signalScale;
            } else {
                filteredChroma = averageChroma;
            }
            // Support reflects the shared luminance guide in both input domains.
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

            float centerGuide = texture(uGuideTexture, vTexCoord).r;
            float guideSigma = guideNoiseSigma(source.rgb);
            float signalSnr = max(centerGuide, 0.0) / max(guideSigma, 1e-6);
            // Below the useful chroma SNR, disable chroma self-guidance so an
            // isolated purple/green/blue noise sample cannot preserve itself by
            // rejecting the rest of the neighborhood. Restore it smoothly only
            // where real color edges are measurable.
            float chromaGuidance = smoothstep(4.0, 12.0, signalSnr);
            float shadowFactor = 1.0 - chromaGuidance;
            float guideBandwidthScale =
                mix(1.0, 4.0, uEdgeGuidanceRelaxation);
            // Deep-shadow luminance is itself noisy. Keep its guide permissive
            // until signal confidence rises, otherwise a purple RGB impulse can
            // preserve itself merely by also changing the local luminance.
            float guideH =
                guideSigma * mix(10.0, 4.0, chromaGuidance) *
                    guideBandwidthScale;
            float invGuideH2 = 1.0 / max(guideH * guideH, 1e-8);

            vec2 fineCandidate;
            float fineSupport;
            // Radius one directly covers the one-to-two-pixel sensor grain that
            // was skipped by the previous sparse fine scale.
            vec2 fineH = localH * 4.0;
            filterScale(
                1.0,
                centerGuide,
                centerValue.x,
                centerValue.yz,
                centerValue.yz,
                chromaGuidance,
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
                centerValue.x,
                fineChroma,
                fineChroma,
                chromaGuidance,
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
                centerValue.x,
                mediumChroma,
                mediumChroma,
                chromaGuidance,
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
                centerValue.x,
                coarseChroma,
                coarseChroma,
                chromaGuidance,
                invGuideH2,
                1.0 / max(cloudH * cloudH, vec2(1e-8)),
                cloudCandidate,
                cloudSupport
            );
            float cloudMix =
                uOutputStrength * featheredEdgeSupport(cloudSupport, 1.5);

            centerValue.yz = mix(coarseChroma, cloudCandidate, cloudMix);
            fragColor = vec4(filterSpaceToRgb(centerValue), source.a);
        }
    """.trimIndent()
}
