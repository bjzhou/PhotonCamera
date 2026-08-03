/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: c677a27ae799ca3cd71bd19448694c490a92a3d4f16b9c8a76dbb9c487064425
 * ELF offsets: 0x307dbfe
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;
uniform sampler2D uInputTexture1;

void main() {
    ivec2 p    = ivec2(gl_FragCoord.xy);
    vec4  src  = texelFetch(uInputTexture0, p, 0);

    // 2× bilinear upscale of the lower-level texture
    // Output pixel p maps to lower-level position p * 0.5
    ivec2 lowerSz = textureSize(uInputTexture1, 0);
    vec2  lf   = vec2(p) * 0.5;          // continuous position in lower space
    ivec2 base = ivec2(lf);              // floor → lower texel index
    vec2  frac = lf - vec2(base);        // fractional position [0,1)
    vec4 s00 = texelFetch(uInputTexture1, clamp(base+ivec2(0,0), ivec2(0), lowerSz-1), 0);
    vec4 s10 = texelFetch(uInputTexture1, clamp(base+ivec2(1,0), ivec2(0), lowerSz-1), 0);
    vec4 s01 = texelFetch(uInputTexture1, clamp(base+ivec2(0,1), ivec2(0), lowerSz-1), 0);
    vec4 s11 = texelFetch(uInputTexture1, clamp(base+ivec2(1,1), ivec2(0), lowerSz-1), 0);
    vec4 bg   = mix(mix(s00, s10, frac.x), mix(s01, s11, frac.x), frac.y);

    FragColor = src + bg * (1.0 - src.a);
}
