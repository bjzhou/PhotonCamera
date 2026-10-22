package com.hinnka.mycamera.processor

/**
 * Swirl and soap-bubble passes of the previous bokeh renderer, run on top of
 * Lens Blur ([OglBokehProcessor]). The pupil warps drive the scatter's
 * previous-gather aperture ([BokehShaders.SCATTER_COMPUTE_SHADER]); highlight
 * extraction, soap-bubble sources and the analytic sprites are the previous
 * shaders unchanged, including their own defocus curve
 * ([BokehHighlightPlanner.legacyCocPixels]): which lights become discs or
 * bubbles, and how large they are, is the previous renderer's.
 */
internal object BokehStyleShaders {
    /**
     * Swirl pupil at full field: radial scale, tangential scale, shear. A
     * swirly lens (Petzval, Helios, Biotar) keeps the axial disc, while off
     * axis its field curvature and astigmatism stretch the defocus blur along
     * the tangential direction and cat-eye vignetting compresses it radially;
     * the background smears along circles around the image center. The
     * previous renderer only compressed (0.54 x 1.08), which reads as swirl
     * only at its CoC of over twice Lens Blur's. At Lens Blur's CoC the swirl
     * is the tangential stretch; 0.55 x 1.8 keeps the pupil area, and so the
     * amount of blur, of the axial disc.
     */
    val SWIRL_PUPIL_WARP = floatArrayOf(0.55f, 1.8f, 0.10f)

    /** Pupil warp of the soap-bubble background (mild mechanical vignetting). */
    val BUBBLE_PUPIL_WARP = floatArrayOf(0.78f, 1.02f, 0.03f)

    /** CPU 高光判定副本：R=非主体视差，G=主体 mask；渲染仍使用 RGBA16F 分层数据。 */
    val DEPTH_READBACK_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uDepthTexture;

        void main() {
            vec4 layers = texture(uDepthTexture, vTexCoord);
            fragColor = vec4(layers.b, layers.a, 0.0, 1.0);
        }
    """.trimIndent()

    /** 在线性域预乘非主体覆盖率，然后生成 mipmap，避免主体颜色进入背景采样足迹。 */
    val BOKEH_LAYER_COLOR_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform sampler2D uDepthTexture;
        uniform int uLinearInput;

        vec4 premultipliedSourceTexel(ivec2 position) {
            ivec2 size = textureSize(uInputTexture, 0);
            position = clamp(position, ivec2(0), size - 1);
            vec2 uv = (vec2(position) + 0.5) / vec2(size);
            vec3 color = texelFetch(uInputTexture, position, 0).rgb;
            vec3 linear = uLinearInput != 0 ? max(color, vec3(0.0))
                : pow(clamp(color, 0.0, 1.0), vec3(2.2));
            float coverage = 1.0 - textureLod(uDepthTexture, uv, 0.0).a;
            return vec4(linear * coverage, coverage);
        }

        vec4 samplePremultipliedSource(vec2 uv) {
            vec2 position = uv * vec2(textureSize(uInputTexture, 0)) - 0.5;
            ivec2 base = ivec2(floor(position));
            vec2 fraction = fract(position);
            // Interpolate radiance and coverage together. Filtering RGB first
            // would already mix protected subject colors into a background tap.
            return mix(
                mix(premultipliedSourceTexel(base),
                    premultipliedSourceTexel(base + ivec2(1, 0)), fraction.x),
                mix(premultipliedSourceTexel(base + ivec2(0, 1)),
                    premultipliedSourceTexel(base + ivec2(1, 1)), fraction.x),
                fraction.y);
        }

        void main() {
            vec2 texel = 1.0 / vec2(textureSize(uDepthTexture, 0));
            vec4 sum = vec4(0.0);
            for (int y = 0; y < 2; y++) {
                for (int x = 0; x < 2; x++) {
                    vec2 uv = clamp(vTexCoord + (vec2(float(x), float(y)) - 0.5)
                        * texel * 0.5, 0.0, 1.0);
                    sum += samplePremultipliedSource(uv);
                }
            }
            fragColor = sum * 0.25;
        }
    """.trimIndent()

    /**
     * 提取适合重建为弥散圆的紧凑高光（旋焦）。
     *
     * 使用由近到远的完整环形探针验证中心是严格局部亮点。选中的圆环上任一方向
     * 不暗于中心都会拒绝；多尺度半径则允许探针越过较宽的光源亮区。
     */
    val COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform sampler2D uDepthTexture;
        uniform float uMaxBlurRadius;
        uniform float uAperture;
        uniform float uFocusDepth;
        uniform vec2 uTexelSize;
        uniform float uMinNeighborhoodLumaDifference;
        uniform int uLinearInput;

