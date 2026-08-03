/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: ea3760a5920497c1d661adf7132a31d29544b34d386deb1d87ba6b3d41b935a7
 * ELF offsets: 0x307c71b
 * Symbols: cacheCmosCache3_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

uniform sampler2D uInputTexture0;
uniform vec2 uInvTextureSize;

in vec2 TexCoord;
out vec4 FragColor;

void main() {
    vec4 center      = texture(uInputTexture0, TexCoord);
    vec4 top         = texture(uInputTexture0, TexCoord + vec2(0.0, -uInvTextureSize.y));
    vec4 bottom      = texture(uInputTexture0, TexCoord + vec2(0.0,  uInvTextureSize.y));
    vec4 topLeft     = texture(uInputTexture0, TexCoord + vec2(-uInvTextureSize.x, -uInvTextureSize.y));
    vec4 topRight    = texture(uInputTexture0, TexCoord + vec2( uInvTextureSize.x, -uInvTextureSize.y));
    vec4 bottomLeft  = texture(uInputTexture0, TexCoord + vec2(-uInvTextureSize.x,  uInvTextureSize.y));
    vec4 bottomRight = texture(uInputTexture0, TexCoord + vec2( uInvTextureSize.x,  uInvTextureSize.y));

    bool isRedRow = (int(gl_FragCoord.y) & 1) == 0;
    vec2 blueSumG1, greenSumG1;

    if (isRedRow) {
        blueSumG1  = vec2(bottom.y + top.y, bottom.w + top.w);
        float bgMC = top.z + bottom.z;
        greenSumG1 = vec2(top.x + bottom.x + bgMC, topRight.x + bottomRight.x + bgMC);
    } else {
        blueSumG1  = vec2(bottom.x + top.x, bottom.z + top.z);
        float bgMC = top.y + bottom.y;
        greenSumG1 = vec2(topLeft.w + bottomLeft.w + bgMC, top.w + bottom.w + bgMC);
    }

    FragColor = vec4(blueSumG1 / 2.0, greenSumG1 / 4.0);
}
