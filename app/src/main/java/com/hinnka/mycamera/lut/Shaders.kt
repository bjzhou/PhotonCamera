package com.hinnka.mycamera.lut

import com.hinnka.mycamera.processor.BokehDefocusModel

/**
 * GLSL 着色器源代码
 */
object Shaders {

    /**
     * 顶点着色器
     *
     * 处理顶点位置和纹理坐标变换
     */
    /**
     * 顶点着色器
     *
     * 处理顶点位置和纹理坐标变换
     */
    val VERTEX_SHADER = """
        #version 300 es

        // 顶点属性
        in vec4 aPosition;
        in vec2 aTexCoord;

        // 输出到片元着色器
        out vec2 vTexCoord;
        out vec2 vRawCoord; // 原始坐标用于色散计算
        out vec2 vOutputCoord;

        // MVP 变换矩阵（用于 center crop 缩放）
        uniform mat4 uMVPMatrix;

        // SurfaceTexture 变换矩阵
        uniform mat4 uSTMatrix;
        uniform vec4 uCropRect;

        void main() {
            // 应用 MVP 矩阵进行顶点变换（center crop）
            gl_Position = uMVPMatrix * aPosition;
            vec2 croppedCoord = vec2(
                mix(uCropRect.x, uCropRect.z, aTexCoord.x),
                mix(uCropRect.y, uCropRect.w, aTexCoord.y)
            );
            vOutputCoord = aTexCoord;
            // 应用 SurfaceTexture 变换矩阵
            vTexCoord = (uSTMatrix * vec4(croppedCoord, 0.0, 1.0)).xy;
            vRawCoord = croppedCoord;
        }
    """.trimIndent()

    /**
     * 简单的直通片元着色器（无 LUT）
     *
     * 用于调试或禁用 LUT 时
     */
    val FRAGMENT_SHADER_PASSTHROUGH = """
        #version 300 es
        #extension GL_OES_EGL_image_external_essl3 : require

        precision mediump float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform samplerExternalOES uCameraTexture;

        void main() {
            fragColor = texture(uCameraTexture, vTexCoord);
        }
    """.trimIndent()

    /**
     * 片元着色器 - 2D 纹理复制 (支持 sampler2D)
     * 用于从 FBO 纹理复制到屏幕或视频编码器
     */
    val FRAGMENT_SHADER_COPY_2D = """
        #version 300 es
        precision mediump float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uCameraTexture;

        void main() {
            fragColor = texture(uCameraTexture, vTexCoord);
        }
    """.trimIndent()

    /** 简单顶点着色器（HDF 后处理 Pass 专用，无 MVP/ST 矩阵） */
    val SIMPLE_VERTEX_SHADER = """
        #version 300 es
        in vec4 aPosition;
        in vec2 aTexCoord;
        out vec2 vTexCoord;
        void main() {
            gl_Position = aPosition;
            vTexCoord = aTexCoord;
        }
    """.trimIndent()

    /** HDF Pass 1: 高光提取 + 水平高斯模糊 (实时预览) */
    val HDF_PREVIEW_EXTRACT_BLUR_H = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform float uThreshold;
        uniform float uStrength;
        void main() {
            vec3 color = texture(uInputTexture, vTexCoord).rgb;
            float luma = dot(color, vec3(0.2126, 0.7152, 0.0722));
            float extractionVal = mix(luma, max(color.r, max(color.g, color.b)), 0.6);
            float highlightMask = smoothstep(uThreshold - 0.1, uThreshold + 0.25, extractionVal);
            float midMask = smoothstep(uThreshold - 0.5, uThreshold, extractionVal) * 0.4;
            float mask = (highlightMask + midMask * uStrength);
            vec3 sum = color * mask * 0.204164;
            float blurOffsets[4] = float[](1.407333, 3.294215, 5.176470, 7.058823);
            float blurWeights[4] = float[](0.304005, 0.093910, 0.010416, 0.000005);
            for (int i = 0; i < 4; i++) {
                float off = blurOffsets[i] * uTexelSize.x * 2.0;
                sum += texture(uInputTexture, vTexCoord + vec2(off, 0.0)).rgb * blurWeights[i];
                sum += texture(uInputTexture, vTexCoord - vec2(off, 0.0)).rgb * blurWeights[i];
            }
            fragColor = vec4(sum, 1.0);
        }
    """.trimIndent()

    /** HDF Pass 2: 垂直高斯模糊 */
    val HDF_PREVIEW_BLUR_V = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        void main() {
            vec3 sum = texture(uInputTexture, vTexCoord).rgb * 0.204164;
            float blurOffsets[4] = float[](1.407333, 3.294215, 5.176470, 7.058823);
            float blurWeights[4] = float[](0.304005, 0.093910, 0.010416, 0.000005);
            for (int i = 0; i < 4; i++) {
                float off = blurOffsets[i] * uTexelSize.y * 2.0;
                sum += texture(uInputTexture, vTexCoord + vec2(0.0, off)).rgb * blurWeights[i];
                sum += texture(uInputTexture, vTexCoord - vec2(0.0, off)).rgb * blurWeights[i];
            }
            fragColor = vec4(sum, 1.0);
        }
    """.trimIndent()

