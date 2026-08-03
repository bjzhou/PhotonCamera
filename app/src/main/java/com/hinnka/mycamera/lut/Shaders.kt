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
     * 高质量 Bokeh 片元着色器 (OpenGL ES 3.0)
     * 采用 Golden-Angle 螺旋采样实现圆盘虚化
     */
    val BOKEH_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform sampler2D uDepthTexture;

        uniform mat4 uDepthMatrix; // 用于对齐深度图坐标（处理 Y 翻转和 FOV 缩放）
        uniform float uMaxBlurRadius;
        uniform float uAperture;
        uniform float uFocusDepth;
        uniform vec2 uTexelSize;
        uniform int uLinearInput;

        const float PI = 3.14159265359;
        const float GOLDEN_ANGLE = 2.39996323;
        const int SAMPLES = 64; // 实时预览：64 采样配合 Jitter 已足够顺滑且性能均衡

        // Interleaved Gradient Noise (IGN) - 用于低采样下消除环状伪影
        float random(vec2 fragCoord) {
            vec3 magic = vec3(0.06711056, 0.00583715, 52.9829189);
            return fract(magic.z * fract(dot(fragCoord, magic.xy)));
        }

        void main() {
            vec2 depthUV = (uDepthMatrix * vec4(vTexCoord, 0.0, 1.0)).xy;
            vec4 centerColor = texture(uInputTexture, vTexCoord);
            float centerDepth = texture(uDepthTexture, depthUV).r;

            float coc = abs(centerDepth - uFocusDepth) * uMaxBlurRadius * (1.0 / uAperture);
            coc = clamp(coc, 0.0, uMaxBlurRadius);

            if (coc < 0.5) {
                fragColor = centerColor;
                return;
            }

            vec3 accColor = vec3(0.0);
            float accWeight = 0.0;

            // 重要优化：利用 IGN 随机扰动旋转角度，消除固定采样模式带来的色带感
            // 相对于 brute-force 160 采样，这样能以更低功耗达到相同平滑度
            float jitter = random(gl_FragCoord.xy) * GOLDEN_ANGLE;

            for (int i = 0; i < SAMPLES; i++) {
                // 面积均匀分布
                float r = sqrt(float(i) / float(SAMPLES)) * coc;
                float theta = float(i) * GOLDEN_ANGLE + jitter;

                vec2 offset = vec2(cos(theta), sin(theta)) * r * uTexelSize;
                vec2 sampleUV = clamp(vTexCoord + offset, 0.0, 1.0);

                // Mipmap LOD 计算，融合相邻片元，在不加入噪点的情况下自然抹平色带
                float sampleRadiusPixels = r * 1.5 / sqrt(float(SAMPLES));
                float lod = max(0.0, log2(sampleRadiusPixels));

                vec3 sampleColor = texture(uInputTexture, sampleUV, lod).rgb;
                vec2 sDepthUV = clamp((uDepthMatrix * vec4(sampleUV, 0.0, 1.0)).xy, 0.0, 1.0);
                float sampleDepth = texture(uDepthTexture, sDepthUV).r;

                float sampleCoc = abs(sampleDepth - uFocusDepth) * uMaxBlurRadius * (1.0 / uAperture);
                sampleCoc = clamp(sampleCoc, 0.0, uMaxBlurRadius);

                // 软权重逻辑
                float w = smoothstep(r - 0.5, r + 1.0, sampleCoc);

                float depthDiff = sampleDepth - centerDepth;
                float bgOcclusion = smoothstep(-0.10, -0.01, depthDiff);
                float fgHalo = smoothstep(0.06, 0.01, depthDiff);
                w *= bgOcclusion * fgHalo;

                accColor += sampleColor * w;
                accWeight += w;
            }
            vec3 finalColor = accWeight > 0.001 ? (accColor / accWeight) : centerColor.rgb;
            fragColor = vec4(finalColor, centerColor.a);
        }
    """.trimIndent()

    /**
     * 无缝联合双边上采样 (Seamless JBU)
     * 采用标准的 2x2 邻域双线性混合，配合颜色权重，彻底消除网格感。
     */
    val JBU_UPSAMPLE_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uLowResDepth;  
        uniform sampler2D uHighResGuide; 
        uniform vec2 uLowResTexelSize;   

        const float SIGMA_R = 0.12; 

        void main() {
            vec3 guideColor = texture(uHighResGuide, vTexCoord).rgb;
            
            // 基础线性混合深度，作为极端情况下的保底
            float baseDepth = texture(uLowResDepth, vTexCoord).r;
            
            // 计算在低分辨率纹理空间下的坐标
            vec2 pos = vTexCoord / uLowResTexelSize - 0.5;
            vec2 p0 = floor(pos);
            vec2 f = fract(pos);
            
            float totalWeight = 0.0;
            float totalDepth = 0.0;

            // 采样相邻的 2x2 个低分中心点 (标准双线性权重范围)
            for(int y = 0; y <= 1; y++) {
                for(int x = 0; x <= 1; x++) {
                    vec2 offset = vec2(float(x), float(y));
                    vec2 sampleCoord = (p0 + offset + 0.5) * uLowResTexelSize;
                    
                    float d = texture(uLowResDepth, sampleCoord).r;
                    vec3 c = texture(uHighResGuide, sampleCoord).rgb;

                    // 1. 标准双线性空间权重 (线性连续，无边界跳变)
                    float wS = (x == 0 ? (1.0 - f.x) : f.x) * (y == 0 ? (1.0 - f.y) : f.y);

                    // 2. 颜色相似度权重
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
     * 软细节增强 (Soft Detail Refiner)
     * 取代暴力的锐化，只做温和的边缘收缩
     */
    val DEPTH_SHARPEN_FRAGMENT_SHADER = """#version 300 es
        precision highp float;
        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uDepthTexture;
        uniform vec2 uTexelSize;

        void main() {
            float center = texture(uDepthTexture, vTexCoord).r;
            
            // 采用极小半径平滑
            float n = texture(uDepthTexture, vTexCoord + vec2(0, uTexelSize.y)).r;
            float s = texture(uDepthTexture, vTexCoord - vec2(0, uTexelSize.y)).r;
            float e = texture(uDepthTexture, vTexCoord + vec2(uTexelSize.x, 0)).r;
            float w = texture(uDepthTexture, vTexCoord - vec2(uTexelSize.x, 0)).r;

            float avg = (n + s + e + w + center) / 5.0;
            
            // 温和的对比度拉伸，不产生硬边缘
            float refined = mix(center, smoothstep(0.05, 0.95, center), 0.3);
            
            fragColor = vec4(vec3(clamp(refined, 0.0, 1.0)), 1.0);
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
            float gap = max(abs(uFocusDepth - depth) - 0.015, 0.0);
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

            // Medium highlights must already be visibly bright and highly
            // isolated. This rejects ordinary sunlit foliage, whose linear
            // luminance was incorrectly admitted by the previous 0.07 floor.
            float mediumHighlightGate = smoothstep(0.18, 0.50, centerLuma)
                * max(
                    smoothstep(0.06, 0.18, contrast),
                    smoothstep(0.18, 0.38, relativeContrast)
                )
                * smoothstep(0.68, 0.88, darkDirectionRatio);

            // Strong point lights use a higher absolute floor. Their local
            // contrast may be slightly lower after sensor clipping, but they
            // still need a mostly dark surround to enter the peak PSF path.
            float strongPointGate = smoothstep(0.65, 0.90, centerLuma)
                * max(
                    smoothstep(0.04, 0.14, contrast),
                    smoothstep(0.12, 0.30, relativeContrast)
                )
                * smoothstep(0.62, 0.84, darkDirectionRatio);

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

            float compactHighlight = max(
                mediumHighlightGate,
                strongPointGate
            ) * localMaximumGate * centerednessGate;

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
     * 基础虚化严格按归一化权重累积，不对普通高亮施加亮度增益。被独立通道识别出的
     * 紧凑高光才会进行有限的欠曝辐射重建，并通过同一圆形口径核扩散为弥散圆。
     */
    val PSF_SPLAT_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform sampler2D uHighlightTexture;
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
            float gap = max(abs(uFocusDepth - depth) - 0.015, 0.0);
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
            float highlightIntegrationLod = max(
                0.0,
                log2(sampleFootprintUv * float(textureSize(uHighlightTexture, 0).x))
            );

            vec3 centerHighlight = textureLod(
                uHighlightTexture,
                vTexCoord,
                highlightIntegrationLod
            ).rgb;
            vec3 centerLinear = toLinear(centerColor.rgb);
            vec3 accColor = max(centerLinear - centerHighlight, vec3(0.0))
                * centerWeight;
            vec3 accCompactHighlight = centerHighlight;
            vec3 peakCompactHighlight = centerHighlight;
            float peakCompactLuma = dot(
                centerHighlight,
                vec3(0.2126, 0.7152, 0.0722)
            );
            float accWeight = centerWeight;
            float accHighlightKernelWeight = 1.0;

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
                vec3 compactHighlight = textureLod(
                    uHighlightTexture,
                    sampleUV,
                    highlightIntegrationLod
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
                    vec3 baseLinear = max(sLinear - compactHighlight, vec3(0.0));
                    accColor += baseLinear * weight;
                    accWeight += weight;
                }

                // Highlight contribution follows the source CoC, not the
                // destination CoC, so an isolated source expands into a
                // bounded circular footprint. Its own kernel denominator keeps
                // the light-source energy independent from depth-edge weights.
                float highlightWeight = fW
                    * apertureWeight(offsetPixels, sCoc)
                    * sourceVisibility;
                if (highlightWeight > 0.0001) {
                    accCompactHighlight += compactHighlight * highlightWeight;
                    accHighlightKernelWeight += highlightWeight;

                    // A normalized convolution preserves total energy but a
                    // tiny source occupies very little of a large aperture and
                    // becomes invisible in an LDR image. Keep the strongest
                    // source response so clipped point lights still form a
                    // coherent disc; compact-highlight classification prevents
                    // continuous bright regions from using this path.
                    vec3 peakCandidate = compactHighlight * highlightWeight;
                    float peakCandidateLuma = dot(
                        peakCandidate,
                        vec3(0.2126, 0.7152, 0.0722)
                    );
                    float peakWins = step(peakCompactLuma, peakCandidateLuma);
                    peakCompactHighlight = mix(
                        peakCompactHighlight,
                        peakCandidate,
                        peakWins
                    );
                    peakCompactLuma = max(peakCompactLuma, peakCandidateLuma);
                }
            }

            vec3 finalLinear = accWeight > 0.001
                ? accColor / accWeight
                : toLinear(centerColor.rgb);
            vec3 energyPreservingHighlight = accCompactHighlight
                / max(accHighlightKernelWeight, 0.001);
            if (uLinearInput != 0) {
                // Linear HDR inputs already retain scene radiance.
                finalLinear += energyPreservingHighlight;
            } else {
                // LDR point lights need a peak-preserving response to remain
                // visible after their energy is spread over the aperture disc.
                // Blend it with the normalized result to retain smooth overlap,
                // then compress stronger sources so they receive only a gentle
                // lift instead of abruptly turning white.
                vec3 reconstructedHighlight = max(
                    energyPreservingHighlight * 1.35,
                    peakCompactHighlight * 0.72
                );
                vec3 compressedHighlight = reconstructedHighlight
                    / (vec3(1.0) + reconstructedHighlight * 2.0);
                vec3 highlightOpacity = min(
                    vec3(0.52),
                    vec3(1.0) - exp(-compressedHighlight * 2.8)
                );
                finalLinear = clamp(finalLinear, 0.0, 1.0);
                finalLinear += (vec3(1.0) - finalLinear) * highlightOpacity;
            }

            vec3 finalColor = toDisplay(finalLinear);
            if (uLinearInput == 0) {
                finalColor = clamp(finalColor, 0.0, 1.0);
            }

            fragColor = vec4(finalColor, centerColor.a);
        }
    """.trimIndent()

    /**
     * Full-resolution resolve for the reduced-resolution PSF result. Focused pixels
     * come directly from the original texture; only defocused regions consume the
     * filtered bokeh texture.
     */
    val BOKEH_COMPOSITE_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uOriginalTexture;
        uniform sampler2D uBokehTexture;
        uniform sampler2D uDepthTexture;
        uniform mat4 uDepthMatrix;
        uniform float uMaxBlurRadius;
        uniform float uAperture;
        uniform float uFocusDepth;

        float computeCoc(float depth) {
            float gap = max(abs(uFocusDepth - depth) - 0.015, 0.0);
            float defocus = pow(gap, 1.1);
            return clamp(
                defocus * uMaxBlurRadius * (1.0 / max(uAperture, 0.45)),
                0.0,
                uMaxBlurRadius
            );
        }

        void main() {
            vec4 originalColor = texture(uOriginalTexture, vTexCoord);
            vec3 bokehColor = texture(uBokehTexture, vTexCoord).rgb;
            vec2 depthUV = clamp(
                (uDepthMatrix * vec4(vTexCoord, 0.0, 1.0)).xy,
                0.0,
                1.0
            );
            float coc = computeCoc(texture(uDepthTexture, depthUV).r);
            float bokehMix = smoothstep(0.2, 1.2, coc);
            fragColor = vec4(mix(originalColor.rgb, bokehColor, bokehMix), originalColor.a);
        }
    """.trimIndent()
}
