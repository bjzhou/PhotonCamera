/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 121ebee892224e11b60d72f04e14bd10e2c685e2fdc66d5f4f8dae647bd0e421
 * ELF offsets: 0x30776ff
 * Symbols: gamma_hasselblad_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform float uHDRMaxGain;
uniform float uHasselbladHdrRgbLimit;
uniform float uGammaHasselbladRgb;

void main() {
    vec4 res = texture(uInputTexture0, TexCoord);
    vec3 pixProc = res.rgb * uHDRMaxGain;
    pixProc = pow(pixProc, vec3(1.0 / uGammaHasselbladRgb));
    res.rgb = pixProc / uHasselbladHdrRgbLimit;
    FragColor = res;
}
