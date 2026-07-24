package com.hinnka.mycamera.raw

/**
 * GPU RCD 解马赛克计算着色器库 (1:1 高保真直接移植版)
 *
 * 逐行平移自 darktable 的 demosaic_rcd.cl 核心算子
 * 使用 SSBO (Shader Storage Buffer Object) 在全局显存中共享像素差分与梯度状态，
 * 彻底避免手写算法简化引起的图像拉链与边缘杂色！
 */
object RcdShaders {

    /** RCD 主体算子不写入可靠结果的照片外圈宽度。 */
    const val OUTPUT_MARGIN = 9

    /** PPG 最深的递归邻域半径，用于验证条带是否包含完整输入。 */
    const val PPG_RADIUS = 4

    /** 区域调用方在输出采样范围之外至少保留的 RCD 输入像素数。 */
    const val REGION_HALO_PX = OUTPUT_MARGIN + 1

    const val HIGHLIGHT_RECONSTRUCTION_THRESHOLD = 0.985f
    const val HIGHLIGHT_RECONSTRUCTION_CEILING = 8.0f

    /**
     * RCD 四周统一使用的 PPG 内核。
     *
     * 嵌入该内核的 shader 必须先提供 `rawAt(ivec2)` 与 `colorAt(ivec2)`；两者负责
     * 把虚拟照片坐标映射到实际 CFA 存储。这样完整图与条带图共享同一份 PPG 数学实现，
     * 只有坐标映射不同。
     */
    private val PPG_KERNEL = """
        float ppgGreenAt(ivec2 coord) {
            // Keep the virtual coordinate so recursive PPG estimates use the neighbourhood
            // around that reflected photosite, rather than shifting the kernel into the image.
            ivec2 center = coord;

            int ownColor = colorAt(center);
            float pc = rawAt(center);
            if (ownColor == GREEN) {
                return max(0.0, pc);
            }

            float pym = rawAt(center + ivec2(0, -1));
            float pym2 = rawAt(center + ivec2(0, -2));
            float pym3 = rawAt(center + ivec2(0, -3));
            float pyM = rawAt(center + ivec2(0, 1));
            float pyM2 = rawAt(center + ivec2(0, 2));
            float pyM3 = rawAt(center + ivec2(0, 3));
            float pxm = rawAt(center + ivec2(-1, 0));
            float pxm2 = rawAt(center + ivec2(-2, 0));
            float pxm3 = rawAt(center + ivec2(-3, 0));
            float pxM = rawAt(center + ivec2(1, 0));
            float pxM2 = rawAt(center + ivec2(2, 0));
            float pxM3 = rawAt(center + ivec2(3, 0));

            float guessx = (pxm + pc + pxM) * 2.0 - pxM2 - pxm2;
            float diffx = (abs(pxm2 - pc) + abs(pxM2 - pc) + abs(pxm - pxM)) * 3.0 +
                (abs(pxM3 - pxM) + abs(pxm3 - pxm)) * 2.0;
            float guessy = (pym + pc + pyM) * 2.0 - pyM2 - pym2;
            float diffy = (abs(pym2 - pc) + abs(pyM2 - pc) + abs(pym - pyM)) * 3.0 +
                (abs(pyM3 - pyM) + abs(pym3 - pym)) * 2.0;

            float green;
            if (diffx > diffy) {
                green = clamp(guessy * 0.25, min(pym, pyM), max(pym, pyM));
            } else {
                green = clamp(guessx * 0.25, min(pxm, pxM), max(pxm, pxM));
            }
            return max(0.0, green);
        }

        vec3 ppgColorAt(ivec2 coord) {
            ivec2 center = coord;

            int ownColor = colorAt(center);
            float pc = max(0.0, rawAt(center));
            float green = ppgGreenAt(center);
            vec3 color = vec3(0.0, green, 0.0);

            if (ownColor == RED) {
                color.r = pc;
                ivec2 nw = center + ivec2(-1, -1);
                ivec2 ne = center + ivec2(1, -1);
                ivec2 sw = center + ivec2(-1, 1);
                ivec2 se = center + ivec2(1, 1);
                float diff1 = abs(rawAt(nw) - rawAt(se)) +
                    abs(ppgGreenAt(nw) - green) + abs(ppgGreenAt(se) - green);
                float guess1 = rawAt(nw) + rawAt(se) + 2.0 * green -
                    ppgGreenAt(nw) - ppgGreenAt(se);
                float diff2 = abs(rawAt(ne) - rawAt(sw)) +
                    abs(ppgGreenAt(ne) - green) + abs(ppgGreenAt(sw) - green);
                float guess2 = rawAt(ne) + rawAt(sw) + 2.0 * green -
                    ppgGreenAt(ne) - ppgGreenAt(sw);
                if (diff1 > diff2) {
                    color.b = guess2 * 0.5;
                } else if (diff1 < diff2) {
                    color.b = guess1 * 0.5;
                } else {
                    color.b = (guess1 + guess2) * 0.25;
                }
            } else if (ownColor == BLUE) {
                color.b = pc;
                ivec2 nw = center + ivec2(-1, -1);
                ivec2 ne = center + ivec2(1, -1);
                ivec2 sw = center + ivec2(-1, 1);
                ivec2 se = center + ivec2(1, 1);
                float diff1 = abs(rawAt(nw) - rawAt(se)) +
                    abs(ppgGreenAt(nw) - green) + abs(ppgGreenAt(se) - green);
                float guess1 = rawAt(nw) + rawAt(se) + 2.0 * green -
                    ppgGreenAt(nw) - ppgGreenAt(se);
                float diff2 = abs(rawAt(ne) - rawAt(sw)) +
                    abs(ppgGreenAt(ne) - green) + abs(ppgGreenAt(sw) - green);
                float guess2 = rawAt(ne) + rawAt(sw) + 2.0 * green -
                    ppgGreenAt(ne) - ppgGreenAt(sw);
                if (diff1 > diff2) {
                    color.r = guess2 * 0.5;
                } else if (diff1 < diff2) {
                    color.r = guess1 * 0.5;
                } else {
                    color.r = (guess1 + guess2) * 0.25;
                }
            } else {
                color.g = pc;
                if (colorAt(center + ivec2(1, 0)) == RED) {
                    color.b = (rawAt(center + ivec2(0, -1)) + rawAt(center + ivec2(0, 1)) +
                        2.0 * color.g - ppgGreenAt(center + ivec2(0, -1)) -
                        ppgGreenAt(center + ivec2(0, 1))) * 0.5;
                    color.r = (rawAt(center + ivec2(-1, 0)) + rawAt(center + ivec2(1, 0)) +
                        2.0 * color.g - ppgGreenAt(center + ivec2(-1, 0)) -
                        ppgGreenAt(center + ivec2(1, 0))) * 0.5;
                } else {
                    color.r = (rawAt(center + ivec2(0, -1)) + rawAt(center + ivec2(0, 1)) +
                        2.0 * color.g - ppgGreenAt(center + ivec2(0, -1)) -
                        ppgGreenAt(center + ivec2(0, 1))) * 0.5;
                    color.b = (rawAt(center + ivec2(-1, 0)) + rawAt(center + ivec2(1, 0)) +
                        2.0 * color.g - ppgGreenAt(center + ivec2(-1, 0)) -
                        ppgGreenAt(center + ivec2(1, 0))) * 0.5;
                }
            }

            return max(color, vec3(0.0));
        }
    """.trimIndent()

