/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: b72f1aaffa4d668aa8fef8bf9d539bb56950c28e9c53f3b0e47dcd4227ed5010
 * ELF offsets: 0x309ef57
 * Symbols: cikernel_create_film_grain_blend_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp int;
precision highp sampler2D;

out vec4 FragColor;

layout(std140) uniform GrainsParam {
    ivec2 offset;
    int   color;
    float multiplier;
    float resolution;
    float grainOffset;
    float grainScale;
    float blendAmount;
    float zoom;
    float _pad0; float _pad1; float _pad2;
} opts;

uniform sampler2D uInputTexture0; // input image 0..1

const float kMaxRange = 65535.0;

// Pure-math random hash matching iOS CIKernel Random3
vec3 Random3(vec3 c) {
    float pos = dot(c, vec3(17.0, 59.4, 15.0));
    pos = mod(pos, 256.0 * 2.0 * 3.14159265);
    vec3 factors = vec3(262144.0, 32768.0, 2097152.0);
    return fract(factors * sin(pos)) - 0.5;
}

float Simplex(vec3 p) {
    const float F3=1.0/3.0, G3=1.0/6.0;
    float dotp = dot(p, vec3(F3));
    vec3 s = floor(p + dotp);
    vec3 x = p - s + dot(s, vec3(G3));

    vec3 i1,i2;
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

    vec4 w = max(vec4(0.6) - vec4(dot(x,x), dot(x1,x1), dot(x2,x2), dot(x3,x3)), 0.0);
    vec4 w2=w*w, w4=w2*w2;

    vec4 d = vec4(dot(Random3(s),x),
                  dot(Random3(s+i1),x1),
                  dot(Random3(s+i2),x2),
                  dot(Random3(s+1.0),x3));

    return dot(d*w4, vec4(52.0));
}

void main() {
    ivec2 gid = ivec2(gl_FragCoord.xy);

    float safeZoom = (opts.zoom == 0.0) ? 1.0 : opts.zoom;
    float safeMul  = (opts.multiplier == 0.0) ? 1.0 : opts.multiplier;

    // Match iOS CIKernel: int truncation of coordinate/zoom before adding offset
    vec2 pos = vec2(floor(float(gid.x) / safeZoom) + float(opts.offset.x),
                    floor(float(gid.y) / safeZoom) + float(opts.offset.y));
    pos = pos * opts.resolution / safeMul;

    float n0 = Simplex(vec3(pos, 0.0));
    vec3 noise = vec3(n0);
    if (opts.color > 0) {
        float blend = min(float(opts.color), 20.0) / 20.0;
        noise.r = mix(n0, Simplex(vec3(pos, 1.0)), blend);
        noise.b = mix(n0, Simplex(vec3(pos, 2.0)), blend);
    }

    vec3 grain01 = clamp((opts.grainScale * noise + opts.grainOffset) / kMaxRange, 0.0, 1.0);
    vec4 inPix = texelFetch(uInputTexture0, gid, 0);

    FragColor = vec4(mix(inPix.rgb, grain01, opts.blendAmount), inPix.a);
}
