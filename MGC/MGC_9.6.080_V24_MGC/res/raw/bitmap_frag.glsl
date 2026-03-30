#version 300 es
#extension GL_OES_EGL_image_external_essl3: require
#extension GL_EXT_YUV_target: enable

precision highp float;

uniform sampler2D u_BitmapTexture;
uniform float u_BitmapOpacity;
uniform samplerExternalOES u_ViewfinderTexture;
uniform vec2 u_ViewfinderSize;

in vec2 v_BitmapTexCoord;

layout (yuv) out vec4 o_FragColor;

void main() {
    vec4 bitmapColor = texture(u_BitmapTexture, v_BitmapTexCoord);
    if (bitmapColor.a < 0.3) {
        discard;
    }

    vec3 viewfinderRgb = texture(u_ViewfinderTexture, gl_FragCoord.xy / u_ViewfinderSize).rgb;
    vec3 outColor = mix(viewfinderRgb, bitmapColor.bgr, u_BitmapOpacity);

    o_FragColor = vec4(rgb_2_yuv(outColor, itu_601_full_range), 1.0);
}
