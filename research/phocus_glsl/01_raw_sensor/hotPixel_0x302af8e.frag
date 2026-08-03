/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 8012955d7c0a1c85bc5fb7d07a3f289631214a7796b86283a33c7b201cd7ce76
 * ELF offsets: 0x302af8e
 * Symbols: hotPixel_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp int;
precision highp sampler2D;

layout(location = 0) out vec4 FragColor;
layout(location = 1) out vec4 FragMask;

uniform sampler2D uInputTexture0; // Image (Packed Bayer RGBA)

const float MAX_VAL = 65535.0;
const int eHpPepper = 0;
const int eHpOk = 32;
const int eHpHot = 255;

// UBO 定义 (std140)
layout(std140) uniform HotPixelParams {
    float trivialDiffThr;
    float extraPolFact;
    float meanLowFact;
    float meanHighFact;
    float sDFactLo;
    float colorRatioModerator;
    float colorMeanModerator;
    float pad0;
    int blacklevelOffset;
    int extraPolTestCount;
    float sDFactHiRedBlue;
    float sDFactHiGreen;
    int mapOfsX;
    int mapOfsY;
    uint marginX;
    uint marginY;
    int trivialPepperMinThr;
    int cluster;
    float pad1;
    float pad2;
} uParams;

uniform vec2 uTextureSize;

struct float2x4 { vec4 m0; vec4 m1; };

float SumElem(vec4 v) { return v.x + v.y + v.z + v.w; }
float Sqr(float a) { return a * a; }
vec2 Sqr(vec2 a) { return a * a; }
vec3 Sqr(vec3 a) { return a * a; }
vec4 Sqr(vec4 a) { return a * a; }

vec4 select_vec4(vec4 f, vec4 t, bvec4 c) { return mix(f, t, vec4(c)); }
uvec4 select_uvec4(uvec4 f, uvec4 t, bvec4 c) { return uvec4(mix(vec4(f), vec4(t), vec4(c))); }

void SwapIfLarger(inout uint a, inout uint b) { if (a > b) { uint t = a; a = b; b = t; } }
uint DoMedian5(uint p[5]) {
    SwapIfLarger(p[0], p[1]); SwapIfLarger(p[3], p[4]);
    if (p[3] < p[0]) { uint t = p[1]; p[1] = p[4]; p[4] = t; p[3] = p[0]; }
    p[0] = p[2]; SwapIfLarger(p[0], p[1]);
    if (p[0] < p[3]) { uint t = p[1]; p[1] = p[4]; p[4] = t; p[0] = p[3]; }
    if (p[4] < p[0]) return p[4]; return p[0];
}
uint DoMedian9(uint p[9]) {
    for (int i = 0; i < 9; ++i) { for (int j = i + 1; j < 9; ++j) { SwapIfLarger(p[i], p[j]); } }
    return p[4];
}

vec4 readTex(sampler2D tex, ivec2 pos) {
    pos = clamp(pos, ivec2(0), ivec2(uTextureSize) - 1);
    return texelFetch(tex, pos, 0) * MAX_VAL;
}
uvec4 readTexU(sampler2D tex, ivec2 pos) { return uvec4(round(readTex(tex, pos))); }

uint MedianFirstLeft(sampler2D tex, ivec2 pos, bool isRed) {
    uvec4 c = readTexU(tex, pos); uvec4 l = readTexU(tex, pos - ivec2(1, 0));
    uvec4 t2 = readTexU(tex, pos - ivec2(0, 2)); uvec4 b2 = readTexU(tex, pos + ivec2(0, 2));
    if (isRed) { uint p[5] = uint[](t2.x, l.z, c.x, c.z, b2.x); return DoMedian5(p); }
    else {
        uvec4 t1l = readTexU(tex, pos + ivec2(-1, -1)); uvec4 t1c = readTexU(tex, pos + ivec2(0, -1));
        uvec4 b1l = readTexU(tex, pos + ivec2(-1, 1)); uvec4 b1c = readTexU(tex, pos + ivec2(0, 1));
        uint p[9] = uint[](t2.x, t1l.w, t1c.y, l.z, c.x, c.z, b1l.w, b1c.y, b2.x); return DoMedian9(p);
    }
}

