/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 9312a458283d0b188770711e68a03cbb84c9ee17851521bfade82007f52f9460
 * ELF offsets: 0x30881be
 * Symbols: create_film_grain_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp int;
precision highp sampler3D;

out vec4 FragColor;

layout(std140) uniform GrainsParam {
    ivec2 offset;       // 8
    int   color;        // 4
    float multiplier;   // 4
    // ---- 16
    float resolution;
    float grainOffset;  // in 65535-domain
    float grainScale;   // in 65535-domain
    float blendAmount;  // unused here
    // ---- 32
    float zoom;
    float _pad0; float _pad1; float _pad2;
} opts;

uniform sampler3D uInputTexture0; // randTex0 (R32F)
uniform sampler3D uInputTexture1; // randTex1 (R32F)
uniform sampler3D uInputTexture2; // randTex2 (R32F)

const float kMaxRange = 65535.0;
const float kHalfMaxRange = 32767.0;

vec3 RandomT(vec3 s) {
    ivec3 dim0 = textureSize(uInputTexture0, 0);
    ivec3 dim1 = textureSize(uInputTexture1, 0);
    ivec3 dim2 = textureSize(uInputTexture2, 0);

    ivec3 i = ivec3(floor(s));

    ivec3 x0 = (i % dim0 + dim0) % dim0;
    ivec3 x1 = (i % dim1 + dim1) % dim1;
    ivec3 x2 = (i % dim2 + dim2) % dim2;

    float r0 = texelFetch(uInputTexture0, x0, 0).r;
    float r1 = texelFetch(uInputTexture1, x1, 0).r;
    float r2 = texelFetch(uInputTexture2, x2, 0).r;

    uvec3 fr = uvec3(vec3(kHalfMaxRange + kMaxRange * r0,
                          kHalfMaxRange + kMaxRange * r1,
                          kHalfMaxRange + kMaxRange * r2));

    uvec3 ir = uvec3(fr.y ^ fr.z, fr.x ^ fr.z, fr.x ^ fr.y);
    return (vec3(ir) - kHalfMaxRange) / kMaxRange; // ~[-0.5..0.5]
}

float Simplex(vec3 p) {
    const float F3 = 1.0/3.0;
    const float G3 = 1.0/6.0;

    float dotp = dot(p, vec3(F3));
    vec3 s = floor(p + dotp);
    vec3 x = p - s + dot(s, vec3(G3));

    vec3 i1, i2;
    if (x.x >= x.y) {
        if (x.y >= x.z) { i1=vec3(1,0,0); i2=vec3(1,1,0); }
        else if (x.x >= x.z) { i1=vec3(1,0,0); i2=vec3(1,0,1); }
        else { i1=vec3(0,0,1); i2=vec3(1,0,1); }
    } else {
        if (x.y < x.z) { i1=vec3(0,0,1); i2=vec3(0,1,1); }
        else if (x.x < x.z) { i1=vec3(0,1,0); i2=vec3(0,1,1); }
        else { i1=vec3(0,1,0); i2=vec3(1,1,0); }
    }

    vec3 x1 = x - i1 + G3;
    vec3 x2 = x - i2 + 2.0*G3;
    vec3 x3 = x - 1.0 + 3.0*G3;

    vec4 wRaw = vec4(dot(x,x), dot(x1,x1), dot(x2,x2), dot(x3,x3));
    vec4 w = max(vec4(0.6) - wRaw, 0.0);

    vec4 w2 = w*w;
    vec4 w4 = w2*w2;

    vec4 d = vec4(dot(RandomT(s), x),
                  dot(RandomT(s+i1), x1),
                  dot(RandomT(s+i2), x2),
                  dot(RandomT(s+1.0), x3));

    return dot(d * w4, vec4(52.0));
}

void main() {
    float safeZoom = (opts.zoom == 0.0) ? 1.0 : opts.zoom;
    float safeMul  = (opts.multiplier == 0.0) ? 1.0 : opts.multiplier;

    vec2 gid = floor(gl_FragCoord.xy);
    vec2 pos = (gid / safeZoom + vec2(opts.offset)) * opts.resolution / safeMul;

    float n0 = Simplex(vec3(pos, 0.0));
    vec3 noise = vec3(n0);

    if (opts.color > 0) {
        float blend = min(float(opts.color), 20.0) / 20.0;
        float n1 = Simplex(vec3(pos, 1.0));
        float n2 = Simplex(vec3(pos, 2.0));
        noise.r = mix(n0, n1, blend);
        noise.b = mix(n0, n2, blend);
    }

    vec3 grain65535 = opts.grainScale * noise + opts.grainOffset;
    vec3 grain01 = clamp(grain65535 / kMaxRange, 0.0, 1.0);

    FragColor = vec4(grain01, 1.0);
}
