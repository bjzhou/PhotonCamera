package com.hinnka.mycamera.lut

import com.hinnka.mycamera.processor.BokehDefocusModel

/** Pupil-derived PSF integration over the shared, premultiplied complement layer. */
internal object PhysicalBokehShaders {
    /** Opening (erosion followed by dilation) estimates the extended background
     * under finite lights. Unlike a surrounding maximum it survives neighbouring
     * lights; unlike a surrounding minimum it preserves a straight bright step.
     */
    fun emitterEnvironment(erosion: Boolean) = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform highp sampler2D uInputTexture;
        uniform highp sampler2D uDepthTexture;
        uniform vec2 uTexelSize;
        uniform float uBaseCocRadius;
        float valueAt(ivec2 pixel) {
            vec4 value = texelFetch(uInputTexture, pixel, 0);
            return ${if (erosion) "max(value.r, max(value.g, value.b)) / max(value.a, 0.0001)" else "value.r"};
        }
        void main() {
            ivec2 size = textureSize(uInputTexture, 0);
            ivec2 center = clamp(ivec2(vTexCoord * vec2(size)), ivec2(0), size - 1);
            float depth = texelFetch(uDepthTexture, center, 0).b;
            float result = valueAt(center);
            for (int i = 0; i < 32; ++i) {
                float angle = float(i % 16) * 0.392699081699;
                float radius = (i < 16 ? 0.5 : 1.0) * 0.4 * uBaseCocRadius;
                // Use the identical discrete, symmetric element in both passes.
                // Bilinear min/max probes would erode a straight step twice.
                ivec2 offset = ivec2(round(radius * uTexelSize * vec2(size) * vec2(cos(angle), sin(angle))));
                ivec2 pixel = clamp(center + offset, ivec2(0), size - 1);
                vec4 layer = texelFetch(uDepthTexture, pixel, 0);
                if (abs(layer.b - depth) > 0.04 || layer.a > 0.05) continue;
                result = ${if (erosion) "min" else "max"}(result, valueAt(pixel));
            }
            fragColor = vec4(result, 0.0, 0.0, 1.0);
        }
    """.trimIndent()

    /** Positive compact-source radiance. The complement is subtracted using the
     * exact same texture and LOD in gather; alpha remains geometric coverage.
     * The opened environment rejects extended surfaces. This pass retains the
     * observed footprint; subsequent reconstruction integrates accepted sources
     * into point flux, while ambiguous light keeps the finite-source path.
     */
    val separateEmitters = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform highp sampler2D uLayerColorTexture;
        uniform highp sampler2D uDepthTexture;
        uniform highp sampler2D uEmitterEnvironment;
        uniform float uFocusDepth;
        uniform float uAperture;
        uniform vec2 uTexelSize;
        ${BokehDefocusModel.GLSL_SOURCE}
        float brightness(vec3 rgb) { return max(rgb.r, max(rgb.g, rgb.b)); }
        float probe(vec2 uv, float depth, float centerBrightness) {
            if (any(lessThan(uv, vec2(0.0))) || any(greaterThan(uv, vec2(1.0)))) return centerBrightness;
            vec4 layer = textureLod(uDepthTexture, uv, 0.0);
            vec4 source = textureLod(uLayerColorTexture, uv, 0.0);
            if (abs(layer.b - depth) > 0.04 || source.a < 0.95) return centerBrightness;
            return brightness(source.rgb / source.a);
        }
        void main() {
            vec4 source = textureLod(uLayerColorTexture, vTexCoord, 0.0);
            vec4 layer = textureLod(uDepthTexture, vTexCoord, 0.0);
            float peak = brightness(source.rgb / max(source.a, 0.0001));
            float eligible = smoothstep(0.015, 0.04, uFocusDepth - layer.b)
                * smoothstep(0.04, 0.12, computeCoc(layer.b) / uBaseCocRadius)
                * smoothstep(0.95, 1.0, source.a);
            if (eligible <= 0.0 || peak <= 0.0) { fragColor = vec4(0.0, 0.0, 0.0, source.a); return; }
            float surround = textureLod(uEmitterEnvironment, vTexCoord, 0.0).r;
            float seedPeak = peak;
            for (int i = 0; i < 8; ++i) {
                float angle = float(i) * 0.392699081699;
                vec2 offset = vec2(cos(angle), sin(angle)) * uTexelSize * (0.4 * uBaseCocRadius);
                // Include the wings of a finite light, not only its bright core.
                // Otherwise its untransported wings fill the new caustic's centre.
                vec2 seedOffset = offset * 0.375;
                seedPeak = max(seedPeak, max(probe(vTexCoord + seedOffset, layer.b, 0.0),
                    probe(vTexCoord - seedOffset, layer.b, 0.0)));
            }
            float fraction = eligible * smoothstep(0.16, 0.5, seedPeak) * max(peak - surround, 0.0) / peak;
            fragColor = vec4(source.rgb * fraction, source.a);
        }
    """.trimIndent()

