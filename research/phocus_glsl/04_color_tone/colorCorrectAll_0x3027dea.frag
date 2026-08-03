/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: dbaac65ca38e9a2fc2156b3cdce40f6bc9ef41150a8e7c5e2473b7556f7de8e7
 * ELF offsets: 0x3027dea
 * Symbols: colorCorrectAll_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform sampler2D uInputTexture1;
//uniform sampler2D uInputTexture2;
//uniform sampler2D uInputTexture3;
//uniform sampler2D uInputTexture4;
//uniform sampler2D uInputTexture5;
//uniform sampler2D uInputTexture6;


uniform vec4 uInputMatrix1;
uniform vec4 uInputMatrix2;
uniform vec4 uInputMatrix3;
uniform vec4 uOutputMatrix1;
uniform vec4 uOutputMatrix2;
uniform vec4 uOutputMatrix3;

uniform vec4 uGain;
uniform vec2 uStartCbCr;
uniform vec2 uCbCrLimits;
uniform float uDivFactor;
uniform vec2 uDesatGray;
uniform vec4 uDesatParams;
uniform float uInputEV;
//uniform float uInputHRFactor;
uniform float uHrTrunc;
uniform float uHrMax;

//uniform float uInputTemp;
//uniform float uInputTint;
//uniform float uTempScale;
//uniform float uTintScale;
//uniform vec3 uXYZColumn1;
//uniform vec3 uXYZColumn2;
//uniform vec3 uXYZColumn3;
//uniform float uLocalEV;

uniform int uUseColorMap;
//uniform int uUseGradation;
//uniform int uUseLocalEV;
//uniform int uUseLocalWB;


//参考locEvKernel
vec4 applyLocalEV(vec4 color, sampler2D map, float baseEV, float localEV, float invEV) {
    float alpha = color.a;
    float factor = (texture(map, TexCoord).a - 0.5) * 2.0;
    float locEV = invEV * (factor * localEV);
    float displayEV = baseEV + locEV;
    color = pow(2.0, displayEV) * color;
    color.a = alpha;
    return color;
}

// 参考localWBKernel
vec4 applyLocalWB(vec4 color, sampler2D tempMap, sampler2D tintMap, sampler2D tempTable,
                  float baseTemp, float baseTint, float tempScale, float tintScale,
                  vec3 xyzCol1, vec3 xyzCol2, vec3 xyzCol3, float normalize, float hrFactor, vec4 neutralGain) {

    float tempFactor = (texture(tempMap, TexCoord).a - 0.5) * 2.0;
    float tintFactor = (texture(tintMap, TexCoord).a - 0.5) * 2.0;
    float temp = baseTemp + (tempFactor * tempScale);
    temp = min(50000.0, max(2000.0, temp));
    float tint = baseTint + (tintFactor * tintScale);
    tint = min(100.0, max(-100.0, tint));
    float internalTint = tint / -3000.0;

    float revTemp = 1000000.0 / temp;
    int ix = int(min(revTemp, 100.0) / 10.0);
    ix = ix + int((max(100.0, revTemp) - 100.0) / 25.0);

    vec4 ttLow = texture(tempTable, vec2(0.5 + float(ix), 0.5));
    vec4 ttHigh = texture(tempTable, vec2(1.5 + float(ix), 0.5));


    float lowW = (ttHigh.r - revTemp) / (ttHigh.r - ttLow.r);
    float u = mix(ttHigh.g, ttLow.g, lowW);
    float v = mix(ttHigh.b, ttLow.b, lowW);

    float uu1 = 1.0;
    float vv1 = ttLow.a;
    float uu2 = 1.0;
    float vv2 = ttHigh.a;

    float len1 = sqrt(1.0 + vv1 * vv1);
    float len2 = sqrt(1.0 + vv2 * vv2);

    uu1 /= len1;
    vv1 /= len1;
    uu2 /= len2;
    vv2 /= len2;

    float uu3 = mix(uu2, uu1, lowW);
    float vv3 = mix(vv2, vv1, lowW);

    float len3 = sqrt(uu3 * uu3 + vv3 * vv3);
    uu3 /= len3;
    vv3 /= len3;

    u += uu3 * internalTint;
    v += vv3 * internalTint;

    float x = 1.5 * u / (u - 4.0 * v + 2.0);
    float y = v / (u - 4.0 * v + 2.0);

    vec3 xyz = vec3(x, y, 1.0 - x - y);
    vec3 gain = vec3(dot(xyz, xyzCol1), dot(xyz, xyzCol2), dot(xyz, xyzCol3));

    gain.r = max(0.001, gain.r);
    gain.g = max(0.001, gain.g);
    gain.b = max(0.001, gain.b);

    float minGain = min(min(gain.r, gain.g), gain.b);
    float maxGain = max(max(gain.r, gain.g), gain.b);
    float refVal = normalize > 0.0 ? minGain : maxGain;
    gain = refVal / gain;

    float minGain2 = min(min(gain.r, gain.g), gain.b);
    float maxGain2 = max(max(gain.r, gain.g), gain.b);
    float locLumScale = maxGain2 / minGain2;

    float maxneutralgain = max(max(neutralGain.r, neutralGain.g), neutralGain.b);
    float minneutralgain = min(min(neutralGain.r, neutralGain.g), neutralGain.b);
    float globLumScale = maxneutralgain / minneutralgain;

    float locLumFactor = (normalize > 0.0) ? locLumScale / globLumScale : 1.0;

    neutralGain /= maxneutralgain;

    gain.r /= neutralGain.r;
    gain.g /= neutralGain.g;
    gain.b /= neutralGain.b;

    gain *= locLumFactor;

    color.r *= gain.r;
    color.g *= gain.g;
    color.b *= gain.b;

    return color;
}

