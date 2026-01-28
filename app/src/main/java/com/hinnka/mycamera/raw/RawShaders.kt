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
        
        vec3 demosaicHamiltonAdams(ivec2 coord) {
            int type = getChannelType(coord); // 0=R, 1=G, 2=B
            float C = fetch(coord);
            
            float r, g, b;
        
            // ============================
            // 1. 恢复绿色通道 (G)
            // ============================
            if (type == 1) {
                g = C;
            } else {
                // 获取十字邻域 (N=North, S=South...)
                float N = fetch(coord + ivec2(0, -1));
                float S = fetch(coord + ivec2(0, 1));
                float W = fetch(coord + ivec2(-1, 0));
                float E = fetch(coord + ivec2(1, 0));
        
                // 获取二阶邻域 (用于梯度和拉普拉斯校正)
                float NN = fetch(coord + ivec2(0, -2));
                float SS = fetch(coord + ivec2(0, 2));
                float WW = fetch(coord + ivec2(-2, 0));
                float EE = fetch(coord + ivec2(2, 0));
        
                // 计算梯度 (一阶差分 + 二阶校正)
                float gradH = abs(W - E) + abs(2.0 * C - WW - EE);
                float gradV = abs(N - S) + abs(2.0 * C - NN - SS);
        
                // 自适应插值
                if (gradH < gradV) {
                    g = (W + E) * 0.5 + (2.0 * C - WW - EE) * 0.25;
                } else if (gradV < gradH) {
                    g = (N + S) * 0.5 + (2.0 * C - NN - SS) * 0.25;
                } else {
                    g = (N + S + W + E) * 0.25 + (4.0 * C - NN - SS - WW - EE) * 0.125;
                }
            }
        
            // ============================
            // 2. 恢复红/蓝通道 (R/B)
            // ============================
            if (type == 1) { 
                // 中心是 Green (Gr 或 Gb)
                int idx = getChannelIndex(coord); // 1=Gr, 2=Gb
                bool isGr = (idx == 1); // Gr 行有红，Gb 行有蓝
        
                // 获取一阶和二阶邻域数据
                float N = fetch(coord + ivec2(0, -1));
                float S = fetch(coord + ivec2(0, 1));
                float W = fetch(coord + ivec2(-1, 0));
                float E = fetch(coord + ivec2(1, 0));
                
                // 用于拉普拉斯色差修正的二阶数据
                float NN = fetch(coord + ivec2(0, -2));
                float SS = fetch(coord + ivec2(0, 2));
                float WW = fetch(coord + ivec2(-2, 0));
                float EE = fetch(coord + ivec2(2, 0));
        
                if (isGr) { 
                    // Gr: 水平是 R, 垂直是 B
                    r = (W + E) * 0.5 + (g - (WW + EE) * 0.5) * 0.5;
                    b = (N + S) * 0.5 + (g - (NN + SS) * 0.5) * 0.5;
                } else { 
                    // Gb: 水平是 B, 垂直是 R
                    r = (N + S) * 0.5 + (g - (NN + SS) * 0.5) * 0.5;
                    b = (W + E) * 0.5 + (g - (WW + EE) * 0.5) * 0.5;
                }
            } 
            else if (type == 0) { 
                // 中心是 Red
                r = C;
                
                // 恢复 Blue (对角线)
                float BNW = fetch(coord + ivec2(-1, -1));
                float BNE = fetch(coord + ivec2(1, -1));
                float BSW = fetch(coord + ivec2(-1, 1));
                float BSE = fetch(coord + ivec2(1, 1));
                
                // 恢复 G (十字) - 用于色差计算
                float GN = fetch(coord + ivec2(0, -1));
                float GS = fetch(coord + ivec2(0, 1));
                float GW = fetch(coord + ivec2(-1, 0));
                float GE = fetch(coord + ivec2(1, 0));
        
                b = (BNW + BNE + BSW + BSE) * 0.25 + (g - (GN + GS + GW + GE) * 0.25) * 0.5;
                
            } else { 
                // 中心是 Blue
                b = C;
        
                // 恢复 Red (对角线)
                float RNW = fetch(coord + ivec2(-1, -1));
                float RNE = fetch(coord + ivec2(1, -1));
                float RSW = fetch(coord + ivec2(-1, 1));
                float RSE = fetch(coord + ivec2(1, 1));
        
                float GN = fetch(coord + ivec2(0, -1));
                float GS = fetch(coord + ivec2(0, 1));
                float GW = fetch(coord + ivec2(-1, 0));
                float GE = fetch(coord + ivec2(1, 0));
        
                r = (RNW + RNE + RSW + RSE) * 0.25 + (g - (GN + GS + GW + GE) * 0.25) * 0.5;
            }
        
            // 仅做非负保护 (物理光照不能为负)，但不限制上限以支持 HDR
            return max(vec3(0.0), vec3(r, g, b));
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
            float strength = 0.8 * 0.5;
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
            vec3 rgb = demosaicHamiltonAdams(coord);

            // 色彩转换 (CCM)
            rgb = uColorCorrectionMatrix * rgb;
            
            rgb = applyDoubleEndedDesaturation(rgb);

            // 应用曝光增益 (Linear HDR Space)
            rgb *= uExposureGain;
            
            rgb = applyTonemap(rgb);
            
            // 高级色彩校正 (肤色 -> 自然饱和度)
            //rgb = optimizeSkinTone(rgb);
            rgb = applyVibrance(rgb);
            

            // 步骤 7: sRGB gamma 编码 (Linear -> sRGB)
            rgb = linearToSRGB(rgb);
            
            //rgb = applyOutputSharpening(rgb, coord);

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
