/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: f3fe5f3c34819255ebb82f092eed86346a1e31b351c6d54b2771b7866d3492f7
 * ELF offsets: 0x303b1b3
 * Symbols: cacheCmosG1G2Cache2_fragmentShaderSource
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
    vec2 horizSum, vertSum;

    if (isRedRow) {
        horizSum = vec2(left.w + center.y + center.w, center.y + center.w + right.y);
        vertSum = vec2(top2.y + center.y + bottom2.y, top2.w + center.w + bottom2.w);
    } else {
        horizSum = vec2(left.z + center.x + center.z, center.x + center.z + right.x);
        vertSum = vec2(top2.x + center.x + bottom2.x, top2.z + center.z + bottom2.z);
    }

    FragColor = vec4(horizSum / 3.0, vertSum / 3.0);
}
