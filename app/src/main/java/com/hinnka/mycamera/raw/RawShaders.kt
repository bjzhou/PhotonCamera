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
        
        void main() {
            gl_Position = aPosition;
            vTexCoord = aTexCoord;
        }
    """.trimIndent()

    /**
     * 片元着色器 - RAW 解马赛克处理管线
     * 
     * 使用 Malvar-He-Cutler (MHC) 算法进行 Bayer 解马赛克
     * 参考: "High-Quality Linear Interpolation for Demosaicing of Bayer-Patterned Color Images"
     * 
     * 处理流程:
     * 1. 从 RAW 纹理采样（16位单通道）
     * 2. 黑电平减除 + 归一化到 [0, 1]
     * 3. 根据 CFA 模式识别像素类型 (R/Gr/Gb/B)
     * 4. 使用 MHC 5x5 卷积核插值缺失的颜色通道
     * 5. 应用白平衡增益
     * 6. 应用色彩校正矩阵 (CCM)
     * 7. Gamma 校正转换到 sRGB
     */
    /**
     * 片元着色器 - 高质量 AHD 解马赛克处理管线
     * 
     * 实现:
     * 1. 预降噪 (基于局部方差的边缘保持平滑)
     * 2. 自适应同质导向 (AHD) 解马赛克变体
     * 3. 亮度增强 (曝光补偿 & 18% 灰对齐)
     * 4. 抗伪色 (False Color Suppression)
     */
    val FRAGMENT_SHADER_AHD = """
        #version 300 es
        
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        
        in vec2 vTexCoord;
        out vec4 fragColor;
        
        uniform usampler2D uRawTexture;
        uniform vec2 uImageSize;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        uniform vec4 uWhiteBalanceGains;
        uniform mat3 uColorCorrectionMatrix;
        
        // 额外控制
        uniform float uExposureGain;       // 曝光增益
        uniform float uBrightnessOffset;   // 亮度偏移
        uniform float uDenoiseStrength;    // 降噪强度
        
        // 高效采样并应用白平衡
        float getVal(ivec2 coord) {
            coord = clamp(coord, ivec2(0), ivec2(uImageSize) - 1);
            uint rawValue = texelFetch(uRawTexture, coord, 0).r;
            float raw = float(rawValue);
            
            int x = coord.x & 1; int y = coord.y & 1; int pos = y * 2 + x;
            float black;
            float gain;
            if (uCfaPattern == 0) { // RGGB
                if (pos == 0) { black = uBlackLevel.r; gain = uWhiteBalanceGains.r; }
                else if (pos == 1) { black = uBlackLevel.g; gain = uWhiteBalanceGains.g; }
                else if (pos == 2) { black = uBlackLevel.b; gain = uWhiteBalanceGains.b; }
                else { black = uBlackLevel.a; gain = uWhiteBalanceGains.a; }
            } else if (uCfaPattern == 1) { // GRBG
                if (pos == 0) { black = uBlackLevel.g; gain = uWhiteBalanceGains.g; }
                else if (pos == 1) { black = uBlackLevel.r; gain = uWhiteBalanceGains.r; }
                else if (pos == 2) { black = uBlackLevel.a; gain = uWhiteBalanceGains.a; }
                else { black = uBlackLevel.b; gain = uWhiteBalanceGains.b; }
            } else if (uCfaPattern == 2) { // GBRG
                if (pos == 0) { black = uBlackLevel.b; gain = uWhiteBalanceGains.b; }
                else if (pos == 1) { black = uBlackLevel.a; gain = uWhiteBalanceGains.a; }
                else if (pos == 2) { black = uBlackLevel.r; gain = uWhiteBalanceGains.r; }
                else { black = uBlackLevel.g; gain = uWhiteBalanceGains.g; }
            } else { // BGGR
                if (pos == 0) { black = uBlackLevel.a; gain = uWhiteBalanceGains.a; }
                else if (pos == 1) { black = uBlackLevel.b; gain = uWhiteBalanceGains.b; }
                else if (pos == 2) { black = uBlackLevel.g; gain = uWhiteBalanceGains.g; }
                else { black = uBlackLevel.r; gain = uWhiteBalanceGains.r; }
            }
            return max(0.0, (raw - black) * gain / (uWhiteLevel - black));
        }

        int getChannelType(ivec2 coord) {
            int x = coord.x & 1;
            int y = coord.y & 1;
            int pos = y * 2 + x;
            if (uCfaPattern == 0) { // RGGB: R, Gr, Gb, B
                if (pos == 0) return 0; if (pos == 1 || pos == 2) return 1; return 2;
            } else if (uCfaPattern == 1) { // GRBG: Gr, R, B, Gb
                if (pos == 1) return 0; if (pos == 0 || pos == 3) return 1; return 2;
            } else if (uCfaPattern == 2) { // GBRG: Gb, B, R, Gr
                if (pos == 2) return 0; if (pos == 0 || pos == 3) return 1; return 2;
            } else { // BGGR: B, Gb, Gr, R
                if (pos == 3) return 0; if (pos == 1 || pos == 2) return 1; return 2;
            }
        }

        // 精简降噪：更保守的平滑以保留细节
        float denoise(ivec2 coord, float center) {
            if (uDenoiseStrength <= 0.0) return center;
            float sum = center; float wSum = 1.0;
            float hsigma2 = 0.001 * uDenoiseStrength * uDenoiseStrength; // 更小的 sigma 保留更多纹理
            ivec2 off[4] = ivec2[4](ivec2(-2, 0), ivec2(2, 0), ivec2(0, -2), ivec2(0, 2));
            for (int i=0; i<4; i++) {
                float v = getVal(coord + off[i]);
                float d = v - center;
                float w = exp(-(d*d)/hsigma2);
                sum += v * w; wSum += w;
            }
            return sum / wSum;
        }

        // MLRI 近似插值：通过多尺度引导减少摩尔纹并提升边缘锐度
        vec3 demosaicMLRI(ivec2 coord) {
            int type = getChannelType(coord);
            float centerRaw = getVal(coord);
            float center = denoise(coord, centerRaw);
            
            // 引导 G 通道插值 (改进型 AHD)
            float finalG;
            if (type == 1) {
                finalG = center;
            } else {
                // 更精细的 5x5 梯度探测
                float dh = 0.0, dv = 0.0;
                for (int j = -2; j <= 2; j++) {
                    for (int i = -1; i <= 1; i++) {
                        dh += abs(getVal(coord + ivec2(i-1, j)) - getVal(coord + ivec2(i+1, j)));
                        dv += abs(getVal(coord + ivec2(j, i-1)) - getVal(coord + ivec2(j, i+1)));
                    }
                }
                
                float gH = (getVal(coord + ivec2(-1, 0)) + getVal(coord + ivec2(1, 0))) * 0.5 + (2.0 * centerRaw - getVal(coord + ivec2(-2, 0)) - getVal(coord + ivec2(2, 0))) * 0.25;
                float gV = (getVal(coord + ivec2(0, -1)) + getVal(coord + ivec2(0, 1))) * 0.5 + (2.0 * centerRaw - getVal(coord + ivec2(0, -2)) - getVal(coord + ivec2(0, 2))) * 0.25;
                finalG = mix(gH, gV, step(dh, dv));
            }

            // 使用残差插值 (Residual Interpolation) 计算 R/B
            float r, b;
            if (type == 0) { // Red center
                r = center;
                // b 插值
                float db1 = getVal(coord + ivec2(-1, -1)) - (getVal(coord + ivec2(-1, 0)) + getVal(coord + ivec2(0, -1))) * 0.5;
                float db2 = getVal(coord + ivec2(1, -1)) - (getVal(coord + ivec2(1, 0)) + getVal(coord + ivec2(0, -1))) * 0.5;
                float db3 = getVal(coord + ivec2(-1, 1)) - (getVal(coord + ivec2(-1, 0)) + getVal(coord + ivec2(0, 1))) * 0.5;
                float db4 = getVal(coord + ivec2(1, 1)) - (getVal(coord + ivec2(1, 0)) + getVal(coord + ivec2(0, 1))) * 0.5;
                b = finalG + (db1 + db2 + db3 + db4) * 0.25;
            } else if (type == 2) { // Blue center
                b = center;
                // r 插值
                float dr1 = getVal(coord + ivec2(-1, -1)) - (getVal(coord + ivec2(-1, 0)) + getVal(coord + ivec2(0, -1))) * 0.5;
                float dr2 = getVal(coord + ivec2(1, -1)) - (getVal(coord + ivec2(1, 0)) + getVal(coord + ivec2(0, -1))) * 0.5;
                float dr3 = getVal(coord + ivec2(-1, 1)) - (getVal(coord + ivec2(-1, 0)) + getVal(coord + ivec2(0, 1))) * 0.5;
                float dr4 = getVal(coord + ivec2(1, 1)) - (getVal(coord + ivec2(1, 0)) + getVal(coord + ivec2(0, 1))) * 0.5;
                r = finalG + (dr1 + dr2 + dr3 + dr4) * 0.25;
            } else { // Green center
                int x = coord.x & 1; int y = coord.y & 1; int pos = y * 2 + x;
                bool isGr = (uCfaPattern == 0 && pos == 1) || (uCfaPattern == 1 && pos == 0) || (uCfaPattern == 2 && pos == 3) || (uCfaPattern == 3 && pos == 2);
                if (isGr) {
                    r = finalG + (getVal(coord + ivec2(-1, 0)) - (getVal(coord + ivec2(-2, 0)) + centerRaw) * 0.5 + 
                                  getVal(coord + ivec2(1, 0)) - (getVal(coord + ivec2(2, 0)) + centerRaw) * 0.5) * 0.5;
                    b = finalG + (getVal(coord + ivec2(0, -1)) - (getVal(coord + ivec2(0, -2)) + centerRaw) * 0.5 + 
                                  getVal(coord + ivec2(0, 1)) - (getVal(coord + ivec2(0, 2)) + centerRaw) * 0.5) * 0.5;
                } else {
                    b = finalG + (getVal(coord + ivec2(-1, 0)) - (getVal(coord + ivec2(-2, 0)) + centerRaw) * 0.5 + 
                                  getVal(coord + ivec2(1, 0)) - (getVal(coord + ivec2(2, 0)) + centerRaw) * 0.5) * 0.5;
                    r = finalG + (getVal(coord + ivec2(0, -1)) - (getVal(coord + ivec2(0, -2)) + centerRaw) * 0.5 + 
                                  getVal(coord + ivec2(0, 1)) - (getVal(coord + ivec2(0, 2)) + centerRaw) * 0.5) * 0.5;
                }
            }
            return vec3(r, finalG, b);
        }

        // 纹理自适应锐化 (Texture-Aware USM)
        vec3 applyAdaptiveSharpen(vec3 color, ivec2 coord) {
            float centerLuma = dot(color, vec3(0.299, 0.587, 0.114));
            
            // 计算局部方差/对比度来判断纹理强度 (3x3 窗口)
            float meanLuma = 0.0;
            float squaredSum = 0.0;
            for(int j=-1; j<=1; j++) {
                for(int i=-1; i<=1; i++) {
                    float l = getVal(coord + ivec2(i, j));
                    meanLuma += l;
                    squaredSum += l * l;
                }
            }
            meanLuma /= 9.0;
            float variance = max(0.0, (squaredSum / 9.0) - (meanLuma * meanLuma));
            
            // 自适应增益：纹理越丰富，锐化越强，平坦区域不锐化（避免噪声放大）
            float sharpGain = clamp(variance * 60.0, 0.0, 0.6); 
            
            // 简单高通滤波
            float blurLuma = (getVal(coord + ivec2(-1, -1)) + getVal(coord + ivec2(1, -1)) + 
                              getVal(coord + ivec2(-1, 1)) + getVal(coord + ivec2(1, 1)) + 
                              (getVal(coord + ivec2(-1, 0)) + getVal(coord + ivec2(1, 0)) + 
                               getVal(coord + ivec2(0, -1)) + getVal(coord + ivec2(0, 1))) * 2.0) / 12.0;
            
            float edge = centerLuma - blurLuma;
            return color + edge * sharpGain;
        }

        // ACES Filmic Tonemapping 近似实现
        // 能够自然的压缩高光并保持阴影深度，彻底消除“线性感”
        vec3 acesFilmic(vec3 x) {
            float a = 2.51;
            float b = 0.03;
            float c = 2.43;
            float d = 0.59;
            float e = 0.14;
            return clamp((x*(a*x+b))/(x*(c*x+d)+e), 0.0, 1.0);
        }

        vec3 linearToSRGB(vec3 linear) {
            return mix(12.92 * linear, 1.055 * pow(max(linear, 0.0), vec3(1.0/2.4)) - 0.055, step(0.0031308, linear));
        }

        void main() {
            ivec2 coord = ivec2(vTexCoord * uImageSize);
            vec3 color = demosaicMLRI(coord);
            
            // 1. 曝光和增益 (在线性空间进行)
            color = color * uExposureGain + uBrightnessOffset;
            
            // 2. 自适应锐化
            color = applyAdaptiveSharpen(color, coord);
            
            // 3. CCM 色彩转换 (在线性空间转换到目标色调)
            color = uColorCorrectionMatrix * color;
            
            // 4. ACES Tonemapping (赋予电影感对比度，并压缩高光防止溢出)
            color = acesFilmic(color);
            
            // 5. 限制范围并转 sRGB (Gamma 矫正)
            fragColor = vec4(linearToSRGB(clamp(color, 0.0, 1.0)), 1.0);
        }
    """.trimIndent()

    /**
     * 全屏四边形顶点坐标
     */
    val FULL_QUAD_VERTICES = floatArrayOf(
        -1.0f, -1.0f,  // 左下
         1.0f, -1.0f,  // 右下
        -1.0f,  1.0f,  // 左上
         1.0f,  1.0f   // 右上
    )

    /**
     * 纹理坐标（Y 轴翻转，适配 Android Bitmap）
     */
    val TEXTURE_COORDS = floatArrayOf(
        0.0f, 1.0f,  // 左下 -> Bitmap 左上
        1.0f, 1.0f,  // 右下 -> Bitmap 右上
        0.0f, 0.0f,  // 左上 -> Bitmap 左下
        1.0f, 0.0f   // 右上 -> Bitmap 右下
    )

    /**
     * 绘制顺序索引
     */
    val DRAW_ORDER = shortArrayOf(
        0, 1, 2,  // 第一个三角形
        1, 3, 2   // 第二个三角形
    )
}
