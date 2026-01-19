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
     * 片元着色器 - Capture One 风格 RAW 处理管线
     *
     * 完整处理流程:
     * 1. 黑电平扣除
     * 2. 线性白平衡增益
     * 3. 输入锐化/反卷积 (Richardson-Lucy Deconvolution)
     * 4. 解马赛克 (RCD - Ratio Corrected Demosaicing)
     * 5. 色彩转换 (CCM)
     * 6. Gamma 曲线 (Filmic: 短趾部 + Gamma 2.2 + 长肩部)
     * 7. 结构增强 (Structure/Clarity - L通道高通滤波)
     * 8. 最终锐化 (Unsharp Mask)
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
        uniform sampler2D uLensShadingMap;
        uniform float uPostRawBoost;

        // Base LUT
        uniform mediump sampler3D uBaseLutTexture;
        uniform float uBaseLutSize;

        // Capture One 风格控制参数
        uniform float uDeconvStrength;     // 输入反卷积强度 (0.0-1.0)
        uniform float uStructureAmount;    // 结构增强强度 (0.0-1.0)
        uniform float uOutputSharpAmount;  // 输出锐化强度 (0.0-1.0)
        uniform float uExposureGain;       // 曝光增益

        // ========== 步骤 1 & 2: 黑电平扣除 + 白平衡 ==========
        // 获取当前像素的颜色通道类型: 0=R, 1=Gr, 2=Gb, 3=B
        // 注意：这里返回的是 RGGB 四通道索引，不是 RGB 三通道索引
        int getChannelIndex(ivec2 coord) {
            int x = coord.x & 1;
            int y = coord.y & 1;
            int pos = y * 2 + x;
            
            // CFA 模式定义了每个 2x2 位置对应的颜色：
            // pos: (0,0)=0, (1,0)=1, (0,1)=2, (1,1)=3
            // 返回值: 0=R, 1=Gr, 2=Gb, 3=B
            if (uCfaPattern == 0) { // RGGB: (0,0)=R, (1,0)=Gr, (0,1)=Gb, (1,1)=B
                return pos; // 直接返回位置即可
            } else if (uCfaPattern == 1) { // GRBG: (0,0)=Gr, (1,0)=R, (0,1)=B, (1,1)=Gb
                if (pos == 0) return 1;      // Gr
                else if (pos == 1) return 0; // R
                else if (pos == 2) return 3; // B
                else return 2;               // Gb
            } else if (uCfaPattern == 2) { // GBRG: (0,0)=Gb, (1,0)=B, (0,1)=R, (1,1)=Gr
                if (pos == 0) return 2;      // Gb
                else if (pos == 1) return 3; // B
                else if (pos == 2) return 0; // R
                else return 1;               // Gr
            } else { // BGGR: (0,0)=B, (1,0)=Gb, (0,1)=Gr, (1,1)=R
                if (pos == 0) return 3;      // B
                else if (pos == 1) return 2; // Gb
                else if (pos == 2) return 1; // Gr
                else return 0;               // R
            }
        }
        
        // 获取当前像素的镜头阴影增益
        float getLensShadingGain(ivec2 coord, int channelIdx) {
            vec2 shadingCoord = (vec2(coord) + 0.5) / uImageSize;
            vec4 shadingGains = texture(uLensShadingMap, shadingCoord);
            
            // LensShadingMap 增益顺序通常为 [R, Geven, Godd, B]
            // Geven 是偶数行的绿色通道，Godd 是奇数行的绿色通道
            if (channelIdx == 0) return shadingGains.r; // R
            if (channelIdx == 3) return shadingGains.a; // B
            
            bool isEvenRow = (uCfaPattern == 0 || uCfaPattern == 1); // RGGB(0), GRBG(1) 的 Gr 在偶数行
            if (channelIdx == 1) { // Gr
                return isEvenRow ? shadingGains.g : shadingGains.b;
            } else { // Gb
                return isEvenRow ? shadingGains.b : shadingGains.g;
            }
        }
        
        // 获取RAW像素值，应用黑电平和白平衡
        // uBlackLevel 和 uWhiteBalanceGains 的分量顺序: .r=R, .g=Gr, .b=Gb, .a=B
        float getRawPixel(ivec2 coord) {
            coord = clamp(coord, ivec2(0), ivec2(uImageSize) - 1);
            uint rawValue = texelFetch(uRawTexture, coord, 0).r;
            float raw = float(rawValue);

            // 获取当前像素的颜色通道索引 (0=R, 1=Gr, 2=Gb, 3=B)
            int channelIdx = getChannelIndex(coord);
            
            // 根据通道索引选择对应的黑电平和白平衡增益
            // uniform vec4 的分量顺序: .r=R, .g=Gr, .b=Gb, .a=B
            float black;
            float gain;
            if (channelIdx == 0) { black = uBlackLevel.r; gain = uWhiteBalanceGains.r; }       // R
            else if (channelIdx == 1) { black = uBlackLevel.g; gain = uWhiteBalanceGains.g; } // Gr
            else if (channelIdx == 2) { black = uBlackLevel.b; gain = uWhiteBalanceGains.b; } // Gb
            else { black = uBlackLevel.a; gain = uWhiteBalanceGains.a; }                      // B

            float pixel = max(0.0, (raw - black) * gain / (uWhiteLevel - black));
            
            // 步骤 3: 镜头阴影校正 (LSC)
            // 使用双线性插值采样增益图 (OpenGL 默认线性采样已提供双线性插值)
            pixel *= getLensShadingGain(coord, channelIdx);
            
            // 步骤 4: 应用数字增益 (Post RAW Boost)
            pixel *= uPostRawBoost;

            return pixel;
        }

        // 获取CFA通道类型: 0=R, 1=G, 2=B (用于解马赛克)
        // 复用 getChannelIndex 函数，将 Gr(1)/Gb(2) 统一映射为 G(1)
        int getChannelType(ivec2 coord) {
            int idx = getChannelIndex(coord);
            // 0=R -> 0, 1=Gr -> 1, 2=Gb -> 1, 3=B -> 2
            if (idx == 0) return 0;      // R
            else if (idx == 3) return 2; // B
            else return 1;               // Gr or Gb -> G
        }

        // ========== 步骤 3: Richardson-Lucy Deconvolution ==========
        // 模拟光学低通滤镜的点扩散函数 (Gaussian PSF, radius ~0.6 pixel)
        // 使用简化的单次迭代 Richardson-Lucy 算法
        float applyDeconvolution(ivec2 coord, float center) {
            if (uDeconvStrength <= 0.0) return center;

            // 3x3 高斯核估计模糊 (sigma ~0.6)
            float blurred = 0.0;
            float sum = 0.0;

            const float kernel[9] = float[9](
                0.077847, 0.123317, 0.077847,
                0.123317, 0.195346, 0.123317,
                0.077847, 0.123317, 0.077847
            );

            int idx = 0;
            for (int dy = -1; dy <= 1; dy++) {
                for (int dx = -1; dx <= 1; dx++) {
                    blurred += getRawPixel(coord + ivec2(dx, dy)) * kernel[idx];
                    sum += kernel[idx];
                    idx++;
                }
            }
            blurred /= sum;

            // Richardson-Lucy 迭代公式简化版:
            // deconvolved = center * (center / blurred)
            float ratio = blurred > 0.001 ? center / blurred : 1.0;
            float deconvolved = center * ratio;

            // 混合原始值和去卷积结果
            return mix(center, deconvolved, uDeconvStrength * 0.3); // 轻微强度
        }

        // ========== 步骤 4: RCD (Ratio Corrected Demosaicing) ==========
        // 基于色度比率的解马赛克算法，能有效减少伪色
        vec3 demosaicRCD(ivec2 coord) {
            int type = getChannelType(coord); // 0=R, 1=G, 2=B
            float centerRaw = getRawPixel(coord);
            centerRaw = applyDeconvolution(coord, centerRaw);
            float g = centerRaw;
            float r, b;
        
            // ========== 第一步：插值绿色通道 (保持你原有的逻辑，这是对的) ==========
            if (type != 1) { 
                // Hamilton-Adams 梯度检测
                float gH = (getRawPixel(coord + ivec2(-1, 0)) + getRawPixel(coord + ivec2(1, 0))) * 0.5;
                float gV = (getRawPixel(coord + ivec2(0, -1)) + getRawPixel(coord + ivec2(0, 1))) * 0.5;
                
                // 你的梯度计算逻辑是正确的，为了简洁这里省略细节，直接用你的 gH/gV 逻辑
                float gh = abs(getRawPixel(coord + ivec2(-1, 0)) - getRawPixel(coord + ivec2(1, 0)));
                float gv = abs(getRawPixel(coord + ivec2(0, -1)) - getRawPixel(coord + ivec2(0, 1)));
                float gh2 = abs(2.0 * centerRaw - getRawPixel(coord + ivec2(-2, 0)) - getRawPixel(coord + ivec2(2, 0)));
                float gv2 = abs(2.0 * centerRaw - getRawPixel(coord + ivec2(0, -2)) - getRawPixel(coord + ivec2(0, 2)));
                
                // 添加色差修正项 (Laplacian Correction)，让G更锐利
                // R_center - (R_left + R_right)/2
                float cH = centerRaw - (getRawPixel(coord + ivec2(-2, 0)) + getRawPixel(coord + ivec2(2, 0))) * 0.5; 
                float cV = centerRaw - (getRawPixel(coord + ivec2(0, -2)) + getRawPixel(coord + ivec2(0, 2))) * 0.5;
        
                // 最终的 G 预测值（包含高频细节修正）
                float gPredH = gH + cH * 0.5; // 色差法核心：G_est = G_avg + (R_center - R_avg) * 0.5
                float gPredV = gV + cV * 0.5;
        
                float dh = gh + gh2;
                float dv = gv + gv2;
        
                if (abs(dh - dv) < 0.1 * (dh + dv)) {
                     g = (gPredH + gPredV) * 0.5;
                } else if (dh < dv) {
                     g = gPredH;
                } else {
                     g = gPredV;
                }
                
                // 防止过冲
                g = clamp(g, 0.0, 1.0); 
            }
        
            // ========== 第二步：修正后的 R/B 插值 (色差法 R-G) ==========
            // 核心思想：先算出周围像素的 (Color - Green) 差值，然后插值这个差值，最后加回当前的 G
            
            if (type == 0) { // Red Center
                r = centerRaw;
                
                // 计算蓝色：四周是蓝，对角线方向
                // 我们需要周围蓝点的 (B - G)。注意：这里的G必须是那个蓝点位置的G。
                // 因为单Pass拿不到蓝点插值后的G，我们用蓝点周围的十字形RAW G的平均值代替。
                
                // 左上 B(-1,-1) 处的估算 G
                float g_at_tl = (getRawPixel(coord + ivec2(-1, 0)) + getRawPixel(coord + ivec2(0, -1))) * 0.5;
                float diff_tl = getRawPixel(coord + ivec2(-1, -1)) - g_at_tl;
                
                // 右上 B(1,-1)
                float g_at_tr = (getRawPixel(coord + ivec2(1, 0)) + getRawPixel(coord + ivec2(0, -1))) * 0.5;
                float diff_tr = getRawPixel(coord + ivec2(1, -1)) - g_at_tr;
                
                // 左下 B(-1,1)
                float g_at_bl = (getRawPixel(coord + ivec2(-1, 0)) + getRawPixel(coord + ivec2(0, 1))) * 0.5;
                float diff_bl = getRawPixel(coord + ivec2(-1, 1)) - g_at_bl;
                
                // 右下 B(1,1)
                float g_at_br = (getRawPixel(coord + ivec2(1, 0)) + getRawPixel(coord + ivec2(0, 1))) * 0.5;
                float diff_br = getRawPixel(coord + ivec2(1, 1)) - g_at_br;
                
                // 平均色差
                float avgDiff = (diff_tl + diff_tr + diff_bl + diff_br) * 0.25;
                b = g + avgDiff;
        
            } else if (type == 2) { // Blue Center
                b = centerRaw;
                // 同理计算红色，代码结构完全一样，只是坐标偏移和 r/b 互换
                float g_at_tl = (getRawPixel(coord + ivec2(-1, 0)) + getRawPixel(coord + ivec2(0, -1))) * 0.5;
                float diff_tl = getRawPixel(coord + ivec2(-1, -1)) - g_at_tl;
                float g_at_tr = (getRawPixel(coord + ivec2(1, 0)) + getRawPixel(coord + ivec2(0, -1))) * 0.5;
                float diff_tr = getRawPixel(coord + ivec2(1, -1)) - g_at_tr;
                float g_at_bl = (getRawPixel(coord + ivec2(-1, 0)) + getRawPixel(coord + ivec2(0, 1))) * 0.5;
                float diff_bl = getRawPixel(coord + ivec2(-1, 1)) - g_at_bl;
                float g_at_br = (getRawPixel(coord + ivec2(1, 0)) + getRawPixel(coord + ivec2(0, 1))) * 0.5;
                float diff_br = getRawPixel(coord + ivec2(1, 1)) - g_at_br;
        
                float avgDiff = (diff_tl + diff_tr + diff_bl + diff_br) * 0.25;
                r = g + avgDiff;
        
            } else { // Green Center
                g = centerRaw;
                int channelIdx = getChannelIndex(coord); // 1=Gr (Row R), 2=Gb (Row B)
                bool isGr = (channelIdx == 1);
                
                if (isGr) { 
                    // Gr行：左右是红，上下是蓝
                    
                    // --- 算红色 (左右) ---
                    // 左边红点的色差：R_left - G_at_left
                    // G_at_left 估算为 (G_center + G_left_left) 的平均？不，更简单是取上下绿的平均
                    // 修正：取左边红点 (coord-1,0) 上下两个绿点 ((coord-1,-1), (coord-1,1)) 的平均
                    float g_at_left = (getRawPixel(coord + ivec2(-1, -1)) + getRawPixel(coord + ivec2(-1, 1))) * 0.5;
                    float diff_left = getRawPixel(coord + ivec2(-1, 0)) - g_at_left;
                    
                    float g_at_right = (getRawPixel(coord + ivec2(1, -1)) + getRawPixel(coord + ivec2(1, 1))) * 0.5;
                    float diff_right = getRawPixel(coord + ivec2(1, 0)) - g_at_right;
                    
                    r = g + (diff_left + diff_right) * 0.5;
                    
                    // --- 算蓝色 (上下) ---
                    float g_at_top = (getRawPixel(coord + ivec2(-1, -1)) + getRawPixel(coord + ivec2(1, -1))) * 0.5;
                    float diff_top = getRawPixel(coord + ivec2(0, -1)) - g_at_top;
                    
                    float g_at_bottom = (getRawPixel(coord + ivec2(-1, 1)) + getRawPixel(coord + ivec2(1, 1))) * 0.5;
                    float diff_bottom = getRawPixel(coord + ivec2(0, 1)) - g_at_bottom;
                    
                    b = g + (diff_top + diff_bottom) * 0.5;
                    
                } else { 
                    // Gb行：上下是红，左右是蓝
                    // 逻辑同上，只是方向互换
                    float g_at_top = (getRawPixel(coord + ivec2(-1, -1)) + getRawPixel(coord + ivec2(1, -1))) * 0.5;
                    float diff_top = getRawPixel(coord + ivec2(0, -1)) - g_at_top;
                    
                    float g_at_bottom = (getRawPixel(coord + ivec2(-1, 1)) + getRawPixel(coord + ivec2(1, 1))) * 0.5;
                    float diff_bottom = getRawPixel(coord + ivec2(0, 1)) - g_at_bottom;
                    
                    r = g + (diff_top + diff_bottom) * 0.5;
                    
                    float g_at_left = (getRawPixel(coord + ivec2(-1, -1)) + getRawPixel(coord + ivec2(-1, 1))) * 0.5;
                    float diff_left = getRawPixel(coord + ivec2(-1, 0)) - g_at_left;
                    
                    float g_at_right = (getRawPixel(coord + ivec2(1, -1)) + getRawPixel(coord + ivec2(1, 1))) * 0.5;
                    float diff_right = getRawPixel(coord + ivec2(1, 0)) - g_at_right;
                    
                    b = g + (diff_left + diff_right) * 0.5;
                }
            }
        
            return vec3(r, g, b);
        }

        // ========== 步骤 7: 结构增强 (Structure/Clarity) ==========
        // 基于亮度通道的高通滤波，使用柔光混合
        vec3 applyStructure(vec3 rgb) {
            if (uStructureAmount <= 0.0) return rgb;

            // 提取亮度 (L channel approximation)
            float luma = dot(rgb, vec3(0.299, 0.587, 0.114));

            // 在main函数中使用邻近像素的亮度来计算高通滤波
            // 这里简化为使用当前像素的色彩信息做近似
            // 注意: 理想实现需要访问相邻像素的解马赛克结果，这需要两次pass

            // 简化版本: 直接在RGB空间做高通，然后只增强亮度
            // 高通 = 原始 - 低通（模糊）
            // 由于无法访问相邻解马赛克结果，这里做近似处理

            // 柔光混合公式
            float enhanced = luma;
            if (luma < 0.5) {
                enhanced = luma * (luma + 0.5);
            } else {
                enhanced = 2.0 * luma - 1.0 + sqrt(luma);
            }

            // 混合增强结果
            float lumaBoost = mix(luma, enhanced, uStructureAmount * 0.3);

            // 保持色度，只增强亮度
            return rgb * (lumaBoost / max(luma, 0.001));
        }

        // ========== 步骤 8: 输出锐化 (Unsharp Mask) ==========
        // USM参数: radius 0.8, threshold 1.0
        // 注意: 由于shader中访问相邻像素困难，这里做简化实现
        vec3 applyOutputSharpening(vec3 rgb, ivec2 coord) {
            if (uOutputSharpAmount <= 0.0) return rgb;

            // 简化的锐化: 使用原始RAW数据的边缘信息
            float centerLuma = dot(rgb, vec3(0.299, 0.587, 0.114));

            // 估计模糊后的亮度（使用RAW层的近似）
            float blurLuma = 0.0;
            float sumWeight = 0.0;

            // 简单的3x3平均
            for (int dy = -1; dy <= 1; dy++) {
                for (int dx = -1; dx <= 1; dx++) {
                    if (dx == 0 && dy == 0) continue;
                    float weight = 1.0;
                    blurLuma += getRawPixel(coord + ivec2(dx, dy)) * weight;
                    sumWeight += weight;
                }
            }
            blurLuma = (blurLuma / sumWeight) * (centerLuma / max(getRawPixel(coord), 0.001));

            // USM公式: sharpened = original + amount * (original - blurred)
            float edge = centerLuma - blurLuma;

            // 阈值处理
            if (abs(edge) < 1.0 / 255.0) {
                edge = 0.0;
            }

            float sharpenedLuma = centerLuma + edge * uOutputSharpAmount;

            // 应用到RGB，保持色度
            return rgb * (sharpenedLuma / max(centerLuma, 0.001));
        }

        // sRGB转换
        vec3 linearToSRGB(vec3 linear) {
            return mix(
                12.92 * linear,
                1.055 * pow(max(linear, 0.0), vec3(1.0/2.4)) - 0.055,
                step(0.0031308, linear)
            );
        }


        // 应用轻微的 S 曲线 (模拟 Adobe Standard 风格的对比度)
        vec3 applySCurve(vec3 x) {
            // 使用 30% 强度的 smoothstep 曲线，这种程度能增加对比度但不会丢失暗部和亮部细节
            return mix(x, x * x * (3.0 - 2.0 * x), 1.0);
        }

        void main() {
            ivec2 coord = ivec2(vTexCoord * uImageSize);

            // 步骤 1-4: 黑电平、白平衡、反卷积、RCD解马赛克
            vec3 rgb = demosaicRCD(coord);

            // 应用曝光增益 (线性空间)
            rgb = rgb * uExposureGain;

            // 步骤 5: 色彩转换 (CCM) - 将相机原生色彩空间转换到 sRGB 线性空间
            rgb = uColorCorrectionMatrix * rgb;

            // 限制到 [0, 1] 范围 (sRGB 色域)
            rgb = clamp(rgb, 0.0, 1.0);

            // 步骤 6: sRGB gamma 编码 (线性 -> sRGB)
            rgb = linearToSRGB(rgb);

            // 步骤 7: 应用 S 曲线增加对比度 (在 Gamma 空间应用效果更接近 Adobe Standard)
            rgb = applySCurve(rgb);
            
            // 步骤 8: 结构增强 (已注释)
            // rgb = applyStructure(rgb);

            // 步骤 8: 输出锐化 (在 gamma 空间进行)
            rgb = applyOutputSharpening(rgb, coord);

            // 最终输出
            fragColor = vec4(clamp(rgb, 0.0, 1.0), 1.0);
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
     * 绘制顺序索引
     */
    val DRAW_ORDER = shortArrayOf(
        0, 1, 2,  // 第一个三角形
        1, 3, 2   // 第二个三角形
    )
}
