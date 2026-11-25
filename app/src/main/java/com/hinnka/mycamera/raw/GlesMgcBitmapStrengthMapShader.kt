package com.hinnka.mycamera.raw

/** Smooths the bitmap's quarter-resolution detail scale and converts it to MGC Q8 strength. */
internal object GlesMgcBitmapStrengthMapShader {
    val fragment = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;

        uniform sampler2D uBitmapStrength;
        uniform ivec2 uLogicalMax;
        layout(location = 0) out uvec4 oStrength;

        void main() {
            // Extend the already-smoothed logical grid into the denoise alignment padding.
            ivec2 p = min(ivec2(gl_FragCoord.xy), uLogicalMax);
            uint sumQ12 = 0u;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    ivec2 q = clamp(p + ivec2(x, y), ivec2(0), uLogicalMax);
                    // The FP16 detail scale is in [0.35, 1], so it is exactly representable in Q12.
                    sumQ12 += uint(texelFetch(uBitmapStrength, q, 0).r * 4096.0);
                }
            }
            // Q12 -> Q8 and a 9-sample average give a divisor of 16 * 9. Ties round up.
            uint strength = (sumQ12 + 72u) / 144u;
            oStrength = uvec4(strength, strength, strength, 0u);
        }
    """.trimIndent()
}
