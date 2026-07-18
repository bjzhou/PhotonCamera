/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 0e308203f748e9d878cfd3e0006993f4df8c422e6922b8ad5118a91254fc4103
 * ELF offsets: 0x3072e51
 * Symbols: rgbnr_fragmentShaderSource
 */

#version 300 es
precision highp float;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;

uniform float uMarginX;
uniform float uMarginY;
uniform int uBlackOffset;
uniform int uKernSize;
uniform int uSkip;
uniform float uLumaThr;
uniform float uChannelThr;

vec4 CnrRGB(vec2 pos, int kernSize, int skip, float lumaThr, float channelThr, float blackOffset) {
    vec4 sum = vec4(0.0);
    float count = 0.0;

    vec2 texSize = vec2(textureSize(uInputTexture0, 0));

    vec4 center = texture(uInputTexture0, pos);
    float lumaC = center.r + center.g + center.b;
    vec4 lumRgbDiffC = vec4(lumaC, center.r, center.g, center.b);
    vec4 lumRgbDiffThr = vec4(lumaThr, channelThr, channelThr, channelThr);

    for (int j = -kernSize; j < kernSize; j += skip) {
        for (int i = -kernSize; i < kernSize; i += skip) {
            vec2 pixelOffset = vec2(float(i), float(j));
            vec2 texOffset = pixelOffset / texSizeF;
            vec2 searchPos = pos + texOffset;
            vec4 candidate = texture(uInputTexture0, searchPos);
            float luma = candidate.r + candidate.g + candidate.b;
            vec4 lumRgbDiffS = vec4(luma, candidate.r, candidate.g, candidate.b);

            bvec4 cond = lessThan(abs(lumRgbDiffS - lumRgbDiffC), lumRgbDiffThr);
            if (all(cond)) {
                sum += candidate;
                count += 1.0;
            }
        }
    }

    vec4 avg = (count > 0.0) ? (sum / count) : center;
    vec4 res = avg - blackOffset / 65535.0;
    res.a = center.a;
    return res;
}

void main() {
    vec2 texSize = vec2(textureSize(uInputTexture0, 0));
    vec2 posPx = TexCoord * texSize + vec2(uMarginX, uMarginY);
    vec2 pos = posPx / texSize;
    FragColor = CnrRGB(pos, uKernSize, uSkip, uLumaThr, uChannelThr, float(uBlackOffset));
}