uint MedianSecondLeft(sampler2D tex, ivec2 pos, bool isRed) {
    uvec4 c = readTexU(tex, pos); uvec4 l = readTexU(tex, pos - ivec2(1, 0));
    uvec4 t2 = readTexU(tex, pos - ivec2(0, 2)); uvec4 b2 = readTexU(tex, pos + ivec2(0, 2));
    if (isRed) { uint p[5] = uint[](t2.y, l.w, c.y, c.w, b2.y); return DoMedian5(p); }
    else {
        uvec4 t1c = readTexU(tex, pos + ivec2(0, -1)); uvec4 b1c = readTexU(tex, pos + ivec2(0, 1));
        uint p[9] = uint[](t2.y, t1c.x, t1c.z, l.w, c.y, c.w, b1c.x, b1c.z, b2.y); return DoMedian9(p);
    }
}

uint MedianFirstRight(sampler2D tex, ivec2 pos, bool isRed) {
    uvec4 c = readTexU(tex, pos); uvec4 r = readTexU(tex, pos + ivec2(1, 0));
    uvec4 t2 = readTexU(tex, pos - ivec2(0, 2)); uvec4 b2 = readTexU(tex, pos + ivec2(0, 2));
    if (isRed) { uint p[5] = uint[](t2.z, c.x, c.z, r.x, b2.z); return DoMedian5(p); }
    else {
        uvec4 t1c = readTexU(tex, pos + ivec2(0, -1)); uvec4 b1c = readTexU(tex, pos + ivec2(0, 1));
        uint p[9] = uint[](t2.z, t1c.y, t1c.w, c.x, c.z, r.x, b1c.y, b1c.w, b2.z); return DoMedian9(p);
    }
}

uint MedianSecondRight(sampler2D tex, ivec2 pos, bool isRed) {
    uvec4 c = readTexU(tex, pos); uvec4 r = readTexU(tex, pos + ivec2(1, 0));
    uvec4 t2 = readTexU(tex, pos - ivec2(0, 2)); uvec4 b2 = readTexU(tex, pos + ivec2(0, 2));
    if (isRed) { uint p[5] = uint[](t2.w, c.y, c.w, r.y, b2.w); return DoMedian5(p); }
    else {
        uvec4 t1c = readTexU(tex, pos + ivec2(0, -1)); uvec4 t1r = readTexU(tex, pos + ivec2(1, -1));
        uvec4 b1c = readTexU(tex, pos + ivec2(0, 1)); uvec4 b1r = readTexU(tex, pos + ivec2(1, 1));
        uint p[9] = uint[](t2.w, t1c.z, t1r.x, c.y, c.w, r.y, b1c.z, b1r.x, b2.w); return DoMedian9(p);
    }
}

vec4 GetDiff(sampler2D tex, ivec2 pos2, ivec2 pos, vec4 ratio) {
    vec4 fPix = readTex(tex, pos); vec4 grgr = max(fPix - float(uParams.blacklevelOffset), 0.0);
    vec4 r1 = grgr / ratio;
    vec4 fPix2 = readTex(tex, pos2); vec4 rgrg = max(fPix2 - float(uParams.blacklevelOffset), 0.0);
    return r1 + uParams.extraPolFact * (r1 - rgrg);
}

vec4 GetLeft(sampler2D tex, ivec2 pos) { vec4 c = readTex(tex, pos); vec4 l = readTex(tex, pos - ivec2(1,0)); return vec4(l.w, c.x, c.y, c.z); }
vec4 GetRight(sampler2D tex, ivec2 pos) { vec4 c = readTex(tex, pos); vec4 r = readTex(tex, pos + ivec2(1,0)); return vec4(c.y, c.z, c.w, r.x); }
vec4 GetLeft2(sampler2D tex, ivec2 pos) { vec4 c = readTex(tex, pos); vec4 l = readTex(tex, pos - ivec2(1,0)); return vec4(l.z, l.w, c.x, c.y); }
vec4 GetRight2(sampler2D tex, ivec2 pos) { vec4 c = readTex(tex, pos); vec4 r = readTex(tex, pos + ivec2(1,0)); return vec4(c.z, c.w, r.x, r.y); }