    /**
     * 1. 初始化与归一化片元导入 (rcd_populate.comp)
     */
    val POPULATE = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 16, local_size_y = 16) in;

        layout (binding = 0) uniform highp usampler2D uRawTexture; // 单通道 R16UI 原始图像
        layout (binding = 1) uniform highp sampler2D uLensShadingMap; // R, Gr, Gb, B 增益图

        layout(std430, binding = 0) buffer CFA_Buf    { float cfa[]; };
        layout(std430, binding = 1) buffer RGB0_Buf   { float rgb0[]; }; // R
        layout(std430, binding = 2) buffer RGB1_Buf   { float rgb1[]; }; // G
        layout(std430, binding = 3) buffer RGB2_Buf   { float rgb2[]; }; // B

        uniform ivec2 uImageSize;
        uniform ivec2 uFullImageSize;
        uniform ivec2 uGlobalOrigin;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevel; // R, Gr, Gb, B 或 [0,1,2,3] 四通道黑电平
        uniform float uWhiteLevel;
        // R, G, G, B relative gains used only to condition RCD calculations.
        // WRITE_OUTPUT removes them again, so the externally visible result remains camera RGB.
        uniform vec4 uWhiteBalanceGains;
        uniform float uHighlightClipThreshold;
        uniform float uHighlightCeiling;
        uniform bool uHighlightReconstructionEnabled;
        uniform bool uLensShadingEnabled;
        uniform bool uLensShadingUsesDngGrid;
        uniform vec2 uLensShadingMapSize;
        uniform vec4 uLensShadingGrid; // originH, originV, spacingH, spacingV
        uniform vec2 uLensShadingBoundsOrigin;
        uniform vec2 uLensShadingBoundsSize;

        #define RED 0
        #define GREEN 1
        #define BLUE 2

        int getBayerColor(int cfaPattern, int col, int row) {
            int r = row % 2;
            int c = col % 2;
            if (cfaPattern == 0) { // RGGB
                if (r == 0) return (c == 0) ? 0 : 1;
                else return (c == 0) ? 1 : 2;
            } else if (cfaPattern == 1) { // GRBG
                if (r == 0) return (c == 0) ? 1 : 0;
                else return (c == 0) ? 2 : 1;
            } else if (cfaPattern == 2) { // GBRG
                if (r == 0) return (c == 0) ? 1 : 2;
                else return (c == 0) ? 0 : 1;
            } else { // BGGR (3)
                if (r == 0) return (c == 0) ? 2 : 1;
                else return (c == 0) ? 1 : 0;
            }
        }

        int getBlackLevelIndex(int cfaPattern, int col, int row) {
            int r = row % 2;
            int c = col % 2;
            if (cfaPattern == 0) { // RGGB
                if (r == 0) return (c == 0) ? 0 : 1; // R, Gr
                else return (c == 0) ? 2 : 3;        // Gb, B
            } else if (cfaPattern == 1) { // GRBG
                if (r == 0) return (c == 0) ? 1 : 0; // Gr, R
                else return (c == 0) ? 3 : 2;        // B, Gb
            } else if (cfaPattern == 2) { // GBRG
                if (r == 0) return (c == 0) ? 2 : 3; // Gb, B
                else return (c == 0) ? 0 : 1;        // R, Gr
            } else { // BGGR (3)
                if (r == 0) return (c == 0) ? 3 : 2; // B, Gb
                else return (c == 0) ? 1 : 0;        // Gr, R
            }
        }

        ivec2 clampCoord(ivec2 coord) {
            return clamp(coord, ivec2(0), uImageSize - ivec2(1));
        }

        int getLensShadingIndex(int channelIndex, ivec2 coord) {
            if (uLensShadingUsesDngGrid || channelIndex == 0 || channelIndex == 3) {
                return channelIndex;
            }
            return ((coord.y & 1) == 0) ? 1 : 2;
        }

        float getLensShadingGain(int channelIndex, ivec2 coord) {
            if (!uLensShadingEnabled) {
                return 1.0;
            }
            ivec2 globalCoord = coord + uGlobalOrigin;
            vec2 norm = (vec2(globalCoord) + vec2(0.5)) / vec2(uFullImageSize);
            vec2 uv = norm;
            if (uLensShadingUsesDngGrid) {
                vec2 boundsSize = max(uLensShadingBoundsSize, vec2(1.0));
                norm = (vec2(globalCoord) + vec2(0.5) - uLensShadingBoundsOrigin) / boundsSize;
                vec2 origin = uLensShadingGrid.xy;
                vec2 spacing = max(uLensShadingGrid.zw, vec2(1e-8));
                vec2 mapIndex = (norm - origin) / spacing;
                uv = (mapIndex + vec2(0.5)) / max(uLensShadingMapSize, vec2(1.0));
            }
            vec4 gains = texture(uLensShadingMap, uv);
            return max(gains[getLensShadingIndex(channelIndex, coord)], 0.0);
        }

        float readSensorNormalized(ivec2 coord, int channelIndex) {
            ivec2 sampleCoord = clampCoord(coord);
            uint rawVal = texelFetch(uRawTexture, sampleCoord, 0).r;
            float bl = uBlackLevel[channelIndex];
            float wl = max(uWhiteLevel, bl + 1.0);
            return max(float(rawVal) - bl, 0.0) / max(wl - bl, 1.0);
        }

        float calculationSampleAt(ivec2 coord, int channelIndex) {
            ivec2 sampleCoord = clampCoord(coord);
            float sensor = readSensorNormalized(sampleCoord, channelIndex);
            float linear = sensor * getLensShadingGain(channelIndex, sampleCoord) *
                max(uWhiteBalanceGains[channelIndex], 1e-6);
            return min(max(linear, 0.0), uHighlightCeiling);
        }

        // Both ordinary interpolation and clipped-site estimation stay in the same
        // white-balanced calculation domain. Output conversion is deliberately deferred.
        float estimateOpposedLinear(ivec2 coord, int color, float fallback) {
            float sumRed = 0.0;
            float sumGreen = 0.0;
            float sumBlue = 0.0;
            float countRed = 0.0;
            float countGreen = 0.0;
            float countBlue = 0.0;

            for (int dy = -1; dy <= 1; dy++) {
                for (int dx = -1; dx <= 1; dx++) {
                    ivec2 sampleCoord = clampCoord(coord + ivec2(dx, dy));
                    int sampleColor = getBayerColor(uCfaPattern, sampleCoord.x, sampleCoord.y);
                    int channelIndex = getBlackLevelIndex(uCfaPattern, sampleCoord.x, sampleCoord.y);
                    float balanced = calculationSampleAt(sampleCoord, channelIndex);

                    if (sampleColor == RED) {
                        sumRed += balanced;
                        countRed += 1.0;
                    } else if (sampleColor == GREEN) {
                        sumGreen += balanced;
                        countGreen += 1.0;
                    } else {
                        sumBlue += balanced;
                        countBlue += 1.0;
                    }
                }
            }

            const float power = 3.0;
            float rootRed = pow(max(sumRed / max(countRed, 1.0), 0.0), 1.0 / power);
            float rootGreen = pow(max(sumGreen / max(countGreen, 1.0), 0.0), 1.0 / power);
            float rootBlue = pow(max(sumBlue / max(countBlue, 1.0), 0.0), 1.0 / power);

            float opposedRoot;
            if (color == RED) {
                opposedRoot = 0.5 * (rootGreen + rootBlue);
            } else if (color == GREEN) {
                opposedRoot = 0.5 * (rootRed + rootBlue);
            } else {
                opposedRoot = 0.5 * (rootRed + rootGreen);
            }

            float reconstructed = pow(max(opposedRoot, 0.0), power);
            return max(reconstructed, fallback);
        }

        float reconstructHighlightSample(ivec2 coord, int channelIndex, int color, float sensor, float linear) {
            if (!uHighlightReconstructionEnabled) {
                return min(max(linear, 0.0), uHighlightCeiling);
            }

            float clipMask = smoothstep(uHighlightClipThreshold, 1.0, sensor);
            if (clipMask <= 0.0) {
                return min(max(linear, 0.0), uHighlightCeiling);
            }

            float reconstructed = estimateOpposedLinear(coord, color, linear);
            return min(mix(linear, reconstructed, clipMask), uHighlightCeiling);
        }

        void main() {
            ivec2 coord = ivec2(gl_GlobalInvocationID.xy);
            if (coord.x >= uImageSize.x || coord.y >= uImageSize.y) return;

            int idx = coord.y * uImageSize.x + coord.x;

            int blIdx = getBlackLevelIndex(uCfaPattern, coord.x, coord.y);
            int color = getBayerColor(uCfaPattern, coord.x, coord.y);
            float sensor = readSensorNormalized(coord, blIdx);
            float linear = calculationSampleAt(coord, blIdx);
            float val = reconstructHighlightSample(coord, blIdx, color, sensor, linear);

            cfa[idx] = val;

            if (color == RED) {
                rgb0[idx] = val;
                rgb1[idx] = 0.0;
                rgb2[idx] = 0.0;
            } else if (color == GREEN) {
                rgb0[idx] = 0.0;
                rgb1[idx] = val;
                rgb2[idx] = 0.0;
            } else { // BLUE
                rgb0[idx] = 0.0;
                rgb1[idx] = 0.0;
                rgb2[idx] = val;
            }
        }
    """.trimIndent()

    /**
     * 2. 共享内存梯度估计与水平/垂直选择 (rcd_step_1.comp)
     */
    val STEP_1 = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 16, local_size_y = 16) in;

        layout(std430, binding = 0) buffer CFA_Buf    { float cfa[]; };
        layout(std430, binding = 4) buffer VH_Dir_Buf { float VH_dir[]; };

        uniform ivec2 uImageSize;

        #define epssq 1e-10f

        shared float sh_buffer[576]; // 24 * 24

        float fsquare(float x) {
            return x * x;
        }

        float rcd_vdiff_local(int offset, int stride) {
            float val = sh_buffer[offset - 3 * stride] - sh_buffer[offset - stride] - sh_buffer[offset + stride] + sh_buffer[offset + 3 * stride] 
                        - 3.0f * (sh_buffer[offset - 2 * stride] + sh_buffer[offset + 2 * stride]) + 6.0f * sh_buffer[offset];
            return fsquare(val);
        }

        float rcd_hdiff_local(int offset) {
            float val = sh_buffer[offset - 3] - sh_buffer[offset - 1] - sh_buffer[offset + 1] + sh_buffer[offset + 3]
                        - 3.0f * (sh_buffer[offset - 2] + sh_buffer[offset + 2]) + 6.0f * sh_buffer[offset];
            return fsquare(val);
        }

        void main() {
            int xlsz = 16;
            int ylsz = 16;
            int xlid = int(gl_LocalInvocationID.x);
            int ylid = int(gl_LocalInvocationID.y);
            int xgid = int(gl_WorkGroupID.x);
            int ygid = int(gl_WorkGroupID.y);
            int l = ylid * xlsz + xlid;
            int lsz = xlsz * ylsz; // 256
            int stride = 24;
            int maxbuf = 576;
            int xul = xgid * xlsz - 2;
            int yul = ygid * ylsz - 2;

            for (int n = 0; n <= maxbuf / lsz; n++) {
                int bufidx = n * lsz + l;
                if (bufidx >= maxbuf) continue;
                int xx = clamp(xul + bufidx % stride, 0, uImageSize.x - 1);
                int yy = clamp(yul + bufidx / stride, 0, uImageSize.y - 1);
                sh_buffer[bufidx] = cfa[yy * uImageSize.x + xx];
            }

            memoryBarrierShared();
            barrier();

            int col = 2 + int(gl_GlobalInvocationID.x);
            int row = 2 + int(gl_GlobalInvocationID.y);
            if (row >= uImageSize.y - 2 || col >= uImageSize.x - 2) return;

            int idx = row * uImageSize.x + col;
            int buf_offset = (ylid + 4) * stride + (xlid + 4);

            float V_Stat = max(epssq, rcd_vdiff_local(buf_offset - stride, stride)
                                      + rcd_vdiff_local(buf_offset, stride)
                                      + rcd_vdiff_local(buf_offset + stride, stride));
            float H_Stat = max(epssq, rcd_hdiff_local(buf_offset - 1)
                                      + rcd_hdiff_local(buf_offset)
                                      + rcd_hdiff_local(buf_offset + 1));
            VH_dir[idx] = V_Stat / (V_Stat + H_Stat);
        }
    """.trimIndent()

    /**
     * 3. 邻域低通滤波 LPF (rcd_step_2.comp)
     */
    val STEP_2 = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 16, local_size_y = 16) in;

        layout(std430, binding = 0) buffer CFA_Buf { float cfa[]; };
        layout(std430, binding = 5) buffer LPF_Buf { float lpf[]; };

        uniform ivec2 uImageSize;
        uniform int uCfaPattern;

        int getBayerColor(int cfaPattern, int col, int row) {
            int r = row % 2;
            int c = col % 2;
            if (cfaPattern == 0) { // RGGB
                if (r == 0) return (c == 0) ? 0 : 1;
                else return (c == 0) ? 1 : 2;
            } else if (cfaPattern == 1) { // GRBG
                if (r == 0) return (c == 0) ? 1 : 0;
                else return (c == 0) ? 2 : 1;
            } else if (cfaPattern == 2) { // GBRG
                if (r == 0) return (c == 0) ? 1 : 2;
                else return (c == 0) ? 0 : 1;
            } else { // BGGR (3)
                if (r == 0) return (c == 0) ? 2 : 1;
                else return (c == 0) ? 1 : 0;
            }
        }

        void main() {
            int row = 2 + int(gl_GlobalInvocationID.y);
            int col = 2 + (getBayerColor(uCfaPattern, 0, row) & 1) + 2 * int(gl_GlobalInvocationID.x);
            if (col >= uImageSize.x - 2 || row >= uImageSize.y - 2) return;

            int idx = row * uImageSize.x + col;
            int w = uImageSize.x;

            lpf[idx / 2] = cfa[idx]
               + 0.5f * (cfa[idx - w] + cfa[idx + w] + cfa[idx - 1] + cfa[idx + 1])
               + 0.25f * (cfa[idx - w - 1] + cfa[idx - w + 1] + cfa[idx + w - 1] + cfa[idx + w + 1]);
        }
    """.trimIndent()

    /**
     * 4. 绿色通道在红蓝 CFA 位置插值 (rcd_step_3.comp)
     */
    val STEP_3 = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 16, local_size_y = 16) in;

        layout(std430, binding = 0) buffer CFA_Buf    { float cfa[]; };
        layout(std430, binding = 2) buffer RGB1_Buf   { float rgb1[]; };
        layout(std430, binding = 4) buffer VH_Dir_Buf { float VH_dir[]; };
        layout(std430, binding = 5) buffer LPF_Buf    { float lpf[]; };

        uniform ivec2 uImageSize;
        uniform int uCfaPattern;

        #define eps 1e-5f

        int getBayerColor(int cfaPattern, int col, int row) {
            int r = row % 2;
            int c = col % 2;
            if (cfaPattern == 0) { // RGGB
                if (r == 0) return (c == 0) ? 0 : 1;
                else return (c == 0) ? 1 : 2;
            } else if (cfaPattern == 1) { // GRBG
                if (r == 0) return (c == 0) ? 1 : 0;
                else return (c == 0) ? 2 : 1;
            } else if (cfaPattern == 2) { // GBRG
                if (r == 0) return (c == 0) ? 1 : 2;
                else return (c == 0) ? 0 : 1;
            } else { // BGGR (3)
                if (r == 0) return (c == 0) ? 2 : 1;
                else return (c == 0) ? 1 : 0;
            }
        }

        void main() {
            int row = 4 + int(gl_GlobalInvocationID.y);
            int col = 4 + (getBayerColor(uCfaPattern, 0, row) & 1) + 2 * int(gl_GlobalInvocationID.x);
            if (col >= uImageSize.x - 5 || row >= uImageSize.y - 5) return;

            int w = uImageSize.x;
            int idx = row * w + col;
            int lidx = idx / 2;
            int w2 = 2 * w;
            int w3 = 3 * w;
            int w4 = 4 * w;

            float VH_Central_Value   = VH_dir[idx];
            float VH_Neighbourhood_Value = 0.25f * (VH_dir[idx - w - 1] + VH_dir[idx - w + 1] + VH_dir[idx + w - 1] + VH_dir[idx + w + 1]);
            float VH_Disc = (abs(0.5f - VH_Central_Value) < abs(0.5f - VH_Neighbourhood_Value)) ? VH_Neighbourhood_Value : VH_Central_Value;

            float cfai = cfa[idx];
            float N_Grad = eps + abs(cfa[idx - w] - cfa[idx + w]) + abs(cfai - cfa[idx - w2]) + abs(cfa[idx - w] - cfa[idx - w3]) + abs(cfa[idx - w2] - cfa[idx - w4]);
            float S_Grad = eps + abs(cfa[idx + w] - cfa[idx - w]) + abs(cfai - cfa[idx + w2]) + abs(cfa[idx + w] - cfa[idx + w3]) + abs(cfa[idx + w2] - cfa[idx + w4]);
            float W_Grad = eps + abs(cfa[idx - 1] - cfa[idx + 1]) + abs(cfai - cfa[idx - 2]) + abs(cfa[idx - 1] - cfa[idx - 3]) + abs(cfa[idx - 2] - cfa[idx - 4]);
            float E_Grad = eps + abs(cfa[idx + 1] - cfa[idx - 1]) + abs(cfai - cfa[idx + 2]) + abs(cfa[idx + 1] - cfa[idx + 3]) + abs(cfa[idx + 2] - cfa[idx + 4]);

            float lfpi = lpf[lidx];
            float N_Est = cfa[idx - w] * (lfpi + lfpi) / (eps + lfpi + lpf[lidx - w]);
            float S_Est = cfa[idx + w] * (lfpi + lfpi) / (eps + lfpi + lpf[lidx + w]);
            float W_Est = cfa[idx - 1] * (lfpi + lfpi) / (eps + lfpi + lpf[lidx - 1]);
            float E_Est = cfa[idx + 1] * (lfpi + lfpi) / (eps + lfpi + lpf[lidx + 1]);

            float V_Est = (S_Grad * N_Est + N_Grad * S_Est) / (N_Grad + S_Grad);
            float H_Est = (W_Grad * E_Est + E_Grad * W_Est) / (E_Grad + W_Grad);

            rgb1[idx] = mix(V_Est, H_Est, clamp(VH_Disc, 0.0, 1.0));
        }
    """.trimIndent()

    /**
     * 5. 对角线差分计算 (rcd_step_4_0.comp)
     */
    val STEP_4_0 = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 16, local_size_y = 16) in;

        layout(std430, binding = 0) buffer CFA_Buf    { float cfa[]; };
        layout(std430, binding = 6) buffer P_Diff_Buf { float p_diff[]; };
        layout(std430, binding = 7) buffer Q_Diff_Buf { float q_diff[]; };

        uniform ivec2 uImageSize;

        float fsquare(float x) {
            return x * x;
        }

        void main() {
            int row = 3 + int(gl_GlobalInvocationID.y);
            int col = 3 + 2 * int(gl_GlobalInvocationID.x);
            if (col >= uImageSize.x - 4 || row >= uImageSize.y - 4) return;

            int w = uImageSize.x;
            int idx = row * w + col;
            int idx2 = idx / 2;
            int w2 = 2 * w;
            int w3 = 3 * w;

            p_diff[idx2] = fsquare((cfa[idx - w3 - 3] - cfa[idx - w - 1] - cfa[idx + w + 1] + cfa[idx + w3 + 3]) - 3.0f * (cfa[idx - w2 - 2] + cfa[idx + w2 + 2]) + 6.0f * cfa[idx]);
            q_diff[idx2] = fsquare((cfa[idx - w3 + 3] - cfa[idx - w + 1] - cfa[idx + w - 1] + cfa[idx + w3 - 3]) - 3.0f * (cfa[idx - w2 + 2] + cfa[idx + w2 - 2]) + 6.0f * cfa[idx]);
        }
    """.trimIndent()

    /**
     * 6. 对角线方向选择强弱度 (rcd_step_4_1.comp)
     */
    val STEP_4_1 = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 16, local_size_y = 16) in;

        layout(std430, binding = 6) buffer P_Diff_Buf { float p_diff[]; };
        layout(std430, binding = 7) buffer Q_Diff_Buf { float q_diff[]; };
        layout(std430, binding = 5) buffer PQ_Dir_Buf { float PQ_dir[]; };

        uniform ivec2 uImageSize;
        uniform int uCfaPattern;

        #define epssq 1e-10f

        int getBayerColor(int cfaPattern, int col, int row) {
            int r = row % 2;
            int c = col % 2;
            if (cfaPattern == 0) { // RGGB
                if (r == 0) return (c == 0) ? 0 : 1;
                else return (c == 0) ? 1 : 2;
            } else if (cfaPattern == 1) { // GRBG
                if (r == 0) return (c == 0) ? 1 : 0;
                else return (c == 0) ? 2 : 1;
            } else if (cfaPattern == 2) { // GBRG
                if (r == 0) return (c == 0) ? 1 : 2;
                else return (c == 0) ? 0 : 1;
            } else { // BGGR (3)
                if (r == 0) return (c == 0) ? 2 : 1;
                else return (c == 0) ? 1 : 0;
            }
        }

        void main() {
            int row = 2 + int(gl_GlobalInvocationID.y);
            int col = 2 + (getBayerColor(uCfaPattern, 0, row) & 1) + 2 * int(gl_GlobalInvocationID.x);
            if (col >= uImageSize.x - 3 || row >= uImageSize.y - 3) return;

            int w = uImageSize.x;
            int idx = row * w + col;
            int idx2 = idx / 2;
            int idx3 = (idx - w - 1) / 2;
            int idx4 = (idx + w - 1) / 2;

            float P_Stat = max(epssq, p_diff[idx3]     + p_diff[idx2] + p_diff[idx4 + 1]);
            float Q_Stat = max(epssq, q_diff[idx3 + 1] + q_diff[idx2] + q_diff[idx4]);
            PQ_dir[idx2] = P_Stat / (P_Stat + Q_Stat);
        }
    """.trimIndent()

    /**
     * 7. 红蓝通道在红蓝 CFA 位置根据对角线插值 (rcd_step_4_2.comp)
     */
    val STEP_4_2 = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 16, local_size_y = 16) in;

        layout(std430, binding = 0) buffer CFA_Buf    { float cfa[]; };
        layout(std430, binding = 1) buffer RGB0_Buf   { float rgb0[]; }; // R
        layout(std430, binding = 2) buffer RGB1_Buf   { float rgb1[]; }; // G
        layout(std430, binding = 3) buffer RGB2_Buf   { float rgb2[]; }; // B
        layout(std430, binding = 4) buffer PQ_Dir_Buf { float PQ_dir[]; };

        uniform ivec2 uImageSize;
        uniform int uCfaPattern;

        #define eps 1e-5f
        #define RED 0
        #define GREEN 1
        #define BLUE 2

        int getBayerColor(int cfaPattern, int col, int row) {
            int r = row % 2;
            int c = col % 2;
            if (cfaPattern == 0) { // RGGB
                if (r == 0) return (c == 0) ? 0 : 1;
                else return (c == 0) ? 1 : 2;
            } else if (cfaPattern == 1) { // GRBG
                if (r == 0) return (c == 0) ? 1 : 0;
                else return (c == 0) ? 2 : 1;
            } else if (cfaPattern == 2) { // GBRG
                if (r == 0) return (c == 0) ? 1 : 2;
                else return (c == 0) ? 0 : 1;
            } else { // BGGR (3)
                if (r == 0) return (c == 0) ? 2 : 1;
                else return (c == 0) ? 1 : 0;
            }
        }

        void main() {
            int row = 4 + int(gl_GlobalInvocationID.y);
            int col = 4 + (getBayerColor(uCfaPattern, 0, row) & 1) + 2 * int(gl_GlobalInvocationID.x);
            if (col >= uImageSize.x - 4 || row >= uImageSize.y - 4) return;

            int w = uImageSize.x;
            int idx = row * w + col;
            int pqidx = idx / 2;
            int pqidx2 = (idx - w - 1) / 2;
            int pqidx3 = (idx + w - 1) / 2;
            int w2 = 2 * w;
            int w3 = 3 * w;

            int targetColor = 2 - getBayerColor(uCfaPattern, col, row);

            float PQ_Central_Value   = PQ_dir[pqidx];
            float PQ_Neighbourhood_Value = 0.25f * (PQ_dir[pqidx2] + PQ_dir[pqidx2 + 1] + PQ_dir[pqidx3] + PQ_dir[pqidx3 + 1]);
            float PQ_Disc = (abs(0.5f - PQ_Central_Value) < abs(0.5f - PQ_Neighbourhood_Value)) ? PQ_Neighbourhood_Value : PQ_Central_Value;

            float PQ_Disc_Clamped = clamp(PQ_Disc, 0.0f, 1.0f);

            if (targetColor == RED) {
                float NW_Grad = eps + abs(rgb0[idx - w - 1] - rgb0[idx + w + 1]) + abs(rgb0[idx - w - 1] - rgb0[idx - w3 - 3]) + abs(rgb1[idx] - rgb1[idx - w2 - 2]);
                float NE_Grad = eps + abs(rgb0[idx - w + 1] - rgb0[idx + w - 1]) + abs(rgb0[idx - w + 1] - rgb0[idx - w3 + 3]) + abs(rgb1[idx] - rgb1[idx - w2 + 2]);
                float SW_Grad = eps + abs(rgb0[idx - w + 1] - rgb0[idx + w - 1]) + abs(rgb0[idx + w - 1] - rgb0[idx + w3 - 3]) + abs(rgb1[idx] - rgb1[idx + w2 - 2]);
                float SE_Grad = eps + abs(rgb0[idx - w - 1] - rgb0[idx + w + 1]) + abs(rgb0[idx + w + 1] - rgb0[idx + w3 + 3]) + abs(rgb1[idx] - rgb1[idx + w2 + 2]);

                float NW_Est = rgb0[idx - w - 1] - rgb1[idx - w - 1];
                float NE_Est = rgb0[idx - w + 1] - rgb1[idx - w + 1];
                float SW_Est = rgb0[idx + w - 1] - rgb1[idx + w - 1];
                float SE_Est = rgb0[idx + w + 1] - rgb1[idx + w + 1];

                float P_Est = (NW_Grad * SE_Est + SE_Grad * NW_Est) / (NW_Grad + SE_Grad);
                float Q_Est = (NE_Grad * SW_Est + SW_Grad * NE_Est) / (NE_Grad + SW_Grad);

                rgb0[idx] = rgb1[idx] + mix(P_Est, Q_Est, PQ_Disc_Clamped);
            } else if (targetColor == BLUE) {
                float NW_Grad = eps + abs(rgb2[idx - w - 1] - rgb2[idx + w + 1]) + abs(rgb2[idx - w - 1] - rgb2[idx - w3 - 3]) + abs(rgb1[idx] - rgb1[idx - w2 - 2]);
                float NE_Grad = eps + abs(rgb2[idx - w + 1] - rgb2[idx + w - 1]) + abs(rgb2[idx - w + 1] - rgb2[idx - w3 + 3]) + abs(rgb1[idx] - rgb1[idx - w2 + 2]);
                float SW_Grad = eps + abs(rgb2[idx - w + 1] - rgb2[idx + w - 1]) + abs(rgb2[idx + w - 1] - rgb2[idx + w3 - 3]) + abs(rgb1[idx] - rgb1[idx + w2 - 2]);
                float SE_Grad = eps + abs(rgb2[idx - w - 1] - rgb2[idx + w + 1]) + abs(rgb2[idx + w + 1] - rgb2[idx + w3 + 3]) + abs(rgb1[idx] - rgb1[idx + w2 + 2]);

                float NW_Est = rgb2[idx - w - 1] - rgb1[idx - w - 1];
                float NE_Est = rgb2[idx - w + 1] - rgb1[idx - w + 1];
                float SW_Est = rgb2[idx + w - 1] - rgb1[idx + w - 1];
                float SE_Est = rgb2[idx + w + 1] - rgb1[idx + w + 1];

                float P_Est = (NW_Grad * SE_Est + SE_Grad * NW_Est) / (NW_Grad + SE_Grad);
                float Q_Est = (NE_Grad * SW_Est + SW_Grad * NE_Est) / (NE_Grad + SW_Grad);

                rgb2[idx] = rgb1[idx] + mix(P_Est, Q_Est, PQ_Disc_Clamped);
            }
        }
    """.trimIndent()

    /**
     * 8. 红蓝通道在 G CFA 位置插值 (rcd_step_4_3.comp)
     */
    val STEP_4_3 = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 16, local_size_y = 16) in;

        layout(std430, binding = 0) buffer CFA_Buf    { float cfa[]; };
        layout(std430, binding = 1) buffer RGB0_Buf   { float rgb0[]; }; // R
        layout(std430, binding = 2) buffer RGB1_Buf   { float rgb1[]; }; // G
        layout(std430, binding = 3) buffer RGB2_Buf   { float rgb2[]; }; // B
        layout(std430, binding = 4) buffer VH_Dir_Buf { float VH_dir[]; };

        uniform ivec2 uImageSize;
        uniform int uCfaPattern;

        #define eps 1e-5f

        int getBayerColor(int cfaPattern, int col, int row) {
            int r = row % 2;
            int c = col % 2;
            if (cfaPattern == 0) { // RGGB
                if (r == 0) return (c == 0) ? 0 : 1;
                else return (c == 0) ? 1 : 2;
            } else if (cfaPattern == 1) { // GRBG
                if (r == 0) return (c == 0) ? 1 : 0;
                else return (c == 0) ? 2 : 1;
            } else if (cfaPattern == 2) { // GBRG
                if (r == 0) return (c == 0) ? 1 : 2;
                else return (c == 0) ? 0 : 1;
            } else { // BGGR (3)
                if (r == 0) return (c == 0) ? 2 : 1;
                else return (c == 0) ? 1 : 0;
            }
        }

        void main() {
            int row = 4 + int(gl_GlobalInvocationID.y);
            int col = 4 + (getBayerColor(uCfaPattern, 1, row) & 1) + 2 * int(gl_GlobalInvocationID.x);
            if (col >= uImageSize.x - 4 || row >= uImageSize.y - 4) return;

            int w = uImageSize.x;
            int idx = row * w + col;
            int w2 = 2 * w;
            int w3 = 3 * w;

            float VH_Central_Value   = VH_dir[idx];
            float VH_Neighbourhood_Value = 0.25f * (VH_dir[idx - w - 1] + VH_dir[idx - w + 1] + VH_dir[idx + w - 1] + VH_dir[idx + w + 1]);
            float VH_Disc = (abs(0.5f - VH_Central_Value) < abs(0.5f - VH_Neighbourhood_Value)) ? VH_Neighbourhood_Value : VH_Central_Value;

            float VH_Disc_Clamped = clamp(VH_Disc, 0.0f, 1.0f);

            float rgbi1 = rgb1[idx];
            float N1 = eps + abs(rgbi1 - rgb1[idx - w2]);
            float S1 = eps + abs(rgbi1 - rgb1[idx + w2]);
            float W1 = eps + abs(rgbi1 - rgb1[idx - 2]);
            float E1 = eps + abs(rgbi1 - rgb1[idx + 2]);

            float rgb1mw1 = rgb1[idx - w];
            float rgb1pw1 = rgb1[idx + w];
            float rgb1m1 =  rgb1[idx - 1];
            float rgb1p1 =  rgb1[idx + 1];

            // 1. 红色通道插值
            {
                float SNabs = abs(rgb0[idx - w] - rgb0[idx + w]);
                float EWabs = abs(rgb0[idx - 1] - rgb0[idx + 1]);

                float N_Grad = N1 + SNabs + abs(rgb0[idx - w] - rgb0[idx - w3]);
                float S_Grad = S1 + SNabs + abs(rgb0[idx + w] - rgb0[idx + w3]);
                float W_Grad = W1 + EWabs + abs(rgb0[idx - 1] - rgb0[idx - 3]);
                float E_Grad = E1 + EWabs + abs(rgb0[idx + 1] - rgb0[idx + 3]);

                float N_Est = rgb0[idx - w] - rgb1mw1;
                float S_Est = rgb0[idx + w] - rgb1pw1;
                float W_Est = rgb0[idx - 1] - rgb1m1;
                float E_Est = rgb0[idx + 1] - rgb1p1;

                float V_Est = (N_Grad * S_Est + S_Grad * N_Est) / (N_Grad + S_Grad);
                float H_Est = (E_Grad * W_Est + W_Grad * E_Est) / (E_Grad + W_Grad);

                rgb0[idx] = rgb1[idx] + mix(V_Est, H_Est, VH_Disc_Clamped);
            }

            // 2. 蓝色通道插值
            {
                float SNabs = abs(rgb2[idx - w] - rgb2[idx + w]);
                float EWabs = abs(rgb2[idx - 1] - rgb2[idx + 1]);

                float N_Grad = N1 + SNabs + abs(rgb2[idx - w] - rgb2[idx - w3]);
                float S_Grad = S1 + SNabs + abs(rgb2[idx + w] - rgb2[idx + w3]);
                float W_Grad = W1 + EWabs + abs(rgb2[idx - 1] - rgb2[idx - 3]);
                float E_Grad = E1 + EWabs + abs(rgb2[idx + 1] - rgb2[idx + 3]);

                float N_Est = rgb2[idx - w] - rgb1mw1;
                float S_Est = rgb2[idx + w] - rgb1pw1;
                float W_Est = rgb2[idx - 1] - rgb1m1;
                float E_Est = rgb2[idx + 1] - rgb1p1;

                float V_Est = (N_Grad * S_Est + S_Grad * N_Est) / (N_Grad + S_Grad);
                float H_Est = (E_Grad * W_Est + W_Grad * E_Est) / (E_Grad + W_Grad);

                rgb2[idx] = rgb1[idx] + mix(V_Est, H_Est, VH_Disc_Clamped);
            }
        }
    """.trimIndent()

    /**
     * 9. 合并 RGB 重建结果写出到 RGBA16F 纹理 (rcd_write_output.comp)。
     * 照片真实外圈始终由这里内置的 PPG 处理，调用方不能关闭或遗漏。
     */
    val WRITE_OUTPUT = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 16, local_size_y = 16) in;

        layout(std430, binding = 0) buffer CFA_Buf    { float cfa[]; };
        layout(std430, binding = 1) buffer RGB0_Buf   { float rgb0[]; };
        layout(std430, binding = 2) buffer RGB1_Buf   { float rgb1[]; };
        layout(std430, binding = 3) buffer RGB2_Buf   { float rgb2[]; };
        layout (rgba16f, binding = 0) writeonly uniform highp image2D uOutputImage;

        uniform ivec2 uImageSize;
        uniform int uCfaPattern;
        uniform vec3 uCalculationGains;

        #define RED 0
        #define GREEN 1
        #define BLUE 2
        const int RCD_OUTPUT_MARGIN = $OUTPUT_MARGIN;

        int getBayerColor(int cfaPattern, int col, int row) {
            int r = row % 2;
            int c = col % 2;
            if (cfaPattern == 0) {
                if (r == 0) return (c == 0) ? RED : GREEN;
                return (c == 0) ? GREEN : BLUE;
            } else if (cfaPattern == 1) {
                if (r == 0) return (c == 0) ? GREEN : RED;
                return (c == 0) ? BLUE : GREEN;
            } else if (cfaPattern == 2) {
                if (r == 0) return (c == 0) ? GREEN : BLUE;
                return (c == 0) ? RED : GREEN;
            }
            if (r == 0) return (c == 0) ? BLUE : GREEN;
            return (c == 0) ? GREEN : RED;
        }

        int mirrorIndex(int value, int size) {
            if (size <= 1) return 0;
            int period = 2 * (size - 1);
            int wrapped = value % period;
            if (wrapped < 0) wrapped += period;
            return (wrapped < size) ? wrapped : period - wrapped;
        }

        ivec2 mirrorCoord(ivec2 coord) {
            return ivec2(
                mirrorIndex(coord.x, uImageSize.x),
                mirrorIndex(coord.y, uImageSize.y)
            );
        }

        int indexAt(ivec2 coord) {
            ivec2 safe = mirrorCoord(coord);
            return safe.y * uImageSize.x + safe.x;
        }

        int colorAt(ivec2 coord) {
            ivec2 safe = mirrorCoord(coord);
            return getBayerColor(uCfaPattern, safe.x, safe.y);
        }

        float rawAt(ivec2 coord) {
            return cfa[indexAt(coord)];
        }

        $PPG_KERNEL

        void main() {
            ivec2 coord = ivec2(gl_GlobalInvocationID.xy);
            if (coord.x >= uImageSize.x || coord.y >= uImageSize.y) return;

            vec3 color;
            if (coord.x >= RCD_OUTPUT_MARGIN && coord.x < uImageSize.x - RCD_OUTPUT_MARGIN &&
                coord.y >= RCD_OUTPUT_MARGIN && coord.y < uImageSize.y - RCD_OUTPUT_MARGIN) {
                int idx = coord.y * uImageSize.x + coord.x;
                color = max(vec3(rgb0[idx], rgb1[idx], rgb2[idx]), vec3(0.0));
            } else {
                color = ppgColorAt(coord);
            }

            color /= max(uCalculationGains, vec3(1e-6));
            imageStore(uOutputImage, coord, vec4(color, 1.0));
        }
    """.trimIndent()

    /**
     * HDR/MFSR 条带与 Radiance 二维分片共用的照片边界收尾。
     *
     * 仅覆盖照片的真实外圈，不把工作区域边界当作照片边界。位于内部 halo 外缘、邻域尚未
     * 上传完整的像素会跳过；它们不属于该区域的有效采样域，并会在相邻区域拥有完整邻域时处理。
     */
    val REGION_BORDER_PPG = """
        #version 310 es
        precision highp float;
        precision highp int;
        layout (local_size_x = 16, local_size_y = 16) in;

        layout(std430, binding = 0) readonly buffer CFA_Buf { float cfa[]; };
        layout(std430, binding = 1) buffer RGB0_Buf { float rgb0[]; };
        layout(std430, binding = 2) buffer RGB1_Buf { float rgb1[]; };
        layout(std430, binding = 3) buffer RGB2_Buf { float rgb2[]; };

        uniform ivec2 uRegionSize;
        uniform ivec2 uFullImageSize;
        uniform ivec2 uGlobalOrigin;
        uniform int uCfaPattern;

        #define RED 0
        #define GREEN 1
        #define BLUE 2
        const int RCD_OUTPUT_MARGIN = $OUTPUT_MARGIN;
        const int PPG_RADIUS = $PPG_RADIUS;

        int getBayerColor(int cfaPattern, int col, int row) {
            int r = row % 2;
            int c = col % 2;
            if (cfaPattern == 0) {
                if (r == 0) return (c == 0) ? RED : GREEN;
                return (c == 0) ? GREEN : BLUE;
            } else if (cfaPattern == 1) {
                if (r == 0) return (c == 0) ? GREEN : RED;
                return (c == 0) ? BLUE : GREEN;
            } else if (cfaPattern == 2) {
                if (r == 0) return (c == 0) ? GREEN : BLUE;
                return (c == 0) ? RED : GREEN;
            }
            if (r == 0) return (c == 0) ? BLUE : GREEN;
            return (c == 0) ? GREEN : RED;
        }

        int mirrorIndex(int value, int size) {
            if (size <= 1) return 0;
            int period = 2 * (size - 1);
            int wrapped = value % period;
            if (wrapped < 0) wrapped += period;
            return (wrapped < size) ? wrapped : period - wrapped;
        }

        ivec2 mirrorCoord(ivec2 coord) {
            return ivec2(
                mirrorIndex(coord.x, uFullImageSize.x),
                mirrorIndex(coord.y, uFullImageSize.y)
            );
        }

        int indexAt(ivec2 coord) {
            ivec2 safe = mirrorCoord(coord);
            ivec2 local = safe - uGlobalOrigin;
            return local.y * uRegionSize.x + local.x;
        }

        int colorAt(ivec2 coord) {
            ivec2 safe = mirrorCoord(coord);
            return getBayerColor(uCfaPattern, safe.x, safe.y);
        }

        float rawAt(ivec2 coord) {
            return cfa[indexAt(coord)];
        }

        $PPG_KERNEL

        void main() {
            ivec2 local = ivec2(gl_GlobalInvocationID.xy);
            if (local.x >= uRegionSize.x || local.y >= uRegionSize.y) return;
            ivec2 global = local + uGlobalOrigin;

            bool horizontalBorder = global.x < RCD_OUTPUT_MARGIN ||
                global.x >= uFullImageSize.x - RCD_OUTPUT_MARGIN;
            bool verticalBorder = global.y < RCD_OUTPUT_MARGIN ||
                global.y >= uFullImageSize.y - RCD_OUTPUT_MARGIN;
            if (!horizontalBorder && !verticalBorder) return;

            int minRequiredX = uFullImageSize.x - 1;
            int maxRequiredX = 0;
            int minRequiredY = uFullImageSize.y - 1;
            int maxRequiredY = 0;
            for (int delta = -PPG_RADIUS; delta <= PPG_RADIUS; ++delta) {
                int sampleX = mirrorIndex(global.x + delta, uFullImageSize.x);
                int sampleY = mirrorIndex(global.y + delta, uFullImageSize.y);
                minRequiredX = min(minRequiredX, sampleX);
                maxRequiredX = max(maxRequiredX, sampleX);
                minRequiredY = min(minRequiredY, sampleY);
                maxRequiredY = max(maxRequiredY, sampleY);
            }
            ivec2 regionEnd = uGlobalOrigin + uRegionSize;
            if (minRequiredX < uGlobalOrigin.x || maxRequiredX >= regionEnd.x ||
                minRequiredY < uGlobalOrigin.y || maxRequiredY >= regionEnd.y) return;

            vec3 color = ppgColorAt(global);
            int index = local.y * uRegionSize.x + local.x;
            rgb0[index] = color.r;
            rgb1[index] = color.g;
            rgb2[index] = color.b;
        }
    """.trimIndent()

    /** 原始 RAW 条带/分片到 RCD CFA/RGB 工作缓冲的统一适配 shader。 */
    fun regionPopulate(rawCommon: String): String = """
        #version 310 es
        $rawCommon
        layout(local_size_x = 16, local_size_y = 16) in;
        uniform highp usampler2D uRawRegion;
        uniform sampler2D uLensShadingMap;
        uniform ivec2 uRegionSize;
        uniform ivec2 uFullImageSize;
        uniform ivec2 uGlobalOrigin;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        uniform vec4 uCalculationWbGains;
        uniform int uReconstructHighlights;
        layout(std430, binding = 0) buffer CFA_Buf { float cfa[]; };
        layout(std430, binding = 1) buffer RGB0_Buf { float rgb0[]; };
        layout(std430, binding = 2) buffer RGB1_Buf { float rgb1[]; };
        layout(std430, binding = 3) buffer RGB2_Buf { float rgb2[]; };

        const float HIGHLIGHT_CLIP_THRESHOLD = $HIGHLIGHT_RECONSTRUCTION_THRESHOLD;
        const float HIGHLIGHT_CEILING = $HIGHLIGHT_RECONSTRUCTION_CEILING;

        ivec2 clampLocal(ivec2 p) {
            return clamp(p, ivec2(0), uRegionSize - ivec2(1));
        }

        ivec2 globalAt(ivec2 local) {
            local = clampLocal(local);
            return local + uGlobalOrigin;
        }

        float sensorNormalizedAt(ivec2 local) {
            local = clampLocal(local);
            ivec2 global = globalAt(local);
            int channel = bayerIndexAt(uCfaPattern, global);
            float raw = float(texelFetch(uRawRegion, local, 0).r);
            float range = max(uWhiteLevel - uBlackLevel[channel], 1.0);
            return max(raw - uBlackLevel[channel], 0.0) / range;
        }

        float calculationSampleAt(ivec2 local) {
            local = clampLocal(local);
            ivec2 global = globalAt(local);
            int channel = bayerIndexAt(uCfaPattern, global);
            vec2 uv = (vec2(global) + vec2(0.5)) / vec2(uFullImageSize);
            vec4 lsc = texture(uLensShadingMap, clamp(uv, vec2(0.0), vec2(1.0)));
            int lscChannel = lensShadingChannelAt(uCfaPattern, global);
            float linear = sensorNormalizedAt(local) * lsc[lscChannel] *
                max(uCalculationWbGains[channel], 1e-6);
            return clamp(linear, 0.0, HIGHLIGHT_CEILING);
        }

        int colorAt(ivec2 local) {
            int channel = bayerIndexAt(uCfaPattern, globalAt(local));
            return channel == 0 ? 0 : (channel == 3 ? 2 : 1);
        }

        float estimateOpposedLinear(ivec2 local, int ownColor, float fallback) {
            vec3 sum = vec3(0.0);
            vec3 count = vec3(0.0);
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    ivec2 sampleLocal = clampLocal(local + ivec2(x, y));
                    int sampleColor = colorAt(sampleLocal);
                    float value = calculationSampleAt(sampleLocal);
                    sum[sampleColor] += value;
                    count[sampleColor] += 1.0;
                }
            }
            const float power = 3.0;
            vec3 roots = pow(max(sum / max(count, vec3(1.0)), vec3(0.0)),
                vec3(1.0 / power));
            float opposedRoot = ownColor == 0 ? 0.5 * (roots.g + roots.b) :
                (ownColor == 1 ? 0.5 * (roots.r + roots.b) :
                    0.5 * (roots.r + roots.g));
            return max(pow(max(opposedRoot, 0.0), power), fallback);
        }

        void main() {
            ivec2 local = ivec2(gl_GlobalInvocationID.xy);
            if (local.x >= uRegionSize.x || local.y >= uRegionSize.y) return;
            ivec2 global = local + uGlobalOrigin;
            int channel = bayerIndexAt(uCfaPattern, global);
            float sensor = sensorNormalizedAt(local);
            float value = calculationSampleAt(local);
            float clipMask = smoothstep(HIGHLIGHT_CLIP_THRESHOLD, 1.0, sensor);
            if (uReconstructHighlights != 0 && clipMask > 0.0) {
                float reconstructed = estimateOpposedLinear(local, colorAt(local), value);
                value = min(mix(value, reconstructed, clipMask), HIGHLIGHT_CEILING);
            }
            int index = local.y * uRegionSize.x + local.x;
            cfa[index] = value;
            rgb0[index] = channel == 0 ? value : 0.0;
            rgb1[index] = (channel == 1 || channel == 2) ? value : 0.0;
            rgb2[index] = channel == 3 ? value : 0.0;
        }
    """.trimIndent()
}

/**
 * Full packed-Bayer VGN demosaic and colour-noise pipeline.
 *
 * The arithmetic shaders are kept in the same pass boundaries and image formats as the
 * interoperability reference under research/phocus_glsl/02_demosaic. Android-specific RAW
 * preparation and final CFA-phase composition live beside these constants below.
 */
object VgnShaders {

    val CALCULATE_COLOR_NOISE_ERROR = """
