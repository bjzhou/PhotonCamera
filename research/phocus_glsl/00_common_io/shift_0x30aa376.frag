/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: ceeb71df7570cf8008284d9f509049a60ddc160aed621ed97e82a8a985a529b5
 * ELF offsets: 0x30aa376
 * Symbols: shift_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp int;
precision highp sampler2D;

uniform sampler2D uInputTexture0;

uniform ivec2 margin;
uniform int amount;

out vec4 FragColor;

void main()
{
    ivec2 destCoord = ivec2(gl_FragCoord.xy);
    int srcPixelX = destCoord.x * 2 + margin.x;
    int srcCoordY = destCoord.y + margin.y;
    int srcTexX = srcPixelX / 2;

    vec4 val;
    if (srcPixelX % 2 == 0) {
        val = texelFetch(uInputTexture0, ivec2(srcTexX, srcCoordY), 0);
    } else {
        vec4 t0 = texelFetch(uInputTexture0, ivec2(srcTexX, srcCoordY), 0);
        vec4 t1 = texelFetch(uInputTexture0, ivec2(srcTexX + 1, srcCoordY), 0);
        val = vec4(t0.ba, t1.rg);
    }

    float multiplier = pow(2.0, float(amount));
    val *= multiplier;

    if (amount > 0) {
        val = clamp(val, 0.0, 1.0);
    }

    FragColor = val;
}
