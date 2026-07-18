/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: c7f420d715f7cf77f2a9e4f39d3a91210a32fb7ae3f3bb76eb54060c35dbb03a
 * ELF offsets: 0x30501d4
 * Symbols: cacheCmosCache0_fragmentShaderSource
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
    vec4 left   = texture(uInputTexture0, TexCoord + vec2(-uInvTextureSize.x, 0.0));
    vec4 right  = texture(uInputTexture0, TexCoord + vec2( uInvTextureSize.x, 0.0));

    bool isRedRow = (int(gl_FragCoord.y) & 1) == 0;
    vec2 redValRed, grSumHRed;

    if (isRedRow) {
        redValRed  = center.xz;
        grSumHRed  = vec2(left.w + center.y, center.y + center.w);
    } else {
        redValRed  = center.yw;
        grSumHRed  = vec2(center.x + center.z, center.z + right.x);
    }

    FragColor = vec4(redValRed / 1.0, grSumHRed / 2.0);
}
