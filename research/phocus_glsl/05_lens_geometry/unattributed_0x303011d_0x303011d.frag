/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 4788646eb655664ed70590e8ac61a52dd2bb31df68599569683e0569158980a0
 * ELF offsets: 0x303011d
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
    bool r1 = (hStart <= h && h <= hStop);
    bool r2 = !(hStop < h && h < hStart);
    return (hStart < hStop) ? r1 : r2;
}
void main() {
    ivec2 srcSz = textureSize(uInputTexture0, 0);
    ivec2 dstSz = textureSize(uInputTexture1, 0);
    ivec2 p     = ivec2(gl_FragCoord.xy);

    // Sample source and distance
    vec4 src = texelFetch(uInputTexture0,
                          clamp(p + ivec2(uSrcOffsetX, uSrcOffsetY), ivec2(0), srcSz-1), 0);
    vec2 dxy = texelFetch(uInputTexture1, clamp(p, ivec2(0), dstSz-1), 0).rg;

    // Hue masks + amount
    float h = hueOf(src);
    float amount = 0.0;
    if      (hueInRange(h, uPurpleStart, uPurpleStop)) amount = clamp(uPurpleAmount, 0.0, 100.0);
    else if (hueInRange(h, uGreenStart,  uGreenStop))  amount = clamp(uGreenAmount,  0.0, 100.0);

    // Compare distances → fringe mask
    float dist   = sqrt(dxy.x*dxy.x + dxy.y*dxy.y);
    float scaled = (1.0 + sqrt(2.0)) * min(90.0, amount) * 0.1 * uZoom;
    float fringeMask = (dist <= scaled / 255.0) ? 1.0 : 0.0;

    // Premultiply by (1 − mask)
    float m = 1.0 - fringeMask;
    FragColor = vec4(src.r*m, src.g*m, src.b*m, m);
}
