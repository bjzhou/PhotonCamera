package com.hinnka.mycamera.raw

object DarktableFilmicHighlightReconstructionShaders {
    const val RECONSTRUCT_RGB = 0
    const val RECONSTRUCT_RATIOS = 1
    const val MAX_NUM_SCALES = 10
    const val BSPLINE_FSIZE = 5
    const val NORM_MIN = 1.52587890625e-05f

    private const val COMMON = """
        precision highp float;
        precision highp int;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform mat4 uTexMatrix;

        vec4 fetchPixel(sampler2D tex, ivec2 coord) {
            return texelFetch(tex, coord, 0);
        }

        float fetchSingle(sampler2D tex, ivec2 coord) {
            return texelFetch(tex, coord, 0).r;
        }

        float clipf(float a) {
            return clamp(a, 0.0, 1.0);
        }

        vec4 clip4(vec4 a) {
            return clamp(a, vec4(0.0), vec4(1.0));
        }

        float fmaxabsf(float a, float b) {
            return (abs(a) > abs(b) && !isnan(a)) ? a : (isnan(b) ? 0.0 : b);
        }

        ivec2 pixelCoord() {
            return ivec2(gl_FragCoord.xy);
        }
    """

    private const val PREPARE_INPUT = """
        uniform float uProfileExposureLinearGain;
        uniform mat3 uProfileToEngineTransform;

        vec3 prepareFilmicInput(vec3 color) {
            return uProfileToEngineTransform * (color * uProfileExposureLinearGain);
        }
    """

    private const val DARKTABLE_NOISE = """
        const float DT_PI = 3.1415926535897932384626433832795;
        const float DT_FLT_MIN = 1.1754943508222875e-38;
        const float DT_UINT24_SCALE = 5.960464477539063e-8;

        uvec2 xor64(uvec2 a, uvec2 b) {
            return uvec2(a.x ^ b.x, a.y ^ b.y);
        }

        uvec2 shr64(uvec2 v, int shift) {
            if (shift == 0) return v;
            if (shift < 32) {
                return uvec2((v.x >> shift) | (v.y << (32 - shift)), v.y >> shift);
            }
            return uvec2(v.y >> (shift - 32), 0u);
        }

        uvec2 mul32Wide(uint a, uint b) {
            const uint mask = 0xffffu;
            uint a0 = a & mask;
            uint a1 = a >> 16;
            uint b0 = b & mask;
            uint b1 = b >> 16;
            uint p0 = a0 * b0;
            uint p1 = a0 * b1;
            uint p2 = a1 * b0;
            uint p3 = a1 * b1;
            uint mid = (p0 >> 16) + (p1 & mask) + (p2 & mask);
            uint lo = (p0 & mask) | (mid << 16);
            uint hi = p3 + (p1 >> 16) + (p2 >> 16) + (mid >> 16);
            return uvec2(lo, hi);
        }

        uvec2 mul64(uvec2 a, uvec2 b) {
            uvec2 p0 = mul32Wide(a.x, b.x);
            uvec2 p1 = mul32Wide(a.x, b.y);
            uvec2 p2 = mul32Wide(a.y, b.x);
            return uvec2(p0.x, p0.y + p1.x + p2.x);
        }

        uint splitmix32(uint seed) {
            uvec2 result = uvec2(seed, 0u);
            result = xor64(result, shr64(result, 33));
            result = mul64(result, uvec2(0x799705f5u, 0x62a9d9edu));
            result = xor64(result, shr64(result, 28));
            result = mul64(result, uvec2(0xc88c35b3u, 0xcb24d0a5u));
            return result.y;
        }

        uint rol32(uint x, int k) {
            return (x << k) | (x >> (32 - k));
        }

        float xoshiro128plus(inout uint s0, inout uint s1, inout uint s2, inout uint s3) {
            uint result = s0 + s3;
            uint t = s1 << 9;

            s2 ^= s0;
            s3 ^= s1;
            s1 ^= s2;
            s0 ^= s3;

            s2 ^= t;
            s3 = rol32(s3, 11);

            return float(result >> 8) * DT_UINT24_SCALE;
        }

        vec3 gaussianNoise(vec3 mu, vec3 sigma, ivec2 coord) {
            uint x = uint(coord.x);
            uint y = uint(coord.y);
            uint s0 = splitmix32(x + 1u);
            uint s1 = splitmix32((x + 1u) * (y + 3u));
            uint s2 = splitmix32(1337u);
            uint s3 = splitmix32(666u);

            xoshiro128plus(s0, s1, s2, s3);
            xoshiro128plus(s0, s1, s2, s3);
            xoshiro128plus(s0, s1, s2, s3);
            xoshiro128plus(s0, s1, s2, s3);

            vec3 u1 = vec3(
                xoshiro128plus(s0, s1, s2, s3),
                xoshiro128plus(s0, s1, s2, s3),
                xoshiro128plus(s0, s1, s2, s3)
            );
            vec3 u2 = vec3(
                xoshiro128plus(s0, s1, s2, s3),
                xoshiro128plus(s0, s1, s2, s3),
                xoshiro128plus(s0, s1, s2, s3)
            );

            u1 = max(u1, vec3(DT_FLT_MIN));
            vec3 root = sqrt(-2.0 * log(u1));
            vec3 noise = vec3(
                root.x * cos(2.0 * DT_PI * u2.x),
                root.y * sin(2.0 * DT_PI * u2.y),
                root.z * cos(2.0 * DT_PI * u2.z)
            );
            return noise * sigma + mu;
        }
    """