        ${BokehShaders.BOKEH_LAYER_SAMPLING}

        const float LENS_GAMMA = 2.2;
        const float MIN_HIGHLIGHT_CORE_RADIUS_PIXELS = 2.5;
        const float MIN_HIGHLIGHT_CORE_DIRECTION_COUNT = 12.0;
        const vec2 PROBE_DIRECTIONS[16] = vec2[](
            vec2( 1.0,  0.0),
            vec2( 0.92387953,  0.38268343),
            vec2( 0.70710678,  0.70710678),
            vec2( 0.38268343,  0.92387953),
            vec2( 0.0,  1.0),
            vec2(-0.38268343,  0.92387953),
            vec2(-0.70710678,  0.70710678),
            vec2(-0.92387953,  0.38268343),
            vec2(-1.0,  0.0),
            vec2(-0.92387953, -0.38268343),
            vec2(-0.70710678, -0.70710678),
            vec2(-0.38268343, -0.92387953),
            vec2( 0.0, -1.0),
            vec2( 0.38268343, -0.92387953),
            vec2( 0.70710678, -0.70710678),
            vec2( 0.92387953, -0.38268343)
        );

        vec3 toLinear(vec3 color) {
            if (uLinearInput != 0) return max(color, vec3(0.0));
            return pow(clamp(color, 0.0, 1.0), vec3(LENS_GAMMA));
        }

        float luminance(vec3 color) {
            return dot(color, vec3(0.2126, 0.7152, 0.0722));
        }

        float computeCoc(float depth) {
            float gap = max(abs(uFocusDepth - depth) - 0.015, 0.0);
            float availableFocusSpan = max(
                max(uFocusDepth, 1.0 - uFocusDepth) - 0.015,
                0.15
            );
            float normalizedGap = clamp(gap / availableFocusSpan, 0.0, 1.0);
            float defocus = pow(normalizedGap, 1.25);
            float apertureScale = min(1.4 / max(uAperture, 0.7), 1.25);
            return clamp(
                defocus * uMaxBlurRadius * apertureScale,
                0.0,
                uMaxBlurRadius
            );
        }

        int evaluateDarkRing(
            vec2 centerUV,
            float centerLuma,
            float ringProbeRadius,
            out vec3 surroundLinear,
            out float maxRingLuma,
            out vec2 ringBrightnessMoment
        ) {
            surroundLinear = vec3(0.0);
            maxRingLuma = 0.0;
            ringBrightnessMoment = vec2(0.0);

            vec2 ringUvExtent = ringProbeRadius * uTexelSize;
            if (any(lessThan(centerUV - ringUvExtent, vec2(0.0))) ||
                any(greaterThan(centerUV + ringUvExtent, vec2(1.0)))) {
                // A complete ring cannot be observed at the image boundary.
                return 0;
            }

            bool allRingSamplesAreDarker = true;
            for (int i = 0; i < 16; i++) {
                vec2 ringUV = centerUV +
                    PROBE_DIRECTIONS[i] * ringProbeRadius * uTexelSize;
                vec3 ringLinear = toLinear(
                    textureLod(uInputTexture, ringUV, 0.0).rgb
                );
                float ringLuma = luminance(ringLinear);

                // A brighter sample proves this fragment is not the peak.
                // Equal clipped samples may belong to a broad light source, so
                // let a larger ring try to reach its darker perimeter.
                if (ringLuma > centerLuma) return -1;
                if (ringLuma >= centerLuma) {
                    allRingSamplesAreDarker = false;
                }

                surroundLinear += ringLinear;
                maxRingLuma = max(maxRingLuma, ringLuma);
                ringBrightnessMoment += PROBE_DIRECTIONS[i] * ringLuma;
            }
            surroundLinear *= 1.0 / 16.0;
            return allRingSamplesAreDarker ? 1 : 0;
        }

