package com.hinnka.mycamera.raw

internal object SpektrafilmGraphShaders {
    private val SOURCE = """
        uniform sampler2D uSource;
        ivec2 pixel() { return ivec2(gl_FragCoord.xy); }
        vec3 source() { return texelFetch(uSource, pixel(), 0).rgb; }
    """.trimIndent()

    private val CUBE = """
        uniform sampler3D uCube;
        uniform float uSize;
        vec3 sampleCube(sampler3D data, vec3 code) {
            return texture(data, (clamp(code, 0.0, 1.0) * (uSize - 1.0) + 0.5) / uSize).rgb;
        }
    """.trimIndent()

    private val FILM_CURVE = """
        uniform sampler2D uCurves;
        uniform int uCurveWidth;

        vec4 filmCurve(int i, int row) {
            return texelFetch(uCurves, ivec2(i, row), 0);
        }
    """.trimIndent()

    private val DEVELOPMENT = """
        $SOURCE
        $FILM_CURVE
        uniform vec3 uGamma;
        uniform float uExposureCorrection;

        float density(float exposure, int channel, int row) {
            int low = 0;
            int high = uCurveWidth - 1;
            if (exposure <= filmCurve(low, 0).a) return filmCurve(low, row)[channel];
            if (exposure >= filmCurve(high, 0).a) return filmCurve(high, row)[channel];
            while (high - low > 1) {
                int middle = (high + low) / 2;
                if (filmCurve(middle, 0).a <= exposure) low = middle;
                else high = middle;
            }
            float x0 = filmCurve(low, 0).a;
            float x1 = filmCurve(high, 0).a;
            return mix(filmCurve(low, row)[channel], filmCurve(high, row)[channel], (exposure - x0) / (x1 - x0));
        }

        vec3 develop(vec3 logExposure, int row) {
            vec3 x = uGamma * logExposure;
            return vec3(density(x.r, 0, row), density(x.g, 1, row), density(x.b, 2, row));
        }

        vec3 logRaw() {
            return log2(max(source() * uExposureCorrection, 0.0) + 1.0e-10) * 0.30102999566;
        }
    """.trimIndent()

    val DIR = """
        $DEVELOPMENT
        uniform vec3 uDensityMax;
        uniform mat3 uDirMatrix;
        uniform int uPositive;

        void main() {
            vec3 density = develop(logRaw(), 0);
            vec3 silver = uPositive != 0 ? uDensityMax - density : density;
            fragColor = vec4(silver * uDirMatrix, 1.0);
        }
    """.trimIndent()

    val DEVELOP = """
        $DEVELOPMENT
        uniform sampler2D uInhibitor;
        uniform int uUseDir;

        void main() {
            vec3 exposure = logRaw();
            if (uUseDir != 0) exposure -= texelFetch(uInhibitor, pixel(), 0).rgb;
            fragColor = vec4(develop(exposure, uUseDir), 1.0);
        }
    """.trimIndent()

    val ENLARGE = """
        $SOURCE
        $CUBE
        uniform vec3 uLow;
        uniform vec3 uHigh;

        void main() {
            vec3 logExposure = sampleCube(uCube, (source() - uLow) / (uHigh - uLow));
            fragColor = vec4(pow(vec3(10.0), logExposure), 1.0);
        }
    """.trimIndent()

    val PAPER = """
        $SOURCE
        uniform sampler2D uCurves;

        float curve(float logExposure, int channel) {
            // The native paper table spans log10 exposure [-10, 6].
            float position = 4095.0 * clamp((logExposure + 10.0) / 16.0, 0.0, 1.0);
            int index = int(position);
            float a = texelFetch(uCurves, ivec2(index, 0), 0)[channel];
            float b = texelFetch(uCurves, ivec2(min(index + 1, 4095), 0), 0)[channel];
            return mix(a, b, fract(position));
        }

        void main() {
            vec3 logExposure = log2(max(source(), vec3(1.0e-10))) * 0.30102999566;
            fragColor = vec4(curve(logExposure.r, 0), curve(logExposure.g, 1), curve(logExposure.b, 2), 1.0);
        }
    """.trimIndent()