#version 310 es
precision highp float;
precision highp int;
precision highp uimage2D;
layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D yccdTex;
layout(rgba16ui, binding = 1) readonly  uniform uimage2D ycceSmoothTex;
layout(rgba16ui, binding = 2) writeonly uniform uimage2D dstTex;

int chromaSigned(uint c) {
    int ic = int(c);
    return (ic > 32767) ? (ic - 65536) : ic;
}

uint chromaUnsigned(int v) {
    return uint(v & 0xFFFF);
}

int DirMask2Count(int a) {
    return (a >> 8) & 0x0F;
}

void main() {
    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);

    ivec2 size = imageSize(dstTex);
    if (any(greaterThanEqual(gid, size))) return;

    uvec4 pix1 = imageLoad(yccdTex, gid);
    uvec4 pix2 = imageLoad(ycceSmoothTex, gid);

    if (gid.x == 0 || gid.y == 0 || gid.x + 1 >= size.x || gid.y + 1 >= size.y) {
        imageStore(dstTex, gid, pix2);
        return;
    }

    int dir = int(pix1.a);
    uint ySmooth  = pix2.r;
    int  crSmooth = chromaSigned(pix2.g);
    int  cbSmooth = chromaSigned(pix2.b);
    uint error    = pix2.a;

    ivec2 dirStep[8] = ivec2[8](
        ivec2( 0, -1),
        ivec2(+1,  0),
        ivec2( 0, +1),
        ivec2(-1,  0),
        ivec2(+1, -1),
        ivec2(+1, +1),
        ivec2(-1, +1),
        ivec2(-1, -1)
    );

    int ySum = 0, rSum = 0, bSum = 0;
    for (int i = 0; i < 8; i++) {
        int mask = (1 << i);
        if ((dir & mask) != 0) {
            uvec4 pix = imageLoad(yccdTex, gid + dirStep[i]);
            ySum += int(pix1.r) - int(pix.r);
            rSum += chromaSigned(pix1.g) - chromaSigned(pix.g);
            bSum += chromaSigned(pix1.b) - chromaSigned(pix.b);
        }
    }
    int count = DirMask2Count(dir);
    int dirBits = dir & 0xFF;
    bool diagPenalty = (dirBits == 0x50 || dirBits == 0xA0);
    int newError = diagPenalty ? abs(rSum + bSum) : 0;
    if (count > 0) {
        newError += abs(ySum);
        newError /= count;
    }

    float minLevel = 0.05 * float(ySmooth);
    float scaledError = float(error) * max(0.0, min(float(newError) - minLevel, 1.0));

    imageStore(dstTex, gid, uvec4(ySmooth, chromaUnsigned(crSmooth), chromaUnsigned(cbSmooth), uint(scaledError)));
}
    """.trimIndent()

    val COLOR_NOISE_FILTER = """
#version 310 es
precision highp float;
precision highp int;
precision highp uimage2D;
layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D yccdTex;
layout(rgba16ui, binding = 1) writeonly uniform uimage2D dstTex;
layout(rgba16ui, binding = 2) readonly  uniform uimage2D ycceSmoothTex;

int chromaSigned(uint c) {
    int ic = int(c);
    return (ic > 32767) ? (ic - 65536) : ic;
}

uint chromaUnsigned(int v) {
    return uint(v & 0xFFFF);
}

float minMaxScale(float low, float value, float high) {
    float clip = max(low, min(value, high));
    return (clip - low) / (high - low);
}

void main() {
    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);

    if (any(greaterThanEqual(gid, imageSize(dstTex)))) return;

    uvec4 pix1 = imageLoad(yccdTex, gid);
    uvec4 pix2 = imageLoad(ycceSmoothTex, gid);

    uint y = pix1.r;
    int cr  = chromaSigned(pix1.g);
    int cb  = chromaSigned(pix1.b);
    int crSmooth = chromaSigned(pix2.g);
    int cbSmooth = chromaSigned(pix2.b);
    uint error   = pix2.a;

    float errorScale = minMaxScale(100.0, float(error) / 4.0, 300.0);

    float smoothSat = 1.0 + float(abs(crSmooth)) + float(abs(cbSmooth));
    float normalSat = float(abs(cr)) + float(abs(cb));
    float satScale = minMaxScale(0.5, normalSat / smoothSat, 1.0);

    float factor = errorScale * satScale;
    float finalCr = mix(float(cr), float(crSmooth), factor);
    float finalCb = mix(float(cb), float(cbSmooth), factor);

    imageStore(dstTex, gid, uvec4(y, chromaUnsigned(int(finalCr)), chromaUnsigned(int(finalCb)), error));
}
    """.trimIndent()

    val COLOR_NOISE_PASS_1 = """
#version 310 es
precision highp float;
precision highp int;
precision highp uimage2D;

layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D inTex;
layout(rgba16ui, binding = 1) writeonly uniform uimage2D outTex;

layout(std140, binding = 2) uniform DemosaicColorNoisePass1Params_UBO {
    int uParams_l;
    int uParams_t;
    int uParams_r;
    int uParams_b;
};

void main() {
    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);

    if (any(greaterThanEqual(gid, imageSize(outTex)))) return;

    uvec4 outV = uvec4(0u);
    if (gid.x >= uParams_l && gid.x +1 < uParams_r &&
        gid.y >= uParams_t && gid.y + 1 < uParams_b) {
        uvec4 res = imageLoad(inTex, gid);
        float yCtr = float(res.r);

        float tmp1 = float(imageLoad(inTex, gid + ivec2(-1, -1)).r);
        float tmp = float(imageLoad(inTex, gid + ivec2(0, -1)).r);
        float yMax = max(tmp, tmp1);
        float yMin = min(tmp, tmp1);

        tmp = float(imageLoad(inTex, gid + ivec2(1, -1)).r);
        yMax = max(tmp, yMax);
        yMin = min(tmp, yMin);

        tmp = float(imageLoad(inTex, gid + ivec2(1, 0)).r);
        yMax = max(tmp, yMax);
        yMin = min(tmp, yMin);

        tmp = float(imageLoad(inTex, gid + ivec2(1, 1)).r);
        yMax = max(tmp, yMax);
        yMin = min(tmp, yMin);

        tmp = float(imageLoad(inTex, gid + ivec2(0, 1)).r);
        yMax = max(tmp, yMax);
        yMin = min(tmp, yMin);

        tmp = float(imageLoad(inTex, gid + ivec2(-1, 1)).r);
        yMax = max(tmp, yMax);
        yMin = min(tmp, yMin);

        tmp = float(imageLoad(inTex, gid + ivec2(-1, 0)).r);
        yMax = max(tmp, yMax);
        yMin = min(tmp, yMin);

        res.r = uint(clamp(yCtr, yMin, yMax));
        outV = res;
    }
    imageStore(outTex, gid, outV);
}
    """.trimIndent()

    val COLOR_NOISE_PASS_2 = """
#version 310 es
precision highp float;
precision highp int;
precision highp uimage2D;

layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D inTex;
layout(rgba16ui, binding = 1) writeonly uniform uimage2D outTex;

layout(std140, binding = 2) uniform DemosaicColorNoisePass2Params_UBO {
    int uParams_l;
    int uParams_t;
    int uParams_r;
    int uParams_b;
};

int chromaSigned(uint c) {
    int ic = int(c);
    return (ic > 32767) ? (ic - 65536) : ic;
}

uint chromaUnsigned(int v) {
    return uint(v & 0xFFFF);
}

void fetchYCbCr(ivec2 pos, out int y, out int cr, out int cb) {
    uvec4 t = imageLoad(inTex, pos);
    y = int(t.r);
    cr = chromaSigned(t.g);
    cb = chromaSigned(t.b);
}

void main() {
    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);

    if (any(greaterThanEqual(gid, imageSize(outTex)))) return;

    uvec4 outV = uvec4(0u);
    if (gid.x >= uParams_l && gid.x < uParams_r &&
        gid.y >= uParams_t && gid.y < uParams_b) {

        uvec4 res0 = imageLoad(inTex, gid);
        ivec2 pixelCoord = gid;

        int y; int cr; int cb;
        uvec4 cornerNN = imageLoad(inTex, pixelCoord + ivec2(-1, -1));
        y = int(cornerNN.r);
        cr = chromaSigned(cornerNN.g);
        cb = chromaSigned(cornerNN.b);
        ivec4 ycbcrTmp1_short = ivec4(y, cr, cb, int(cornerNN.a));

        fetchYCbCr(pixelCoord + ivec2(0, -1), y, cr, cb);
        ivec4 ycbcrTmp_short = ivec4(y, cr, cb, 0);

        ivec4 cbcrMax = max(ycbcrTmp_short, ycbcrTmp1_short);
        ivec4 cbcrMin = min(ycbcrTmp_short, ycbcrTmp1_short);
        ivec2 cbcrSum = ivec2(ycbcrTmp1_short.y + ycbcrTmp_short.y, ycbcrTmp1_short.z + ycbcrTmp_short.z);
        int ySum = ycbcrTmp1_short.x + 2 * ycbcrTmp_short.x;

        fetchYCbCr(pixelCoord + ivec2(1, -1), y, cr, cb);
        ycbcrTmp_short = ivec4(y, cr, cb, 0);
        cbcrMax = max(ycbcrTmp_short, cbcrMax);
        cbcrMin = min(ycbcrTmp_short, cbcrMin);
        cbcrSum.x += ycbcrTmp_short.y - cbcrMax.y - cbcrMin.y;
        cbcrSum.y += ycbcrTmp_short.z - cbcrMax.z - cbcrMin.z;
        ivec2 cbcrMinG = cbcrSum;
        ivec2 cbcrMaxG = cbcrSum;
        ivec2 cbcrSumG = cbcrSum;
        ySum += ycbcrTmp_short.x;

        fetchYCbCr(pixelCoord + ivec2(-1, 0), y, cr, cb);
        ycbcrTmp1_short = ivec4(y, cr, cb, 0);

        fetchYCbCr(pixelCoord + ivec2(0, 0), y, cr, cb);
        ycbcrTmp_short = ivec4(y, cr, cb, 0);
        cbcrMax = max(ycbcrTmp_short, ycbcrTmp1_short);
        cbcrMin = min(ycbcrTmp_short, ycbcrTmp1_short);
        cbcrSum = ivec2(ycbcrTmp1_short.y + ycbcrTmp_short.y, ycbcrTmp1_short.z + ycbcrTmp_short.z);
        ySum += 2 * ycbcrTmp1_short.x + 4 * ycbcrTmp_short.x;

        fetchYCbCr(pixelCoord + ivec2(1, 0), y, cr, cb);
        ycbcrTmp_short = ivec4(y, cr, cb, 0);
        cbcrMax = max(ycbcrTmp_short, cbcrMax);
        cbcrMin = min(ycbcrTmp_short, cbcrMin);
        cbcrSum.x += ycbcrTmp_short.y - cbcrMax.y - cbcrMin.y;
        cbcrSum.y += ycbcrTmp_short.z - cbcrMax.z - cbcrMin.z;
        cbcrSumG += cbcrSum;
        cbcrMinG = min(cbcrMinG, cbcrSum);
        cbcrMaxG = max(cbcrMaxG, cbcrSum);
        ySum += 2 * ycbcrTmp_short.x;

        fetchYCbCr(pixelCoord + ivec2(-1, 1), y, cr, cb);
        ycbcrTmp1_short = ivec4(y, cr, cb, 0);

        fetchYCbCr(pixelCoord + ivec2(0, 1), y, cr, cb);
        ycbcrTmp_short = ivec4(y, cr, cb, 0);
        cbcrMax = max(ycbcrTmp_short, ycbcrTmp1_short);
        cbcrMin = min(ycbcrTmp_short, ycbcrTmp1_short);
        cbcrSum = ivec2(ycbcrTmp1_short.y + ycbcrTmp_short.y, ycbcrTmp1_short.z + ycbcrTmp_short.z);
        ySum += ycbcrTmp1_short.x + 2 * ycbcrTmp_short.x;

        fetchYCbCr(pixelCoord + ivec2(1, 1), y, cr, cb);
        ycbcrTmp_short = ivec4(y, cr, cb, 0);
        cbcrMax = max(ycbcrTmp_short, cbcrMax);
        cbcrMin = min(ycbcrTmp_short, cbcrMin);
        cbcrSum.x += ycbcrTmp_short.y - cbcrMax.y - cbcrMin.y;
        cbcrSum.y += ycbcrTmp_short.z - cbcrMax.z - cbcrMin.z;
        cbcrSumG += cbcrSum - min(cbcrMinG, cbcrSum) - max(cbcrMaxG, cbcrSum);
        ySum += ycbcrTmp_short.x;

        outV.r = uint(ySum / 16);
        outV.g = chromaUnsigned(cbcrSumG.x);
        outV.b = chromaUnsigned(cbcrSumG.y);
        outV.a = res0.a;
    }
    imageStore(outTex, gid, outV);
}
    """.trimIndent()

    val COLOR_NOISE_PASS_3 = """
