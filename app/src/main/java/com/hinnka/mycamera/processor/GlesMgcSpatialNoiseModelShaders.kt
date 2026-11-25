package com.hinnka.mycamera.processor

/** Spatial reconstruction weights and noise moments before the frame-wide model reduction. */
internal object GlesMgcSpatialNoiseModelShaders {
    /** Evaluate each frame's Gaussian footprint once per 16x16 RAW tile. */
    val footprints = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform highp sampler2D uAlignment;
        uniform highp sampler2D uFrameParams;
        uniform ivec2 uAlignmentSize;
        uniform int uAlignmentColumns;
        uniform ivec2 uFootprintSize;
        uniform int uFootprintColumns;
        uniform int uFrames;
        uniform int uIsBayer;
        layout(location = 0) out vec4 oFootprint;

        ivec2 atlasPoint(ivec2 p, int plane, int columns, ivec2 planeSize) {
            return p + ivec2(plane % columns, plane / columns) * planeSize;
        }

        // Native kernel evaluates exp(-0.5 * z) using a base-2 exponent and a degree-six
        // polynomial on the residual. Keep the recovered Float32 constants.
        float gaussian(float z) {
            float exponent = floor(z * uintBitsToFloat(0xbf38aa3bu));
            float t = -0.5 * z - exponent * uintBitsToFloat(0x3f317218u);
            float t2 = t * t;
            float even = 1.0 + t2 * (uintBitsToFloat(0x3effd95au) +
                t2 * uintBitsToFloat(0x3d1647e3u));
            float odd = t + t * (t2 * (uintBitsToFloat(0x3e2cc9e4u) +
                t2 * uintBitsToFloat(0x3c5757d6u)));
            uint scale = uint(int(clamp(exponent, -126.0, 128.0)) + 127) << 23u;
            return (even + odd) * uintBitsToFloat(scale);
        }

        vec4 rgbFootprint(vec2 shift, float sigma2) {
            float total = 0.0;
            float squares = 0.0;
            float neighbor = 0.0;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    vec2 d = vec2(x, y) + shift;
                    vec2 d2 = d * d;
                    float w = gaussian((d2.x + d2.y) * sigma2);
                    total += w;
                    squares += w * w;
                    if (x != 0 || y != 0) {
                        neighbor += w;
                    }
                }
            }
            return vec4(total, squares, neighbor, 0.0);
        }

        vec4 bayerFootprint(vec2 shift, float sigma2) {
            vec2 total = vec2(0.0);
            vec2 squares = vec2(0.0);
            // Even/even taps belong to the R/B lattice and to one green phase. The other
            // green phase uses odd/odd taps and contributes the green off-center diagnostic.
            for (int y = -2; y <= 2; ++y) {
                for (int x = -2; x <= 2; ++x) {
                    int phase = x & 1;
                    if (phase != (y & 1)) {
                        continue;
                    }
                    vec2 d = vec2(x, y) + shift;
                    vec2 d2 = d * d;
                    if (max(d2.x, d2.y) <= 2.25) {
                        float w = gaussian((d2.x + d2.y) * sigma2);
                        total[phase] += w;
                        squares[phase] += w * w;
                    }
                }
            }
            return vec4(total, squares);
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            ivec2 plane = p / uFootprintSize;
            int frame = plane.y * uFootprintColumns + plane.x;
            if (frame >= uFrames) {
                return;
            }
            // Both modes consume one motion sample per RAW tile. The Bayer capture
            // retains its larger declared alignment dimensions.
            ivec2 cell = p - plane * uFootprintSize;
            vec2 flow = vec2(
                texelFetch(uAlignment, atlasPoint(cell, frame, uAlignmentColumns,
                    uAlignmentSize), 0).r,
                texelFetch(uAlignment, atlasPoint(cell, uFrames + frame, uAlignmentColumns,
                    uAlignmentSize), 0).r
            );
            vec2 shift = (roundEven(flow) - flow) * 2.0;
            float sigma = texelFetch(uFrameParams, ivec2(2, frame), 0).g;
            float sigma2 = sigma * sigma;
            oFootprint = uIsBayer != 0 ? bayerFootprint(shift, sigma2) : rgbFootprint(shift, sigma2);
        }
    """.trimIndent()

    val moments = """
        #version 300 es
        precision highp float;
        precision highp int;
        uniform highp sampler2D uFootprints;
        uniform highp sampler2D uRejection;
        uniform highp sampler2D uFrameParams;
        uniform ivec2 uFootprintSize;
        uniform ivec2 uRejectionSize;
        uniform int uFootprintColumns;
        uniform int uRejectionColumns;
        uniform int uFrames;
        uniform int uIsBayer;
        layout(location = 0) out vec4 oRead;
        layout(location = 1) out vec4 oShot;
        layout(location = 2) out vec4 oWeight;
        layout(location = 3) out vec4 oDiag1;

        ivec2 atlasPoint(ivec2 p, int plane, int columns, ivec2 planeSize) {
            return p + ivec2(plane % columns, plane / columns) * planeSize;
        }

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            ivec2 cell = p / 4;
            vec3 read = vec3(0.0);
            vec3 shot = vec3(0.0);
            vec3 weight = vec3(0.0);
            vec3 diag1 = vec3(0.0);
            for (int frame = 0; frame < uFrames; ++frame) {
                ivec2 maskCoord = atlasPoint(p, frame, uRejectionColumns, uRejectionSize);
                float acceptance = roundEven(texelFetch(uRejection, maskCoord, 0).r * 255.0);
                float frameWeight = texelFetch(uFrameParams, ivec2(2, frame), 0).r;
                float blend = (frameWeight * uintBitsToFloat(0x3b808081u)) * acceptance;
                float blendSquared = blend * blend;

                vec4 footprint = texelFetch(uFootprints, atlasPoint(cell, frame, uFootprintColumns,
                    uFootprintSize), 0);
                vec3 sum;
                vec3 sumSquared;
                vec3 offCenter;
                if (uIsBayer != 0) {
                    sum = vec3(footprint.x, 2.0 * (footprint.x + footprint.y), footprint.x);
                    sumSquared = vec3(footprint.z, 2.0 * (footprint.z + footprint.w), footprint.z);
                    offCenter = vec3(0.0, 2.0 * footprint.y, 0.0);
                } else {
                    const vec3 sites = vec3(1.0, 2.0, 1.0);
                    sum = footprint.x * sites;
                    sumSquared = footprint.y * sites;
                    offCenter = footprint.z * sites;
                }
                vec3 frameRead = texelFetch(uFrameParams, ivec2(0, frame), 0).rgb;
                vec3 frameShot = texelFetch(uFrameParams, ivec2(1, frame), 0).rgb;
                read += (sumSquared * frameRead) * blendSquared;
                shot += (sumSquared * frameShot) * blendSquared;
                weight += sum * blend;
                diag1 += offCenter * blend;
            }
            oRead = vec4(read, 0.0);
            oShot = vec4(shot, 0.0);
            oWeight = vec4(weight, 0.0);
            oDiag1 = vec4(diag1, 0.0);
        }
    """.trimIndent()
}
