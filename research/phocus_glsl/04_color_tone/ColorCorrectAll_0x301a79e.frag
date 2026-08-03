/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: e88d1cf208ed2067ae4d435a12d1f7cc5ff1367b004315b1c823a6c99f7ee6bf
 * ELF offsets: 0x301a79e
 * Symbols: ColorCorrectAllShader
 */

#version 300 es
precision highp float;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D inputTexture;
uniform sampler2D colorMap;
uniform sampler2D gradation;
uniform sampler2D localEVMap;
uniform sampler2D localTempMap;
uniform sampler2D localTintMap;
uniform sampler2D tempTable;

uniform vec4 inputMatrix1;    // inputColumn1
uniform vec4 inputMatrix2;    // inputColumn2
uniform vec4 inputMatrix3;    // inputColumn3
uniform vec4 outputMatrix1;   // inputOutColumn1
uniform vec4 outputMatrix2;   // inputOutColumn2
uniform vec4 outputMatrix3;   // inputOutColumn3

uniform vec4 gain;            // inputGain
uniform vec2 startCbCr;       // inputStartCbCr
uniform vec2 cbCrLimits;      // inputCbCrLimits
uniform float divFactor;      // inputDivFactor
uniform vec2 desatGray;       // inputDesatGray
uniform vec4 desatParams;     // inputDesatParams
uniform float inputEV;        // inputEV
uniform float inputHRFactor;  // inputHRFactor
uniform float hrTrunc;        // hrTrunc
uniform float hrMax;          // hrMax

uniform float inputTemp;      // inputTemp
uniform float inputTint;      // inputTint
uniform float tempScale;      // inputTempScale
uniform float tintScale;      // inputTintScale
uniform vec3 xyzColumn1;      // inputXYZColumn1
uniform vec3 xyzColumn2;      // inputXYZColumn2
uniform vec3 xyzColumn3;      // inputXYZColumn3
uniform float localEV;        // inputLocalEV

uniform int useColorMap;
uniform int useGradation;
uniform int useLocalEV;
uniform int useLocalWB;


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
vec4 applyBoTrunc(vec4 color, vec4 gain, float ev, float hrTrunc, float hrMax) {
    float alpha = color.a;
    color = color * gain;
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
    vec4 smp = texture(inputTexture, TexCoord);
    float alpha = smp.a;

    smp = applyBoTrunc(smp, gain, inputEV, hrTrunc, hrMax);

    if (useLocalEV > 0) {
        smp = applyLocalEV(smp, localEVMap, inputEV, localEV, 1.0 / inputEV);
    }

    if (useLocalWB > 0) {
        vec4 neutralGain = gain;
        smp = applyLocalWB(smp, localTempMap, localTintMap, tempTable,
                          inputTemp, inputTint, tempScale, tintScale,
                          xyzColumn1, xyzColumn2, xyzColumn3, 1.0, inputHRFactor, neutralGain);
    }

    if (useGradation > 0) {
        // todo
    }

    smp *= 65535.0;
    smp = min(smp, vec4(65535.0, 65535.0, 65535.0, 65535.0));

    float average = (smp.r + smp.g + smp.b) * 0.3333333;
    vec4 vMax = abs(smp - average);
    float dMax = max(max(vMax.r, vMax.g), vMax.b);

    float grayWeight = ((dMax / average) - desatGray.x) / (desatGray.y - desatGray.x);
    grayWeight = max(min(grayWeight, 1.0), 0.0);

    vec4 YCbCr = vec4(1.0);
    YCbCr.x = dot(smp, inputMatrix1);
    YCbCr.y = dot(smp, inputMatrix2);
    YCbCr.z = dot(smp, inputMatrix3);

    float lowDesatLow = float(YCbCr.x < desatParams.x) * (desatParams.y * YCbCr.x * YCbCr.x + desatParams.z * YCbCr.x + desatParams.w);
    float lowDesatHigh = float(YCbCr.x >= desatParams.x);
    grayWeight = max(min(grayWeight, lowDesatLow + lowDesatHigh), 0.0);

    YCbCr.x = (YCbCr.x <= 1e-10) ? 1e-10 : YCbCr.x;
    float invYxDiv = divFactor / YCbCr.x;
    vec2 CbCr = vec2(YCbCr.y, YCbCr.z);
    CbCr = CbCr * invYxDiv;

    // ******* Look Up ********* //
    if (useColorMap > 0) {
        CbCr = CbCr - startCbCr;
        vec2 minLimits = vec2(0.5);
        vec2 maxLimits = cbCrLimits - vec2(0.5);
        vec2 clamped = clamp(CbCr, minLimits, maxLimits);
        vec2 pxCoord = clamped - vec2(0.5);

        vec2 CbCrResult = bilinearLookupPx(colorMap, pxCoord);
        CbCrResult = CbCrResult * YCbCr.x * grayWeight;
        vec4 res = vec4(1.0);
        res.x = YCbCr.x + CbCrResult.x * outputMatrix1.y + CbCrResult.y * outputMatrix1.z;
        res.y = YCbCr.x + CbCrResult.x * outputMatrix2.y + CbCrResult.y * outputMatrix2.z;
        res.z = YCbCr.x + CbCrResult.x * outputMatrix3.y + CbCrResult.y * outputMatrix3.z;

        res = res / 65535.0;
        res.a = alpha;
        FragColor = res;
    } else {
        YCbCr.y = YCbCr.y * divFactor;
        YCbCr.z = YCbCr.z * divFactor;

        vec4 res = vec4(1.0);
        res.x = YCbCr.x + YCbCr.y * outputMatrix1.y + YCbCr.z * outputMatrix1.z;
        res.y = YCbCr.x + YCbCr.y * outputMatrix2.y + YCbCr.z * outputMatrix2.z;
        res.z = YCbCr.x + YCbCr.y * outputMatrix3.y + YCbCr.z * outputMatrix3.z;
        res /= 65535.0;
        res.a = alpha;
        FragColor = res;
    }
}
