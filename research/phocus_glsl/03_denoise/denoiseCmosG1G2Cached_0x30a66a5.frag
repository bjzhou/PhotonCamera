/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 1ea9327fd1b1ce2257eca7ed7bca44ffa74b5d5ba71f8203df26436cd3713f9e
 * ELF offsets: 0x30a66a5
 * Symbols: denoiseCmosG1G2Cached_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

uniform sampler2D uInputTexture0; // 原始图像
uniform sampler2D uInputTexture1; // 缓存数据1 (cache0: green1ValG1, redSumG1)
uniform sampler2D uInputTexture2; // 缓存数据2 (cache1: blueSumG1, greenSumG1)
uniform sampler2D uInputTexture3; // 缓存数据3 (cache2: horizSum, vertSum)
uniform sampler2D uInputTexture4; // 缓存数据4 (cache3: diagRSum, diagLSum)

uniform float uLumaSqThr;
uniform float uDarkLumaMinThr;
uniform float uAvg2RedAtGreenRelThr;
uniform float uAvg4GreenAtGreenRelThr;
uniform float uCrossGreenThr;
uniform float uColorDifferenceLow;
uniform float uColorDifferenceHigh;
uniform float uOfsSub;
uniform float uOfsAdd;
uniform int uKernSizeX;
uniform int uKernSizeY;

uniform vec2 uTextureSize;
uniform vec2 uInvTextureSize;
uniform vec2 uMargin;

in vec2 TexCoord;
out vec4 FragColor;

struct NLMCheckG1G2 {
    vec2 green1ValG1;
    vec2 redSumG1;
    vec2 blueSumG1;
    vec2 greenSumG1;
    vec2 horizSum;
    vec2 vertSum;
    vec2 diagRSum;
    vec2 diagLSum;
};

NLMCheckG1G2 getG1G2Cached(vec2 pos) {
    vec2 texCoord = pos * uInvTextureSize;

    vec4 val0 = texture(uInputTexture1, texCoord) * 65535.0;
    vec4 val1 = texture(uInputTexture2, texCoord) * 65535.0;
    vec4 val2 = texture(uInputTexture3, texCoord) * 65535.0;
    vec4 val3 = texture(uInputTexture4, texCoord) * 65535.0;

    NLMCheckG1G2 res;
    res.green1ValG1 = val0.xy * 1.0;      // green1ValG1
    res.redSumG1   = val0.zw * 2.0;      // redSumG1
    res.blueSumG1  = val1.xy * 2.0;      // blueSumG1
    res.greenSumG1 = val1.zw * 4.0;      // greenSumG1
    res.horizSum   = val2.xy * 3.0;      // horizSum
    res.vertSum    = val2.zw * 3.0;      // vertSum
    res.diagRSum   = val3.xy * 3.0;      // diagRSum
    res.diagLSum   = val3.zw * 3.0;      // diagLSum
    return res;
}

vec2 noiseThreshold(vec2 value, float ofsSub, float ofsAdd) {
    return sqrt(max(value - vec2(ofsSub), vec2(0.0))) + vec2(ofsAdd);
}

