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
     * Tone Mapping Shader - Scientific HDR to LDR conversion
     * 解决 RAW 图像“灰蒙蒙”且对比度平淡的问题。
     */
    val TONEMAP_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;
        
        in vec2 vTexCoord;
        out vec4 fragColor;
        
        uniform sampler2D uInputTexture;
        uniform vec4 uToneMapParams; // (ExposureGain, DRC_Strength, BlackPoint, WhitePoint)
        uniform float uToneCurve[256];
        uniform vec2 uTexelSize;
        
        
        vec3 linearToSRGB(vec3 linear) {
            return mix(
                12.92 * linear,
                1.055 * pow(max(linear, 0.0), vec3(1.0/2.4)) - 0.055,
                step(0.0031308, linear)
            );
        }

        float applyCurve(float x) {
            float index = clamp(x, 0.0, 1.0) * 255.0;
            int i = int(floor(index));
            float f = fract(index);
            return mix(uToneCurve[i], uToneCurve[min(i + 1, 255)], f);
        }

        vec3 applyCurve(vec3 rgb) {
            return vec3(applyCurve(rgb.r), applyCurve(rgb.g), applyCurve(rgb.b));
        }
        
        vec3 ACESFilm(vec3 x) {
            float a = 2.51;
            float b = 0.03;
            float c = 2.43;
            float d = 0.59;
            float e = 0.14;
            return clamp((x * (a * x + b)) / (x * (c * x + d) + e), 0.0, 1.0);
        }

        // ==========================================
        // 轻量局部 DRC (Dynamic Range Compression)
        // ==========================================
        // 
        // 原理: 基于 Exposure Fusion / Adaptive Gain 的简化实现
        // 1. 稀疏十字采样估算局部平均亮度 (Local Average Luminance)
        // 2. 根据局部亮度与目标中灰的偏差计算自适应增益
        // 3. 暗区提亮、亮区压暗，在 Linear 域完成
        //
        // 性能: ~12 次额外纹理采样 (十字形 3 层级)
        // ==========================================
        
        float getLumaLinear(vec3 c) {
            return dot(c, vec3(0.2126, 0.7152, 0.0722));
        }
        
        // 边缘感知的稀疏十字采样计算局部平均亮度
        // 使用双边滤波思想: 距离权重 × 亮度相似性权重
        // 防止跨越明暗边界时产生 Halo 伪影
        float getLocalAvgLuma(vec2 uv, float blackPt, float exposureGain, float centerLuma) {
            float sum = centerLuma; // 包含中心像素
            float wSum = 1.0;

            // 双边滤波的 Range sigma: 控制亮度差异容忍度
            // 值越小越保边, 但太小会退化为无 DRC 效果
            float sigmaRange = 0.15;
            float invSigmaRangeSq = 1.0 / (2.0 * sigmaRange * sigmaRange);

            // 3层十字采样, 半径分别约 8, 24, 48 像素
            // 权重由内到外递减 (模拟高斯分布)
            const float radii[3] = float[3](8.0, 24.0, 48.0);
            const float weights[3] = float[3](0.50, 0.33, 0.17);

            for (int i = 0; i < 3; i++) {
                float r = radii[i];
                float wSpatial = weights[i];
                vec2 dx = vec2(r * uTexelSize.x, 0.0);
                vec2 dy = vec2(0.0, r * uTexelSize.y);

                // 十字 4 点
                vec3 s0 = max(vec3(0.0), texture(uInputTexture, uv + dx).rgb - blackPt) * exposureGain;
                vec3 s1 = max(vec3(0.0), texture(uInputTexture, uv - dx).rgb - blackPt) * exposureGain;
                vec3 s2 = max(vec3(0.0), texture(uInputTexture, uv + dy).rgb - blackPt) * exposureGain;
                vec3 s3 = max(vec3(0.0), texture(uInputTexture, uv - dy).rgb - blackPt) * exposureGain;

                float l0 = getLumaLinear(s0);
                float l1 = getLumaLinear(s1);
                float l2 = getLumaLinear(s2);
                float l3 = getLumaLinear(s3);

                // 亮度相似性权重 (Range Kernel) — 跨越边缘的样本被自动降权
                float d0 = l0 - centerLuma; float wRange0 = exp(-d0 * d0 * invSigmaRangeSq);
                float d1 = l1 - centerLuma; float wRange1 = exp(-d1 * d1 * invSigmaRangeSq);
                float d2 = l2 - centerLuma; float wRange2 = exp(-d2 * d2 * invSigmaRangeSq);
                float d3 = l3 - centerLuma; float wRange3 = exp(-d3 * d3 * invSigmaRangeSq);

                float w0 = wSpatial * wRange0;
                float w1 = wSpatial * wRange1;
                float w2 = wSpatial * wRange2;
                float w3 = wSpatial * wRange3;

                sum += l0 * w0 + l1 * w1 + l2 * w2 + l3 * w3;
                wSum += w0 + w1 + w2 + w3;
            }
            return sum / wSum;
        }
        
        vec3 applyHighlightRecovery(vec3 color) {
            float threshold = 0.9;
            float maxOutput = 1.0;
            float maxVal = max(color.r, max(color.g, color.b));
            if (maxVal <= threshold) {
                return color;
            }
            float range = maxOutput - threshold;
            float over = maxVal - threshold;

            float compressedMax = threshold + (over * range) / (over + range);
            
            return color * (compressedMax / maxVal);
        }
        
        void main() {
            vec3 rawColor = texture(uInputTexture, vTexCoord).rgb;
            
            float gain = uToneMapParams.x;
            float drcStrength = uToneMapParams.y;
            float blackPoint = uToneMapParams.z;
            float whitePoint = uToneMapParams.w;
            
            // 1. 扣除黑点
            vec3 color = max(vec3(0.0), rawColor - blackPoint);
            
            // 2. 应用曝光增益
            color *= gain;

            // 3. 局部 DRC (边缘感知)
            if (drcStrength > 0.01) {
                float pixelLuma = getLumaLinear(color);
                float localAvg = getLocalAvgLuma(vTexCoord, blackPoint, gain, pixelLuma);
                
                float eps = 0.001;
                
                float targetMidGray = 0.18;
                float localGain = targetMidGray / max(localAvg, eps);
                localGain = clamp(localGain, 0.5, 4.0);
                
                // 平滑过渡: 对极暗和极亮区域减弱 DRC 效果，避免噪声放大和高光过曝
                float lumaMask = smoothstep(0.0, 0.05, pixelLuma) * smoothstep(0.9, 0.6, pixelLuma);
                float effectiveStrength = drcStrength * lumaMask;
                
                float adaptiveGain = mix(1.0, localGain, effectiveStrength);
                color *= adaptiveGain;
            }
            
            color = applyHighlightRecovery(color);

            // 5. 应用自定义 ToneCurve
            color = applyCurve(color);
            
            // 6. 应用 sRGB Gamma 空间转换
            color = linearToSRGB(color);
            
            fragColor = vec4(color, 1.0);
        }
    """.trimIndent()


    /**
     * 绘制顺序索引
     */
    val DRAW_ORDER = shortArrayOf(
        0, 1, 2,  // 第一个三角形
        1, 3, 2   // 第二个三角形
    )


    /**
     * LUT + ColorRecipe Fragment Shader
     * 处理流程：Input Texture -> ColorRecipe -> LUT -> Output
     */
    val LUT_FRAGMENT_SHADER = """
            #version 300 es

            precision highp float;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uInputTexture;
            uniform mediump sampler3D uLutTexture;
            uniform float uLutSize;
            uniform float uLutIntensity;
            uniform bool uLutEnabled;
            uniform int uLutCurve;

            // 色彩配方控制
            uniform bool uColorRecipeEnabled;

            // 色彩配方参数
            uniform float uExposure;      // -2.0 ~ +2.0 (EV)
            uniform float uContrast;      // 0.5 ~ 1.5
            uniform float uSaturation;    // 0.0 ~ 2.0
            uniform float uTemperature;   // -1.0 ~ +1.0 (暖/冷色调)
            uniform float uTint;          // -1.0 ~ +1.0 (绿/品红偏移)
            uniform float uFade;          // 0.0 ~ 1.0 (褪色效果)
            uniform float uVibrance;      // 0.0 ~ 2.0 (蓝色增强)
            uniform float uHighlights;    // -1.0 ~ +1.0 (高光调整)
            uniform float uShadows;       // -1.0 ~ +1.0 (阴影调整)
            uniform float uFilmGrain;     // 0.0 ~ 1.0 (颗粒强度)
            uniform float uVignette;      // -1.0 ~ +1.0 (晕影)
            uniform float uBleachBypass;  // 0.0 ~ 1.0 (留银冲洗强度)
            uniform vec2 uTexelSize;      // 像素尺寸（用于后处理）

            // 后期处理参数
            uniform float uSharpening;           // 0.0 ~ 1.0 (锐化强度)
            uniform float uNoiseReduction;       // 0.0 ~ 1.0 (降噪强度)
            uniform float uChromaNoiseReduction; // 0.0 ~ 1.0 (减少杂色强度)

            // RGB 转 YCbCr
            vec3 rgb2ycbcr(vec3 rgb) {
                float y  =  0.299 * rgb.r + 0.587 * rgb.g + 0.114 * rgb.b;
                float cb = -0.169 * rgb.r - 0.331 * rgb.g + 0.500 * rgb.b + 0.5;
                float cr =  0.500 * rgb.r - 0.419 * rgb.g - 0.081 * rgb.b + 0.5;
                return vec3(y, cb, cr);
            }

            // YCbCr 转 RGB
            vec3 ycbcr2rgb(vec3 ycbcr) {
                float y  = ycbcr.x;
                float cb = ycbcr.y - 0.5;
                float cr = ycbcr.z - 0.5;
                float r = y + 1.402 * cr;
                float g = y - 0.344 * cb - 0.714 * cr;
                float b = y + 1.772 * cb;
                return vec3(r, g, b);
            }
            
            float getLuma(vec3 color) {
                return dot(color, vec3(0.299, 0.587, 0.114));
            }

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

            void main() {
                // 从输入纹理采样原始颜色
                vec4 color = texture(uInputTexture, vTexCoord);

                // === 色彩配方处理 ===
                if (uColorRecipeEnabled) {
                    // 1. 曝光调整（线性空间，最先执行避免 clipping）
                    color.rgb *= pow(2.0, uExposure);

                    // 2. 高光/阴影调整（分区调整，基于亮度 mask）
                    float luma = dot(color.rgb, vec3(0.299, 0.587, 0.114));
                    float highlightMask = smoothstep(0.5, 1.0, luma);
                    float shadowMask = smoothstep(0.5, 0.0, luma);
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
                    color.r += uTemperature * 0.1;
                    color.b -= uTemperature * 0.1;
                    color.g += uTint * 0.05;

                    // 5. 饱和度（基于 Luma 的快速算法）
                    float gray = dot(color.rgb, vec3(0.299, 0.587, 0.114));
                    color.rgb = mix(vec3(gray), color.rgb, uSaturation);

                    // 6. 色彩增强（Vibrance）
                    float strength = uVibrance * 0.5;
                    // --- 6.1 蓝色增强 (深邃天空/水面) ---
                    float baseBlue = color.b - (color.r + color.g) * 0.5;
                    float blueMask = smoothstep(0.0, 0.2, baseBlue); 
                    if (blueMask > 0.0) {
                        // 增加蓝色的纯度 (使用比例混合，避免绝对值减法产生噪点)
                        color.r = mix(color.r, color.r * 0.7, blueMask * strength);
                        color.g = mix(color.g, color.g * 0.7, blueMask * strength);
                        // 稍微压暗蓝色，制造胶片重感 (同样使用比例混合)
                        color.b = mix(color.b, color.b * 0.95, blueMask * strength);
                        // 使用 S 曲线增加蓝色区域的对比度/通透感
                        vec3 sCurve = color.rgb * color.rgb * (3.0 - 2.0 * color.rgb);
                        color.rgb = mix(color.rgb, sCurve, blueMask * strength * 0.2);
                    }
                    // --- 6.2 暖色增强 (新增逻辑：红润肤色/日落) ---
                    // 去除浑浊的蓝色杂质，呈现奶油般质感的红/橙色
                    // 算法：检测红色分量是否显著高于蓝色 (捕捉皮肤、夕阳、木头等)
                    float baseWarm = color.r - (color.g * 0.3 + color.b * 0.7); 
                    float warmMask = smoothstep(0.05, 0.25, baseWarm);
                    if (warmMask > 0.0) {
                        // 6.2.1 "去脏"：只在一定范围内应用，避免把鲜艳的红色变黑
                        color.b = mix(color.b, color.b * 0.85, warmMask * strength); 
                        // 6.2.2 密度调整
                        color.g = mix(color.g, color.g * 0.95, warmMask * strength); 
                        // 6.2.3 胶片感增强：使用非线性缩放而不是简单的乘法，保护亮度
                        vec3 sCurve = color.rgb * color.rgb * (3.0 - 2.0 * color.rgb);
                        color.rgb = mix(color.rgb, sCurve, warmMask * strength * 0.25);
                    }

                    // 7. 褪色效果
                    if (uFade > 0.0) {
                        float fadeAmount = uFade * 0.3;
                        color.rgb = mix(color.rgb, vec3(0.5), fadeAmount);
                        color.rgb += fadeAmount * 0.1;
                    }

                    // 8. 留银冲洗（Bleach Bypass）
                    if (uBleachBypass > 0.0) {
                        float luma = dot(color.rgb, vec3(0.299, 0.587, 0.114));
                        vec3 desaturated = mix(color.rgb, vec3(luma), 0.6);
                        desaturated = (desaturated - 0.5) * 1.3 + 0.5;
                        desaturated.r *= 0.95;
                        desaturated.g *= 1.02;
                        desaturated.b *= 1.05;
                        color.rgb = mix(color.rgb, desaturated, uBleachBypass);
                    }

                    // 9. 晕影（Vignette）
                    if (abs(uVignette) > 0.0) {
                        vec2 center = vec2(0.5, 0.5);
                        float dist = distance(vTexCoord, center);
                        float vignetteMask = smoothstep(0.8, 0.3, dist);
                        if (uVignette < 0.0) {
                            color.rgb *= mix(0.01, 1.0, vignetteMask) * abs(uVignette) + (1.0 + uVignette);
                        } else {
                            color.rgb = mix(color.rgb, vec3(1.0), (1.0 - vignetteMask) * uVignette);
                        }
                    }

                    // 10. 颗粒（Film Grain）
                    if (uFilmGrain > 0.0) {
                        float noise = fract(sin(dot(vTexCoord * 1000.0, vec2(12.9898, 78.233))) * 43758.5453);
                        noise = (noise - 0.5) * 2.0;
                        float luma = dot(color.rgb, vec3(0.299, 0.587, 0.114));
                        float grainMask = 1.0 - abs(luma - 0.5) * 2.0;
                        grainMask = grainMask * 0.5 + 0.5;
                        float grainStrength = uFilmGrain * 0.1 * grainMask;
                        color.rgb += noise * grainStrength;
                    }

                    // Clamp 到合法范围
                    color.rgb = clamp(color.rgb, 0.0, 1.0);
                }

                // === LUT 处理（在色彩配方之后） ===
                if (uLutEnabled && uLutIntensity > 0.0) {
                    // 3D LUT 查找
                    vec3 lutInColor = applyLutCurve(color.rgb, uLutCurve);
                    float scale = (uLutSize - 1.0) / uLutSize;
                    float offset = 1.0 / (2.0 * uLutSize);

                    // 将 RGB 值映射到 LUT 纹理坐标
                    vec3 lutCoord = lutInColor * scale + offset;

                    // 从 3D LUT 纹理采样
                    vec4 lutColor = texture(uLutTexture, lutCoord);

                    // 根据强度混合色彩配方处理后的颜色和 LUT 颜色
                    color.rgb = mix(color.rgb, lutColor.rgb, uLutIntensity);
                }

                // === 后期处理：锐化（在 LUT 之后，作为最后步骤） ===
                if (uSharpening > 0.0) {
                    // 使用基于亮度的 Unsharp Mask，避免色彩污染
                    // 1. 计算原始图像的亮度
                    vec3 inputColor = texture(uInputTexture, vTexCoord).rgb;
                    float inputLuma = dot(inputColor, vec3(0.299, 0.587, 0.114));
    
                    // 2. 计算周围像素的平均亮度 (Blur Luma)
                    float neighborsLuma = 0.0;
                    neighborsLuma += dot(texture(uInputTexture, vTexCoord + vec2(-uTexelSize.x, 0.0)).rgb, vec3(0.299, 0.587, 0.114));
                    neighborsLuma += dot(texture(uInputTexture, vTexCoord + vec2(uTexelSize.x, 0.0)).rgb, vec3(0.299, 0.587, 0.114));
                    neighborsLuma += dot(texture(uInputTexture, vTexCoord + vec2(0.0, -uTexelSize.y)).rgb, vec3(0.299, 0.587, 0.114));
                    neighborsLuma += dot(texture(uInputTexture, vTexCoord + vec2(0.0, uTexelSize.y)).rgb, vec3(0.299, 0.587, 0.114));
                    float blurLuma = neighborsLuma * 0.25;
    
                    // 3. 计算亮度高频分量 (Detail)
                    float detail = inputLuma - blurLuma;
    
                    // 4. 将亮度细节叠加到最终输出颜色上
                    float sharpenAmount = uSharpening * 1.5;
                    color.rgb += detail * sharpenAmount;
    
                    // Clamp 防止过曝
                    color.rgb = clamp(color.rgb, 0.0, 1.0);
                }

                fragColor = color;
            }
        """.trimIndent()
}