        void main() {
            vec2 depthUV = vTexCoord;
            vec4 centerLayers = sampleBokehLayers(depthUV);
            float centerDepth = centerLayers.b;
            float coc = computeCoc(centerDepth);
            if (coc < 1.5 || centerLayers.a > 0.01) {
                fragColor = vec4(0.0);
                return;
            }

            vec3 centerLinear = toLinear(textureLod(uInputTexture, vTexCoord, 0.0).rgb);
            float centerLuma = luminance(centerLinear);
            if (centerLuma <= 0.50) {
                fragColor = vec4(0.0);
                return;
            }

            vec3 surroundLinear = vec3(0.0);
            float maxRingLuma = 0.0;
            vec2 ringBrightnessMoment = vec2(0.0);

            float nearRingRadius = clamp(coc * 0.70, 5.0, 32.0);
            float middleRingRadius = clamp(
                max(coc * 1.40, uMaxBlurRadius * 0.40),
                10.0,
                64.0
            );
            float farRingRadius = clamp(
                max(coc * 2.40, uMaxBlurRadius * 0.80),
                16.0,
                128.0
            );

            int ringResult = evaluateDarkRing(
                vTexCoord,
                centerLuma,
                nearRingRadius,
                surroundLinear,
                maxRingLuma,
                ringBrightnessMoment
            );
            if (ringResult == 0) {
                ringResult = evaluateDarkRing(
                    vTexCoord,
                    centerLuma,
                    middleRingRadius,
                    surroundLinear,
                    maxRingLuma,
                    ringBrightnessMoment
                );
            }
            if (ringResult == 0) {
                ringResult = evaluateDarkRing(
                    vTexCoord,
                    centerLuma,
                    farRingRadius,
                    surroundLinear,
                    maxRingLuma,
                    ringBrightnessMoment
                );
            }
            if (ringResult != 1) {
                fragColor = vec4(0.0);
                return;
            }

            // Validate source footprint in the input image, independently from
            // the compact classifier response area. A single hot/bright pixel
            // has a dark core neighborhood and must never become a bokeh disc.
            float surroundLuma = luminance(surroundLinear);
            float coreBrightnessThreshold = mix(
                surroundLuma,
                centerLuma,
                0.35
            );
            float brightCoreSampleCount = 0.0;
            for (int i = 0; i < 16; i++) {
                vec2 coreUV = vTexCoord + PROBE_DIRECTIONS[i]
                    * MIN_HIGHLIGHT_CORE_RADIUS_PIXELS * uTexelSize;
                float coreLuma = luminance(toLinear(
                    textureLod(uInputTexture, coreUV, 0.0).rgb
                ));
                if (coreLuma >= coreBrightnessThreshold) {
                    brightCoreSampleCount += 1.0;
                }
            }
            if (brightCoreSampleCount < MIN_HIGHLIGHT_CORE_DIRECTION_COUNT) {
                fragColor = vec4(0.0);
                return;
            }

            float maximumCoreDepthDelta = 0.0;
            for (int i = 0; i < 16; i++) {
                vec2 coreDepthUV = clamp(
                    depthUV + PROBE_DIRECTIONS[i]
                        * MIN_HIGHLIGHT_CORE_RADIUS_PIXELS * uTexelSize,
                    0.0,
                    1.0
                );
                vec4 coreLayers = sampleBokehLayers(coreDepthUV);
                if (coreLayers.a > 0.01) {
                    fragColor = vec4(0.0);
                    return;
                }
                float coreDepth = coreLayers.b;
                maximumCoreDepthDelta = max(
                    maximumCoreDepthDelta,
                    abs(coreDepth - centerDepth)
                );
            }
            float depthCoherenceGate = 1.0 - smoothstep(
                0.035,
                0.10,
                maximumCoreDepthDelta
            );

            float contrast = max(centerLuma - surroundLuma, 0.0);
            float relativeContrast = contrast / max(centerLuma, 0.06);
            float neighborhoodContrastGate = smoothstep(
                uMinNeighborhoodLumaDifference,
                uMinNeighborhoodLumaDifference + 0.04,
                contrast
            );

            // Brightness and local contrast decide whether a response can be a
            // highlight after the complete dark-ring invariant has passed.
            float mediumHighlightGate = smoothstep(0.34, 0.62, centerLuma)
                * max(
                    smoothstep(0.10, 0.24, contrast),
                    smoothstep(0.22, 0.44, relativeContrast)
                );

            // Strong point lights use a higher absolute floor. Their local
            // contrast may be slightly lower after sensor clipping.
            float strongPointGate = smoothstep(0.68, 0.92, centerLuma)
                * max(
                    smoothstep(0.08, 0.20, contrast),
                    smoothstep(0.18, 0.38, relativeContrast)
                );

            // Non-maximum suppression for an already-soft highlight disc.
            // Off-center pixels see a brighter inner-ring sample toward the
            // same light source and are rejected. The directional moment also
            // suppresses asymmetric fragments, leaving one compact center
            // region instead of many overlapping PSF emitters.
            float peakDominance = centerLuma - maxRingLuma;
            float localMaximumGate = smoothstep(0.0, 0.05, peakDominance);
            float normalizedMoment = length(ringBrightnessMoment / 16.0)
                / max(centerLuma, 0.06);
            float centerednessGate = 1.0 - smoothstep(
                0.05,
                0.2,
                normalizedMoment
            );

            float highlightGate = max(
                mediumHighlightGate,
                strongPointGate
            );

            // Asymmetry lowers confidence but is not a veto: the hard ring test
            // above already rejects any candidate whose ring reaches the center
            // brightness, while CPU spacing handles neighboring valid lights.
            float pointShapeGate = localMaximumGate
                * mix(0.35, 1.0, centerednessGate);
            float classifiedHighlight = highlightGate
                * pointShapeGate
                * neighborhoodContrastGate
                * depthCoherenceGate;
            vec3 residual = max(centerLinear - surroundLinear, vec3(0.0));
            vec3 sourceSignal = mix(residual, centerLinear, 0.24);
            fragColor = vec4(
                sourceSignal * classifiedHighlight,
                classifiedHighlight
            );
        }
    """.trimIndent()

    /**
     * 泡泡焦外的光源场：在工作分辨率上标记能形成泡泡的焦外高光区域。
     *
     * 准入由景深关系决定：泡泡镜球差过校正，只有焦后光源形成亮环，
     * 且与焦平面的归一化深度差需达到 uMinBubbleDepthGap；焦前与近焦高光
     * 保持柔和，留在 PSF gather 中。uMinCocPixels 只是光环可渲染的像素下限。
     *
     * 局部背景取泡泡尺度邻域的均值，只有明显高于背景、且亮度足够的像素才成为光源；
     * 大于泡泡尺度的平坦亮区会抬高背景而自然落选，继续由 PSF gather 呈现。
     * RGBA16F 契约：RGB=该像素发射给泡泡的线性能量（已重建裁切高光），
     * A=光源隶属度。散射按 A 把同一能量从背景中移除，CPU 按连通域规划泡泡。
     */
    val BUBBLE_SOURCE_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;
        precision highp sampler2D;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform sampler2D uDepthTexture;
        uniform float uMaxBlurRadius;
        uniform float uAperture;
        uniform float uFocusDepth;
        uniform float uMinCocPixels;
        uniform float uMinBubbleDepthGap;
        // Working-pixel footprint and bubble-scale neighborhood on the
        // original-resolution mip chain.
        uniform float uSourceLod;
        uniform float uBackgroundLod;
        uniform vec2 uBackgroundStep;
        uniform int uLinearInput;

        ${BokehShaders.BOKEH_LAYER_SAMPLING}

        const float MIN_SOURCE_LUMA = 0.32;
        const float MIN_MEMBERSHIP = 0.05;
        // Sensor-clipped point lights are far brighter than their recorded
        // value. Only the part at or above SDR white is reconstructed.
        const float CLIPPED_RADIANCE_GAIN = 10.0;
        const vec2 RING_DIRECTIONS[8] = vec2[](
            vec2( 1.0,  0.0),
            vec2( 0.70710678,  0.70710678),
            vec2( 0.0,  1.0),
            vec2(-0.70710678,  0.70710678),
            vec2(-1.0,  0.0),
            vec2(-0.70710678, -0.70710678),
            vec2( 0.0, -1.0),
            vec2( 0.70710678, -0.70710678)
        );

        vec3 toLinear(vec3 color) {
            if (uLinearInput != 0) return max(color, vec3(0.0));
            return pow(clamp(color, 0.0, 1.0), vec3(2.2));
        }

        float luminance(vec3 color) {
            return dot(color, vec3(0.2126, 0.7152, 0.0722));
        }

        float computeCoc(float depth) {
            float gap = max(abs(uFocusDepth - depth) - 0.015, 0.0);
            float availableFocusSpan = max(
                max(uFocusDepth, 1.0 - uFocusDepth) - 0.015,
                0.15
            );
            float normalizedGap = clamp(gap / availableFocusSpan, 0.0, 1.0);
            float defocus = pow(normalizedGap, 1.25);
            float apertureScale = min(1.4 / max(uAperture, 0.7), 1.25);
            return clamp(
                defocus * uMaxBlurRadius * apertureScale,
                0.0,
                uMaxBlurRadius
            );
        }

        // Normalized gap behind focus; larger disparity is nearer the camera.
        float behindFocusGap(float depth) {
            float availableFocusSpan = max(
                max(uFocusDepth, 1.0 - uFocusDepth) - 0.015,
                0.15
            );
            return clamp(
                max(uFocusDepth - depth - 0.015, 0.0) / availableFocusSpan,
                0.0,
                1.0
            );
        }

        void main() {
            vec4 layers = sampleBokehLayers(vTexCoord);
            float coc = computeCoc(layers.b);
            float defocusGate = smoothstep(
                    uMinBubbleDepthGap,
                    uMinBubbleDepthGap + 0.12,
                    behindFocusGap(layers.b)
                )
                * smoothstep(uMinCocPixels, uMinCocPixels * 1.35, coc)
                * (1.0 - smoothstep(0.0, 0.01, layers.a));
            if (defocusGate <= 0.0) {
                fragColor = vec4(0.0);
                return;
            }

            vec3 color = toLinear(textureLod(uInputTexture, vTexCoord, uSourceLod).rgb);
            vec3 background = toLinear(
                textureLod(uInputTexture, vTexCoord, uBackgroundLod).rgb
            );
            for (int i = 0; i < 8; i++) {
                vec2 uv = clamp(
                    vTexCoord + RING_DIRECTIONS[i] * uBackgroundStep,
                    0.0,
                    1.0
                );
                background += toLinear(textureLod(uInputTexture, uv, uBackgroundLod).rgb);
            }
            background *= 1.0 / 9.0;

            float sourceLuma = luminance(color);
            float backgroundLuma = luminance(background);
            float excess = sourceLuma - backgroundLuma;
            float relativeExcess = excess / max(backgroundLuma, 0.02);
            float membership = defocusGate
                * smoothstep(MIN_SOURCE_LUMA, MIN_SOURCE_LUMA + 0.18, sourceLuma)
                * smoothstep(0.06, 0.16, excess)
                * smoothstep(0.60, 1.40, relativeExcess);
            // Below this level a pixel is neither removed from the gather nor
            // emitted by a bubble, so energy stays in exactly one path.
            if (membership < MIN_MEMBERSHIP) {
                fragColor = vec4(0.0);
                return;
            }

            float clipped = smoothstep(
                0.84,
                0.98,
                max(max(color.r, color.g), color.b)
            );
            vec3 radiance = color
                + (CLIPPED_RADIANCE_GAIN - 1.0) * clipped * min(color, vec3(1.0));
            fragColor = vec4(max(radiance - background, vec3(0.0)) * membership, membership);
        }
    """.trimIndent()