    private val tableSampling = """
        uniform highp sampler2D uPsfCdf;
        uniform highp sampler2D uPsfSupport;
        uniform float uPsfBinWidth;
        uniform float uMaxBlurRadius;

        vec3 depthRows(float depth) {
            float row = clamp(depth, 0.0, 1.0) * float(textureSize(uPsfCdf, 0).y - 1);
            return vec3(floor(row), min(floor(row) + 1.0, float(textureSize(uPsfCdf, 0).y - 1)), fract(row));
        }
        float support(float depth) {
            vec3 rows = depthRows(depth);
            return max(texelFetch(uPsfSupport, ivec2(0, int(rows.x)), 0).r,
                texelFetch(uPsfSupport, ivec2(0, int(rows.y)), 0).r);
        }
        float rowEnergy(int row, float radius) {
            int bins = textureSize(uPsfCdf, 0).x - 1;
            float position = clamp(radius / uPsfBinWidth, 0.0, float(bins));
            int bin = min(int(position), bins - 1);
            float inner = float(bin);
            // Each annulus has constant area density, so its CDF interpolates in r².
            float fraction = (position * position - inner * inner) / (2.0 * inner + 1.0);
            return mix(texelFetch(uPsfCdf, ivec2(bin, row), 0).r,
                texelFetch(uPsfCdf, ivec2(bin + 1, row), 0).r, fraction);
        }
        float energy(float depth, float radius) {
            vec3 rows = depthRows(depth);
            return mix(rowEnergy(int(rows.x), radius), rowEnergy(int(rows.y), radius), rows.z);
        }
        float density(float depth, float radius, float halfFootprint) {
            float inner = max(0.0, radius - halfFootprint);
            float outer = radius + halfFootprint;
            return (energy(depth, outer) - energy(depth, inner))
                / (3.14159265359 * (outer * outer - inner * inner));
        }
        vec4 layersAt(vec2 uv) {
            vec4 layers = textureLod(uDepthTexture, uv, 0.0);
            ivec2 size = textureSize(uDepthTexture, 0);
            layers.gb = texelFetch(uDepthTexture, clamp(ivec2(uv * vec2(size)), ivec2(0), size - 1), 0).gb;
            return layers;
        }
    """.trimIndent()

    val gather = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform highp sampler2D uDepthTexture;
        uniform highp sampler2D uLayerColorTexture;
        uniform highp sampler2D uEmitterTexture;
        uniform bool uSubtractEmitters;
        uniform vec2 uTexelSize;
        uniform float uFocusDepth;
        uniform float uAperture;
        ${BokehDefocusModel.GLSL_SOURCE}
        $tableSampling