vec4 GetDiffOfs(sampler2D tex, ivec2 pos2, ivec2 pos, vec4 ratio, bool left) {
    vec4 grgr = left ? GetLeft(tex, pos) : GetRight(tex, pos); grgr = max(grgr - float(uParams.blacklevelOffset), 0.0);
    vec4 r1 = grgr / ratio;
    vec4 rgrg = left ? GetLeft2(tex, pos2) : GetRight2(tex, pos2); rgrg = max(rgrg - float(uParams.blacklevelOffset), 0.0);
    return r1 + uParams.extraPolFact * (r1 - rgrg);
}

uvec4 MedianThrTest(sampler2D tex, ivec2 pos, bool isRedRow, vec4 thrLoF, vec4 thrHiF, out uvec4 maskPix) {
    uvec4 rC = readTexU(tex, pos); vec4 rCF = vec4(rC);
    uvec4 opix = rC;
    bvec4 isHigh = greaterThan(rCF, thrHiF); bvec4 isLow = lessThan(rCF, thrLoF);
    bvec4 isOut = bvec4(isLow.x||isHigh.x, isLow.y||isHigh.y, isLow.z||isHigh.z, isLow.w||isHigh.w);
    if(isOut.x) opix.x = MedianFirstLeft(tex, pos, isRedRow);
    if(isOut.y) opix.y = MedianSecondLeft(tex, pos, !isRedRow);
    if(isOut.z) opix.z = MedianFirstRight(tex, pos, isRedRow);
    if(isOut.w) opix.w = MedianSecondRight(tex, pos, !isRedRow);
    bvec4 vHigh = bvec4(isHigh.x && opix.x < rC.x, isHigh.y && opix.y < rC.y, isHigh.z && opix.z < rC.z, isHigh.w && opix.w < rC.w);
    maskPix = select_uvec4(uvec4(eHpOk), uvec4(eHpHot), vHigh);
    uvec4 opixHigh = select_uvec4(rC, opix, vHigh);
    bvec4 vLow = bvec4(isLow.x && opix.x > rC.x, isLow.y && opix.y > rC.y, isLow.z && opix.z > rC.z, isLow.w && opix.w > rC.w);
    maskPix = select_uvec4(maskPix, uvec4(eHpPepper), vLow);
    return select_uvec4(opixHigh, opix, vLow);
}

vec4 MinOrMean(vec4 t1, vec4 t2, bvec4 c) { return select_vec4(min(t1,t2), (t1+t2)*0.5, c); }
vec4 MeanOrMax(vec4 t1, vec4 t2, bvec4 c) { return select_vec4(max(t1,t2), (t1+t2)*0.5, c); }

