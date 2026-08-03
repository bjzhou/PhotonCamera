/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 54386a68d91b8e178b310919a8c991f2752bdd840fe5a53f4c855be5f7a4f8fb
 * ELF offsets: 0x309776e
 * Symbols: rgbnrcdiff_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

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

vec4 CnrDiffColor(vec2 pos, int kernSize, int skip, float lumaThr, float channelThr, float blackOffset) {
    vec4 sum = vec4(0.0);
    float count = 0.0;

    ivec2 texSize = textureSize(uInputTexture0, 0);
    vec2 texSizeF = vec2(texSize);

    vec4 center = texture(uInputTexture0, pos);
    center = center * 65535.0;

    float lumaC = center.r + center.g + center.b;
    vec3 lumGrDiffC = vec3(lumaC, center.g - center.r, center.g - center.b);
    vec3 lumCDiffThr = vec3(lumaThr, channelThr, channelThr);

    for (int j = -kernSize; j < kernSize; j += skip) {
        for (int i = -kernSize; i < kernSize; i += skip) {
            vec2 pixelOffset = vec2(float(i), float(j));
            vec2 texOffset = pixelOffset / texSizeF;
            vec2 searchPos = pos + texOffset;
            searchPos = clamp(searchPos, vec2(0.0), vec2(1.0));

            vec4 candidate = texture(uInputTexture0, searchPos);
            candidate = candidate * 65535.0;

            float luma = candidate.r + candidate.g + candidate.b;
            vec3 lumGrDiffS = vec3(luma, candidate.g - candidate.r, candidate.g - candidate.b);

            bvec3 cond = lessThan(abs(lumGrDiffS - lumGrDiffC), lumCDiffThr);
            if (all(cond)) {
                sum += candidate;
                count += 1.0;
            }
        }
    }

    vec4 avg = (count > 0.0) ? (sum / count) : center;
    vec4 res = avg - blackOffset;
    res = max(res, vec4(0.0));
    res.a = center.a;

    return res / 65535.0;
}

void main() {
    vec2 inputTexSize = vec2(textureSize(uInputTexture0, 0));
    vec2 posPx = gl_FragCoord.xy + vec2(uMarginX, uMarginY);
    vec2 pos = posPx / inputTexSize;
    FragColor = CnrDiffColor(pos, uKernSize, uSkip, uLumaThr, uChannelThr, float(uBlackOffset));
}
