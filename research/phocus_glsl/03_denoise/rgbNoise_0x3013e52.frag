/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 7487a80208c3945d4a0dbdefb2ae83b6696e263985891ee717e0b57ee421b82a
 * ELF offsets: 0x3013e52
 * Symbols: rgbNoiseShader
 */

#version 300 es
precision highp float;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D inputTexture;
uniform float blackOffset;
//uniform vec4 compVecThr;

void main() {
    vec4 res = texture(inputTexture, TexCoord);

    // 对应kernel0: res.rgb = max(vec3(.0), res.rgb - blackOffset);
    res.rgb = max(vec3(0.0), res.rgb - blackOffset);
    // res.rgb = max(res.rgb, compVecThr.rgb);

    FragColor = res;
}