float2x4 ExtraPolTest(sampler2D tex, ivec2 pos, bool isRedRow, vec2 grRedRatio, vec2 grBlueRatio, bool cluster) {
    vec4 gr_bg = vec4(isRedRow?grRedRatio.x:1.0/grBlueRatio.x, isRedRow?1.0/grBlueRatio.x:grRedRatio.x, isRedRow?grRedRatio.y:1.0/grBlueRatio.y, isRedRow?1.0/grBlueRatio.y:grRedRatio.y);
    vec4 gr_rg = vec4(isRedRow?grRedRatio.x:1.0/grBlueRatio.x, isRedRow?1.0/grRedRatio.x:grBlueRatio.x, isRedRow?grRedRatio.y:1.0/grBlueRatio.y, isRedRow?1.0/grRedRatio.y:grBlueRatio.y);
    ivec4 numR = ivec4(0); ivec4 numF = ivec4(0);
    vec4 dT = GetDiff(tex, pos-ivec2(0,2), pos-ivec2(0,1), gr_bg); numR += ivec4(greaterThan(dT, vec4(1.0))); numF += ivec4(lessThan(dT, vec4(-1.0)));
    vec4 dB = GetDiff(tex, pos+ivec2(0,2), pos+ivec2(0,1), gr_bg); numR += ivec4(greaterThan(dB, vec4(1.0))); numF += ivec4(lessThan(dB, vec4(-1.0)));
    vec4 dL = GetDiffOfs(tex, pos, pos, gr_rg, true); numR += ivec4(greaterThan(dL, vec4(1.0))); numF += ivec4(lessThan(dL, vec4(-1.0)));
    vec4 dR = GetDiffOfs(tex, pos, pos, gr_rg, false); numR += ivec4(greaterThan(dR, vec4(1.0))); numF += ivec4(lessThan(dR, vec4(-1.0)));
    vec2 brR = vec2(grRedRatio.x/grBlueRatio.x, grRedRatio.y/grBlueRatio.y);
    vec4 br_gg = vec4(isRedRow?brR.x:1.0, isRedRow?1.0:brR.x, isRedRow?brR.y:1.0, isRedRow?1.0:brR.y);
    vec4 dTL = GetDiffOfs(tex, pos-ivec2(0,2), pos-ivec2(0,1), br_gg, true); numR += ivec4(greaterThan(dTL, vec4(1.0))); numF += ivec4(lessThan(dTL, vec4(-1.0)));
    vec4 dTR = GetDiffOfs(tex, pos-ivec2(0,2), pos-ivec2(0,1), br_gg, false); numR += ivec4(greaterThan(dTR, vec4(1.0))); numF += ivec4(lessThan(dTR, vec4(-1.0)));
    vec4 dBL = GetDiffOfs(tex, pos+ivec2(0,2), pos+ivec2(0,1), br_gg, true); numR += ivec4(greaterThan(dBL, vec4(1.0))); numF += ivec4(lessThan(dBL, vec4(-1.0)));
    vec4 dBR = GetDiffOfs(tex, pos+ivec2(0,2), pos+ivec2(0,1), br_gg, false); numR += ivec4(greaterThan(dBR, vec4(1.0))); numF += ivec4(lessThan(dBR, vec4(-1.0)));
    bvec4 isFall = greaterThan(numF, numR + ivec4(uParams.extraPolTestCount)); bvec4 isRise = lessThan(numF, numR - ivec4(uParams.extraPolTestCount));
    vec4 dHM, dVM, dD1M, dD2M, dHm, dVm, dD1m, dD2m;
    if (cluster) {
        dHM = MinOrMean(dL, dR, isFall); dVM = MinOrMean(dT, dB, isFall); dD1M = MinOrMean(dTL, dBR, isFall); dD2M = MinOrMean(dTR, dBL, isFall);
        dHm = (dL+dR)*0.5; dVm = (dT+dB)*0.5; dD1m = (dTL+dBR)*0.5; dD2m = (dTR+dBL)*0.5;
    } else {
        dHM = MeanOrMax(dL, dR, isFall); dVM = MeanOrMax(dT, dB, isFall); dD1M = MeanOrMax(dTL, dBR, isFall); dD2M = MeanOrMax(dTR, dBL, isFall);
        dHm = MinOrMean(dL, dR, isRise); dVm = MinOrMean(dT, dB, isRise); dD1m = MinOrMean(dTL, dBR, isRise); dD2m = MinOrMean(dTR, dBL, isRise);
    }
    vec4 epMax = max(max(dHM, dVM), max(dD1M, dD2M)) + float(uParams.blacklevelOffset);
    vec4 epMin = min(cluster?(dHm+dVm)*0.5:min(dHm,dVm), cluster?(dD1m+dD2m)*0.5:min(dD1m,dD2m)) + float(uParams.blacklevelOffset);
    return float2x4(epMin, epMax);
}

