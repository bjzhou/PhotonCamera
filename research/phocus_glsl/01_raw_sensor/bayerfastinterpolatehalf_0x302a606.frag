/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 805ab3ff49fd22152dce086812cac32e9062ddc56861d30aa04aa2b12c46def2
 * ELF offsets: 0x302a606
 * Symbols: bayerfastinterpolatehalf_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

uniform sampler2D uInputTexture0;
uniform vec2 uMargins;
uniform int uOrientation;
uniform bool uBlurGreen;

uniform vec2 uTextureSize;
uniform vec2 uOutputSize;

in vec2 TexCoord;
out vec4 FragColor;


vec2 mixUS2(vec2 a, vec2 b) {
    return vec2(a.x / 2.0 + b.x / 2.0, a.y / 2.0 + b.y / 2.0);
}

void main() {
    vec2 outPos = gl_FragCoord.xy;

    vec2 blockPos = vec2(outPos.x / 2.0, outPos.y);

    vec2 inBasePos = vec2(floor(blockPos.x + (uMargins.x / 4.0)), floor(blockPos.y) * 2.0 + uMargins.y);

    float pixelInBlockFloat = mod(outPos.x, 2.0);
    int pixelInBlock = int(floor(pixelInBlockFloat));

    vec2 textureSize = uTextureSize;
    vec2 inPos1 = (inBasePos + 0.5) / textureSize;
    vec2 inPos2 = (vec2(inBasePos.x, inBasePos.y + 1.0) + 0.5) / textureSize;

    vec4 inPix1 = texture(uInputTexture0, inPos1);
    vec4 inPix2 = texture(uInputTexture0, inPos2);

    vec2 block0 = vec2(inPix1.x, inPix1.z);
    vec2 block1 = vec2(inPix1.y, inPix1.w);
    vec2 block2 = vec2(inPix2.x, inPix2.z);
    vec2 block3 = vec2(inPix2.y, inPix2.w);

    vec2 reds = vec2(0.0);
    vec2 greens = vec2(0.0);
    vec2 blues = vec2(0.0);

    switch (uOrientation) {
        case 0:
            reds   = block0;
            greens = mixUS2(block1, block2);
            blues  = block3;
            break;
        case 90:
            reds   = block1;
            greens = mixUS2(block0, block3);
            blues  = block2;
            break;
        case 180:
            reds   = block3;
            greens = mixUS2(block1, block2);
            blues  = block0;
            break;
        case 270:
            reds   = block2;
            greens = mixUS2(block0, block3);
            blues  = block1;
            break;
    }

    vec4 result;
    if (pixelInBlock == 0) {
        result = vec4(reds.x, greens.x, blues.x, 0.0);
    } else {
        result = vec4(reds.y, greens.y, blues.y, 0.0);
    }

    FragColor = result;
}
