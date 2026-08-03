/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: e42cf5f03a11d8eac27fcc414f6c9d09ee9fd18432530f1d574e0269b8e3139a
 * ELF offsets: 0x3003732
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;   // half-res fringe mask (R channel)

void main() {
    ivec2 p    = ivec2(gl_FragCoord.xy);  // full-res output coord
    ivec2 inSz = textureSize(uInputTexture0, 0);
    // Upscale2xMask: x1=x/2, x2=min(x1+1,W-1), y1=y/2, y2=min(y1+1,H-1), out=max of 4
    int x1 = min(p.x / 2, inSz.x - 1);
    int x2 = min(x1 + 1,  inSz.x - 1);
    int y1 = min(p.y / 2, inSz.y - 1);
    int y2 = min(y1 + 1,  inSz.y - 1);
    float m00 = texelFetch(uInputTexture0, ivec2(x1, y1), 0).r;
    float m10 = texelFetch(uInputTexture0, ivec2(x2, y1), 0).r;
    float m01 = texelFetch(uInputTexture0, ivec2(x1, y2), 0).r;
    float m11 = texelFetch(uInputTexture0, ivec2(x2, y2), 0).r;
    float m = max(max(m00, m10), max(m01, m11));
    FragColor = vec4(m, 0.0, 0.0, 1.0);
}