vec4 GetRawMeanSD(sampler2D tex, ivec2 pos, bool isRedRow, out vec4 sdRG, out float rawMeanBlue, out float blueSD) {
    vec3 sumRGB = vec3(0.0);
    vec3 sumSqRGB = vec3(0.0);

    for (int j = -4; j < 4; ++j) {
        // Red/Green Row (Loop 1)
        for (int i = -1; i <= 1; ++i) {
            vec4 s = readTex(tex, pos + ivec2(i, j));
            vec2 v = isRedRow ? (s.xy+s.zw) : (s.yx+s.wz); // R+R, G+G if RedRow
            vec2 sq = isRedRow ? (Sqr(s.xy)+Sqr(s.zw)) : (Sqr(s.yx)+Sqr(s.wz));
            sumRGB.xy += v; // Accumulate R and G
            sumSqRGB.xy += sq;
        }
        j++;
        // Comp Row (Loop 2)
        for (int k = -1; k <= 1; ++k) {
            vec4 s = readTex(tex, pos + ivec2(k, j));
            vec2 v = isRedRow ? (s.xy+s.zw) : (s.yx+s.wz); // G+G, B+B if RedRow
            vec2 sq = isRedRow ? (Sqr(s.xy)+Sqr(s.zw)) : (Sqr(s.yx)+Sqr(s.wz));
            sumRGB.yz += v; // Accumulate G and B
            sumSqRGB.yz += sq;
        }
    }
    for (int i = -1; i <= 1; ++i) {
        vec4 s = readTex(tex, pos + ivec2(i, 4));
        vec2 v = isRedRow ? (s.xy+s.zw) : (s.yx+s.wz);
        vec2 sq = isRedRow ? (Sqr(s.xy)+Sqr(s.zw)) : (Sqr(s.yx)+Sqr(s.wz));
        sumRGB.xy += v;
        sumSqRGB.xy += sq;
    }

    vec4 c = readTex(tex, pos);
    vec4 pc = isRedRow ? c : c.yxwz; // permuted center (R, G, R, G) or (G, B, G, B)

    vec4 totalRG = vec4(sumRGB.xy, sumRGB.xy);
    vec4 totalSqRG = vec4(sumSqRGB.xy, sumSqRGB.xy);

    vec4 sumRG = totalRG - pc;
    vec4 sumSqRG = totalSqRG - Sqr(pc);

    vec4 scale = vec4(1.0/29.0, 1.0/53.0, 1.0/29.0, 1.0/53.0);
    vec4 rawMeanRG = sumRG * scale;
    vec4 varRG = max((sumSqRG * scale) - Sqr(rawMeanRG), 0.0);
    sdRG = sqrt(varRG);

    rawMeanBlue = sumRGB.z / 24.0;
    float varB = max((sumSqRGB.z / 24.0) - Sqr(rawMeanBlue), 0.0);
    blueSD = sqrt(varB);

    return rawMeanRG;
}

float2x4 GetMeanSD4(vec2 sR, vec2 sSq, vec2 sLM, vec2 sRM, vec2 sOL, vec2 sOR, vec4 sc) {
    vec4 sumR = vec4(sR.x-sOR.x, sR.y-sRM.x, sR.x-sOL.x, sR.y-sLM.x);
    vec4 sumSq = vec4(sSq.x-sOR.y, sSq.y-sRM.y, sSq.x-sOL.y, sSq.y-sLM.y);
    vec4 m = sumR * sc; vec4 v = max((sumSq * sc) - Sqr(m), 0.0);
    return float2x4(m, sqrt(v));
}