    /** Soft Light Pass 1: 整图柔焦水平模糊，用于镜头柔光扩散 */
    val SOFT_LIGHT_PREVIEW_BLUR_H = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        void main() {
            vec3 sum = texture(uInputTexture, vTexCoord).rgb * 0.204164;
            float blurOffsets[4] = float[](1.407333, 3.294215, 5.176470, 7.058823);
            float blurWeights[4] = float[](0.304005, 0.093910, 0.010416, 0.000005);
            for (int i = 0; i < 4; i++) {
                float off = blurOffsets[i] * uTexelSize.x * 2.8;
                sum += texture(uInputTexture, vTexCoord + vec2(off, 0.0)).rgb * blurWeights[i];
                sum += texture(uInputTexture, vTexCoord - vec2(off, 0.0)).rgb * blurWeights[i];
            }
            fragColor = vec4(sum, 1.0);
        }
    """.trimIndent()

    /** HDF 合成：原图 + HDF 扩散 + 柔光 */
    val HDF_PREVIEW_COMPOSITE = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uOriginalTexture;
        uniform sampler2D uBloomTexture;
        uniform float uHalation;
        uniform sampler2D uSoftLightTexture;
        uniform float uSoftLight;
        
        void main() {
            vec4 color = texture(uOriginalTexture, vTexCoord);
            
            if (uSoftLight > 0.0) {
                vec3 softBlur = texture(uSoftLightTexture, vTexCoord).rgb;
                vec3 screen = vec3(1.0) - (vec3(1.0) - color.rgb) * (vec3(1.0) - softBlur);
                vec3 softGlow = mix(color.rgb, screen, 0.42);
                color.rgb = mix(color.rgb, softGlow, uSoftLight * 0.75);
                float softLuma = dot(softBlur, vec3(0.2126, 0.7152, 0.0722));
                color.rgb += vec3(softLuma) * (uSoftLight * 0.025);
                color.rgb = (color.rgb - 0.5) * (1.0 - uSoftLight * 0.05) + 0.5;
            }
            
            if (uHalation > 0.0) {
                vec3 bloom = texture(uBloomTexture, vTexCoord).rgb;
                float bLuma = dot(bloom, vec3(0.2126, 0.7152, 0.0722));
                bloom = mix(vec3(bLuma), bloom, 1.6);
                vec3 bloomEffect = bloom * uHalation * 1.4;
                color.rgb = vec3(1.0) - (vec3(1.0) - color.rgb) * (vec3(1.0) - bloomEffect);
                float mist = bLuma * uHalation * 0.15;
                color.rgb += mist;
                color.rgb = (color.rgb - 0.5) * (1.0 - uHalation * 0.08) + 0.5;
            }
            
            
            fragColor = clamp(color, 0.0, 1.0);
        }
    """.trimIndent()


    /**
     * Focus Peaking Shader
     */
    val FRAGMENT_SHADER_FOCUS_PEAKING = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform float uThreshold;
        uniform vec3 uPeakColor;

