/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 45417504420c2e766d3dc2ace48fc785e9aa1f665d9aa42a7968dd9d0117a8b6
 * ELF offsets: 0x30218ea
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;   // texProcess (RGBX)
uniform sampler2D uInputTexture1;   // texDist (RgbaF)
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
// Gradient mask with ±0.5 amount transition band (mirrors GenerateFringeMask).
// dist = sqrt(R²+G²) where R=|dx|/255, G=|dy|/255, so dist_pixels = dist*255.
// uZoom = 1/previewScale; uZoom/255 scales amount → normalised dist units.
float computeGrad(float dist, float amount) {
    float scale = (1.0 + sqrt(2.0)) * 0.1 * uZoom / 255.0;
    float amt0  = clamp(amount - 0.5, 0.0, 90.0) * scale;
    float amt1  = clamp(amount + 0.5, 0.0, 90.0) * scale;
    if (dist < amt0) return 1.0;
    if (amt1 > amt0 && dist <= amt1) return (amt1 - dist) / (amt1 - amt0);
    return 0.0;
}
void main() {
    ivec2 sz = textureSize(uInputTexture0, 0);
    ivec2 p  = ivec2(gl_FragCoord.xy);
    vec4 src = texelFetch(uInputTexture0, clamp(p, ivec2(0), sz-1), 0);

    // 3×3 MAX filter on JFA distance field to suppress staircase artefacts.
    // Isolated pixels with artificially small JFA distance are corrected to the
    // correct larger value from their neighbours; normal fringe-zone pixels are unaffected.
    float dist = 0.0;
    for (int dy = -1; dy <= 1; dy++) {
        for (int dx = -1; dx <= 1; dx++) {
            vec2 d = texelFetch(uInputTexture1, clamp(p + ivec2(dx, dy), ivec2(0), sz-1), 0).rg;
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
    FragColor = vec4(fringeMask, 0.0, 0.0, 1.0);
}
