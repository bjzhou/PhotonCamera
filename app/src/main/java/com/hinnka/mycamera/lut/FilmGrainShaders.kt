package com.hinnka.mycamera.lut

/**
 * Display-referred film grain shared by still, preview and video pipelines.
 *
 * The continuous simplex field follows the structure recovered from Phocus' film-grain
 * shaders, while the density-domain response preserves PhotonMGC's highlight protection
 * and subtle dye-cloud variation.
 */
internal object FilmGrainShaders {
    val FUNCTIONS = """
        vec3 grainRandom3(vec3 c) {
            float pos = dot(c, vec3(17.0, 59.4, 15.0));
            pos = mod(pos, 1608.49543864);
            return fract(vec3(262144.0, 32768.0, 2097152.0) * sin(pos)) - 0.5;
        }

        float grainSimplex(vec3 p) {
            const float F3 = 1.0 / 3.0;
            const float G3 = 1.0 / 6.0;
            vec3 s = floor(p + dot(p, vec3(F3)));
            vec3 x = p - s + dot(s, vec3(G3));

            vec3 i1;
            vec3 i2;
            if (x.x >= x.y) {
                if (x.y >= x.z) {
                    i1 = vec3(1.0, 0.0, 0.0);
                    i2 = vec3(1.0, 1.0, 0.0);
                } else if (x.x >= x.z) {
                    i1 = vec3(1.0, 0.0, 0.0);
                    i2 = vec3(1.0, 0.0, 1.0);
                } else {
                    i1 = vec3(0.0, 0.0, 1.0);
                    i2 = vec3(1.0, 0.0, 1.0);
                }
            } else {
                if (x.y < x.z) {
                    i1 = vec3(0.0, 0.0, 1.0);
                    i2 = vec3(0.0, 1.0, 1.0);
                } else if (x.x < x.z) {
                    i1 = vec3(0.0, 1.0, 0.0);
                    i2 = vec3(0.0, 1.0, 1.0);
                } else {
                    i1 = vec3(0.0, 1.0, 0.0);
                    i2 = vec3(1.0, 1.0, 0.0);
                }
            }

            vec3 x1 = x - i1 + G3;
            vec3 x2 = x - i2 + 2.0 * G3;
            vec3 x3 = x - 1.0 + 3.0 * G3;
            vec4 w = max(
                vec4(0.6) - vec4(dot(x, x), dot(x1, x1), dot(x2, x2), dot(x3, x3)),
                0.0
            );
            vec4 w2 = w * w;
            vec4 w4 = w2 * w2;
            vec4 d = vec4(
                dot(grainRandom3(s), x),
                dot(grainRandom3(s + i1), x1),
                dot(grainRandom3(s + i2), x2),
                dot(grainRandom3(s + 1.0), x3)
            );
            return dot(d * w4, vec4(52.0));
        }

        vec3 grainSrgbToLinear(vec3 c) {
            vec3 safe = max(c, vec3(0.0));
            return mix(
                safe / 12.92,
                pow((safe + 0.055) / 1.055, vec3(2.4)),
                step(vec3(0.04045), safe)
            );
        }

        vec3 grainLinearToSrgb(vec3 c) {
            vec3 safe = max(c, vec3(0.0));
            return mix(
                safe * 12.92,
                1.055 * pow(safe, vec3(1.0 / 2.4)) - 0.055,
                step(vec3(0.0031308), safe)
            );
        }

        vec3 applyDensityFilmGrain(
            vec3 srgbColor,
            vec2 outputPixel,
            float amount,
            float frameSeed,
            float pixelScale
        ) {
            float normalizedAmount = clamp(amount, 0.0, 1.0);
            float grainAmount = pow(normalizedAmount, 0.58);
            vec3 linearColor = max(grainSrgbToLinear(srgbColor), vec3(1e-4));
            vec3 density = -log(linearColor) * 0.4342944819;
            vec3 densityMin = vec3(0.03);
            vec3 densityMax = vec3(2.23);
            vec3 development = clamp((density + densityMin) / densityMax, vec3(0.02), vec3(0.98));

            float effectivePixelSizeUm = mix(5.2, 1.8, grainAmount);
            vec3 particleScale = vec3(1.6, 1.6, 3.2);
            vec3 particles = (effectivePixelSizeUm * effectivePixelSizeUm) / (0.2 * particleScale);
            vec3 saturation = 1.0 - development * vec3(0.97, 0.99, 0.97);
            vec3 densityStd = densityMax * sqrt(
                max(development * (1.0 - development) * saturation, vec3(0.001)) /
                max(particles, vec3(1.0))
            );

            vec2 seedOffset = vec2(
                fract(frameSeed * 0.754877666),
                fract(frameSeed * 0.569840296)
            ) * 4096.0;
            float seedPlane = mod(frameSeed, 4096.0) * 0.03125;
            vec2 grainPixel = outputPixel / max(pixelScale, 0.25) + seedOffset;
            float lumaGrain = grainSimplex(vec3(grainPixel * 0.42, seedPlane));
            // Thin weak grain regions at low settings; restore full coverage by the midpoint.
            float sparseThreshold = 0.08 * (1.0 - smoothstep(0.0, 0.5, normalizedAmount));
            float grainCoverage = 1.0 - clamp(
                sparseThreshold / max(abs(lumaGrain), 1e-4), 0.0, 1.0
            );
            float dyeR = grainSimplex(vec3(grainPixel * 0.12, seedPlane + 17.0));
            float dyeB = grainSimplex(vec3(grainPixel * 0.12, seedPlane + 43.0));
            vec3 dyeCloud = vec3(dyeR, (dyeR + dyeB) * 0.5, dyeB);
            float lumaDensityStd = dot(densityStd, vec3(0.333333));
            float positiveLuma = dot(linearColor, vec3(0.2126, 0.7152, 0.0722));
            float highlightMask = smoothstep(0.55, 0.92, positiveLuma);
            float highlightVisibility = mix(1.0, 0.32, highlightMask);
            vec3 densityNoise = vec3(lumaGrain * lumaDensityStd * 2.7);
            densityNoise += dyeCloud * densityStd * 0.22;
            densityNoise *= highlightVisibility * grainCoverage;
            density = max(density + densityNoise * grainAmount * 1.5, vec3(0.0));
            return grainLinearToSrgb(exp(-density * 2.302585093));
        }
    """.trimIndent()

    val FRAGMENT = """
        #version 300 es
        precision highp float;
        precision highp int;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform float uAmount;
        uniform float uFrameSeed;
        uniform float uPixelScale;

        $FUNCTIONS

        void main() {
            vec4 source = texture(uInputTexture, vTexCoord);
            vec3 grained = applyDensityFilmGrain(
                source.rgb,
                gl_FragCoord.xy,
                uAmount,
                uFrameSeed,
                uPixelScale
            );
            fragColor = vec4(clamp(grained, 0.0, 1.0), source.a);
        }
    """.trimIndent()

    fun pixelScale(width: Int, height: Int): Float {
        return (minOf(width, height).coerceAtLeast(1) / 1080f).coerceIn(0.5f, 4f)
    }

    fun frameSeed(timestampNs: Long): Float {
        if (timestampNs <= 0L) return 0f
        return ((timestampNs / FRAME_SEED_TICK_NS) % SEED_PERIOD).toFloat()
    }

    fun videoFrameSeed(presentationTimeUs: Long): Float {
        if (presentationTimeUs <= 0L) return 0f
        return frameSeed(presentationTimeUs * 1_000L)
    }

    private const val FRAME_SEED_TICK_NS = 8_333_333L
    private const val SEED_PERIOD = 4096L
}
