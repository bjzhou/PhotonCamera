/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 5032f05ce79cbaba7a0539c9611235df091957795672a17f3d77457625d85336
 * ELF offsets: 0x3043a7a
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;
uniform sampler2D uInputTexture1;
uniform int   uSrcOffsetX;
uniform int   uSrcOffsetY;
uniform float uPurpleStart;
uniform float uPurpleStop;
uniform float uGreenStart;
uniform float uGreenStop;
uniform float uPurpleAmount;
uniform float uGreenAmount;
uniform float uZoom;

float hueOf(vec4 v) {
    float mx = max(v.r, max(v.g, v.b));
    float mn = min(v.r, min(v.g, v.b));
    if (mx <= 0.0 || (mx-mn)/mx <= 0.05) return -1.0;
    float c60 = 60.0/(mx-mn);
    if (mx == v.r) return (v.g >= v.b) ? c60*(v.g-v.b) : c60*(v.g-v.b)+360.0;
    if (mx == v.g) return c60*(v.b-v.r)+120.0;
    return c60*(v.r-v.g)+240.0;
}
bool hueInRange(float h, float hStart, float hStop) {
    if (h < 0.0) return false;
    float hAdj = h;
    if (hAdj < hStart) hAdj += 360.0;
    return (hStart < hAdj && hAdj <= hStop);
}
float computeGrad(float dist, float amount) {
    float scale = (1.0 + sqrt(2.0)) * 0.1 * uZoom / 255.0;
    float amt0  = clamp(amount - 0.5, 0.0, 90.0) * scale;
    float amt1  = clamp(amount + 0.5, 0.0, 90.0) * scale;
    if (dist < amt0) return 1.0;
    if (amt1 > amt0 && dist <= amt1) return (amt1 - dist) / (amt1 - amt0);
    return 0.0;
}
void main() {
    ivec2 srcSz = textureSize(uInputTexture0, 0);
    ivec2 dstSz = textureSize(uInputTexture1, 0);
    ivec2 p     = ivec2(gl_FragCoord.xy);

    vec4 src = texelFetch(uInputTexture0,
                          clamp(p + ivec2(uSrcOffsetX, uSrcOffsetY), ivec2(0), srcSz-1), 0);

    float dist = 0.0;
    ivec2 distBase = p + ivec2(uSrcOffsetX, uSrcOffsetY);
    for (int dy = -1; dy <= 1; dy++) {
        for (int dx = -1; dx <= 1; dx++) {
            vec2 d = texelFetch(uInputTexture1,
                                clamp(distBase + ivec2(dx, dy), ivec2(0), dstSz-1), 0).rg;
            dist = max(dist, sqrt(d.x*d.x + d.y*d.y));
        }
    }

    float h = hueOf(src);
    float purpleGrad = 0.0, greenGrad = 0.0;
    if (uPurpleAmount > 0.0 && hueInRange(h, uPurpleStart, uPurpleStop))
        purpleGrad = computeGrad(dist, uPurpleAmount);
    if (uGreenAmount > 0.0 && hueInRange(h, uGreenStart, uGreenStop))
        greenGrad  = computeGrad(dist, uGreenAmount);

    float fringeMask = min(1.0, purpleGrad + greenGrad);
    float m = 1.0 - fringeMask;
    FragColor = vec4(src.r*m, src.g*m, src.b*m, m);
}
