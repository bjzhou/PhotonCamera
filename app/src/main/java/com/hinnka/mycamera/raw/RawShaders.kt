package com.hinnka.mycamera.raw

/**
 * RAW 图像处理的 GLSL 着色器
 *
 * 实现完整的 RAW 处理管线：
 * 1. 黑电平校正和归一化
 * 2. Malvar-He-Cutler (MHC) 解马赛克算法
 * 3. 白平衡增益
 * 4. 色彩校正矩阵 (CCM)
 * 5. Gamma 校正 (sRGB)
 */
object RawShaders {

    /**
     * 顶点着色器 - 简单的全屏四边形渲染
     */
    val VERTEX_SHADER = """
        #version 300 es
        
        in vec4 aPosition;
        in vec2 aTexCoord;
        
        out vec2 vTexCoord;
        
        uniform mat4 uTexMatrix;
        
        void main() {
            gl_Position = aPosition;
            vTexCoord = (uTexMatrix * vec4(aTexCoord, 0.0, 1.0)).xy;
        }
    """.trimIndent()

    /**
     * 片元着色器 - Linear RGB 处理管线 (用于 Stacked RAW)
     * 跳过解马赛克，但保留 CCM/Gamma/ToneMapping/Sharpening
     */
    val FRAGMENT_SHADER_LINEAR = """
        #version 300 es

        precision highp float;
        precision highp int;
        precision highp usampler2D;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform usampler2D uRawTexture; // RGB16UI
        uniform vec2 uImageSize;
        uniform mat3 uColorCorrectionMatrix;
        uniform sampler2D uLensShadingMap;
        
        uniform float uExposureGain;       // 曝光增益


        void main() {
            ivec2 coord = ivec2(gl_FragCoord.xy);
            
            // 直接读取 Linear RGB (16-bit Normalized to 0..1)
            // Stack output is 0..65535
            uvec3 raw = texelFetch(uRawTexture, coord, 0).rgb;
            vec3 rgb = vec3(raw) / 65535.0;

            // 1. CCM
            rgb = uColorCorrectionMatrix * rgb;
            
            rgb = rgb * uExposureGain;

            // Output Linear (由下一步 ToneMap Pass 处理)
            fragColor = vec4(rgb, 1.0);
        }
    """.trimIndent()

    /**
     * 全屏四边形顶点坐标
     */
    val FULL_QUAD_VERTICES = floatArrayOf(
        -1.0f, -1.0f,  // 左下
        1.0f, -1.0f,  // 右下
        -1.0f, 1.0f,  // 左上
        1.0f, 1.0f   // 右上
    )

    /**
     * 纹理坐标（Y 轴翻转，适配 Android Bitmap）
     */
    val TEXTURE_COORDS = floatArrayOf(
        0.0f, 0.0f,  // LB viewport -> Tex (0,0) [Sensor Row 0/Bottom of Tex] -> glReadPixels reads to Bitmap Top
        1.0f, 0.0f,  // RB viewport -> Tex (1,0)
        0.0f, 1.0f,  // LT viewport -> Tex (0,1)
        1.0f, 1.0f   // RT viewport -> Tex (1,1)
    )

    /**
     * 片元着色器 - 第二步：将解马赛克后的 RGB 纹理渲染到最终尺寸
     * 应用旋转、裁切和缩放
     */
    val PASSTHROUGH_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;
        
        in vec2 vTexCoord;
        out vec4 fragColor;
        
        uniform sampler2D uTexture;
        
