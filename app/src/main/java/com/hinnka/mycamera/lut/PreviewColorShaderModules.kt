package com.hinnka.mycamera.lut

internal object PreviewColorShaderModules {
    val COLOR_TRANSFER_CORE = """
        float log10(float x) { return log(x) * 0.4342944819; }
        vec3 log10(vec3 x) { return log(x) * 0.4342944819; }

        vec3 linearToSrgb(vec3 l) {
            vec3 absL = abs(l);
            vec3 result = mix(absL * 12.92, 1.055 * pow(absL, vec3(1.0 / 2.4)) - 0.055, step(0.0031308, absL));
            return sign(l) * result;
        }

        vec3 srgbToLinear(vec3 c) {
            vec3 absC = abs(c);
            vec3 result = mix(absC / 12.92, pow((absC + 0.055) / 1.055, vec3(2.4)), step(0.04045, absC));
            return sign(c) * result;
        }
    """.trimIndent()

    val HLG_TO_LINEAR = """
        vec3 hlgToLinear(vec3 e) {
            float ha = 0.17883277;
            float hb = 1.0 - 4.0 * ha;
            float hc = 0.5 - ha * log(4.0 * ha);
            vec3 low = e * e / 3.0;
            vec3 high = (exp((e - hc) / ha) + hb) / 12.0;
            return mix(low, high, step(vec3(0.5), e));
        }
    """.trimIndent()

    val HLG_TO_LINEAR_STUB = """
        vec3 hlgToLinear(vec3 e) {
            return e;
        }
    """.trimIndent()

    val EXPOSURE = """
        vec3 applyExposureInLinearSpace(vec3 srgbColor, float exposureEv) {
            vec3 linearColor = srgbToLinear(max(srgbColor, vec3(0.0)));
            linearColor *= exp2(exposureEv);
            return linearToSrgb(linearColor);
        }
    """.trimIndent()

    val SANITIZE = """
        float sanitizeFloat(float value) {
            if (value != value) return 0.0;
            return value;
        }

        vec3 sanitizeColor(vec3 color) {
            return vec3(
                sanitizeFloat(color.r),
                sanitizeFloat(color.g),
                sanitizeFloat(color.b)
            );
        }
    """.trimIndent()

    val OKLAB = """
        vec3 linearRgbToOklab(vec3 c) {
            vec3 lms = mat3(
                0.4122214708, 0.2119034982, 0.0883024619,
                0.5363325363, 0.6806995451, 0.2817188376,
                0.0514459929, 0.1073969566, 0.6299787005
            ) * c;
            vec3 lmsCbrt = pow(max(lms, vec3(0.0)), vec3(1.0 / 3.0));
            return mat3(
                0.2104542553, 1.9779984951, 0.0259040371,
                0.7936177850, -2.4285922050, 0.7827717662,
                -0.0040720468, 0.4505937099, -0.8086757660
            ) * lmsCbrt;
        }

        vec3 oklabToLinearRgb(vec3 lab) {
            vec3 lms = mat3(
                1.0, 1.0, 1.0,
                0.3963377774, -0.1055613458, -0.0894841775,
                0.2158037573, -0.0638541728, -1.2914855480
            ) * lab;
            vec3 lms3 = lms * lms * lms;
            return mat3(
                4.0767416621, -1.2684380046, -0.0041960863,
                -3.3077115913, 2.6097574011, -0.7034186147,
                0.2309699292, -0.3413193965, 1.7076147010
            ) * lms3;
        }
    """.trimIndent()