#version 310 es
precision highp float;
precision highp int;
precision highp uimage2D;
precision highp image2D;
layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D yccdTex;
layout(rgba16ui, binding = 1) readonly  uniform uimage2D smoothTex;
layout(rgba16f, binding = 2) writeonly uniform image2D outTex;

layout(std140, binding = 3) uniform DemosaicColorNoisePass3Params_UBO {
    int uParams_l;
    int uParams_t;
    int uParams_r;
    int uParams_b;
    float uParams_gain;
    float uPad0;
    float uPad1;
    float uPad2;
};

float hadd(float a, float b) {
    return (a + b) * 0.5;
}

int convert2compliment(int x) {
    return ((x & (1 << 15)) != 0) ? (x | ~((1 << 16) - 1)) : x;
}

vec4 ycc2rgb(vec4 ycc, float gain) {
    vec4 res;
    float ly = clamp(gain * ycc.r, 0.0, 65534.0);
    int lr = int(round(ycc.g));
    int lb = int(round(ycc.b));
    lr = convert2compliment(lr);
    lb = convert2compliment(lb);
    res.r = clamp(ly * 3.0 * float(lr) / 32768.0 - ly * float(lb) / 32768.0 + ly, 0.0, 65535.0);
    res.b = clamp(ly * 3.0 * float(lb) / 32768.0 - ly * float(lr) / 32768.0 + ly, 0.0, 65535.0);
    res.g = clamp((4.0 * ly - (res.r + res.b)) / 2.0, 0.0, 65535.0);
    res.a = ycc.a;
    return res;
}

void loadSmoothYCbCr(ivec2 p, out int yv, out int cr, out int cb) {
    uvec4 u = imageLoad(smoothTex, p);
    yv = int(u.r);
    int g = int(u.g);
    int b = int(u.b);
    cr = (g > 32767) ? (g - 65536) : g;
    cb = (b > 32767) ? (b - 65536) : b;
}

vec4 colorFilter3(vec4 pix, ivec2 imgPos) {
    ivec4 yA, yB, crA, cbA, crB, cbB;

    int yv; int cr; int cb;
    loadSmoothYCbCr(imgPos + ivec2(-1, 0), yv, cr, cb);
    yA[0] = yv; crA[0] = cr; cbA[0] = cb;

    loadSmoothYCbCr(imgPos + ivec2(1, 0), yv, cr, cb);
    yB[0] = yv; crB[0] = cr; cbB[0] = cb;

    loadSmoothYCbCr(imgPos + ivec2(0, -1), yv, cr, cb);
    yA[1] = yv; crA[1] = cr; cbA[1] = cb;

    loadSmoothYCbCr(imgPos + ivec2(0, 1), yv, cr, cb);
    yB[1] = yv; crB[1] = cr; cbB[1] = cb;

    loadSmoothYCbCr(imgPos + ivec2(1, -1), yv, cr, cb);
    yA[2] = yv; crA[2] = cr; cbA[2] = cb;

    loadSmoothYCbCr(imgPos + ivec2(-1, 1), yv, cr, cb);
    yB[2] = yv; crB[2] = cr; cbB[2] = cb;

    loadSmoothYCbCr(imgPos + ivec2(-1, -1), yv, cr, cb);
    yA[3] = yv; crA[3] = cr; cbA[3] = cb;

    loadSmoothYCbCr(imgPos + ivec2(1, 1), yv, cr, cb);
    yB[3] = yv; crB[3] = cr; cbB[3] = cb;

    vec4 yP = vec4(pix.x);
    vec4 crP = vec4(pix.y > 32767.0 ? (pix.y - 65536.0) : pix.y);
    vec4 cbP = vec4(pix.z > 32767.0 ? (pix.z - 65536.0) : pix.z);

    vec4 difA = (abs(yP - vec4(float(yA[0]), float(yA[1]), float(yA[2]), float(yA[3]))) +
                 abs(crP - vec4(float(crA[0]), float(crA[1]), float(crA[2]), float(crA[3]))) +
                 abs(cbP - vec4(float(cbA[0]), float(cbA[1]), float(cbA[2]), float(cbA[3])))) * (1.0 / 6.0);
    vec4 difB = (abs(yP - vec4(float(yB[0]), float(yB[1]), float(yB[2]), float(yB[3]))) +
                 abs(crP - vec4(float(crB[0]), float(crB[1]), float(crB[2]), float(crB[3]))) +
                 abs(cbP - vec4(float(cbB[0]), float(cbB[1]), float(cbB[2]), float(cbB[3])))) * (1.0 / 6.0);

    vec4 ly, lcr, lcb;
    vec4 nom = difA + difB;

    for (int i = 0; i < 4; i++) {
        if (nom[i] != 0.0) {
            ly[i] = (float(yA[i]) * difB[i] + float(yB[i]) * difA[i]) / nom[i];
            lcr[i] = (float(crA[i]) * difB[i] + float(crB[i]) * difA[i]) / nom[i];
            lcb[i] = (float(cbA[i]) * difB[i] + float(cbB[i]) * difA[i]) / nom[i];
        } else {
            ly[i] = hadd(float(yA[i]), float(yB[i]));
            lcr[i] = hadd(float(crA[i]), float(crB[i]));
            lcb[i] = hadd(float(cbA[i]), float(cbB[i]));
        }
    }

    vec4 scaleArr = min(abs(yP - ly) / (yP + ly) * 2.0, 1.0);
    vec4 crArr = mix(crP, lcr, scaleArr);
    vec4 cbArr = mix(cbP, lcb, scaleArr);

    vec4 dir0 = vec4(0.0, crArr[0], cbArr[0], scaleArr[0]);
    vec4 dir1 = vec4(0.0, crArr[1], cbArr[1], scaleArr[1]);
    vec4 dir2 = vec4(0.0, crArr[2], cbArr[2], scaleArr[2]);
    vec4 dir3 = vec4(0.0, crArr[3], cbArr[3], scaleArr[3]);

    vec4 crcbe = vec4(0.0);
    int pixw = int(pix.w);
    int count = 0;
    if ((pixw & (1 << 0)) != 0) { crcbe += dir0; count++; }
    if ((pixw & (1 << 1)) != 0) { crcbe += dir0; count++; }
    if ((pixw & (1 << 2)) != 0) { crcbe += dir1; count++; }
    if ((pixw & (1 << 3)) != 0) { crcbe += dir1; count++; }
    if ((pixw & (1 << 4)) != 0) { crcbe += dir2; count++; }
    if ((pixw & (1 << 5)) != 0) { crcbe += dir2; count++; }
    if ((pixw & (1 << 6)) != 0) { crcbe += dir3; count++; }
    if ((pixw & (1 << 7)) != 0) { crcbe += dir3; count++; }

    if (count > 0) {
        crcbe /= float(count);
    }

    pix.w = crcbe.w * 65535.0;

    float scale = min(min(scaleArr.x, scaleArr.y), min(scaleArr.z, scaleArr.w));
    float yScale = clamp(1.0 - (yP.x / 16384.0 * scale), 0.0, 1.0);
    pix.y = yScale * crcbe.y;
    pix.z = yScale * crcbe.z;

    return pix;
}

void main() {
    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);

    if (any(greaterThanEqual(gid, imageSize(outTex)))) return;

    ivec2 srcPos = gid + ivec2(uParams_l, uParams_t);
    uvec4 uYccd = imageLoad(yccdTex, srcPos);
    vec4 yccdPix = vec4(float(uYccd.r), float(uYccd.g), float(uYccd.b), float(uYccd.a));
    yccdPix.yz = vec2(yccdPix.y > 32767.0 ? (yccdPix.y - 65536.0) : yccdPix.y,
                      yccdPix.z > 32767.0 ? (yccdPix.z - 65536.0) : yccdPix.z);

    if (yccdPix.x != 0.0 && yccdPix.w != 0.0) {
        yccdPix = colorFilter3(yccdPix, srcPos);
    }

    uvec4 uSmooth = imageLoad(smoothTex, srcPos);
    vec4 smoothPix = vec4(float(uSmooth.r), float(uSmooth.g), float(uSmooth.b), float(uSmooth.a));
    float smoothY = smoothPix.y > 32767.0 ? (smoothPix.y - 65536.0) : smoothPix.y;
    float smoothZ = smoothPix.z > 32767.0 ? (smoothPix.z - 65536.0) : smoothPix.z;
    float yccdY = yccdPix.y > 32767.0 ? (yccdPix.y - 65536.0) : yccdPix.y;
    float yccdZ = yccdPix.z > 32767.0 ? (yccdPix.z - 65536.0) : yccdPix.z;

    if (abs(smoothY) + abs(smoothZ) < abs(yccdY) + abs(yccdZ)) {
        yccdPix.y = smoothPix.y;
        yccdPix.z = smoothPix.z;
    }

    vec4 result = ycc2rgb(yccdPix, uParams_gain);
    vec4 outF = vec4(
        clamp(result.r, 0.0, 65535.0),
        clamp(result.g, 0.0, 65535.0),
        clamp(result.b, 0.0, 65535.0),
        clamp(result.a, 0.0, 65535.0)
    ) / 65535.0;
    imageStore(outTex, gid, outF);
}
    """.trimIndent()

    val COLOR_NOISE_PASS_3_YCCD = """
#version 310 es
precision highp float;
precision highp int;
precision highp uimage2D;
layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D yccdTex;
layout(rgba16ui, binding = 1) readonly  uniform uimage2D smoothTex;
layout(rgba16ui, binding = 2) writeonly uniform uimage2D outYccd;
layout(rgba16ui, binding = 3) writeonly uniform uimage2D outSmooth;

layout(std140, binding = 4) uniform DemosaicColorNoisePass3YccdParams_UBO {
    int uParams_l;
    int uParams_t;
    int uParams_r;
    int uParams_b;
};

float hadd(float a, float b) {
    return (a + b) * 0.5;
}

int chromaSigned(uint c) {
    int ic = int(c);
    return (ic > 32767) ? (ic - 65536) : ic;
}

uint chromaUnsigned(int v) {
    return uint(v & 0xFFFF);
}

void loadSmoothYCbCr(ivec2 p, out int yv, out int cr, out int cb) {
    uvec4 u = imageLoad(smoothTex, p);
    yv = int(u.r);
    cr = chromaSigned(u.g);
    cb = chromaSigned(u.b);
}

vec4 colorFilter3(vec4 pix, ivec2 imgPos) {
    ivec4 yA, yB, crA, cbA, crB, cbB;

    int yv, cr, cb;
    loadSmoothYCbCr(imgPos + ivec2(-1, 0), yv, cr, cb);
    yA[0] = yv; crA[0] = cr; cbA[0] = cb;
    loadSmoothYCbCr(imgPos + ivec2(1, 0), yv, cr, cb);
    yB[0] = yv; crB[0] = cr; cbB[0] = cb;
    loadSmoothYCbCr(imgPos + ivec2(0, -1), yv, cr, cb);
    yA[1] = yv; crA[1] = cr; cbA[1] = cb;
    loadSmoothYCbCr(imgPos + ivec2(0, 1), yv, cr, cb);
    yB[1] = yv; crB[1] = cr; cbB[1] = cb;
    loadSmoothYCbCr(imgPos + ivec2(1, -1), yv, cr, cb);
    yA[2] = yv; crA[2] = cr; cbA[2] = cb;
    loadSmoothYCbCr(imgPos + ivec2(-1, 1), yv, cr, cb);
    yB[2] = yv; crB[2] = cr; cbB[2] = cb;
    loadSmoothYCbCr(imgPos + ivec2(-1, -1), yv, cr, cb);
    yA[3] = yv; crA[3] = cr; cbA[3] = cb;
    loadSmoothYCbCr(imgPos + ivec2(1, 1), yv, cr, cb);
    yB[3] = yv; crB[3] = cr; cbB[3] = cb;

    vec4 yP = vec4(pix.x);
    vec4 crP = vec4(pix.y > 32767.0 ? (pix.y - 65536.0) : pix.y);
    vec4 cbP = vec4(pix.z > 32767.0 ? (pix.z - 65536.0) : pix.z);

    vec4 difA = (abs(yP - vec4(float(yA[0]), float(yA[1]), float(yA[2]), float(yA[3]))) +
                 abs(crP - vec4(float(crA[0]), float(crA[1]), float(crA[2]), float(crA[3]))) +
                 abs(cbP - vec4(float(cbA[0]), float(cbA[1]), float(cbA[2]), float(cbA[3])))) * (1.0 / 6.0);
    vec4 difB = (abs(yP - vec4(float(yB[0]), float(yB[1]), float(yB[2]), float(yB[3]))) +
                 abs(crP - vec4(float(crB[0]), float(crB[1]), float(crB[2]), float(crB[3]))) +
                 abs(cbP - vec4(float(cbB[0]), float(cbB[1]), float(cbB[2]), float(cbB[3])))) * (1.0 / 6.0);

    vec4 ly, lcr, lcb;
    vec4 nom = difA + difB;
    for (int i = 0; i < 4; i++) {
        if (nom[i] != 0.0) {
            ly[i]  = (float(yA[i])  * difB[i] + float(yB[i])  * difA[i]) / nom[i];
            lcr[i] = (float(crA[i]) * difB[i] + float(crB[i]) * difA[i]) / nom[i];
            lcb[i] = (float(cbA[i]) * difB[i] + float(cbB[i]) * difA[i]) / nom[i];
        } else {
            ly[i]  = hadd(float(yA[i]),  float(yB[i]));
            lcr[i] = hadd(float(crA[i]), float(crB[i]));
            lcb[i] = hadd(float(cbA[i]), float(cbB[i]));
        }
    }

    vec4 scaleArr = min(abs(yP - ly) / (yP + ly) * 2.0, 1.0);
    vec4 crArr = mix(crP, lcr, scaleArr);
    vec4 cbArr = mix(cbP, lcb, scaleArr);

    vec4 dir0 = vec4(0.0, crArr[0], cbArr[0], scaleArr[0]);
    vec4 dir1 = vec4(0.0, crArr[1], cbArr[1], scaleArr[1]);
    vec4 dir2 = vec4(0.0, crArr[2], cbArr[2], scaleArr[2]);
    vec4 dir3 = vec4(0.0, crArr[3], cbArr[3], scaleArr[3]);

    vec4 crcbe = vec4(0.0);
    int pixw = int(pix.w);
    int count = 0;
    if ((pixw & (1 << 0)) != 0) { crcbe += dir0; count++; }
    if ((pixw & (1 << 1)) != 0) { crcbe += dir0; count++; }
    if ((pixw & (1 << 2)) != 0) { crcbe += dir1; count++; }
    if ((pixw & (1 << 3)) != 0) { crcbe += dir1; count++; }
    if ((pixw & (1 << 4)) != 0) { crcbe += dir2; count++; }
    if ((pixw & (1 << 5)) != 0) { crcbe += dir2; count++; }
    if ((pixw & (1 << 6)) != 0) { crcbe += dir3; count++; }
    if ((pixw & (1 << 7)) != 0) { crcbe += dir3; count++; }

    if (count > 0) {
        crcbe /= float(count);
    }

    pix.w = crcbe.w * 65535.0;

    float scale = min(min(scaleArr.x, scaleArr.y), min(scaleArr.z, scaleArr.w));
    float yScale = clamp(1.0 - (yP.x / 16384.0 * scale), 0.0, 1.0);
    pix.y = yScale * crcbe.y;
    pix.z = yScale * crcbe.z;

    return pix;
}

void main() {
    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);
    ivec2 size = imageSize(outYccd);
    if (any(greaterThanEqual(gid, size))) return;
    if (gid.x < uParams_l || gid.x >= uParams_r ||
        gid.y < uParams_t || gid.y >= uParams_b) {
        imageStore(outYccd, gid, uvec4(0u));
        imageStore(outSmooth, gid, uvec4(0u));
        return;
    }

    uvec4 uYccd = imageLoad(yccdTex, gid);
    vec4 yccdPix = vec4(float(uYccd.r), float(uYccd.g), float(uYccd.b), float(uYccd.a));
    yccdPix.yz = vec2(yccdPix.y > 32767.0 ? (yccdPix.y - 65536.0) : yccdPix.y,
                      yccdPix.z > 32767.0 ? (yccdPix.z - 65536.0) : yccdPix.z);
    uint dir = uYccd.a;
    if (yccdPix.x != 0.0 && yccdPix.w != 0.0) {
        yccdPix = colorFilter3(yccdPix, gid);
    } else {
        yccdPix.w = 0.0;
    }
    uint error = uint(yccdPix.w);

    uvec4 uSmooth = imageLoad(smoothTex, gid);
    float smoothY = float(uSmooth.g) > 32767.0 ? (float(uSmooth.g) - 65536.0) : float(uSmooth.g);
    float smoothZ = float(uSmooth.b) > 32767.0 ? (float(uSmooth.b) - 65536.0) : float(uSmooth.b);
    float yccdY = yccdPix.y > 32767.0 ? (yccdPix.y - 65536.0) : yccdPix.y;
    float yccdZ = yccdPix.z > 32767.0 ? (yccdPix.z - 65536.0) : yccdPix.z;

    if (abs(smoothY) + abs(smoothZ) < abs(yccdY) + abs(yccdZ)) {
        yccdPix.y = float(uSmooth.g);
        yccdPix.z = float(uSmooth.b);
    }

    // Output YCCD: (Y, Cr, Cb, dir)
    imageStore(outYccd, gid, uvec4(uint(yccdPix.x), chromaUnsigned(int(yccdPix.y)), chromaUnsigned(int(yccdPix.z)), dir));
    // Output Smooth: (Y, Cr, Cb, error)
    imageStore(outSmooth, gid, uvec4(uint(yccdPix.x), chromaUnsigned(int(yccdPix.y)), chromaUnsigned(int(yccdPix.z)), error));
}
    """.trimIndent()

    val IIR2_PASS_1 = """
#version 310 es
precision highp float;
precision highp int;
precision highp uimage2D;
layout(local_size_x = 1, local_size_y = 1) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D srcTex;
layout(rgba16ui, binding = 1) writeonly uniform uimage2D dstTex;

layout(std140, binding = 2) uniform IIR2Coefs_UBO {
    vec4 a_10;
    vec4 b_10;
    vec4 a_dyn_1;
    vec4 b_dyn_1;
    vec4 a_dyn_2;
    vec4 b_dyn_2;
    int uWidth;
    int uHeight;
    int uDirection;
    int uAxis;
};

struct Delayer {
    float x0, x1, y0, y1;
};

float delayerApply(inout Delayer d, float val, vec4 pCoefA, vec4 pCoefB, bool useShort) {
    float sum = pCoefA[0] * val;
    sum += pCoefA[1] * d.x0 - pCoefB[1] * d.y0;
    sum += pCoefA[2] * d.x1 - pCoefB[2] * d.y1;
    d.x1 = d.x0;
    d.y1 = d.y0;
    d.x0 = val;
    if (useShort)
        d.y0 = sum;
    else
        d.y0 = max(0.0, min(sum, 65535.0));
    return d.y0;
}

int chromaSigned(uint c) {
    int ic = int(c);
    return (ic > 32767) ? (ic - 65536) : ic;
}

uint chromaUnsigned(int v) {
    return uint(v & 0xFFFF);
}

void main() {
    int outerIdx = (uAxis == 0) ? int(gl_GlobalInvocationID.y) : int(gl_GlobalInvocationID.x);
    int outerLimit = (uAxis == 0) ? uHeight : uWidth;
    int innerSize = (uAxis == 0) ? uWidth : uHeight;
    if (outerIdx >= outerLimit) return;

    int start = (uDirection == 0) ? 0 : innerSize - 1;
    int step  = (uDirection == 0) ? 1 : -1;

    Delayer d_p10    = Delayer(0.0, 0.0, 0.0, 0.0);
    Delayer d_norm1r = Delayer(0.0, 0.0, 0.0, 0.0);
    Delayer d_norm1b = Delayer(0.0, 0.0, 0.0, 0.0);
    Delayer d_norm2r = Delayer(0.0, 0.0, 0.0, 0.0);
    Delayer d_norm2b = Delayer(0.0, 0.0, 0.0, 0.0);

    for (int i = 0; i < innerSize; i++) {
        int innerIdx = start + i * step;
        ivec2 pos = (uAxis == 0) ? ivec2(innerIdx, outerIdx) : ivec2(outerIdx, innerIdx);
        uvec4 pix = imageLoad(srcTex, pos);

        float Y  = delayerApply(d_p10,    float(pix.r), a_10, b_10, false);
        float cr = delayerApply(d_norm1r, float(chromaSigned(pix.g)), a_dyn_1, b_dyn_1, true);
        float cb = delayerApply(d_norm1b, float(chromaSigned(pix.b)), a_dyn_1, b_dyn_1, true);
        cr = delayerApply(d_norm2r, cr, a_dyn_2, b_dyn_2, true);
        cb = delayerApply(d_norm2b, cb, a_dyn_2, b_dyn_2, true);

        imageStore(dstTex, pos, uvec4(uint(Y), chromaUnsigned(int(cr)), chromaUnsigned(int(cb)), pix.a));
    }
}
    """.trimIndent()

    val IIR2_PASS_1_INIT = """
#version 310 es
precision highp float;
precision highp int;
precision highp uimage2D;
layout(local_size_x = 1, local_size_y = 1) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D srcTex;
layout(rgba16ui, binding = 1) readonly  uniform uimage2D srcSmoothTex;
layout(rgba16ui, binding = 2) writeonly uniform uimage2D dstTex;

layout(std140, binding = 3) uniform IIR2Coefs_UBO {
    vec4 a_10;
    vec4 b_10;
    vec4 a_dyn_1;
    vec4 b_dyn_1;
    vec4 a_dyn_2;
    vec4 b_dyn_2;
    int uWidth;
    int uHeight;
    int uDirection;
    int uAxis;
};

struct Delayer {
    float x0, x1, y0, y1;
};