mat4 GetColorRedMeanSD4(sampler2D tex, ivec2 pos) {
    vec2 sumR = vec2(0.0), sumSq = vec2(0.0);
    vec2 sBR_L = vec2(0.0), sBR_R = vec2(0.0), sRR_L = vec2(0.0), sRR_R = vec2(0.0), sGB_L = vec2(0.0), sGB_R = vec2(0.0), sGR_L = vec2(0.0), sGR_R = vec2(0.0);
    for (int j = -3; j < 3; ++j) {
        for (int i = -1; i <= 1; ++i) {
            ivec2 p = pos + ivec2(i, j); vec4 px = readTex(tex, p); vec2 b = vec2(px.y, px.w) - float(uParams.blacklevelOffset);
            vec4 p_up = readTex(tex, p + ivec2(0,-1)); vec4 p_dn = readTex(tex, p + ivec2(0,1)); vec4 p_rt = readTex(tex, p + ivec2(1,0));
            vec4 gL = vec4(p_up.y, px.x, px.z, p_dn.y); vec4 gR = vec4(p_up.w, px.z, p_rt.x, p_dn.w);
            vec2 gSum = vec2(SumElem(gL), SumElem(gR)) - 4.0 * float(uParams.blacklevelOffset);
            vec2 r = max(vec2(uParams.colorRatioModerator), 4.0 * b) / max(vec2(uParams.colorRatioModerator), gSum); vec2 sq = r * r;
            sumR.y += r.x + r.y; sumSq.y += sq.x + sq.y;
            if (i == -1) sBR_L += vec2(r.x, sq.x); if (i == 1) { sBR_R += vec2(r.x, sq.x) + vec2(r.y, sq.y); sBR_L += vec2(r.y, sq.y); }
            if (i == 0 && j == 0) { sGB_R += vec2(r.x, sq.x); sGB_L += vec2(r.y, sq.y); }
            if (i == -1) { sGB_L += vec2(r.x, sq.x) + vec2(r.y, sq.y); sGB_R += vec2(r.x, sq.x); }
            if (i == 1) { sGB_R += vec2(r.x, sq.x) + vec2(r.y, sq.y); sGB_L += vec2(r.y, sq.y); }
        }
        j++;
        for (int i = -1; i <= 1; ++i) {
            ivec2 p = pos + ivec2(i, j); vec4 px = readTex(tex, p); vec2 rd = vec2(px.x, px.z) - float(uParams.blacklevelOffset);
            vec4 p_up = readTex(tex, p + ivec2(0,-1)); vec4 p_dn = readTex(tex, p + ivec2(0,1)); vec4 p_lt = readTex(tex, p + ivec2(-1,0));
            vec4 gL = vec4(p_up.x, p_lt.w, px.y, p_dn.x); vec4 gR = vec4(p_up.z, px.y, px.w, p_dn.z);
            vec2 gSum = vec2(SumElem(gL), SumElem(gR)) - 4.0 * float(uParams.blacklevelOffset);
            vec2 r = max(vec2(uParams.colorRatioModerator), 4.0 * rd) / max(vec2(uParams.colorRatioModerator), gSum); vec2 sq = r * r;
            sumR.x += r.x + r.y; sumSq.x += sq.x + sq.y;
            if (i == 0 && j == 0) { sRR_R += vec2(r.x, sq.x); sRR_L += vec2(r.y, sq.y); }
            if (i == -1) { sRR_L += vec2(r.x, sq.x) + vec2(r.y, sq.y); sRR_R += vec2(r.x, sq.x); }
            if (i == 1) { sRR_R += vec2(r.x, sq.x) + vec2(r.y, sq.y); sRR_L += vec2(r.y, sq.y); }
            if (i == -1) { sGR_R += vec2(r.x, sq.x); sGR_L += vec2(r.x, sq.x) + vec2(r.y, sq.y); }
            if (i == 1) sGR_R += vec2(r.y, sq.y);
        }
    }
    int j = 3;
    for (int i = -1; i <= 1; ++i) {
        ivec2 p = pos + ivec2(i, j); vec4 px = readTex(tex, p); vec2 b = vec2(px.y, px.w) - float(uParams.blacklevelOffset);
        vec4 p_up = readTex(tex, p + ivec2(0,-1)); vec4 p_dn = readTex(tex, p + ivec2(0,1)); vec4 p_rt = readTex(tex, p + ivec2(1,0));
        vec4 gL = vec4(p_up.y, px.x, px.z, p_dn.y); vec4 gR = vec4(p_up.w, px.z, p_rt.x, p_dn.w);
        vec2 gSum = vec2(SumElem(gL), SumElem(gR)) - 4.0 * float(uParams.blacklevelOffset);
        vec2 r = max(vec2(uParams.colorRatioModerator), 4.0 * b) / max(vec2(uParams.colorRatioModerator), gSum); vec2 sq = r * r;
        sumR.y += r.x + r.y; sumSq.y += sq.x + sq.y;
        if (i == -1) sBR_L += vec2(r.x, sq.x); if (i == 1) { sBR_R += vec2(r.x, sq.x) + vec2(r.y, sq.y); sBR_L += vec2(r.y, sq.y); }
        if (i == 0 && j == 0) { sGB_R += vec2(r.x, sq.x); sGB_L += vec2(r.y, sq.y); }
        if (i == -1) { sGB_L += vec2(r.x, sq.x) + vec2(r.y, sq.y); sGB_R += vec2(r.x, sq.x); }
        if (i == 1) { sGB_R += vec2(r.x, sq.x) + vec2(r.y, sq.y); sGB_L += vec2(r.y, sq.y); }
    }
    float2x4 msR = GetMeanSD4(sumR, sumSq, sBR_L, sBR_R, sRR_L, sRR_R, vec4(1.0/8.0, 1.0/16.0, 1.0/8.0, 1.0/16.0));
    float2x4 msG = GetMeanSD4(sumR, sumSq, sGB_L, sGB_R, sGR_L, sGR_R, vec4(1.0/12.0));
    return mat4(msR.m0, msG.m0, msR.m1, msG.m1);
}

