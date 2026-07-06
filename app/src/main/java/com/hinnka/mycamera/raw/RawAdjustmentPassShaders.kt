package com.hinnka.mycamera.raw

import com.hinnka.mycamera.lut.ShadowsHighlightsShader

/**
 * Final RAW adjustment pass.
 *
 * Input is linear output RGB from RawEngineTonePassShaders. This optional pass applies
 * shadows/highlights and black/white levels together, then writes linear output for the sRGB pass.
 */
object RawAdjustmentPassShaders {
    val FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform float uHighlights;
        uniform float uShadows;
        uniform float uBlacks;
        uniform float uWhites;

        vec3 sampleToneSource(vec2 uv) {
            return texture(uInputTexture, clamp(uv, vec2(0.0), vec2(1.0))).rgb;
        }

        vec3 shRgbToXyz(vec3 rgb) {
            return mat3(
                0.4360747, 0.2225045, 0.0139322,
                0.3850649, 0.7168786, 0.0971045,
                0.1430804, 0.0606169, 0.7141733
            ) * rgb;
        }

        vec3 shXyzToRgb(vec3 xyz) {
            return mat3(
                 3.1338561, -0.9787684,  0.0719453,
                -1.6168667,  1.9161415, -0.2289914,
                -0.4906146,  0.0334540,  1.4052427
            ) * xyz;
        }

        ${ShadowsHighlightsShader.GLSL}

        const vec3 BW_LUMA = vec3(0.2126, 0.7152, 0.0722);
        const float BW_EPSILON = 0.000001;

        float blackInputLevel(float blacks) {
            float value = clamp(blacks, -1.0, 1.0);
            return value < 0.0 ? -value * 0.18 : -value * 0.12;
        }

        float whiteInputLevel(float whites) {
            float value = clamp(whites, -1.0, 1.0);
            return value > 0.0 ? mix(1.0, 0.72, value) : mix(1.0, 1.55, -value);
        }

        float applyInputLevelsToLuma(float luma, float blacks, float whites) {
            float blackLevel = blackInputLevel(blacks);
            float whiteLevel = max(whiteInputLevel(whites), blackLevel + 0.05);
            return max((luma - blackLevel) / max(whiteLevel - blackLevel, BW_EPSILON), 0.0);
        }

        vec3 applyBlackWhiteLevels(vec3 color) {
            float blacks = clamp(uBlacks, -1.0, 1.0);
            float whites = clamp(uWhites, -1.0, 1.0);
            if (abs(blacks) < 0.001 && abs(whites) < 0.001) {
                return color;
            }

            vec3 positiveColor = max(color, vec3(0.0));
            float luma = dot(positiveColor, BW_LUMA);
            float adjustedLuma = applyInputLevelsToLuma(luma, blacks, whites);

            if (luma <= BW_EPSILON) {
                return vec3(adjustedLuma);
            }
            return color * (adjustedLuma / luma);
        }

        void main() {
            vec3 color = texture(uInputTexture, vTexCoord).rgb;
            color = applyShadowsHighlights(color, vTexCoord);
            color = applyBlackWhiteLevels(color);
            fragColor = vec4(color, 1.0);
        }
    """.trimIndent()
}
