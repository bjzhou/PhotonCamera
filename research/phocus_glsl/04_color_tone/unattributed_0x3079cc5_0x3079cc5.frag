/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: d54349859e4310755952cd52a6dce6eacd6e4a8f4cb54b3824a086bd397d19b8
 * ELF offsets: 0x3079cc5
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;
uniform sampler2D uInputTexture1;
uniform sampler2D uInputTexture2;
uniform int   uSrcOffsetX;
uniform int   uSrcOffsetY;
uniform float uPurpleStart;
uniform float uPurpleStop;
uniform float uGreenStart;
uniform float uGreenStop;
uniform float uPurpleAmount;
uniform float uGreenAmount;

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
    return (hStart < hStop) ? (hStart <= h && h <= hStop)
                            : !(hStop < h && h < hStart);
}
float rgbSum(vec4 v)  { return v.r + v.g + v.b; }
float simpSat(vec4 c) { return max(c.r,max(c.g,c.b)) - min(c.r,min(c.g,c.b)); }

vec4 limitSaturation(vec4 color, vec4 limitColor) {
    float satNew = simpSat(color), satOld = simpSat(limitColor);
    float sat    = satOld * min(1.1, (satOld > 0.0) ? satNew/satOld : 0.0);
    float factor = (satNew > 0.0) ? sat/satNew : 0.0;
    float c = (color.r+color.g+color.b)/3.0;
    return (color - vec4(c,c,c,color.a)) * factor + vec4(c,c,c,color.a);
}
float clampedSlope(float x, float x1, float y1, float x2, float y2) {
    float a = (y2-y1)/(x2-x1);
    return clamp(a*x + (y1-a*x1), min(y1,y2), max(y1,y2));
}

void main() {
    ivec2 p      = ivec2(gl_FragCoord.xy);
    ivec2 srcSz  = textureSize(uInputTexture0, 0);

    vec4  res    = texelFetch(uInputTexture0,
                              clamp(p + ivec2(uSrcOffsetX, uSrcOffsetY), ivec2(0), srcSz-1), 0);
    vec4  premul = texelFetch(uInputTexture1, p, 0);
    vec4  lr     = texelFetch(uInputTexture2, clamp(p, ivec2(0), textureSize(uInputTexture2,0)-1), 0);

    // Fringe mask: premul.a = (1 − fringeMask) → fringeMask = 1 − premul.a
    float fringeMask = 1.0 - premul.a;

    // Amount (recompute inline from source hue)
    float h    = hueOf(res);
    float aVal = 0.0;
    if      (hueInRange(h, uPurpleStart, uPurpleStop)) aVal = clamp(uPurpleAmount, 0.0, 100.0);
    else if (hueInRange(h, uGreenStart,  uGreenStop))  aVal = clamp(uGreenAmount,  0.0, 100.0);

    // Colour recovery
    vec4  k    = vec4(0.3, 0.6, 0.1, 1.0);
    float oldY = rgbSum(res * k);
    float newY = rgbSum(lr  * k);
    vec4  g    = vec4(oldY, oldY, oldY, 1.0);

    vec4 color = (newY > 0.0) ? lr * (oldY / newY) : g;
    color = limitSaturation(color, res);

    float factor = (newY > 0.0) ? oldY/newY : 1.0;
    float denom  = rgbSum(k * color / max(factor, 1e-6));
    if (denom > 0.0) color *= k * newY / denom;
    color.a = 1.0;

    // balance × 3 (iOS step() semantics → clamp to k)
    color = clamp(color, vec4(0.0), k);
    color = clamp(color, vec4(0.0), k);
    color = clamp(color, vec4(0.0), k);

    float recovery = clampedSlope(aVal, 90.0, 1.0,  100.0, 0.7);
    float alpha    = clampedSlope(aVal,  0.0, 0.85, 100.0, 1.0);
    vec4 colorPerK = vec4(color.r/k.r, color.g/k.g, color.b/k.b, 1.0);
    FragColor = mix(res, mix(g, colorPerK, recovery), min(alpha, fringeMask));
}
