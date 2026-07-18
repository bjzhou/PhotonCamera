/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 9f177bedb3419c59f2297600453a289d254763433b0bb6c83256845c271b1cb6
 * ELF offsets: 0x302135f
 * Symbols: cacheCmosG1G2Cache1_fragmentShaderSource
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
    vec4 bottomLeft = texture(uInputTexture0, TexCoord + vec2(-uInvTextureSize.x, uInvTextureSize.y));
    vec4 bottomRight = texture(uInputTexture0, TexCoord + vec2(uInvTextureSize.x, uInvTextureSize.y));

    bool isRedRow = (int(gl_FragCoord.y) & 1) == 0;
    vec2 blueSumG1, greenSumG1;

    if (isRedRow) {
        blueSumG1 = vec2(bottom.y + top.y, bottom.w + top.w);
        float green2Sum = top.z + bottom.z;
        greenSumG1 = vec2(top.x + bottom.x, topRight.x + bottomRight.x) + vec2(green2Sum);
    } else {
        blueSumG1 = vec2(bottom.x + top.x, bottom.z + top.z);
        float green2Sum = top.y + bottom.y;
        greenSumG1 = vec2(topLeft.w + bottomLeft.w, top.w + bottom.w) + vec2(green2Sum);
    }

    FragColor = vec4(blueSumG1 / 2.0, greenSumG1 / 4.0);
}
