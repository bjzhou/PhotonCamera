package com.hinnka.mycamera.raw

internal object DarktableSigmoidToneShader {
    val DARKTABLE_SIGMOID_COMBINED_FUNCTIONS = """
        const float DT_SIGMOID_WHITE_TARGET = 1.0;
        const float DT_SIGMOID_PAPER_EXPOSURE = 0.354355423;
        const float DT_SIGMOID_FILM_FOG = 0.00142637086;
        const float DT_SIGMOID_FILM_POWER = 1.5;
        const float DT_SIGMOID_PAPER_POWER = 1.0;
        const float DT_SIGMOID_HUE_PRESERVATION = 1.0;

        vec3 desaturateNegativeValues(vec3 color) {
            float pixelAverage = max((color.r + color.g + color.b) / 3.0, 0.0);
            float minValue = min(color.r, min(color.g, color.b));
            float saturationFactor =
                minValue < 0.0 ? -pixelAverage / (minValue - pixelAverage) : 1.0;
            return vec3(pixelAverage) + saturationFactor * (color - vec3(pixelAverage));
        }

        float darktableSigmoidScalar(float value) {
            float clampedValue = max(value, 0.0);
            float filmResponse = pow(DT_SIGMOID_FILM_FOG + clampedValue, DT_SIGMOID_FILM_POWER);
            float paperResponse = DT_SIGMOID_WHITE_TARGET *
                pow(filmResponse / (DT_SIGMOID_PAPER_EXPOSURE + filmResponse), DT_SIGMOID_PAPER_POWER);
            return clamp(paperResponse, 0.0, DT_SIGMOID_WHITE_TARGET);
        }

        vec3 darktableSigmoidCurve(vec3 color) {
            return vec3(
                darktableSigmoidScalar(color.r),
                darktableSigmoidScalar(color.g),
                darktableSigmoidScalar(color.b)
            );
        }

        ivec3 sigmoidChannelOrder(vec3 color) {
            if (color.r >= color.g) {
                if (color.g > color.b) {
                    return ivec3(2, 1, 0);
                } else if (color.b > color.r) {
                    return ivec3(1, 0, 2);
                } else if (color.b > color.g) {
                    return ivec3(1, 2, 0);
                }
                return ivec3(2, 1, 0);
            }
            if (color.r >= color.b) {
                return ivec3(2, 0, 1);
            } else if (color.b > color.g) {
                return ivec3(0, 1, 2);
            }
            return ivec3(0, 2, 1);
        }

        float channelValue(vec3 color, int index) {
            if (index == 0) return color.r;
            if (index == 1) return color.g;
            return color.b;
        }

        vec3 withChannelValue(vec3 color, int index, float value) {
            if (index == 0) {
                color.r = value;
            } else if (index == 1) {
                color.g = value;
            } else {
                color.b = value;
            }
            return color;
        }

        vec3 preserveSigmoidHueAndEnergy(vec3 inputColor, vec3 perChannel) {
            ivec3 order = sigmoidChannelOrder(inputColor);
            float inputMin = channelValue(inputColor, order.x);
            float inputMid = channelValue(inputColor, order.y);
            float inputMax = channelValue(inputColor, order.z);
            float perMin = channelValue(perChannel, order.x);
            float perMid = channelValue(perChannel, order.y);
            float perMax = channelValue(perChannel, order.z);

            float chroma = inputMax - inputMin;
            float midScale = chroma != 0.0 ? (inputMid - inputMin) / chroma : 0.0;
            float fullHueCorrection = perMin + (perMax - perMin) * midScale;
            float naiveHueMid = mix(perMid, fullHueCorrection, DT_SIGMOID_HUE_PRESERVATION);
            float perChannelEnergy = perChannel.r + perChannel.g + perChannel.b;
            float naiveHueEnergy = perMin + naiveHueMid + perMax;
            float inputMinPlusMid = inputMin + inputMid;
            float blendFactor = inputMinPlusMid != 0.0 ? 2.0 * inputMin / inputMinPlusMid : 0.0;
            float energyTarget = blendFactor * perChannelEnergy + (1.0 - blendFactor) * naiveHueEnergy;

            float outMin;
            float outMid;
            float outMax;
            if (naiveHueMid <= perMid) {
                float correctedMid =
                    ((1.0 - DT_SIGMOID_HUE_PRESERVATION) * perMid +
                        DT_SIGMOID_HUE_PRESERVATION *
                        (midScale * perMax + (1.0 - midScale) * (energyTarget - perMax))) /
                    (1.0 + DT_SIGMOID_HUE_PRESERVATION * (1.0 - midScale));
                outMin = energyTarget - perMax - correctedMid;
                outMid = correctedMid;
                outMax = perMax;
            } else {
                float correctedMid =
                    ((1.0 - DT_SIGMOID_HUE_PRESERVATION) * perMid +
                        DT_SIGMOID_HUE_PRESERVATION *
                        (perMin * (1.0 - midScale) + midScale * (energyTarget - perMin))) /
                    (1.0 + DT_SIGMOID_HUE_PRESERVATION * midScale);
                outMin = perMin;
                outMid = correctedMid;
                outMax = energyTarget - perMin - correctedMid;
            }

            vec3 result = vec3(0.0);
            result = withChannelValue(result, order.x, outMin);
            result = withChannelValue(result, order.y, outMid);
            result = withChannelValue(result, order.z, outMax);
            return result;
        }

        vec3 applyDarktableSigmoid(vec3 color) {
            vec3 positiveColor = desaturateNegativeValues(color);
            vec3 perChannel = darktableSigmoidCurve(positiveColor);
            return preserveSigmoidHueAndEnergy(positiveColor, perChannel);
        }

        vec3 applyEngineTone(vec3 color) {
            return uOutputTransform * applyDarktableSigmoid(color);
        }
    """.trimIndent()

    val DEFINITION = RawEngineToneShaderDefinition(
        engineUniforms = RawEngineTonePass.OUTPUT_TRANSFORM_COMBINED_UNIFORMS,
        engineFunctions = DARKTABLE_SIGMOID_COMBINED_FUNCTIONS,
        includeAdobeProfilePipeline = false,
    )
}

internal class DarktableSigmoidToneAlgorithm(quad: RawFullscreenQuad) :
    RawRenderingEngineToneAlgorithm(quad, DarktableSigmoidToneShader.DEFINITION)
