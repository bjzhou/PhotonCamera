/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 5f4bda2cc5a1f9e2214c3caf0d9667dc1b42455e50d9ccc2a47b627f38303abe
 * ELF offsets: 0x3061507
 * Symbols: reversecc_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp int;
precision highp sampler2D;


uniform sampler2D uInputTexture0; // Input Image (RgbX)
uniform sampler2D uInputTexture1; // Rev Grad (Packed RGBA, size: 64x256)
uniform sampler2D uInputTexture2; // Reverse LUT (cc_rev_lut)

uniform mat3 uInvYuv2Rgb;
uniform mat3 uInvRawRgb2Yuv;
uniform vec2 uOffset;
uniform vec2 uScale;
uniform float uOutputScale;
uniform ivec2 uMargin;

out vec4 FragColor;


vec2 CoordinateToIndex(vec2 coordinate)
{
    return uOffset + coordinate * uScale;
}

vec2 IndexToCoordinate(vec2 index)
{
    return (index - uOffset) / uScale;
}

vec2 ClampIndex(vec2 pos, sampler2D texLut)
{
    ivec2 size = textureSize(texLut, 0);
    return min(max(pos, vec2(0.0)), vec2(size) - 1.0);
}

vec2 LutLookup(vec2 coordinate, sampler2D texLut)
{
    vec2 index = CoordinateToIndex(coordinate);
    vec2 restricted = ClampIndex(index, texLut);
    vec2 a = IndexToCoordinate(index);
    vec2 b = IndexToCoordinate(restricted);
    vec2 offset = a - b;
    vec2 base = floor(restricted);
    vec2 delta = restricted - base;

    ivec2 pos0 = ivec2(ClampIndex(base, texLut));
    ivec2 pos1 = ivec2(ClampIndex(base + 1.0, texLut));

    vec2 p00 = texelFetch(texLut, ivec2(pos0.x, pos0.y), 0).xy;
    vec2 p01 = texelFetch(texLut, ivec2(pos0.x, pos1.y), 0).xy;
    vec2 p10 = texelFetch(texLut, ivec2(pos1.x, pos0.y), 0).xy;
    vec2 p11 = texelFetch(texLut, ivec2(pos1.x, pos1.y), 0).xy;

    vec2 weighted = mix(mix(p00, p01, delta.y), mix(p10, p11, delta.y), delta.x);
    return (weighted / uOutputScale) + offset;
}

float SampleRevGrad(float val)
{
    int index = int(clamp(val * 65535.0 + 0.5, 0.0, 65535.0));

    int pixelIndex = index / 4;

    int channelIndex = index % 4;

    int x = pixelIndex % 64;
    int y = pixelIndex / 64;
    vec4 packedPixel = texelFetch(uInputTexture1, ivec2(x, y), 0);

    return packedPixel[channelIndex];
}

void main()
{
    ivec2 fragCoord = ivec2(gl_FragCoord.xy);
    ivec2 readCoord = fragCoord + uMargin;
    vec3 pix = texelFetch(uInputTexture0, readCoord, 0).rgb;

    float r_grad = SampleRevGrad(pix.r);
    float g_grad = SampleRevGrad(pix.g);
    float b_grad = SampleRevGrad(pix.b);

    vec3 rgb = vec3(r_grad, g_grad, b_grad) * 65535.0;

    vec3 yuv = uInvYuv2Rgb * rgb;

    if (yuv.x > 0.0) {
       vec2 lookupResult = LutLookup(yuv.yz / yuv.x, uInputTexture2);
       yuv.yz = lookupResult * yuv.x;
    }

    vec3 resRaw = uInvRawRgb2Yuv * yuv;
    FragColor = vec4(clamp(resRaw, 0.0, 65535.0) / 65535.0, 1.0);
}
