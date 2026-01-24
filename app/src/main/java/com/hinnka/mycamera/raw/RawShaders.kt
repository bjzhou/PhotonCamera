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

        // ========== 步骤 4b: 基于色差的联合双边解马赛克 ==========
        // (Chrominance-based Joint Bilateral Demosaicing with LMMSE Green)
        // 
        // 核心思路：色度-亮度解耦 (Luma-Chroma Decoupling)
        // 1. G 通道（亮度主力）：必须锐利，用 LMMSE 算
        // 2. R/B 通道（色度主力）：必须干净，参考 G 通道的边缘来算
        //
        // 公式：R_out = G_lmmse + WeightedAvg(R_neighbors - G_neighbors)
        // 权重来源：|G_center - G_neighbor| (边缘感知)
        
        // 辅助函数：快速估计某位置的 G 值 (用于计算色差)
        float estimateGreenAt(ivec2 coord) {
            int type = getChannelType(coord);
            if (type == 1) {
                // G 位置，直接返回
                return getRawPixel(coord);
            } else {
                // R/B 位置，用十字形平均估计
                return (getRawPixel(coord + ivec2(1, 0)) +
                        getRawPixel(coord + ivec2(-1, 0)) +
                        getRawPixel(coord + ivec2(0, 1)) +
                        getRawPixel(coord + ivec2(0, -1))) * 0.25;
            }
        }
        
        // 辅助函数：计算联合双边权重
        // 基于空间距离和亮度相似度
        float computeBilateralWeight(float gCenter, float gNeighbor, float spatialDist) {
            // 亮度相似度权重 (Gaussian falloff)
            float lumaDiff = abs(gCenter - gNeighbor);
            float sigmaLuma = 0.05; // 亮度差异容忍度
            float lumaWeight = exp(-lumaDiff * lumaDiff / (2.0 * sigmaLuma * sigmaLuma));
            
            // 空间权重 (简化：距离越远权重越小)
            float sigmaSpatial = 2.0;
            float spatialWeight = exp(-spatialDist * spatialDist / (2.0 * sigmaSpatial * sigmaSpatial));
            
            return lumaWeight * spatialWeight;
        }
        
        vec3 demosaicLMMSE(ivec2 coord) {
            int type = getChannelType(coord); // 0=R, 1=G, 2=B
            float centerRaw = getRawPixel(coord);
            
            float r, g, b;
            float epsilon = 0.0001;
            
            // ========== 第一步：用 LMMSE 算出最完美的 G (Green) ==========
            // 绿色通道信噪比最高，是后续步骤的 Guide（向导）
            
            // 采样 5x5 邻域的像素值 (同色采样，步长为2)
            float hSamples[5]; // 水平方向采样
            float vSamples[5]; // 垂直方向采样
            
            for (int i = -2; i <= 2; i++) {
                hSamples[i + 2] = getRawPixel(coord + ivec2(i * 2, 0));
                vSamples[i + 2] = getRawPixel(coord + ivec2(0, i * 2));
            }
            
            // 计算水平和垂直方向的梯度能量 (用于边缘检测)
            float gradH = abs(hSamples[0] - hSamples[2]) + abs(hSamples[2] - hSamples[4]) + abs(hSamples[1] - hSamples[3]);
            float gradV = abs(vSamples[0] - vSamples[2]) + abs(vSamples[2] - vSamples[4]) + abs(vSamples[1] - vSamples[3]);
            
            // 计算局部方差 (用于噪声估计)
            float meanH = (hSamples[0] + hSamples[1] + hSamples[2] + hSamples[3] + hSamples[4]) * 0.2;
            float meanV = (vSamples[0] + vSamples[1] + vSamples[2] + vSamples[3] + vSamples[4]) * 0.2;
            
            float varH = 0.0;
            float varV = 0.0;
            for (int i = 0; i < 5; i++) {
                varH += (hSamples[i] - meanH) * (hSamples[i] - meanH);
                varV += (vSamples[i] - meanV) * (vSamples[i] - meanV);
            }
            varH *= 0.2;
            varV *= 0.2;
            
            // LMMSE Wiener 滤波权重
            float noiseVar = 0.0001;
            float wH = varH / (varH + noiseVar + epsilon);
            float wV = varV / (varV + noiseVar + epsilon);
            
            // 方向自适应权重
            float dirWeight = gradH / (gradH + gradV + epsilon);
            
            // G 通道插值
            if (type != 1) {
                // 水平方向绿色估计
                float g0 = getRawPixel(coord + ivec2(-1, 0));
                float g2 = getRawPixel(coord + ivec2(1, 0));
                float gH_base = (g0 + g2) * 0.5;
                float cH = centerRaw - (hSamples[1] + hSamples[3]) * 0.5;
                float gH = gH_base + cH * 0.5 * wH;
                
                // 垂直方向绿色估计
                float g1 = getRawPixel(coord + ivec2(0, -1));
                float g3 = getRawPixel(coord + ivec2(0, 1));
                float gV_base = (g1 + g3) * 0.5;
                float cV = centerRaw - (vSamples[1] + vSamples[3]) * 0.5;
                float gV = gV_base + cV * 0.5 * wV;
                
                // 自适应融合
                g = mix(gH, gV, dirWeight);
            } else {
                g = centerRaw;
            }
            
            // ========== 第二步：基于色差的联合双边滤波重建 R/B ==========
            // 核心：R_out = G_lmmse + WeightedAvg(R_neighbors - G_neighbors)
            // 不直接插值 R/B，而是对色差 (R-G, B-G) 进行平滑
            
            if (type == 0) { // Red Center
                r = centerRaw;
                
                // B 通道：扩大采样范围到 5x5 (同色像素间隔为2)
                // 采样周围所有 B 邻居，使用联合双边滤波计算色差
                float diffSum = 0.0;
                float weightSum = 0.0;
                float minDiff = 1.0;
                float maxDiff = -1.0;
                
                // 5x5 范围内的 B 像素 (步长为2，共9个点，中心除外共8个)
                for (int dy = -2; dy <= 2; dy += 2) {
                    for (int dx = -2; dx <= 2; dx += 2) {
                        // R center 的对角线是 B，十字方向也是隔一个的 B
                        // 对于 RGGB，R位置的对角 (-1,-1), (1,-1), (-1,1), (1,1) 是 B
                        // 更远的 (-2,-2) 等是 R，需要跳过
                        // 实际上采样 dx,dy 都是奇数时才是 B
                        if ((dx & 1) != 1 && (dy & 1) != 1) continue;
                    }
                }
                
                // 对于 Red Center，B 在对角线方向 (奇数偏移)
                // 扩展到更大范围：包括 ±1 和 ±3 的对角线
                ivec2 bOffsets[8] = ivec2[8](
                    ivec2(-1, -1), ivec2(1, -1), ivec2(-1, 1), ivec2(1, 1),   // 近邻
                    ivec2(-3, -1), ivec2(3, -1), ivec2(-1, -3), ivec2(1, -3)  // 远邻 (部分)
                );
                
                for (int i = 0; i < 8; i++) {
                    ivec2 off = bOffsets[i];
                    ivec2 neighborCoord = coord + off;
                    
                    float bVal = getRawPixel(neighborCoord);
                    float gEst = estimateGreenAt(neighborCoord);
                    float diff = bVal - gEst;
                    
                    // 记录 min/max 用于噪点剔除
                    minDiff = min(minDiff, diff);
                    maxDiff = max(maxDiff, diff);
                    
                    // 空间权重
                    float distSq = float(off.x * off.x + off.y * off.y);
                    float wSpatial = exp(-distSq / 8.0); // sigma^2 = 4
                    
                    // 亮度权重
                    float lumaDiff = abs(g - gEst);
                    float wLuma = exp(-lumaDiff * lumaDiff / 0.005); // sigma = 0.05
                    
                    float weight = wSpatial * wLuma;
                    diffSum += diff * weight;
                    weightSum += weight;
                }
                
                float avgDiff = diffSum / (weightSum + epsilon);
                
                // 中值钳位：限制在邻居的 [min, max] 范围内 (适当放宽范围以减少边缘断层)
                avgDiff = clamp(avgDiff, minDiff - 0.02, maxDiff + 0.02);
                
                // 收紧色差范围：在 Raw 域超过 ±0.15 往往是噪点
                avgDiff = clamp(avgDiff, -0.15, 0.15);
                
                b = g + avgDiff;
                
            } else if (type == 2) { // Blue Center
                b = centerRaw;
                
                // R 通道：同样扩大采样范围
                float diffSum = 0.0;
                float weightSum = 0.0;
                float minDiff = 1.0;
                float maxDiff = -1.0;
                
                // 对于 Blue Center，R 在对角线方向
                ivec2 rOffsets[8] = ivec2[8](
                    ivec2(-1, -1), ivec2(1, -1), ivec2(-1, 1), ivec2(1, 1),
                    ivec2(-3, -1), ivec2(3, -1), ivec2(-1, -3), ivec2(1, -3)
                );
                
                for (int i = 0; i < 8; i++) {
                    ivec2 off = rOffsets[i];
                    ivec2 neighborCoord = coord + off;
                    
                    float rVal = getRawPixel(neighborCoord);
                    float gEst = estimateGreenAt(neighborCoord);
                    float diff = rVal - gEst;
                    
                    minDiff = min(minDiff, diff);
                    maxDiff = max(maxDiff, diff);
                    
                    float distSq = float(off.x * off.x + off.y * off.y);
                    float wSpatial = exp(-distSq / 8.0);
                    
                    float lumaDiff = abs(g - gEst);
                    float wLuma = exp(-lumaDiff * lumaDiff / 0.005);
                    
                    float weight = wSpatial * wLuma;
                    diffSum += diff * weight;
                    weightSum += weight;
                }
                
                float avgDiff = diffSum / (weightSum + epsilon);
                // 中值钳位：限制在邻居的 [min, max] 范围内 (适当放宽范围以减少边缘断层)
                avgDiff = clamp(avgDiff, minDiff - 0.02, maxDiff + 0.02);
                avgDiff = clamp(avgDiff, -0.15, 0.15);
                
                r = g + avgDiff;
                
            } else { // Green Center (Gr or Gb)
                int channelIdx = getChannelIndex(coord);
                bool isGr = (channelIdx == 1);
                
                if (isGr) {
                    // Gr 行：左右是红，上下是蓝
                    
                    // R 通道 (水平方向)
                    float rVal_left = getRawPixel(coord + ivec2(-1, 0));
                    float rVal_right = getRawPixel(coord + ivec2(1, 0));
                    float gEst_left = estimateGreenAt(coord + ivec2(-1, 0));
                    float gEst_right = estimateGreenAt(coord + ivec2(1, 0));
                    
                    float diff_left = rVal_left - gEst_left;
                    float diff_right = rVal_right - gEst_right;
                    
                    float w_left = computeBilateralWeight(g, gEst_left, 1.0);
                    float w_right = computeBilateralWeight(g, gEst_right, 1.0);
                    
                    float rDiff = (diff_left * w_left + diff_right * w_right) / (w_left + w_right + epsilon);
                    rDiff = clamp(rDiff, -0.15, 0.15);
                    r = g + rDiff;
                    
                    // B 通道 (垂直方向)
                    float bVal_top = getRawPixel(coord + ivec2(0, -1));
                    float bVal_bottom = getRawPixel(coord + ivec2(0, 1));
                    float gEst_top = estimateGreenAt(coord + ivec2(0, -1));
                    float gEst_bottom = estimateGreenAt(coord + ivec2(0, 1));
                    
                    float diff_top = bVal_top - gEst_top;
                    float diff_bottom = bVal_bottom - gEst_bottom;
                    
                    float w_top = computeBilateralWeight(g, gEst_top, 1.0);
                    float w_bottom = computeBilateralWeight(g, gEst_bottom, 1.0);
                    
                    float bDiff = (diff_top * w_top + diff_bottom * w_bottom) / (w_top + w_bottom + epsilon);
                    bDiff = clamp(bDiff, -0.15, 0.15);
                    b = g + bDiff;
                    
                } else {
                    // Gb 行：上下是红，左右是蓝
                    
                    // R 通道 (垂直方向)
                    float rVal_top = getRawPixel(coord + ivec2(0, -1));
                    float rVal_bottom = getRawPixel(coord + ivec2(0, 1));
                    float gEst_top = estimateGreenAt(coord + ivec2(0, -1));
                    float gEst_bottom = estimateGreenAt(coord + ivec2(0, 1));
                    
                    float diff_top = rVal_top - gEst_top;
                    float diff_bottom = rVal_bottom - gEst_bottom;
                    
                    float w_top = computeBilateralWeight(g, gEst_top, 1.0);
                    float w_bottom = computeBilateralWeight(g, gEst_bottom, 1.0);
                    
                    float rDiff = (diff_top * w_top + diff_bottom * w_bottom) / (w_top + w_bottom + epsilon);
                    rDiff = clamp(rDiff, -0.15, 0.15);
                    r = g + rDiff;
                    
                    // B 通道 (水平方向)
                    float bVal_left = getRawPixel(coord + ivec2(-1, 0));
                    float bVal_right = getRawPixel(coord + ivec2(1, 0));
                    float gEst_left = estimateGreenAt(coord + ivec2(-1, 0));
                    float gEst_right = estimateGreenAt(coord + ivec2(1, 0));
                    
                    float diff_left = bVal_left - gEst_left;
                    float diff_right = bVal_right - gEst_right;
                    
                    float w_left = computeBilateralWeight(g, gEst_left, 1.0);
                    float w_right = computeBilateralWeight(g, gEst_right, 1.0);
                    
                    float bDiff = (diff_left * w_left + diff_right * w_right) / (w_left + w_right + epsilon);
                    bDiff = clamp(bDiff, -0.15, 0.15);
                    b = g + bDiff;
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
            float lumaBoost = 0.08;
            // 使用 pow 曲线保护高光，或者简单的加法
            // 这里使用加法但在高光处衰减
            float highlightProtect = 1.0 - smoothstep(0.7, 1.0, hsl.z);
            hsl.z += lumaBoost * isSkin * highlightProtect;
        
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
            float strength = 0.8 * 0.5;
            // --- 6.1 蓝色增强 (深邃天空/水面) ---
            float baseBlue = color.b - (color.r + color.g) * 0.5;
            float blueMask = smoothstep(0.0, 0.2, baseBlue); 
            if (blueMask > 0.0) {
                // 增加蓝色的纯度（减去R和G的干扰）
                vec3 blueDensity = vec3(0.3, 0.3, 0.0) * blueMask * strength;
                color.r -= blueDensity.r * color.r;
                color.g -= blueDensity.g * color.g;
                // 稍微压暗蓝色，制造胶片重感
                color.b -= 0.05 * blueMask * strength;
                // 使用 S 曲线增加蓝色区域的对比度/通透感
                color = mix(color, color * color * (3.0 - 2.0 * color), blueMask * strength * 0.2);
            }
            // --- 6.2 暖色增强 (新增逻辑：红润肤色/日落) ---
            // 去除浑浊的蓝色杂质，呈现奶油般质感的红/橙色
            // 算法：检测红色分量是否显著高于蓝色 (捕捉皮肤、夕阳、木头等)
            float baseWarm = color.r - (color.g * 0.3 + color.b * 0.7); 
            float warmMask = smoothstep(0.05, 0.25, baseWarm);
            if (warmMask > 0.0) {
                // 6.2.1 "去脏"：在暖色区域减去互补色(蓝色)，使暖色更干净、通透
                color.b -= 0.15 * warmMask * strength; 
                // 6.2.2 密度调整：轻微减去绿色，会让黄色向橙/红色偏移
                // 如果想要更黄的暖色，可以注释掉下面这行
                color.g -= 0.05 * warmMask * strength; 
                // 6.2.3 胶片感增强：同样使用 S 曲线混合，增加暖色的"厚度"和饱和度
                // 这里的 mix 系数比蓝色稍高，因为人眼对肤色对比度更敏感
                color = mix(color, color * color * (3.0 - 2.0 * color), warmMask * strength * 0.25);
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

            // 解马赛克 (联合双边 + 色度降噪内嵌)
            vec3 rgb = demosaicLMMSE(coord);

            // 色彩转换 (CCM)
            rgb = uColorCorrectionMatrix * rgb;
            
            rgb = applyDoubleEndedDesaturation(rgb);

            // 应用曝光增益 (Linear HDR Space)
            rgb *= uExposureGain;
            
            rgb = applyTonemap(rgb);
            
            // 高级色彩校正 (肤色 -> 自然饱和度)
            rgb = optimizeSkinTone(rgb);
            rgb = applyVibrance(rgb);
            

            // 步骤 7: sRGB gamma 编码 (Linear -> sRGB)
            rgb = linearToSRGB(rgb);
            
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
}
