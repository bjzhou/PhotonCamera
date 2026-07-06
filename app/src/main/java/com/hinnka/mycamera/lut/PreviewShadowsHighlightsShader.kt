package com.hinnka.mycamera.lut

object PreviewShadowsHighlightsShader {
    val GLSL = """
        vec3 applyPreviewShadowsHighlights(vec3 inputColor) {
            vec3 color = inputColor;
            float luma = getLuma(color);
            float highlights = clamp(uHighlights, -1.0, 1.0);
            float shadows = clamp(uShadows, -1.0, 1.0);

            if (abs(highlights) > 0.001 || abs(shadows) > 0.001) {
                float highlightMask = smoothstep(0.5, 1.0, luma);
                float shadowMask = 1.0 - smoothstep(0.0, 0.5, luma);

                if (abs(highlights) > 0.001) {
                    float highlightFactor = 1.0 + highlights * (highlights > 0.0 ? 0.7 : 0.3);
                    color = mix(color, color * highlightFactor, highlightMask);
                }

                if (abs(shadows) > 0.001) {
                    vec3 shadowTarget = (shadows > 0.0)
                        ? (mix(color, vec3(luma), shadows * 0.2) + color * shadows * 0.5)
                        : (color * (1.0 + shadows * 0.5));
                    color = mix(color, shadowTarget, shadowMask);
                }
            }

            return sanitizeColor(color);
        }
    """.trimIndent()
}