float delayerApply(inout Delayer d, float val, vec4 pCoefA, vec4 pCoefB, bool useShort) {
    float sum = pCoefA[0] * val;
    sum += pCoefA[1] * d.x0 - pCoefB[1] * d.y0;
    sum += pCoefA[2] * d.x1 - pCoefB[2] * d.y1;
    d.x1 = d.x0;
    d.y1 = d.y0;
    d.x0 = val;
    if (useShort)
        d.y0 = sum;
    else
        d.y0 = max(0.0, min(sum, 65535.0));
    return d.y0;
}

int chromaSigned(uint c) {
    int ic = int(c);
    return (ic > 32767) ? (ic - 65536) : ic;
}

uint chromaUnsigned(int v) {
    return uint(v & 0xFFFF);
}

void main() {
    int row = int(gl_GlobalInvocationID.y);
    if (row >= uHeight) return;

    Delayer d_p10    = Delayer(0.0, 0.0, 0.0, 0.0);
    Delayer d_norm1r = Delayer(0.0, 0.0, 0.0, 0.0);
    Delayer d_norm1b = Delayer(0.0, 0.0, 0.0, 0.0);
    Delayer d_norm2r = Delayer(0.0, 0.0, 0.0, 0.0);
    Delayer d_norm2b = Delayer(0.0, 0.0, 0.0, 0.0);

    for (int x = 0; x < uWidth; x++) {
        ivec2 pos = ivec2(x, row);
        uvec4 pix = imageLoad(srcTex, pos);
        uvec4 pix2 = imageLoad(srcSmoothTex, pos);

        float y  = delayerApply(d_p10,    float(pix.r), a_10, b_10, false);
        float cr = delayerApply(d_norm1r, float(chromaSigned(pix.g)), a_dyn_1, b_dyn_1, true);
        float cb = delayerApply(d_norm1b, float(chromaSigned(pix.b)), a_dyn_1, b_dyn_1, true);
        cr = delayerApply(d_norm2r, cr, a_dyn_2, b_dyn_2, true);
        cb = delayerApply(d_norm2b, cb, a_dyn_2, b_dyn_2, true);

        imageStore(dstTex, pos, uvec4(uint(y), chromaUnsigned(int(cr)), chromaUnsigned(int(cb)), pix2.a));
    }
}
    """.trimIndent()

    val IIR2_PASS_2 = """
#version 310 es
precision highp float;
precision highp int;
precision highp uimage2D;
layout(local_size_x = 1, local_size_y = 1) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D srcTex;
layout(rgba16ui, binding = 1) writeonly uniform uimage2D dstTex;

layout(std140, binding = 2) uniform IIR2Coefs_UBO {
    vec4 a_10;
    vec4 b_10;
    vec4 a_dyn_1;
    vec4 b_dyn_1;
    vec4 a_dyn_2;
    vec4 b_dyn_2;
    int uWidth;
    int uHeight;
    int uDirection;
    int uAxis;
};

struct Delayer {
    float x0, x1, y0, y1;
};

float delayerApply(inout Delayer d, float val, vec4 pCoefA, vec4 pCoefB) {
    float sum = pCoefA[0] * val;
    sum += pCoefA[1] * d.x0 - pCoefB[1] * d.y0;
    sum += pCoefA[2] * d.x1 - pCoefB[2] * d.y1;
    d.x1 = d.x0;
    d.y1 = d.y0;
    d.x0 = val;
    d.y0 = max(0.0, min(sum, 65535.0));
    return d.y0;
}

void main() {
    int outerIdx = (uAxis == 0) ? int(gl_GlobalInvocationID.y) : int(gl_GlobalInvocationID.x);
    int outerLimit = (uAxis == 0) ? uHeight : uWidth;
    int innerSize = (uAxis == 0) ? uWidth : uHeight;
    if (outerIdx >= outerLimit) return;

    int start = (uDirection == 0) ? 0 : innerSize - 1;
    int step  = (uDirection == 0) ? 1 : -1;

    Delayer d_p10 = Delayer(0.0, 0.0, 0.0, 0.0);

    for (int i = 0; i < innerSize; i++) {
        int innerIdx = start + i * step;
        ivec2 pos = (uAxis == 0) ? ivec2(innerIdx, outerIdx) : ivec2(outerIdx, innerIdx);
        uvec4 pix = imageLoad(srcTex, pos);

        float err = delayerApply(d_p10, float(pix.a), a_10, b_10);

        imageStore(dstTex, pos, uvec4(pix.r, pix.g, pix.b, uint(err)));
    }
}
    """.trimIndent()

    val IIR2_PASS_3 = """
#version 310 es
precision highp float;
precision highp int;
precision highp uimage2D;
layout(local_size_x = 1, local_size_y = 1) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D srcTex;
layout(rgba16ui, binding = 1) writeonly uniform uimage2D dstTex;

layout(std140, binding = 2) uniform IIR2Coefs_UBO {
    vec4 a_10;
    vec4 b_10;
    vec4 a_dyn_1;
    vec4 b_dyn_1;
    vec4 a_dyn_2;
    vec4 b_dyn_2;
    int uWidth;
    int uHeight;
    int uDirection;
    int uAxis;
};

struct Delayer {
    float x0, x1, y0, y1;
};

float delayerApply(inout Delayer d, float val, vec4 pCoefA, vec4 pCoefB) {
    float sum = pCoefA[0] * val;
    sum += pCoefA[1] * d.x0 - pCoefB[1] * d.y0;
    sum += pCoefA[2] * d.x1 - pCoefB[2] * d.y1;
    d.x1 = d.x0;
    d.y1 = d.y0;
    d.x0 = val;
    d.y0 = sum;
    return d.y0;
}

int chromaSigned(uint c) {
    int ic = int(c);
    return (ic > 32767) ? (ic - 65536) : ic;
}

uint chromaUnsigned(int v) {
    return uint(v & 0xFFFF);
}

void main() {
    int outerIdx = (uAxis == 0) ? int(gl_GlobalInvocationID.y) : int(gl_GlobalInvocationID.x);
    int outerLimit = (uAxis == 0) ? uHeight : uWidth;
    int innerSize = (uAxis == 0) ? uWidth : uHeight;
    if (outerIdx >= outerLimit) return;

    int start = (uDirection == 0) ? 0 : innerSize - 1;
    int step  = (uDirection == 0) ? 1 : -1;

    Delayer d_norm1r = Delayer(0.0, 0.0, 0.0, 0.0);
    Delayer d_norm1b = Delayer(0.0, 0.0, 0.0, 0.0);
    Delayer d_norm2r = Delayer(0.0, 0.0, 0.0, 0.0);
    Delayer d_norm2b = Delayer(0.0, 0.0, 0.0, 0.0);

    for (int i = 0; i < innerSize; i++) {
        int innerIdx = start + i * step;
        ivec2 pos = (uAxis == 0) ? ivec2(innerIdx, outerIdx) : ivec2(outerIdx, innerIdx);
        uvec4 pix = imageLoad(srcTex, pos);

        float cr = delayerApply(d_norm1r, float(chromaSigned(pix.g)), a_dyn_1, b_dyn_1);
        float cb = delayerApply(d_norm1b, float(chromaSigned(pix.b)), a_dyn_1, b_dyn_1);
        cr = delayerApply(d_norm2r, cr, a_dyn_2, b_dyn_2);
        cb = delayerApply(d_norm2b, cb, a_dyn_2, b_dyn_2);

        imageStore(dstTex, pos, uvec4(pix.r, chromaUnsigned(int(cr)), chromaUnsigned(int(cb)), pix.a));
    }
}
    """.trimIndent()

    val PASS_0A1 = """
#version 310 es
precision highp float;
precision highp int;
precision highp uimage2D;

layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D inTex;
layout(rgba16ui, binding = 1) writeonly uniform uimage2D outTex;
layout(std140, binding = 2) uniform DemosaicPass0a1Params_UBO {
    int uParams_lq;
    int uParams_tq;
    int uParams_rq;
    int uParams_bq;
};

ivec4 loadI(ivec2 p) {
    return ivec4(imageLoad(inTex, p));
}

uvec4 toU16FromI(ivec4 v) {
    return uvec4(clamp(v, ivec4(0), ivec4(65535)));
}

ivec4 smoothFilterFlt(ivec2 imgPos) {
    ivec4 sum = ivec4(0);

    ivec4 v1 = loadI(imgPos + ivec2(-1, -1));
    sum.r = v1.a;

    ivec4 v2 = loadI(imgPos + ivec2(-1, 0));
    sum.r += 2 * v2.a;

    ivec4 v3 = loadI(imgPos + ivec2(-1, 1));
    sum.r += v3.a;

    ivec4 v4 = loadI(imgPos + ivec2(0, -1));
    sum.r += 2 * v4.r + v4.g;
    sum.g = v4.r + 2 * v4.g + v4.b;
    sum.b = v4.g + 2 * v4.b + v4.a;
    sum.a = v4.b + 2 * v4.a;

    ivec4 v5 = loadI(imgPos + ivec2(0, 0));
    sum.r += 4 * v5.r + 2 * v5.g;
    sum.g += 2 * v5.r + 4 * v5.g + 2 * v5.b;
    sum.b += 2 * v5.g + 4 * v5.b + 2 * v5.a;
    sum.a += 2 * v5.b + 4 * v5.a;

    ivec4 v6 = loadI(imgPos + ivec2(0, 1));
    sum.r += 2 * v6.r + v6.g;
    sum.g += v6.r + 2 * v6.g + v6.b;
    sum.b += v6.g + 2 * v6.b + v6.a;
    sum.a += v6.b + 2 * v6.a;

    ivec4 v7 = loadI(imgPos + ivec2(1, -1));
    sum.a += v7.r;

    ivec4 v8 = loadI(imgPos + ivec2(1, 0));
    sum.a += 2 * v8.r;

    ivec4 v9 = loadI(imgPos + ivec2(1, 1));
    sum.a += v9.r;

    return sum >> 4;
}

ivec4 smoothFilterLR(ivec2 imgPos, bool skipL, bool skipR) {
    ivec4 sum = ivec4(0);

    if (skipL) {
        sum.r = 0;
        imgPos.y += 1;
    } else {
        imgPos.x -= 1;
        imgPos.y -= 1;
        ivec4 v = loadI(imgPos);
        sum.r = v.a;

        imgPos.y += 1;
        v = loadI(imgPos);
        sum.r += 2 * v.a;

        imgPos.y += 1;
        v = loadI(imgPos);
        sum.r += v.a;
        imgPos.x += 1;
    }

    ivec4 v4 = loadI(imgPos);
    sum.r += 2 * v4.r + v4.g;
    sum.g = v4.r + 2 * v4.g + v4.b;
    sum.b = v4.g + 2 * v4.b + v4.a;
    sum.a = v4.b + 2 * v4.a;

    imgPos.y -= 1;
    ivec4 v5 = loadI(imgPos);
    sum.r += 4 * v5.r + 2 * v5.g;
    sum.g += 2 * v5.r + 4 * v5.g + 2 * v5.b;
    sum.b += 2 * v5.g + 4 * v5.b + 2 * v5.a;
    sum.a += 2 * v5.b + 4 * v5.a;

    imgPos.y -= 1;
    ivec4 v6 = loadI(imgPos);
    sum.r += 2 * v6.r + v6.g;
    sum.g += v6.r + 2 * v6.g + v6.b;
    sum.b += v6.g + 2 * v6.b + v6.a;
    sum.a += v6.b + 2 * v6.a;

    if (skipR) {
        sum.a = 0;
    } else {
        imgPos.x += 1;
        ivec4 v7 = loadI(imgPos);
        sum.a += v7.r;

        imgPos.y += 1;
        ivec4 v8 = loadI(imgPos);
        sum.a += 2 * v8.r;

        imgPos.y += 1;
        ivec4 v9 = loadI(imgPos);
        sum.a += v9.r;
    }

    if (skipL) sum.r = 0;
    return sum >> 4;
}

void main() {
    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);

    if (any(greaterThanEqual(gid, imageSize(outTex)))) return;

    ivec4 result = ivec4(0);
    if (gid.x > uParams_lq && gid.y >= uParams_tq && gid.x < uParams_rq && gid.y < uParams_bq) {
        result = smoothFilterFlt(gid);
    } else if (gid.x == uParams_lq && gid.y >= uParams_tq && gid.x < uParams_rq && gid.y < uParams_bq) {
        result = smoothFilterLR(gid, true, false);
    } else if (gid.x > uParams_lq && gid.y >= uParams_tq && gid.x == uParams_rq && gid.y < uParams_bq) {
        result = smoothFilterLR(gid, false, true);
    }

    imageStore(outTex, gid, toU16FromI(result));
}
    """.trimIndent()

    val PASS_0A2 = """
#version 310 es
precision highp float;
precision highp int;
precision highp image2D;
precision highp uimage2D;

layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16ui, binding = 0) readonly uniform uimage2D inTex;
layout(rgba16f,  binding = 1) writeonly uniform image2D outTex;
layout(std140, binding = 2) uniform DemosaicPass0a2Params_UBO {
    int uParams_l;
    int uParams_t;
    int uParams_r;
    int uParams_b;
    float uParams_stdDeviation;
    float uParams_pad0;
    float uParams_pad1;
    float uParams_pad2;
};

vec4 loadU(ivec2 p) {
    return vec4(imageLoad(inTex, p));
}

vec2 scaleFilterFlt(float v_2, float v_1, float v0, float v1, float v2, float stdDeviation) {
    float minG = min(min(v0, v_2), v2);
    if (minG < stdDeviation)
        return vec2(1.0, 0.0);

    float rbSum = v_1 + v1;
    float rbDif = abs(v_1 - v1);
    float greenSum0 = v_2 + v0;
    float greenDif0 = abs(v_2 - v0);
    float greenSum2 = v0 + v2;
    float greenDif2 = abs(v0 - v2);

    vec2 gsr = vec2(1.0 / (greenSum0 + 1.0), 1.0 / (greenSum2 + 1.0));
    float rgScale0 = v_1 * 2.0 * gsr.x;
    float rgScale1 = rbSum / (v0 * 2.0 + 1.0);
    float rgScale2 = v1 * 2.0 * gsr.y;

    float difScale1 = rbDif / (rbSum + 1.0);
    float difScale0 = greenDif0 * gsr.x;
    float difScale2 = greenDif2 * gsr.y;

    vec2 res;
    res.y = difScale0 + difScale1 + difScale2;
    if (res.y > 0.05) {
        float ryr = 1.5 / res.y;
        rgScale0 = rgScale0 * ryr * (res.y - difScale0);
        rgScale1 = rgScale1 * ryr * (res.y - difScale1);
        rgScale2 = rgScale2 * ryr * (res.y - difScale2);
    }

    res.x = rgScale0 + rgScale1 + rgScale2;
    if (res.x != 0.0) res.x = 3.0 / res.x;
    return res;
}

void main() {
    ivec2 outputPos = ivec2(gl_GlobalInvocationID.xy);

    if (any(greaterThanEqual(outputPos, imageSize(outTex)))) return;

    int gid_x = outputPos.x / 4;
    int gid_y = outputPos.y;
    int outputIndex = outputPos.x % 4;

    if (gid_x <= uParams_l || gid_x >= uParams_r ||
        gid_y < uParams_t || gid_y >= uParams_b) {
        return;
    }

    ivec2 inputPixelCoord = ivec2(gid_x, gid_y * 2);
    vec4 v_2 = loadU(inputPixelCoord + ivec2(0, -2));
    vec4 v_1 = loadU(inputPixelCoord + ivec2(0, -1));
    vec4 v0  = loadU(inputPixelCoord + ivec2(0,  0));
    vec4 v1  = loadU(inputPixelCoord + ivec2(0,  1));
    vec4 v2  = loadU(inputPixelCoord + ivec2(0,  2));
    vec4 v3  = loadU(inputPixelCoord + ivec2(0,  3));

    vec2 out_h, out_v;
    if (outputIndex == 0) {
        out_v = scaleFilterFlt(v_1.r, v0.r, v1.r, v2.r, v3.r, uParams_stdDeviation);
        vec4 in_1 = loadU(inputPixelCoord + ivec2(-1, 1));
        vec4 in0 = v1;
        out_h = scaleFilterFlt(in_1.b, in_1.a, in0.r, in0.g, in0.b, uParams_stdDeviation);
    } else if (outputIndex == 1) {
        out_v = scaleFilterFlt(v_2.g, v_1.g, v0.g, v1.g, v2.g, uParams_stdDeviation);
        vec4 in_1 = loadU(inputPixelCoord + ivec2(-1, 0));
        vec4 in0 = v0;
        out_h = scaleFilterFlt(in_1.a, in0.r, in0.g, in0.b, in0.a, uParams_stdDeviation);
    } else if (outputIndex == 2) {
        out_v = scaleFilterFlt(v_1.b, v0.b, v1.b, v2.b, v3.b, uParams_stdDeviation);
        vec4 in0 = v1;
        vec4 in1 = loadU(inputPixelCoord + ivec2(1, 1));
        out_h = scaleFilterFlt(in0.r, in0.g, in0.b, in0.a, in1.r, uParams_stdDeviation);
    } else {
        out_v = scaleFilterFlt(v_2.a, v_1.a, v0.a, v1.a, v2.a, uParams_stdDeviation);
        vec4 in0 = v0;
        vec4 in1 = loadU(inputPixelCoord + ivec2(1, 0));
        out_h = scaleFilterFlt(in0.g, in0.b, in0.a, in1.r, in1.g, uParams_stdDeviation);
    }

    imageStore(outTex, outputPos, vec4(out_h.x, out_v.x, out_h.y, out_v.y));
}
    """.trimIndent()

    val PASS_0B = """
#version 310 es
precision highp float;
precision highp int;
precision highp image2D;
precision highp uimage2D;

layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16f, binding = 0) readonly  uniform image2D inTex;   // textureScale (width, height/2)
layout(rgba16f, binding = 1) writeonly uniform image2D outTex;  // textureMedian (width/4, height/2)

layout(std140, binding = 2) uniform DemosaicPass0bParams_UBO {
    int uParams_l;
    int uParams_t;
    int uParams_r;
    int uParams_b;
};

vec2 medianFilter(ivec2 imgPos) {
    ivec2 pos1 = ivec2(imgPos.x, (imgPos.y - 1) / 2);
    ivec2 pos2 = ivec2(imgPos.x + 2, (imgPos.y - 1) / 2);

    float scale0 = imageLoad(inTex, pos1).g;
    float scale1 = imageLoad(inTex, pos2).g;
    vec2 v = vec2(scale0, scale1);
    vec2 sum = v;

    pos1 = ivec2(imgPos.x, (imgPos.y - 1) / 2 + 1);
    pos2 = ivec2(imgPos.x + 2, (imgPos.y - 1) / 2 + 1);
    scale0 = imageLoad(inTex, pos1).g;
    scale1 = imageLoad(inTex, pos2).g;
    v = vec2(scale0, scale1);
    vec2 minv = min(sum, v);
    vec2 maxv = max(sum, v);
    sum += v;

    pos1 = ivec2(imgPos.x - 1, imgPos.y / 2);
    pos2 = ivec2(imgPos.x + 1, imgPos.y / 2);
    scale0 = imageLoad(inTex, pos1).r;
    scale1 = imageLoad(inTex, pos2).r;
    v = vec2(scale0, scale1);
    minv = min(minv, v);
    maxv = max(maxv, v);
    sum += v;

    pos2 = ivec2(imgPos.x + 3, imgPos.y / 2);
    scale0 = imageLoad(inTex, pos2).r;
    v = vec2(scale1, scale0);
    minv = min(minv, v);
    maxv = max(maxv, v);
    sum += v;
    return (sum - minv - maxv) / 2.0;
}

void main() {
    ivec2 outputPos = ivec2(gl_GlobalInvocationID.xy);

    if (any(greaterThanEqual(outputPos, imageSize(outTex)))) return;

    if (outputPos.x < uParams_l || outputPos.x >= uParams_r ||
        outputPos.y * 2 < uParams_t || outputPos.y * 2 >= uParams_b) {
        return;
    }

    int inputX = outputPos.x * 4;
    int inputY = outputPos.y;

    ivec2 pos1 = ivec2(inputX + 0, inputY * 2 + 0);
    ivec2 pos2 = ivec2(inputX + 1, inputY * 2 + 1);

    vec2 med1 = medianFilter(pos1);
    vec2 med2 = medianFilter(pos2);

    imageStore(outTex, outputPos, vec4(med1.x, med2.x, med1.y, med2.y));
}
    """.trimIndent()

    val PASS_0C = """
#version 310 es
precision highp float;
precision highp int;
precision highp iimage2D;
precision highp uimage2D;

layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D  inTex;
layout(rgba16i, binding = 1) writeonly uniform iimage2D  outTex;

layout(std140, binding = 2) uniform DemosaicPass0cParams_UBO {
    int uParams_l;
    int uParams_t;
    int uParams_r;
    int uParams_b;
};

ivec4 sobelFlt(ivec2 pos) {
    ivec4 v1 = ivec4(imageLoad(inTex, pos + ivec2(-1, -1)));
    ivec4 v2 = ivec4(imageLoad(inTex, pos + ivec2(-1,  1)));
    ivec4 v3 = ivec4(imageLoad(inTex, pos + ivec2( 0,  1)));
    ivec4 v4 = ivec4(imageLoad(inTex, pos + ivec2( 1,  1)));
    ivec4 v5 = ivec4(imageLoad(inTex, pos + ivec2( 0,  0)));
    ivec4 v6 = ivec4(imageLoad(inTex, pos + ivec2( 0, -1)));
    ivec4 v7 = ivec4(imageLoad(inTex, pos + ivec2( 1, -1)));

    ivec4 sum;
    sum.r = -v1.a - v2.a - v3.g + 4 * v5.r - v6.g;
    sum.g = -v3.r - v3.b + 4 * v5.g - v6.r - v6.b;
    sum.b = -v3.g - v3.a + 4 * v5.b - v6.g - v6.a;
    sum.a = -v3.b - v4.r + 4 * v5.a - v6.b - v7.r;

    return clamp(sum >> 3, ivec4(-32768), ivec4(32767));
}