    fun scan(glare: Boolean, linear: Boolean): String = """
        $SOURCE
        $CUBE
        uniform vec3 uLow;
        uniform vec3 uHigh;
        ${if (glare) """
            uniform sampler2D uGlare;
            uniform sampler3D uGamut;
            uniform vec3 uWhite;
            uniform vec3 uGamutLow;
            uniform vec3 uGamutHigh;
        """ else ""}

        vec3 decode(vec3 code) {
            return mix(code / 16.0, pow(code, vec3(1.8)), step(vec3(0.03125), code));
        }

        void main() {
            vec3 result = sampleCube(uCube, (source() - uLow) / max(uHigh - uLow, vec3(1.0e-10)));
            ${if (glare) """
                result += texelFetch(uGlare, pixel(), 0).r * uWhite;
                result = sampleCube(uGamut, (result - uGamutLow) / (uGamutHigh - uGamutLow));
            """ else ""}
            fragColor = vec4(${if (linear) "result" else "decode(result)"}, 1.0);
        }
    """.trimIndent()

    val FINISH = """
        uniform sampler2D uSource;
        uniform sampler2D uUnsharp;
        uniform ivec2 uSourceOffset;
        uniform mat3 uOutputTransform;
        uniform float uUnsharpAmount;

        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy) + uSourceOffset;
            vec3 value = texelFetch(uSource, p, 0).rgb;
            if (uUnsharpAmount > 0.0) value += uUnsharpAmount * (value - texelFetch(uUnsharp, p, 0).rgb);
            fragColor = vec4(uOutputTransform * value, 1.0);
        }
    """.trimIndent()

    val FILM_EXPOSURE = RawEngineToneShaderDefinition(
        engineUniforms = """
            uniform highp sampler3D uFilmExposure;
            uniform float uSpectralInputScale;
            uniform float uCameraExposureGain;
            uniform float uSize;
        """.trimIndent(),
        engineFunctions = """
            vec3 applyEngineTone(vec3 color) {
                vec3 linear = max(color / uSpectralInputScale, vec3(0.0));
                vec3 code = mix(linear * 16.0, pow(linear, vec3(1.0 / 1.8)), step(vec3(0.001953125), linear));
                vec3 p = (clamp(code, 0.0, 1.0) * (uSize - 1.0) + 0.5) / uSize;
                return texture(uFilmExposure, p).rgb * uCameraExposureGain;
            }
        """.trimIndent(),
        includeAdobeProfilePipeline = false,
    )