    val LCH_CLASSIFIERS = """
        vec3 linearRgbToCieLab(vec3 linearRgb) {
            vec3 xyz = mat3(
                0.4124564, 0.2126729, 0.0193339,
                0.3575761, 0.7151522, 0.1191920,
                0.1804375, 0.0721750, 0.9503041
            ) * clamp(linearRgb, 0.0, 1.0);
            xyz /= vec3(0.95047, 1.0, 1.08883);
            vec3 f = mix(7.787037 * xyz + vec3(16.0 / 116.0), pow(max(xyz, vec3(0.0)), vec3(1.0 / 3.0)), step(vec3(0.008856), xyz));
            return vec3(116.0 * f.y - 16.0, 500.0 * (f.x - f.y), 200.0 * (f.y - f.z));
        }

        float wrapAngle(float angle) {
            return mod(angle + PI, 2.0 * PI) - PI;
        }

        float fullCoverageBandWeight(float hue, float center, float chroma) {
            float dist = abs(wrapAngle(hue - center));
            float hueWeight = smoothstep(radians(85.0), 0.0, dist);
            float chromaWeight = smoothstep(0.005, 0.03, chroma);
            return hueWeight * chromaWeight;
        }

        float rtRange(float value, float minValue, float maxValue) {
            return step(minValue, value) * (1.0 - step(maxValue, value));
        }

        float rtSkinCase(float l, float h, float c, float lMin, float lMax, float hMin, float hMax, float cMin, float cMax, float weight) {
            return rtRange(l, lMin, lMax) * rtRange(h, hMin, hMax) * rtRange(c, cMin, cMax) * weight;
        }

        float skinBandWeight(vec3 linearColor) {
            vec3 lab = linearRgbToCieLab(linearColor);
            float l = lab.x;
            float h = atan(lab.z, lab.y);
            float c = length(lab.yz);
            float core = 1.0;
            float extended = 0.67;
            float transition = 0.33;
            float w = 0.0;

            w = max(w, rtSkinCase(l, h, c, 85.0, 100.0, 0.73, 1.23, 8.0, 22.0, core));
            w = max(w, rtSkinCase(l, h, c, 92.0, 100.0, 0.80, 1.65, 7.0, 15.0, extended));
            w = max(w, rtSkinCase(l, h, c, 92.0, 100.0, -0.10, 1.65, 7.0, 18.0, transition));
            w = max(w, rtSkinCase(l, h, c, 85.0, 92.0, 0.70, 1.40, 7.0, 34.0, extended));
            w = max(w, rtSkinCase(l, h, c, 85.0, 92.0, 0.00, 1.65, 7.0, 43.0, transition));

            w = max(w, rtSkinCase(l, h, c, 70.0, 85.0, 0.40, 1.29, 8.0, 50.0, core));
            w = max(w, rtSkinCase(l, h, c, 70.0, 85.0, -0.18, 1.50, 7.0, 56.0, extended));
            w = max(w, rtSkinCase(l, h, c, 70.0, 85.0, -0.18, 1.65, 7.0, 63.0, transition));

            w = max(w, rtSkinCase(l, h, c, 52.0, 70.0, 0.30, 1.37, 11.0, 47.0, core));
            w = max(w, rtSkinCase(l, h, c, 52.0, 70.0, -0.18, 1.50, 7.0, 56.0, extended));
            w = max(w, rtSkinCase(l, h, c, 52.0, 70.0, -0.18, 1.65, 7.0, 63.0, transition));

            w = max(w, rtSkinCase(l, h, c, 35.0, 52.0, 0.30, 1.27, 13.0, 44.0, core));
            w = max(w, rtSkinCase(l, h, c, 35.0, 52.0, -0.18, 1.50, 7.0, 56.0, extended));
            w = max(w, rtSkinCase(l, h, c, 35.0, 52.0, -0.18, 1.65, 7.0, 63.0, transition));

            w = max(w, rtSkinCase(l, h, c, 20.0, 35.0, 0.30, 1.22, 7.0, 40.0, core));
            w = max(w, rtSkinCase(l, h, c, 20.0, 35.0, -0.18, 1.50, 7.0, 56.0, extended));
            w = max(w, rtSkinCase(l, h, c, 20.0, 35.0, -0.18, 1.65, 7.0, 63.0, transition));

            w = max(w, rtSkinCase(l, h, c, 10.0, 20.0, -0.20, 1.05, 8.0, 28.0, core));
            w = max(w, rtSkinCase(l, h, c, 10.0, 20.0, -0.18, 1.00, 7.0, 40.0, extended));
            w = max(w, rtSkinCase(l, h, c, 10.0, 20.0, -0.18, 1.60, 7.0, 50.0, transition));

            w = max(w, rtSkinCase(l, h, c, 0.0, 10.0, -0.18, 1.00, 8.0, 28.0, core));
            w = max(w, rtSkinCase(l, h, c, 0.0, 10.0, -0.18, 1.00, 7.0, 40.0, extended));
            w = max(w, rtSkinCase(l, h, c, 0.0, 10.0, -0.18, 1.60, 7.0, 50.0, transition));
            return w;
        }

        float skyBandWeight(vec3 linearColor) {
            vec3 lab = linearRgbToCieLab(linearColor);
            float l = lab.x;
            float h = atan(lab.z, lab.y);
            float c = length(lab.yz);
            float rtWaveletSkyHue = rtRange(h, -2.60, -1.30);
            float chromaGate = smoothstep(7.0, 18.0, c);
            float lightnessGate = smoothstep(18.0, 45.0, l);
            return rtWaveletSkyHue * chromaGate * lightnessGate;
        }
    """.trimIndent()

