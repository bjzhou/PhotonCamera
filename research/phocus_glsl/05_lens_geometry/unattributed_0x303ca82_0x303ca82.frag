/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: eca183311e10a8a3832fb3b176a9a9df0b7c91c53f8ffdba2ea6c20302d050a1
 * ELF offsets: 0x303ca82
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
    vec2 res = texelFetch(uInputTexture0, p, 0).rg;
    for (int off = -8; off <= 8; off++) {
        ivec2 sp  = clamp(p + ivec2(off, 0), ivec2(0), sz-1);
        vec2  pix = texelFetch(uInputTexture0, sp, 0).rg;
        pix.g += abs(float(off)) * STEP;
        if ((pix.x*pix.x + pix.y*pix.y) < (res.x*res.x + res.y*res.y))
            res = pix;
    }
    FragColor = vec4(res.x, res.y, 1.0, 1.0);
}