    val MASK_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON
        $PREPARE_INPUT

        uniform sampler2D uInputTexture;
        uniform float uNormalize;
        uniform float uFeathering;

        void main() {
            ivec2 coord = pixelCoord();
            vec4 source = fetchPixel(uInputTexture, coord);
            vec3 i = prepareFilmicInput(source.rgb);
            float pixMax = max(sqrt(dot(i, i)), 0.0);
            float argument = -pixMax * uNormalize + uFeathering;
            float weight = clipf(1.0 / (1.0 + exp2(argument)));
            fragColor = vec4(weight, weight, weight, 1.0);
        }
    """.trimIndent()

    val INPAINT_NOISE_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON
        $PREPARE_INPUT
        $DARKTABLE_NOISE

        uniform sampler2D uInputTexture;
        uniform sampler2D uMaskTexture;
        uniform float uNoiseLevel;
        uniform float uThreshold;

        void main() {
            ivec2 coord = pixelCoord();
            vec4 source = fetchPixel(uInputTexture, coord);
            vec3 i = prepareFilmicInput(source.rgb);
            vec3 sigma = i * uNoiseLevel / uThreshold;
            vec3 noise = gaussianNoise(i, sigma, coord);
            float weight = fetchSingle(uMaskTexture, coord);
            vec3 o = max(i * (1.0 - weight) + weight * noise, vec3(0.0));
            fragColor = vec4(o, source.a);
        }
    """.trimIndent()

    val INIT_RECONSTRUCT_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON

        uniform sampler2D uInputTexture;
        uniform sampler2D uMaskTexture;

        void main() {
            ivec2 coord = pixelCoord();
            vec4 i = fetchPixel(uInputTexture, coord);
            float weight = 1.0 - fetchSingle(uMaskTexture, coord);
            vec4 o = max(i * weight, vec4(0.0));
            o.a = i.a;
            fragColor = o;
        }
    """.trimIndent()

    val BSPLINE_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON

        uniform sampler2D uInputTexture;
        uniform int uWidth;
        uniform int uHeight;
        uniform int uMult;
        uniform int uDirection;

        vec4 sampleClamped(ivec2 coord) {
            ivec2 clampedCoord = clamp(coord, ivec2(0), ivec2(uWidth - 1, uHeight - 1));
            return fetchPixel(uInputTexture, clampedCoord);
        }

        void main() {
            ivec2 coord = pixelCoord();
            ivec2 stepCoord = (uDirection == 0) ? ivec2(0, uMult) : ivec2(uMult, 0);
            vec4 result =
                (1.0 / 16.0) * sampleClamped(coord - 2 * stepCoord) +
                (4.0 / 16.0) * sampleClamped(coord - stepCoord) +
                (6.0 / 16.0) * sampleClamped(coord) +
                (4.0 / 16.0) * sampleClamped(coord + stepCoord) +
                (1.0 / 16.0) * sampleClamped(coord + 2 * stepCoord);
            fragColor = max(result, vec4(0.0));
        }
    """.trimIndent()