    val OKLCH_DENSITY = """
        vec3 applyOklchDensity(vec3 srgbColor, float density) {
            if (abs(density) < 0.0001) {
                return srgbColor;
            }

            vec3 linearColor = srgbToLinear(max(srgbColor, vec3(0.0)));
            vec3 lab = linearRgbToOklab(linearColor);
            float chroma = length(lab.yz);
            float hue = atan(lab.z, lab.y);
            const float CHROMA_BIAS = 0.35;
            float densityScale = max(0.0, 1.0 + density * CHROMA_BIAS);
            float newChroma = chroma * densityScale;
            const float DENSITY_K = 1.85;
            float newLightness = clamp(lab.x * exp(-DENSITY_K * density * chroma), 0.0, 1.0);
            vec3 denseLab = vec3(newLightness, cos(hue) * newChroma, sin(hue) * newChroma);
            vec3 denseLinear = max(oklabToLinearRgb(denseLab), vec3(0.0));
            return linearToSrgb(denseLinear);
        }
    """.trimIndent()

    val OKLCH_DENSITY_STUB = """
        vec3 applyOklchDensity(vec3 srgbColor, float density) {
            return srgbColor;
        }
    """.trimIndent()

    val LCH_MIXER = """
        uniform float uLchHueAdjustments[9];
        uniform float uLchChromaAdjustments[9];
        uniform float uLchLightnessAdjustments[9];

        vec3 applyLchColorMixer(vec3 srgbColor) {
            vec3 linearColor = srgbToLinear(max(srgbColor, vec3(0.0)));
            vec3 lab = linearRgbToOklab(linearColor);
            float chroma = length(lab.yz);
            float hue = atan(lab.z, lab.y);
            if (hue < 0.0) hue += 2.0 * PI;

            float centers[8] = float[](
                radians(29.0),
                radians(52.0),
                radians(86.0),
                radians(144.0),
                radians(196.0),
                radians(263.0),
                radians(304.0),
                radians(341.0)
            );

            float hueShift = 0.0;
            float chromaScale = 1.0;
            float lightnessShift = 0.0;
            float bandWeights[8];
            float totalBandWeight = 0.0;

            for (int i = 0; i < 8; i++) {
                float weight = fullCoverageBandWeight(hue, centers[i], chroma);
                bandWeights[i] = weight;
                totalBandWeight += weight;
            }

            if (totalBandWeight > 0.0001) {
                for (int i = 0; i < 8; i++) {
                    float weight = bandWeights[i] / totalBandWeight;
                    hueShift += uLchHueAdjustments[i + 1] * weight * radians(20.0);
                    chromaScale += uLchChromaAdjustments[i + 1] * weight;
                    lightnessShift += uLchLightnessAdjustments[i + 1] * weight * 0.15;
                }

                float commonChromaWeight = smoothstep(0.005, 0.03, chroma);
                hueShift *= commonChromaWeight;
                chromaScale = mix(1.0, chromaScale, commonChromaWeight);
                lightnessShift *= commonChromaWeight;
            }

            float skinWeight = skinBandWeight(linearColor);
            if (skinWeight > 0.0001) {
                hueShift += uLchHueAdjustments[0] * skinWeight * radians(10.0);
                chromaScale += uLchChromaAdjustments[0] * skinWeight;
                lightnessShift += uLchLightnessAdjustments[0] * skinWeight * 0.08;
            }

            if (abs(hueShift) < 0.0001 && abs(chromaScale - 1.0) < 0.0001 && abs(lightnessShift) < 0.0001) {
                return srgbColor;
            }

            float newHue = hue + hueShift;
            float newChroma = max(0.0, chroma * max(0.0, chromaScale));
            float newLightness = clamp(lab.x + lightnessShift, 0.0, 1.0);
            vec3 mixedLab = vec3(newLightness, cos(newHue) * newChroma, sin(newHue) * newChroma);
            vec3 mixedLinear = max(oklabToLinearRgb(mixedLab), vec3(0.0));
            return linearToSrgb(mixedLinear);
        }
    """.trimIndent()

