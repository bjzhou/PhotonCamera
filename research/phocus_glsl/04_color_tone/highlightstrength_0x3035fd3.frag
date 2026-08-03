/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 8c19ed4877e76b4394bb4dd802c890a081f0ba79a1ebcc68ea39c5c5ecfce6b7
 * ELF offsets: 0x3035fd3
 * Symbols: highlightstrength_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;

uniform vec2 uX;           // x1, x2
uniform vec3 uP;           // pA, pB, pC
uniform vec3 uPh;          // phA, phB, phC
uniform vec2 uL;           // lA, lB
uniform float uStrengthBlend;
uniform float uSaturationBlend;
uniform float uAmountSatFact;

const float kGammaHasselbladRgb = 2.2;

vec3 rgb2hsl(vec3 rgb) {
    float min1 = min(rgb.r, min(rgb.g, rgb.b));
    float max1 = max(rgb.r, max(rgb.g, rgb.b));

    float precis = 0.00001;
    float l = clamp((max1 + min1) / 2.0, precis, 1.0 - precis);
    float max_min = max1 - min1;
    float absMax_min = abs(max_min);
    max_min = (absMax_min > precis) ? absMax_min : precis;

    float s = step(l, 0.5) * (max_min * 0.5) / l + (1.0 - step(l, 0.5)) * max_min / (2.0 - 2.0 * l);
    if (absMax_min < precis) {
        s = 0.0;
    }

    float hr = step(max1, rgb.r) * (1.0 - step(max1, rgb.b)) * (60.0 * ((rgb.g - rgb.b) / (max_min) + step(rgb.g, rgb.b) * 6.0));
    float hg = step(max1, rgb.g) * (1.0 - step(max1, rgb.r)) * (60.0 * (rgb.b - rgb.r) / (max_min) + 120.0);
    float hb = step(max1, rgb.b) * (1.0 - step(max1, rgb.g)) * (60.0 * (rgb.r - rgb.g) / (max_min) + 240.0);
    float h = step(min1, max1) * (hr + hg + hb);

    return vec3(h, s, l);
}

vec3 hsl2rgb(vec3 hsl) {
    float h = hsl.r;
    float s = hsl.g;
    float l = hsl.b;

    float q = step(l, 0.5) * l * (1.0 + s) + (1.0 - step(l, 0.5)) * (l + s - l * s);
    float p = 2.0 * l - q;
    float hk = fract(h / 360.0);

    vec4 tc = vec4(hk + step(hk, 2.0/3.0)/3.0 - (1.0 - step(hk, 2.0/3.0)) * 2.0/3.0,
                   hk,
                   hk - (1.0 - step(hk, 1.0/3.0)) * 1.0/3.0 + step(hk, 1.0/3.0) * 2.0/3.0,
                   1.0);

    float r = tc.r;
    float g = tc.g;
    float b = tc.b;

    float r1 = step(r, 1.0/6.0) * (p + (q - p) * 6.0 * r) + (1.0 - step(r, 1.0/6.0)) * (step(r, 0.5) * q + (1.0 - step(r, 0.5)) * (step(r, 2.0/3.0) * (p + (q - p) * 6.0 * (2.0/3.0 - r)) + (1.0 - step(r, 2.0/3.0)) * p));
    float g1 = step(g, 1.0/6.0) * (p + (q - p) * 6.0 * g) + (1.0 - step(g, 1.0/6.0)) * (step(g, 0.5) * q + (1.0 - step(g, 0.5)) * (step(g, 2.0/3.0) * (p + (q - p) * 6.0 * (2.0/3.0 - g)) + (1.0 - step(g, 2.0/3.0)) * p));
    float b1 = step(b, 1.0/6.0) * (p + (q - p) * 6.0 * b) + (1.0 - step(b, 1.0/6.0)) * (step(b, 0.5) * q + (1.0 - step(b, 0.5)) * (step(b, 2.0/3.0) * (p + (q - p) * 6.0 * (2.0/3.0 - b)) + (1.0 - step(b, 2.0/3.0)) * p));

    return vec3(r1, g1, b1);
}

vec3 HighlightL(vec3 rgbVal, vec2 X, vec3 P, vec2 L) {
    vec3 resP = rgbVal * rgbVal * P.x + rgbVal * P.y + P.z;
    vec3 resL = rgbVal * L.x + L.y;
    vec3 inner = mix(resP, resL, step(X.y, rgbVal));
    return mix(rgbVal, inner, step(X.x, rgbVal));
}

vec3 HighlightP(vec3 rgbVal, vec2 X, vec3 P, vec3 Ph) {
    vec3 resP = rgbVal * rgbVal * P.x + rgbVal * P.y + P.z;
    vec3 resPh = rgbVal * rgbVal * Ph.x + rgbVal * Ph.y + Ph.z;
    vec3 inner = mix(resP, resPh, step(X.y, rgbVal));
    return mix(rgbVal, inner, step(X.x, rgbVal));
}

vec3 ApplyHighlightStrength(vec3 rgbIn, vec2 X, vec3 P, vec3 Ph, vec2 L, float strengthBlend, float saturationBlend, float amountSatFact) {
    vec3 rgbHStrength;
    if (strengthBlend > 0.0) {
        rgbHStrength = HighlightP(rgbIn, X, P, Ph);
    } else {
        rgbHStrength = HighlightL(rgbIn, X, P, L);
    }

    rgbIn = clamp(rgbIn, 0.0, 1.0);
    rgbHStrength = clamp(rgbHStrength, 0.0, 1.0);

    vec3 hslIn = rgb2hsl(rgbIn);
    vec3 hslOut = rgb2hsl(rgbHStrength);

    float a = hslOut[1] - hslIn[1];
    float b = hslIn[1] - (a / 2.0) * amountSatFact;
    float blendSat = max(a * saturationBlend + b, 0.0);

    float blendLum = (1.0 - strengthBlend) * hslIn[2] + strengthBlend * hslOut[2];

    vec3 rgbOut = hsl2rgb(vec3(hslIn[0], blendSat, blendLum));
    rgbHStrength = rgbOut;

    return rgbHStrength;
}

void main() {
    vec4 pixelColor = texture(uInputTexture0, TexCoord);
    float alpha = pixelColor.a;

    vec3 result = ApplyHighlightStrength(pixelColor.rgb, uX, uP, uPh, uL, uStrengthBlend, uSaturationBlend, uAmountSatFact);

    FragColor = vec4(result, alpha);
}