    /**
     * 每个实例代表一个已经确定的高光中心。顶点阶段只建立该中心的 CoC 包围盒；
     * 片元阶段使用输出像素到圆心的真实像素距离 / CoC 解析圆盘，不依赖 gather 命中。
     */
    val ANALYTIC_BOKEH_HIGHLIGHT_VERTEX_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 aPosition;
        in vec2 aCenterUv;
        in float aCocPixels;
        in vec3 aSignal;

        uniform vec2 uImageSize;
        uniform vec3 uPupilWarp; // radial scale, tangential scale, shear at full field

        out vec2 vAperturePosition;
        out float vFieldStrength;
        flat out vec3 vSignal;

        void main() {
            float aspect = uImageSize.x / max(uImageSize.y, 1.0);
            vec2 field = (aCenterUv * 2.0 - 1.0) * vec2(aspect, 1.0);
            float fieldRadius = length(field);
            vec2 radial = fieldRadius > 0.0001
                ? field / fieldRadius
                : vec2(0.0, 1.0);
            vec2 tangential = vec2(-radial.y, radial.x);
            float fieldStrength = smoothstep(0.12, 1.15, fieldRadius);
            float radialScale = mix(1.0, uPupilWarp.x, fieldStrength);
            float tangentialScale = mix(1.0, uPupilWarp.y, fieldStrength);
            float swirlShear = uPupilWarp.z * fieldStrength;
            // The scatter's pupil map, so a disc matches the blur around it.
            vec2 offsetPixels = (
                (tangential - radial * swirlShear) * aPosition.x * tangentialScale
                + radial * aPosition.y * radialScale
            ) * aCocPixels;
            vec2 centerNdc = aCenterUv * 2.0 - 1.0;
            vec2 offsetNdc = offsetPixels * 2.0 / uImageSize;
            gl_Position = vec4(centerNdc + offsetNdc, 0.0, 1.0);
            vAperturePosition = aPosition;
            vFieldStrength = fieldStrength;
            vSignal = aSignal;
        }
    """.trimIndent()

    val ANALYTIC_BOKEH_HIGHLIGHT_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vAperturePosition;
        in float vFieldStrength;
        flat in vec3 vSignal;
        out vec4 fragColor;

        uniform int uLinearInput;

        float apertureTransmission(vec2 aperturePosition) {
            float normalizedDistance = length(aperturePosition);
            float support = 1.0 - smoothstep(0.38, 1.0, normalizedDistance);
            float softInterior = mix(
                0.34,
                0.18,
                smoothstep(0.0, 0.82, normalizedDistance)
            );
            float shoulder = smoothstep(0.34, 0.62, normalizedDistance)
                * (1.0 - smoothstep(0.68, 1.0, normalizedDistance));
            float shoulderStrength = mix(0.025, 0.045, vFieldStrength);
            return support * (softInterior + shoulder * shoulderStrength);
        }

        void main() {
            float normalizedDistance = length(vAperturePosition);
            if (normalizedDistance >= 1.0) discard;

            float transmission = apertureTransmission(vAperturePosition);
            if (uLinearInput != 0) {
                // HDR keeps linear scene radiance; overlapping discs add energy.
                fragColor = vec4(vSignal * transmission, 0.0);
            } else {
                // LDR uses the same bounded highlight reconstruction as the
                // previous path, but the opacity now comes from one analytic disc.
                vec3 reconstructedHighlight = vSignal * (0.55 * transmission);
                vec3 compressedHighlight = reconstructedHighlight
                    / (vec3(1.0) + reconstructedHighlight * 2.0);
                vec3 highlightOpacity = min(
                    vec3(0.18),
                    vec3(1.0) - exp(-compressedHighlight * 1.8)
                );
                fragColor = vec4(highlightOpacity, 0.0);
            }
        }
    """.trimIndent()

