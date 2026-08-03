/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: bbff5e6f1bc6526815897213461384a89b1a8ec3314f34dce3c3e66018cd73c9
 * ELF offsets: 0x309326d
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;
uniform int uStep;
void main() {
    ivec2 sz  = textureSize(uInputTexture0, 0);
    ivec2 p   = ivec2(gl_FragCoord.xy);
    vec2  me  = vec2(float(p.x) + 0.5, float(p.y) + 0.5);
    vec4  best     = texelFetch(uInputTexture0, p, 0);
    float bestDist = (best.a > 0.5) ? length(me - best.rg) : 1.0e9;
    for (int dy = -1; dy <= 1; dy++) {
        for (int dx = -1; dx <= 1; dx++) {
            if (dx == 0 && dy == 0) continue;
            ivec2 q = clamp(p + ivec2(dx, dy) * uStep, ivec2(0), sz - 1);
            vec4  nb = texelFetch(uInputTexture0, q, 0);
            if (nb.a > 0.5) {
                float d = length(me - nb.rg);
                if (d < bestDist) { bestDist = d; best = nb; }
            }
        }
    }
    FragColor = best;
}
