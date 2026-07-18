/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 772e7494a86ba3a7164e9b369e45dd64a1104e56361efa9f6396d5ea49c6a7a9
 * ELF offsets: 0x303310c
 * Symbols: multi2bayer_ms2bayer3_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

uniform sampler2D uInputTexture0;
uniform vec2 uTextureSize;
uniform ivec2 uMargin;
uniform ivec2 uOffset;

out vec4 FragColor;

void main(){
    ivec2 gid = ivec2(gl_FragCoord.xy);

    ivec2 pos = ivec2(gid.x * 4, gid.y) + uMargin;
    ivec2 bayerPos = gid + uOffset;

    if(pos.x >= int(uTextureSize.x) || pos.y < 0 || pos.y >= int(uTextureSize.y)){
        FragColor = vec4(0.0);
        return;
    }
    int limitX = int(uTextureSize.x) - 1;

    int x0 = clamp(pos.x + 0, 0, limitX);
    int x1 = clamp(pos.x + 1, 0, limitX);
    int x2 = clamp(pos.x + 2, 0, limitX);
    int x3 = clamp(pos.x + 3, 0, limitX);

    vec4 v0 = texelFetch(uInputTexture0, ivec2(x0, pos.y), 0);
    vec4 v1 = texelFetch(uInputTexture0, ivec2(x1, pos.y), 0);
    vec4 v2 = texelFetch(uInputTexture0, ivec2(x2, pos.y), 0);
    vec4 v3 = texelFetch(uInputTexture0, ivec2(x3, pos.y), 0);

    if ((bayerPos.y & 1) == 0) {
        FragColor = vec4(v0.r, v1.g, v2.r, v3.g);
    } else {
        FragColor = vec4(v0.g, v1.b, v2.g, v3.b);
    }
}