    val GRAIN = """
        $SOURCE
        $FILM_CURVE
        uniform vec3 uMin;
        uniform vec3 uMax;
        uniform vec3 uCount;
        uniform vec3 uUniformity;
        uniform float uSign;
        uniform int uLayer;
        uniform int uSubLayerCount;
        uniform ivec2 uOrigin;

        uint hash(uint n) {
            n = (n ^ (n >> 16u)) * 0x7feb352du;
            n = (n ^ (n >> 15u)) * 0x846ca68bu;
            return n ^ (n >> 16u);
        }

        float random(inout uint state) {
            state = hash(state + 0x9e3779b9u);
            return (float(state >> 9u) + 0.5) * (1.0 / 8388608.0);
        }

        float logFactorial(float n) {
            if (n < 2.0) return 0.0;
            if (n < 8.0) {
                float result = 0.0;
                for (float k = 2.0; k <= n; k++) result += log(k);
                return result;
            }
            float inv = 1.0 / n;
            return (n + 0.5) * log(n) - n + 0.9189385332 + inv / 12.0 - inv * inv * inv / 360.0;
        }

        // Binomial thinning of a Poisson population is itself Poisson.
        // Inverse transform at low rates and transformed rejection at high rates.
        float poisson(float mean, inout uint state) {
            if (mean < 10.0) {
                float stop = exp(-mean);
                float product = random(state);
                float count = 0.0;
                while (product > stop) {
                    count += 1.0;
                    product *= random(state);
                }
                return count;
            }
            float b = 0.931 + 2.53 * sqrt(mean);
            float a = -0.059 + 0.02483 * b;
            float invAlpha = 1.1239 + 1.1328 / (b - 3.4);
            float vr = 0.9277 - 3.6224 / (b - 2.0);
            while (true) {
                float u = random(state) - 0.5;
                float v = random(state);
                float us = 0.5 - abs(u);
                float k = floor((2.0 * a / us + b) * u + mean + 0.43);
                if (k < 0.0 || (us < 0.013 && v > us)) continue;
                if (us >= 0.07 && v <= vr) return k;
                // Centered form avoids cancellation when individual log terms are large.
                float base = -mean + k * log(mean) - logFactorial(k);
                if (k >= 64.0) {
                    float ratio = (k - mean) / mean;
                    float logRatio = abs(ratio) < 0.02 ?
                        ratio * (1.0 + ratio * (-0.5 + ratio / 3.0)) : log(k / mean);
                    base = (k - mean) - k * logRatio - 0.5 * log(k) - 0.9189385332 - 1.0 / (12.0 * k);
                }
                if (log(v * invAlpha / (a / (us * us) + b)) <= base) return k;
            }
        }

        float layerDensity(float density, int channel) {
            int row = 2 + uLayer;
            float value = uSign * density;
            int low = 0;
            int high = uCurveWidth - 1;
            if (value <= uSign * filmCurve(low, 0)[channel]) return filmCurve(low, row)[channel];
            if (value >= uSign * filmCurve(high, 0)[channel]) return filmCurve(high, row)[channel];
            while (high - low > 1) {
                int middle = (high + low) / 2;
                if (uSign * filmCurve(middle, 0)[channel] <= value) low = middle;
                else high = middle;
            }
            float x0 = uSign * filmCurve(low, 0)[channel];
            float x1 = uSign * filmCurve(high, 0)[channel];
            return mix(filmCurve(low, row)[channel], filmCurve(high, row)[channel], (value - x0) / max(x1 - x0, 1.0e-10));
        }

        void main() {
            vec3 density = source();
            ivec2 position = pixel() + uOrigin;
            vec3 result = vec3(0.0);
            for (int c = 0; c < 3; ++c) {
                if (uLayer >= 0) density[c] = layerDensity(density[c], c);
                float total = uMax[c];
                if (total <= 0.0 || uCount[c] <= 0.0) continue;
                float p = clamp((density[c] + uMin[c]) / total, 0.000001, 0.999999);
                float saturation = 1.0 - p * uUniformity[c] * 0.999999;
                float rate = uCount[c] * (p / saturation);
                for (int s = 0; s < uSubLayerCount; ++s) {
                    uint state = hash(uint(position.x) ^ hash(uint(position.y)) ^
                        hash(uint(c + 3 * s + 31 * (uLayer + 1))));
                    if (rate < 8388608.0) {
                        result[c] += poisson(rate, state) * (total / uCount[c]) * saturation;
                    } else {
                        float u1 = random(state);
                        float u2 = random(state);
                        float normal = sqrt(-2.0 * log(u1)) * cos(6.28318530718 * u2);
                        result[c] += total * (p + normal * sqrt(p * saturation / uCount[c]));
                    }
                }
            }
            fragColor = vec4(result / float(uSubLayerCount), 1.0);
        }
    """.trimIndent()

    val GRAIN_COMBINE = """
        uniform sampler2D uAccumulated;
        uniform sampler2D uLayer;
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy);
            fragColor = vec4(texelFetch(uAccumulated, p, 0).rgb + texelFetch(uLayer, p, 0).rgb, 1.0);
        }
    """.trimIndent()

    val GRAIN_MICRO = """
        uniform ivec2 uOrigin;
        uniform float uSigma;
        uint hash(uint n) {
            n = (n ^ (n >> 16u)) * 0x7feb352du;
            n = (n ^ (n >> 15u)) * 0x846ca68bu;
            return n ^ (n >> 16u);
        }
        float unit(uint n) { return (float(hash(n) >> 9u) + 0.5) * (1.0 / 8388608.0); }
        float noise(uint state) {
            float variance = log(1.0 + uSigma * uSigma);
            float normal = sqrt(-2.0 * log(unit(state))) * cos(6.28318530718 * unit(state + 1u));
            return exp(sqrt(variance) * normal - 0.5 * variance);
        }
        void main() {
            ivec2 p = ivec2(gl_FragCoord.xy) + uOrigin;
            uint seed = hash(uint(p.x) ^ hash(uint(p.y) + 1009u));
            fragColor = vec4(noise(seed), noise(seed+2u), noise(seed+4u), 1.0);
        }
    """.trimIndent()

    val GRAIN_FINISH = """
        $SOURCE
        uniform sampler2D uMicro;
        uniform vec3 uMinimum;
        uniform int uUseMicro;
        void main() {
            vec3 density = source();
            if (uUseMicro != 0) density *= texelFetch(uMicro, pixel(), 0).rgb;
            fragColor = vec4(density - uMinimum, 1.0);
        }
    """.trimIndent()
}
