/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 1fd2aa77c9667d8cfdce32d82f263caaefb216a28936ea7e2864847063731a33
 * ELF offsets: 0x306decf
 * Symbols: cacheCmosRedBlueCache1_fragmentShaderSource
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
    vec4 top2 = texture(uInputTexture0, TexCoord + vec2(0.0, -2.0 * uInvTextureSize.y));
    vec4 bottom2 = texture(uInputTexture0, TexCoord + vec2(0.0, 2.0 * uInvTextureSize.y));

    bool isRedRow = (int(gl_FragCoord.y) & 1) == 0;
    vec2 vertSum, grAveRed;
    vec2 grSumHRed, grSumVRed;

    if (isRedRow) {
        grSumHRed = vec2(left.w + center.y, center.y + center.w);
        grSumVRed = vec2(top.x + bottom.x, top.z + bottom.z);
        float redSumM = center.x + center.z;
        vertSum = vec2(top2.x + center.x + bottom2.x, top2.z + center.z + bottom2.z);
    } else {
        grSumHRed = vec2(center.x + center.z, center.z + right.x);
        grSumVRed = vec2(bottom.y + top.y, bottom.w + top.w);
        float redSumM = center.y + center.w;
        vertSum = vec2(top2.y + center.y + bottom2.y, top2.w + center.w + bottom2.w);
    }

    vec2 greenSumRed = grSumHRed + grSumVRed;
    grAveRed = greenSumRed / 4.0;

    FragColor = vec4(vertSum / 3.0, grAveRed / 1.0);
}
