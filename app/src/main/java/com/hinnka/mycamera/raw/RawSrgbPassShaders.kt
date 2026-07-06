package com.hinnka.mycamera.raw

/**
 * Final linear RGB to sRGB encoding pass.
 */
object RawSrgbPassShaders {
    val FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;

        vec3 linearToSrgb(vec3 color) {
            vec3 clampedColor = max(color, vec3(0.0));
            vec3 low = clampedColor * 12.92;
            vec3 high = 1.055 * pow(clampedColor, vec3(1.0 / 2.4)) - 0.055;
            bvec3 useHigh = greaterThan(clampedColor, vec3(0.0031308));
            return vec3(
                useHigh.r ? high.r : low.r,
                useHigh.g ? high.g : low.g,
                useHigh.b ? high.b : low.b
            );
        }

        void main() {
            vec3 color = texture(uInputTexture, vTexCoord).rgb;
            fragColor = vec4(linearToSrgb(color), 1.0);
        }
    """.trimIndent()
}