    /**
     * 泡泡镜（Trioplan 类）的逐通道径向分布，参考样张归纳：
     * - 焦后泡泡最外圈是向外晕开的暖黄光环：R/G 光环位于外沿，外侧扩散宽；
     * - 光环内侧是青蓝色，并向内扩散成蓝紫渐变：B 光环半径更小、向内扩散宽，
     *   内部 B 与 R 高于 G，呈淡紫；
     * - 内部半透明、向边缘略升，背景可透出；大弥散圆光环对比更强；
     * - 内部有一道偏心的淡次级弧环（球差残影）。
     * 每个通道单独做能量归一化，因此色彩结构只重新分配能量，
     * 泡泡整体颜色仍等于光源颜色。泡泡只由焦后光源形成。
     */
    private val SOAP_BUBBLE_PROFILE = """
        // Per-channel parameters: x=red, y=green, z=blue.
        const vec3 BUBBLE_CHANNEL_RADIUS = vec3(1.0, 0.99, 0.955);
        const vec3 BUBBLE_RIM_INNER_SPREAD = vec3(1.0, 1.4, 6.0);
        const vec3 BUBBLE_RIM_OUTER_SPREAD = vec3(1.9, 1.5, 0.8);
        const vec3 BUBBLE_RIM_GAIN = vec3(1.0, 1.0, 0.5);
        const vec3 BUBBLE_INTERIOR = vec3(0.52, 0.34, 0.72);
        const float BUBBLE_INNER_RING_RADIUS = 0.84;
        const float BUBBLE_INNER_RING_GAIN = 0.24;
        // The outward glow of the widest channel ends inside this radius.
        const float BUBBLE_EXTENT = 1.25;

        float bubbleRimWidth(float cocPixels) {
            return max(0.07, 1.8 / max(cocPixels, 1.0));
        }

        float bubbleRimGain(float cocPixels) {
            return mix(1.1, 2.6, smoothstep(12.0, 64.0, cocPixels));
        }

        float bubbleChannelProfile(
            float rho,
            float channelRadius,
            int role,
            float rimWidth,
            float rimGain,
            float interiorScale,
            float edgeWidth
        ) {
            float r = rho / channelRadius;
            float support = 1.0 - smoothstep(1.0 - edgeWidth, 1.0 + edgeWidth, r);
            float interior = BUBBLE_INTERIOR[role] * interiorScale
                * mix(0.85, 1.12, smoothstep(0.25, 0.95, r))
                * support;
            float rimCenter = 1.0 - rimWidth * 0.6;
            float spread = r < rimCenter
                ? BUBBLE_RIM_INNER_SPREAD[role] : BUBBLE_RIM_OUTER_SPREAD[role];
            float rimDistance = (r - rimCenter) / (rimWidth * 0.5 * spread);
            return interior
                + rimGain * BUBBLE_RIM_GAIN[role] * exp(-rimDistance * rimDistance);
        }

        // Radial part of the faint secondary ring; the fragment stage offsets
        // it and limits it to an arc whose angular mean is one half.
        float bubbleInnerRing(float rho, int role, float rimWidth, float rimGain) {
            float distance = (rho - BUBBLE_INNER_RING_RADIUS) / (rimWidth * 0.8);
            return BUBBLE_INNER_RING_GAIN * rimGain * BUBBLE_RIM_GAIN[role]
                * exp(-distance * distance);
        }
    """.trimIndent().prependIndent("        ")

