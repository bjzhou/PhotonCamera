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
        
        // MVP 变换矩阵（用于 center crop 缩放）
        uniform mat4 uMVPMatrix;
        
        // SurfaceTexture 变换矩阵
        uniform mat4 uSTMatrix;
        
        void main() {
            // 应用 MVP 矩阵进行顶点变换（center crop）
            gl_Position = uMVPMatrix * aPosition;
            // 应用 SurfaceTexture 变换矩阵
            vTexCoord = (uSTMatrix * vec4(aTexCoord, 0.0, 1.0)).xy;
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

    /**
     * 片元着色器 - 带色彩配方和 3D LUT 支持
     *
     * 处理流程：相机采样 → 色彩配方调整 → LUT处理（可选） → 输出
     *
     * 性能优化：
     * - 使用 highp float 提高色彩精度
     * - Early exit 优化（无调整时直接返回）
     * - 避免 HSL 转换，使用基于 Luma 的快速饱和度算法
     */
    val FRAGMENT_SHADER_COLOR_RECIPE = """
    #version 300 es
    #extension GL_OES_EGL_image_external_essl3 : require

    precision highp float;

    // 从顶点着色器接收的纹理坐标
    in vec2 vTexCoord;

    // 输出颜色
    out vec4 fragColor;

    // 相机 OES 纹理
    uniform samplerExternalOES uCameraTexture;

    // 3D LUT 纹理
    uniform mediump sampler3D uLutTexture;

    // LUT 控制
    uniform float uLutSize;
    uniform float uLutIntensity;
    uniform bool uLutEnabled;
    uniform int uLutCurve; // 0=sRGB, 1=Linear, 2=V-Log, 3=S-Log3, 4=F-Log2, 5=LogC, 6=AppleLog, 7=HLG

    // 色彩配方控制
    uniform bool uColorRecipeEnabled;

    // 色彩配方参数（阶段1：核心3参数）
    uniform float uExposure;      // -2.0 ~ +2.0 (EV)
    uniform float uContrast;      // 0.5 ~ 1.5
    uniform float uSaturation;    // 0.0 ~ 2.0

    // 色彩配方参数（阶段1：额外3参数）
    uniform float uTemperature;   // -1.0 ~ +1.0 (暖/冷色调)
    uniform float uTint;          // -1.0 ~ +1.0 (绿/品红偏移)
    uniform float uFade;          // 0.0 ~ 1.0 (褪色效果)
    uniform float uVibrance;      // 0.0 ~ 2.0 (蓝色增强 - vibrance)

    // 色彩配方参数（阶段2：高级参数）
    uniform float uHighlights;    // -1.0 ~ +1.0 (高光调整)
    uniform float uShadows;       // -1.0 ~ +1.0 (阴影调整)

    // 色彩配方参数（阶段3：质感效果）
    uniform float uFilmGrain;     // 0.0 ~ 1.0 (颗粒强度)
    uniform float uVignette;      // -1.0 ~ +1.0 (晕影，负值暗角，正值亮角)
    uniform float uBleachBypass;  // 0.0 ~ 1.0 (留银冲洗强度)

    const vec3 W = vec3(0.2126, 0.7152, 0.0722);

    float log10(float x) { return log(x) * 0.4342944819; }
    vec3 log10(vec3 x) { return log(x) * 0.4342944819; }

    vec3 srgbToLinear(vec3 c) {
        return mix(c / 12.92, pow((c + 0.055) / 1.055, vec3(2.4)), step(0.04045, c));
    }

    vec3 applyLutCurve(vec3 rgb, int curveType) {
        if (curveType == 0) return rgb; // SRGB
        vec3 l = srgbToLinear(rgb);
        if (curveType == 1) return l; // LINEAR
        if (curveType == 2) { // V-Log
            return mix(5.6 * l + 0.125, 0.241514 * log10(l + 0.00873) + 0.598206, step(0.01, l));
        }
        if (curveType == 3) { // S-Log3
            return mix((l * (171.2102946929 - 95.0) / 0.01125 + 95.0) / 1023.0, (420.0 + log10((l + 0.01) / (0.18 + 0.01)) * 261.5) / 1023.0, step(0.01125, l));
        }
        if (curveType == 4) { // F-Log2
            return mix(8.799461 * l + 0.092864, 0.245281 * log10(5.555556 * l + 0.064829) + 0.384316, step(0.00089, l));
        }
        if (curveType == 5) { // LogC
            return mix(5.367655 * l + 0.092809, 0.247190 * log10(5.555556 * l + 0.052272) + 0.385537, step(0.010591, l));
        }
        if (curveType == 6) { // AppleLog
            return mix(mix(vec3(0.0), 47.28711236 * pow(l + 0.05641088, vec3(2.0)), step(-0.05641088, l)), 0.08550479 * (log(l + 0.00964052) / log(2.0)) + 0.69336945, step(0.01, l));
        }
        if (curveType == 7) { // HLG
            float ha = 0.17883277;
            float hb = 1.0 - 4.0 * ha;
            float hc = 0.5 - ha * log(4.0 * ha);
            return mix(sqrt(3.0 * l), ha * log(12.0 * l - hb) + hc, step(1.0 / 12.0, l));
        }
        return rgb;
    }

    void main()
    {
        // 从相机纹理采样原始颜色
        vec4 color = texture(uCameraTexture, vTexCoord);

        // Early exit 优化：无任何调整时直接输出
        if (!uColorRecipeEnabled && !uLutEnabled) {
            fragColor = color;
            return;
        }

        // === 色彩配方处理（按专业后期流程顺序） ===
        if (uColorRecipeEnabled) {
            // 1. 曝光调整（使用预计算的 pow(2, exp) 可能更优，但先保持原样或在此优化）
            if (abs(uExposure) > 0.001) {
                color.rgb *= pow(2.0, uExposure);
            }

            // 计算基础亮度，后续复用
            float luma = dot(color.rgb, W);

            // 2. 高光/阴影调整（分区调整，基于亮度 mask）
            if (abs(uHighlights) > 0.001 || abs(uShadows) > 0.001) {
                float highlightMask = smoothstep(0.5, 1.0, luma);
                float shadowMask = 1.0 - smoothstep(0.0, 0.5, luma);
                
                if (abs(uHighlights) > 0.001) {
                    float highlightFactor = 1.0 + uHighlights * (uHighlights > 0.0 ? 0.7 : 0.3);
                    color.rgb = mix(color.rgb, color.rgb * highlightFactor, highlightMask);
                }
                
                if (abs(uShadows) > 0.001) {
                    vec3 shadowTarget = (uShadows > 0.0) 
                        ? (mix(color.rgb, vec3(luma), uShadows * 0.2) + (color.rgb * uShadows * 0.5))
                        : (color.rgb * (1.0 + uShadows * 0.5));
                    color.rgb = mix(color.rgb, shadowTarget, shadowMask);
                }
                // 更新亮度
                luma = dot(color.rgb, W);
            }

            // 3. 对比度（围绕中灰点调整）
            if (abs(uContrast - 1.0) > 0.001) {
                color.rgb = (color.rgb - 0.5) * uContrast + 0.5;
            }

            // 4. 白平衡调整（色温 + 色调）
            color.r += uTemperature * 0.1;
            color.b -= uTemperature * 0.1;
            color.g += uTint * 0.05;

            // 5. 饱和度
            if (abs(uSaturation - 1.0) > 0.001) {
                luma = dot(color.rgb, W);
                color.rgb = mix(vec3(luma), color.rgb, uSaturation);
            }

            // 6. 色彩增强（Vibrance）
            if (uVibrance > 0.001) {
                float strength = uVibrance * 0.5;
                // 蓝色增强
                float baseBlue = color.b - (color.r + color.g) * 0.5;
                float blueMask = smoothstep(0.0, 0.2, baseBlue);
                if (blueMask > 0.0) {
                    color.r = mix(color.r, color.r * 0.7, blueMask * strength);
                    color.g = mix(color.g, color.g * 0.7, blueMask * strength);
                    color.b = mix(color.b, color.b * 0.95, blueMask * strength);
                    vec3 sCurve = color.rgb * color.rgb * (3.0 - 2.0 * color.rgb);
                    color.rgb = mix(color.rgb, sCurve, blueMask * strength * 0.2);
                }
                // 暖色增强
                float baseWarm = color.r - (color.g * 0.3 + color.b * 0.7);
                float warmMask = smoothstep(0.05, 0.25, baseWarm);
                if (warmMask > 0.0) {
                    color.b = mix(color.b, color.b * 0.85, warmMask * strength);
                    color.g = mix(color.g, color.g * 0.95, warmMask * strength);
                    vec3 sCurve = color.rgb * color.rgb * (3.0 - 2.0 * color.rgb);
                    color.rgb = mix(color.rgb, sCurve, warmMask * strength * 0.25);
                }
            }

            // 7. 褪色效果
            if (uFade > 0.001) {
                float fadeAmount = uFade * 0.3;
                color.rgb = mix(color.rgb, vec3(0.5), fadeAmount) + fadeAmount * 0.1;
            }

            // 8. 留银冲洗
            if (uBleachBypass > 0.001) {
                luma = dot(color.rgb, W);
                vec3 desaturated = mix(color.rgb, vec3(luma), 0.6);
                desaturated = (desaturated - 0.5) * 1.3 + 0.5;
                desaturated.r *= 0.95;
                desaturated.g *= 1.02;
                desaturated.b *= 1.05;
                color.rgb = mix(color.rgb, desaturated, uBleachBypass);
            }

            // 9. 晕影
            if (abs(uVignette) > 0.001) {
                float dist = distance(vTexCoord, vec2(0.5));
                float vignetteMask = smoothstep(0.8, 0.3, dist);
                if (uVignette < 0.0) {
                    color.rgb *= mix(0.01, 1.0, vignetteMask) * abs(uVignette) + (1.0 + uVignette);
                } else {
                    color.rgb = mix(color.rgb, vec3(1.0), (1.0 - vignetteMask) * uVignette);
                }
            }

            // 10. 颗粒
            if (uFilmGrain > 0.001) {
                float noise = fract(sin(dot(vTexCoord * 1000.0, vec2(12.9898, 78.233))) * 43758.5453);
                noise = (noise - 0.5) * 2.0;
                luma = dot(color.rgb, W);
                float grainMask = (1.0 - abs(luma - 0.5) * 2.0) * 0.5 + 0.5;
                color.rgb += noise * uFilmGrain * 0.1 * grainMask;
            }

            color.rgb = clamp(color.rgb, 0.0, 1.0);
        }

        // === LUT 处理 ===
        if (uLutEnabled && uLutIntensity > 0.0) {
            vec3 lutInColor = applyLutCurve(color.rgb, uLutCurve);
            float scale = (uLutSize - 1.0) / uLutSize;
            float offset = 1.0 / (2.0 * uLutSize);
            vec3 lutCoord = lutInColor * scale + offset;
            vec4 lutColor = texture(uLutTexture, lutCoord);
            color.rgb = mix(color.rgb, lutColor.rgb, uLutIntensity);
        }

        fragColor = color;
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
     * 绘制顺序索引
     * 使用两个三角形绘制四边形
     */
    val DRAW_ORDER = shortArrayOf(
        0, 1, 2,  // 第一个三角形
        1, 3, 2   // 第二个三角形
    )
}
