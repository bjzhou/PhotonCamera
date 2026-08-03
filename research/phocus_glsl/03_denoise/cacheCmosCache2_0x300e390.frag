/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: c54309c364704060a762899687cb5552463b112200ba20e6380dfabef41cf04a
 * ELF offsets: 0x300e390
 * Symbols: cacheCmosCache2_fragmentShaderSource
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
    vec2 green1ValG1, redSumG1;

    if (isRedRow) {
        green1ValG1 = center.yw;
        redSumG1    = vec2(center.x + center.z, center.z + right.x);
    } else {
        green1ValG1 = center.xz;
        redSumG1    = vec2(left.w + center.y, center.y + center.w);
    }

    FragColor = vec4(green1ValG1 / 1.0, redSumG1 / 2.0);
}
