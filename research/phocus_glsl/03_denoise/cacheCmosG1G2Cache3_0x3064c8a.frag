/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 63a9a7da2c59cdee8169bf505f93bba4d04bcb1f4bf20c9acff24ab92b7975de
 * ELF offsets: 0x3064c8a
 * Symbols: cacheCmosG1G2Cache3_fragmentShaderSource
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
    vec4 top = texture(uInputTexture0, TexCoord + vec2(0.0, -uInvTextureSize.y));
    vec4 bottom = texture(uInputTexture0, TexCoord + vec2(0.0, uInvTextureSize.y));
    vec4 topLeft = texture(uInputTexture0, TexCoord + vec2(-uInvTextureSize.x, -uInvTextureSize.y));
    vec4 topRight = texture(uInputTexture0, TexCoord + vec2(uInvTextureSize.x, -uInvTextureSize.y));
    vec4 bottomRight = texture(uInputTexture0, TexCoord + vec2(uInvTextureSize.x, uInvTextureSize.y));
    vec4 bottomLeft = texture(uInputTexture0, TexCoord + vec2(-uInvTextureSize.x, uInvTextureSize.y));

    bool isRedRow = (int(gl_FragCoord.y) & 1) == 0;
    vec2 diagRSum, diagLSum;

    if (isRedRow) {
        diagRSum = vec2(top.x + center.y + bottom.z, top.z + center.w + bottomRight.x);
        diagLSum = vec2(bottom.x + center.y + top.z, bottom.z + center.w + topRight.x);
    } else {
        diagRSum = vec2(topLeft.w + center.x + bottom.y, top.y + center.z + bottom.w);
        diagLSum = vec2(bottomLeft.w + center.x + top.y, bottom.y + center.z + top.w);
    }

    FragColor = vec4(diagRSum / 3.0, diagLSum / 3.0);
}
