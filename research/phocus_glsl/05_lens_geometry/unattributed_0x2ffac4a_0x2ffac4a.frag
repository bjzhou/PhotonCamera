/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: cf8cb93c8b2a90f34a0a41f45509b621135134b1785a57f49437fb5e1813b76b
 * ELF offsets: 0x2ffac4a
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
    const float STEP = 1.0 / 255.0;
    float res = 1.0;
    for (int off = -8; off <= 8; off++) {
        ivec2 sp = clamp(p + ivec2(0, off), ivec2(0), sz-1);
        res = min(res, abs(float(off)) * STEP + texelFetch(uInputTexture0, sp, 0).r);
    }
    float yDist = (res < 1.0) ? 0.0 : 1.0;
    FragColor = vec4(res, yDist, 1.0, 1.0);
}
