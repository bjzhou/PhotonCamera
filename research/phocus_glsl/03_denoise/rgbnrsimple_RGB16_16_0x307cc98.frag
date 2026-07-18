/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: e920533ef360bffa8007445902f5797a221900d0bb56e70312ee08e9ad0135ce
 * ELF offsets: 0x307cc98
 * Symbols: rgbnrsimple_RGB16_16_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform vec2 uImageSize;
uniform float blackOffset;
uniform vec4 compVecThr;

float Luminance(vec4 pix) {
    float lum = pix.r + pix.g + pix.b;
    return lum;
}

vec4 thrCompare(vec4 pix, vec4 pixS, vec4 vecThr) {
    vec4 diff = abs(pix - pixS);
    vec4 compare = step(diff, vecThr);
    return compare;
}

vec4 CheckPosition(vec4 res, vec2 offset) {
    vec2 searchcoord = gl_FragCoord.xy + offset;
    searchcoord = clamp(searchcoord, vec2(0.0), uImageSize - vec2(1.0));
    vec2 texCoord = searchcoord / uImageSize;
    vec4 searchPix = texture(uInputTexture0, texCoord);
    searchPix.a = Luminance(searchPix);
    vec4 comp = thrCompare(res, searchPix, compVecThr);
    float compVal = comp.r * comp.g * comp.b * comp.a;
    searchPix.a = 1.0;
    return compVal * searchPix;
}

vec4 CalculateMean(vec4 sumCount, float alpha, float blackOffset) {
    vec3 avg = sumCount.rgb / sumCount.a;
    avg -= blackOffset;
    avg = max(vec3(0.0), avg);
    return vec4(avg, alpha);
}

void main() {
    vec4 res = texture(uInputTexture0, TexCoord);
    float alpha = res.a;
    res.a = Luminance(res);
    vec4 sumCount = vec4(res.r, res.g, res.b, 1.0);
    int k = 12;
    for (int j = -k; j <= k; ++j) {
        for (int i = -k; i <= k; ++i) {
            sumCount += CheckPosition(res, vec2(float(i), float(j)));
        }
    }
    FragColor = CalculateMean(sumCount, alpha, blackOffset);
}
