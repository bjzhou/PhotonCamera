package com.hinnka.mycamera.lut

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

    /** HDF 合成：原图 + HDF 扩散 + spektrafilm 风格红色 halation */
    val HDF_PREVIEW_COMPOSITE = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uOriginalTexture;
        uniform sampler2D uBloomTexture;
        uniform float uHalation;
        uniform sampler2D uRedHalationTexture;
        uniform float uRedHalation;
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
            
            if (uRedHalation > 0.0) {
                vec3 halationBlur = texture(uRedHalationTexture, vTexCoord).rgb;
                float halationMask = smoothstep(0.001, 0.06, dot(halationBlur, vec3(0.2126, 0.7152, 0.0722)));
                vec3 halationStrength = vec3(0.42, 0.14, 0.02) * uRedHalation;
                color.rgb += halationBlur * halationStrength * halationMask;
            }
            
            fragColor = clamp(color, 0.0, 1.0);
        }
    """.trimIndent()

    /** Bevy Bloom: first downsample pass with Karis firefly reduction and soft threshold. */
    val BEVY_BLOOM_DOWNSAMPLE_FIRST = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uInputTexelSize;
        uniform vec4 uThreshold;

        float tonemappingLuminance(vec3 v) {
            return dot(v, vec3(0.2126, 0.7152, 0.0722));
        }

        float karisAverage(vec3 color) {
            float luma = tonemappingLuminance(pow(max(color, vec3(0.0)), vec3(1.0 / 2.2))) / 4.0;
            return 1.0 / (1.0 + luma);
        }

        vec3 thresholdHighlight(vec3 color) {
            float luma = tonemappingLuminance(color);
            float mask = 0.0;
            if (uThreshold.z > 0.0) {
                mask = smoothstep(uThreshold.y, uThreshold.y + uThreshold.z, luma);
            } else {
                mask = step(uThreshold.x, luma);
            }
            return color * mask;
        }

        vec3 sampleInput(vec2 uv) {
            vec3 color = texture(uInputTexture, uv).rgb;
            if (uThreshold.x > 0.0 || uThreshold.z > 0.0) {
                color = thresholdHighlight(color);
            }
            return color;
        }

        vec3 sample13Tap(vec2 uv) {
            vec2 ps = uInputTexelSize;
            vec2 pl = 2.0 * ps;
            vec2 ns = -ps;
            vec2 nl = -pl;
            vec3 a = sampleInput(uv + vec2(nl.x, pl.y));
            vec3 b = sampleInput(uv + vec2(0.0, pl.y));
            vec3 c = sampleInput(uv + vec2(pl.x, pl.y));
            vec3 d = sampleInput(uv + vec2(nl.x, 0.0));
            vec3 e = sampleInput(uv);
            vec3 f = sampleInput(uv + vec2(pl.x, 0.0));
            vec3 g = sampleInput(uv + vec2(nl.x, nl.y));
            vec3 h = sampleInput(uv + vec2(0.0, nl.y));
            vec3 i = sampleInput(uv + vec2(pl.x, nl.y));
            vec3 j = sampleInput(uv + vec2(ns.x, ps.y));
            vec3 k = sampleInput(uv + vec2(ps.x, ps.y));
            vec3 l = sampleInput(uv + vec2(ns.x, ns.y));
            vec3 m = sampleInput(uv + vec2(ps.x, ns.y));

            vec3 group0 = (a + b + d + e) * (0.125 / 4.0);
            vec3 group1 = (b + c + e + f) * (0.125 / 4.0);
            vec3 group2 = (d + e + g + h) * (0.125 / 4.0);
            vec3 group3 = (e + f + h + i) * (0.125 / 4.0);
            vec3 group4 = (j + k + l + m) * (0.5 / 4.0);
            group0 *= karisAverage(group0);
            group1 *= karisAverage(group1);
            group2 *= karisAverage(group2);
            group3 *= karisAverage(group3);
            group4 *= karisAverage(group4);
            return group0 + group1 + group2 + group3 + group4;
        }

        void main() {
            vec3 sampleColor = sample13Tap(vTexCoord);
            fragColor = vec4(clamp(sampleColor, vec3(0.0), vec3(1.0)), 1.0);
        }
    """.trimIndent()

    /** Bevy Bloom: subsequent 13-tap downsample passes. */
    val BEVY_BLOOM_DOWNSAMPLE = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uInputTexelSize;

        vec3 sample13Tap(vec2 uv) {
            vec2 ps = uInputTexelSize;
            vec2 pl = 2.0 * ps;
            vec2 ns = -ps;
            vec2 nl = -pl;
            vec3 a = texture(uInputTexture, uv + vec2(nl.x, pl.y)).rgb;
            vec3 b = texture(uInputTexture, uv + vec2(0.0, pl.y)).rgb;
            vec3 c = texture(uInputTexture, uv + vec2(pl.x, pl.y)).rgb;
            vec3 d = texture(uInputTexture, uv + vec2(nl.x, 0.0)).rgb;
            vec3 e = texture(uInputTexture, uv).rgb;
            vec3 f = texture(uInputTexture, uv + vec2(pl.x, 0.0)).rgb;
            vec3 g = texture(uInputTexture, uv + vec2(nl.x, nl.y)).rgb;
            vec3 h = texture(uInputTexture, uv + vec2(0.0, nl.y)).rgb;
            vec3 i = texture(uInputTexture, uv + vec2(pl.x, nl.y)).rgb;
            vec3 j = texture(uInputTexture, uv + vec2(ns.x, ps.y)).rgb;
            vec3 k = texture(uInputTexture, uv + vec2(ps.x, ps.y)).rgb;
            vec3 l = texture(uInputTexture, uv + vec2(ns.x, ns.y)).rgb;
            vec3 m = texture(uInputTexture, uv + vec2(ps.x, ns.y)).rgb;
            vec3 sampleColor = (a + c + g + i) * 0.03125;
            sampleColor += (b + d + f + h) * 0.0625;
            sampleColor += (e + j + k + l + m) * 0.125;
            return sampleColor;
        }

        void main() {
            fragColor = vec4(sample13Tap(vTexCoord), 1.0);
        }
    """.trimIndent()

    /** Bevy Bloom: 3x3 tent upsample pass. */
    val BEVY_BLOOM_UPSAMPLE = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uInputTexelSize;

        void main() {
            float x = uInputTexelSize.x;
            float y = uInputTexelSize.y;
            vec2 uv = vTexCoord;
            vec3 a = texture(uInputTexture, vec2(uv.x - x, uv.y + y)).rgb;
            vec3 b = texture(uInputTexture, vec2(uv.x, uv.y + y)).rgb;
            vec3 c = texture(uInputTexture, vec2(uv.x + x, uv.y + y)).rgb;
            vec3 d = texture(uInputTexture, vec2(uv.x - x, uv.y)).rgb;
            vec3 e = texture(uInputTexture, vec2(uv.x, uv.y)).rgb;
            vec3 f = texture(uInputTexture, vec2(uv.x + x, uv.y)).rgb;
            vec3 g = texture(uInputTexture, vec2(uv.x - x, uv.y - y)).rgb;
            vec3 h = texture(uInputTexture, vec2(uv.x, uv.y - y)).rgb;
            vec3 i = texture(uInputTexture, vec2(uv.x + x, uv.y - y)).rgb;
            vec3 sampleColor = e * 0.25;
            sampleColor += (b + d + f + h) * 0.125;
            sampleColor += (a + c + g + i) * 0.0625;
            fragColor = vec4(sampleColor, 1.0);
        }
    """.trimIndent()

    /** LDR Bloom: final blurred highlight contribution. */
    val BEVY_BLOOM_COMPOSITE = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uBloomTexture;
        uniform sampler2D uBloomTextureNext;
        uniform vec2 uBloomTexelSize;
        uniform vec2 uBloomTexelSizeNext;
        uniform float uBlend;
        uniform float uMipBlend;

        vec3 sampleTentLower(vec2 uv) {
            float x = uBloomTexelSize.x;
            float y = uBloomTexelSize.y;
            vec3 a = texture(uBloomTexture, vec2(uv.x - x, uv.y + y)).rgb;
            vec3 b = texture(uBloomTexture, vec2(uv.x, uv.y + y)).rgb;
            vec3 c = texture(uBloomTexture, vec2(uv.x + x, uv.y + y)).rgb;
            vec3 d = texture(uBloomTexture, vec2(uv.x - x, uv.y)).rgb;
            vec3 e = texture(uBloomTexture, vec2(uv.x, uv.y)).rgb;
            vec3 f = texture(uBloomTexture, vec2(uv.x + x, uv.y)).rgb;
            vec3 g = texture(uBloomTexture, vec2(uv.x - x, uv.y - y)).rgb;
            vec3 h = texture(uBloomTexture, vec2(uv.x, uv.y - y)).rgb;
            vec3 i = texture(uBloomTexture, vec2(uv.x + x, uv.y - y)).rgb;
            vec3 sampleColor = e * 0.25;
            sampleColor += (b + d + f + h) * 0.125;
            sampleColor += (a + c + g + i) * 0.0625;
            return sampleColor;
        }

        vec3 sampleTentUpper(vec2 uv) {
            float x = uBloomTexelSizeNext.x;
            float y = uBloomTexelSizeNext.y;
            vec3 a = texture(uBloomTextureNext, vec2(uv.x - x, uv.y + y)).rgb;
            vec3 b = texture(uBloomTextureNext, vec2(uv.x, uv.y + y)).rgb;
            vec3 c = texture(uBloomTextureNext, vec2(uv.x + x, uv.y + y)).rgb;
            vec3 d = texture(uBloomTextureNext, vec2(uv.x - x, uv.y)).rgb;
            vec3 e = texture(uBloomTextureNext, vec2(uv.x, uv.y)).rgb;
            vec3 f = texture(uBloomTextureNext, vec2(uv.x + x, uv.y)).rgb;
            vec3 g = texture(uBloomTextureNext, vec2(uv.x - x, uv.y - y)).rgb;
            vec3 h = texture(uBloomTextureNext, vec2(uv.x, uv.y - y)).rgb;
            vec3 i = texture(uBloomTextureNext, vec2(uv.x + x, uv.y - y)).rgb;
            vec3 sampleColor = e * 0.25;
            sampleColor += (b + d + f + h) * 0.125;
            sampleColor += (a + c + g + i) * 0.0625;
            return sampleColor;
        }

        void main() {
            vec3 lowerBloom = sampleTentLower(vTexCoord);
            vec3 upperBloom = sampleTentUpper(vTexCoord);
            vec3 bloom = mix(lowerBloom, upperBloom, uMipBlend) * uBlend;
            fragColor = vec4(clamp(bloom, 0.0, 1.0), 1.0);
        }
    """.trimIndent()

    /** Halation Pass 1: 高光重建 + 暖红背反射种子 + 水平高斯模糊 */
    val HALATION_PREVIEW_EXTRACT_BLUR_H = """
        #version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform float uThreshold;
        uniform float uStrength;
        void main() {
            vec3 tint = vec3(1.0, 0.28, 0.04);
            
            #define EXTRACT(sampleColor) \
                (max(sampleColor - vec3(uThreshold), vec3(0.0)) * tint * (1.5 + uStrength * 3.0) * smoothstep(uThreshold - 0.24, uThreshold + 0.36, max(sampleColor.r, max(sampleColor.g, sampleColor.b))))

            vec3 color = texture(uInputTexture, vTexCoord).rgb;
            vec3 sum = EXTRACT(color) * 0.204164;
            
            float blurOffsets[4] = float[](1.407333, 3.294215, 5.176470, 7.058823);
            float blurWeights[4] = float[](0.304005, 0.093910, 0.010416, 0.000005);
            for (int i = 0; i < 4; i++) {
                float off = blurOffsets[i] * uTexelSize.x * 2.0;
                sum += EXTRACT(texture(uInputTexture, vTexCoord + vec2(off, 0.0)).rgb) * blurWeights[i];
                sum += EXTRACT(texture(uInputTexture, vTexCoord - vec2(off, 0.0)).rgb) * blurWeights[i];
            }
            fragColor = vec4(sum, 1.0);
        }
    """.trimIndent()

    /** Halation Pass 2: 垂直高斯模糊 */
    val HALATION_PREVIEW_BLUR_V = HDF_PREVIEW_BLUR_V

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

    /**
     * 4x4 联合双边上采样。
     *
     * 正值高斯空间核替代仅覆盖单个低分辨率 cell 的 2x2 双线性核，跨 cell
     * 移动时权重保持连续。低分辨率引导样本使用与深度 texel 相同的面积足迹，
     * 避免高频纹理在单点采样时错误主导深度边缘。
     */
    val JBU_UPSAMPLE_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uLowResDepth;  
        uniform sampler2D uHighResGuide; 
        uniform vec2 uLowResTexelSize;   

        const float SIGMA_S = 0.85;
        const float SIGMA_R = 0.12;

        void main() {
            vec3 guideColor = texture(uHighResGuide, vTexCoord).rgb;
            
            // 基础线性混合深度，作为极端情况下的保底
            float baseDepth = texture(uLowResDepth, vTexCoord).r;
            
            ivec2 lowResSize = textureSize(uLowResDepth, 0);
            vec2 pos = vTexCoord / uLowResTexelSize - 0.5;
            ivec2 p0 = ivec2(floor(pos));
            vec2 f = fract(pos);
            
            float totalWeight = 0.0;
            float totalDepth = 0.0;

            for (int y = -1; y <= 2; y++) {
                for (int x = -1; x <= 2; x++) {
                    ivec2 sampleIndex = p0 + ivec2(x, y);
                    if (any(lessThan(sampleIndex, ivec2(0))) ||
                        any(greaterThanEqual(sampleIndex, lowResSize))) {
                        continue;
                    }

                    vec2 sampleCoord = (vec2(sampleIndex) + 0.5) * uLowResTexelSize;
                    float d = texelFetch(uLowResDepth, sampleIndex, 0).r;
                    vec3 c = textureGrad(
                        uHighResGuide,
                        sampleCoord,
                        vec2(uLowResTexelSize.x, 0.0),
                        vec2(0.0, uLowResTexelSize.y)
                    ).rgb;

                    vec2 delta = vec2(float(x), float(y)) - f;
                    float wS = exp(
                        -dot(delta, delta) / (2.0 * SIGMA_S * SIGMA_S)
                    );
                    float dC = distance(guideColor, c);
                    float wC = exp(-(dC * dC) / (2.0 * SIGMA_R * SIGMA_R));

                    float w = wS * wC;
                    totalDepth += d * w;
                    totalWeight += w;
                }
            }

            float finalDepth = totalWeight > 0.001 ? totalDepth / totalWeight : baseDepth;
            fragColor = vec4(vec3(finalDepth), 1.0);
        }
    """.trimIndent()

    /**
     * 有界深度反锐化。
     *
     * 使用 3x3 高斯低通提取真实高频分量，只在存在局部深度对比时增强，并将
     * 结果限制在邻域极值内，避免制造新的前后景层级或数值过冲。
     */
    val DEPTH_REFINE_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uDepthTexture;
        uniform vec2 uTexelSize;

        void main() {
            float center = texture(uDepthTexture, vTexCoord).r;
            float n = texture(uDepthTexture, vTexCoord + vec2(0, uTexelSize.y)).r;
            float s = texture(uDepthTexture, vTexCoord - vec2(0, uTexelSize.y)).r;
            float e = texture(uDepthTexture, vTexCoord + vec2(uTexelSize.x, 0)).r;
            float w = texture(uDepthTexture, vTexCoord - vec2(uTexelSize.x, 0)).r;
            float ne = texture(uDepthTexture, vTexCoord + uTexelSize).r;
            float nw = texture(
                uDepthTexture,
                vTexCoord + vec2(-uTexelSize.x, uTexelSize.y)
            ).r;
            float se = texture(
                uDepthTexture,
                vTexCoord + vec2(uTexelSize.x, -uTexelSize.y)
            ).r;
            float sw = texture(uDepthTexture, vTexCoord - uTexelSize).r;

            float blurred = (
                center * 4.0 +
                (n + s + e + w) * 2.0 +
                ne + nw + se + sw
            ) * (1.0 / 16.0);
            float localMin = min(
                min(min(center, n), min(s, e)),
                min(min(w, ne), min(min(nw, se), sw))
            );
            float localMax = max(
                max(max(center, n), max(s, e)),
                max(max(w, ne), max(max(nw, se), sw))
            );
            float edgeGate = smoothstep(0.004, 0.035, localMax - localMin);
            float refined = clamp(
                center + (center - blurred) * (0.65 * edgeGate),
                localMin,
                localMax
            );
            fragColor = vec4(vec3(clamp(refined, 0.0, 1.0)), 1.0);
        }
    """.trimIndent()

    /** 供 CPU 遮挡判定使用的有损副本；渲染深度始终保留在 R16F。 */
    val DEPTH_READBACK_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uDepthTexture;

        void main() {
            float depth = texture(uDepthTexture, vTexCoord).r;
            fragColor = vec4(vec3(clamp(depth, 0.0, 1.0)), 1.0);
        }
    """.trimIndent()

    /**
     * 提取适合重建为弥散圆的紧凑高光。
     *
     * 使用两圈探针寻找点光源外侧的局部背景，因此输入中已经存在一定直径的真实散景
     * 仍能被完整提取。判定以相对局部对比为主；大块天空、窗户等连续高亮区域内部
     * 不具备足够多的较暗方向，不会进入光斑重建通道。
     */
    val COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER = """
        #version 300 es
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

        const float LENS_GAMMA = 2.2;
        const vec2 PROBE_DIRECTIONS[12] = vec2[](
            vec2( 1.0,  0.0),
            vec2(-1.0,  0.0),
            vec2( 0.0,  1.0),
            vec2( 0.0, -1.0),
            vec2( 0.70710678,  0.70710678),
            vec2(-0.70710678,  0.70710678),
            vec2( 0.70710678, -0.70710678),
            vec2(-0.70710678, -0.70710678),
            vec2( 0.86602540,  0.5),
            vec2(-0.86602540,  0.5),
            vec2( 0.86602540, -0.5),
            vec2(-0.86602540, -0.5)
        );

        vec3 toLinear(vec3 color) {
            if (uLinearInput != 0) return max(color, vec3(0.0));
            return pow(clamp(color, 0.0, 1.0), vec3(LENS_GAMMA));
        }

        float luminance(vec3 color) {
            return dot(color, vec3(0.2126, 0.7152, 0.0722));
        }

        float computeCoc(float depth) {
            float gap = max(uFocusDepth - depth - 0.015, 0.0);
            float defocus = pow(gap, 1.1);
            return clamp(
                defocus * uMaxBlurRadius * (1.0 / max(uAperture, 0.45)),
                0.0,
                uMaxBlurRadius
            );
        }

        void main() {
            vec2 depthUV = clamp(
                (uDepthMatrix * vec4(vTexCoord, 0.0, 1.0)).xy,
                0.0,
                1.0
            );
            float coc = computeCoc(texture(uDepthTexture, depthUV).r);
            if (coc < 1.5) {
                fragColor = vec4(0.0);
                return;
            }

            vec3 centerLinear = toLinear(textureLod(uInputTexture, vTexCoord, 0.0).rgb);
            float centerLuma = luminance(centerLinear);
            float innerProbeRadius = clamp(coc * 0.70, 5.0, 32.0);
            float outerProbeRadius = clamp(
                max(coc * 2.40, uMaxBlurRadius * 0.80),
                16.0,
                128.0
            );

            vec3 surroundLinear = vec3(0.0);
            float darkerDirectionCount = 0.0;
            float maxInnerLuma = 0.0;
            float innerLumaSum = 0.0;
            vec2 innerBrightnessMoment = vec2(0.0);
            for (int i = 0; i < 12; i++) {
                vec2 innerUV = clamp(
                    vTexCoord + PROBE_DIRECTIONS[i] * innerProbeRadius * uTexelSize,
                    0.0,
                    1.0
                );
                vec2 outerUV = clamp(
                    vTexCoord + PROBE_DIRECTIONS[i] * outerProbeRadius * uTexelSize,
                    0.0,
                    1.0
                );
                vec3 innerLinear = toLinear(textureLod(uInputTexture, innerUV, 0.0).rgb);
                vec3 outerLinear = toLinear(textureLod(uInputTexture, outerUV, 0.0).rgb);
                float innerLuma = luminance(innerLinear);
                float outerLuma = luminance(outerLinear);
                maxInnerLuma = max(maxInnerLuma, innerLuma);
                innerLumaSum += innerLuma;
                innerBrightnessMoment += PROBE_DIRECTIONS[i] * innerLuma;

                vec3 neighborLinear = innerLuma < outerLuma
                    ? innerLinear
                    : outerLinear;
                float neighborLuma = luminance(neighborLinear);
                surroundLinear += neighborLinear;

                float darkerThreshold = centerLuma * 0.90 - 0.008;
                darkerDirectionCount += 1.0 - smoothstep(
                    darkerThreshold,
                    darkerThreshold + 0.035,
                    neighborLuma
                );
            }
            surroundLinear *= 1.0 / 12.0;

            float contrast = max(centerLuma - luminance(surroundLinear), 0.0);
            float relativeContrast = contrast / max(centerLuma, 0.06);
            float darkDirectionRatio = darkerDirectionCount / 12.0;
            float meanInnerLuma = innerLumaSum / 12.0;
            float neighborhoodContrastGate = smoothstep(
                uMinNeighborhoodLumaDifference,
                uMinNeighborhoodLumaDifference + 0.04,
                contrast
            );

            // Brightness and local contrast decide whether a response can be a
            // highlight. Isolation is confidence only: making it a hard gate
            // deletes every source inside a dense cluster before CPU spacing can
            // retain its strongest representative centers.
            float isolationConfidence = mix(
                0.55,
                1.0,
                smoothstep(0.28, 0.82, darkDirectionRatio)
            );
            float mediumHighlightGate = smoothstep(0.18, 0.50, centerLuma)
                * max(
                    smoothstep(0.06, 0.18, contrast),
                    smoothstep(0.18, 0.38, relativeContrast)
                )
                * isolationConfidence;

            // Strong point lights use a higher absolute floor. Their local
            // contrast may be slightly lower after sensor clipping.
            float strongPointGate = smoothstep(0.65, 0.90, centerLuma)
                * max(
                    smoothstep(0.04, 0.14, contrast),
                    smoothstep(0.12, 0.30, relativeContrast)
                )
                * isolationConfidence;

            // Non-maximum suppression for an already-soft highlight disc.
            // Off-center pixels see a brighter inner-ring sample toward the
            // same light source and are rejected. The directional moment also
            // suppresses asymmetric fragments, leaving one compact center
            // region instead of many overlapping PSF emitters.
            float peakDominance = centerLuma - maxInnerLuma;
            float localMaximumGate = smoothstep(-0.01, 0.05, peakDominance);
            float normalizedMoment = length(innerBrightnessMoment / 12.0)
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

            // An existing optical bokeh disc has a broad, symmetric bright
            // interior instead of a sharp peak. Its inner ring remains bright
            // while the outer probe reaches darker background. Admit this
            // coherent shape without weakening point-source NMS; continuous
            // bright regions still fail the dark-surround requirement.
            float innerDiscRatio = meanInnerLuma / max(centerLuma, 0.06);
            float existingDiscGate = smoothstep(0.35, 0.70, innerDiscRatio)
                * smoothstep(0.60, 0.82, darkDirectionRatio);
            // Asymmetry lowers point confidence but is not a veto: adjacent
            // lights distort the moment precisely in the dense regions handled
            // by brightness-priority spatial thinning. Existing discs retain the
            // stricter symmetry requirement.
            float pointShapeGate = localMaximumGate
                * mix(0.35, 1.0, centerednessGate);
            float centerShapeGate = max(
                pointShapeGate,
                existingDiscGate * centerednessGate
            );
            float compactHighlight = highlightGate
                * centerShapeGate
                * neighborhoodContrastGate;

            vec3 residual = max(centerLinear - surroundLinear, vec3(0.0));
            // LDR point lights have already been clipped and blurred by the
            // taking lens. Preserve part of their observed color as well as the
            // local residual so the later PSF can recover a visible disc.
            vec3 sourceSignal = mix(residual, centerLinear, 0.35);
            fragColor = vec4(sourceSignal * compactHighlight, compactHighlight);
        }
    """.trimIndent()

    /**
     * 后期处理专用的圆形 PSF gather。
     *
     * Vogel 分布只负责普通景深模糊，并始终保留完整输入辐射。解析光斑由独立层
     * 叠加，不能为了避免重复能量而从本层扣除信号，否则误分类会在图像中挖暗坑。
     */
    val PSF_SPLAT_FRAGMENT_SHADER = """
        #version 300 es
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
        uniform int uLinearInput;

        const float GOLDEN_ANGLE = 2.39996323;
        const int SAMPLES = 640;
        const float LENS_GAMMA = 2.2;

        float computeCoc(float depth) {
            float gap = max(uFocusDepth - depth - 0.015, 0.0);
            float defocus = pow(gap, 1.1);
            return clamp(defocus * uMaxBlurRadius * (1.0 / max(uAperture, 0.45)), 0.0, uMaxBlurRadius);
        }

        float apertureWeight(vec2 offsetPixels, float coc) {
            vec2 p = offsetPixels / max(coc, 0.001);
            float lenP = length(p);

            // Keep a coherent disc interior like a real aperture image, then
            // feather only its outer band. The previous wide fade behaved like
            // Gaussian haze and erased the circle itself.
            float support = 1.0 - smoothstep(0.86, 1.0, lenP);
            float radialTransmission = mix(
                1.0,
                0.90,
                smoothstep(0.0, 0.86, lenP)
            );
            float rim = smoothstep(0.70, 0.82, lenP)
                * (1.0 - smoothstep(0.88, 0.97, lenP));
            return support * radialTransmission * (1.0 + rim * 0.10);
        }

        vec3 toLinear(vec3 color) {
            if (uLinearInput != 0) return max(color, vec3(0.0));
            return pow(clamp(color, 0.0, 1.0), vec3(LENS_GAMMA));
        }

        vec3 toDisplay(vec3 color) {
            if (uLinearInput != 0) return max(color, vec3(0.0));
            return pow(max(color, vec3(0.0)), vec3(1.0 / LENS_GAMMA));
        }

        void main() {
            vec2 depthUV = clamp((uDepthMatrix * vec4(vTexCoord, 0.0, 1.0)).xy, 0.0, 1.0);
            vec4 centerColor = texture(uInputTexture, vTexCoord);
            float centerDepth = texture(uDepthTexture, depthUV).r;

            float centerCoc = computeCoc(centerDepth);

            if (centerCoc < 0.2) {
                fragColor = centerColor;
                return;
            }

            // Keep one stable Vogel orientation for the peak-preserving path.
            // Per-pixel random rotation changes which source texel wins and
            // turns a circular footprint into a noisy, irregular union.
            const float rotation = 0.0;

            float centerWeight = 4.0 / (centerCoc * 0.3 + 1.0);
            float sampleFootprintUv = uMaxBlurRadius
                * 1.8
                * uTexelSize.x
                / sqrt(float(SAMPLES));
            float inputIntegrationLod = max(
                0.0,
                log2(sampleFootprintUv * float(textureSize(uInputTexture, 0).x))
            );
            vec3 centerLinear = toLinear(centerColor.rgb);
            vec3 accColor = centerLinear * centerWeight;
            float accWeight = centerWeight;

            float softBase = max(2.5, uMaxBlurRadius * 0.08);

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
                vec3 sColor = textureLod(
                    uInputTexture,
                    sampleUV,
                    inputIntegrationLod
                ).rgb;
                vec2 sDepthUV = clamp((uDepthMatrix * vec4(sampleUV, 0.0, 1.0)).xy, 0.0, 1.0);
                float sDepth = texture(uDepthTexture, sDepthUV).r;

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
                float sourceVisibility = 1.0 - centerOccludesSource;

                float weight = mix(bW, fW, sourceIsNearer);
                weight *= apertureWeight(offsetPixels, max(sCoc, centerCoc));
                weight *= sourceVisibility;

                if (weight > 0.0001) {
                    vec3 sLinear = toLinear(sColor);
                    accColor += sLinear * weight;
                    accWeight += weight;
                }
            }

            vec3 finalLinear = accWeight > 0.001
                ? accColor / accWeight
                : toLinear(centerColor.rgb);

            vec3 finalColor = toDisplay(finalLinear);
            if (uLinearInput == 0) {
                finalColor = clamp(finalColor, 0.0, 1.0);
            }

            fragColor = vec4(finalColor, centerColor.a);
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

        out vec2 vOffsetPixels;
        flat out float vCocPixels;
        flat out vec3 vSignal;

        void main() {
            vec2 offsetPixels = aPosition * aCocPixels;
            vec2 centerNdc = aCenterUv * 2.0 - 1.0;
            vec2 offsetNdc = offsetPixels * 2.0 / uImageSize;
            gl_Position = vec4(centerNdc + offsetNdc, 0.0, 1.0);
            vOffsetPixels = offsetPixels;
            vCocPixels = aCocPixels;
            vSignal = aSignal;
        }
    """.trimIndent()

    val ANALYTIC_BOKEH_HIGHLIGHT_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vOffsetPixels;
        flat in float vCocPixels;
        flat in vec3 vSignal;
        out vec4 fragColor;

        uniform int uLinearInput;

        float apertureTransmission(float normalizedDistance) {
            float support = 1.0 - smoothstep(0.86, 1.0, normalizedDistance);
            float radialTransmission = mix(
                1.0,
                0.90,
                smoothstep(0.0, 0.86, normalizedDistance)
            );
            float rim = smoothstep(0.70, 0.82, normalizedDistance)
                * (1.0 - smoothstep(0.88, 0.97, normalizedDistance));
            return support * radialTransmission * (1.0 + rim * 0.10);
        }

        void main() {
            float normalizedDistance = length(vOffsetPixels)
                / max(vCocPixels, 0.001);
            if (normalizedDistance >= 1.0) discard;

            float transmission = apertureTransmission(normalizedDistance);
            if (uLinearInput != 0) {
                // HDR keeps linear scene radiance; overlapping discs add energy.
                fragColor = vec4(vSignal * transmission, 0.0);
            } else {
                // LDR uses the same bounded highlight reconstruction as the
                // previous path, but the opacity now comes from one analytic disc.
                vec3 reconstructedHighlight = vSignal * (0.72 * transmission);
                vec3 compressedHighlight = reconstructedHighlight
                    / (vec3(1.0) + reconstructedHighlight * 2.0);
                vec3 highlightOpacity = min(
                    vec3(0.52),
                    vec3(1.0) - exp(-compressedHighlight * 2.8)
                );
                fragColor = vec4(highlightOpacity, 0.0);
            }
        }
    """.trimIndent()

    /**
     * 三层最终合成：普通虚化背景、解析光斑、原图主体前景。
     *
     * 光斑只与背景层结合，随后由前景遮挡层统一覆盖。前景判定使用局部最大视差，
     * 对深度边缘做保守遮挡，避免单个被误分到背景的主体像素暴露后方图层。
     */
    val BOKEH_COMPOSITE_FRAGMENT_SHADER = """
        #version 300 es
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

        float computeCoc(float depth) {
            float gap = max(uFocusDepth - depth - 0.015, 0.0);
            float defocus = pow(gap, 1.1);
            return clamp(
                defocus * uMaxBlurRadius * (1.0 / max(uAperture, 0.45)),
                0.0,
                uMaxBlurRadius
            );
        }

        float protectedForegroundDepth(vec2 depthUV) {
            float protectedDepth = 0.0;
            for (int y = -1; y <= 1; y++) {
                for (int x = -1; x <= 1; x++) {
                    vec2 sampleUV = clamp(
                        depthUV + vec2(float(x), float(y)) * uDepthTexelSize,
                        0.0,
                        1.0
                    );
                    protectedDepth = max(
                        protectedDepth,
                        texture(uDepthTexture, sampleUV).r
                    );
                }
            }
            return protectedDepth;
        }

        void main() {
            vec4 originalColor = texture(uOriginalTexture, vTexCoord);
            vec3 backgroundColor = texture(uBokehTexture, vTexCoord).rgb;
            vec3 highlightLayer = texture(uHighlightTexture, vTexCoord).rgb;
            vec2 depthUV = clamp(
                (uDepthMatrix * vec4(vTexCoord, 0.0, 1.0)).xy,
                0.0,
                1.0
            );
            float centerDepth = texture(uDepthTexture, depthUV).r;
            float protectedDepth = protectedForegroundDepth(depthUV);
            float coc = computeCoc(centerDepth);
            float backgroundMix = smoothstep(0.2, 1.2, coc);
            float foregroundOcclusion = smoothstep(
                uFocusDepth - 0.035,
                uFocusDepth - 0.015,
                protectedDepth
            );
            backgroundMix *= 1.0 - foregroundOcclusion;

            vec3 backgroundWithHighlights;
            if (uLinearInput != 0) {
                backgroundWithHighlights = backgroundColor + highlightLayer;
            } else {
                vec3 highlightOpacity = clamp(highlightLayer, 0.0, 1.0);
                backgroundWithHighlights = backgroundColor
                    + (vec3(1.0) - backgroundColor) * highlightOpacity;
            }
            fragColor = vec4(
                mix(originalColor.rgb, backgroundWithHighlights, backgroundMix),
                originalColor.a
            );
        }
    """.trimIndent()
}
