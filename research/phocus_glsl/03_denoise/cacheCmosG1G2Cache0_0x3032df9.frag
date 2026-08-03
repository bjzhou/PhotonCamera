/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 07200b7b375227e9abc24cb9bc8583f5977e8c9e89f6bc9e3363bf04aca6c348
 * ELF offsets: 0x3032df9
 * Symbols: cacheCmosG1G2Cache0_fragmentShaderSource
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

    bool isRedRow = (int(gl_FragCoord.y) & 1) == 0;
    vec2 green1ValG1, redSumG1;

    if (isRedRow) {
        green1ValG1 = center.yw;
        redSumG1 = vec2(center.x + center.z, center.z + right.x);
    } else {
        green1ValG1 = center.xz;
        redSumG1 = vec2(left.w + center.y, center.y + center.w);
    }

    FragColor = vec4(green1ValG1 / 1.0, redSumG1 / 2.0);
}