    /**
     * 泡泡实例：中心、CoC、发射能量（线性辐亮度 × 原图像素面积）。
     * 顶点阶段按同一逐通道分布做数值积分，把每个通道的能量归一化为盘面辐亮度：
     * 同一光源离焦越大，泡泡越大、越通透，各通道总能量守恒。
     * 同时由圆心位置哈希出该泡泡稳定的不规则参数，片元阶段据此打破完美对称。
     */
    val SOAP_BUBBLE_VERTEX_SHADER = """
        #version 300 es
        precision highp float;
        precision highp int;

        in vec2 aPosition;
        in vec2 aCenterUv;
        in float aCocPixels;
        in vec3 aSignal;

        uniform vec2 uImageSize;

        out vec2 vAperturePosition;
        flat out vec3 vRadiance;
        flat out float vCocPixels;
        // x: bright-rim direction, y: ellipse / second-order phase,
        // z: rim-color phase, w: inner-ring direction (aperture-frame radians).
        flat out vec4 vShapePhase;
        // x: rim asymmetry, y: ellipticity.
        flat out vec2 vShapeStrength;

        $SOAP_BUBBLE_PROFILE

        const int PROFILE_STEPS = 64;
        const float TWO_PI = 6.28318531;

        uint hashUint(uint value) {
            value ^= value >> 16u;
            value *= 0x7feb352du;
            value ^= value >> 15u;
            value *= 0x846ca68bu;
            value ^= value >> 16u;
            return value;
        }

        float hashUnit(uint value) {
            return float(hashUint(value) >> 8u) * (1.0 / 16777216.0);
        }

        void main() {
            float coc = aCocPixels;
            float aspect = uImageSize.x / max(uImageSize.y, 1.0);
            vec2 field = (aCenterUv * 2.0 - 1.0) * vec2(aspect, 1.0);
            float fieldRadius = length(field);
            vec2 radial = fieldRadius > 0.0001
                ? field / fieldRadius
                : vec2(0.0, 1.0);
            vec2 tangential = vec2(-radial.y, radial.x);
            // Mild mechanical vignetting: off-axis bubbles become cat-eyes.
            float fieldStrength = smoothstep(0.12, 1.15, fieldRadius);
            float radialScale = mix(1.0, 0.78, fieldStrength);
            float tangentialScale = mix(1.0, 1.02, fieldStrength);
            float swirlShear = 0.03;

            vec2 aperturePosition = aPosition * BUBBLE_EXTENT;
            float shearedRadial = aperturePosition.y * radialScale
                - aperturePosition.x * swirlShear * fieldStrength * radialScale;
            vec2 offsetPixels = (
                tangential * aperturePosition.x * tangentialScale
                + radial * shearedRadial
            ) * coc;
            gl_Position = vec4(
                aCenterUv * 2.0 - 1.0 + offsetPixels * 2.0 / uImageSize,
                0.0,
                1.0
            );

            float rimWidth = bubbleRimWidth(coc);
            float rimGain = bubbleRimGain(coc);
            float edgeWidth = 0.5 / max(coc, 1.0);
            vec3 meanTransmission = vec3(0.0);
            float stepSize = BUBBLE_EXTENT / float(PROFILE_STEPS);
            for (int i = 0; i < PROFILE_STEPS; i++) {
                float rho = (float(i) + 0.5) * stepSize;
                float ringArea = 2.0 * rho * stepSize;
                for (int channel = 0; channel < 3; channel++) {
                    meanTransmission[channel] += ringArea * (
                        bubbleChannelProfile(
                            rho,
                            BUBBLE_CHANNEL_RADIUS[channel],
                            channel,
                            rimWidth,
                            rimGain,
                            1.0,
                            edgeWidth
                        )
                        + 0.5 * bubbleInnerRing(rho, channel, rimWidth, rimGain)
                    );
                }
            }
            float discArea = 3.14159265 * coc * coc * radialScale * tangentialScale;

            // Stable per-bubble irregularity keyed by the center pixel.
            uvec2 centerPixel = uvec2(max(aCenterUv * uImageSize, vec2(0.0)));
            uint seed = hashUint(centerPixel.x * 0x9e3779b9u ^ hashUint(centerPixel.y));
            vec4 random = vec4(
                hashUnit(seed),
                hashUnit(seed + 1u),
                hashUnit(seed + 2u),
                hashUnit(seed + 3u)
            );
            float random5 = hashUnit(seed + 4u);
            float random6 = hashUnit(seed + 5u);
            // The aperture frame's +y axis points away from the image center;
            // vignetted lenses brighten the rim on that side most often.
            vShapePhase = vec4(
                1.57079633 + (random.x - 0.5) * 3.2,
                random.y * TWO_PI,
                random.z * TWO_PI,
                random.w * TWO_PI
            );
            vShapeStrength = vec2(
                mix(0.22, 0.42, random5) + 0.14 * fieldStrength,
                mix(0.008, 0.03, random6)
            );

            vAperturePosition = aperturePosition;
            vRadiance = aSignal / max(discArea * meanTransmission, vec3(0.0001));
            vCocPixels = coc;
        }
    """.trimIndent()

