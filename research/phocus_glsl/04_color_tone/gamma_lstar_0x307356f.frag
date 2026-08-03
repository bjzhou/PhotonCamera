/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 3bdbd36600685c42e163ed2aed8e89cb2135cb71e3601d7b002681c923cdcaaf
 * ELF offsets: 0x307356f
 * Symbols: gamma_lstar_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform float uHDRMaxGain;
uniform float uHasselbladHdrRgbLimit;
uniform float uLStarEpsilon;
uniform float uLStarKappa;

void main() {
    const float eps = uLStarEpsilon;
    const float kap = uLStarKappa;
    vec4 res = texture(uInputTexture0, TexCoord);
    vec3 pixProc = res.rgb * uHDRMaxGain;
    vec3 vLo = pixProc * kap / 100.0;
    vec3 vHi = 1.16 * pow(pixProc, vec3(1.0 / 3.0)) - 0.16;
    vec3 pixGamma;
    pixGamma.r = pixProc.r <= eps ? vLo.r : vHi.r;
    pixGamma.g = pixProc.g <= eps ? vLo.g : vHi.g;
    pixGamma.b = pixProc.b <= eps ? vLo.b : vHi.b;
    res.rgb = pixGamma / uHasselbladHdrRgbLimit;
    
    FragColor = res;
}
