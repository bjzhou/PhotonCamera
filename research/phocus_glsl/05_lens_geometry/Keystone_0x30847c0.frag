/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: d3956e2b1df06d05398033f10af7f36f5651d91db0173fa1dc2232390ff8b8dd
 * ELF offsets: 0x30847c0
 * Symbols: Keystone_fragmentShaderSource
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

// Lanczos kernel function, matching Metal: Lanczos(x, a=4)
float Lanczos(float x, float a)
{
    float PI = 3.14;
    if (x == 0.0)
        return 1.0;
    return a * sin(PI * x) * sin(PI * x / a) / (PI * PI * x * x);
}

vec4 MixRgbLanczosLine(sampler2D tex, ivec2 pos, vec2 delta, ivec2 margin, ivec2 maxSize, bool blackOOB,
                       inout float sum_f, inout vec4 vmin, inout vec4 vmax)
{
    if (blackOOB)
        if (pos.y < margin.y || pos.y >= maxSize.y)
            return vec4(0.0);

    float fy  = Lanczos(delta.y, 4.0);
    float f_3 = Lanczos(delta.x + 3.0, 4.0);
    float f_2 = Lanczos(delta.x + 2.0, 4.0);
    float f_1 = Lanczos(delta.x + 1.0, 4.0);
    float f0  = Lanczos(delta.x + 0.0, 4.0);
    float f1  = Lanczos(delta.x - 1.0, 4.0);
    float f2  = Lanczos(delta.x - 2.0, 4.0);
    float f3  = Lanczos(delta.x - 3.0, 4.0);
    float f4  = Lanczos(delta.x - 4.0, 4.0);

    if (pos.x - 3 < margin.x || pos.x - 3 >= maxSize.x) f_3 = 0.0;
    if (pos.x - 2 < margin.x || pos.x - 2 >= maxSize.x) f_2 = 0.0;
    if (pos.x - 1 < margin.x || pos.x - 1 >= maxSize.x) f_1 = 0.0;
    if (pos.x + 0 < margin.x || pos.x + 0 >= maxSize.x) f0  = 0.0;
    if (pos.x + 1 < margin.x || pos.x + 1 >= maxSize.x) f1  = 0.0;
    if (pos.x + 2 < margin.x || pos.x + 2 >= maxSize.x) f2  = 0.0;
    if (pos.x + 3 < margin.x || pos.x + 3 >= maxSize.x) f3  = 0.0;
    if (pos.x + 4 < margin.x || pos.x + 4 >= maxSize.x) f4  = 0.0;

    sum_f += fy * (f_3 + f_2 + f_1 + f0 + f1 + f2 + f3 + f4);

    vec4 p_3 = texelFetch(tex, ivec2(pos.x - 3, pos.y), 0);
    vec4 p_2 = texelFetch(tex, ivec2(pos.x - 2, pos.y), 0);
    vec4 p_1 = texelFetch(tex, ivec2(pos.x - 1, pos.y), 0);
    vec4 p0  = texelFetch(tex, ivec2(pos.x + 0, pos.y), 0);
    vec4 p1  = texelFetch(tex, ivec2(pos.x + 1, pos.y), 0);
    vec4 p2  = texelFetch(tex, ivec2(pos.x + 2, pos.y), 0);
    vec4 p3  = texelFetch(tex, ivec2(pos.x + 3, pos.y), 0);
    vec4 p4  = texelFetch(tex, ivec2(pos.x + 4, pos.y), 0);

    vmin = min(vmin, min(p0, p1));
    vmax = max(vmax, max(p0, p1));

    return fy * (  f_3 * p_3
                 + f_2 * p_2
                 + f_1 * p_1
                 + f0  * p0
                 + f1  * p1
                 + f2  * p2
                 + f3  * p3
                 + f4  * p4);
}

vec4 interpolateLanczosRgb(sampler2D tex, ivec2 imgSize, vec2 offset, ivec2 pos, bool blackOOB)
{
    ivec2 margin = max(pos, ivec2(0));
    vec2 indexPos = vec2(pos) + offset;
    if (blackOOB)
        if (indexPos.x < float(margin.x) || indexPos.y < float(margin.y)
            || indexPos.x >= float(imgSize.x) || indexPos.y >= float(imgSize.y))
            return vec4(0.0);

    vec2 resPos = indexPos;
    ivec2 base = ivec2(floor(resPos));

    vec2 delta = resPos - vec2(base);
    float sum_f = 0.0;
    vec4 maximum = vec4(0.0), minimum = vec4(65535.0);
    vec4 unused_min = vec4(65535.0), unused_max = vec4(0.0);
    vec4 sum_p =
          MixRgbLanczosLine(tex, ivec2(base.x, base.y - 3), vec2(delta.x, delta.y + 3.0), margin, imgSize, blackOOB, sum_f, unused_min, unused_max)
        + MixRgbLanczosLine(tex, ivec2(base.x, base.y - 2), vec2(delta.x, delta.y + 2.0), margin, imgSize, blackOOB, sum_f, unused_min, unused_max)
        + MixRgbLanczosLine(tex, ivec2(base.x, base.y - 1), vec2(delta.x, delta.y + 1.0), margin, imgSize, blackOOB, sum_f, unused_min, unused_max)
        + MixRgbLanczosLine(tex, ivec2(base.x, base.y + 0), vec2(delta.x, delta.y + 0.0), margin, imgSize, blackOOB, sum_f, minimum, maximum)
        + MixRgbLanczosLine(tex, ivec2(base.x, base.y + 1), vec2(delta.x, delta.y - 1.0), margin, imgSize, blackOOB, sum_f, minimum, maximum)
        + MixRgbLanczosLine(tex, ivec2(base.x, base.y + 2), vec2(delta.x, delta.y - 2.0), margin, imgSize, blackOOB, sum_f, unused_min, unused_max)
        + MixRgbLanczosLine(tex, ivec2(base.x, base.y + 3), vec2(delta.x, delta.y - 3.0), margin, imgSize, blackOOB, sum_f, unused_min, unused_max)
        + MixRgbLanczosLine(tex, ivec2(base.x, base.y + 4), vec2(delta.x, delta.y - 4.0), margin, imgSize, blackOOB, sum_f, unused_min, unused_max)
    ;

    vec4 h = sum_f != 0.0 ? sum_p / sum_f : vec4(0.0);
    h = clamp(h, minimum, maximum);
    return h;
}

void main()
{
    ivec2 gid = ivec2(gl_FragCoord.xy);

    vec3 pos = vec3(float(gid.x) + float(uOffset.x), float(gid.y) + float(uOffset.y), 1.0);
    vec3 transformed = uTransformMatrix * pos;

    vec2 wanted = vec2(transformed.x / transformed.z, transformed.y / transformed.z);

    if (wanted.x < 0.0 || wanted.y < 0.0 || wanted.x > float(uLimit.x) || wanted.y > float(uLimit.y)) {
        FragColor = vec4(0.0, 0.0, 0.0, 1.0);
        return;
    }
    FragColor = interpolateLanczosRgb(uInputTexture0, uSize, wanted, -uSrcOffset, true);
}