        void main() {
            vec4 color = texture(uInputTexture, vTexCoord);

            // Sobel edge detection
            float l00 = dot(texture(uInputTexture, vTexCoord + vec2(-uTexelSize.x, -uTexelSize.y)).rgb, vec3(0.299, 0.587, 0.114));
            float l10 = dot(texture(uInputTexture, vTexCoord + vec2(0.0, -uTexelSize.y)).rgb, vec3(0.299, 0.587, 0.114));
            float l20 = dot(texture(uInputTexture, vTexCoord + vec2(uTexelSize.x, -uTexelSize.y)).rgb, vec3(0.299, 0.587, 0.114));
            float l01 = dot(texture(uInputTexture, vTexCoord + vec2(-uTexelSize.x, 0.0)).rgb, vec3(0.299, 0.587, 0.114));
            float l21 = dot(texture(uInputTexture, vTexCoord + vec2(uTexelSize.x, 0.0)).rgb, vec3(0.299, 0.587, 0.114));
            float l02 = dot(texture(uInputTexture, vTexCoord + vec2(-uTexelSize.x, uTexelSize.y)).rgb, vec3(0.299, 0.587, 0.114));
            float l12 = dot(texture(uInputTexture, vTexCoord + vec2(0.0, uTexelSize.y)).rgb, vec3(0.299, 0.587, 0.114));
            float l22 = dot(texture(uInputTexture, vTexCoord + vec2(uTexelSize.x, uTexelSize.y)).rgb, vec3(0.299, 0.587, 0.114));

            float gx = l00 + 2.0 * l01 + l02 - l20 - 2.0 * l21 - l22;
            float gy = l00 + 2.0 * l10 + l20 - l02 - 2.0 * l12 - l22;
            float edge = sqrt(gx * gx + gy * gy);
            float peakFactor = smoothstep(uThreshold, uThreshold * 1.5, edge);
            fragColor = vec4(mix(color.rgb, uPeakColor, peakFactor * 0.9), color.a);
        }
    """.trimIndent()

    /**
     * 全屏四边形的顶点坐标
     * 覆盖整个屏幕 (-1, -1) 到 (1, 1)
     */
    val FULL_QUAD_VERTICES = floatArrayOf(
        // X, Y
        -1.0f, -1.0f,  // 左下
        1.0f, -1.0f,  // 右下
        -1.0f, 1.0f,  // 左上
        1.0f, 1.0f   // 右上
    )

    /**
     * 纹理坐标
     * OpenGL 纹理坐标系：左下角为 (0, 0)
     */
    val TEXTURE_COORDS = floatArrayOf(
        // U, V
        0.0f, 0.0f,  // 左下
        1.0f, 0.0f,  // 右下
        0.0f, 1.0f,  // 左上
        1.0f, 1.0f   // 右上
    )

    /**
     * 后处理专用纹理坐标（垂直翻转）
     * 用于让 glReadPixels 直接读取到正向的图片
     */
    val POST_PROCESS_TEXTURE_COORDS = floatArrayOf(
        0.0f, 1.0f, // Top-left -> GL Bottom-left
        1.0f, 1.0f, // Top-right -> GL Bottom-right
        0.0f, 0.0f, // Bottom-left -> GL Top-left
        1.0f, 0.0f  // Bottom-right -> GL Top-right
    )

    /**
     * 绘制顺序索引
     * 使用两个三角形绘制四边形
     */
    val DRAW_ORDER = shortArrayOf(
        0, 1, 2,  // 第一个三角形
        1, 3, 2   // 第二个三角形
    )

    // Coverage stays bilinear; depth belongs to a surface. Interpolating the
    // complement disparity across opposite sides of focus creates a false
    // in-focus line. Fetch its owning texel without blending those surfaces.
    private val BOKEH_LAYER_SAMPLING = """
        vec4 sampleBokehLayers(vec2 uv) {
            vec4 layers = texture(uDepthTexture, uv);
            ivec2 size = textureSize(uDepthTexture, 0);
            ivec2 pixel = clamp(ivec2(uv * vec2(size)), ivec2(0), size - 1);
            layers.gb = texelFetch(uDepthTexture, pixel, 0).gb;
            return layers;
        }
    """.trimIndent().prependIndent("        ")

    /**
     * U2NetP 显著性 mask 经 RGB 引导上采样，并分别重建 M / 1-M 的深度。
     * 借鉴 Kim et al., CVPR 2022 的分层契约；深度细化使用同层归一化卷积。
     * RGBA16F 契约：R=合成视差，G=主体视差，B=非主体视差，A=主体覆盖率。
     * 非主体的焦前/焦后样本分开归一化，避免平均后凭空生成焦平面。
     */
    val JBU_UPSAMPLE_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uLowResDepth;  
        uniform sampler2D uSubjectMask;
        uniform sampler2D uHighResGuide; 
        uniform vec2 uMaskTexelSize;
        uniform vec4 uMaskBounds; // original-image origin.xy and extent.zw
        uniform float uFocusDepth;
        uniform int uLinearInput;

        const float SIGMA_S = 1.05;
        const float SIGMA_R = 0.22;

        vec3 guideSpace(vec3 color) {
            vec3 linear = uLinearInput != 0 ? max(color, vec3(0.0))
                : pow(clamp(color, 0.0, 1.0), vec3(2.2));
            return sqrt(linear / (1.0 + dot(linear, vec3(0.2126, 0.7152, 0.0722))));
        }

        void main() {
            vec3 guideColor = guideSpace(texture(uHighResGuide, vTexCoord).rgb);
            
            float baseDepth = texture(uLowResDepth, vTexCoord).r;
            
            ivec2 lowResSize = textureSize(uSubjectMask, 0);
            vec2 imageMaskTexel = uMaskTexelSize * uMaskBounds.zw;
            vec2 pos = (vTexCoord - uMaskBounds.xy) / imageMaskTexel - 0.5;
            ivec2 p0 = ivec2(floor(pos));
            vec2 f = fract(pos);
            
            float totalWeight = 0.0;
            float totalMask = 0.0;
            vec3 layerDepth = vec3(0.0);
            vec3 layerWeight = vec3(0.0);

            for (int y = -1; y <= 2; y++) {
                for (int x = -1; x <= 2; x++) {
                    ivec2 sampleIndex = p0 + ivec2(x, y);
                    // Extend the local grid over the image with zero mask support.
                    // Outside the crop, depth and guide still need valid samples.
                    vec2 sampleCoord = uMaskBounds.xy + (vec2(sampleIndex) + 0.5) * imageMaskTexel;
                    if (any(lessThan(sampleCoord, vec2(0.0))) ||
                        any(greaterThan(sampleCoord, vec2(1.0)))) {
                        continue;
                    }

                    // Mask and depth models have independent output grids but
                    // share original-image UVs; never use mask indices for depth.
                    float d = texture(uLowResDepth, sampleCoord).r;
                    vec3 c = guideSpace(textureGrad(
                        uHighResGuide,
                        sampleCoord,
                        vec2(imageMaskTexel.x, 0.0),
                        vec2(0.0, imageMaskTexel.y)
                    ).rgb);

                    vec2 delta = vec2(float(x), float(y)) - f;
                    float wS = exp(
                        -dot(delta, delta) / (2.0 * SIGMA_S * SIGMA_S)
                    );
                    float dC = distance(guideColor, c);
                    // A positive range kernel keeps normalized convolution defined
                    // even for HDR highlights far from the local guide colors.
                    float wC = 1.0 / (1.0 + dC * dC / (SIGMA_R * SIGMA_R));
                    wC *= wC;

                    float w = wS * wC;
                    float m = 0.0;
                    if (all(greaterThanEqual(sampleIndex, ivec2(0))) &&
                        all(lessThan(sampleIndex, lowResSize))) {
                        m = texelFetch(uSubjectMask, sampleIndex, 0).r;
                    }
                    float subjectWeight = m * m * m * m;
                    float otherWeight = (1.0 - m) * (1.0 - m);
                    otherWeight *= otherWeight;
                    vec3 membership = vec3(subjectWeight,
                        d < uFocusDepth ? otherWeight : 0.0,
                        d >= uFocusDepth ? otherWeight : 0.0);
                    layerDepth += d * w * membership;
                    layerWeight += w * membership;
                    totalMask += m * w;
                    totalWeight += w;
                }
            }

            float mask = totalMask / totalWeight;
            float subjectDepth = layerWeight.x > 0.0
                ? layerDepth.x / layerWeight.x : baseDepth;
            bool nearLayer = layerWeight.z > layerWeight.y;
            float otherWeight = nearLayer ? layerWeight.z : layerWeight.y;
            float otherDepth = otherWeight > 0.0
                ? (nearLayer ? layerDepth.z : layerDepth.y) / otherWeight : baseDepth;
            fragColor = vec4(mix(otherDepth, subjectDepth, mask), subjectDepth, otherDepth, mask);
        }
    """.trimIndent()

