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

        uniform float uOutputSharpAmount;  // 输出锐化强度 (0.0-1.0)
        uniform float uExposureGain;       // 曝光增益

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

        // 获取RAW像素值，应用黑电平和白平衡 (Branchless)
        // uBlackLevel 和 uWhiteBalanceGains 的分量顺序: .r=R, .g=Gr, .b=Gb, .a=B
        float getRawPixel(ivec2 coord) {
            coord = clamp(coord, ivec2(0), ivec2(uImageSize) - 1);
            float raw = float(texelFetch(uRawTexture, coord, 0).r);

            // 获取当前像素的颜色通道索引 (0..3)
            int idx = getChannelIndex(coord); 
            
            // 构造 Mask
            vec4 mask = vec4(0.0);
            if (idx == 0) mask.r = 1.0;
            else if (idx == 1) mask.g = 1.0;
            else if (idx == 2) mask.b = 1.0;
            else mask.a = 1.0;

            // 并行计算 Black/Gain
            float black = dot(uBlackLevel, mask);
            float wbGain = dot(uWhiteBalanceGains, mask);
            
            // 镜头阴影采样 (LSC)
            vec2 lscUV = (vec2(coord) + 0.5) / uImageSize;
            vec4 lscVal = texture(uLensShadingMap, lscUV);
            
            // Android LensShadingMap 顺序始终为 [R, Geven (Gr), Godd (Gb), B]
            // 这与我们的 mask 分量顺序 (.r=R, .g=Gr, .b=Gb, .a=B) 完美契合，无需交换
            float lscGain = dot(lscVal, mask);

            // 计算最终像素值
            float pixel = max(0.0, (raw - black) * wbGain / (uWhiteLevel - black));
            pixel *= lscGain;

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
        
        // 辅助函数：带边界保护的纹理读取
        float fetch(ivec2 coord) {
            return getRawPixel(clamp(coord, ivec2(0), ivec2(uImageSize) - 1));
        }
        
        // 辅助：安全除法，计算比率 (Ratio)
        // 防止分母为 0 (黑点)
        float getRatio(float val, float base) {
            // 这里的 epsilon 极小值用于防止除以零
            // 在 RAW 域 0 是很常见的（死黑）
            return val / (base + 0.000001);
        }
        
        vec3 demosaicRCD(ivec2 coord) {
            int type = getChannelType(coord); // 0=R, 1=G, 2=B
            float C = fetch(coord);
            
            float r, g, b;
            float eps = 1.0e-4; // 保护阈值
        
            // 获取十字邻域 (1阶)
            float N = fetch(coord + ivec2(0, -1));
            float S = fetch(coord + ivec2(0, 1));
            float W = fetch(coord + ivec2(-1, 0));
            float E = fetch(coord + ivec2(1, 0));
        
            // 获取二阶邻域 (2阶，用于梯度和拉普拉斯校正)
            float NN = fetch(coord + ivec2(0, -2));
            float SS = fetch(coord + ivec2(0, 2));
            float WW = fetch(coord + ivec2(-2, 0));
            float EE = fetch(coord + ivec2(2, 0));
        
            // ==========================================
            // 步骤 1: 恢复绿色 (Green)
            // ==========================================
            if (type == 1) {
                // 当前就是绿色
                g = C;
            } else {
                // 当前是 R 或 B，需要恢复 G
                
                // 1. 计算梯度 (Gradient)
                // 结合了一阶差分和二阶拉普拉斯，判断纹理方向
                float gradH = abs(W - E) + abs(2.0 * C - WW - EE);
                float gradV = abs(N - S) + abs(2.0 * C - NN - SS);
        
                // 2. 计算基于比率的估算值 (Ratio Estimates)
                // 核心公式：G = R_center * (G_neighbor / R_neighbor)
                // 为了防止暗部噪点导致比率爆炸，混合差值法：
                // 亮部用比率 (乘法)，暗部用差值 (加法)。这里使用加权的“混合修正项”。
                
                // 水平方向估算
                // 假设当前是 R，左右是 G。我们想求中间的 G。
                // G_h = (G_W + G_E)/2 + Correction
                // Ratio Correction: C * ( (G_W/WW + G_E/EE) / 2 ) <-- 这种太激进
                // 我们用一种更稳健的线性回归近似：
                float g_h = (W + E) * 0.5 + (2.0 * C - WW - EE) * 0.25;
                
                // 垂直方向估算
                float g_v = (N + S) * 0.5 + (2.0 * C - NN - SS) * 0.25;
        
                // 3. 方向融合
                // 只有当方向性非常明确时才选边，否则混合
                float threshold = 1.5; // 梯度阈值因子
                
                if (gradH * threshold < gradV) {
                    g = g_h;
                } else if (gradV * threshold < gradH) {
                    g = g_v;
                } else {
                    // 梯度相近，加权混合 (避免硬切换带来的伪影)
                    float wH = 1.0 / (gradH + eps);
                    float wV = 1.0 / (gradV + eps);
                    g = (g_h * wH + g_v * wV) / (wH + wV);
                }
                
                // 负值保护
                g = max(0.0, g);
            }
        
            // ==========================================
            // 步骤 2: 恢复红/蓝 (Red / Blue)
            // 使用“色差恒定”或“色比恒定”原理
            // ==========================================
            
            // 为了彻底消除拉链纹，我们在插值 R/B 时，
            // 不直接插值 R 或 B 的数值，而是插值 (R-G) 或 (B-G) 的差值，
            // 然后再加回 G。这是业界标准做法。
        
            if (type == 0) { 
                // --- 中心是 Red ---
                r = C;
                
                // 1. 恢复 Blue (对角线位置)
                // 采样 4 个对角线的 Blue，并减去它们位置上的 Green
                // 注意：这里需要知道对角线位置的 Green。
                // 为了性能，我们近似认为对角线的 G 就是 (C+NeighborG)/2 或者重新fetch
                // 最好的办法是：B_val = G_center + Average(B_diag - G_diag)
                
                float B_NW = fetch(coord + ivec2(-1, -1)); float G_NW = fetch(coord + ivec2(-1, 0)); // 简化的 G 采样
                float B_NE = fetch(coord + ivec2(1, -1));  float G_NE = fetch(coord + ivec2(1, 0));
                float B_SW = fetch(coord + ivec2(-1, 1));  float G_SW = fetch(coord + ivec2(-1, 0));
                float B_SE = fetch(coord + ivec2(1, 1));   float G_SE = fetch(coord + ivec2(1, 0));
                
                // 更严谨的对角线 G 获取（复用双线性，防止 recursive fetch 爆炸）
                // 实际上，对角线的 G 可以用周围 4 个 G 的平均来近似
                float G_diag_est = (N+S+W+E) * 0.25; 
                
                // 计算色差的平均值
                float b_diff = ((B_NW + B_NE + B_SW + B_SE) * 0.25) - G_diag_est;
                b = g + b_diff;
        
                // 2. 恢复 Green 位置的 B (用于修正) -> 已经在 g 计算中处理了
                
            } else if (type == 2) { 
                // --- 中心是 Blue ---
                b = C;
                
                // 恢复 Red (原理同上)
                float G_diag_est = (N+S+W+E) * 0.25;
                float R_NW = fetch(coord + ivec2(-1, -1));
                float R_NE = fetch(coord + ivec2(1, -1));
                float R_SW = fetch(coord + ivec2(-1, 1));
                float R_SE = fetch(coord + ivec2(1, 1));
                
                float r_diff = ((R_NW + R_NE + R_SW + R_SE) * 0.25) - G_diag_est;
                r = g + r_diff;
                
            } else { 
                // --- 中心是 Green ---
                // 这是拉链纹最容易出现的地方！
                // 我们在 Gr 行和 Gb 行
                
                int idx = getChannelIndex(coord); // 1=Gr, 2=Gb
                
                // 策略：双线性插值色差 (Bilinear Interpolation of Chrominance Difference)
                // R = G + (Average(Neighbors_R) - Average(Neighbors_G_at_R_location))
                
                float R_est, B_est;
                
                // 采样十字方向
                float valN = fetch(coord + ivec2(0, -1));
                float valS = fetch(coord + ivec2(0, 1));
                float valW = fetch(coord + ivec2(-1, 0));
                float valE = fetch(coord + ivec2(1, 0));
                
                // 二阶平滑 (Low Pass Filter on Chroma) - 抗拉链的核心
                // 拉链纹本质上是色差的高频震荡。我们采样更远一点的像素来平滑色差。
                
                if (idx == 1) { // Gr 行 (左右是 R，上下是 B)
                    // 恢复 R (水平)
                    float R_mean = (valW + valE) * 0.5;
                    // 估算 R 位置的 G (即 C 左右两点的 G，其实就是 W和E位置的G)
                    // 这是一个巧妙的近似：在 Gr 行，W 和 E 是 Red 点。
                    // R 位置的 G 可以用 (C + WW/EE)/2 估算，或者直接用 C 近似
                    // 更好的做法：使用色比 R/G
                    
                    // 简单且强力的去拉链做法：
                    r = R_mean; // 基础双线性
                    // 加上高频修正 (从 G 通道借细节)
                    // R = R_mean + (C - G_mean_at_R_loc) * 0.5
                    // 这里我们假设 R-G 是平滑的，所以 R 应该跟随 C(Green) 的变化
                    float G_at_R_loc = (fetch(coord + ivec2(-2, 0)) + fetch(coord + ivec2(2, 0)) + C*2.0) * 0.25;
                    r += (C - G_at_R_loc) * 0.5; // 把 G 的细节加给 R
        
                    // 恢复 B (垂直)
                    float B_mean = (valN + valS) * 0.5;
                    float G_at_B_loc = (fetch(coord + ivec2(0, -2)) + fetch(coord + ivec2(0, 2)) + C*2.0) * 0.25;
                    b = B_mean + (C - G_at_B_loc) * 0.5;
                    
                } else { // Gb 行 (左右是 B，上下是 R)
                    // 恢复 B (水平)
                    float B_mean = (valW + valE) * 0.5;
                    float G_at_B_loc = (fetch(coord + ivec2(-2, 0)) + fetch(coord + ivec2(2, 0)) + C*2.0) * 0.25;
                    b = B_mean + (C - G_at_B_loc) * 0.5;
        
                    // 恢复 R (垂直)
                    float R_mean = (valN + valS) * 0.5;
                    float G_at_R_loc = (fetch(coord + ivec2(0, -2)) + fetch(coord + ivec2(0, 2)) + C*2.0) * 0.25;
                    r = R_mean + (C - G_at_R_loc) * 0.5;
                }
            }
        
            return vec3(r, g, b);
        }

        // ========== 步骤 8: 输出锐化 (Unsharp Mask) ==========
        vec3 applyOutputSharpening(vec3 rgb, ivec2 coord) {
            if (uOutputSharpAmount <= 0.0) return rgb;
        
            // 1. 获取当前 RGB 的亮度 (Luma)
            float luma = dot(rgb, vec3(0.299, 0.587, 0.114));
        
            // 2. 寻找最近的绿色像素作为 RAW 亮度参考
            // 我们需要构建一个 "Raw Luma" 的高通滤波器
            float rawCenterG = 0.0;
            float rawBlurG = 0.0;
            float weightSum = 0.0;
        
            // 技巧：在 5x5 范围内，只采样绿色像素 (G)
            // 绿色像素在 Bayer 阵列中呈五点状分布 (Quincunx)
            
            // 获取中心点附近的 Raw 值
            // 如果当前是 G 点，直接用；如果当前是 R/B，取周围 G 的平均
            int type = getChannelType(coord); // 0=R, 1=G, 2=B
            
            if (type == 1) {
                rawCenterG = getRawPixel(coord);
            } else {
                // R/B 点：取上下左右 4 个 G 的平均
                rawCenterG = (getRawPixel(coord + ivec2(1, 0)) + 
                              getRawPixel(coord + ivec2(-1, 0)) + 
                              getRawPixel(coord + ivec2(0, 1)) + 
                              getRawPixel(coord + ivec2(0, -1))) * 0.25;
            }
        
            // 3. 计算周围绿色的平均值 (模拟模糊)
            // 采样周围一圈的 G (Stride-2 逻辑或者菱形逻辑)
            // 这里使用简化的菱形采样 (Diamond Sampling)，覆盖周围 2 像素范围
            //      G
            //    G . G
            //  G . C . G
            //    G . G
            //      G
            
            float gNeighbors = 0.0;
            
            // 采样上下左右 2 像素处的 G (同色采样，最安全)
            gNeighbors += getRawPixel(coord + ivec2(-2, 0));
            gNeighbors += getRawPixel(coord + ivec2(2, 0));
            gNeighbors += getRawPixel(coord + ivec2(0, -2));
            gNeighbors += getRawPixel(coord + ivec2(0, 2));
            
            // 采样对角线 1 像素处的 G (如果当前是 R/B，对角线是 G；如果当前是 G，对角线是 R/B)
            // 为了算法简单且通用，我们只用上面 4 个确定的同色 G 点做模糊参考
            // 这相当于一个半径为 2 的 High Pass Filter
            
            float rawMeanG = gNeighbors * 0.25;
        
            // 4. 提取高频细节 (High Frequency)
            // 细节 = 中心绿 - 周围绿
            float detail = rawCenterG - rawMeanG;
        
            // 5. 阈值与钳位 (防止噪点爆炸)
            // 如果差异太小（比如暗部噪点），忽略它
            if (abs(detail) < 0.002) detail = 0.0;
            
            // 限制细节幅度，防止黑白边 (Halo)
            detail = clamp(detail, -0.1, 0.1);
        
            // 6. 叠加锐化
            // 不再乘回 RGB，而是直接叠加亮度
            // USM 公式: NewLuma = Luma + Amount * Detail
            // 这种加法锐化比乘法锐化更自然，不易产生色偏
            
            float sharpenedLuma = luma + detail * uOutputSharpAmount;
            
            // 避免亮度溢出或死黑
            sharpenedLuma = clamp(sharpenedLuma, 0.0, 1.0);
        
            // 7. 将亮度差异应用回 RGB
            // 保持色相和饱和度，只改变明度
            // Ratio = NewLuma / OldLuma
            float ratio = sharpenedLuma / max(luma, 0.001);
            
            return rgb * ratio;
        }

        // sRGB转换
        vec3 linearToSRGB(vec3 linear) {
            return mix(
                12.92 * linear,
                1.055 * pow(max(linear, 0.0), vec3(1.0/2.4)) - 0.055,
                step(0.0031308, linear)
            );
        }
        
        // 辅助函数：计算亮度 (Rec.709 权重，适用于 sRGB/Linear)
        float getLuma(vec3 color) {
            return dot(color, vec3(0.2126, 0.7152, 0.0722));
        }
        
        vec3 applyHighlightRecovery(vec3 color) {
            float threshold = 0.8;
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
        
        vec3 applyTonemap(vec3 color) {
            color = applyHighlightRecovery(color);
            vec3 sCurve = smoothstep(vec3(0.0), vec3(1.0), color);
            return mix(color, sCurve, 0.6);
        }
        
        // ==========================================
        // 辅助函数：RGB <-> HCV/HSL 转换
        // 这种算法比标准的 RGB2HSV 更平滑，适合图像处理
        // ==========================================
        vec3 rgb2hcv(vec3 color) {
            vec4 P = (color.g < color.b) ? vec4(color.bg, -1.0, 2.0/3.0) : vec4(color.gb, 0.0, -1.0/3.0);
            vec4 Q = (color.r < P.x) ? vec4(P.xyw, color.r) : vec4(color.r, P.yzx);
            float C = Q.x - min(Q.w, Q.y);
            float H = abs((Q.w - Q.y) / (6.0 * C + 1e-10) + Q.z);
            return vec3(H, C, Q.x);
        }

        vec3 rgb2hsl(vec3 color) {
            vec3 HCV = rgb2hcv(color);
            float L = HCV.z - HCV.y * 0.5;
            float S = HCV.y / (1.0 - abs(L * 2.0 - 1.0) + 1e-10);
            return vec3(HCV.x, S, L);
        }

        vec3 hsl2rgb(vec3 hsl) {
            vec3 rgb = clamp(abs(mod(hsl.x * 6.0 + vec3(0.0, 4.0, 2.0), 6.0) - 3.0) - 1.0, 0.0, 1.0);
            float C = (1.0 - abs(2.0 * hsl.z - 1.0)) * hsl.y;
            return (rgb - 0.5) * C + hsl.z;
        }

        /**
         * 肤色优化 (Skin Tone Optimization)
         * 识别肤色并使其更加通透、自然
         */
        vec3 optimizeSkinTone(vec3 color) {
            // 1. 转换到 HSL 空间
            vec3 hsl = rgb2hsl(color);
            
            // 2. 定义肤色检测范围 (亚洲人肤色中心通常在 25度 左右)
            // GLSL中 Hue 范围是 0.0 - 1.0。 25度/360度 ≈ 0.07
            float skinHue = 0.07; 
            float hueWidth = 0.06; // 肤色检测宽度，覆盖橙色到黄色
            
            // 3. 计算“肤色权重” (Skin Mask)
            // 使用平滑的钟形曲线 (1.0 表示完全是肤色，0.0 表示非肤色)
            // 这样边缘过渡自然，不会出现塑料感
            float hueDist = abs(hsl.x - skinHue);
            // 处理色相环绕 (0.99 和 0.01 应该很近)
            if (hueDist > 0.5) hueDist = 1.0 - hueDist; 
            float isSkin = smoothstep(hueWidth, 0.0, hueDist);
            
            // 增加饱和度和亮度限制，避免把白墙或过于鲜艳的橙色物体识别为皮肤
            isSkin *= smoothstep(0.05, 0.15, hsl.y); // 排除极低饱和度 (灰/白/黑)
            isSkin *= smoothstep(0.0, 0.2, hsl.z);   // 排除极暗区域
            
            // ------------------------------------------
            // 4. 执行调色逻辑 (仅针对 mask 区域)
            // ------------------------------------------
            
            // A. 【祛黄校正】: 色相向红/洋红偏移 (Hue Shift)
            // 负值代表向逆时针(红色)方向偏移
            float hueShiftAmount = -0.015; // 约 -5度
            hsl.x += hueShiftAmount * isSkin;
            
            // B. 【去油腻】: 降低饱和度 (Desaturation)
            // 亚洲肤色容易油光发亮，降低饱和度会让肤质更粉嫩
            float satReduceAmount = 0.15; 
            hsl.y -= (hsl.y * satReduceAmount) * isSkin;
            
            // C. 【通透美白】: 提升亮度 (Luma Boost)
            // 这是“冷白皮”的关键。非线性提亮，保护高光不溢出。
            float lumaBoost = 0.15;
            // 使用 pow 曲线保护高光，或者简单的加法
            // 这里使用加法但在高光处衰减
            float highlightProtect = 1.0 - smoothstep(0.8, 1.0, hsl.z);
            hsl.z += lumaBoost * isSkin * highlightProtect;
            hsl.z = max(hsl.z, 0.0);
        
            // ------------------------------------------
            
            // 5. 转回 RGB
            return hsl2rgb(hsl);
        }

        /**
         * 自然饱和度 (Vibrance)
         * 提升低饱和度区域色彩，保护高饱和度区域和肤色
         */
        vec3 applyVibrance(vec3 color) {
            // 5. 饱和度（基于 Luma 的快速算法）
            float gray = dot(color, vec3(0.299, 0.587, 0.114));
            color = mix(vec3(gray), color, 1.0);

            // 6. 色彩增强（Vibrance - 选择性增强蓝色/红橙色）
            float strength = 0.2;
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
                vec3 sCurve = color * color * (3.0 - 2.0 * color);
                color = mix(color, sCurve, blueMask * strength * 0.2);
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
                vec3 sCurve = color * color * (3.0 - 2.0 * color);
                color = mix(color, sCurve, warmMask * strength * 0.25);
            }
            return color;
        }

        /**
         * 双端去色函数
         * @param color   输入 RGB 颜色
         * @param sLimit  暗部完全去色阈值 (低于此值饱和度为0)
         * @param sStart  暗部开始去色阈值 (高于此值饱和度为1)
         * @param hStart  亮部开始去色阈值 (低于此值饱和度为1)
         * @param hLimit  亮部完全去色阈值 (高于此值饱和度为0，通常设为 1.0)
         */
        vec3 applyDoubleEndedDesaturation(vec3 color) {
            float sLimit = 0.002;
            float sStart = 0.02;
            float hStart = 0.9;
            float hLimit = 1.0;
            float luma = getLuma(color);
        
            // 1. 计算暗部权重：Luma 在 [sLimit, sStart] 之间平滑过渡 0->1
            float shadowFactor = smoothstep(sLimit, sStart, luma);
        
            // 2. 计算亮部权重：Luma 在 [hStart, hLimit] 之间平滑过渡 1->0
            float highlightFactor = 1.0 - smoothstep(hStart, hLimit, luma);
        
            // 3. 混合权重 (两者相乘，只有中间调是 1.0)
            float satWeight = shadowFactor * highlightFactor;
        
            // 4. 在 Luma 和 原色 之间混合
            return mix(vec3(luma), color, satWeight);
        }

        void main() {
            // Pass 1: 1:1 解马赛克
            ivec2 coord = ivec2(gl_FragCoord.xy);

            // 解马赛克
            vec3 rgb = demosaicRCD(coord);

            // 色彩转换 (CCM)
            rgb = uColorCorrectionMatrix * rgb;

            // 应用曝光增益 (Linear HDR Space)
            rgb *= uExposureGain;

            // Output Linear (由下一步 LUT Pass / LLF 处理)
            fragColor = vec4(rgb, 1.0);
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
        
        uniform float uExposureGain;       // 曝光增益


        void main() {
            ivec2 coord = ivec2(gl_FragCoord.xy);
            
            // 直接读取 Linear RGB (16-bit Normalized to 0..1)
            // Stack output is 0..65535
            uvec3 raw = texelFetch(uRawTexture, coord, 0).rgb;
            vec3 rgb = vec3(raw) / 65535.0;

            // CCM
            rgb = uColorCorrectionMatrix * rgb;

            // Exposure
            rgb *= uExposureGain;

            // Output Linear (由下一步 LUT Pass / LLF 处理)
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

            vec3 linearToSRGB(vec3 linear) {
                return mix(
                    12.92 * linear,
                    1.055 * pow(max(linear, 0.0), vec3(1.0/2.4)) - 0.055,
                    step(0.0031308, linear)
                );
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
            
            float ACESFilm(float x) {
                float a = 2.51;
                float b = 0.03;
                float c = 2.43;
                float d = 0.59;
                float e = 0.14;
                return clamp((x * (a * x + b)) / (x * (c * x + d) + e), 0.0, 1.0);
            }
            
            vec3 simpleLocalToneMap(vec3 color, vec2 uv) {
                float luma = getLuma(color);
                
                // --- 参数 ---
                float blurRadius = 3.0; // 采样步长
                float sigmaColor = 0.3; // 双边滤波的色彩权重 (防止光晕的关键)
                float detailStrength = 1.3; // (Alpha)
                float betaEdge = 0.6;    // (Beta)
                float threshold = 0.1;      // (Sigma Edge)

                // --- 1. 计算 Base (双边滤波近似) ---
                float baseLuma = 0.0;
                float totalWeight = 0.0;
                
                // 稀疏采样以提高性能 (5x5 loop)
                for (int x = -2; x <= 2; x++) {
                    for (int y = -2; y <= 2; y++) {
                        vec2 offset = vec2(float(x), float(y)) * uTexelSize * blurRadius;
                        vec3 sampleColor = texture(uInputTexture, uv + offset).rgb;
                        float sampleLuma = getLuma(sampleColor);
                        
                        // 空间权重 (Gaussian)
                        float wSpatial = exp(-(float(x*x + y*y)) / 4.0);
                        
                        // 亮度权重 (Bilateral - 核心防光晕)
                        float diff = abs(sampleLuma - luma);
                        float wRange = exp(-(diff * diff) / (2.0 * sigmaColor * sigmaColor));
                        
                        float weight = wSpatial * wRange;
                        
                        baseLuma += sampleLuma * weight;
                        totalWeight += weight;
                    }
                }
                baseLuma /= totalWeight;
                baseLuma = max(baseLuma, 0.001);

                // --- 2. 细节分离与重映射 ---
                float detail = luma - baseLuma;
                
                // S-Curve Remap logic
                float remappedDetail;
                if (abs(detail) < threshold) {
                    remappedDetail = detail * detailStrength;
                } else {
                    float sign = sign(detail);
                    remappedDetail = sign * (threshold * detailStrength + (abs(detail) - threshold) * betaEdge);
                }

                float newLuma = ACESFilm(baseLuma) + remappedDetail;
                
                vec3 newColor = (color - 0.18) * 1.1 + 0.18;
                return newColor * (max(newLuma, 0.0001) / max(luma, 0.0001));
            }

            void main() {
                // 从输入纹理采样原始颜色
                vec4 color = texture(uInputTexture, vTexCoord);
                
                color.rgb = simpleLocalToneMap(color.rgb, vTexCoord);

                // === 后期处理：降噪和减少杂色（在色彩处理之前，避免放大噪点） ===

                // 1. 降噪（Bilateral Denoise for Luma + Gaussian for Chroma）
                if (uNoiseReduction > 0.0) {
                    vec3 centerYCbCr = rgb2ycbcr(color.rgb);
                    float centerY = centerYCbCr.x;
                    vec2 centerCbCr = centerYCbCr.yz;

                    // 色度降噪（简单高斯平滑）
                    vec2 sumCbCr = vec2(0.0);
                    float sumWeightChroma = 0.0;
                    int cRadius = 4;

                    for (int x = -cRadius; x <= cRadius; x+=2) {
                        for (int y = -cRadius; y <= cRadius; y+=2) {
                            vec2 offset = vec2(float(x), float(y)) * uTexelSize;
                            vec3 sampleRgb = texture(uInputTexture, vTexCoord + offset).rgb;
                            vec2 sampleCbCr = rgb2ycbcr(sampleRgb).yz;

                            float distSq = float(x*x + y*y);
                            float weight = exp(-distSq / (2.0 * 4.0));

                            sumCbCr += sampleCbCr * weight;
                            sumWeightChroma += weight;
                        }
                    }

                    vec2 finalCbCr = sumCbCr / sumWeightChroma;
                    finalCbCr = mix(centerCbCr, finalCbCr, clamp(uNoiseReduction * 1.5, 0.0, 1.0));

                    // 亮度降噪（双边滤波保边）
                    float sumY = 0.0;
                    float sumWeightLuma = 0.0;
                    int lRadius = 3;

                    float sigmaSpatial = 2.0;
                    float sigmaRange = 0.05 + uNoiseReduction * 0.15;

                    for (int x = -lRadius; x <= lRadius; x++) {
                        for (int y = -lRadius; y <= lRadius; y++) {
                            vec2 offset = vec2(float(x), float(y)) * uTexelSize;
                            float sampleY = rgb2ycbcr(texture(uInputTexture, vTexCoord + offset).rgb).x;

                            float distSq = float(x*x + y*y);
                            float wSpatial = exp(-distSq / (2.0 * sigmaSpatial * sigmaSpatial));

                            float diff = sampleY - centerY;
                            float wRange = exp(-(diff * diff) / (2.0 * sigmaRange * sigmaRange));

                            float weight = wSpatial * wRange;
                            sumY += sampleY * weight;
                            sumWeightLuma += weight;
                        }
                    }

                    float finalY = sumY / sumWeightLuma;
                    finalY = mix(finalY, centerY, 0.1);  // 细节回掺

                    color.rgb = ycbcr2rgb(vec3(finalY, finalCbCr));
                }
                color.rgb = clamp(color.rgb, 0.0, 1.0);

                // 2. 强力色度降噪（Chroma Denoise）
                if (uChromaNoiseReduction > 0.0) {
                    vec3 yuv = rgb2ycbcr(color.rgb);

                    vec2 sumUV = vec2(0.0);
                    float sumWeight = 0.0;
                    float maxStride = 2.0 + uChromaNoiseReduction * 10.0;
                    float colorThreshold = 0.15;
                    const int RADIUS_UV = 2;

                    for (int x = -RADIUS_UV; x <= RADIUS_UV; x++) {
                        for (int y = -RADIUS_UV; y <= RADIUS_UV; y++) {
                            vec2 offset = vec2(float(x), float(y)) * uTexelSize * maxStride;
                            vec3 sampleRgb = texture(uInputTexture, vTexCoord + offset).rgb;
                            vec3 sampleYuv = rgb2ycbcr(sampleRgb);

                            float distSq = float(x*x + y*y);
                            float wDist = exp(-distSq / 4.0);

                            float uvDiff = distance(sampleYuv.yz, yuv.yz);
                            float wColor = 1.0 - smoothstep(colorThreshold, colorThreshold + 0.1, uvDiff);

                            float weight = wDist * wColor;
                            sumUV += sampleYuv.yz * weight;
                            sumWeight += weight;
                        }
                    }

                    if (sumWeight > 0.001) {
                        vec2 cleanUV = sumUV / sumWeight;
                        float mixFactor = clamp(uChromaNoiseReduction * 3.0, 0.0, 1.0);
                        yuv.yz = mix(yuv.yz, cleanUV, mixFactor);
                    }

                    color.rgb = ycbcr2rgb(yuv);
                }


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

                // Final conversion to sRGB
                color.rgb = linearToSRGB(color.rgb);

                fragColor = color;
            }
        """.trimIndent()
}
