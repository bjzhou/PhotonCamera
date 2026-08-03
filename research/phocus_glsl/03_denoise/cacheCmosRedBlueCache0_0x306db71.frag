/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 25d520100eef854bba77d939159fe21fd7680371cc3f7b6f62e6585458e055d6
 * ELF offsets: 0x306db71
 * Symbols: cacheCmosRedBlueCache0_fragmentShaderSource
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
    vec2 redvalRed, horizSum;

    if (isRedRow) {
        redvalRed = center.xz;
        float redSumM = center.x + center.z;
        horizSum = vec2(left.z + redSumM, redSumM + right.x);
    } else {
        redvalRed = center.yw;
        float redSumM = center.y + center.w;
        horizSum = vec2(left.w + redSumM, redSumM + right.y);
    }

    FragColor = vec4(redvalRed / 1.0, horizSum / 3.0);
}