vec4 doG1G2BNR(vec2 pos, bool isRedRow) {
    NLMCheckG1G2 c = getG1G2Cached(pos);

    vec2 redAveG1C = c.redSumG1 / 2.0;
    vec2 blueAveG1C = c.blueSumG1 / 2.0;
    vec2 greenAveG1C = c.greenSumG1 / 4.0;
    vec2 lumaG1C = redAveG1C + c.green1ValG1 + greenAveG1C + blueAveG1C;
    vec2 redBlueRatioG1C = (c.redSumG1 + vec2(1.0)) / (c.blueSumG1 + vec2(1.0));

    vec2 lumaG1Thr = noiseThreshold(lumaG1C, uOfsSub, uOfsAdd) * vec2(uLumaSqThr);
    lumaG1Thr = max(lumaG1Thr, vec2(uDarkLumaMinThr));
    vec2 avg2RedatG1Thr = lumaG1Thr * vec2(uAvg2RedAtGreenRelThr);
    vec2 avg4GreenAtG1Thr = lumaG1Thr * vec2(uAvg4GreenAtGreenRelThr);
    vec2 crossGG1CThr = lumaG1Thr * vec2(uCrossGreenThr);

    vec2 sum = vec2(0.0);
    vec2 count = vec2(0.0);

    int kernSizeY = uKernSizeY;
    int kernSizeX = uKernSizeX;
    for (int j = -kernSizeY; j <= kernSizeY; j++) {
        for (int i = -kernSizeX; i <= kernSizeX; i++) {
            vec2 searchPos = pos + vec2(float(i), float(j));
            NLMCheckG1G2 s = getG1G2Cached(searchPos);

            vec2 redAveG1S = s.redSumG1 / 2.0;
            vec2 blueAveG1S = s.blueSumG1 / 2.0;
            vec2 greenAveG1S = s.greenSumG1 / 4.0;
            vec2 lumaG1S = redAveG1S + s.green1ValG1 + greenAveG1S + blueAveG1S;

            bvec4 g_check = bvec4(
                abs(lumaG1S.x - lumaG1C.x) <= lumaG1Thr.x,
                abs(lumaG1S.y - lumaG1C.y) <= lumaG1Thr.y,
                abs(lumaG1S.y - lumaG1C.x) <= lumaG1Thr.x,
                abs(lumaG1S.x - lumaG1C.y) <= lumaG1Thr.y
            );

            bvec4 temp = bvec4(
                abs(greenAveG1S.x - greenAveG1C.x) <= avg4GreenAtG1Thr.x,
                abs(greenAveG1S.y - greenAveG1C.y) <= avg4GreenAtG1Thr.y,
                abs(greenAveG1S.y - greenAveG1C.x) <= avg4GreenAtG1Thr.x,
                abs(greenAveG1S.x - greenAveG1C.y) <= avg4GreenAtG1Thr.y
            );
            g_check = bvec4(g_check.x && temp.x, g_check.y && temp.y, g_check.z && temp.z, g_check.w && temp.w);

            temp = bvec4(
                abs(s.horizSum.x - c.horizSum.x) <= crossGG1CThr.x,
                abs(s.horizSum.y - c.horizSum.y) <= crossGG1CThr.y,
                abs(s.horizSum.y - c.horizSum.x) <= crossGG1CThr.x,
                abs(s.horizSum.x - c.horizSum.y) <= crossGG1CThr.y
            );
            g_check = bvec4(g_check.x && temp.x, g_check.y && temp.y, g_check.z && temp.z, g_check.w && temp.w);

            temp = bvec4(
                abs(s.vertSum.x - c.vertSum.x) <= crossGG1CThr.x,
                abs(s.vertSum.y - c.vertSum.y) <= crossGG1CThr.y,
                abs(s.vertSum.y - c.vertSum.x) <= crossGG1CThr.x,
                abs(s.vertSum.x - c.vertSum.y) <= crossGG1CThr.y
            );
            g_check = bvec4(g_check.x && temp.x, g_check.y && temp.y, g_check.z && temp.z, g_check.w && temp.w);

            temp = bvec4(
                abs(s.diagRSum.x - c.diagRSum.x) <= crossGG1CThr.x,
                abs(s.diagRSum.y - c.diagRSum.y) <= crossGG1CThr.y,
                abs(s.diagRSum.y - c.diagRSum.x) <= crossGG1CThr.x,
                abs(s.diagRSum.x - c.diagRSum.y) <= crossGG1CThr.y
            );
            g_check = bvec4(g_check.x && temp.x, g_check.y && temp.y, g_check.z && temp.z, g_check.w && temp.w);

            temp = bvec4(
                abs(s.diagLSum.x - c.diagLSum.x) <= crossGG1CThr.x,
                abs(s.diagLSum.y - c.diagLSum.y) <= crossGG1CThr.y,
                abs(s.diagLSum.y - c.diagLSum.x) <= crossGG1CThr.x,
                abs(s.diagLSum.x - c.diagLSum.y) <= crossGG1CThr.y
            );
            g_check = bvec4(g_check.x && temp.x, g_check.y && temp.y, g_check.z && temp.z, g_check.w && temp.w);

            if (i == -kernSizeX) {
                g_check.w = false;
            }
            if (i == kernSizeX) {
                g_check.z = false;
            }

            if ((j & 1) == 0) {
                temp = bvec4(
                    abs(redAveG1S.x - redAveG1C.x) <= avg2RedatG1Thr.x,
                    abs(redAveG1S.y - redAveG1C.y) <= avg2RedatG1Thr.y,
                    abs(redAveG1S.y - redAveG1C.x) <= avg2RedatG1Thr.x,
                    abs(redAveG1S.x - redAveG1C.y) <= avg2RedatG1Thr.y
                );
                g_check = bvec4(g_check.x && temp.x, g_check.y && temp.y, g_check.z && temp.z, g_check.w && temp.w);

                temp = bvec4(
                    abs(blueAveG1S.x - blueAveG1C.x) <= avg2RedatG1Thr.x,
                    abs(blueAveG1S.y - blueAveG1C.y) <= avg2RedatG1Thr.y,
                    abs(blueAveG1S.y - blueAveG1C.x) <= avg2RedatG1Thr.x,
                    abs(blueAveG1S.x - blueAveG1C.y) <= avg2RedatG1Thr.y
                );
                g_check = bvec4(g_check.x && temp.x, g_check.y && temp.y, g_check.z && temp.z, g_check.w && temp.w);
            } else {
                vec2 redBlueRatioG1S = (s.blueSumG1 + vec2(1.0)) / (s.redSumG1 + vec2(1.0));
                vec4 colorDifference = vec4(
                    redBlueRatioG1S.x / redBlueRatioG1C.x,
                    redBlueRatioG1S.y / redBlueRatioG1C.y,
                    redBlueRatioG1S.y / redBlueRatioG1C.x,
                    redBlueRatioG1S.x / redBlueRatioG1C.y
                );

                temp = bvec4(
                    uColorDifferenceLow < colorDifference.x && colorDifference.x < uColorDifferenceHigh,
                    uColorDifferenceLow < colorDifference.y && colorDifference.y < uColorDifferenceHigh,
                    uColorDifferenceLow < colorDifference.z && colorDifference.z < uColorDifferenceHigh,
                    uColorDifferenceLow < colorDifference.w && colorDifference.w < uColorDifferenceHigh
                );
                g_check = bvec4(g_check.x && temp.x, g_check.y && temp.y, g_check.z && temp.z, g_check.w && temp.w);
            }

            if (g_check.x) {
                sum.x += s.green1ValG1.x;
                count.x += 1.0;
            }
            if (g_check.y) {
                sum.y += s.green1ValG1.y;
                count.y += 1.0;
            }
            if (g_check.z) {
                sum.x += s.green1ValG1.y;
                count.x += 1.0;
            }
            if (g_check.w) {
                sum.y += s.green1ValG1.x;
                count.y += 1.0;
            }
        }
    }

    vec4 opix = texture(uInputTexture0, pos * uInvTextureSize) * 65535.0;

    if (isRedRow) {
        if (count.y > 1.0) {
            opix.w = round(sum.y / count.y);
        }
        if (count.x > 1.0) {
            opix.y = round(sum.x / count.x);
        }
    } else {
        if (count.x > 1.0) {
            opix.x = round(sum.x / count.x);
        }
        if (count.y > 1.0) {
            opix.z = round(sum.y / count.y);
        }
    }

    return opix / 65535.0;
}

void main() {
    vec2 pixelPos = gl_FragCoord.xy;
    vec2 globalPos = pixelPos + uMargin;

    if (globalPos.x >= uTextureSize.x - float(uKernSizeX) ||
        globalPos.y >= uTextureSize.y - float(uKernSizeY)) {
        FragColor = texture(uInputTexture0, globalPos * uInvTextureSize);
        return;
    }

    bool isRedRow = (int(globalPos.y) & 1) == 0;
    FragColor = doG1G2BNR(globalPos, isRedRow);
}