ivec4 sobelLR(ivec2 pos, bool skipL, bool skipR) {
    ivec4 sum = ivec4(0);

    if (!skipL) {
        ivec4 v1 = ivec4(imageLoad(inTex, pos + ivec2(-1, -1)));
        ivec4 v2 = ivec4(imageLoad(inTex, pos + ivec2(-1,  1)));
        sum.r -= v1.a + v2.a;
    }

    ivec4 v3 = ivec4(imageLoad(inTex, pos + ivec2(0,  1)));
    sum.r -= v3.g;
    sum.g  = -v3.r - v3.b;
    sum.b  = -v3.g - v3.a;
    sum.a  = -v3.b;

    ivec4 v4 = ivec4(imageLoad(inTex, pos));
    sum += 4 * v4;

    ivec4 v5 = ivec4(imageLoad(inTex, pos + ivec2(0, -1)));
    sum.r -= v5.g;
    sum.g -= v5.r + v5.b;
    sum.b -= v5.g + v5.a;
    sum.a -= v5.b;

    if (!skipR) {
        ivec4 v6 = ivec4(imageLoad(inTex, pos + ivec2(1, -1)));
        ivec4 v7 = ivec4(imageLoad(inTex, pos + ivec2(1,  1)));
        sum.a -= v6.r + v7.r;
    }
    if (skipR)
        sum.a = 0;
    if (skipL)
        sum.r = 0;

    return clamp(sum >> 3, ivec4(-32768), ivec4(32767));
}

void main() {
    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);

    if (any(greaterThanEqual(gid, imageSize(outTex)))) return;

    ivec4 result = ivec4(0);

    bool inV = (gid.y >= uParams_t && gid.y < uParams_b);
    bool inH = (gid.x > uParams_l  && gid.x < uParams_r);
    bool onL = (gid.x == uParams_l && gid.y >= uParams_t && gid.y < uParams_b);
    bool onR = (gid.x == uParams_r && gid.y >= uParams_t && gid.y < uParams_b);

    if (inH && inV) {
        result = sobelFlt(gid);
    } else if (onL && gid.x < uParams_r) {
        result = sobelLR(gid, true, false);
    } else if (onR && gid.x > uParams_l) {
        result = sobelLR(gid, false, true);
    }

    imageStore(outTex, gid, result);
}
    """.trimIndent()

    val PASS_1 = """
#version 310 es
precision highp float;
precision highp int;
precision highp image2D;
precision highp uimage2D;
precision highp iimage2D;

layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16ui, binding = 0) readonly uniform uimage2D uInputTexture0;
layout(rgba16i, binding = 1) readonly uniform iimage2D uInputTexture1;
layout(rgba16f, binding = 2) readonly uniform image2D uInputTexture2;
layout(rgba16f, binding = 3) readonly uniform image2D uInputTexture3;
layout(rgba16ui, binding = 4) writeonly uniform uimage2D uOutputTexture;

layout(std140, binding = 5) uniform DemosaicPass1Params_UBO {
    int ubo_uParams_l;
    int ubo_uParams_t;
    int ubo_uParams_r;
    int ubo_uParams_b;
    int ubo_uParams_minThresholdEdge;
    int ubo_uParams_minThresholdVNG;
    int ubo_uParams_pad0;
    int ubo_uParams_pad1;
};

#define texelFetch(tex, coord, lod) imageLoad(tex, coord)

void shiftInts(out vec4 out_vec4, out float out_val, vec4 a, vec4 b, int offset) {
    if (offset == 0) {
        out_vec4 = vec4(a.x, a.y, a.z, a.w);
        out_val = b.x;
    } else if (offset == 1) {
        out_vec4 = vec4(a.y, a.z, a.w, b.x);
        out_val = b.y;
    } else if (offset == 2) {
        out_vec4 = vec4(a.z, a.w, b.x, b.y);
        out_val = b.z;
    } else {
        out_vec4 = vec4(a.w, b.x, b.y, b.z);
        out_val = b.w;
    }
}

void gradientSingleStep(out vec4 edgGrad0, out vec4 edgGrad1, ivec2 imgPos) {
    int offset = (imgPos.x - 2) & 3;
    int x = (imgPos.x - 2) / 4;
    int y = imgPos.y;

    vec4 edg_2_v4, edg_1_v4, edg0_v4, edg1_v4, edg2_v4;
    float edg_2_f, edg_1_f, edg0_f, edg1_f, edg2_f;

    vec4 a = vec4(texelFetch(uInputTexture1, ivec2(x, y-2), 0));
    vec4 b = vec4(texelFetch(uInputTexture1, ivec2(x+1, y-2), 0));
    shiftInts(edg_2_v4, edg_2_f, a, b, offset);

    a = vec4(texelFetch(uInputTexture1, ivec2(x, y-1), 0));
    b = vec4(texelFetch(uInputTexture1, ivec2(x+1, y-1), 0));
    shiftInts(edg_1_v4, edg_1_f, a, b, offset);

    a = vec4(texelFetch(uInputTexture1, ivec2(x, y), 0));
    b = vec4(texelFetch(uInputTexture1, ivec2(x+1, y), 0));
    shiftInts(edg0_v4, edg0_f, a, b, offset);

    a = vec4(texelFetch(uInputTexture1, ivec2(x, y+1), 0));
    b = vec4(texelFetch(uInputTexture1, ivec2(x+1, y+1), 0));
    shiftInts(edg1_v4, edg1_f, a, b, offset);

    a = vec4(texelFetch(uInputTexture1, ivec2(x, y+2), 0));
    b = vec4(texelFetch(uInputTexture1, ivec2(x+1, y+2), 0));
    shiftInts(edg2_v4, edg2_f, a, b, offset);

    float hGrad = abs(edg0_v4.y - edg0_v4.z) + abs(edg0_v4.z - edg0_v4.w) +
                 (abs(edg_1_v4.y - edg_1_v4.z) + abs(edg_1_v4.z - edg_1_v4.w) +
                  abs(edg1_v4.y - edg1_v4.z) + abs(edg1_v4.z - edg1_v4.w)) * 0.5;

    float vGrad = abs(edg_1_v4.z - edg0_v4.z) + abs(edg0_v4.z - edg1_v4.z) +
                 (abs(edg_1_v4.y - edg0_v4.y) + abs(edg0_v4.y - edg1_v4.y) +
                  abs(edg_1_v4.w - edg0_v4.w) + abs(edg0_v4.w - edg1_v4.w)) * 0.5;

    edgGrad0.x = (vGrad + abs(edg_2_v4.z - edg_1_v4.z) + (abs(edg_2_v4.y - edg_1_v4.y) + abs(edg_2_v4.w - edg_1_v4.w)) * 0.5) * 0.25;
    edgGrad0.z = (vGrad + abs(edg2_v4.z - edg1_v4.z) + (abs(edg2_v4.y - edg1_v4.y) + abs(edg2_v4.w - edg1_v4.w)) * 0.5) * 0.25;
    edgGrad0.w = (hGrad + abs(edg0_v4.x - edg0_v4.y) + (abs(edg_1_v4.x - edg_1_v4.y) + abs(edg1_v4.x - edg1_v4.y)) * 0.5) * 0.25;
    edgGrad0.y = (hGrad + abs(edg0_f - edg0_v4.w) + (abs(edg_1_f - edg_1_v4.w) + abs(edg1_f - edg1_v4.w)) * 0.5) * 0.25;

    float senwGrad = abs(edg_1_v4.y - edg0_v4.z) + abs(edg0_v4.z - edg1_v4.w) + abs(edg_1_v4.z - edg0_v4.w) + abs(edg0_v4.y - edg1_v4.z);
    float neswGrad = abs(edg_1_v4.w - edg0_v4.z) + abs(edg0_v4.z - edg1_v4.y) + abs(edg0_v4.y - edg_1_v4.z) + abs(edg0_v4.w - edg1_v4.z);

    edgGrad1.w = (senwGrad + abs(edg_1_v4.y - edg_2_v4.x) + (abs(edg_1_v4.z - edg_2_v4.y) + abs(edg0_v4.y - edg_1_v4.x)) * 0.5) * 0.25;
    edgGrad1.z = (neswGrad + abs(edg1_v4.y - edg2_v4.x) + (abs(edg0_v4.y - edg1_v4.x) + abs(edg1_v4.z - edg2_v4.y)) * 0.5) * 0.25;
    edgGrad1.y = (senwGrad + abs(edg1_v4.w - edg2_f) + (abs(edg0_v4.w - edg1_f) + abs(edg1_v4.z - edg2_v4.w)) * 0.5) * 0.25;
    edgGrad1.x = (neswGrad + abs(edg_1_v4.w - edg_2_f) + (abs(edg_1_v4.z - edg_2_v4.w) + abs(edg0_v4.w - edg_1_f)) * 0.5) * 0.25;
}

void gradientVNG_RB(out vec4 bayGrad0, out vec4 bayGrad1, ivec2 imgPos) {
    int offset = (imgPos.x - 2) & 3;
    int x = (imgPos.x - 2) / 4;
    int y = imgPos.y;

    vec4 bayer_2_v4, bayer_1_v4, bayer0_v4, bayer1_v4, bayer2_v4;
    float bayer_2_f, bayer_1_f, bayer0_f, bayer1_f, bayer2_f;

    vec4 a = vec4(texelFetch(uInputTexture0, ivec2(x, y-2), 0));
    vec4 b = vec4(texelFetch(uInputTexture0, ivec2(x+1, y-2), 0));
    shiftInts(bayer_2_v4, bayer_2_f, a, b, offset);

    a = vec4(texelFetch(uInputTexture0, ivec2(x, y-1), 0));
    b = vec4(texelFetch(uInputTexture0, ivec2(x+1, y-1), 0));
    shiftInts(bayer_1_v4, bayer_1_f, a, b, offset);

    a = vec4(texelFetch(uInputTexture0, ivec2(x, y), 0));
    b = vec4(texelFetch(uInputTexture0, ivec2(x+1, y), 0));
    shiftInts(bayer0_v4, bayer0_f, a, b, offset);

    a = vec4(texelFetch(uInputTexture0, ivec2(x, y+1), 0));
    b = vec4(texelFetch(uInputTexture0, ivec2(x+1, y+1), 0));
    shiftInts(bayer1_v4, bayer1_f, a, b, offset);

    a = vec4(texelFetch(uInputTexture0, ivec2(x, y+2), 0));
    b = vec4(texelFetch(uInputTexture0, ivec2(x+1, y+2), 0));
    shiftInts(bayer2_v4, bayer2_f, a, b, offset);

    float vGrad = abs(bayer_1_v4.z - bayer1_v4.z) + (abs(bayer_1_v4.y - bayer1_v4.y) + abs(bayer_1_v4.w - bayer1_v4.w))*0.5;
    float hGrad = abs(bayer0_v4.w - bayer0_v4.y) + (abs(bayer_1_v4.w - bayer_1_v4.y) + abs(bayer1_v4.w - bayer1_v4.y))*0.5;

    bayGrad0.x = (vGrad + abs(bayer_2_v4.z - bayer0_v4.z) + (abs(bayer_2_v4.y - bayer0_v4.y) + abs(bayer_2_v4.w - bayer0_v4.w))*0.5) / 8.0;
    bayGrad0.z = (vGrad + abs(bayer2_v4.z - bayer0_v4.z) + (abs(bayer2_v4.y - bayer0_v4.y) + abs(bayer2_v4.w - bayer0_v4.w))*0.5) / 8.0;
    bayGrad0.w = (hGrad + abs(bayer0_v4.x - bayer0_v4.z) + (abs(bayer_1_v4.x - bayer_1_v4.z) + abs(bayer1_v4.x - bayer1_v4.z))*0.5) / 8.0;
    bayGrad0.y = (hGrad + abs(bayer0_f - bayer0_v4.z) + (abs(bayer_1_f - bayer_1_v4.z) + abs(bayer1_f - bayer1_v4.z))*0.5) / 8.0;

    float neswGrad = abs(bayer_1_v4.w - bayer1_v4.y) + abs(bayer0_v4.y - bayer_1_v4.z) + abs(bayer0_v4.w - bayer1_v4.z);
    float senwGrad = abs(bayer1_v4.w - bayer_1_v4.y) + abs(bayer_1_v4.z - bayer0_v4.w) + abs(bayer0_v4.y - bayer1_v4.z);

    bayGrad1.x = (neswGrad + abs(bayer_2_f - bayer0_v4.z) + abs(bayer_2_v4.w - bayer_1_v4.z) + abs(bayer_1_f - bayer0_v4.w)) / 8.0;
    bayGrad1.z = (neswGrad + abs(bayer2_v4.x - bayer0_v4.z) + abs(bayer1_v4.x - bayer0_v4.y) + abs(bayer2_v4.y - bayer1_v4.z)) / 8.0;
    bayGrad1.y = (senwGrad + abs(bayer2_f - bayer0_v4.z) + abs(bayer1_f - bayer0_v4.w) + abs(bayer2_v4.w - bayer1_v4.z)) / 8.0;
    bayGrad1.w = (senwGrad + abs(bayer_2_v4.x - bayer0_v4.z) + abs(bayer_2_v4.y - bayer_1_v4.z) + abs(bayer_1_v4.x - bayer0_v4.y)) / 8.0;
}


uvec4 greenAtRedBlue(ivec2 pos, int offsetBayer, int rbIndex) {
    vec4 edgGrad0, edgGrad1, bayGrad0, bayGrad1;
    gradientSingleStep(edgGrad0, edgGrad1, pos);
    gradientVNG_RB(bayGrad0, bayGrad1, pos);

    float minGradient = edgGrad0.x;
    int minGradientIndex = 0;
    if (edgGrad0.y < minGradient) { minGradient = edgGrad0.y; minGradientIndex = 1; }
    if (edgGrad0.z < minGradient) { minGradient = edgGrad0.z; minGradientIndex = 2; }
    if (edgGrad0.w < minGradient) { minGradient = edgGrad0.w; minGradientIndex = 3; }
    if (edgGrad1.x < minGradient) { minGradient = edgGrad1.x; minGradientIndex = 4; }
    if (edgGrad1.y < minGradient) { minGradient = edgGrad1.y; minGradientIndex = 5; }
    if (edgGrad1.z < minGradient) { minGradient = edgGrad1.z; minGradientIndex = 6; }
    if (edgGrad1.w < minGradient) { minGradient = edgGrad1.w; minGradientIndex = 7; }

    float maxG = max(max(edgGrad0.x, edgGrad0.y), max(edgGrad0.z, edgGrad0.w));
    maxG = max(maxG, max(max(edgGrad1.x, edgGrad1.y), max(edgGrad1.z, edgGrad1.w)));

    float dif = (maxG - minGradient) / 8.0;
    float dif1 = (maxG - minGradient) / 32.0;
    dif = dif - dif1;
    float threshold = 1.5 * minGradient + dif + 8.0;
    threshold = max(threshold, float(ubo_uParams_minThresholdEdge));

    float maxGVNG = max(max(bayGrad0.x, bayGrad0.y), max(bayGrad0.z, bayGrad0.w));
    maxGVNG = max(maxGVNG, max(max(bayGrad1.x, bayGrad1.y), max(bayGrad1.z, bayGrad1.w)));
    float minGVNG = min(min(bayGrad0.x, bayGrad0.y), min(bayGrad0.z, bayGrad0.w));
    minGVNG = min(minGVNG, min(min(bayGrad1.x, bayGrad1.y), min(bayGrad1.z, bayGrad1.w)));
    maxGVNG *= 0.5;
    minGVNG *= 0.5;
    dif = maxGVNG - minGVNG;
    float thresholdVNG = 3.0 * minGVNG + dif + 8.0;
    thresholdVNG = max(thresholdVNG, float(ubo_uParams_minThresholdVNG));

    int offset = (pos.x - 2) & 3;
    int x = (pos.x - 2) / 4;
    int y = pos.y;

    vec4 bayer_1_v4, bayer0_v4, bayer1_v4;
    float bayer_1_f, bayer0_f, bayer1_f;

    vec4 a = vec4(texelFetch(uInputTexture0, ivec2(x, y-1), 0));
    vec4 b = vec4(texelFetch(uInputTexture0, ivec2(x+1, y-1), 0));
    shiftInts(bayer_1_v4, bayer_1_f, a, b, offset);

    a = vec4(texelFetch(uInputTexture0, ivec2(x, y), 0));
    b = vec4(texelFetch(uInputTexture0, ivec2(x+1, y), 0));
    shiftInts(bayer0_v4, bayer0_f, a, b, offset);

    a = vec4(texelFetch(uInputTexture0, ivec2(x, y+1), 0));
    b = vec4(texelFetch(uInputTexture0, ivec2(x+1, y+1), 0));
    shiftInts(bayer1_v4, bayer1_f, a, b, offset);

    vec4 medianY_2_v4, medianY_1_v4, medianY0_v4, medianY1_v4, medianY2_v4;
    float medianY_2_f, medianY_1_f, medianY0_f, medianY1_f, medianY2_f;

    a = texelFetch(uInputTexture3, ivec2(x, (y-2)/2), 0);
    b = texelFetch(uInputTexture3, ivec2(x+1, (y-2)/2), 0);
    shiftInts(medianY_2_v4, medianY_2_f, a, b, offset);

    a = texelFetch(uInputTexture3, ivec2(x, y/2), 0);
    b = texelFetch(uInputTexture3, ivec2(x+1, y/2), 0);
    shiftInts(medianY0_v4, medianY0_f, a, b, offset);

    a = texelFetch(uInputTexture3, ivec2(x, (y+2)/2), 0);
    b = texelFetch(uInputTexture3, ivec2(x+1, (y+2)/2), 0);
    shiftInts(medianY2_v4, medianY2_f, a, b, offset);

    if (offsetBayer == 1) {
        medianY_1_v4 = medianY0_v4;
        medianY_1_f = medianY0_f;
        medianY1_v4 = medianY2_v4;
        medianY1_f = medianY2_f;
    } else {
        medianY_1_v4 = medianY_2_v4;
        medianY_1_f = medianY_2_f;
        medianY1_v4 = medianY0_v4;
        medianY1_f = medianY0_f;
    }

    float target = bayer0_v4.z;
    float greenTest[8];

    greenTest[0] = texelFetch(uInputTexture2, ivec2(pos.x, (pos.y - 1) / 2), 0).g * target;
    greenTest[1] = texelFetch(uInputTexture2, ivec2(pos.x + 1, pos.y / 2), 0).r * target;
    greenTest[2] = texelFetch(uInputTexture2, ivec2(pos.x, (pos.y + 1) / 2), 0).g * target;
    greenTest[3] = texelFetch(uInputTexture2, ivec2(pos.x - 1, pos.y / 2), 0).r * target;
    {
        float scaleA = medianY2_f;
        float scaleB = medianY_2_v4.x;
        float scaleMax = max(1.0, max(scaleA, scaleB));
        float scaleMin = min(1.0, min(scaleA, scaleB));

        float medScale = medianY0_v4.z;
        float scaleC = clamp(medScale, scaleMin, scaleMax);

        float sum = (bayer_1_v4.w + bayer1_v4.y) * 0.5;
        float minDif = min(abs(sum - bayer1_v4.w), abs(sum - bayer_1_v4.y));
        if (minDif < sum / 4.0) scaleC = medScale;
        float greenC = scaleC * target;

        scaleA = medianY1_v4.w;
        scaleB = medianY_1_v4.y;
        scaleMax = max(1.0, max(scaleA, scaleB));
        scaleMin = min(1.0, min(scaleA, scaleB));

        greenTest[4] = (greenC + bayer_1_v4.w * clamp(medianY_1_v4.w, scaleMin, scaleMax)) * 0.5; // NorthEast
        greenTest[6] = (greenC + bayer1_v4.y * clamp(medianY1_v4.y, scaleMin, scaleMax)) * 0.5; // SouthWest

        scaleA = medianY_2_f;
        scaleB = medianY2_v4.x;
        scaleMax = max(1.0, max(scaleA, scaleB));
        scaleMin = min(1.0, min(scaleA, scaleB));

        scaleC = clamp(medScale, scaleMin, scaleMax);

        sum = (bayer_1_v4.y + bayer1_v4.w)*0.5;
        minDif = min(abs(sum - bayer_1_v4.w), abs(sum - bayer1_v4.y));
        if (minDif < sum / 4.0) scaleC = medScale;
        greenC = scaleC * target;

        scaleA = medianY_1_v4.w;
        scaleB = medianY1_v4.y;
        scaleMax = max(1.0, max(scaleA, scaleB));
        scaleMin = min(1.0, min(scaleA, scaleB));

        greenTest[5] = (greenC + bayer1_v4.w * clamp(medianY1_v4.w, scaleMin, scaleMax)) * 0.5;
        greenTest[7] = (greenC + bayer_1_v4.y * clamp(medianY_1_v4.y, scaleMin, scaleMax)) * 0.5;
    }

    int mask = 0;
    float maxGreen = 0.0;
    float minGreen = 65535.0;
    float maxUsedGradient = 0.0;

    if (threshold > edgGrad0.x && thresholdVNG > bayGrad0.x) { maxUsedGradient = max(edgGrad0.x, maxUsedGradient); maxGreen = max(maxGreen, greenTest[0]); minGreen = min(minGreen, greenTest[0]); mask |= (1 << 0); }
    if (threshold > edgGrad0.y && thresholdVNG > bayGrad0.y) { maxUsedGradient = max(edgGrad0.y, maxUsedGradient); maxGreen = max(maxGreen, greenTest[1]); minGreen = min(minGreen, greenTest[1]); mask |= (1 << 1); }
    if (threshold > edgGrad0.z && thresholdVNG > bayGrad0.z) { maxUsedGradient = max(edgGrad0.z, maxUsedGradient); maxGreen = max(maxGreen, greenTest[2]); minGreen = min(minGreen, greenTest[2]); mask |= (1 << 2); }
    if (threshold > edgGrad0.w && thresholdVNG > bayGrad0.w) { maxUsedGradient = max(edgGrad0.w, maxUsedGradient); maxGreen = max(maxGreen, greenTest[3]); minGreen = min(minGreen, greenTest[3]); mask |= (1 << 3); }
    if (threshold > edgGrad1.x && thresholdVNG > bayGrad1.x) { maxUsedGradient = max(edgGrad1.x, maxUsedGradient); maxGreen = max(maxGreen, greenTest[4]); minGreen = min(minGreen, greenTest[4]); mask |= (1 << 4); }
    if (threshold > edgGrad1.y && thresholdVNG > bayGrad1.y) { maxUsedGradient = max(edgGrad1.y, maxUsedGradient); maxGreen = max(maxGreen, greenTest[5]); minGreen = min(minGreen, greenTest[5]); mask |= (1 << 5); }
    if (threshold > edgGrad1.z && thresholdVNG > bayGrad1.z) { maxUsedGradient = max(edgGrad1.z, maxUsedGradient); maxGreen = max(maxGreen, greenTest[6]); minGreen = min(minGreen, greenTest[6]); mask |= (1 << 6); }
    if (threshold > edgGrad1.w && thresholdVNG > bayGrad1.w) { maxUsedGradient = max(edgGrad1.w, maxUsedGradient); maxGreen = max(maxGreen, greenTest[7]); minGreen = min(minGreen, greenTest[7]); mask |= (1 << 7); }

    bool bDitch = false;
    float lGreen = 0.0;
    int count = 0;
    for (int i = 0; i < 32; i++) {
        if ((mask & (1 << i)) != 0) count++;
    }

    if (minGradientIndex < 4 && 2 < count && count < 6 &&
        maxUsedGradient < 2.0 * minGradient && (mask & 15) == 15) {
        lGreen = (greenTest[0] + greenTest[1] + greenTest[2] + greenTest[3]) / 4.0;
        float sign0 = lGreen - greenTest[0];
        float sign1 = lGreen - greenTest[1];
        float sign2 = lGreen - greenTest[2];
        float sign3 = lGreen - greenTest[3];
        bDitch = (sign0 * sign2 >= 0.0 && sign1 * sign3 >= 0.0);
    }

    float minDif2 = 65535.0;
    if (bDitch) {
        const float kScaleThreshold = 1.3;
        const float kScaleDifThreshold = (kScaleThreshold - (1.0 / kScaleThreshold)) /
                                         (kScaleThreshold + (1.0 / kScaleThreshold));
        bDitch = ((maxGreen - minGreen) > kScaleDifThreshold * (maxGreen + minGreen));

        if (bDitch) {
            int minDifIndex = 0;
            for (int i = 0; i < 4; i++) {
                if ((mask & (1 << i)) != 0) {
                    float difLoc = abs(greenTest[i] - target);
                    if (difLoc < minDif2) {
                        minDif2 = difLoc;
                        minDifIndex = i;
                    }
                }
            }
            lGreen = greenTest[minDifIndex];
            if (minDif2 > 0.0) {
                mask = 1 << minDifIndex;
                count = 1;
            }
        }
    }

    if (minDif2 == 65535.0) {
        if (count > 0) {
            float sum2 = 0.0;
            for (int i = 0; i < 8; i++) {
                if ((mask & (1 << i)) != 0) sum2 += greenTest[i];
            }
            lGreen = clamp(sum2 / float(count), 0.0, 65534.0);
        } else {
            lGreen = (bayer0_v4.w + bayer0_v4.y + bayer1_v4.z + bayer_1_v4.z) * 0.25;
        }
    }

    uvec4 result;
    result.g = uint(clamp(min(lGreen, 65534.0), 0.0, 65534.0));
    result[rbIndex] = uint(clamp(target, 0.0, 65535.0));
    result[2 - rbIndex] = 0u;
    uint encodedValue;
    if (mask == 0) {
        encodedValue = uint(0xFF | (8 << 8));
    } else
    {
        count = 0;
        for (int i = 0; i < 32; i++) {
            if ((mask & (1 << i)) != 0) count++;
        }
        encodedValue = uint(mask | (count << 8));
    }
    result.a = encodedValue;
    return result;
}