// 参考boTruncKernel
vec4 applyBoTrunc(vec4 color, float ev, float hrTrunc, float hrMax) {
    float alpha = color.a;
    color = color / hrTrunc;
    color = clamp(color, 0.0, hrMax);
    color = color * ev;
    color.a = alpha;
    return color;
}

vec2 bilinearLookupPx(sampler2D tex, vec2 coordPx) {
    ivec2 size = textureSize(tex, 0);
    ivec2 g = ivec2(floor(coordPx));        // grid point
    vec2 d = fract(coordPx);                // fractional part

    ivec2 clampMax = size - ivec2(2);
    g = clamp(g, ivec2(0), clampMax);

    // 四个像素（整数索引）
    vec4 sw = texelFetch(tex, g, 0);            // (x, y)
    vec4 se = texelFetch(tex, g + ivec2(1,0), 0);
    vec4 nw = texelFetch(tex, g + ivec2(0,1), 0);
    vec4 ne = texelFetch(tex, g + ivec2(1,1), 0);

    vec4 tmpX = mix(sw, se, d.x);
    vec4 tmpY = mix(nw, ne, d.x);
    vec4 res = mix(tmpX, tmpY, d.y);

    return res.xy;
}

void main() {
    vec4 smp = texture(uInputTexture0, TexCoord);
    float alpha = smp.a;
    smp = applyBoTrunc(smp, uInputEV, uHrTrunc, uHrMax);

//    if (uUseLocalEV > 0) {
//        smp = applyLocalEV(smp, uInputTexture3, uInputEV, uLocalEV, 1.0 / uInputEV);
//    }
//
//    if (uUseLocalWB > 0) {
//        vec4 neutralGain = uGain;
//        smp = applyLocalWB(smp, uInputTexture4, uInputTexture5, uInputTexture6,
//                          uInputTemp, uInputTint, uTempScale, uTintScale,
//                          uXYZColumn1, uXYZColumn2, uXYZColumn3, 1.0, uInputHRFactor, neutralGain);
//    }
//
//    if (uUseGradation > 0) {
//        // todo
//    }

    smp *= 65535.0;
    smp = min(smp, vec4(65535.0, 65535.0, 65535.0, 65535.0));

    float average = (smp.r + smp.g + smp.b) * 0.3333333;
    vec4 vMax = abs(smp - average);
    float dMax = max(max(vMax.r, vMax.g), vMax.b);

    float grayWeight = ((dMax / average) - uDesatGray.x) / (uDesatGray.y - uDesatGray.x);
    grayWeight = max(min(grayWeight, 1.0), 0.0);

    vec4 YCbCr = vec4(1.0);
    YCbCr.x = dot(smp, uInputMatrix1);
    YCbCr.y = dot(smp, uInputMatrix2);
    YCbCr.z = dot(smp, uInputMatrix3);

    float lowDesatLow = float(YCbCr.x < uDesatParams.x) * (uDesatParams.y * YCbCr.x * YCbCr.x + uDesatParams.z * YCbCr.x + uDesatParams.w);
    float lowDesatHigh = float(YCbCr.x >= uDesatParams.x);
    grayWeight = max(min(grayWeight, lowDesatLow + lowDesatHigh), 0.0);

    YCbCr.x = (YCbCr.x <= 1e-10) ? 1e-10 : YCbCr.x;
    float invYxDiv = uDivFactor / YCbCr.x;
    vec2 CbCr = vec2(YCbCr.y, YCbCr.z);
    CbCr = CbCr * invYxDiv;
    // ******* Look Up ********* //
    if (uUseColorMap > 0) {
        CbCr = CbCr - uStartCbCr;
        CbCr = clamp(CbCr, vec2(0.0), uCbCrLimits);
        vec2 CbCrResult = bilinearLookupPx(uInputTexture1, CbCr);
        CbCrResult = CbCrResult * YCbCr.x * grayWeight;
        vec4 res = vec4(1.0);
        res.x = YCbCr.x + CbCrResult.x * uOutputMatrix1.y + CbCrResult.y * uOutputMatrix1.z;
        res.y = YCbCr.x + CbCrResult.x * uOutputMatrix2.y + CbCrResult.y * uOutputMatrix2.z;
        res.z = YCbCr.x + CbCrResult.x * uOutputMatrix3.y + CbCrResult.y * uOutputMatrix3.z;

        res = res / 65535.0;
        res.a = alpha;
        FragColor = res;
    } else {
        YCbCr.y = YCbCr.y * uDivFactor;
        YCbCr.z = YCbCr.z * uDivFactor;

        vec4 res = vec4(1.0);
        res.x = YCbCr.x + YCbCr.y * uOutputMatrix1.y + YCbCr.z * uOutputMatrix1.z;
        res.y = YCbCr.x + YCbCr.y * uOutputMatrix2.y + YCbCr.z * uOutputMatrix2.z;
        res.z = YCbCr.x + YCbCr.y * uOutputMatrix3.y + YCbCr.z * uOutputMatrix3.z;
        res /= 65535.0;
        res.a = alpha;
        FragColor = res;
    }
}
