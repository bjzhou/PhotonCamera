package com.hinnka.mycamera.lut

/** Snapseed Bloom/Halation equations, evaluated on display-encoded RGB. */
internal object HighlightDiffusionShaders {
    val EXTRACT = """
        #version 300 es
        precision highp float;
        precision highp sampler2D;
        in vec2 vTexCoord;
        uniform sampler2D uInput;
        uniform float uThreshold;
        uniform bool uHalation;
        out vec4 fragColor;
        void main() {
            ivec2 size = textureSize(uInput, 0);
            ivec2 pixel = clamp(ivec2(vTexCoord * vec2(size)), ivec2(0), size - 1);
            vec3 color = texelFetch(uInput, pixel, 0).rgb;
            float y = dot(color, vec3(0.299, 0.587, 0.114));
            float mask = clamp((y - uThreshold) / (1.0 - uThreshold), 0.0, 1.0);
            fragColor = vec4(uHalation ? vec3(mask) : color * mask, 1.0);
        }
    """.trimIndent()

    // Adjacent Gaussian taps share one bilinear fetch; the kernel is still a single Gaussian.
    val BLUR = """
        #version 300 es
        precision highp float;
        precision highp sampler2D;
        in vec2 vTexCoord;
        uniform sampler2D uInput;
        uniform vec2 uStep;
        uniform float uCenter;
        uniform int uPairCount;
        uniform vec2 uPairs[26];
        out vec4 fragColor;
        void main() {
            vec3 sum = texture(uInput, vTexCoord).rgb * uCenter;
            for (int i = 0; i < 26; ++i) {
                if (i >= uPairCount) break;
                vec2 offset = uStep * uPairs[i].x;
                sum += (texture(uInput, vTexCoord + offset).rgb +
                        texture(uInput, vTexCoord - offset).rgb) * uPairs[i].y;
            }
            fragColor = vec4(sum, 1.0);
        }
    """.trimIndent()

    val REDUCE = """
        #version 300 es
        precision highp float;
        precision highp sampler2D;
        uniform sampler2D uInput;
        out vec4 fragColor;
        void main() {
            ivec2 limit = textureSize(uInput, 0) - 1;
            ivec2 p = ivec2(gl_FragCoord.xy) * 2;
            vec3 peak = vec3(0.0);
            for (int y = 0; y < 2; ++y) {
                for (int x = 0; x < 2; ++x) {
                    peak = max(peak, texelFetch(uInput, min(p + ivec2(x, y), limit), 0).rgb);
                }
            }
            fragColor = vec4(peak, 1.0);
        }
    """.trimIndent()

    val NORMALIZE = """
        #version 300 es
        precision highp float;
        precision highp sampler2D;
        uniform sampler2D uInput;
        uniform sampler2D uPeak;
        uniform bool uHalation;
        out vec4 fragColor;
        void main() {
            vec3 peakRgb = texelFetch(uPeak, ivec2(0), 0).rgb;
            float peak = max(peakRgb.r, max(peakRgb.g, peakRgb.b));
            vec3 value = texelFetch(uInput, ivec2(gl_FragCoord.xy), 0).rgb;
            value = peak > 0.0 ? clamp(value / peak, 0.0, 1.0) : vec3(0.0);
            if (uHalation) {
                float x = min(value.r * 3.0, 1.0);
                float a = x < 0.4 ? 0.4 * pow(x / 0.4, 1.25)
                    : 0.4 + 0.6 * pow((x - 0.4) / 0.6, 0.8);
                // The reference stores a truncated byte mask before full-resolution interpolation.
                value = vec3(floor(clamp(a, 0.0, 1.0) * 255.0) / 255.0);
            }
            fragColor = vec4(value, 1.0);
        }
    """.trimIndent()

    val COMPOSITE = """
        #version 300 es
        precision highp float;
        precision highp sampler2D;
        in vec2 vTexCoord;
        uniform sampler2D uInput;
        uniform sampler2D uMap;
        uniform float uStrength;
        uniform bool uHalation;
        out vec4 fragColor;
        void main() {
            vec4 source = texture(uInput, vTexCoord);
            vec3 color = source.rgb;
            vec3 map = texture(uMap, vTexCoord).rgb;
            vec3 linearColor = pow(max(color, vec3(0.0)), vec3(2.2));
            vec3 result;
            if (uHalation) {
                float y = dot(color, vec3(0.299, 0.587, 0.114));
                vec2 pixel = vTexCoord * vec2(textureSize(uInput, 0));
                float noise = fract(sin(dot(pixel, vec2(12.9898, 78.233))) * 43758.5453);
                float grain = 1.0 - noise * (1.0 - map.r) * 0.5;
                float destination = 1.0 / (1.0 + exp(-50.0 * (1.0 - y)));
                vec3 glow = map.r * vec3(1.0, 0.05, 0.05) * uStrength * grain * destination;
                result = pow(clamp(linearColor + glow, 0.0, 1.0), vec3(1.0 / 2.2));
            } else {
                vec3 linearBloom = pow(max(map, vec3(0.0)), vec3(2.2));
                if (uStrength <= 0.5) {
                    vec3 full = pow(clamp(linearColor + linearBloom, 0.0, 1.0), vec3(1.0 / 2.2));
                    result = mix(color, full, uStrength * 2.0);
                } else {
                    result = pow(linearColor + linearBloom * (uStrength * 2.0), vec3(1.0 / 2.2));
                }
            }
            fragColor = vec4(result, source.a);
        }
    """.trimIndent()
}
