package com.hinnka.mycamera.raw

internal object AgXToneShader {
    val AGX_COMBINED_UNIFORMS = """
        uniform mat3 uOutputTransform;
        ${RawEngineTonePass.RAW_TONE_MAPPING_COMBINED_UNIFORMS}
    """.trimIndent()
    val AGX_COMBINED_FUNCTIONS = """
        const float DT_AGX_EPSILON = 0.000001;
        const float DT_AGX_DEFAULT_RANGE_EV = 16.5;
        const float DT_AGX_MIN_RANGE_EV = 0.2;
        const float DT_AGX_CURVE_GAMMA = 2.2;
        const float DT_AGX_PIVOT_Y = 0.4586564469;
        const float DT_AGX_SLOPE = 3.0;
        const float DT_AGX_HUE_MIX = 0.6;

        vec3 agxSanitize(vec3 color) {
            color.r = isnan(color.r) ? 0.0 : clamp(color.r, -1000000.0, 1000000.0);
            color.g = isnan(color.g) ? 0.0 : clamp(color.g, -1000000.0, 1000000.0);
            color.b = isnan(color.b) ? 0.0 : clamp(color.b, -1000000.0, 1000000.0);
            return color;
        }

        vec3 agxBaseToRendering(vec3 color) {
            return vec3(
                dot(vec3(0.8535098168, 0.0870498824, 0.0594403008), color),
                dot(vec3(0.1209748385, 0.7561015246, 0.1229236368), color),
                dot(vec3(0.0964595535, 0.0689548151, 0.8345856314), color)
            );
        }

        vec3 agxRenderingToBase(vec3 color) {
            return vec3(
                dot(vec3(1.1203173359, -0.0999545154, -0.0203628205), color),
                dot(vec3(-0.1213527019, 1.1417155224, -0.0203628205), color),
                dot(vec3(-0.1213527019, -0.0999545154, 1.2213072173), color)
            );
        }

        vec3 agxCompressIntoGamut(vec3 color) {
            const vec3 luminanceCoeffs = vec3(0.2658180370, 0.5984698605, 0.1357121025);
            float inputY = dot(color, luminanceCoeffs);
            float maxRgb = max(color.r, max(color.g, color.b));

            vec3 opponentRgb = vec3(maxRgb) - color;
            float opponentY = dot(opponentRgb, luminanceCoeffs);
            float maxOpponent = max(opponentRgb.r, max(opponentRgb.g, opponentRgb.b));
            float yCompensateNegative = maxOpponent - opponentY + inputY;

            float minRgb = min(color.r, min(color.g, color.b));
            float offset = max(-minRgb, 0.0);
            vec3 rgbOffset = color + vec3(offset);

            float maxOffsetRgb = max(rgbOffset.r, max(rgbOffset.g, rgbOffset.b));
            vec3 opponentOffsetRgb = vec3(maxOffsetRgb) - rgbOffset;
            float maxInverseOffset = max(
                opponentOffsetRgb.r,
                max(opponentOffsetRgb.g, opponentOffsetRgb.b)
            );
            float inverseOffsetY = dot(opponentOffsetRgb, luminanceCoeffs);
            float yNew = dot(rgbOffset, luminanceCoeffs);
            yNew = maxInverseOffset - inverseOffsetY + yNew;

            float luminanceRatio =
                (yNew > yCompensateNegative && yNew > DT_AGX_EPSILON)
                    ? yCompensateNegative / yNew
                    : 1.0;
            return luminanceRatio * rgbOffset;
        }

        float agxLogEncode(float value) {
            float relativeValue = max(DT_AGX_EPSILON, value / 0.18);
            float blackEv = min(uAgxBlackRelativeExposure, uAgxWhiteRelativeExposure - DT_AGX_MIN_RANGE_EV);
            float whiteEv = max(uAgxWhiteRelativeExposure, blackEv + DT_AGX_MIN_RANGE_EV);
            float rangeEv = max(DT_AGX_MIN_RANGE_EV, whiteEv - blackEv);
            return clamp((log2(max(relativeValue, 0.0)) - blackEv) / rangeEv, 0.0, 1.0);
        }

        float agxSigmoid(float value, float power) {
            return value / pow(1.0 + pow(value, power), 1.0 / power);
        }

        float agxScaledSigmoid(
            float value,
            float scale,
            float slope,
            float power,
            float transitionX,
            float transitionY
        ) {
            return scale * agxSigmoid(slope * (value - transitionX) / scale, power) + transitionY;
        }

        float agxScale(
            float limitX,
            float limitY,
            float transitionX,
            float transitionY,
            float slope,
            float power
        ) {
            float projectedRise = slope * max(DT_AGX_EPSILON, limitX - transitionX);
            float actualRise = max(DT_AGX_EPSILON, limitY - transitionY);
            float base = max(
                DT_AGX_EPSILON,
                pow(actualRise, -power) - pow(projectedRise, -power)
            );
            return min(1000000000.0, pow(base, -1.0 / power));
        }

        float agxFallbackToe(
            float value,
            float targetBlack,
            float coefficient,
            float power
        ) {
            return value < 0.0
                ? targetBlack
                : targetBlack + max(0.0, coefficient * pow(value, power));
        }

        float agxFallbackShoulder(
            float value,
            float targetWhite,
            float coefficient,
            float power
        ) {
            return value >= 1.0
                ? targetWhite
                : targetWhite - max(0.0, coefficient * pow(1.0 - value, power));
        }

        float agxCurve(float value) {
            float blackEv = min(uAgxBlackRelativeExposure, uAgxWhiteRelativeExposure - DT_AGX_MIN_RANGE_EV);
            float whiteEv = max(uAgxWhiteRelativeExposure, blackEv + DT_AGX_MIN_RANGE_EV);
            float rangeEv = max(DT_AGX_MIN_RANGE_EV, whiteEv - blackEv);
            float pivotX = clamp(-blackEv / rangeEv, DT_AGX_EPSILON, 1.0 - DT_AGX_EPSILON);
            float pivotY = DT_AGX_PIVOT_Y;
            float slope = DT_AGX_SLOPE * (rangeEv / DT_AGX_DEFAULT_RANGE_EV);
            float targetBlack = 0.0;
            float targetWhite = 1.0;

            float toePower = max(0.01, uAgxToe);
            float toeTransitionX = pivotX;
            float toeTransitionY = pivotY;
            float toeScale = -agxScale(
                1.0,
                1.0 - targetBlack,
                1.0 - toeTransitionX,
                1.0 - toeTransitionY,
                slope,
                toePower
            );
            float toeLengthX = max(DT_AGX_EPSILON, toeTransitionX);
            float toeDyTransitionToLimit = max(DT_AGX_EPSILON, toeTransitionY - targetBlack);
            bool needConvexToe = toeDyTransitionToLimit / toeLengthX > slope;
            float toeFallbackPower = slope * toeLengthX / toeDyTransitionToLimit;
            float toeFallbackCoefficient = toeDyTransitionToLimit / pow(toeLengthX, toeFallbackPower);

            float intercept = toeTransitionY - slope * toeTransitionX;

            float shoulderPower = max(0.01, uAgxShoulder);
            float shoulderTransitionX = pivotX;
            float shoulderTransitionY = pivotY;
            float shoulderScale = agxScale(
                1.0,
                targetWhite,
                shoulderTransitionX,
                shoulderTransitionY,
                slope,
                shoulderPower
            );
            float shoulderLengthX = max(DT_AGX_EPSILON, 1.0 - shoulderTransitionX);
            float shoulderDyTransitionToLimit = max(DT_AGX_EPSILON, targetWhite - shoulderTransitionY);
            bool needConcaveShoulder = shoulderDyTransitionToLimit / shoulderLengthX > slope;
            float shoulderFallbackPower = slope * shoulderLengthX / shoulderDyTransitionToLimit;
            float shoulderFallbackCoefficient =
                shoulderDyTransitionToLimit / pow(shoulderLengthX, shoulderFallbackPower);

            float result;
            if (value < toeTransitionX) {
                result = needConvexToe
                    ? agxFallbackToe(value, targetBlack, toeFallbackCoefficient, toeFallbackPower)
                    : agxScaledSigmoid(
                        value,
                        toeScale,
                        slope,
                        toePower,
                        toeTransitionX,
                        toeTransitionY
                    );
            } else if (value <= shoulderTransitionX) {
                result = slope * value + intercept;
            } else {
                result = needConcaveShoulder
                    ? agxFallbackShoulder(
                        value,
                        targetWhite,
                        shoulderFallbackCoefficient,
                        shoulderFallbackPower
                    )
                    : agxScaledSigmoid(
                        value,
                        shoulderScale,
                        slope,
                        shoulderPower,
                        shoulderTransitionX,
                        shoulderTransitionY
                    );
            }
            return clamp(result, targetBlack, targetWhite);
        }

        vec3 agxRgbToHsv(vec3 color) {
            vec4 k = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
            vec4 p = mix(vec4(color.bg, k.wz), vec4(color.gb, k.xy), step(color.b, color.g));
            vec4 q = mix(vec4(p.xyw, color.r), vec4(color.r, p.yzx), step(p.x, color.r));
            float d = q.x - min(q.w, q.y);
            float e = 0.0000000001;
            return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
        }

        vec3 agxHsvToRgb(vec3 hsv) {
            vec4 k = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
            vec3 p = abs(fract(hsv.xxx + k.xyz) * 6.0 - k.www);
            return hsv.z * mix(k.xxx, clamp(p - k.xxx, 0.0, 1.0), hsv.y);
        }

        float agxLerpHue(float originalHue, float processedHue, float mixRatio) {
            float shortestDistance = processedHue - originalHue - round(processedHue - originalHue);
            float mixedHue = (1.0 - mixRatio) * shortestDistance + originalHue;
            return mixedHue - floor(mixedHue);
        }

        vec3 agxToneMapping(vec3 color) {
            vec3 hsvBefore = agxRgbToHsv(color);
            vec3 transformed = vec3(
                agxCurve(agxLogEncode(color.r)),
                agxCurve(agxLogEncode(color.g)),
                agxCurve(agxLogEncode(color.b))
            );
            transformed = pow(max(transformed, vec3(0.0)), vec3(DT_AGX_CURVE_GAMMA));

            vec3 hsvAfter = agxRgbToHsv(transformed);
            hsvAfter.x = agxLerpHue(hsvBefore.x, hsvAfter.x, DT_AGX_HUE_MIX);
            return agxHsvToRgb(hsvAfter);
        }

        vec3 applyEngineTone(vec3 color) {
            vec3 baseRgb = agxCompressIntoGamut(agxSanitize(color));
            vec3 renderingRgb = agxBaseToRendering(baseRgb);
            vec3 tonedRenderingRgb = agxToneMapping(renderingRgb);
            vec3 baseOut = agxRenderingToBase(tonedRenderingRgb);
            return uOutputTransform * baseOut;
        }
    """.trimIndent()

    val DEFINITION = RawEngineToneShaderDefinition(
        engineUniforms = AGX_COMBINED_UNIFORMS,
        engineFunctions = AGX_COMBINED_FUNCTIONS,
        includeAdobeProfilePipeline = false,
    )
}

internal class AgXToneAlgorithm(quad: RawFullscreenQuad) :
    RawRenderingEngineToneAlgorithm(quad, AgXToneShader.DEFINITION)
