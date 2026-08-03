/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 64f9d74a6693cf3660eb633e889e91c4f7e549865bbd55d05ca1472287c93990
 * ELF offsets: 0x3053268
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;   // full-res texSrc

void main() {
    ivec2 p     = ivec2(gl_FragCoord.xy);  // half-res output coord
    ivec2 srcSz = textureSize(uInputTexture0, 0);
    ivec2 s     = p * 2;
    vec4 s00 = texelFetch(uInputTexture0, clamp(s + ivec2(0, 0), ivec2(0), srcSz-1), 0);
    vec4 s10 = texelFetch(uInputTexture0, clamp(s + ivec2(1, 0), ivec2(0), srcSz-1), 0);
    vec4 s01 = texelFetch(uInputTexture0, clamp(s + ivec2(0, 1), ivec2(0), srcSz-1), 0);
    vec4 s11 = texelFetch(uInputTexture0, clamp(s + ivec2(1, 1), ivec2(0), srcSz-1), 0);
    FragColor = (s00 + s10 + s01 + s11) * 0.25;
}
