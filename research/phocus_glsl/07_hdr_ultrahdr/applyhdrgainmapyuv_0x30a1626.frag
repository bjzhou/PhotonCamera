/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 1ba7069316d7577133e3e7016a4aafbed85fa99459e1403a06f899ac94f7a07e
 * ELF offsets: 0x30a1626
 * Symbols: applyhdrgainmapyuv_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp int;
precision highp sampler2D;

uniform sampler2D uInputTexture0;
out vec4 FragColor;

const float kOffset    = 0.055;
const float kScale     = 1.055;
const float kGammaSrgb = 2.4;
const float kDiv       = 12.92;
const float kLim       = 0.04045;

const float kHDRMaxGain = 10000.0 / 203.0;

uniform mat3  mat;          // P3 -> HasselbladRGB (linear)
uniform vec4  yuvCoeffs;    // Rec601Coeffs(): [e, -(a*e/b), -(c*d/b), d]
uniform ivec2 margin;

uniform float minimumValue;
uniform float maximumValue;
uniform float gamma;
uniform float baseOffset;
uniform float alternateOffset;
uniform float weighting;

vec3 sRgb2linear(vec3 rgb)
{
    vec3 safeRgb = max(rgb, vec3(0.0));
    vec3 higher = pow((safeRgb + kOffset) / kScale, vec3(kGammaSrgb));
    vec3 lower  = safeRgb / kDiv;
    return mix(lower, higher, step(vec3(kLim), safeRgb));
}

vec3 Yuv2Rgb(float y, float u, float v, vec4 c)
{
    float cb = u - 0.5;
    float cr = v - 0.5;
    return vec3(
        y + c.x * cr,
        y + c.y * cr + c.z * cb,
        y + c.w * cb
    );
}

vec3 ApplyGain(vec3 linearRgb, vec3 normalizedGain)
{
    vec3 safeGain = max(normalizedGain, vec3(0.0));
    vec3 gain = (maximumValue - minimumValue) * pow(safeGain, vec3(1.0 / gamma)) + minimumValue;
    return ((linearRgb + baseOffset) * pow(vec3(2.0), weighting * gain) - alternateOffset);
}

vec3 Convert(vec3 baseRgb_srgb, vec3 gainRgb_norm)
{
    vec3 baseLin = sRgb2linear(baseRgb_srgb);
    vec3 applied = ApplyGain(baseLin, gainRgb_norm);
    vec3 hassLin = mat * applied;
    return hassLin / kHDRMaxGain;
}

void main()
{
    ivec2 size = textureSize(uInputTexture0, 0);

    ivec2 coord = ivec2(gl_FragCoord.xy);

    ivec2 p = clamp(coord + margin, ivec2(0), size - ivec2(1));

    int xEven = (p.x / 2) * 2;
    int xOdd  = min(xEven + 1, size.x - 1);

    ivec2 pU = ivec2(xEven, p.y);
    ivec2 pV = ivec2(xOdd,  p.y);

    vec4 pixY = texelFetch(uInputTexture0, p,  0);
    vec4 pixU = texelFetch(uInputTexture0, pU, 0);
    vec4 pixV = texelFetch(uInputTexture0, pV, 0);

    float baseY = pixY.r;
    float baseU = pixU.g;
    float baseV = pixV.g;

    float gainY = pixY.b;
    float gainU = pixU.a;
    float gainV = pixV.a;

    vec3 baseRgb = Yuv2Rgb(baseY, baseU, baseV, yuvCoeffs);
    vec3 gainRgb = Yuv2Rgb(gainY, gainU, gainV, yuvCoeffs);

    vec3 outRgb = Convert(baseRgb, gainRgb);

    FragColor = vec4(outRgb, 1.0);
}