        void main() {
            fragColor = texture(uTexture, vTexCoord);
        }
    """.trimIndent()

    /**
     * Combined Processing Shader: Tone Mapping + LUT + Sharpening
     *
     * Process chain:
     * 1. Linear RGB Input -> Exposure Gain
     * 2. Log2 Conversion (F-Log2)
     * 3. 3D LUT Application
     * 4. Contrast / Gamma (2.4/2.2)
     * 5. Sharpening (High-pass on Log Luma)
     */
    val COMBINED_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;
        
        in vec2 vTexCoord;
        out vec4 fragColor;
        
        uniform sampler2D uInputTexture;
        uniform mediump sampler3D uLutTexture;
        uniform float uLutSize;
        uniform bool uLutEnabled;
        
        uniform sampler2D uCurveTexture;
        uniform bool uCurveEnabled;
        
        uniform vec4 uLogCoeffs;  // a, b, c, d
        uniform vec4 uLogLimits;  // e, f, cut1, cut2
        uniform int uLogType;     // 0=Linear, 1=Quadratic
        uniform bool uCustomCurveEnable;
        
        float log10(float x) { return log(x) * 0.4342944819; }
        vec3 log10(vec3 x) { return log(x) * 0.4342944819; }
        
        vec3 linearToLog(vec3 reflection) {
            vec3 logPart = vec3(0.0);
            if (uLogType == 2) {
                // Power upper (sRGB style)
                logPart = uLogCoeffs.x * pow(max(vec3(0.0), reflection), vec3(uLogCoeffs.z)) + uLogCoeffs.y;
            } else {
                // Log upper
                logPart = uLogCoeffs.z * log10(uLogCoeffs.x * reflection + uLogCoeffs.y) + uLogCoeffs.w;
            }
            
            vec3 lowPart = vec3(0.0);
            if (uLogType == 1) {
                // Quadratic toe (Apple Log)
                lowPart = uLogLimits.x * pow(max(vec3(0.0), reflection - uLogLimits.y), vec3(2.0));
            } else {
                // Linear toe
                lowPart = uLogLimits.x * reflection + uLogLimits.y;
            }
            return mix(lowPart, logPart, step(uLogLimits.z, reflection));
        }
        
        vec3 applyCurve(vec3 color) {
            float luma = dot(color, vec3(0.2126, 0.7152, 0.0722));
            // 索引使用 Log 映射以覆盖高动态范围
            float samplePos = linearToLog(vec3(luma)).r;
            float targetLuma = texture(uCurveTexture, vec2(samplePos, 0.5)).r;
            
            // 在线性空间直接做乘法：即增益 (Gain)
            // 这能完美保护 Hue 和 Saturation，彻底解决 sRGB 下的脏色问题
            return color * (targetLuma / max(luma, 1e-6));
        }
        
        void main() {
            vec3 rawColor = texture(uInputTexture, vTexCoord).rgb;
            
            // 1. Exposure
            vec3 color = rawColor;
            
            // 2. 线性空间曲线应用 (Tonemapping)
            if (uCurveEnabled) {
                color = applyCurve(color);
            }
            
            // 3. 颜色空间转换 (Log or sRGB)
            color = linearToLog(color);
            
            // 4. 3D LUT
            if (uLutEnabled) {
                float scale = (uLutSize - 1.0) / uLutSize;
                float offset = 1.0 / (2.0 * uLutSize);
                vec3 lutCoord = color * scale + offset;
                color = texture(uLutTexture, lutCoord).rgb;
            }
            
            fragColor = vec4(color, 1.0);
        }
    """.trimIndent()


    /**
     * Dedicated Sharpening Shader
     * Using a Laplacian-style mask for detail enhancement
     */
    val SHARPEN_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;
        
        in vec2 vTexCoord;
        out vec4 fragColor;
        
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform float uSharpening;
        
        void main() {
            vec3 center = texture(uInputTexture, vTexCoord).rgb;
            if (uSharpening <= 0.0) {
                fragColor = vec4(center, 1.0);
                return;
            }
            
            // Simple Laplacian Sharpening
            vec3 left   = texture(uInputTexture, vTexCoord + vec2(-uTexelSize.x, 0.0)).rgb;
            vec3 right  = texture(uInputTexture, vTexCoord + vec2( uTexelSize.x, 0.0)).rgb;
            vec3 top    = texture(uInputTexture, vTexCoord + vec2(0.0, -uTexelSize.y)).rgb;
            vec3 bottom = texture(uInputTexture, vTexCoord + vec2(0.0,  uTexelSize.y)).rgb;
            
            vec3 edge = 4.0 * center - left - right - top - bottom;
            vec3 result = center + edge * (uSharpening * 0.5);
            
            fragColor = vec4(clamp(result, 0.0, 1.0), 1.0);
        }
    """.trimIndent()

    /**
     * HDR Reference Shader
     *
     * 对线性输入仅应用共享曝光归一化，不做 SDR tone mapping，
     * 供后续 gainmap 计算使用。
     */
    val HDR_REFERENCE_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;

        void main() {
            vec3 color = texture(uInputTexture, vTexCoord).rgb;
            fragColor = vec4(max(color, vec3(0.0)), 1.0);
        }
    """.trimIndent()

    /**
     * 绘制顺序索引
     */
    val DRAW_ORDER = shortArrayOf(
        0, 1, 2,  // 第一个三角形
        1, 3, 2   // 第二个三角形
    )
}