    /** RGB 局部双颜色模型细化软 mask；仅在轮廓带内以同层可靠样本补全深度。 */
    val DEPTH_REFINE_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uDepthTexture;
        uniform sampler2D uHighResGuide;
        uniform vec2 uRefineStep;
        uniform float uFocusDepth;
        uniform int uLinearInput;
        uniform int uProtectSubject;

        $BOKEH_LAYER_SAMPLING

        vec3 guideSpace(vec3 color) {
            vec3 linear = uLinearInput != 0 ? max(color, vec3(0.0))
                : pow(clamp(color, 0.0, 1.0), vec3(2.2));
            return sqrt(linear / (1.0 + dot(linear, vec3(0.2126, 0.7152, 0.0722))));
        }

        void main() {
            vec4 center = sampleBokehLayers(vTexCoord);
            vec3 color = guideSpace(texture(uHighResGuide, vTexCoord).rgb);
            vec2 depthSum = vec2(0.0);
            vec2 depthWeight = vec2(0.0);
            vec2 modelWeight = vec2(0.0);
            vec3 subjectColor = vec3(0.0);
            vec3 otherColor = vec3(0.0);
            vec2 colorSquared = vec2(0.0);
            for (int y = -2; y <= 2; y++) {
                for (int x = -2; x <= 2; x++) {
                    vec2 uv = clamp(vTexCoord + vec2(float(x), float(y)) * uRefineStep, 0.0, 1.0);
                    vec4 layer = sampleBokehLayers(uv);
                    vec3 guide = guideSpace(texture(uHighResGuide, uv).rgb);
                    float spatialWeight = exp(-float(x * x + y * y) * 0.38);
                    // Uncertain boundary pixels must not define either color model.
                    vec2 reliable = vec2(smoothstep(0.65, 0.95, layer.a),
                        1.0 - smoothstep(0.05, 0.35, layer.a)) * spatialWeight;
                    modelWeight += reliable;
                    subjectColor += guide * reliable.x;
                    otherColor += guide * reliable.y;
                    colorSquared += dot(guide, guide) * reliable;
                    vec2 delta = layer.gb - center.gb;
                    vec2 weights = reliable / (vec2(1.0) + delta * delta / (0.06 * 0.06));
                    if ((layer.b - uFocusDepth) * (center.b - uFocusDepth) < 0.0) {
                        weights.y = 0.0;
                    }
                    depthSum += layer.gb * weights;
                    depthWeight += weights;
                }
            }
            float mask = center.a;
            vec2 depths = center.gb;
            if (min(modelWeight.x, modelWeight.y) > 0.01) {
                subjectColor /= modelWeight.x;
                otherColor /= modelWeight.y;
                vec2 variance = max(colorSquared / modelWeight
                    - vec2(dot(subjectColor, subjectColor), dot(otherColor, otherColor)), 0.0);
                vec3 axis = subjectColor - otherColor;
                float separation = dot(axis, axis);
                float matte = clamp(dot(color - otherColor, axis) / max(separation, 0.0001), 0.0, 1.0);
                vec3 residual = color - mix(otherColor, subjectColor, matte);
                float confidence = separation / (separation + variance.x + variance.y + 0.005);
                confidence *= 1.0 / (1.0 + dot(residual, residual) / 0.01);
                mask = mix(mask, matte, confidence);
                if (depthWeight.x > 0.0) depths.x = depthSum.x / depthWeight.x;
                if (depthWeight.y > 0.0) depths.y = depthSum.y / depthWeight.y;
            }
            float composedDepth = mix(depths.y, depths.x, mask);
            if (uProtectSubject == 0) {
                // A focus point outside the salient subject must allow it to
                // defocus. Keep the mask-guided geometry, then expose the visible
                // surface to the ordinary bidirectional PSF without sharp protection.
                float visibleDepth = mask >= 0.5 ? depths.x : depths.y;
                fragColor = vec4(composedDepth, depths.x, visibleDepth, 0.0);
            } else {
                fragColor = vec4(composedDepth, depths, mask);
            }
        }
    """.trimIndent()

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
    val BOKEH_LAYER_COLOR_FRAGMENT_SHADER = bokehLayerColorFragmentShader()

    /** Shared coverage reconstruction; optical styles supply the source's exact transfer. */
    fun bokehLayerColorFragmentShader(colorTransfer: String? = null) = """#version 300 es
        precision highp float;
        precision highp sampler2D;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform sampler2D uDepthTexture;
        uniform int uLinearInput;