    val HIGH_FREQUENCY_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON

        uniform sampler2D uDetailTexture;
        uniform sampler2D uLowFrequencyTexture;

        void main() {
            ivec2 coord = pixelCoord();
            fragColor = fetchPixel(uDetailTexture, coord) - fetchPixel(uLowFrequencyTexture, coord);
        }
    """.trimIndent()

    val WAVELETS_RECONSTRUCT_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON

        uniform sampler2D uHighFrequencyTexture;
        uniform sampler2D uLowFrequencyTexture;
        uniform sampler2D uTextureTexture;
        uniform sampler2D uMaskTexture;
        uniform sampler2D uReconstructedTexture;
        uniform float uGamma;
        uniform float uGammaComp;
        uniform float uBeta;
        uniform float uBetaComp;
        uniform float uDelta;
        uniform int uScaleIndex;
        uniform int uScaleCount;
        uniform int uVariant;

        void main() {
            ivec2 coord = pixelCoord();
            float alpha = fetchSingle(uMaskTexture, coord);
            vec4 hf = fetchPixel(uHighFrequencyTexture, coord);
            vec4 lf = fetchPixel(uLowFrequencyTexture, coord);
            vec4 tt = fetchPixel(uTextureTexture, coord);

            vec4 details;
            vec4 residual;
            if (uVariant == 0) {
                float greyTexture = fmaxabsf(fmaxabsf(tt.r, tt.g), tt.b);
                float greyDetails = (hf.r + hf.g + hf.b) / 3.0;
                float greyHf = uBetaComp * (uGammaComp * greyDetails + uGamma * greyTexture);
                float greyResidual = uBetaComp * (lf.r + lf.g + lf.b) / 3.0;
                details = (uGammaComp * hf + uGamma * tt) * uBeta + greyHf;
                residual = (uScaleIndex == uScaleCount - 1) ? greyResidual + lf * uBeta : vec4(0.0);
            } else {
                float greyTexture = fmaxabsf(fmaxabsf(tt.r, tt.g), tt.b);
                float greyDetails = (hf.r + hf.g + hf.b) / 3.0;
                float greyHf = uGammaComp * greyDetails + uGamma * greyTexture;
                details = 0.5 * ((uGammaComp * hf + uGamma * tt) + greyHf);
                residual = (uScaleIndex == uScaleCount - 1) ? lf : vec4(0.0);
            }

            vec4 reconstructed = fetchPixel(uReconstructedTexture, coord);
            fragColor = reconstructed + alpha * (uDelta * details + residual);
        }
    """.trimIndent()

    val COMPUTE_NORMS_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON

        uniform sampler2D uInputTexture;

        void main() {
            ivec2 coord = pixelCoord();
            vec4 i = fetchPixel(uInputTexture, coord);
            float norm = max(sqrt(dot(i.rgb, i.rgb)), $NORM_MIN);
            fragColor = vec4(norm, norm, norm, 1.0);
        }
    """.trimIndent()

    val COMPUTE_RATIOS_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON

        uniform sampler2D uInputTexture;
        uniform sampler2D uNormsTexture;

        void main() {
            ivec2 coord = pixelCoord();
            vec4 i = fetchPixel(uInputTexture, coord);
            float norm = max(fetchSingle(uNormsTexture, coord), $NORM_MIN);
            fragColor = i / norm;
        }
    """.trimIndent()

    val RESTORE_RATIOS_FRAGMENT_SHADER = """
        #version 300 es
        $COMMON

        uniform sampler2D uRatiosTexture;
        uniform sampler2D uNormsTexture;

        void main() {
            ivec2 coord = pixelCoord();
            vec4 ratio = fetchPixel(uRatiosTexture, coord);
            float norm = fetchSingle(uNormsTexture, coord);
            fragColor = clip4(ratio) * norm;
        }
    """.trimIndent()
}
