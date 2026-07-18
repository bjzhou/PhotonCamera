/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 05317b455a0d1d6d9afaa741b05bc34fe23073556dabb500068780abae76dd1c
 * ELF offsets: 0x3038f66
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;  // texProcess (RGBX at processRes)
uniform sampler2D uInputTexture1;  // texHalfMask (R = fringeMask at processRes)

void main() {
    ivec2 p          = ivec2(gl_FragCoord.xy);
    float fringeMask = texelFetch(uInputTexture1, p, 0).r;
    // Seed ALL non-fringe pixels as potential color sources.
    // CPU InpaintTexture uses all non-fringe (Done) boundary pixels regardless of hue,
    // so the GPU should do the same to get neutral boundary colors for replacement.
    if (fringeMask < 0.01) {
        FragColor = vec4(float(p.x) + 0.5, float(p.y) + 0.5, 0.0, 1.0);
    } else {
        FragColor = vec4(-1.0, -1.0, 0.0, 0.0);
    }
}
