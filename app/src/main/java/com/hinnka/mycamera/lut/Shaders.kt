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

        void main() {
            // 从相机纹理采样原始颜色
            vec4 color = texture(uCameraTexture, vTexCoord);

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
                float luma = dot(color.rgb, vec3(0.299, 0.587, 0.114));
                float highlightMask = smoothstep(0.5, 1.0, luma);
                float shadowMask = smoothstep(0.5, 0.0, luma);
                color.rgb *= 1.0 + uHighlights * highlightMask;
                color.rgb *= 1.0 + uShadows * shadowMask;

                // 3. 对比度（围绕中灰点调整）
                color.rgb = (color.rgb - 0.5) * uContrast + 0.5;

                // 4. 白平衡调整（色温 + 色调）
                // 色温：增加暖色调（偏红）或冷色调（偏蓝）
                color.r += uTemperature * 0.1;
                color.b -= uTemperature * 0.1;
                // 色调：绿-品红偏移
                color.g += uTint * 0.05;

                // 5. 饱和度（基于 Luma 的快速算法，避免 HSL 转换）
                float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
                color.rgb = mix(vec3(gray), color.rgb, uSaturation);

                // 6. 蓝色增强（Vibrance - 选择性增强蓝色）
                float baseBlue = color.b - (color.r + color.g) * 0.5;
                float blueMask = smoothstep(0.0, 0.2, baseBlue); 
                float strength = (uVibrance - 1.0) * 0.5;
                if (blueMask > 0.0) {
                    vec3 densityCheck = vec3(0.3, 0.3, 0.0) * blueMask * strength;
                    color.r -= densityCheck.r * color.r;
                    color.g -= densityCheck.g * color.g;
                    color.b -= 0.05 * blueMask * strength;
                    color.rgb = mix(color.rgb, color.rgb * color.rgb * (3.0 - 2.0 * color.rgb), blueMask * strength * 0.2);
                }

                // 7. 褪色效果（降低对比度 + 提升黑电平）
                if (uFade > 0.0) {
                    float fadeAmount = uFade * 0.3;
                    color.rgb = mix(color.rgb, vec3(0.5), fadeAmount);
                    color.rgb += fadeAmount * 0.1;
                }

                // Clamp 到合法范围
                color.rgb = clamp(color.rgb, 0.0, 1.0);
            }

            // === LUT 处理（在色彩配方之后，保持 LUT 创作意图） ===
            if (uLutEnabled && uLutIntensity > 0.0) {
                // 3D LUT 查找
                float scale = (uLutSize - 1.0) / uLutSize;
                float offset = 1.0 / (2.0 * uLutSize);

                // 将 RGB 值映射到 LUT 纹理坐标
                vec3 lutCoord = color.rgb * scale + offset;

                // 从 3D LUT 纹理采样
                vec4 lutColor = texture(uLutTexture, lutCoord);

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
        -1.0f,  1.0f,  // 左上
         1.0f,  1.0f   // 右上
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
