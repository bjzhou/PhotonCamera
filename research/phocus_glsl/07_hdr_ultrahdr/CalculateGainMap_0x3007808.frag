/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 91720a36f5ddf2e5682998f88b0e7b64a67bbd938b901c3aef332ec5e4c73b81
 * ELF offsets: 0x3007808
 * Symbols: CalculateGainMap_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

// Constants matching Metal implementation
const float kGammaHasselbladRgb = 2.19921875;
const float kHDRMaxGain = 49.26108374; // kHDRMaxGain
const float kHasselbladHdrRgbLimit = 5.8829245141; // kHasselbladHdrRgbLimit
const float kLStarEpsilon = 0.008856;
const float kLStarKappa = 903.3;
const float kCMSRGBvOffset = 0.055;
const float kCMSRGBvScale = 1.055;
const float kCMSRGBvGamma = 2.4;
const float kCMSRGBvDiv = 12.92;
const float kCMSRGBvLim = 0.04045;

uniform sampler2D uInputTexture0;  // HDR Texture
uniform sampler2D uInputTexture1;  // SDR Texture (Cropped)
uniform float uMinGain;
uniform float uMaxGain;
uniform float uOffset;
uniform ivec2 uInMargin;
uniform mat3 uColorMatrix;
uniform int uIsLStar;

out vec4 FragColor;

vec3 sRgb2linear(vec3 rgb) {
    vec3 a = pow((rgb + kCMSRGBvOffset) / kCMSRGBvScale, vec3(kCMSRGBvGamma));
    vec3 b = rgb / kCMSRGBvDiv;
    return mix(a, b, lessThanEqual(rgb, vec3(kCMSRGBvLim)));
}

vec3 HasselbladCompanding2Linear(vec3 t, int isLStar) {
    if (isLStar == 1) {
        float eps = kLStarEpsilon;
        float kap = kLStarKappa;
        vec3 vLo = t * 100.0 / kap;
        vec3 vHi = pow((t + 0.16) / 1.16, vec3(3.0));
        return mix(vHi, vLo, lessThanEqual(t, vec3(eps)));
    } else {
        return pow(t, vec3(kGammaHasselbladRgb));
    }
}

void main() {
    ivec2 gid = ivec2(gl_FragCoord.xy);
    ivec2 hdrPos = gid + uInMargin;
    ivec2 sdrPos = gid;

    vec3 rawHdr = texelFetch(uInputTexture0, hdrPos, 0).rgb;
    vec3 rawSdr = texelFetch(uInputTexture1, sdrPos, 0).rgb;

    vec3 hdrHassGained = rawHdr * kHasselbladHdrRgbLimit;
    vec3 hdrHassLinear = HasselbladCompanding2Linear(hdrHassGained, uIsLStar);
    vec3 hdrP3Linear = uColorMatrix * hdrHassLinear;

    float hdrApplyGainMapMax = pow(2.0, uMaxGain);
    hdrP3Linear = clamp(hdrP3Linear, vec3(0.0), vec3(hdrApplyGainMapMax));

    vec3 sdrP3Liner = sRgb2linear(rawSdr);

    vec3 gain = log2((hdrP3Linear + uOffset) / (sdrP3Liner + uOffset));

    float gainRange = uMaxGain - uMinGain;
    vec3 normalized = (gain - vec3(uMinGain)) / vec3(gainRange);
//    normalized = clamp(normalized, 0.0, 1.0);

    FragColor = vec4(normalized, 1.0);
}
