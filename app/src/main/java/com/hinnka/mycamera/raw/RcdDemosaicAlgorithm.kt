package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.utils.PLog

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
        layout (local_size_x = 8, local_size_y = 8) in;

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
        layout (local_size_x = 8, local_size_y = 8) in;

        layout(std430, binding = 0) buffer CFA_Buf    { float cfa[]; };
        layout(std430, binding = 4) buffer VH_Dir_Buf { float VH_dir[]; };

        uniform ivec2 uImageSize;

        #define epssq 1e-10f

        // 8x8 output tile plus a four-pixel halo on every edge.
        shared float sh_buffer[256]; // 16 * 16

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
            int xlsz = 8;
            int ylsz = 8;
            int xlid = int(gl_LocalInvocationID.x);
            int ylid = int(gl_LocalInvocationID.y);
            int xgid = int(gl_WorkGroupID.x);
            int ygid = int(gl_WorkGroupID.y);
            int l = ylid * xlsz + xlid;
            int lsz = xlsz * ylsz; // 64
            int stride = 16;
            int maxbuf = 256;
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
        layout (local_size_x = 8, local_size_y = 8) in;

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
        layout (local_size_x = 8, local_size_y = 8) in;

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
        layout (local_size_x = 8, local_size_y = 8) in;

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
        layout (local_size_x = 8, local_size_y = 8) in;

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
        layout (local_size_x = 8, local_size_y = 8) in;

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
        layout (local_size_x = 8, local_size_y = 8) in;

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
        layout (local_size_x = 8, local_size_y = 8) in;

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
}

