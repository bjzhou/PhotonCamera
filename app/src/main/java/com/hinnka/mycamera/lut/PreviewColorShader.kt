package com.hinnka.mycamera.lut

internal object PreviewColorShader {
    fun source(variant: PreviewColorShaderVariant): String {
        val extension = if (variant.textureSource == PreviewColorTextureSource.EXTERNAL_OES) {
            "#extension GL_OES_EGL_image_external_essl3 : require\n"
        } else {
            ""
        }
        val sampler = if (variant.textureSource == PreviewColorTextureSource.EXTERNAL_OES) {
            "samplerExternalOES"
        } else {
            "sampler2D"
        }
        val needsOklab = variant.includeOklchDensity || variant.includeLchMixer
        val needsClassifiers = variant.includeLchMixer || variant.includeLutMask

        return """
            #version 300 es
            ${extension}
            precision highp float;

            in vec2 vTexCoord;
            in vec2 vRawCoord;
            out vec4 fragColor;

            uniform $sampler uCameraTexture;
            uniform mediump sampler3D uLutTexture;

            uniform float uLutSize;
            uniform float uLutIntensity;
            uniform bool uLutEnabled;
            uniform int uLutMaskType;
            uniform int uLutCurve;
            uniform int uLutColorSpace;
            uniform bool uVideoLogEnabled;
            uniform int uVideoLogCurve;
            uniform int uVideoColorSpace;
            uniform bool uIsHlgInput;

            uniform bool uColorRecipeEnabled;
            uniform mat4 uSTMatrix;
            uniform float uExposure;
            uniform float uContrast;
            uniform float uSaturation;
            uniform float uTemperature;
            uniform float uTint;
            uniform float uFade;
            uniform float uVibrance;
            uniform float uHighlights;
            uniform float uShadows;
            uniform float uToneToe;
            uniform float uToneShoulder;
            uniform float uTonePivot;
            uniform float uFilmGrain;
            uniform float uVignette;
            uniform float uBleachBypass;
            uniform float uChromaticAberration;
            uniform float uNoise;
            uniform float uNoiseSeed;
            uniform float uLowRes;
            uniform float uAspectRatio;
            uniform mat3 uPrimaryCalibrationMatrix;
            uniform float uAperture;
            uniform vec2 uFocusPoint;
            uniform vec2 uTexelSize;
            uniform sampler2D uCurveTexture;
            uniform bool uCurveEnabled;

            const vec3 W = vec3(0.2126, 0.7152, 0.0722);
            const float PI = 3.14159265359;

            ${PreviewColorShaderModules.COLOR_TRANSFER_CORE}
            ${if (variant.includeHlgInput) PreviewColorShaderModules.HLG_TO_LINEAR else PreviewColorShaderModules.HLG_TO_LINEAR_STUB}
            ${PreviewColorShaderModules.EXPOSURE}
            ${PreviewColorShaderModules.SANITIZE}

            float getLuma(vec3 color) {
                return dot(color, W);
            }

            ${PreviewShadowsHighlightsShader.GLSL}

            ${if (needsOklab) PreviewColorShaderModules.OKLAB else ""}
            ${if (needsClassifiers) PreviewColorShaderModules.LCH_CLASSIFIERS else ""}
            ${if (variant.includeOklchDensity) PreviewColorShaderModules.OKLCH_DENSITY else PreviewColorShaderModules.OKLCH_DENSITY_STUB}
            ${if (variant.includeLchMixer) PreviewColorShaderModules.LCH_MIXER else PreviewColorShaderModules.LCH_MIXER_STUB}
            ${if (variant.includeLutMask) PreviewColorShaderModules.LUT_MASK else PreviewColorShaderModules.LUT_MASK_STUB}
            ${if (variant.includeFilmGrain) PreviewColorShaderModules.FILM_GRAIN else PreviewColorShaderModules.FILM_GRAIN_STUB}
            ${if (variant.includeExtendedLutCurves) PreviewColorShaderModules.EXTENDED_LUT_CURVES else PreviewColorShaderModules.SIMPLE_LUT_CURVES}

            float applyToneCurveToLuma(float luma, float toe, float shoulder, float pivot) {
                float safeLuma = clamp(luma, 0.0, 1.0);
                float pivotPoint = clamp(0.5 + pivot * 0.12, 0.2, 0.8);
                float toeAmount = clamp(abs(toe), 0.0, 1.0);
                float shoulderAmount = clamp(abs(shoulder), 0.0, 1.0);
                float toeGamma = (toe >= 0.0)
                    ? mix(1.0, 0.68, toeAmount)
                    : mix(1.0, 1.85, toeAmount);
                float shoulderGamma = (shoulder >= 0.0)
                    ? mix(1.0, 0.72, shoulderAmount)
                    : mix(1.0, 1.85, shoulderAmount);

                if (safeLuma <= pivotPoint) {
                    float segment = clamp(safeLuma / max(pivotPoint, 0.0001), 0.0, 1.0);
                    return clamp(pow(segment, toeGamma) * pivotPoint, 0.0, 1.0);
                }

                float segment = clamp((safeLuma - pivotPoint) / max(1.0 - pivotPoint, 0.0001), 0.0, 1.0);
                float result = 1.0 - pow(max(0.0, 1.0 - segment), shoulderGamma) * (1.0 - pivotPoint);
                return clamp(result, 0.0, 1.0);
            }

            vec3 applyToneCurve(vec3 color, float toe, float shoulder, float pivot) {
                if (abs(toe) < 0.001 && abs(shoulder) < 0.001 && abs(pivot) < 0.001) {
                    return color;
                }
                vec3 safeColor = clamp(color, 0.0, 1.0);
                float luma = dot(safeColor, W);
                float curvedLuma = applyToneCurveToLuma(luma, toe, shoulder, pivot);
                if (luma < 0.0001) {
                    return safeColor;
                }
                vec3 scaled = safeColor * (curvedLuma / luma);
                return mix(vec3(curvedLuma), scaled, 0.92);
            }

            ${PreviewColorShaderModules.PRIMARY_CALIBRATION}
            ${PreviewColorShaderModules.LUT_COLOR_SPACE}

            void main() {
                vec2 uvCoord = vTexCoord;
                vec2 rcCoord = vRawCoord;
                if (uLowRes > 0.005) {
                    float blocksX = mix(512.0, 32.0, uLowRes);
                    vec2 gridSize = vec2(1.0 / blocksX, 1.0 / (blocksX / uAspectRatio));
                    vec2 gridUV = floor(vTexCoord / gridSize) * gridSize + gridSize * 0.5;
                    vec2 gridRC = floor(vRawCoord / gridSize) * gridSize + gridSize * 0.5;
                    uvCoord = mix(vTexCoord, gridUV, 0.95);
                    rcCoord = mix(vRawCoord, gridRC, 0.95);
                }

                vec4 color;
                if (uChromaticAberration > 0.001) {
                    vec2 center = vec2(0.5);
                    vec2 dir = rcCoord - center;
                    float dist = length(dir);
                    float offset = pow(dist, 1.5) * uChromaticAberration * 0.08;
                    vec2 rCoord = (uSTMatrix * vec4(rcCoord + dir * offset, 0.0, 1.0)).xy;
                    vec2 bCoord = (uSTMatrix * vec4(rcCoord - dir * offset, 0.0, 1.0)).xy;
                    float r = texture(uCameraTexture, rCoord).r;
                    float g = texture(uCameraTexture, uvCoord).g;
                    float b = texture(uCameraTexture, bCoord).b;
                    float a = texture(uCameraTexture, uvCoord).a;
                    color = vec4(r, g, b, a);
                } else {
                    color = texture(uCameraTexture, uvCoord);
                }

                if (uIsHlgInput) {
                    color.rgb = hlgToLinear(color.rgb);
                    color.rgb = linearToSrgb(color.rgb);
                }

                if (uColorRecipeEnabled) {
                    if (abs(uExposure) > 0.001) {
                        color.rgb = applyExposureInLinearSpace(color.rgb, uExposure);
                        color.rgb = sanitizeColor(color.rgb);
                    }

                    color.rgb = applyPreviewShadowsHighlights(color.rgb);
                    color.rgb = sanitizeColor(color.rgb);

                    float luma = getLuma(color.rgb);

                    if (abs(uContrast - 1.0) > 0.001) {
                        color.rgb = (color.rgb - 0.5) * uContrast + 0.5;
                        color.rgb = sanitizeColor(color.rgb);
                    }

                    color.rgb = applyToneCurve(color.rgb, uToneToe, uToneShoulder, uTonePivot);
                    color.rgb = sanitizeColor(color.rgb);

                    color.r += uTemperature * 0.1;
                    color.b -= uTemperature * 0.1;
                    color.g += uTint * 0.05;
                    color.rgb = sanitizeColor(color.rgb);

                    if (abs(uSaturation - 1.0) > 0.001) {
                        luma = dot(color.rgb, W);
                        color.rgb = mix(vec3(luma), color.rgb, uSaturation);
                        color.rgb = sanitizeColor(color.rgb);
                    }

                    if (abs(uVibrance) > 0.001) {
                        color.rgb = applyOklchDensity(color.rgb, uVibrance);
                        color.rgb = sanitizeColor(color.rgb);
                    }

                    color.rgb = applyPrimaryCalibration(color.rgb);
                    color.rgb = sanitizeColor(color.rgb);

                    color.rgb = applyLchColorMixer(color.rgb);
                    color.rgb = sanitizeColor(color.rgb);

                    if (uFade > 0.001) {
                        float fadeAmount = uFade * 0.3;
                        color.rgb = mix(color.rgb, vec3(0.5), fadeAmount) + fadeAmount * 0.1;
                        color.rgb = sanitizeColor(color.rgb);
                    }

                    if (uBleachBypass > 0.001) {
                        luma = dot(color.rgb, W);
                        vec3 desaturated = mix(color.rgb, vec3(luma), 0.6);
                        desaturated = (desaturated - 0.5) * 1.3 + 0.5;
                        desaturated.r *= 0.95;
                        desaturated.g *= 1.02;
                        desaturated.b *= 1.05;
                        color.rgb = mix(color.rgb, desaturated, uBleachBypass);
                        color.rgb = sanitizeColor(color.rgb);
                    }

                    if (abs(uVignette) > 0.001) {
                        float dist = distance(vTexCoord, vec2(0.5));
                        float vignetteMask = smoothstep(0.8, 0.3, dist);
                        if (uVignette < 0.0) {
                            color.rgb *= mix(0.01, 1.0, vignetteMask) * abs(uVignette) + (1.0 + uVignette);
                        } else {
                            color.rgb = mix(color.rgb, vec3(1.0), (1.0 - vignetteMask) * uVignette);
                        }
                        color.rgb = sanitizeColor(color.rgb);
                    }

                    if (uFilmGrain > 0.001) {
                        color.rgb = applyDensityParticleGrain(color.rgb, uvCoord, uFilmGrain);
                        color.rgb = sanitizeColor(color.rgb);
                    }

                    if (uNoise > 0.001) {
                        vec2 seedOffset = vec2(fract(uNoiseSeed * 1.234), fract(uNoiseSeed * 3.456));
                        vec2 noiseCoord = uvCoord * 800.0 + seedOffset * 100.0;
                        float lumNoise = fract(sin(dot(noiseCoord, vec2(12.9898, 78.233))) * 43758.5453);
                        lumNoise = (lumNoise - 0.5) * 2.0;
                        float colorNoiseR = fract(sin(dot(noiseCoord + vec2(1.1, 2.2), vec2(39.346, 11.135))) * 43758.5453);
                        float colorNoiseG = fract(sin(dot(noiseCoord + vec2(3.3, 4.4), vec2(73.156, 52.235))) * 43758.5453);
                        float colorNoiseB = fract(sin(dot(noiseCoord + vec2(5.5, 6.6), vec2(27.423, 83.136))) * 43758.5453);
                        vec3 colorNoise = (vec3(colorNoiseR, colorNoiseG, colorNoiseB) - 0.5) * 2.0;
                        luma = dot(color.rgb, W);
                        float noiseMask = mix(0.5, 1.0, 1.0 - abs(luma - 0.5) * 1.5);
                        vec3 finalNoise = mix(vec3(lumNoise), mix(vec3(lumNoise), colorNoise, 0.7), 0.8);
                        color.rgb += finalNoise * uNoise * max(0.0, noiseMask);
                        color.rgb = sanitizeColor(color.rgb);
                    }

                    color.rgb = sanitizeColor(color.rgb);
                }

                if (uCurveEnabled) {
                    vec3 clamped = clamp(color.rgb, 0.0, 1.0);
                    float r = texture(uCurveTexture, vec2(clamped.r, 0.5)).r;
                    float g = texture(uCurveTexture, vec2(clamped.g, 0.5)).g;
                    float b = texture(uCurveTexture, vec2(clamped.b, 0.5)).b;
                    color.rgb = sanitizeColor(vec3(r, g, b));
                }

                if (uVideoLogEnabled) {
                    vec3 linearColor = srgbToLinear(max(color.rgb, vec3(0.0)));
                    vec3 outputColorSpace = applyLutColorSpace(linearColor, uVideoColorSpace);
                    color.rgb = sanitizeColor(applyLutCurve(outputColorSpace, uVideoLogCurve));
                }

                if (uLutEnabled && uLutIntensity > 0.0) {
                    vec3 lutInColor;
                    float effectiveLutIntensity = uLutIntensity;
                    if (uVideoLogEnabled) {
                        lutInColor = color.rgb;
                    } else {
                        vec3 linearRGB = srgbToLinear(max(color.rgb, vec3(0.0)));
                        effectiveLutIntensity *= lutMaskWeight(uLutMaskType, linearRGB);
                        vec3 colorSpaceRGB = applyLutColorSpace(linearRGB, uLutColorSpace);
                        lutInColor = applyLutCurve(colorSpaceRGB, uLutCurve);
                    }
                    float scale = (uLutSize - 1.0) / uLutSize;
                    float offset = 1.0 / (2.0 * uLutSize);
                    vec3 lutCoord = lutInColor * scale + offset;
                    vec4 lutColor = texture(uLutTexture, lutCoord);
                    color.rgb = mix(color.rgb, lutColor.rgb, effectiveLutIntensity);
                    color.rgb = sanitizeColor(color.rgb);
                }

                fragColor = vec4(clamp(sanitizeColor(color.rgb), 0.0, 1.0), color.a);
            }
        """.trimIndent()
    }

}