    val LCH_MIXER_STUB = """
        vec3 applyLchColorMixer(vec3 srgbColor) {
            return srgbColor;
        }
    """.trimIndent()

    val LUT_MASK = """
        float lutMaskWeight(int maskType, vec3 linearColor) {
            if (maskType == 1) {
                return skinBandWeight(linearColor);
            }
            if (maskType == 2) {
                return skyBandWeight(linearColor);
            }
            return 1.0;
        }
    """.trimIndent()

    val LUT_MASK_STUB = """
        float lutMaskWeight(int maskType, vec3 linearColor) {
            return 1.0;
        }
    """.trimIndent()

    val FILM_GRAIN = """
        float hash12(vec2 p) {
            vec3 p3 = fract(vec3(p.xyx) * 0.1031);
            p3 += dot(p3, p3.yzx + 33.33);
            return fract((p3.x + p3.y) * p3.z);
        }

        float gaussianNoise(vec2 p) {
            return (hash12(p) + hash12(p + 17.17) + hash12(p + 43.31) + hash12(p + 91.73) - 2.0) * 0.5;
        }

        vec3 applyDensityParticleGrain(vec3 srgbColor, vec2 uv, float amount) {
            float grainAmount = pow(clamp(amount, 0.0, 1.0), 0.58);
            vec3 linearColor = max(srgbToLinear(max(srgbColor, vec3(0.0))), vec3(1e-4));
            vec3 density = -log10(linearColor);
            vec3 densityMin = vec3(0.03);
            vec3 densityMax = vec3(2.2) + densityMin;
            vec3 development = clamp((density + densityMin) / densityMax, vec3(0.02), vec3(0.98));
            float effectivePixelSizeUm = mix(5.2, 1.8, grainAmount);
            float agxParticleAreaUm2 = 0.2;
            vec3 particleScale = vec3(1.6, 1.6, 3.2);
            vec3 particles = (effectivePixelSizeUm * effectivePixelSizeUm) / (agxParticleAreaUm2 * particleScale);
            vec3 uniformity = vec3(0.97, 0.99, 0.97);
            vec2 grainCoord = uv * mix(820.0, 1380.0, grainAmount);
            float lumaGrain = gaussianNoise(grainCoord + vec2(11.0, 7.0));
            vec2 dyeCoord = uv * mix(260.0, 420.0, grainAmount);
            vec3 dyeCloud = vec3(
                gaussianNoise(dyeCoord + vec2(31.0, 53.0)),
                gaussianNoise(dyeCoord + vec2(71.0, 23.0)),
                gaussianNoise(dyeCoord + vec2(19.0, 97.0))
            );
            float clump = gaussianNoise(floor(uv * 180.0) + vec2(5.0, 19.0));
            vec3 saturation = 1.0 - development * uniformity;
            vec3 densityStd = densityMax * sqrt(max(development * (1.0 - development) * saturation, vec3(0.001)) / max(particles, vec3(1.0)));
            float lumaDensityStd = dot(densityStd, vec3(0.333333));
            float positiveLuma = dot(linearColor, vec3(0.2126, 0.7152, 0.0722));
            float positiveHighlightMask = smoothstep(0.55, 0.92, positiveLuma);
            float highlightGrainVisibility = mix(1.0, 0.32, positiveHighlightMask);
            vec3 densityNoise = vec3(lumaGrain * lumaDensityStd * 2.7);
            densityNoise += dyeCloud * densityStd * 0.28;
            densityNoise += clump * grainAmount * vec3(0.013, 0.012, 0.016);
            densityNoise *= highlightGrainVisibility;
            density = max(density + densityNoise * grainAmount * 1.8, vec3(0.0));
            return linearToSrgb(pow(vec3(10.0), -density));
        }
    """.trimIndent()

    val FILM_GRAIN_STUB = """
        vec3 applyDensityParticleGrain(vec3 srgbColor, vec2 uv, float amount) {
            return srgbColor;
        }
    """.trimIndent()

    val PRIMARY_CALIBRATION = """
        vec3 applyPrimaryCalibration(vec3 color) {
            vec3 linearColor = srgbToLinear(max(color, vec3(0.0)));
            vec3 calibratedLinear = max(uPrimaryCalibrationMatrix * linearColor, vec3(0.0));
            return linearToSrgb(calibratedLinear);
        }
    """.trimIndent()