/** Complete classic Ratio Corrected Demosaic algorithm and its inseparable compute stages. */
internal class RcdDemosaicAlgorithm {
    data class Input(
        val rawTextureId: Int,
        val outputTextureId: Int,
        val width: Int,
        val height: Int,
        val cfaPattern: Int,
        val blackLevel: FloatArray,
        val whiteLevel: Float,
        val metadataWhiteBalanceGains: FloatArray,
        val calculationWhiteBalanceGains: FloatArray,
        val globalOriginX: Int,
        val globalOriginY: Int,
        val lensShadingDescription: String,
        val bindLensShading: (programId: Int, globalOriginX: Int, globalOriginY: Int) -> Unit,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    private var populateProgram = 0
    private var step1Program = 0
    private var step2Program = 0
    private var step3Program = 0
    private var step40Program = 0
    private var step41Program = 0
    private var step42Program = 0
    private var step43Program = 0
    private var writeOutputProgram = 0

    fun initialize(): Boolean {
        if (populateProgram == 0) {
            populateProgram = RawGlesProgram.compileCompute(RcdShaders.POPULATE, "RCD_POPULATE")
        }
        if (step1Program == 0) {
            step1Program = RawGlesProgram.compileCompute(RcdShaders.STEP_1, "RCD_STEP_1")
        }
        if (step2Program == 0) {
            step2Program = RawGlesProgram.compileCompute(RcdShaders.STEP_2, "RCD_STEP_2")
        }
        if (step3Program == 0) {
            step3Program = RawGlesProgram.compileCompute(RcdShaders.STEP_3, "RCD_STEP_3")
        }
        if (step40Program == 0) {
            step40Program = RawGlesProgram.compileCompute(RcdShaders.STEP_4_0, "RCD_STEP_4_0")
        }
        if (step41Program == 0) {
            step41Program = RawGlesProgram.compileCompute(RcdShaders.STEP_4_1, "RCD_STEP_4_1")
        }
        if (step42Program == 0) {
            step42Program = RawGlesProgram.compileCompute(RcdShaders.STEP_4_2, "RCD_STEP_4_2")
        }
        if (step43Program == 0) {
            step43Program = RawGlesProgram.compileCompute(RcdShaders.STEP_4_3, "RCD_STEP_4_3")
        }
        if (writeOutputProgram == 0) {
            writeOutputProgram = RawGlesProgram.compileCompute(
                RcdShaders.WRITE_OUTPUT,
                "RCD_WRITE_OUTPUT",
            )
        }
        return allPrograms().all { it != 0 }
    }

    fun execute(input: Input): Output? {
        if (!initialize()) return null
        require(input.blackLevel.size >= 4) { "RCD requires four black levels" }
        require(input.calculationWhiteBalanceGains.size >= 4) {
            "RCD requires four calculation white-balance gains"
        }

        val buffers = IntArray(BUFFER_COUNT)
        android.opengl.GLES31.glGenBuffers(buffers.size, buffers, 0)
        val bufferSize = input.width * input.height * 4 + SSBO_EXTRA_MARGIN_BYTES
        try {
            buffers.forEachIndexed { binding, bufferId ->
                android.opengl.GLES31.glBindBuffer(
                    android.opengl.GLES31.GL_SHADER_STORAGE_BUFFER,
                    bufferId,
                )
                android.opengl.GLES31.glBufferData(
                    android.opengl.GLES31.GL_SHADER_STORAGE_BUFFER,
                    bufferSize,
                    null,
                    android.opengl.GLES31.GL_DYNAMIC_DRAW,
                )
                if (binding < BUFFER_COUNT - 1) {
                    android.opengl.GLES31.glBindBufferBase(
                        android.opengl.GLES31.GL_SHADER_STORAGE_BUFFER,
                        binding,
                        bufferId,
                    )
                }
            }
            android.opengl.GLES31.glBindBuffer(android.opengl.GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            runPopulate(input)
            runStep(step1Program, "Step1", input)
            runStep(step2Program, "Step2", input, halfWidth = true, includeCfaPattern = true)
            runStep(step3Program, "Step3", input, halfWidth = true, includeCfaPattern = true)
            runStep(step40Program, "Step4_0", input, halfWidth = true)

            android.opengl.GLES31.glBindBufferBase(
                android.opengl.GLES31.GL_SHADER_STORAGE_BUFFER,
                PQ_WRITE_BINDING,
                buffers.last(),
            )
            runStep(step41Program, "Step4_1", input, halfWidth = true, includeCfaPattern = true)
            android.opengl.GLES31.glBindBufferBase(
                android.opengl.GLES31.GL_SHADER_STORAGE_BUFFER,
                PQ_READ_BINDING,
                buffers.last(),
            )
            runStep(step42Program, "Step4_2", input, halfWidth = true, includeCfaPattern = true)
            android.opengl.GLES31.glBindBufferBase(
                android.opengl.GLES31.GL_SHADER_STORAGE_BUFFER,
                VH_DIRECTION_BINDING,
                buffers[VH_DIRECTION_BINDING],
            )
            runStep(step43Program, "Step4_3", input, halfWidth = true, includeCfaPattern = true)
            runWriteOutput(input)
            android.opengl.GLES30.glFinish()
            return Output(input.outputTextureId, input.width, input.height)
        } finally {
            android.opengl.GLES31.glBindImageTexture(
                OUTPUT_IMAGE_UNIT,
                0,
                0,
                false,
                0,
                android.opengl.GLES31.GL_WRITE_ONLY,
                android.opengl.GLES30.GL_RGBA16F,
            )
            android.opengl.GLES31.glDeleteBuffers(buffers.size, buffers, 0)
            repeat(BUFFER_COUNT - 1) { binding ->
                android.opengl.GLES31.glBindBufferBase(
                    android.opengl.GLES31.GL_SHADER_STORAGE_BUFFER,
                    binding,
                    0,
                )
            }
        }
    }

    fun release() {
        allPrograms().forEach { program ->
            if (program != 0) android.opengl.GLES31.glDeleteProgram(program)
        }
        populateProgram = 0
        step1Program = 0
        step2Program = 0
        step3Program = 0
        step40Program = 0
        step41Program = 0
        step42Program = 0
        step43Program = 0
        writeOutputProgram = 0
    }

    private fun runPopulate(input: Input) {
        GLES31.glUseProgram(populateProgram)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RAW_TEXTURE_UNIT)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, input.rawTextureId)
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(populateProgram, "uRawTexture"),
            RAW_TEXTURE_UNIT,
        )
        input.bindLensShading(populateProgram, input.globalOriginX, input.globalOriginY)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(populateProgram, "uImageSize"),
            input.width,
            input.height,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(populateProgram, "uCfaPattern"),
            input.cfaPattern,
        )
        GLES31.glUniform4fv(
            GLES31.glGetUniformLocation(populateProgram, "uBlackLevel"),
            1,
            input.blackLevel,
            0,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(populateProgram, "uWhiteLevel"),
            input.whiteLevel,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(populateProgram, "uHighlightClipThreshold"),
            RcdShaders.HIGHLIGHT_RECONSTRUCTION_THRESHOLD,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(populateProgram, "uHighlightCeiling"),
            RcdShaders.HIGHLIGHT_RECONSTRUCTION_CEILING,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(populateProgram, "uHighlightReconstructionEnabled"),
            1,
        )
        GLES31.glUniform4fv(
            GLES31.glGetUniformLocation(populateProgram, "uWhiteBalanceGains"),
            1,
            input.calculationWhiteBalanceGains,
            0,
        )
        PLog.d(
            TAG,
            "populate: cfa=${input.cfaPattern} black=${input.blackLevel.contentToString()} " +
                "white=${input.whiteLevel} " +
                "metadataWb=${input.metadataWhiteBalanceGains.contentToString()} " +
                "calculationWb=${input.calculationWhiteBalanceGains.contentToString()} " +
                "lsc=${input.lensShadingDescription}",
        )
        dispatch(input.width, input.height, "Populate")
    }

    private fun runStep(
        program: Int,
        label: String,
        input: Input,
        halfWidth: Boolean = false,
        includeCfaPattern: Boolean = false,
    ) {
        GLES31.glUseProgram(program)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(program, "uImageSize"),
            input.width,
            input.height,
        )
        if (includeCfaPattern) {
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(program, "uCfaPattern"),
                input.cfaPattern,
            )
        }
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(if (halfWidth) input.width / 2 else input.width),
            GlesComputeWorkGroup.imageGroupCount(input.height),
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        RawGlesProgram.logErrors("$TAG $label")
    }

    private fun runWriteOutput(input: Input) {
        GLES31.glUseProgram(writeOutputProgram)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(writeOutputProgram, "uImageSize"),
            input.width,
            input.height,
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(writeOutputProgram, "uCfaPattern"),
            input.cfaPattern,
        )
        GLES31.glUniform3f(
            GLES31.glGetUniformLocation(writeOutputProgram, "uCalculationGains"),
            input.calculationWhiteBalanceGains[0],
            1f,
            input.calculationWhiteBalanceGains[3],
        )
        GLES31.glBindImageTexture(
            OUTPUT_IMAGE_UNIT,
            input.outputTextureId,
            0,
            false,
            0,
            GLES31.GL_WRITE_ONLY,
            GLES30.GL_RGBA16F,
        )
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(input.width),
            GlesComputeWorkGroup.imageGroupCount(input.height),
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_ALL_BARRIER_BITS)
        RawGlesProgram.logErrors("$TAG WriteOutput")
    }

    private fun dispatch(width: Int, height: Int, label: String) {
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(width),
            GlesComputeWorkGroup.imageGroupCount(height),
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        RawGlesProgram.logErrors("$TAG $label")
    }

    private fun allPrograms(): IntArray = intArrayOf(
        populateProgram,
        step1Program,
        step2Program,
        step3Program,
        step40Program,
        step41Program,
        step42Program,
        step43Program,
        writeOutputProgram,
    )

    private companion object {
        const val TAG = "RcdDemosaic"
        const val BUFFER_COUNT = 9
        const val SSBO_EXTRA_MARGIN_BYTES = 1024 * 1024
        const val RAW_TEXTURE_UNIT = 0
        const val OUTPUT_IMAGE_UNIT = 0
        const val PQ_WRITE_BINDING = 5
        const val PQ_READ_BINDING = 4
        const val VH_DIRECTION_BINDING = 4
    }
}
