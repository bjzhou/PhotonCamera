package com.hinnka.mycamera.processor

/** Reduces the Spatial noise moments and packs the quarter-resolution Q8 map for readback. */
internal object GlesMgcSpatialNoiseReductionShaders {
    val reduce = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp sampler2D;

        uniform sampler2D uRead;
        uniform sampler2D uShot;
        uniform sampler2D uWeight;
        uniform sampler2D uDiag1;
        uniform ivec2 uInputSize;
        uniform bool uNormalizeMoments;
        uniform float uOutputScale;
        layout(location = 0) out vec4 oRead;
        layout(location = 1) out vec4 oShot;
        layout(location = 2) out vec4 oWeight;
        layout(location = 3) out vec4 oDiag1;

        void main() {
            ivec2 start = ivec2(gl_FragCoord.xy) * 4;
            vec3 read = vec3(0.0);
            vec3 shot = vec3(0.0);
            vec3 weight = vec3(0.0);
            vec3 diag1 = vec3(0.0);
            for (int y = 0; y < 4; y++) {
                for (int x = 0; x < 4; x++) {
                    ivec2 p = start + ivec2(x, y);
                    if (any(greaterThanEqual(p, uInputSize))) continue;
                    vec3 r = texelFetch(uRead, p, 0).rgb;
                    vec3 s = texelFetch(uShot, p, 0).rgb;
                    vec3 w = texelFetch(uWeight, p, 0).rgb;
                    vec3 d = texelFetch(uDiag1, p, 0).rgb;
                    if (uNormalizeMoments) {
                        vec3 square = w * w;
                        r = vec3(1.0, 2.0, 1.0) * r / square;
                        s = vec3(1.0, 2.0, 1.0) * s / square;
                    }
                    read += r;
                    shot += s;
                    weight += w;
                    diag1 += d;
                }
            }
            oRead = vec4(read * uOutputScale, 0.0);
            oShot = vec4(shot * uOutputScale, 0.0);
            oWeight = vec4(weight * uOutputScale, 0.0);
            oDiag1 = vec4(diag1 * uOutputScale, 0.0);
        }
    """.trimIndent()

    /** Four 32-bit words per texel contain eight consecutive unsigned Q8 values. */
    val packStrength = """
        #version 300 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;

        uniform usampler2D uStrength;
        uniform int uWidth;
        layout(location = 0) out uvec4 oPacked;

        uint packPair(ivec2 p) {
            uint lo = p.x < uWidth ? texelFetch(uStrength, p, 0).r : 0u;
            p.x += 1;
            uint hi = p.x < uWidth ? texelFetch(uStrength, p, 0).r : 0u;
            return lo | (hi << 16);
        }

        void main() {
            ivec2 start = ivec2(gl_FragCoord.xy);
            start.x *= 8;
            oPacked = uvec4(
                packPair(start),
                packPair(start + ivec2(2, 0)),
                packPair(start + ivec2(4, 0)),
                packPair(start + ivec2(6, 0))
            );
        }
    """.trimIndent()
}