        void main() {
            vec4 center = layersAt(vTexCoord);
            if (center.a >= 0.999) { fragColor = vec4(0.0); return; }
            float centerDepth = center.a >= 0.5 ? center.g : center.b;
            float localRadius = min(uMaxBlurRadius, max(1.0, support(center.b) + uPsfBinWidth));
            float globalPdf = 0.25 / (3.14159265359 * uMaxBlurRadius * uMaxBlurRadius);
            float localPdf = 0.75 / (3.14159265359 * localRadius * localRadius);
            vec2 workingPixel = 1.0 / vec2(textureSize(uLayerColorTexture, 0));
            float outputPixelsPerWorkingPixel = workingPixel.x / uTexelSize.x;
            vec3 sum = vec3(0.0);
            float weightSum = 0.0;
            // Two uniform-area proposals: dense local PSF support, plus full support
            // for sources at other depths. The mixture PDF removes sampling bias.
            for (int i = 0; i < 512; ++i) {
                bool local = i < 384;
                float index = float(local ? i : i - 384) + 0.5;
                float count = local ? 384.0 : 128.0;
                float radius = sqrt(index / count) * (local ? localRadius : uMaxBlurRadius);
                float angle = index * 2.39996322973 + (local ? 0.0 : 1.57079632679);
                vec2 offset = radius * vec2(cos(angle), sin(angle));
                vec2 sourceUv = vTexCoord + offset * uTexelSize;
                // Unknown off-frame radiance is excluded together with its support.
                // Clamping would duplicate border colors over an entire blur disc.
                if (any(lessThan(sourceUv, vec2(0.0))) || any(greaterThan(sourceUv, vec2(1.0)))) continue;
                float pdf = globalPdf + (radius <= localRadius ? localPdf : 0.0);
                float footprint = max(outputPixelsPerWorkingPixel, sqrt(1.0 / (512.0 * pdf)));
                vec4 sourceLayers = layersAt(sourceUv);
                // Pixel integration is fixed by output resolution, independent
                // of the proposal density. Sparse far taps must not widen rings.
                float kernel = density(sourceLayers.b, radius, outputPixelsPerWorkingPixel * 0.5);
                if (kernel <= 0.0) continue;
                float lod = max(0.0, log2(footprint / outputPixelsPerWorkingPixel));
                vec4 source = textureLod(uLayerColorTexture, sourceUv, lod);
                if (uSubtractEmitters) source.rgb -= textureLod(uEmitterTexture, sourceUv, lod).rgb;
                // Shared layered-depth visibility model; it is independent of the PSF.
                float centerOccludes = smoothstep(0.025, 0.075, centerDepth - sourceLayers.b);
                float focusedProtection = 1.0 - smoothstep(0.8, 4.0, computeCoc(centerDepth));
                float visibility = 1.0 - centerOccludes * mix(0.28, 1.0, focusedProtection);
                float weight = kernel * visibility / pdf;
                sum += source.rgb * weight;
                weightSum += source.a * weight;
            }
            fragColor = weightSum > 0.0 ? vec4(sum / weightSum, 1.0) : vec4(0.0);
        }
    """.trimIndent()

    val emitterVertex = """#version 300 es
        precision highp float;
        in vec2 aCenter;
        in float aDepth;
        in vec3 aFlux;
        in float aSupport;
        uniform vec2 uTexelSize;
        out vec2 vTexCoord;
        out vec2 vOffset;
        flat out float vDepth;
        flat out vec3 vFlux;
        void main() {
            const vec2 corners[6] = vec2[](vec2(-1,-1),vec2(1,-1),vec2(-1,1),
                vec2(-1,1),vec2(1,-1),vec2(1,1));
            vOffset = corners[gl_VertexID] * aSupport;
            vTexCoord = aCenter + vOffset * uTexelSize;
            vDepth = aDepth;
            vFlux = aFlux;
            gl_Position = vec4(vTexCoord * 2.0 - 1.0, 0.0, 1.0);
        }
    """.trimIndent()

    /** Re-images an inferred point source once, instead of blurring its old PSF.
     * RGB is integrated source flux in output-pixel units, never peak brightness.
     * Additive blending also lets overlapping emitters retain their own rings.
     */
    val emitterFragment = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        in vec2 vOffset;
        flat in float vDepth;
        flat in vec3 vFlux;
        out vec4 fragColor;
        uniform highp sampler2D uDepthTexture;
        uniform float uPixelFootprint;
        uniform float uFocusDepth;
        uniform float uAperture;
        ${BokehDefocusModel.GLSL_SOURCE}
        $tableSampling
        void main() {
            vec4 center = layersAt(vTexCoord);
            if (center.a >= 0.999) discard;
            float centerDepth = center.a >= 0.5 ? center.g : center.b;
            float occludes = smoothstep(0.025, 0.075, centerDepth - vDepth);
            float protection = 1.0 - smoothstep(0.8, 4.0, computeCoc(centerDepth));
            float visibility = 1.0 - occludes * mix(0.28, 1.0, protection);
            fragColor = vec4(vFlux * density(vDepth, length(vOffset), uPixelFootprint * 0.5) * visibility, 0.0);
        }
    """.trimIndent()

    fun composite(colorTransfer: String) = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform highp sampler2D uOriginalTexture;
        uniform highp sampler2D uBokehTexture;
        uniform highp sampler2D uEmitterBokehTexture;
        uniform highp sampler2D uDepthTexture;
        uniform float uFocusDepth;
        uniform float uAperture;
        ${BokehDefocusModel.GLSL_SOURCE}
        $tableSampling
        $colorTransfer
        void main() {
            vec4 original = texture(uOriginalTexture, vTexCoord);
            vec4 background = texture(uBokehTexture, vTexCoord);
            if (background.a <= 0.0) { fragColor = original; return; }
            vec4 layers = layersAt(vTexCoord);
            // Resolve coverage at full output resolution, retaining protected detail.
            // CoC controls the shared focus transition. PSF support also includes
            // residual aberration and belongs only to integration bounds.
            float coverage = (1.0 - layers.a) * smoothstep(0.2, 1.2, computeCoc(layers.b));
            vec4 emitters = texture(uEmitterBokehTexture, vTexCoord);
            vec3 transported = background.rgb / background.a;
            if (emitters.a > 0.0) transported += emitters.rgb / emitters.a;
            vec3 linear = mix(decodeColor(original.rgb), transported, coverage);
            fragColor = vec4(encodeColor(linear), original.a);
        }
    """.trimIndent()
}
