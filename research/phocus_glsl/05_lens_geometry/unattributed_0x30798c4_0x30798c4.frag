/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 853517e8aca4276ea2c5a150fbce0d3b1efcad5d72a9787163870dabe8f72378
 * ELF offsets: 0x30798c4
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;

void main() {
    ivec2 sz = textureSize(uInputTexture0, 0);
    ivec2 p  = ivec2(gl_FragCoord.xy);
    float sum = 0.0;
    sum += texelFetch(uInputTexture0, clamp(p+ivec2( 1,-1),ivec2(0),sz-1), 0).r;
    sum += texelFetch(uInputTexture0, clamp(p+ivec2( 0,-1),ivec2(0),sz-1), 0).r;
    sum += texelFetch(uInputTexture0, clamp(p+ivec2(-1,-1),ivec2(0),sz-1), 0).r;
    sum += texelFetch(uInputTexture0, clamp(p+ivec2( 1, 0),ivec2(0),sz-1), 0).r;
    sum += texelFetch(uInputTexture0, clamp(p+ivec2(-1, 0),ivec2(0),sz-1), 0).r;
    sum += texelFetch(uInputTexture0, clamp(p+ivec2( 1, 1),ivec2(0),sz-1), 0).r;
    sum += texelFetch(uInputTexture0, clamp(p+ivec2( 0, 1),ivec2(0),sz-1), 0).r;
    sum += texelFetch(uInputTexture0, clamp(p+ivec2(-1,-1),ivec2(0),sz-1), 0).r; // iOS duplicate
    vec4 center = texelFetch(uInputTexture0, p, 0);
    FragColor = (sum < 6.0 && sum > 2.0) ? vec4(1.0) : center;
}
