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
