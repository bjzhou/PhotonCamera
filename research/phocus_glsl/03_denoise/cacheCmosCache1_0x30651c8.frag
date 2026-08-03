/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 75b79c1ff7a65dce4caaa4a318e8831830581262ba3641abbc911404105fd626
 * ELF offsets: 0x30651c8
 * Symbols: cacheCmosCache1_fragmentShaderSource
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
    vec2 grSumVRed, blueSumRed;

    if (isRedRow) {
        grSumVRed  = vec2(top.x + bottom.x, top.z + bottom.z);
        float bgMC = top.y + bottom.y;
        blueSumRed = vec2(topLeft.w + bottomLeft.w + bgMC, top.w + bottom.w + bgMC);
    } else {
        grSumVRed  = vec2(bottom.y + top.y, bottom.w + top.w);
        float bgMC = top.z + bottom.z;
        blueSumRed = vec2(top.x + bottom.x + bgMC, topRight.x + bottomRight.x + bgMC);
    }

    FragColor = vec4(grSumVRed / 2.0, blueSumRed / 4.0);
}
