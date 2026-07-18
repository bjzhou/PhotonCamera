/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: a18e2b102dc046b550c62dc3b340b25376d05213b5b17078066d2835548fbcff
 * ELF offsets: 0x306e683
 * Symbols: cikernel_create_film_grain_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp int;

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

const float kMaxRange = 65535.0;

// Pure-math random hash matching iOS CIKernel Random3
vec3 Random3(vec3 c) {
    float pos = dot(c, vec3(17.0, 59.4, 15.0));
    pos = mod(pos, 256.0 * 2.0 * 3.14159265);
    vec3 factors = vec3(262144.0, 32768.0, 2097152.0);
    return fract(factors * sin(pos)) - 0.5;
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

    vec4 d = vec4(dot(Random3(s), x),
                  dot(Random3(s+i1), x1),
                  dot(Random3(s+i2), x2),
                  dot(Random3(s+1.0), x3));

    return dot(d * w4, vec4(52.0));
}

void main() {
    float safeZoom = (opts.zoom == 0.0) ? 1.0 : opts.zoom;
    float safeMul  = (opts.multiplier == 0.0) ? 1.0 : opts.multiplier;

    vec2 gid = floor(gl_FragCoord.xy);
    // Match iOS CIKernel: int truncation of coordinate/zoom before adding offset
    vec2 pos = vec2(floor(gid.x / safeZoom) + float(opts.offset.x),
                    floor(gid.y / safeZoom) + float(opts.offset.y));
    pos = pos * opts.resolution / safeMul;

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
