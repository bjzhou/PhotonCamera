/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: be7df9e0bd89a0467177c64df289d56f33585086266c451a570a4e8f93d011b4
 * ELF offsets: 0x3025d0b
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;
uniform int uSrcOffsetX;
uniform int uSrcOffsetY;

vec4 conductionFn(vec4 g) {
    vec4 kg = g * 655.35; kg = kg*kg; kg = kg*kg;
    return g / (kg + 1.0);
}
void main() {
    ivec2 sz = textureSize(uInputTexture0, 0);
    ivec2 p  = ivec2(gl_FragCoord.xy) + ivec2(uSrcOffsetX, uSrcOffsetY);
    vec4 c  = texelFetch(uInputTexture0, clamp(p,              ivec2(0), sz-1), 0);
    vec4 cN = texelFetch(uInputTexture0, clamp(p+ivec2( 0,-1), ivec2(0), sz-1), 0);
    vec4 cS = texelFetch(uInputTexture0, clamp(p+ivec2( 0, 1), ivec2(0), sz-1), 0);
    vec4 cW = texelFetch(uInputTexture0, clamp(p+ivec2(-1, 0), ivec2(0), sz-1), 0);
    vec4 cE = texelFetch(uInputTexture0, clamp(p+ivec2( 1, 0), ivec2(0), sz-1), 0);
    vec4 s = (conductionFn(cN-c)+conductionFn(cS-c)+conductionFn(cW-c)+conductionFn(cE-c))/4.0;
    FragColor = clamp(c + s, 0.0, 1.0);
}
