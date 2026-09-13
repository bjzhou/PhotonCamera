package com.hinnka.mycamera.lut

/** Shared display-RGB contrast curve for preview, still images and video. */
internal object ContrastShader {
    val GLSL = """
        vec3 applyContrastSCurve(vec3 color, float contrast) {
            float slope = clamp(contrast, 0.5, 1.5);
            if (slope == 1.0) return color;

            // Normalized algebraic sigmoid: fixes 0, 0.5 and 1, with midpoint
            // derivative equal to contrast. Below 1 it becomes an inverse S.
            vec3 bounded = clamp(color, 0.0, 1.0);
            vec3 centered = bounded * 2.0 - 1.0;
            float slopeSquared = slope * slope;
            vec3 curved = 0.5 + 0.5 * slope * centered
                * inversesqrt(vec3(1.0) + (slopeSquared - 1.0) * centered * centered);

            // Continue along the endpoint tangents (derivative 1 / slope^2)
            // so exposure overflow stays continuous and is not clipped here.
            return curved + (color - bounded) / slopeSquared;
        }
    """.trimIndent()
}
