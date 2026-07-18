/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 5a8b0395d4fc2353a8e44245d6080723fe24656140f8bf28d5346c93ae6adb5d
 * ELF offsets: 0x3016546
 * Symbols: yuv2rgb_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp int;
precision highp sampler2D;

uniform sampler2D uInputTexture0;

uniform vec4 yuvCoeffs;
uniform ivec2 margin;

out vec4 FragColor;

void main()
{
    ivec2 coord = ivec2(gl_FragCoord.xy) + margin;
    int packedX = coord.x / 2;
    vec4 packed = texelFetch(uInputTexture0, ivec2(packedX, coord.y), 0);

    bool isEven = (coord.x % 2) == 0;
    float y = isEven ? packed.r : packed.b;
    float u = packed.g;
    float v = packed.a;

    float cb = u - 0.5;
    float cr = v - 0.5;

    float r = y + yuvCoeffs.x * cr;
    float g = y + yuvCoeffs.y * cr + yuvCoeffs.z * cb;
    float b = y + yuvCoeffs.w * cb;

    FragColor = vec4(clamp(r, 0.0, 1.0), clamp(g, 0.0, 1.0), clamp(b, 0.0, 1.0), 1.0);
}