    val EXTENDED_LUT_CURVES = """
        vec3 applyLutCurve(vec3 l, int curveType) {
            if (curveType == 0) {
                return linearToSrgb(l);
            }
            if (curveType == 1) return l;
            if (curveType == 2) {
                return mix(5.6 * l + 0.125, 0.241514 * log10(l + 0.00873) + 0.598206, step(0.01, l));
            }
            if (curveType == 3) {
                return mix((l * (171.2102946929 - 95.0) / 0.01125 + 95.0) / 1023.0, (420.0 + log10((l + 0.01) / (0.18 + 0.01)) * 261.5) / 1023.0, step(0.01125, l));
            }
            if (curveType == 4) {
                return mix(8.799461 * l + 0.092864, 0.245281 * log10(5.555556 * l + 0.064829) + 0.384316, step(0.00089, l));
            }
            if (curveType == 5) {
                return mix(8.80302 * l + 0.158957, 0.21524584 * log10(2231.8263 * l + 64.0) - 0.29590839, step(-0.018057, l));
            }
            if (curveType == 6) {
                return mix(mix(vec3(0.0), 47.28711236 * pow(l + 0.05641088, vec3(2.0)), step(-0.05641088, l)), 0.08550479 * (log(l + 0.00964052) / log(2.0)) + 0.69336945, step(0.01, l));
            }
            if (curveType == 7) {
                float ha = 0.17883277;
                float hb = 1.0 - 4.0 * ha;
                float hc = 0.5 - ha * log(4.0 * ha);
                return mix(sqrt(3.0 * l), ha * log(12.0 * l - hb) + hc, step(1.0 / 12.0, l));
            }
            if (curveType == 8) {
                return mix(10.540237 * l + 0.072905536, 0.18955931 * log10(max(l, vec3(1e-6))) + 0.5547945, step(0.0078125, l));
            }
            if (curveType == 9) {
                return mix(15.1927 * l + 0.151927, 0.224282 * log10(155.975327 * l + 2.55975327), step(-0.01, l));
            }
            if (curveType == 10) {
                return mix(8.0 * l + 0.09, 0.27 * log10(max(1.3 * l + 0.0115, vec3(1e-6))) + 0.6, step(0.006, l));
            }
            return l;
        }
    """.trimIndent()

    val SIMPLE_LUT_CURVES = """
        vec3 applyLutCurve(vec3 l, int curveType) {
            if (curveType == 1) return l;
            return linearToSrgb(l);
        }
    """.trimIndent()

    val LUT_COLOR_SPACE = """
        vec3 applyLutColorSpace(vec3 rgb, int colorSpace) {
            if (colorSpace == 0) return rgb;
            if (colorSpace == 1) {
                return mat3(0.875905, 0.035332, 0.016382, 0.122070, 0.964542, 0.063767, 0.002025, 0.000126, 0.919851) * rgb;
            }
            if (colorSpace == 2) {
                return mat3(0.627404, 0.069097, 0.016391, 0.329283, 0.919540, 0.088013, 0.043313, 0.011362, 0.895595) * rgb;
            }
            if (colorSpace == 3) {
                return mat3(0.565837, 0.088626, 0.017750, 0.340331, 0.809347, 0.109448, 0.093832, 0.102028, 0.872802) * rgb;
            }
            if (colorSpace == 4) {
                return mat3(0.608104, 0.062316, 0.031133, 0.259353, 0.804609, 0.133756, 0.132543, 0.133076, 0.835112) * rgb;
            }
            if (colorSpace == 5) {
                return mat3(0.645679, 0.087530, 0.036957, 0.259115, 0.759700, 0.129281, 0.095206, 0.152770, 0.833762) * rgb;
            }
            if (colorSpace == 6) {
                return mat3(0.613083, 0.070004, 0.020491, 0.341167, 0.918063, 0.106764, 0.045750, 0.011934, 0.872745) * rgb;
            }
            if (colorSpace == 7) {
                return mat3(0.585196, 0.078589, 0.022794, 0.322642, 0.819627, 0.114217, 0.092162, 0.101784, 0.862989) * rgb;
            }
            if (colorSpace == 9) {
                return mat3(0.541973, 0.076993, 0.058875, 0.360148, 0.767969, 0.273495, 0.097891, 0.155019, 0.667533) * rgb;
            }
            return rgb;
        }
    """.trimIndent()
}
