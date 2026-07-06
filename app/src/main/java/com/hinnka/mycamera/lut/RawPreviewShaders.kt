package com.hinnka.mycamera.lut

internal object RawPreviewShaders {
    val LINEAR_INPUT_FRAGMENT_SHADER = """
        #version 300 es
        #extension GL_OES_EGL_image_external_essl3 : require
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform samplerExternalOES uCameraTexture;
        uniform float uExposureEv;

        vec3 srgbToLinear(vec3 color) {
            vec3 clampedColor = max(color, vec3(0.0));
            vec3 low = clampedColor / 12.92;
            vec3 high = pow((clampedColor + 0.055) / 1.055, vec3(2.4));
            bvec3 useHigh = greaterThan(clampedColor, vec3(0.04045));
            return vec3(
                useHigh.r ? high.r : low.r,
                useHigh.g ? high.g : low.g,
                useHigh.b ? high.b : low.b
            );
        }

        void main() {
            vec3 color = texture(uCameraTexture, vTexCoord).rgb;
            color = srgbToLinear(color);
            color *= exp2(uExposureEv);
            fragColor = vec4(color, 1.0);
        }
    """.trimIndent()
}
