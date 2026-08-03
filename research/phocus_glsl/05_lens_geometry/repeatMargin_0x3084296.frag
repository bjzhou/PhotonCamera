/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 9373e67d9d551351332bb5ad0d8727a1e3a8524bd8cf1d63d27a92baab843eb5
 * ELF offsets: 0x3084296
 * Symbols: repeatMargin_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
precision highp int;

out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform bool uDirectCopy;
uniform vec4 uValidArea;
uniform vec2 uMargin;

void main() {
    ivec2 pixelCoord = ivec2(gl_FragCoord.xy);

    if (uDirectCopy) {
        FragColor = texelFetch(uInputTexture0, pixelCoord, 0);
        return;
    }

    int validL = int(uValidArea.x);
    int validT = int(uValidArea.y);
    int validR = int(uValidArea.z);
    int validB = int(uValidArea.w);
    ivec2 marginI = ivec2(uMargin);

    if (validR <= validL || validB <= validT) {
        FragColor = texelFetch(uInputTexture0, pixelCoord + marginI, 0);
        return;
    }

    int srcX = pixelCoord.x;
    if (srcX < validL) {
        srcX = validL + (abs(validL - pixelCoord.x) % 2);
    }
    else if (srcX >= validR) {
        int edge = validR - 1;
        srcX = edge - (abs(edge - pixelCoord.x) % 2);
    }

    int srcY = pixelCoord.y;
    if (srcY < validT) {
        srcY = validT + (abs(validT - pixelCoord.y) % 2);
    }
    else if (srcY >= validB) {
        int edge = validB - 1;
        srcY = edge - (abs(edge - pixelCoord.y) % 2);
    }

    ivec2 finalSourceCoord = ivec2(srcX, srcY) + marginI;

    FragColor = texelFetch(uInputTexture0, finalSourceCoord, 0);
}
