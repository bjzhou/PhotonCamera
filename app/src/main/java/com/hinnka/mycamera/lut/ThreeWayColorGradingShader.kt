package com.hinnka.mycamera.lut

/**
 * 阴影、中间调和高光三向色彩分级。
 *
 * 着色向量移除自身亮度分量，色相不会隐式改变曝光；明度仅作为色彩偏移的中性分量。
 */
internal object ThreeWayColorGradingShader {
    val GLSL = """
        vec3 gradingHueColor(float hue) {
            vec3 phase = abs(
                fract(vec3(hue) + vec3(0.0, 2.0 / 3.0, 1.0 / 3.0)) * 6.0 - 3.0
            );
            vec3 pureHue = clamp(phase - 1.0, 0.0, 1.0);
            return mix(vec3(1.0), pureHue, 0.72);
        }

        vec3 gradingChromaAxis(float hue, vec3 lumaWeights) {
            vec3 hueColor = gradingHueColor(fract(hue));
            return hueColor - vec3(dot(hueColor, lumaWeights));
        }

        vec3 applyThreeWayColorGrading(
            vec3 color,
            vec3 hues,
            vec3 amounts,
            vec3 luminances,
            float balance,
            float blending,
            vec3 lumaWeights
        ) {
            vec3 safeAmounts = clamp(amounts, 0.0, 1.0);
            vec3 safeLuminances = clamp(luminances, -1.0, 1.0);
            if (max(safeAmounts.x, max(safeAmounts.y, safeAmounts.z)) <= 0.0001) {
                return color;
            }

            vec3 nonNegativeColor = max(color, vec3(0.0));
            float luma = clamp(dot(nonNegativeColor, lumaWeights), 0.0, 1.0);
            float tonalCenter = clamp(0.5 - clamp(balance, -1.0, 1.0) * 0.22, 0.28, 0.72);
            float transition = mix(0.025, 0.18, clamp(blending, 0.0, 1.0));
            float shadowEdge = tonalCenter - 0.18;
            float highlightEdge = tonalCenter + 0.18;

            float shadowWeight = 1.0 - smoothstep(
                shadowEdge - transition,
                shadowEdge + transition,
                luma
            );
            float highlightWeight = smoothstep(
                highlightEdge - transition,
                highlightEdge + transition,
                luma
            );
            float midtoneWeight = max(0.0, 1.0 - shadowWeight - highlightWeight);
            float weightSum = max(shadowWeight + midtoneWeight + highlightWeight, 0.0001);
            vec3 tonalWeights = vec3(
                shadowWeight,
                midtoneWeight,
                highlightWeight
            ) / weightSum;

            vec3 chromaShift =
                gradingChromaAxis(hues.x, lumaWeights) * safeAmounts.x * tonalWeights.x +
                gradingChromaAxis(hues.y, lumaWeights) * safeAmounts.y * tonalWeights.y +
                gradingChromaAxis(hues.z, lumaWeights) * safeAmounts.z * tonalWeights.z;

            float luminanceShift = dot(
                safeLuminances * safeAmounts,
                tonalWeights
            ) * 0.28;
            vec3 gradingShift = chromaShift + vec3(luminanceShift);
            return color + luma * gradingShift * 0.62;
        }
    """.trimIndent()
}