void main() {
    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);

    if (any(greaterThanEqual(gid, imageSize(uOutputTexture)))) return;
    if (gid.x < ubo_uParams_l || gid.x >= ubo_uParams_r ||
        gid.y < ubo_uParams_t || gid.y >= ubo_uParams_b) {
        imageStore(uOutputTexture, gid, uvec4(0u));
        return;
    }

    int x = gid.x & 1;
    int y = gid.y & 1;
    int bayerIndex = x + y * 2;

    uvec4 result = uvec4(0u);

    if (bayerIndex == 0) {
        result = greenAtRedBlue(gid, 0, 0);
    } else if (bayerIndex == 1) {
        int bayX = gid.x / 4;
        int bayChannel = gid.x & 3;
        uvec4 bayPixel = texelFetch(uInputTexture0, ivec2(bayX, gid.y), 0);
        result = uvec4(0u, bayPixel[bayChannel], 0u, 0u);
    } else if (bayerIndex == 2) {
        int bayX = gid.x / 4;
        int bayChannel = gid.x & 3;
        uvec4 bayPixel = texelFetch(uInputTexture0, ivec2(bayX, gid.y), 0);
        result = uvec4(0u, bayPixel[bayChannel], 0u, 0u);
    } else {
        result = greenAtRedBlue(gid, 1, 2);
    }

    if (gid.x >= ubo_uParams_l && gid.x < ubo_uParams_r &&
        gid.y >= ubo_uParams_t && gid.y < ubo_uParams_b) {
        imageStore(uOutputTexture, gid, result);
    }
}
    """.trimIndent()

    val PASS_2 = """
#version 310 es
precision highp float;
precision highp int;
precision highp uimage2D;

layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D inTex;
layout(rgba16ui, binding = 1) writeonly uniform uimage2D outTex;

layout(std140, binding = 2) uniform DemosaicPass2Params_UBO {
    int uParams_l;
    int uParams_t;
    int uParams_r;
    int uParams_b;
};

uvec4 oppositeColor(ivec2 pos, int rbIndex) {
    uvec4 rgbd = imageLoad(inTex, pos);

    uvec4 inNN = imageLoad(inTex, pos + ivec2(-1, -1));
    uvec4 inPN = imageLoad(inTex, pos + ivec2(1, -1));
    uvec4 inNP = imageLoad(inTex, pos + ivec2(-1, 1));
    uvec4 inPP = imageLoad(inTex, pos + ivec2(1, 1));

    if (rgbd.w != 0u) {
        vec4 g4 = vec4(float(inNN.g), float(inPN.g), float(inNP.g), float(inPP.g));
        vec4 rb4 = vec4(float(inNN[rbIndex]), float(inPN[rbIndex]), float(inNP[rbIndex]), float(inPP[rbIndex]));
        float gc = float(rgbd.g);
        vec4 dif4 = vec4(1.0) + abs(vec4(gc) - g4) / 4.0;

        vec4 g1 = g4.yyzz * dif4.xwwx + g4.xwwx * dif4.yyzz;
        vec4 rb1 = rb4.yyzz * dif4.xwwx + rb4.xwwx * dif4.yyzz;
        int rgbdW = int(rgbd.w);
        bvec4 g1NonZero = notEqual(g1, vec4(0.0));
        bvec4 mask1 = bvec4(
            (rgbdW & (1 << 0)) != 0,
            (rgbdW & (1 << 1)) != 0,
            (rgbdW & (1 << 2)) != 0,
            (rgbdW & (1 << 3)) != 0
        );
        vec4 b1 = vec4(
            g1NonZero.x && mask1.x ? 1.0 : 0.0,
            g1NonZero.y && mask1.y ? 1.0 : 0.0,
            g1NonZero.z && mask1.z ? 1.0 : 0.0,
            g1NonZero.w && mask1.w ? 1.0 : 0.0
        );
        // NaN guard: Metal's select(0, gc*rb1/g1, b1) discards the unpicked operand, so
        // g1==0 (→ Inf) is harmless there. GLSL float-mix computes 0*(1-b1)+(Inf)*b1, and
        // where b1==0 this is Inf*0 = NaN, which contaminates the bc sum and zeroes R
        // (severe in low-green regions like red neon). Guard the denominator to stay finite.
        vec4 g1safe = mix(vec4(1.0), g1, b1);
        vec4 bc1 = mix(vec4(0.0), gc * rb1 / g1safe, b1);
        vec4 c1 = mix(vec4(0.0), vec4(1.0), b1);

        vec4 g2 = g4.ywyw * dif4.zxzx + g4.zxzx * dif4.ywyw;
        vec4 rb2 = rb4.ywyw * dif4.zxzx + rb4.zxzx * dif4.ywyw;
        bvec4 g2NonZero = notEqual(g2, vec4(0.0));
        bvec4 mask2 = bvec4(
            (rgbdW & (1 << 4)) != 0,
            (rgbdW & (1 << 5)) != 0,
            (rgbdW & (1 << 6)) != 0,
            (rgbdW & (1 << 7)) != 0
        );

        vec4 b2 = vec4(
            (g2NonZero.x && mask2.x) ? 1.0 : 0.0,
            (g2NonZero.y && mask2.y) ? 1.0 : 0.0,
            (g2NonZero.z && mask2.z) ? 1.0 : 0.0,
            (g2NonZero.w && mask2.w) ? 1.0 : 0.0
        );

        vec4 g2safe = mix(vec4(1.0), g2, b2);   // NaN guard, see g1safe above
        vec4 bc2 = mix(vec4(0.0), gc * rb2 / g2safe, b2);
        vec4 c2 = mix(vec4(0.0), vec4(1.0), b2);

        float count = c1.x + c1.y + c1.z + c1.w + c2.x + c2.y + c2.z + c2.w;
        float bc = bc1.x + bc1.y + bc1.z + bc1.w + bc2.x + bc2.y + bc2.z + bc2.w;

        if (count > 0.0) {
            bc /= count;
        } else {
            bc = (rb4.x + rb4.y + rb4.z + rb4.w) / 4.0;
        }

        rgbd[rbIndex] = uint(clamp(bc, 0.0, 65534.0));
    } else {
        rgbd[rbIndex] = 0u;
    }

    return rgbd;
}

void main() {
    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);

    if (any(greaterThanEqual(gid, imageSize(outTex)))) return;

    uvec4 outV;
    if (gid.x < uParams_l || gid.x+1 >= uParams_r ||
        gid.y < uParams_t || gid.y+1 >= uParams_b) {
        outV = uvec4(0u);
    } else {
        int x = gid.x & 1;
        int y = gid.y & 1;
        if (x == 0 && y == 0) {
            outV = oppositeColor(gid, 2);
        } else if (x == 1 && y == 1) {
            outV = oppositeColor(gid, 0);
        } else {
            outV = imageLoad(inTex, gid);
        }
    }
    imageStore(outTex, gid, outV);
}
    """.trimIndent()

    val PASS_3 = """
#version 310 es
precision highp float;
precision highp int;
precision highp uimage2D;
precision highp iimage2D;

layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D rgbdTex;
layout(rgba16ui, binding = 1) readonly  uniform uimage2D bayerTex;
layout(rgba16i,  binding = 2) readonly  uniform iimage2D edgeTex;
layout(rgba16ui, binding = 3) writeonly uniform uimage2D outTex;

layout(std140, binding = 4) uniform DemosaicPass3Params_UBO {
    int ubo_uParams_l;
    int ubo_uParams_t;
    int ubo_uParams_r;
    int ubo_uParams_b;
    int ubo_uParams_minThresholdEdge;
    int ubo_uParams_minThresholdVNG;
    int ubo_uParams_pad0;
    int ubo_uParams_pad1;
};

void shiftInts(out vec4 out_vec4, out float out_val, vec4 a, vec4 b, int offset) {
    if (offset == 0) {
        out_vec4 = vec4(a.x, a.y, a.z, a.w);
        out_val = b.x;
    } else if (offset == 1) {
        out_vec4 = vec4(a.y, a.z, a.w, b.x);
        out_val = b.y;
    } else if (offset == 2) {
        out_vec4 = vec4(a.z, a.w, b.x, b.y);
        out_val = b.z;
    } else {
        out_vec4 = vec4(a.w, b.x, b.y, b.z);
        out_val = b.w;
    }
}

void gradientSingleStep(out vec4 edgGrad0, out vec4 edgGrad1, ivec2 imgPos) {
    int offset = (imgPos.x - 2) & 3;
    int x = (imgPos.x - 2) / 4;
    int y = imgPos.y;

    vec4 edg_2_v4, edg_1_v4, edg0_v4, edg1_v4, edg2_v4;
    float edg_2_f, edg_1_f, edg0_f, edg1_f, edg2_f;

    vec4 a = vec4(imageLoad(edgeTex, ivec2(x, y-2)));
    vec4 b = vec4(imageLoad(edgeTex, ivec2(x+1, y-2)));
    shiftInts(edg_2_v4, edg_2_f, a, b, offset);

    a = vec4(imageLoad(edgeTex, ivec2(x, y-1)));
    b = vec4(imageLoad(edgeTex, ivec2(x+1, y-1)));
    shiftInts(edg_1_v4, edg_1_f, a, b, offset);

    a = vec4(imageLoad(edgeTex, ivec2(x, y)));
    b = vec4(imageLoad(edgeTex, ivec2(x+1, y)));
    shiftInts(edg0_v4, edg0_f, a, b, offset);

    a = vec4(imageLoad(edgeTex, ivec2(x, y+1)));
    b = vec4(imageLoad(edgeTex, ivec2(x+1, y+1)));
    shiftInts(edg1_v4, edg1_f, a, b, offset);

    a = vec4(imageLoad(edgeTex, ivec2(x, y+2)));
    b = vec4(imageLoad(edgeTex, ivec2(x+1, y+2)));
    shiftInts(edg2_v4, edg2_f, a, b, offset);

    float hGrad = abs(edg0_v4.y - edg0_v4.z) + abs(edg0_v4.z - edg0_v4.w) +
                 (abs(edg_1_v4.y - edg_1_v4.z) + abs(edg_1_v4.z - edg_1_v4.w) +
                  abs(edg1_v4.y - edg1_v4.z) + abs(edg1_v4.z - edg1_v4.w)) * 0.5;

    float vGrad = abs(edg_1_v4.z - edg0_v4.z) + abs(edg0_v4.z - edg1_v4.z) +
                 (abs(edg_1_v4.y - edg0_v4.y) + abs(edg0_v4.y - edg1_v4.y) +
                  abs(edg_1_v4.w - edg0_v4.w) + abs(edg0_v4.w - edg1_v4.w)) * 0.5;

    edgGrad0.x = (vGrad + abs(edg_2_v4.z - edg_1_v4.z) + (abs(edg_2_v4.y - edg_1_v4.y) + abs(edg_2_v4.w - edg_1_v4.w)) * 0.5) * 0.25;
    edgGrad0.z = (vGrad + abs(edg2_v4.z - edg1_v4.z) + (abs(edg2_v4.y - edg1_v4.y) + abs(edg2_v4.w - edg1_v4.w)) * 0.5) * 0.25;
    edgGrad0.w = (hGrad + abs(edg0_v4.x - edg0_v4.y) + (abs(edg_1_v4.x - edg_1_v4.y) + abs(edg1_v4.x - edg1_v4.y)) * 0.5) * 0.25;
    edgGrad0.y = (hGrad + abs(edg0_f - edg0_v4.w) + (abs(edg_1_f - edg_1_v4.w) + abs(edg1_f - edg1_v4.w)) * 0.5) * 0.25;

    float senwGrad = abs(edg_1_v4.y - edg0_v4.z) + abs(edg0_v4.z - edg1_v4.w) + abs(edg_1_v4.z - edg0_v4.w) + abs(edg0_v4.y - edg1_v4.z);
    float neswGrad = abs(edg_1_v4.w - edg0_v4.z) + abs(edg0_v4.z - edg1_v4.y) + abs(edg0_v4.y - edg_1_v4.z) + abs(edg0_v4.w - edg1_v4.z);

    edgGrad1.w = (senwGrad + abs(edg_1_v4.y - edg_2_v4.x) + (abs(edg_1_v4.z - edg_2_v4.y) + abs(edg0_v4.y - edg_1_v4.x)) * 0.5) * 0.25;
    edgGrad1.z = (neswGrad + abs(edg1_v4.y - edg2_v4.x) + (abs(edg0_v4.y - edg1_v4.x) + abs(edg1_v4.z - edg2_v4.y)) * 0.5) * 0.25;
    edgGrad1.y = (senwGrad + abs(edg1_v4.w - edg2_f) + (abs(edg0_v4.w - edg1_f) + abs(edg1_v4.z - edg2_v4.w)) * 0.5) * 0.25;
    edgGrad1.x = (neswGrad + abs(edg_1_v4.w - edg_2_f) + (abs(edg_1_v4.z - edg_2_v4.w) + abs(edg0_v4.w - edg_1_f)) * 0.5) * 0.25;
}

void gradientVNG_G(out vec4 bayGrad0, out vec4 bayGrad1, ivec2 imgPos) {
    int offset = (imgPos.x - 2) & 3;
    int x = (imgPos.x - 2) / 4;
    int y = imgPos.y;

    vec4 bayer_2_v4, bayer_1_v4, bayer0_v4, bayer1_v4, bayer2_v4;
    float bayer_2_f, bayer_1_f, bayer0_f, bayer1_f, bayer2_f;

    vec4 a = vec4(imageLoad(bayerTex, ivec2(x, y-2)));
    vec4 b = vec4(imageLoad(bayerTex, ivec2(x+1, y-2)));
    shiftInts(bayer_2_v4, bayer_2_f, a, b, offset);

    a = vec4(imageLoad(bayerTex, ivec2(x, y-1)));
    b = vec4(imageLoad(bayerTex, ivec2(x+1, y-1)));
    shiftInts(bayer_1_v4, bayer_1_f, a, b, offset);

    a = vec4(imageLoad(bayerTex, ivec2(x, y)));
    b = vec4(imageLoad(bayerTex, ivec2(x+1, y)));
    shiftInts(bayer0_v4, bayer0_f, a, b, offset);

    a = vec4(imageLoad(bayerTex, ivec2(x, y+1)));
    b = vec4(imageLoad(bayerTex, ivec2(x+1, y+1)));
    shiftInts(bayer1_v4, bayer1_f, a, b, offset);

    a = vec4(imageLoad(bayerTex, ivec2(x, y+2)));
    b = vec4(imageLoad(bayerTex, ivec2(x+1, y+2)));
    shiftInts(bayer2_v4, bayer2_f, a, b, offset);

    float vGrad = abs(bayer_1_v4.z - bayer1_v4.z) + (abs(bayer_1_v4.y - bayer1_v4.y) + abs(bayer_1_v4.w - bayer1_v4.w)) * 0.5;
    float hGrad = abs(bayer0_v4.w - bayer0_v4.y) + (abs(bayer_1_v4.w - bayer_1_v4.y) + abs(bayer1_v4.w - bayer1_v4.y)) * 0.5;

    bayGrad0.x = (vGrad + abs(bayer_2_v4.z - bayer0_v4.z) + (abs(bayer_2_v4.y - bayer0_v4.y) + abs(bayer_2_v4.w - bayer0_v4.w)) * 0.5) / 8.0;
    bayGrad0.z = (vGrad + abs(bayer2_v4.z - bayer0_v4.z) + (abs(bayer2_v4.y - bayer0_v4.y) + abs(bayer2_v4.w - bayer0_v4.w)) * 0.5) / 8.0;
    bayGrad0.w = (hGrad + abs(bayer0_v4.x - bayer0_v4.z) + (abs(bayer_1_v4.x - bayer_1_v4.z) + abs(bayer1_v4.x - bayer1_v4.z)) * 0.5) / 8.0;
    bayGrad0.y = (hGrad + abs(bayer0_f - bayer0_v4.z) + (abs(bayer_1_f - bayer_1_v4.z) + abs(bayer1_f - bayer1_v4.z)) * 0.5) / 8.0;

    bayGrad1.z = (abs(bayer2_v4.x - bayer0_v4.z) + abs(bayer1_v4.y - bayer_1_v4.w) + abs(bayer_1_v4.z - bayer1_v4.x) + abs(bayer2_v4.y - bayer0_v4.w)) / 8.0;
    bayGrad1.w = (abs(bayer_2_v4.x - bayer0_v4.z) + abs(bayer_1_v4.y - bayer1_v4.w) + abs(bayer1_v4.z - bayer_1_v4.x) + abs(bayer_2_v4.y - bayer0_v4.w)) / 8.0;
    bayGrad1.x = (abs(bayer_2_f - bayer0_v4.z) + abs(bayer_1_v4.w - bayer1_v4.y) + abs(bayer1_v4.z - bayer_1_f) + abs(bayer_2_v4.w - bayer0_v4.y)) / 8.0;
    bayGrad1.y = (abs(bayer2_f - bayer0_v4.z) + abs(bayer1_v4.w - bayer_1_v4.y) + abs(bayer_1_v4.z - bayer1_f) + abs(bayer2_v4.w - bayer0_v4.y)) / 8.0;
}

vec4 gradientMask(vec4 rgbd, ivec2 imgPos) {
    vec4 edgGrad0, edgGrad1;
    gradientSingleStep(edgGrad0, edgGrad1, imgPos);

    vec4 bayGrad0, bayGrad1;
    gradientVNG_G(bayGrad0, bayGrad1, imgPos);

    float maxGradient = max(max(edgGrad0.x, edgGrad0.y), max(edgGrad0.z, edgGrad0.w));
    maxGradient = max(maxGradient, max(max(edgGrad1.x, edgGrad1.y), max(edgGrad1.z, edgGrad1.w)));
    float minGradient = min(min(edgGrad0.x, edgGrad0.y), min(edgGrad0.z, edgGrad0.w));
    minGradient = min(minGradient, min(min(edgGrad1.x, edgGrad1.y), min(edgGrad1.z, edgGrad1.w)));

    float maxGradientVNG = max(max(bayGrad0.x, bayGrad0.y), max(bayGrad0.z, bayGrad0.w));
    maxGradientVNG = max(maxGradientVNG, max(max(bayGrad1.x, bayGrad1.y), max(bayGrad1.z, bayGrad1.w)));
    float minGradientVNG = min(min(bayGrad0.x, bayGrad0.y), min(bayGrad0.z, bayGrad0.w));
    minGradientVNG = min(minGradientVNG, min(min(bayGrad1.x, bayGrad1.y), min(bayGrad1.z, bayGrad1.w)));

    float dif = (maxGradient - minGradient) / 8.0;
    float dif1 = (maxGradient - minGradient) / 32.0;
    dif = dif - dif1;
    float threshold = 1.5 * minGradient + dif;
    threshold = max(threshold, float(ubo_uParams_minThresholdEdge)) + 8.0;
    float max2 = maxGradientVNG * 0.5;
    float min2 = minGradientVNG * 0.5;
    dif = max2 - min2;
    float thresholdVNG = 3.0 * min2 + dif + 8.0;
    thresholdVNG = max(thresholdVNG, float(ubo_uParams_minThresholdVNG));

    maxGradient = max(maxGradient, maxGradientVNG);

    int mask = 0;
    int count = 0;
    if ((edgGrad0.x < threshold) && (bayGrad0.x < thresholdVNG)) { mask |= (1 << 0); count++; }
    if ((edgGrad0.y < threshold) && (bayGrad0.y < thresholdVNG)) { mask |= (1 << 1); count++; }
    if ((edgGrad0.z < threshold) && (bayGrad0.z < thresholdVNG)) { mask |= (1 << 2); count++; }
    if ((edgGrad0.w < threshold) && (bayGrad0.w < thresholdVNG)) { mask |= (1 << 3); count++; }
    if ((edgGrad1.x < threshold) && (bayGrad1.x < thresholdVNG)) { mask |= (1 << 4); count++; }
    if ((edgGrad1.y < threshold) && (bayGrad1.y < thresholdVNG)) { mask |= (1 << 5); count++; }
    if ((edgGrad1.z < threshold) && (bayGrad1.z < thresholdVNG)) { mask |= (1 << 6); count++; }
    if ((edgGrad1.w < threshold) && (bayGrad1.w < thresholdVNG)) { mask |= (1 << 7); count++; }

    if (mask == 0) {

        if (edgGrad0.x < threshold) { mask |= (1 << 0); count++; }
        if (edgGrad0.y < threshold) { mask |= (1 << 1); count++; }
        if (edgGrad0.z < threshold) { mask |= (1 << 2); count++; }
        if (edgGrad0.w < threshold) { mask |= (1 << 3); count++; }
        if (edgGrad1.x < threshold) { mask |= (1 << 4); count++; }
        if (edgGrad1.y < threshold) { mask |= (1 << 5); count++; }
        if (edgGrad1.z < threshold) { mask |= (1 << 6); count++; }
        if (edgGrad1.w < threshold) { mask |= (1 << 7); count++; }

        if (count == 0) {
            mask = 0xff;
            count = 8;
        }
    }
    rgbd.w = float(mask | (count << 8));
    return rgbd;
}

