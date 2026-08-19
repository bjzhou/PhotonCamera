package com.hinnka.mycamera.raw

internal object DarktableFilmicToneShader {
    val DARKTABLE_FILMIC_COMBINED_FUNCTIONS = """
        const float DT_FILMIC_NORM_MIN = 0.0000152587890625;
        const float DT_FILMIC_GREY_SOURCE = 0.1845;
        const float DT_FILMIC_OUTPUT_POWER = 3.614815775;
        const float DT_FILMIC_DISPLAY_BLACK = 0.0001517634;
        const float DT_FILMIC_DISPLAY_WHITE = 1.0;
        const float DT_FILMIC_Y_1931_TO_2006 = 1.05785528;
        const float DT_FILMIC_YRG_D65_R = 0.21902143;
        const float DT_FILMIC_YRG_D65_G = 0.54371398;
        const float DT_FILMIC_MAX_CHROMA = 1.0e20;
        const vec3 DT_FILMIC_BT2020_TO_LMS_L = vec3(0.4067763460, 0.6178051991, 0.0458445893);
        const vec3 DT_FILMIC_BT2020_TO_LMS_M = vec3(0.0677498629, 0.7489671634, 0.1001665160);
        const vec3 DT_FILMIC_BT2020_TO_LMS_S = vec3(0.0221408642, -0.0153252587, 0.5876294574);
        const vec3 DT_FILMIC_LMS_TO_BT2020_R = vec3(2.8380181184, -2.3373915374, 0.1770173235);
        const vec3 DT_FILMIC_LMS_TO_BT2020_G = vec3(-0.2415770666, 1.5294941187, -0.2418685622);
        const vec3 DT_FILMIC_LMS_TO_BT2020_B = vec3(-0.1132319053, 0.1279577808, 1.6887750778);
        const vec3 DT_FILMIC_SRGB_TO_LMS_L = vec3(0.2986531876, 0.7060763220, 0.0656966248);
        const vec3 DT_FILMIC_SRGB_TO_LMS_M = vec3(0.0959000021, 0.7198304285, 0.1011531117);
        const vec3 DT_FILMIC_SRGB_TO_LMS_S = vec3(0.0224644230, 0.0449176289, 0.5270630110);
        const vec3 DT_FILMIC_LMS_TO_SRGB_R = vec3(4.8627131007, -4.7893329888, 0.3130405567);
        const vec3 DT_FILMIC_LMS_TO_SRGB_G = vec3(-0.6262137162, 2.0228185813, -0.3101607577);
        const vec3 DT_FILMIC_LMS_TO_SRGB_B = vec3(-0.1538905312, 0.0317407724, 1.9103966448);
        const vec3 DT_FILMIC_LMS_TO_FILMLIGHT_R = vec3(1.08771930, -0.66666667, 0.02061856);
        const vec3 DT_FILMIC_LMS_TO_FILMLIGHT_G = vec3(-0.08771930, 1.66666667, -0.05154639);
        const vec3 DT_FILMIC_LMS_TO_FILMLIGHT_B = vec3(0.0, 0.0, 1.03092784);
        const vec3 DT_FILMIC_FILMLIGHT_TO_LMS_L = vec3(0.95, 0.38, 0.0);
        const vec3 DT_FILMIC_FILMLIGHT_TO_LMS_M = vec3(0.05, 0.62, 0.03);
        const vec3 DT_FILMIC_FILMLIGHT_TO_LMS_S = vec3(0.0, 0.0, 0.97);
        float darktableFilmicLogEncode(float value) {
            float safeValue = max(value, DT_FILMIC_NORM_MIN);
            return clamp(
                (log2(safeValue / DT_FILMIC_GREY_SOURCE) - uFilmicBlackRelativeExposure) /
                    max(uFilmicDynamicRange, 0.2),
                0.0,
                1.0
            );
        }

        float darktableFilmicSpline(float value) {
            if (value < uFilmicLatitudeMin) {
                return uFilmicM1.x + value * (
                    uFilmicM2.x + value * (
                        uFilmicM3.x + value * (
                            uFilmicM4.x + value * uFilmicM5.x
                        )
                    )
                );
            }
            if (value > uFilmicLatitudeMax) {
                return uFilmicM1.y + value * (
                    uFilmicM2.y + value * (
                        uFilmicM3.y + value * (
                            uFilmicM4.y + value * uFilmicM5.y
                        )
                    )
                );
            }
            return uFilmicM1.z + value * uFilmicM2.z;
        }

        float darktableFilmicRgbScalar(float value) {
            float encoded = darktableFilmicLogEncode(value);
            float curved = clamp(darktableFilmicSpline(encoded), 0.0, DT_FILMIC_DISPLAY_WHITE);
            return pow(max(curved, 0.0), DT_FILMIC_OUTPUT_POWER);
        }

        float darktableFilmicNormScalar(float value) {
            float encoded = darktableFilmicLogEncode(value);
            float curved = clamp(
                darktableFilmicSpline(encoded),
                DT_FILMIC_DISPLAY_BLACK,
                DT_FILMIC_DISPLAY_WHITE
            );
            return pow(max(curved, 0.0), DT_FILMIC_OUTPUT_POWER);
        }

        vec3 darktableFilmicRgbTone(vec3 color) {
            vec3 positiveColor = max(color, vec3(DT_FILMIC_NORM_MIN));
            return vec3(
                darktableFilmicRgbScalar(positiveColor.r),
                darktableFilmicRgbScalar(positiveColor.g),
                darktableFilmicRgbScalar(positiveColor.b)
            );
        }

        vec3 darktableFilmicMaxRgbTone(vec3 color) {
            vec3 positiveColor = max(color, vec3(0.0));
            float maxRgb = max(positiveColor.r, max(positiveColor.g, positiveColor.b));
            float ratioNorm = max(maxRgb, uFilmicInputMin);
            float toneNorm = clamp(maxRgb, uFilmicInputMin, uFilmicInputMax);
            vec3 ratios = positiveColor / ratioNorm;
            return ratios * darktableFilmicNormScalar(toneNorm);
        }

        vec3 applyDarktableFilmic(vec3 color) {
            vec3 naiveRgb = darktableFilmicRgbTone(color);
            vec3 maxRgb = darktableFilmicMaxRgbTone(color);
            return 0.5 * naiveRgb + 0.5 * maxRgb;
        }

        vec3 darktableFilmicBt2020ToLms(vec3 color) {
            return vec3(
                dot(DT_FILMIC_BT2020_TO_LMS_L, color),
                dot(DT_FILMIC_BT2020_TO_LMS_M, color),
                dot(DT_FILMIC_BT2020_TO_LMS_S, color)
            );
        }

        vec3 darktableFilmicLmsToBt2020(vec3 lms) {
            return vec3(
                dot(DT_FILMIC_LMS_TO_BT2020_R, lms),
                dot(DT_FILMIC_LMS_TO_BT2020_G, lms),
                dot(DT_FILMIC_LMS_TO_BT2020_B, lms)
            );
        }

        vec3 darktableFilmicSrgbToLms(vec3 color) {
            return vec3(
                dot(DT_FILMIC_SRGB_TO_LMS_L, color),
                dot(DT_FILMIC_SRGB_TO_LMS_M, color),
                dot(DT_FILMIC_SRGB_TO_LMS_S, color)
            );
        }

        vec3 darktableFilmicLmsToSrgb(vec3 lms) {
            return vec3(
                dot(DT_FILMIC_LMS_TO_SRGB_R, lms),
                dot(DT_FILMIC_LMS_TO_SRGB_G, lms),
                dot(DT_FILMIC_LMS_TO_SRGB_B, lms)
            );
        }

        vec3 darktableFilmicProfileRgbToLms(vec3 color, bool useSrgb) {
            return useSrgb ? darktableFilmicSrgbToLms(color) : darktableFilmicBt2020ToLms(color);
        }

        vec3 darktableFilmicLmsToProfileRgb(vec3 lms, bool useSrgb) {
            return useSrgb ? darktableFilmicLmsToSrgb(lms) : darktableFilmicLmsToBt2020(lms);
        }

        vec3 darktableFilmicLmsToFilmlight(vec3 lms) {
            return vec3(
                dot(DT_FILMIC_LMS_TO_FILMLIGHT_R, lms),
                dot(DT_FILMIC_LMS_TO_FILMLIGHT_G, lms),
                dot(DT_FILMIC_LMS_TO_FILMLIGHT_B, lms)
            );
        }

        vec3 darktableFilmicFilmlightToLms(vec3 rgb) {
            return vec3(
                dot(DT_FILMIC_FILMLIGHT_TO_LMS_L, rgb),
                dot(DT_FILMIC_FILMLIGHT_TO_LMS_M, rgb),
                dot(DT_FILMIC_FILMLIGHT_TO_LMS_S, rgb)
            );
        }

        vec3 darktableFilmicLmsToYrg(vec3 lms) {
            float y = 0.68990272 * lms.x + 0.34832189 * lms.y;
            float sumLms = lms.x + lms.y + lms.z;
            vec3 normalizedLms = abs(sumLms) > 1e-8 ? lms / sumLms : vec3(0.0);
            vec3 filmlightRgb = darktableFilmicLmsToFilmlight(normalizedLms);
            return vec3(y, filmlightRgb.r, filmlightRgb.g);
        }

        vec3 darktableFilmicYrgToLms(vec3 yrg) {
            vec3 filmlightRgb = vec3(yrg.y, yrg.z, 1.0 - yrg.y - yrg.z);
            vec3 normalizedLms = darktableFilmicFilmlightToLms(filmlightRgb);
            float denom = 0.68990272 * normalizedLms.x + 0.34832189 * normalizedLms.y;
            float scale = abs(denom) > 1e-8 ? yrg.x / denom : 0.0;
            return normalizedLms * scale;
        }

        vec4 darktableFilmicYrgToYch(vec3 yrg) {
            float r = yrg.y - DT_FILMIC_YRG_D65_R;
            float g = yrg.z - DT_FILMIC_YRG_D65_G;
            float chroma = length(vec2(r, g));
            float cosH = chroma > 0.0 ? r / chroma : 1.0;
            float sinH = chroma > 0.0 ? g / chroma : 0.0;
            return vec4(yrg.x, chroma, cosH, sinH);
        }

        vec3 darktableFilmicYchToYrg(vec4 ych) {
            return vec3(
                ych.x,
                ych.y * ych.z + DT_FILMIC_YRG_D65_R,
                ych.y * ych.w + DT_FILMIC_YRG_D65_G
            );
        }

        vec4 darktableFilmicProfileRgbToYch(vec3 color, bool useSrgb) {
            return darktableFilmicYrgToYch(
                darktableFilmicLmsToYrg(darktableFilmicProfileRgbToLms(color, useSrgb))
            );
        }

        vec3 darktableFilmicYchToProfileRgb(vec4 ych, bool useSrgb) {
            vec3 lms = darktableFilmicYrgToLms(darktableFilmicYchToYrg(ych));
            return darktableFilmicLmsToProfileRgb(lms, useSrgb);
        }

        vec4 darktableFilmicDesaturateV4(vec4 ychOriginal, vec4 ychFinal, float saturation) {
            float chromaOriginal = ychOriginal.y * ychOriginal.x;
            float chromaFinal = ychFinal.y * ychFinal.x;
            float deltaChroma = saturation * (chromaOriginal - chromaFinal);

            bool filmicBrightens = ychFinal.x > ychOriginal.x;
            bool filmicResat = chromaOriginal < chromaFinal;
            bool filmicDesat = chromaOriginal > chromaFinal;
            bool userResat = saturation > 0.0;
            bool userDesat = saturation < 0.0;

            if (filmicBrightens && filmicResat) {
                chromaFinal = 0.5 * (chromaOriginal + chromaFinal);
            } else if ((userResat && filmicDesat) || userDesat) {
                chromaFinal += deltaChroma;
            }

            ychFinal.y = max(chromaFinal / max(ychFinal.x, 1e-8), 0.0);
            return ychFinal;
        }

        vec4 darktableFilmicGamutCheckYrg(vec4 ych) {
            vec3 yrg = darktableFilmicYchToYrg(ych);
            float maxChroma = max(ych.y, 0.0);
            float cosH = ych.z;
            float sinH = ych.w;

            if (yrg.y < 0.0 && abs(cosH) > 1e-8) {
                maxChroma = min(-DT_FILMIC_YRG_D65_R / cosH, maxChroma);
            }
            if (yrg.z < 0.0 && abs(sinH) > 1e-8) {
                maxChroma = min(-DT_FILMIC_YRG_D65_G / sinH, maxChroma);
            }
            if (yrg.y + yrg.z > 1.0 && abs(cosH + sinH) > 1e-8) {
                maxChroma = min((1.0 - DT_FILMIC_YRG_D65_R - DT_FILMIC_YRG_D65_G) / (cosH + sinH), maxChroma);
            }

            ych.y = max(maxChroma, 0.0);
            return ych;
        }

        float darktableFilmicClipChromaWhiteRaw(vec3 coeffs, float targetWhite, float y, float cosH, float sinH) {
            float denominatorYCoeff =
                coeffs.x * (0.979381443298969 * cosH + 0.391752577319588 * sinH) +
                coeffs.y * (0.0206185567010309 * cosH + 0.608247422680412 * sinH) -
                coeffs.z * (cosH + sinH);
            float denominatorTargetTerm =
                targetWhite * (0.68285981628866 * cosH + 0.482137060515464 * sinH);

            if (abs(denominatorYCoeff) <= 1e-8) {
                return DT_FILMIC_MAX_CHROMA;
            }

            float yAsymptote = denominatorTargetTerm / denominatorYCoeff;
            if (y <= yAsymptote) {
                return DT_FILMIC_MAX_CHROMA;
            }

            float denominator = y * denominatorYCoeff - denominatorTargetTerm;
            if (abs(denominator) <= 1e-8) {
                return DT_FILMIC_MAX_CHROMA;
            }

            float numerator = -0.427506877216495 *
                (y * (coeffs.x + 0.856492345150334 * coeffs.y + 0.554995960637719 * coeffs.z) -
                    0.988237752433297 * targetWhite);
            float maxChroma = numerator / denominator;
            return maxChroma >= 0.0 ? maxChroma : DT_FILMIC_MAX_CHROMA;
        }

        float darktableFilmicClipChromaWhite(vec3 coeffs, float targetWhite, float y, float cosH, float sinH) {
            const float eps = 0.001;
            float maxY = DT_FILMIC_Y_1931_TO_2006 * targetWhite;
            float deltaY = max(maxY - y, 0.0);
            float maxChroma;
            if (deltaY < eps) {
                maxChroma = deltaY / max(eps * maxY, 1e-8) *
                    darktableFilmicClipChromaWhiteRaw(coeffs, targetWhite, (1.0 - eps) * maxY, cosH, sinH);
            } else {
                maxChroma = darktableFilmicClipChromaWhiteRaw(coeffs, targetWhite, y, cosH, sinH);
            }
            return maxChroma >= 0.0 ? maxChroma : DT_FILMIC_MAX_CHROMA;
        }

        float darktableFilmicClipChromaBlack(vec3 coeffs, float cosH, float sinH) {
            float denominator =
                coeffs.x * (0.979381443298969 * cosH + 0.391752577319588 * sinH) +
                coeffs.y * (0.0206185567010309 * cosH + 0.608247422680412 * sinH) -
                coeffs.z * (cosH + sinH);
            if (abs(denominator) <= 1e-8) {
                return DT_FILMIC_MAX_CHROMA;
            }

            float numerator = -0.427506877216495 *
                (coeffs.x + 0.856492345150334 * coeffs.y + 0.554995960637719 * coeffs.z);
            float maxChroma = numerator / denominator;
            return maxChroma >= 0.0 ? maxChroma : DT_FILMIC_MAX_CHROMA;
        }

        float darktableFilmicClipChroma(
            vec3 rowR,
            vec3 rowG,
            vec3 rowB,
            float targetWhite,
            float y,
            float cosH,
            float sinH,
            float chroma
        ) {
            float chromaWhite = min(
                min(
                    darktableFilmicClipChromaWhite(rowR, targetWhite, y, cosH, sinH),
                    darktableFilmicClipChromaWhite(rowG, targetWhite, y, cosH, sinH)
                ),
                darktableFilmicClipChromaWhite(rowB, targetWhite, y, cosH, sinH)
            );
            float chromaBlack = min(
                min(
                    darktableFilmicClipChromaBlack(rowR, cosH, sinH),
                    darktableFilmicClipChromaBlack(rowG, cosH, sinH)
                ),
                darktableFilmicClipChromaBlack(rowB, cosH, sinH)
            );
            return max(min(min(chroma, chromaWhite), chromaBlack), 0.0);
        }

        vec3 darktableFilmicGamutCheckRgb(vec4 ychIn, bool useSrgb) {
            vec3 rgbBrightened = darktableFilmicYchToProfileRgb(ychIn, useSrgb);
            float minPixel = min(rgbBrightened.r, min(rgbBrightened.g, rgbBrightened.b));
            float blackOffset = max(-minPixel, 0.0);
            rgbBrightened += vec3(blackOffset);

            vec4 ychBrightened = darktableFilmicProfileRgbToYch(rgbBrightened, useSrgb);
            float y = clamp(
                0.5 * (ychIn.x + ychBrightened.x),
                DT_FILMIC_Y_1931_TO_2006 * DT_FILMIC_DISPLAY_BLACK,
                DT_FILMIC_Y_1931_TO_2006 * DT_FILMIC_DISPLAY_WHITE
            );

            vec3 rowR = useSrgb ? DT_FILMIC_LMS_TO_SRGB_R : DT_FILMIC_LMS_TO_BT2020_R;
            vec3 rowG = useSrgb ? DT_FILMIC_LMS_TO_SRGB_G : DT_FILMIC_LMS_TO_BT2020_G;
            vec3 rowB = useSrgb ? DT_FILMIC_LMS_TO_SRGB_B : DT_FILMIC_LMS_TO_BT2020_B;
            float newChroma = darktableFilmicClipChroma(
                rowR,
                rowG,
                rowB,
                DT_FILMIC_DISPLAY_WHITE,
                y,
                ychIn.z,
                ychIn.w,
                ychIn.y
            );

            return clamp(
                darktableFilmicYchToProfileRgb(vec4(y, newChroma, ychIn.z, ychIn.w), useSrgb),
                0.0,
                DT_FILMIC_DISPLAY_WHITE
            );
        }

        vec3 darktableFilmicGamutMapV5(vec3 originalColor, vec3 tonedColor) {
            vec4 ychOriginal = darktableFilmicProfileRgbToYch(originalColor, false);
            vec4 ychFinal = darktableFilmicProfileRgbToYch(tonedColor, false);

            ychFinal.y = min(ychOriginal.y, ychFinal.y);
            ychFinal.z = ychOriginal.z;
            ychFinal.w = ychOriginal.w;
            ychFinal.x = clamp(
                ychFinal.x,
                DT_FILMIC_Y_1931_TO_2006 * DT_FILMIC_DISPLAY_BLACK,
                DT_FILMIC_Y_1931_TO_2006 * DT_FILMIC_DISPLAY_WHITE
            );
            ychFinal = darktableFilmicDesaturateV4(ychOriginal, ychFinal, 0.0);
            ychFinal = darktableFilmicGamutCheckYrg(ychFinal);

            vec3 srgb = darktableFilmicGamutCheckRgb(ychFinal, true);
            return darktableFilmicLmsToBt2020(darktableFilmicSrgbToLms(srgb));
        }

        vec3 applyEngineTone(vec3 color) {
            vec3 toned = applyDarktableFilmic(color);
            return uOutputTransform * darktableFilmicGamutMapV5(color, toned);
        }
    """.trimIndent()

    val DEFINITION = RawEngineToneShaderDefinition(
        engineUniforms = RawEngineTonePass.OUTPUT_TRANSFORM_COMBINED_UNIFORMS,
        engineFunctions = DARKTABLE_FILMIC_COMBINED_FUNCTIONS,
        includeAdobeProfilePipeline = false,
    )
}

internal class DarktableFilmicToneAlgorithm(quad: RawFullscreenQuad) :
    RawRenderingEngineToneAlgorithm(quad, DarktableFilmicToneShader.DEFINITION)