    /**
     * 泡泡着色：逐通道径向分布乘以该通道辐亮度，叠加为加性发光。
     * 参考样张中真实泡泡并不规整：光环一侧更亮更粗、另一侧更暗更细；
     * 光环色边沿圆周时黄时白；内部亮度有方向性渐变与低频起伏；
     * 内侧有偏心的淡次级弧环；形状略偏椭圆。所有角向调制均为零均值余弦，
     * 不改变泡泡总能量。
     */
    val SOAP_BUBBLE_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vAperturePosition;
        flat in vec3 vRadiance;
        flat in float vCocPixels;
        flat in vec4 vShapePhase;
        flat in vec2 vShapeStrength;
        out vec4 fragColor;

        uniform int uLinearInput;

        $SOAP_BUBBLE_PROFILE

        void main() {
            vec2 p = vAperturePosition;
            float theta = atan(p.y, p.x);
            float rho = length(p)
                * (1.0 + vShapeStrength.y * cos(2.0 * theta - vShapePhase.y));
            if (rho >= BUBBLE_EXTENT) discard;
            float edgeWidth = max(fwidth(rho), 0.5 / max(vCocPixels, 1.0));
            float rimWidth = bubbleRimWidth(vCocPixels);
            float rimGain = bubbleRimGain(vCocPixels);

            float rimModulation = max(
                1.0 + vShapeStrength.x * cos(theta - vShapePhase.x)
                    + 0.12 * cos(2.0 * theta - vShapePhase.y + 1.3),
                0.2
            );
            float localRimWidth = rimWidth * mix(1.0, rimModulation, 0.6);
            float localRimGain = rimGain * rimModulation / mix(1.0, rimModulation, 0.6);
            float chromaModulation = 1.0 + 0.6 * cos(theta - vShapePhase.z);
            vec2 brightDirection = vec2(cos(vShapePhase.x), sin(vShapePhase.x));
            vec2 ringDirection = vec2(cos(vShapePhase.w), sin(vShapePhase.w));
            float interiorScale = 1.0
                + 0.22 * dot(p, brightDirection)
                + 0.08 * sin(dot(p, ringDirection) * 4.7 + vShapePhase.z);
            float innerRho = length(p - ringDirection * 0.09);
            float innerArc = 0.5 + 0.5 * cos(theta - vShapePhase.w);

            vec3 transmission = vec3(0.0);
            for (int channel = 0; channel < 3; channel++) {
                float channelRadius = 1.0
                    - (1.0 - BUBBLE_CHANNEL_RADIUS[channel]) * chromaModulation;
                transmission[channel] = bubbleChannelProfile(
                        rho,
                        channelRadius,
                        channel,
                        localRimWidth,
                        localRimGain,
                        interiorScale,
                        edgeWidth
                    )
                    + innerArc * bubbleInnerRing(innerRho, channel, rimWidth, rimGain);
            }
            vec3 radiance = vRadiance * transmission;
            // LDR screen opacity. Compress luminance and keep the chromaticity,
            // so bright bubbles keep their color structure instead of
            // drifting to white channel by channel.
            float luma = dot(radiance, vec3(0.2126, 0.7152, 0.0722));
            vec3 opacity = luma > 0.0
                ? min(radiance * ((1.0 - exp(-luma)) / luma), vec3(1.0))
                : vec3(0.0);
            fragColor = uLinearInput != 0
                ? vec4(radiance, 0.0)
                : vec4(opacity, 0.0);
        }
    """.trimIndent()
}