mat4 GetColorGreenMeanSD4(sampler2D tex, ivec2 pos) {
    vec2 sumR = vec2(0.0), sumSq = vec2(0.0);
    vec2 sBR_L = vec2(0.0), sBR_R = vec2(0.0), sRR_L = vec2(0.0), sRR_R = vec2(0.0), sGB_L = vec2(0.0), sGB_R = vec2(0.0), sGR_L = vec2(0.0), sGR_R = vec2(0.0);
    for (int j = -3; j < 3; ++j) {
        for (int i = -1; i <= 1; ++i) {
            ivec2 p = pos + ivec2(i, j); vec4 px = readTex(tex, p); vec2 rd = vec2(px.x, px.z) - float(uParams.blacklevelOffset);
            vec4 p_up = readTex(tex, p + ivec2(0,-1)); vec4 p_dn = readTex(tex, p + ivec2(0,1)); vec4 p_lt = readTex(tex, p + ivec2(-1,0));
            vec4 gL = vec4(p_up.x, p_lt.w, px.y, p_dn.x); vec4 gR = vec4(p_up.z, px.y, px.w, p_dn.z);
            vec2 gSum = vec2(SumElem(gL), SumElem(gR)) - 4.0 * float(uParams.blacklevelOffset);
            vec2 r = max(vec2(uParams.colorRatioModerator), 4.0 * rd) / max(vec2(uParams.colorRatioModerator), gSum); vec2 sq = r * r;
            sumR.x += r.x + r.y; sumSq.x += sq.x + sq.y;
            if (i == 0 && j == 0) { sRR_R += vec2(r.x, sq.x); sRR_L += vec2(r.y, sq.y); }
            if (i == -1) { sRR_L += vec2(r.x, sq.x) + vec2(r.y, sq.y); sRR_R += vec2(r.x, sq.x); }
            if (i == 1) { sRR_R += vec2(r.x, sq.x) + vec2(r.y, sq.y); sRR_L += vec2(r.y, sq.y); }
            if (i == -1) { sGR_R += vec2(r.x, sq.x); sGR_L += vec2(r.x, sq.x) + vec2(r.y, sq.y); }
            if (i == 1) sGR_R += vec2(r.y, sq.y);
        }
        j++;
        for (int i = -1; i <= 1; ++i) {
            ivec2 p = pos + ivec2(i, j); vec4 px = readTex(tex, p); vec2 b = vec2(px.y, px.w) - float(uParams.blacklevelOffset);
            vec4 p_up = readTex(tex, p + ivec2(0,-1)); vec4 p_dn = readTex(tex, p + ivec2(0,1)); vec4 p_rt = readTex(tex, p + ivec2(1,0));
            vec4 gL = vec4(p_up.y, px.x, px.z, p_dn.y); vec4 gR = vec4(p_up.w, px.z, p_rt.x, p_dn.w);
            vec2 gSum = vec2(SumElem(gL), SumElem(gR)) - 4.0 * float(uParams.blacklevelOffset);
            vec2 r = max(vec2(uParams.colorRatioModerator), 4.0 * b) / max(vec2(uParams.colorRatioModerator), gSum); vec2 sq = r * r;
            sumR.y += r.x + r.y; sumSq.y += sq.x + sq.y;
            if (i == -1) sBR_L += vec2(r.x, sq.x); if (i == 1) { sBR_R += vec2(r.x, sq.x) + vec2(r.y, sq.y); sBR_L += vec2(r.y, sq.y); }
            if (i == 0 && j == 0) { sGB_R += vec2(r.x, sq.x); sGB_L += vec2(r.y, sq.y); }
            if (i == -1) { sGB_L += vec2(r.x, sq.x) + vec2(r.y, sq.y); sGB_R += vec2(r.x, sq.x); }
            if (i == 1) { sGB_R += vec2(r.x, sq.x) + vec2(r.y, sq.y); sGB_L += vec2(r.y, sq.y); }
        }
    }
    float2x4 msR = GetMeanSD4(sumR, sumSq, sBR_L, sBR_R, sRR_L, sRR_R, vec4(1.0/12.0));
    float2x4 msG = GetMeanSD4(sumR, sumSq, sGB_L, sGB_R, sGR_L, sGR_R, vec4(1.0/16.0, 1.0/8.0, 1.0/16.0, 1.0/8.0));
    return mat4(msR.m0, msG.m0, msR.m1, msG.m1);
}

