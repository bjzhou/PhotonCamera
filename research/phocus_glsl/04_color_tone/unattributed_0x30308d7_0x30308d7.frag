/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 0019263ccb2e3a738b9c6014820b560dc84c5c474955760e2baaf968fab453f0
 * ELF offsets: 0x30308d7
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;
void main() {
    ivec2 p = ivec2(gl_FragCoord.xy);
    vec4 e = texelFetch(uInputTexture0, p, 0);
    // fcfr_erode (and fcfr_edge) store 0.0 for edge pixels, 1.0 for non-edge.
    // Seed the JFA with edge pixels (e.r < 0.5).
    if (e.r < 0.5)
        FragColor = vec4(float(p.x) + 0.5, float(p.y) + 0.5, 0.0, 1.0);
    else
        FragColor = vec4(-1.0, -1.0, 0.0, 0.0);
}
