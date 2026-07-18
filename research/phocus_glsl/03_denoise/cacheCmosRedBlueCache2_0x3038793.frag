/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: d3fc268abeb04b0953757c16d8bafcb1907a30fe349cc7f5417371eb5af0aa65
 * ELF offsets: 0x3038793
 * Symbols: cacheCmosRedBlueCache2_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

uniform sampler2D uInputTexture0;
uniform vec2 uInvTextureSize;

in vec2 TexCoord;
out vec4 FragColor;

void main() {
    vec4 center = texture(uInputTexture0, TexCoord);
    vec4 left = texture(uInputTexture0, TexCoord + vec2(-uInvTextureSize.x, 0.0));
    vec4 right = texture(uInputTexture0, TexCoord + vec2(uInvTextureSize.x, 0.0));
    vec4 top = texture(uInputTexture0, TexCoord + vec2(0.0, -uInvTextureSize.y));
    vec4 bottom = texture(uInputTexture0, TexCoord + vec2(0.0, uInvTextureSize.y));
    vec4 topLeft = texture(uInputTexture0, TexCoord + vec2(-uInvTextureSize.x, -uInvTextureSize.y));
    vec4 topRight = texture(uInputTexture0, TexCoord + vec2(uInvTextureSize.x, -uInvTextureSize.y));
    vec4 bottomLeft = texture(uInputTexture0, TexCoord + vec2(-uInvTextureSize.x, uInvTextureSize.y));
    vec4 bottomRight = texture(uInputTexture0, TexCoord + vec2(uInvTextureSize.x, uInvTextureSize.y));

    bool isRedRow = (int(gl_FragCoord.y) & 1) == 0;
    vec2 blueAveRed, lumaRed;
    vec2 grSumHRed, grSumVRed, blueSumRed;
    vec2 redvalRed, grAveRed;

    if (isRedRow) {
        redvalRed = center.xz;
        grSumHRed = vec2(left.w + center.y, center.y + center.w);
        grSumVRed = vec2(top.x + bottom.x, top.z + bottom.z);
        float blueSumM = top.y + bottom.y;
        blueSumRed = vec2(topLeft.w + bottomLeft.w, top.w + bottom.w) + vec2(blueSumM);
    } else {
        redvalRed = center.yw;
        grSumHRed = vec2(center.x + center.z, center.z + right.x);
        grSumVRed = vec2(bottom.y + top.y, bottom.w + top.w);
        float blueSumM = top.z + bottom.z;
        blueSumRed = vec2(top.x + bottom.x, topRight.x + bottomRight.x) + vec2(blueSumM);
    }

    vec2 greenSumRed = grSumHRed + grSumVRed;
    grAveRed = greenSumRed / 4.0;
    blueAveRed = blueSumRed / 4.0;
    lumaRed = redvalRed + 2.0 * grAveRed + blueAveRed;

    FragColor = vec4(blueAveRed / 1.0, lumaRed / 4.0);
}