vec4 redBlueAtGreen(ivec2 imgPos, vec4 rgbd) {
    float llGreen = rgbd.y;
    uint w = uint(clamp(rgbd.w, 0.0, 65535.0));
    float bc = 0.0, rc = 0.0, count = 0.0;

    ivec2 pos = imgPos;
    pos.y--;
    vec4 over = vec4(imageLoad(rgbdTex, pos));
    pos.y += 2;
    vec4 under = vec4(imageLoad(rgbdTex, pos));
    pos.x--;
    pos.y--;
    vec4 left = vec4(imageLoad(rgbdTex, pos));
    pos.x += 2;
    vec4 right = vec4(imageLoad(rgbdTex, pos));

    vec4 r4 = vec4(over.x, left.x, right.x, under.x);
    vec4 g4 = vec4(over.y, left.y, right.y, under.y);
    vec4 b4 = vec4(over.z, left.z, right.z, under.z);

    vec4 dif4 = vec4(1.0) + abs(vec4(rgbd.y) - g4) * 0.25;

    float greenScale = g4[3] * dif4[0] + g4[0] * dif4[3];
    float blueScale = b4[3] * dif4[0] + b4[0] * dif4[3];
    float redScale = r4[3] * dif4[0] + r4[0] * dif4[3];
    if ((w & (1u << 0)) != 0u && greenScale != 0.0) {
        bc += llGreen * blueScale / greenScale;
        rc += llGreen * redScale / greenScale;
        count += 1.0;
    }

    if ((w & (1u << 2)) != 0u && greenScale != 0.0) {
        bc += llGreen * blueScale / greenScale;
        rc += llGreen * redScale / greenScale;
        count += 1.0;
    }

    greenScale = g4[1] * dif4[2] + g4[2] * dif4[1];
    blueScale = b4[1] * dif4[2] + b4[2] * dif4[1];
    redScale = r4[1] * dif4[2] + r4[2] * dif4[1];
    if ((w & (1u << 1)) != 0u && greenScale != 0.0) {
        bc += llGreen * blueScale / greenScale;
        rc += llGreen * redScale / greenScale;
        count += 1.0;
    }

    if ((w & (1u << 3)) != 0u && greenScale != 0.0) {
        bc += llGreen * blueScale / greenScale;
        rc += llGreen * redScale / greenScale;
        count += 1.0;
    }

    greenScale = g4[2] * dif4[0] + g4[0] * dif4[2];
    blueScale = b4[2] * dif4[0] + b4[0] * dif4[2];
    redScale = r4[2] * dif4[0] + r4[0] * dif4[2];
    if ((w & (1u << 4)) != 0u && greenScale != 0.0) {
        bc += llGreen * blueScale / greenScale;
        rc += llGreen * redScale / greenScale;
        count += 1.0;
    }

    greenScale = g4[2] * dif4[3] + g4[3] * dif4[2];
    blueScale = b4[2] * dif4[3] + b4[3] * dif4[2];
    redScale = r4[2] * dif4[3] + r4[3] * dif4[2];
    if ((w & (1u << 5)) != 0u && greenScale != 0.0) {
        bc += llGreen * blueScale / greenScale;
        rc += llGreen * redScale / greenScale;
        count += 1.0;
    }

    greenScale = g4[1] * dif4[0] + g4[0] * dif4[1];
    blueScale = b4[1] * dif4[0] + b4[0] * dif4[1];
    redScale = r4[1] * dif4[0] + r4[0] * dif4[1];
    if ((w & (1u << 7)) != 0u && greenScale != 0.0) {
        bc += llGreen * blueScale / greenScale;
        rc += llGreen * redScale / greenScale;
        count += 1.0;
    }

    greenScale = g4[1] * dif4[3] + g4[3] * dif4[1];
    blueScale = b4[1] * dif4[3] + b4[3] * dif4[1];
    redScale = r4[1] * dif4[3] + r4[3] * dif4[1];
    if ((w & (1u << 6)) != 0u && greenScale != 0.0) {
        bc += llGreen * blueScale / greenScale;
        rc += llGreen * redScale / greenScale;
        count += 1.0;
    }

    float redVal = (count > 0.0) ? rc / count : (r4[0] + r4[1] + r4[2] + r4[3]) * 0.25;
    float blueVal = (count > 0.0) ? bc / count : (b4[0] + b4[1] + b4[2] + b4[3]) * 0.25;

    rgbd.x = min(redVal, 65534.0);
    rgbd.z = min(blueVal, 65534.0);
    return rgbd;
}

vec4 rgb2ycc(vec4 rgbx) {
    float ly = rgbx.x + rgbx.y * 2.0 + rgbx.z + 1.0;
    vec2 c = vec2(rgbx.x - rgbx.y, rgbx.z - rgbx.y);
    c *= 32768.0 / ly;
    vec4 res;
    res.y = (c.x >= 0.0) ? min(32767.0, c.x) : min(65535.0, 65536.0 + c.x);
    res.z = (c.y >= 0.0) ? min(32767.0, c.y) : min(65535.0, 65536.0 + c.y);
    res.x = 0.25 * (ly - 1.0);
    res.w = rgbx.w;
    return res;
}

uvec4 rgb2ycc_u16(vec4 rgbx) {
    vec4 ycc = rgb2ycc(rgbx);
    return uvec4(
        uint(ycc.x),
        uint(ycc.y),
        uint(ycc.z),
        uint(ycc.w)
    );
}

void main() {
    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);

    if (any(greaterThanEqual(gid, imageSize(outTex)))) return;

    uvec4 outV = uvec4(0u);
    if (gid.x >= ubo_uParams_l && gid.x < ubo_uParams_r &&
        gid.y >= ubo_uParams_t && gid.y < ubo_uParams_b) {
        int x = gid.x & 1;
        int y = gid.y & 1;
        vec4 rgbDPix = vec4(imageLoad(rgbdTex, gid));
        if (x == 1 && y == 0) {
            rgbDPix = gradientMask(rgbDPix, gid);
            rgbDPix = redBlueAtGreen(gid, rgbDPix);
            outV = rgb2ycc_u16(rgbDPix);
        } else if (x == 0 && y == 1) {
            rgbDPix = gradientMask(rgbDPix, gid);
            rgbDPix = redBlueAtGreen(gid, rgbDPix);
            outV = rgb2ycc_u16(rgbDPix);
        } else if (x == 0 && y == 0) {
            outV = rgb2ycc_u16(rgbDPix);
        } else if (x == 1 && y == 1){
            outV = rgb2ycc_u16(rgbDPix);
        }
    }
    imageStore(outTex, gid, outV);
}
    """.trimIndent()

    val NEUTRAL = """
#version 310 es
precision highp float;
precision highp int;
precision highp image2D;
precision highp uimage2D;

layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16f,  binding = 0) readonly  uniform image2D  inTex;
layout(rgba16ui, binding = 1) writeonly uniform uimage2D outTex;
layout(std140, binding = 2) uniform DemosaicPassNeutralParams_UBO {
    int uParams_l;
    int uParams_t;
    int uParams_r;
    int uParams_b;
    int uParams_rNeutral;
    int uParams_gNeutral;
    int uParams_bNeutral;
    int uParams_clampAllowZero;
    int uParams_gainScaleBits;
    int pad1;
    int pad2;
    int pad3;
};

uint shiftRightRoundUint(float v, int shiftBits) {
    int divisor = 1 << shiftBits;
    float roundUp = float(divisor + 1) * 0.5;
    return uint(clamp((v + roundUp) / float(divisor), 0.0, 65535.0));
}

void main() {
    ivec2 coord = ivec2(gl_GlobalInvocationID.xy);

    if (any(greaterThanEqual(coord, imageSize(outTex)))) return;

    if (coord.x < uParams_l || coord.x >= uParams_r ||
        coord.y < uParams_t || coord.y >= uParams_b) {
        return;
    }

    vec4 pix4 = imageLoad(inTex, coord);
    vec4 pix4Scaled = pix4 * 65535.0;

    vec4 mul4;
    if ((coord.y & 1) == 0) {
        mul4 = vec4(float(uParams_rNeutral), float(uParams_gNeutral),
                    float(uParams_rNeutral), float(uParams_gNeutral));
    } else {
        mul4 = vec4(float(uParams_gNeutral), float(uParams_bNeutral),
                    float(uParams_gNeutral), float(uParams_bNeutral));
    }

    vec4 res = pix4Scaled * mul4;

    uvec4 uout = uvec4(
        shiftRightRoundUint(res.r, uParams_gainScaleBits),
        shiftRightRoundUint(res.g, uParams_gainScaleBits),
        shiftRightRoundUint(res.b, uParams_gainScaleBits),
        shiftRightRoundUint(res.a, uParams_gainScaleBits));
    imageStore(outTex, coord, uout);
}
    """.trimIndent()

    val YUV_TO_RGB = """
#version 310 es
precision highp float;
precision highp int;
precision highp uimage2D;
precision highp image2D;
layout(local_size_x = 16, local_size_y = 16) in;

layout(rgba16ui, binding = 0) readonly  uniform uimage2D yccdTex;
layout(rgba16f,  binding = 1) writeonly uniform image2D  outTex;

layout(std140, binding = 2) uniform DemosaicYuvToRgbParams_UBO {
    int uParams_l;
    int uParams_t;
    int uParams_r;
    int uParams_b;
    float uParams_gain;
    float uPad0;
    float uPad1;
    float uPad2;
};

int convert2compliment(int x) {
    return ((x & (1 << 15)) != 0) ? (x | ~((1 << 16) - 1)) : x;
}

vec4 ycc2rgb(vec4 ycc, float gain) {
    vec4 res;
    float ly = clamp(gain * ycc.r, 0.0, 65534.0);
    int lr = int(round(ycc.g));
    int lb = int(round(ycc.b));
    lr = convert2compliment(lr);
    lb = convert2compliment(lb);
    res.r = clamp(ly * 3.0 * float(lr) / 32768.0 - ly * float(lb) / 32768.0 + ly, 0.0, 65535.0);
    res.b = clamp(ly * 3.0 * float(lb) / 32768.0 - ly * float(lr) / 32768.0 + ly, 0.0, 65535.0);
    res.g = clamp((4.0 * ly - (res.r + res.b)) / 2.0, 0.0, 65535.0);
    res.a = ycc.a;
    return res;
}

void main() {
    ivec2 gid = ivec2(gl_GlobalInvocationID.xy);
    ivec2 srcPos = gid + ivec2(uParams_l, uParams_t);

    if (gid.x >= (uParams_r - uParams_l) || gid.y >= (uParams_b - uParams_t)) return;

    uvec4 uYcc = imageLoad(yccdTex, srcPos);
    vec4 yccdPix = vec4(float(uYcc.r), float(uYcc.g), float(uYcc.b), float(uYcc.a));

    vec4 result = ycc2rgb(yccdPix, uParams_gain);
    vec4 outF = vec4(
        clamp(result.r, 0.0, 65535.0),
        clamp(result.g, 0.0, 65535.0),
        clamp(result.b, 0.0, 65535.0),
        clamp(result.a, 0.0, 65535.0)
    ) / 65535.0;
    imageStore(outTex, gid, outF);
}
    """.trimIndent()

    /** Adapts PhotonCamera's R16UI RAW domain to the reference's packed RGBA16F Bayer input. */
    val PREPARE_PACKED_RAW = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp image2D;

        layout(local_size_x = 16, local_size_y = 16) in;

        layout(binding = 0) uniform highp usampler2D uRawTexture;
        layout(binding = 1) uniform highp sampler2D uLensShadingMap;
        layout(rgba16f, binding = 0) writeonly uniform image2D outTex;

        uniform ivec2 uImageSize;
        uniform ivec2 uFullImageSize;
        uniform ivec2 uGlobalOrigin;
        uniform ivec2 uPackedSize;
        uniform ivec2 uSourceOffset;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        uniform vec4 uCalculationGains;
        uniform float uHighlightClipThreshold;
        uniform float uHighlightCeiling;
        uniform bool uHighlightReconstructionEnabled;
        uniform bool uLensShadingEnabled;
        uniform bool uLensShadingUsesDngGrid;
        uniform vec2 uLensShadingMapSize;
        uniform vec4 uLensShadingGrid;
        uniform vec2 uLensShadingBoundsOrigin;
        uniform vec2 uLensShadingBoundsSize;

        int colorAt(int pattern, ivec2 p) {
            int index = (p.x & 1) + ((p.y & 1) << 1);
            if (pattern == 0) return index == 0 ? 0 : (index == 3 ? 2 : 1);
            if (pattern == 1) return index == 1 ? 0 : (index == 2 ? 2 : 1);
            if (pattern == 2) return index == 2 ? 0 : (index == 1 ? 2 : 1);
            return index == 3 ? 0 : (index == 0 ? 2 : 1);
        }

        int channelAt(int pattern, ivec2 p) {
            int index = (p.x & 1) + ((p.y & 1) << 1);
            if (pattern == 0) return index;
            if (pattern == 1) {
                if (index == 0) return 1;
                if (index == 1) return 0;
                if (index == 2) return 3;
                return 2;
            }
            if (pattern == 2) {
                if (index == 0) return 2;
                if (index == 1) return 3;
                if (index == 2) return 0;
                return 1;
            }
            if (index == 0) return 3;
            if (index == 1) return 2;
            if (index == 2) return 1;
            return 0;
        }

        int mirrorIndex(int value, int size) {
            if (size <= 1) return 0;
            int period = 2 * (size - 1);
            int wrapped = value % period;
            if (wrapped < 0) wrapped += period;
            return wrapped < size ? wrapped : period - wrapped;
        }

        ivec2 safeCoord(ivec2 p) {
            return ivec2(
                mirrorIndex(p.x, uImageSize.x),
                mirrorIndex(p.y, uImageSize.y)
            );
        }

        int lensShadingChannelAt(int channel, ivec2 p) {
            if (uLensShadingUsesDngGrid || channel == 0 || channel == 3) return channel;
            return (p.y & 1) == 0 ? 1 : 2;
        }

        float lensShadingGainAt(int channel, ivec2 p) {
            if (!uLensShadingEnabled) return 1.0;
            ivec2 globalPosition = p + uGlobalOrigin;
            vec2 norm = (vec2(globalPosition) + vec2(0.5)) / vec2(uFullImageSize);
            vec2 uv = norm;
            if (uLensShadingUsesDngGrid) {
                vec2 boundsSize = max(uLensShadingBoundsSize, vec2(1.0));
                norm = (vec2(globalPosition) + vec2(0.5) - uLensShadingBoundsOrigin) / boundsSize;
                vec2 mapIndex = (norm - uLensShadingGrid.xy) /
                    max(uLensShadingGrid.zw, vec2(1e-8));
                uv = (mapIndex + vec2(0.5)) / max(uLensShadingMapSize, vec2(1.0));
            }
            vec4 gains = texture(uLensShadingMap, uv);
            return max(gains[lensShadingChannelAt(channel, p)], 0.0);
        }

        float sensorAt(ivec2 p, int channel) {
            ivec2 q = safeCoord(p);
            float raw = float(texelFetch(uRawTexture, q, 0).r);
            float black = uBlackLevel[channel];
            return max(raw - black, 0.0) / max(uWhiteLevel - black, 1.0);
        }

        float calculationAt(ivec2 p, int channel) {
            ivec2 q = safeCoord(p);
            float value = sensorAt(q, channel) * lensShadingGainAt(channel, q) *
                max(uCalculationGains[channel], 1e-6);
            return clamp(value, 0.0, uHighlightCeiling);
        }

        float opposedEstimate(ivec2 p, int ownColor, float fallback) {
            vec3 sum = vec3(0.0);
            vec3 count = vec3(0.0);
            for (int dy = -1; dy <= 1; dy++) {
                for (int dx = -1; dx <= 1; dx++) {
                    ivec2 q = safeCoord(p + ivec2(dx, dy));
                    int channel = channelAt(uCfaPattern, q);
                    int color = colorAt(uCfaPattern, q);
                    sum[color] += calculationAt(q, channel);
                    count[color] += 1.0;
                }
            }
            const float power = 3.0;
            vec3 roots = pow(max(sum / max(count, vec3(1.0)), vec3(0.0)),
                vec3(1.0 / power));
            float opposed = ownColor == 0 ? 0.5 * (roots.g + roots.b) :
                (ownColor == 1 ? 0.5 * (roots.r + roots.b) : 0.5 * (roots.r + roots.g));
            return max(pow(max(opposed, 0.0), power), fallback);
        }

        float preparedSample(ivec2 workPosition) {
            ivec2 source = safeCoord(workPosition - uSourceOffset);
            int channel = channelAt(uCfaPattern, source);
            int color = colorAt(uCfaPattern, source);
            float sensor = sensorAt(source, channel);
            float value = calculationAt(source, channel);
            if (uHighlightReconstructionEnabled) {
                float clipMask = smoothstep(uHighlightClipThreshold, 1.0, sensor);
                if (clipMask > 0.0) {
                    value = min(mix(value, opposedEstimate(source, color, value), clipMask),
                        uHighlightCeiling);
                }
            }
            return value;
        }

        void main() {
            ivec2 packed = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(packed, uPackedSize))) return;
            int x = packed.x * 4;
            vec4 values = vec4(
                preparedSample(ivec2(x + 0, packed.y)),
                preparedSample(ivec2(x + 1, packed.y)),
                preparedSample(ivec2(x + 2, packed.y)),
                preparedSample(ivec2(x + 3, packed.y))
            );
            imageStore(outTex, packed, values);
        }
    """.trimIndent()

    /** Restores the un-white-balanced camera-RGB contract expected by the RAW color pipeline. */
    val COMPOSITE_CAMERA_RGB = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp image2D;

        layout(local_size_x = 16, local_size_y = 16) in;

        layout(rgba16f, binding = 0) readonly uniform image2D vgnTex;
        layout(rgba16f, binding = 1) writeonly uniform image2D outTex;

        uniform ivec2 uImageSize;
        uniform vec3 uCalculationGains;

        void main() {
            ivec2 outputPos = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(outputPos, uImageSize))) return;
            vec3 rgb = imageLoad(vgnTex, outputPos).rgb;
            rgb /= max(uCalculationGains, vec3(1e-6));
            imageStore(outTex, outputPos, vec4(max(rgb, vec3(0.0)), 1.0));
        }
    """.trimIndent()

    const val PROGRAM_PREPARE = 0
    const val PROGRAM_NEUTRAL = 1
    const val PROGRAM_0A1 = 2
    const val PROGRAM_0A2 = 3
    const val PROGRAM_0B = 4
    const val PROGRAM_0C = 5
    const val PROGRAM_1 = 6
    const val PROGRAM_2 = 7
    const val PROGRAM_3 = 8
    const val PROGRAM_COLOR_NOISE_1 = 9
    const val PROGRAM_COLOR_NOISE_2 = 10
    const val PROGRAM_COLOR_NOISE_3 = 11
    const val PROGRAM_IIR2_1_INIT = 12
    const val PROGRAM_IIR2_1 = 13
    const val PROGRAM_COLOR_NOISE_3_YCCD = 14
    const val PROGRAM_CALCULATE_COLOR_NOISE_ERROR = 15
    const val PROGRAM_IIR2_2 = 16
    const val PROGRAM_COLOR_NOISE_FILTER = 17
    const val PROGRAM_IIR2_3 = 18
    const val PROGRAM_YUV_TO_RGB = 19
    const val PROGRAM_COMPOSITE = 20

    val PROGRAM_SOURCES = arrayOf(
        "prepare_packed_raw" to PREPARE_PACKED_RAW,
        "neutral" to NEUTRAL,
        "pass_0a1" to PASS_0A1,
        "pass_0a2" to PASS_0A2,
        "pass_0b" to PASS_0B,
        "pass_0c" to PASS_0C,
        "pass_1" to PASS_1,
        "pass_2" to PASS_2,
        "pass_3" to PASS_3,
        "color_noise_1" to COLOR_NOISE_PASS_1,
        "color_noise_2" to COLOR_NOISE_PASS_2,
        "color_noise_3" to COLOR_NOISE_PASS_3,
        "iir2_1_init" to IIR2_PASS_1_INIT,
        "iir2_1" to IIR2_PASS_1,
        "color_noise_3_yccd" to COLOR_NOISE_PASS_3_YCCD,
        "calculate_color_noise_error" to CALCULATE_COLOR_NOISE_ERROR,
        "iir2_2" to IIR2_PASS_2,
        "color_noise_filter" to COLOR_NOISE_FILTER,
        "iir2_3" to IIR2_PASS_3,
        "yuv_to_rgb" to YUV_TO_RGB,
        "composite_camera_rgb" to COMPOSITE_CAMERA_RGB,
    )

}
