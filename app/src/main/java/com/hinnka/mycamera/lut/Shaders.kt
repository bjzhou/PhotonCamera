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
     * 片元着色器 - 带 3D LUT 支持
     * 
     * 从相机纹理采样，应用 3D LUT 颜色变换
     */
    val FRAGMENT_SHADER_LUT = """
        #version 300 es
        #extension GL_OES_EGL_image_external_essl3 : require
        
        precision mediump float;
        
        // 从顶点着色器接收的纹理坐标
        in vec2 vTexCoord;
        
        // 输出颜色
        out vec4 fragColor;
        
        // 相机 OES 纹理
        uniform samplerExternalOES uCameraTexture;
        
        // 3D LUT 纹理
        uniform mediump sampler3D uLutTexture;
        
        // LUT 尺寸
        uniform float uLutSize;
        
        // LUT 强度 (0.0 - 1.0)
        uniform float uLutIntensity;
        
        // 是否启用 LUT
        uniform bool uLutEnabled;
        
        void main() {
            // 从相机纹理采样原始颜色
            vec4 originalColor = texture(uCameraTexture, vTexCoord);
            
            if (!uLutEnabled || uLutIntensity <= 0.0) {
                // LUT 未启用，直接输出原始颜色
                fragColor = originalColor;
                return;
            }
            
            // 3D LUT 查找
            // 计算半像素偏移以避免边缘采样问题
            float scale = (uLutSize - 1.0) / uLutSize;
            float offset = 1.0 / (2.0 * uLutSize);
            
            // 将 RGB 值映射到 LUT 纹理坐标
            vec3 lutCoord = originalColor.rgb * scale + offset;
            
            // 从 3D LUT 纹理采样
            vec4 lutColor = texture(uLutTexture, lutCoord);
            
            // 根据强度混合原始颜色和 LUT 颜色
            vec3 finalColor = mix(originalColor.rgb, lutColor.rgb, uLutIntensity);
            
            fragColor = vec4(finalColor, originalColor.a);
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

    void main()
    {
        // 从相机纹理采样原始颜色
        vec4 color = texture (uCameraTexture, vTexCoord);

        // Early exit 优化：无任何调整时直接输出
        if (!uColorRecipeEnabled && !uLutEnabled) {
            fragColor = color;
            return;
        }

        // === 色彩配方处理（按专业后期流程顺序） ===
        if (uColorRecipeEnabled) {
            // 1. 曝光调整（线性空间，最先执行避免 clipping）
            color.rgb *= pow(2.0, uExposure);

            // 2. 高光/阴影调整（分区调整，基于亮度 mask）
            float luma = dot (color.rgb, vec3(0.299, 0.587, 0.114));
            float highlightMask = smoothstep (0.5, 1.0, luma);
            float shadowMask = smoothstep (0.5, 0.0, luma);
            float highlightFactor;
            if (uHighlights > 0.0) {
                highlightFactor = 1.0 + uHighlights * 0.7;
            } else {
                highlightFactor = 1.0 + uHighlights * 0.3;
            }
            color.rgb = mix(color.rgb, color.rgb * highlightFactor, highlightMask);
            vec3 shadowTarget;
            if (uShadows > 0.0) {
                shadowTarget = mix(color.rgb, vec3(1.0) * luma, uShadows * 0.2) + (color.rgb * uShadows * 0.5);
            } else {
                shadowTarget = color.rgb * (1.0 + uShadows * 0.5);
            }
            color.rgb = mix(color.rgb, shadowTarget, shadowMask);

            // 3. 对比度（围绕中灰点调整）
            color.rgb = (color.rgb - 0.5) * uContrast + 0.5;

            // 4. 白平衡调整（色温 + 色调）
            // 色温：增加暖色调（偏红）或冷色调（偏蓝）
            color.r += uTemperature * 0.1;
            color.b -= uTemperature * 0.1;
            // 色调：绿-品红偏移
            color.g += uTint * 0.05;

            // 5. 饱和度（基于 Luma 的快速算法，避免 HSL 转换）
            float gray = dot (color.rgb, vec3(0.299, 0.587, 0.114));
            color.rgb = mix(vec3(gray), color.rgb, uSaturation);

            // 6. 色彩增强（Vibrance - 选择性增强蓝色/红橙色）
            float strength = uVibrance * 0.5;
            // --- 6.1 蓝色增强 (深邃天空/水面) ---
            float baseBlue = color . b -(color.r + color.g) * 0.5;
            float blueMask = smoothstep (0.0, 0.2, baseBlue);
            if (blueMask > 0.0) {
                // 增加蓝色的纯度 (使用比例混合，避免绝对值减法产生噪点)
                color.r = mix(color.r, color.r * 0.7, blueMask * strength);
                color.g = mix(color.g, color.g * 0.7, blueMask * strength);
                // 稍微压暗蓝色，制造胶片重感 (同样使用比例混合)
                color.b = mix(color.b, color.b * 0.95, blueMask * strength);
                // 使用 S 曲线增加蓝色区域的对比度/通透感
                vec3 sCurve = color . rgb * color . rgb *(3.0 - 2.0 * color.rgb);
                color.rgb = mix(color.rgb, sCurve, blueMask * strength * 0.2);
            }
            // --- 6.2 暖色增强 (新增逻辑：红润肤色/日落) ---
            // 去除浑浊的蓝色杂质，呈现奶油般质感的红/橙色
            // 算法：检测红色分量是否显著高于蓝色 (捕捉皮肤、夕阳、木头等)
            float baseWarm = color . r -(color.g * 0.3 + color.b * 0.7);
            float warmMask = smoothstep (0.05, 0.25, baseWarm);
            if (warmMask > 0.0) {
                // 6.2.1 "去脏"：只在一定范围内应用，避免把鲜艳的红色变黑
                color.b = mix(color.b, color.b * 0.85, warmMask * strength);
                // 6.2.2 密度调整
                color.g = mix(color.g, color.g * 0.95, warmMask * strength);
                // 6.2.3 胶片感增强：使用非线性缩放而不是简单的乘法，保护亮度
                vec3 sCurve = color . rgb * color . rgb *(3.0 - 2.0 * color.rgb);
                color.rgb = mix(color.rgb, sCurve, warmMask * strength * 0.25);
            }

            // 7. 褪色效果（降低对比度 + 提升黑电平）
            if (uFade > 0.0) {
                float fadeAmount = uFade * 0.3;
                color.rgb = mix(color.rgb, vec3(0.5), fadeAmount);
                color.rgb += fadeAmount * 0.1;
            }

            // 8. 留银冲洗（Bleach Bypass - 胶片银盐保留效果）
            if (uBleachBypass > 0.0) {
                // 保留部分银盐：降低饱和度
                float luma = dot (color.rgb, vec3(0.299, 0.587, 0.114));
                vec3 desaturated = mix (color.rgb, vec3(luma), 0.6);

                // 增强对比度
                desaturated = (desaturated - 0.5) * 1.3 + 0.5;

                // 色调偏移到冷色调（青绿色）
                desaturated.r *= 0.95;
                desaturated.g *= 1.02;
                desaturated.b *= 1.05;

                // 根据强度混合
                color.rgb = mix(color.rgb, desaturated, uBleachBypass);
            }

            // 9. 晕影（Vignette - 边缘光线衰减/增强）
            if (abs(uVignette) > 0.0) {
                // 计算从中心到边缘的距离
                vec2 center = vec2 (0.5, 0.5);
                float dist = distance (vTexCoord, center);

                // 使用 smoothstep 创建平滑过渡
                // 调整衰减曲线：从0.3到0.8的范围
                float vignetteMask = smoothstep (0.8, 0.3, dist);

                // 根据 uVignette 符号决定是暗角还是亮角
                if (uVignette < 0.0) {
                    // 暗角：边缘变暗（更强的效果：从0.01到1.0）
                    color.rgb *= mix(0.01, 1.0, vignetteMask) * abs(uVignette) + (1.0 + uVignette);
                } else {
                    // 亮角：边缘变亮（增强效果）
                    color.rgb = mix(color.rgb, vec3(1.0), (1.0 - vignetteMask) * uVignette);
                }
            }

            // 10. 颗粒（Film Grain - 胶片颗粒感）
            if (uFilmGrain > 0.0) {
                // 使用纹理坐标生成伪随机噪声
                // 基于片段位置的简单哈希函数
                float noise = fract (sin(dot(vTexCoord * 1000.0, vec2(12.9898, 78.233))) * 43758.5453);

                // 将噪声从 [0,1] 映射到 [-1,1]
                noise = (noise - 0.5) * 2.0;

                // 根据亮度自适应调整颗粒强度（高光和阴影更明显）
                float luma = dot (color.rgb, vec3(0.299, 0.587, 0.114));
                float grainMask = 1.0-abs(luma-0.5) * 2.0; // 中间调弱，高光阴影强
                grainMask = grainMask * 0.5 + 0.5; // 调整到 [0.5, 1.0] 范围

                // 应用颗粒（增强强度）
                float grainStrength = uFilmGrain * 0.1 * grainMask;
                color.rgb += noise * grainStrength;
            }

            // Clamp 到合法范围
            color.rgb = clamp(color.rgb, 0.0, 1.0);
        }

        // === LUT 处理（在色彩配方之后，保持 LUT 创作意图） ===
        if (uLutEnabled && uLutIntensity > 0.0) {
            // 3D LUT 查找
            float scale =(uLutSize - 1.0) / uLutSize;
            float offset = 1.0 / (2.0 * uLutSize);

            // 将 RGB 值映射到 LUT 纹理坐标
            vec3 lutCoord = color . rgb * scale +offset;

            // 从 3D LUT 纹理采样
            vec4 lutColor = texture (uLutTexture, lutCoord);

            // 根据强度混合色彩配方处理后的颜色和 LUT 颜色
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