uvec4 doHotPix(ivec2 pos, bool isRedRow, out uvec4 maskVal) {
    vec4 sdRG; float rawMeanB, sdB;
    vec4 rawMeanRG = GetRawMeanSD(uInputTexture0, pos, isRedRow, sdRG, rawMeanB, sdB);
    vec4 meanRGratio, meanBGratio;
    if (isRedRow) {
        mat4 ms = GetColorRedMeanSD4(uInputTexture0, pos);
        meanRGratio = ms[0]; meanBGratio = ms[1];
    } else {
        mat4 ms = GetColorGreenMeanSD4(uInputTexture0, pos);
        meanBGratio = ms[0]; meanRGratio = ms[1];
    }
    vec2 grRed = vec2(2.0/(meanRGratio.x+meanRGratio.y), 2.0/(meanRGratio.z+meanRGratio.w));
    vec2 grBlue = vec2(2.0/(meanBGratio.x+meanBGratio.y), 2.0/(meanBGratio.z+meanBGratio.w));
    vec4 sFactHi = vec4(uParams.sDFactHiRedBlue, uParams.sDFactHiGreen, uParams.sDFactHiRedBlue, uParams.sDFactHiGreen);
    vec4 diffHi = max(sFactHi * sdRG, uParams.trivialDiffThr);
    vec4 thrMeanRGHi = rawMeanRG + diffHi;
    float2x4 ep = ExtraPolTest(uInputTexture0, pos, isRedRow, grRed, grBlue, false);
    vec4 thrHi = max(isRedRow ? thrMeanRGHi : thrMeanRGHi.yxwz, ep.m1);
    vec4 diffLo = max(uParams.sDFactLo * sdRG, uParams.trivialDiffThr);
    vec4 thrMeanRGLo = rawMeanRG - diffLo;
    vec4 thrLo = min(isRedRow ? thrMeanRGLo : thrMeanRGLo.yxwz, min(ep.m0, float(uParams.trivialPepperMinThr)));
    return MedianThrTest(uInputTexture0, pos, isRedRow, thrLo, thrHi, maskVal);
}

void main() {
    ivec2 margin = ivec2(int(uParams.marginX) / 4, int(uParams.marginY));
    ivec2 srcCoord = ivec2(gl_FragCoord.xy) + margin;
    bool leftmostisGreen = ((int(gl_FragCoord.y)) & 1) == 1;
    uvec4 outMask, outColor;
    outColor = doHotPix(srcCoord, !leftmostisGreen, outMask);
    FragColor = vec4(outColor) / MAX_VAL;
    FragMask = vec4(outMask) / 255.0;
}