        ${colorTransfer ?: ""}

        vec4 premultipliedSourceTexel(ivec2 position) {
            ivec2 size = textureSize(uInputTexture, 0);
            position = clamp(position, ivec2(0), size - 1);
            vec2 uv = (vec2(position) + 0.5) / vec2(size);
            vec3 color = texelFetch(uInputTexture, position, 0).rgb;
            vec3 linear = ${if (colorTransfer != null) "decodeColor(color)" else "uLinearInput != 0 ? max(color, vec3(0.0)) : pow(clamp(color, 0.0, 1.0), vec3(2.2))"};
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
     * 提取适合重建为弥散圆的紧凑高光。
     *
     * 使用由近到远的完整环形探针验证中心是严格局部亮点。选中的圆环上任一方向
     * 不暗于中心都会拒绝；多尺度半径则允许探针越过较宽的光源亮区。
     */
    val COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER = """#version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform sampler2D uDepthTexture;
        uniform mat4 uDepthMatrix;
        uniform float uMaxBlurRadius;
        uniform float uAperture;
        uniform float uFocusDepth;
        uniform vec2 uTexelSize;
        uniform float uMinNeighborhoodLumaDifference;
        uniform int uLinearInput;

        $BOKEH_LAYER_SAMPLING

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

        ${BokehDefocusModel.GLSL_SOURCE}

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
            vec2 depthUV = clamp(
                (uDepthMatrix * vec4(vTexCoord, 0.0, 1.0)).xy,
                0.0,
                1.0
            );
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
     * 后期处理专用的圆形 PSF gather。
     *
     * Vogel 分布保留完整输入辐射；自然模式使用中心亮、边缘暗的径向 PSF，
     * 默认模式额外合成紧凑高光的解析光斑。
     */
    val PSF_SPLAT_FRAGMENT_SHADER = """#version 300 es
        #define NATURAL_BOKEH 0
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uDepthTexture;
        uniform sampler2D uLayerColorTexture;

        uniform mat4 uDepthMatrix;
        uniform float uMaxBlurRadius;
        uniform float uAperture;
        uniform float uFocusDepth;
        uniform vec2 uTexelSize;

        $BOKEH_LAYER_SAMPLING

        const float GOLDEN_ANGLE = 2.39996323;
        const int SAMPLES = 640;

        ${BokehDefocusModel.GLSL_SOURCE}

        vec2 biotarAperturePosition(
            vec2 offsetPixels,
            vec2 sourceUV,
            float coc
        ) {
            float aspect = uTexelSize.y / uTexelSize.x;
            vec2 field = (sourceUV * 2.0 - 1.0) * vec2(aspect, 1.0);
            float fieldRadius = length(field);
            vec2 radial = fieldRadius > 0.0001
                ? field / fieldRadius
                : vec2(0.0, 1.0);
            vec2 tangential = vec2(-radial.y, radial.x);
            float fieldStrength = smoothstep(0.12, 1.15, fieldRadius);

            vec2 normalizedOffset = offsetPixels / max(coc, 0.001);
            float tangentialCoordinate = dot(normalizedOffset, tangential);
            float radialCoordinate = dot(normalizedOffset, radial);

            // Biotar-type mechanical vignetting progressively compresses the
            // radial axis while retaining the tangential extent. The mild
            // tangential shear turns the off-axis ellipses into a continuous
            // swirl instead of a collection of unrelated oval stamps.
            #if NATURAL_BOKEH == 1
            float radialScale = mix(1.0, 0.78, fieldStrength);
            float tangentialScale = mix(1.0, 1.02, fieldStrength);
            float swirlShear = 0.03;
            #else
            float radialScale = mix(1.0, 0.54, fieldStrength);
            float tangentialScale = mix(1.0, 1.08, fieldStrength);
            float swirlShear = 0.10;
            #endif
            radialCoordinate += tangentialCoordinate * swirlShear * fieldStrength;
            return vec2(
                tangentialCoordinate / tangentialScale,
                radialCoordinate / radialScale
            );
        }

        float apertureWeight(
            vec2 offsetPixels,
            vec2 sourceUV,
            float coc
        ) {
            vec2 p = biotarAperturePosition(offsetPixels, sourceUV, coc);
            float lenP = length(p);

            #if NATURAL_BOKEH == 1
            float softEdge = 1.0 - smoothstep(0.70, 1.05, lenP);
            float radialEnergy = exp(-lenP * lenP * 1.55);
            float centerWeightedTransmission = mix(
                0.16,
                1.0,
                radialEnergy
            );
            return softEdge * centerWeightedTransmission;
            #else
            // A broad feather and restrained bright rim reproduce the soft,
            // luminous reference bokeh without returning to a hard cut-out disc.
            float support = 1.0 - smoothstep(0.64, 1.0, lenP);
            float radialTransmission = mix(
                0.62,
                0.42,
                smoothstep(0.0, 0.82, lenP)
            );
            float shoulder = smoothstep(0.48, 0.72, lenP)
                * (1.0 - smoothstep(0.76, 1.0, lenP));
            return support * (radialTransmission + shoulder * 0.075);
            #endif
        }

        float foregroundDefocusPotential(vec2 depthUV, float centerDepth) {
            float weightedPotential = 0.0;
            float totalWeight = 0.0;
            float sampleSpacing = max(uMaxBlurRadius * 0.16, 2.0);
            for (int y = -2; y <= 2; y++) {
                for (int x = -2; x <= 2; x++) {
                    vec2 sampleDepthUV = clamp(
                        depthUV + vec2(float(x), float(y))
                            * uTexelSize * sampleSpacing,
                        0.0,
                        1.0
                    );
                    vec4 sampleLayers = sampleBokehLayers(sampleDepthUV);
                    float sampleDepth = sampleLayers.b;
                    float nearer = smoothstep(
                        0.012,
                        0.075,
                        sampleDepth - centerDepth
                    );
                    float sampleDefocus = smoothstep(
                        0.25,
                        2.2,
                        computeCoc(sampleDepth)
                    );
                    float radiusSquared = float(x * x + y * y);
                    float spatialWeight = exp(-radiusSquared * 0.26);
                    weightedPotential += nearer * sampleDefocus * spatialWeight * (1.0 - sampleLayers.a);
                    totalWeight += spatialWeight;
                }
            }
            return weightedPotential / max(totalWeight, 0.001);
        }

        void main() {
            vec2 depthUV = clamp((uDepthMatrix * vec4(vTexCoord, 0.0, 1.0)).xy, 0.0, 1.0);
            vec4 centerLayers = sampleBokehLayers(depthUV);
            float centerDepth = centerLayers.a >= 0.5 ? centerLayers.g : centerLayers.b;
            // Render the complement layer's full PSF. Coverage is applied in
            // composition, never used to shrink the disc at a subject boundary.
            float centerCoc = computeCoc(centerLayers.b);

            vec4 centerLayerColor = textureLod(uLayerColorTexture, vTexCoord, 0.0);
            float foregroundPotential = (centerCoc < 0.2 || centerLayers.a >= 1.0)
                ? foregroundDefocusPotential(depthUV, centerDepth)
                : 0.0;
            if ((centerCoc < 0.2 || centerLayers.a >= 1.0) && foregroundPotential < 0.008) {
                // The PSF texture contains only complement radiance. A protected
                // subject is missing background data, never an original-RGB fill.
                // Keep coverage for normalized filtering in the full-size resolve.
                fragColor = centerLayers.a >= 1.0 ? vec4(0.0) : centerLayerColor;
                return;
            }

            // Keep one stable Vogel orientation for the peak-preserving path.
            // Per-pixel random rotation changes which source texel wins and
            // turns a circular footprint into a noisy, irregular union.
            const float rotation = 0.0;

            float focusedCenterWeight = mix(
                4.0,
                2.2,
                clamp(foregroundPotential * 2.4, 0.0, 1.0)
            );
            float centerWeight = focusedCenterWeight / (centerCoc * 0.3 + 1.0);
            float sampleFootprintUv = uMaxBlurRadius
                * 1.8
                * uTexelSize.x
                / sqrt(float(SAMPLES));
            float inputIntegrationLod = max(
                0.0,
                log2(sampleFootprintUv * float(textureSize(uLayerColorTexture, 0).x))
            );
            float sceneIntegrationLod = inputIntegrationLod;
            vec3 accColor = centerLayerColor.rgb * centerWeight;
            float accWeight = centerLayerColor.a * centerWeight;

            #if NATURAL_BOKEH == 1
            float softBase = max(3.5, uMaxBlurRadius * 0.12);
            #else
            float softBase = max(2.5, uMaxBlurRadius * 0.08);
            #endif

            for (int i = 0; i < SAMPLES; i++) {
                float f = float(i + 1);
                float r = sqrt(f / float(SAMPLES)) * uMaxBlurRadius;
                float theta = f * GOLDEN_ANGLE + rotation;

                vec2 offset = vec2(cos(theta), sin(theta)) * r * uTexelSize;
                vec2 sampleUV = clamp(vTexCoord + offset, 0.0, 1.0);
                vec2 offsetPixels = offset / uTexelSize;

                // A constant footprint matches the uniform area density of the
                // Vogel samples. Radius-dependent LOD smears point lights before
                // the aperture kernel can form a disc.
                vec4 sampleLayerColor = textureLod(
                    uLayerColorTexture,
                    sampleUV,
                    sceneIntegrationLod
                );
                if (sampleLayerColor.a < 0.001) continue;
                vec2 sDepthUV = clamp((uDepthMatrix * vec4(sampleUV, 0.0, 1.0)).xy, 0.0, 1.0);
                vec4 sampleLayers = sampleBokehLayers(sDepthUV);
                float sDepth = sampleLayers.b;

                float sCoc = computeCoc(sDepth);

                float fW = smoothstep(r - softBase, r + softBase * 0.5, sCoc);
                float bW = smoothstep(r - softBase, r + softBase * 0.5, centerCoc);

                // The depth preprocessor guarantees disparity polarity:
                // larger values are closer to the camera. A source behind the
                // destination pixel must never be composited over that nearer
                // foreground surface.
                float sourceIsNearer = smoothstep(
                    0.025,
                    0.075,
                    sDepth - centerDepth
                );
                float centerOccludesSource = smoothstep(
                    0.025,
                    0.075,
                    centerDepth - sDepth
                );
                float focusedSurfaceProtection = 1.0 - smoothstep(
                    0.8,
                    4.0,
                    computeCoc(centerDepth)
                );
                float occlusionStrength = mix(
                    0.28,
                    1.0,
                    focusedSurfaceProtection
                );
                float sourceVisibility = 1.0
                    - centerOccludesSource * occlusionStrength;

                float commonWeight = mix(bW, fW, sourceIsNearer)
                    * sourceVisibility;
                vec3 sLinear = sampleLayerColor.rgb / sampleLayerColor.a;
                float sampleLuma = dot(
                    sLinear,
                    vec3(0.2126, 0.7152, 0.0722)
                );
                float apertureResponse = apertureWeight(
                    offsetPixels,
                    sampleUV,
                    max(sCoc, centerCoc)
                );
                float weight = commonWeight * apertureResponse * sampleLayerColor.a;

                if (weight > 0.0001) {
                    vec3 baseLinear = sLinear;
                    float highlightRecovery = smoothstep(
                        0.38,
                        0.92,
                        sampleLuma
                    ) * smoothstep(8.0, 24.0, max(sCoc, centerCoc));
                    float radianceWeight = mix(
                        1.0,
                        1.35,
                        highlightRecovery
                    );
                    accColor += baseLinear * weight * radianceWeight;
                    accWeight += weight;
                }

            }

            // A=1 denotes a reconstructed background estimate; A=0 denotes no
            // support. Interpolation must never pull subject RGB across this edge.
            fragColor = accWeight > 0.001
                ? vec4(accColor / accWeight, 1.0) : vec4(0.0);
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
            float radialScale = mix(1.0, 0.54, fieldStrength);
            float tangentialScale = mix(1.0, 1.08, fieldStrength);
            float swirlShear = 0.10;
            float shearedRadial = aPosition.y * radialScale
                - aPosition.x * swirlShear * fieldStrength * radialScale;
            vec2 offsetPixels = (
                tangential * aPosition.x * tangentialScale
                + radial * shearedRadial
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
     * 三层最终合成：普通双向虚化、解析光斑、原图焦平面细节。
     *
     * 主体 mask 决定原图覆盖率，非主体深度决定 CoC，两者保持独立。
     * 焦前散焦物仍可遮挡焦点层；背景高光不能借该覆盖率溢入主体。
     */
    val BOKEH_COMPOSITE_FRAGMENT_SHADER = """#version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uOriginalTexture;
        uniform sampler2D uBokehTexture;
        uniform sampler2D uHighlightTexture;
        uniform sampler2D uDepthTexture;
        uniform mat4 uDepthMatrix;
        uniform float uMaxBlurRadius;
        uniform float uAperture;
        uniform float uFocusDepth;
        uniform vec2 uDepthTexelSize;
        uniform int uLinearInput;

        $BOKEH_LAYER_SAMPLING

        ${BokehDefocusModel.GLSL_SOURCE}

        float foregroundDefocusCoverage(vec2 depthUV, float centerDepth) {
            float weightedCoverage = 0.0;
            float totalWeight = 0.0;
            float spillRadius = clamp(uMaxBlurRadius * 0.18, 3.0, 18.0);
            for (int y = -2; y <= 2; y++) {
                for (int x = -2; x <= 2; x++) {
                    vec2 sampleUV = clamp(
                        depthUV + vec2(float(x), float(y))
                            * uDepthTexelSize * (spillRadius * 0.5),
                        0.0,
                        1.0
                    );
                    vec4 sampleLayers = sampleBokehLayers(sampleUV);
                    float sampleDepth = sampleLayers.b;
                    float nearer = smoothstep(
                        0.012,
                        0.075,
                        sampleDepth - centerDepth
                    );
                    float sampleDefocus = smoothstep(
                        0.25,
                        2.2,
                        computeCoc(sampleDepth)
                    );
                    float radiusSquared = float(x * x + y * y);
                    float spatialWeight = exp(-radiusSquared * 0.24);
                    weightedCoverage += nearer * sampleDefocus * spatialWeight * (1.0 - sampleLayers.a);
                    totalWeight += spatialWeight;
                }
            }
            return weightedCoverage / max(totalWeight, 0.001);
        }

        void main() {
            vec4 originalColor = texture(uOriginalTexture, vTexCoord);
            vec4 backgroundEstimate = texture(uBokehTexture, vTexCoord);
            // PSF RGBA16F is linear premultiplied radiance / valid support,
            // independent of the original bitmap's transfer function and alpha.
            if (backgroundEstimate.a <= 0.0) {
                fragColor = originalColor;
                return;
            }
            vec3 backgroundLinear = backgroundEstimate.rgb / backgroundEstimate.a;
            vec3 backgroundColor = uLinearInput != 0 ? backgroundLinear
                : pow(max(backgroundLinear, vec3(0.0)), vec3(1.0 / 2.2));
            if (uLinearInput == 0) backgroundColor = clamp(backgroundColor, 0.0, 1.0);
            vec3 highlightLayer = texture(uHighlightTexture, vTexCoord).rgb;
            vec2 depthUV = clamp(
                (uDepthMatrix * vec4(vTexCoord, 0.0, 1.0)).xy,
                0.0,
                1.0
            );
            vec4 centerLayers = sampleBokehLayers(depthUV);
            float centerDepth = centerLayers.a >= 0.5 ? centerLayers.g : centerLayers.b;
            float coc = computeCoc(centerLayers.b);
            float defocusMix = (1.0 - centerLayers.a) * smoothstep(0.2, 1.2, coc);
            highlightLayer *= 1.0 - centerLayers.a;
            float foregroundCoverage = foregroundDefocusCoverage(
                depthUV,
                centerDepth
            );
            float foregroundSpill = smoothstep(
                0.01,
                0.65,
                foregroundCoverage
            ) * 0.76;
            float bokehMix = 1.0
                - (1.0 - defocusMix) * (1.0 - foregroundSpill);

            vec3 backgroundWithHighlights;
            if (uLinearInput != 0) {
                backgroundWithHighlights = backgroundColor + highlightLayer;
            } else {
                vec3 highlightOpacity = clamp(highlightLayer, 0.0, 1.0);
                backgroundWithHighlights = backgroundColor
                    + (vec3(1.0) - backgroundColor) * highlightOpacity;
            }
            fragColor = vec4(
                mix(originalColor.rgb, backgroundWithHighlights, bokehMix),
                originalColor.a
            );
        }
    """.trimIndent()

    fun psfSplatFragmentShader(naturalStyle: Boolean): String =
        PSF_SPLAT_FRAGMENT_SHADER.withBokehStyleDefine("NATURAL_BOKEH", naturalStyle)

    private fun String.withBokehStyleDefine(define: String, enabled: Boolean): String =
        if (enabled) {
            replace("#define $define 0", "#define $define 1")
        } else {
            this
        }
}
