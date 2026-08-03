/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: ecb85eb3453ecfb72f032d171bef7287a0479132b7ff0187712f82bb054a13ab
 * ELF offsets: 0x306afe7
 * Symbols: unattributed
 */

#version 300 es
precision highp float;
precision highp sampler2D;
out vec4 FragColor;
uniform sampler2D uInputTexture0;   // texSrc (srcRect-sized)
uniform sampler2D uInputTexture1;   // texFringeMask (srcRect-sized, R = fringeMask)
uniform sampler2D uInputTexture2;   // texInpainted (srcRect-sized, RGB = inpainted)
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
    float hAdj = h;
    if (hAdj < hStart) hAdj += 360.0;
    return (hStart < hAdj && hAdj <= hStop);
}
float clampedSlope(float x, float x1, float y1, float x2, float y2) {
    float a = (y2-y1)/(x2-x1);
    return clamp(a*x + (y1-a*x1), min(y1,y2), max(y1,y2));
}

void main() {
    ivec2 p     = ivec2(gl_FragCoord.xy);
    ivec2 srcSz = textureSize(uInputTexture0, 0);
    // All three input textures are srcRect-sized — use the same srcOffset for all.
    ivec2 sp    = clamp(p + ivec2(uSrcOffsetX, uSrcOffsetY), ivec2(0), srcSz - 1);

    vec4  res        = texelFetch(uInputTexture0, sp, 0);
    float fringeMask = texelFetch(uInputTexture1, clamp(sp, ivec2(0), textureSize(uInputTexture1,0)-1), 0).r;
    vec4  lr         = texelFetch(uInputTexture2, clamp(sp, ivec2(0), textureSize(uInputTexture2,0)-1), 0);

    float h    = hueOf(res);
    float aVal = 0.0;
    bool  inHueRange = false;
    if      (hueInRange(h, uPurpleStart, uPurpleStop)) { aVal = clamp(uPurpleAmount, 0.0, 100.0); inHueRange = true; }
    else if (hueInRange(h, uGreenStart,  uGreenStop))  { aVal = clamp(uGreenAmount,  0.0, 100.0); inHueRange = true; }

    // CPU GetWeights returns {0, 0} when hue is not in any target range.
    // After mask upscale (MAX), some non-matching pixels may have fringeMask > 0;
    // they must not be processed.
    if (!inHueRange || h < 0.0) {
        FragColor = vec4(res.rgb, 1.0);
        return;
    }

    // BT.601 luma (CPU kRgb = {0.21, 0.72, 0.07})
    const vec3 k = vec3(0.21, 0.72, 0.07);
    float oldY = dot(res.rgb, k);
    float newY = dot(lr.rgb,  k);

    // ReplaceColor with limitSaturation=true — mirrors CPU UColorInpainting::ReplaceColor().
    // Caps chroma expansion to 1.1× original chroma and rescales to preserve oldY luminance.
    vec3 inpainted;
    if (newY > 1e-6) {
        float factor = oldY / newY;
        vec3 raw     = lr.rgb * factor;
        float satNew = max(raw.r, max(raw.g, raw.b)) - min(raw.r, min(raw.g, raw.b));
        float satOld = max(res.r, max(res.g, res.b)) - min(res.r,  min(res.g, res.b));
        if (satNew > 1e-6 && satOld > 1e-6) {
            float satFactor = min(1.1, satNew / satOld) * satOld / satNew;
            vec3  center    = vec3((raw.r + raw.g + raw.b) / 3.0);
            vec3  adj       = (raw - center) * satFactor + center;
            float lumaAdj   = dot(adj, k);
            inpainted = (lumaAdj > 1e-6) ? adj * (oldY / lumaAdj) : adj;
        } else {
            inpainted = raw;
        }
        inpainted = clamp(inpainted, 0.0, 1.0);
    } else {
        inpainted = vec3(oldY);
    }

    // Mix(gray, inpainted, recoveryWeight)  — CPU GetWeights() recovery formula
    float recovery    = clampedSlope(aVal, 90.0, 1.0, 100.0, 0.7);
    vec3  newRgb      = mix(vec3(oldY), inpainted, recovery);

    // alpha = alphaWeight * fringeMask  (CPU: alphaWeight * targetRegMask / 65535)
    float alphaWeight = clampedSlope(aVal, 0.0, 0.85, 10.0, 1.0);
    float alpha       = alphaWeight * fringeMask;

    FragColor = vec4(mix(res.rgb, newRgb, alpha), 1.0);
}
