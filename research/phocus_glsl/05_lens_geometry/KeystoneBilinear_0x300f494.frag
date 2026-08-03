/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 6e41522c4cdf78a589f1e2d7a5cefc0ba1ed514b23edd3369992f0cf90c97e98
 * ELF offsets: 0x300f494
 * Symbols: KeystoneBilinear_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

uniform sampler2D uInputTexture0;
uniform mat3 uTransformMatrix;
uniform ivec2 uOffset;
uniform ivec2 uSrcOffset;
uniform ivec2 uSize;
uniform ivec2 uLimit;

out vec4 FragColor;

vec4 sampleTextureBilinear(sampler2D tex, vec2 pixelPos, vec2 texSize)
{
    vec2 floorPos = floor(pixelPos);
    vec2 fracPos = pixelPos - floorPos;

    ivec2 p00 = ivec2(floorPos);
    ivec2 p10 = ivec2(floorPos) + ivec2(1, 0);
    ivec2 p01 = ivec2(floorPos) + ivec2(0, 1);
    ivec2 p11 = ivec2(floorPos) + ivec2(1, 1);

    p00 = clamp(p00, ivec2(0), ivec2(texSize) - ivec2(1));
    p10 = clamp(p10, ivec2(0), ivec2(texSize) - ivec2(1));
    p01 = clamp(p01, ivec2(0), ivec2(texSize) - ivec2(1));
    p11 = clamp(p11, ivec2(0), ivec2(texSize) - ivec2(1));

    vec4 sample00 = texelFetch(tex, p00, 0);
    vec4 sample10 = texelFetch(tex, p10, 0);
    vec4 sample01 = texelFetch(tex, p01, 0);
    vec4 sample11 = texelFetch(tex, p11, 0);

    vec4 sample0 = mix(sample00, sample10, fracPos.x);
    vec4 sample1 = mix(sample01, sample11, fracPos.x);
    return mix(sample0, sample1, fracPos.y);
}

void main()
{
    ivec2 gid = ivec2(gl_FragCoord.xy);

    vec3 pos = vec3(float(gid.x) + float(uOffset.x), float(gid.y) + float(uOffset.y), 1.0);
    vec3 transformed = uTransformMatrix * pos;
    vec2 wanted = vec2(transformed.x / transformed.z, transformed.y / transformed.z);

    if (wanted.x < 0.0 || wanted.y < 0.0 || wanted.x > float(uLimit.x) || wanted.y > float(uLimit.y)) {
        FragColor = vec4(0.0, 0.0, 0.0, 0.0);
        return;
    }
    vec2 inputPixelPos = wanted - vec2(float(uSrcOffset.x), float(uSrcOffset.y));
    vec2 texSize = vec2(float(uSize.x), float(uSize.y));

    FragColor = sampleTextureBilinear(uInputTexture0, inputPixelPos, texSize);
}
