package com.hinnka.mycamera.raw

/**
 * DHT (Demosaicing by Heterogeneity-Adaptive Thresholding) 多 Pass 着色器
 *
 * 基于 Anton Petrusevich 的 LibRaw DHT 实现，分解为 GPU 多 pass 渲染。
 *
 * Pass 流程:
 *   Pass 0 (Init):       RAW Bayer → nraw (RGBA16F, rgb=已知颜色, 其余=0.5)
 *   Pass 1 (HV Dir):     nraw → ndir (方向标记, HV)
 *   Pass 2 (HV Refine):  ndir 精炼 (需运行 3 次: refine_odd, refine_even, refine_ihv)
 *   Pass 3 (Green):      根据方向插值绿色
 *   Pass 4 (Diag Dir):   计算对角线方向 + refine_idiag
 *   Pass 5 (RB Diag):    对角线方向插值 R/B
 *   Pass 6 (RB HV+CCM):  HV方向插值 R/B, 高光保护, CCM
 *
 * 纹理格式:
 *   nraw: RGBA16F - R=Red, G=Green, B=Blue, A=unused
 *   ndir: R8UI   - 使用位标记编码方向信息
 *
 * 方向标记位 (与 C++ 源码一致):
 *   HVSH = 1, HOR = 2, VER = 4
 *   HORSH = HOR|HVSH = 3, VERSH = VER|HVSH = 5
 *   DIASH = 8, LURD = 16, RULD = 32
 *   LURDSH = LURD|DIASH = 24, RULDSH = RULD|DIASH = 40
 *   HOT = 64
 */
object DhtShaders {

    // ==================== 共用 GLSL 片段 ====================

    private const val DHT_COMMON_HEADER = """
#version 300 es
precision highp float;
precision highp int;
const int HVSH  = 1;
const int HOR   = 2;
const int VER   = 4;
const int HORSH = 3;
const int VERSH = 5;
const int DIASH = 8;
const int LURD  = 16;
const int RULD  = 32;
const int LURDSH = 24;
const int RULDSH = 40;
const int HOT   = 64;
const float Tg  = 256.0;
const float T   = 1.4;
const float Thot = 64.0;
float calc_dist(float c1, float c2) {
    return c1 > c2 ? c1 / c2 : c2 / c1;
}
float scale_over(float ec, float base) {
    float s = base * 0.4;
    float o = ec - base;
    return base + sqrt(s * (o + s)) - s;
}
float scale_under(float ec, float base) {
    float s = base * 0.6;
    float o = base - ec;
    return base - sqrt(s * (o + s)) + s;
}
"""

    // CFA 工具函数 (所有 pass 复用)
    private const val DHT_CFA_UTILS = """
uniform vec2 uImageSize;
uniform int uCfaPattern;
int getChannelIndex(ivec2 coord) {
    int x = coord.x & 1;
    int y = coord.y & 1;
    int pos = y * 2 + x;
    if (uCfaPattern == 0) return pos;
    else if (uCfaPattern == 1) {
        if (pos == 0) return 1; else if (pos == 1) return 0;
        else if (pos == 2) return 3; else return 2;
    } else if (uCfaPattern == 2) {
        if (pos == 0) return 2; else if (pos == 1) return 3;
        else if (pos == 2) return 0; else return 1;
    } else {
        if (pos == 0) return 3; else if (pos == 1) return 2;
        else if (pos == 2) return 1; else return 0;
    }
}
int getChannelType(ivec2 coord) {
    int idx = getChannelIndex(coord);
    if (idx == 0) return 0;
    else if (idx == 3) return 2;
    else return 1;
}
int getKc(ivec2 coord) {
    int idx = getChannelIndex(coord);
    if (idx == 0) return 0;
    else if (idx == 3) return 2;
    else if (idx == 1) return 0;
    else return 2;
}
int getJs(ivec2 coord) {
    int idx0 = getChannelIndex(ivec2(0, coord.y));
    return idx0 & 1;
}
bool isNonGreen(ivec2 coord) {
    int t = getChannelType(coord);
    return t != 1;
}
"""

    // ==================== Pass 0: Init ====================
    // RAW Bayer → nraw (RGBA16F)
    // R通道存Red, G通道存Green, B通道存Blue
    // 未知通道设为 EPS 防除零 (C++ 源码用 0.5 是因为 uint16 空间, 归一化空间需极小值)
    private const val EPS = "1e-4" // 归一化空间中的防除零 epsilon

    val DHT_PASS0_INIT = """
        $DHT_COMMON_HEADER

        precision highp usampler2D;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform usampler2D uRawTexture;
        $DHT_CFA_UTILS
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        uniform vec4 uWhiteBalanceGains;
        uniform sampler2D uLensShadingMap;

        void main() {
            ivec2 coord = ivec2(gl_FragCoord.xy);
            coord = clamp(coord, ivec2(0), ivec2(uImageSize) - 1);

            float raw = float(texelFetch(uRawTexture, coord, 0).r);

            int idx = getChannelIndex(coord);
            vec4 mask = vec4(0.0);
            if (idx == 0) mask.r = 1.0;
            else if (idx == 1) mask.g = 1.0;
            else if (idx == 2) mask.b = 1.0;
            else mask.a = 1.0;

            float black = dot(uBlackLevel, mask);
            float wbGain = dot(uWhiteBalanceGains, mask);

            vec2 lscUV = (vec2(coord) + 0.5) / uImageSize;
            vec4 lscVal = texture(uLensShadingMap, lscUV);
            float lscGain = dot(lscVal, mask);

            // max(EPS) 防止除零, EPS 要极小以免影响暗部
            float pixel = max($EPS, (raw - black) * wbGain / (uWhiteLevel - black) * lscGain);

            // 未知通道初始化为 EPS (防除零, 但不影响已知通道的值域)
            vec3 nraw = vec3($EPS);

            int type = getChannelType(coord);
            if (type == 0) nraw.r = pixel;
            else if (type == 1) nraw.g = pixel;
            else nraw.b = pixel;

            fragColor = vec4(nraw, 1.0);
        }
    """.trimIndent()

    // ==================== Pass 1: HV Direction Detection ====================
    // 输入: nraw 纹理
    // 输出: ndir (R8UI 方向标记)

    val DHT_PASS1_HV_DIR = """
        $DHT_COMMON_HEADER

        in vec2 vTexCoord;
        out uint fragDir; // R8UI output

        uniform sampler2D uNrawTexture;
        $DHT_CFA_UTILS

        // 从 nraw 纹理安全采样
        vec3 nr(ivec2 c) {
            return texelFetch(uNrawTexture, clamp(c, ivec2(0), ivec2(uImageSize) - 1), 0).rgb;
        }

        // get_hv_grb: 非绿像素位置 (R或B) 的 HV 方向判定
        int get_hv_grb(ivec2 p, int kc) {
            // kc: 0=R, 2=B
            float ckc = (kc == 0) ? nr(p).r : nr(p).b;

            // 垂直方向
            float nkc_n2 = (kc == 0) ? nr(p + ivec2(0,-2)).r : nr(p + ivec2(0,-2)).b;
            float nkc_s2 = (kc == 0) ? nr(p + ivec2(0, 2)).r : nr(p + ivec2(0, 2)).b;
            float g_n1 = nr(p + ivec2(0,-1)).g;
            float g_s1 = nr(p + ivec2(0, 1)).g;
            float g_n3 = nr(p + ivec2(0,-3)).g;
            float g_s3 = nr(p + ivec2(0, 3)).g;

            float hv1 = 2.0 * g_n1 / (nkc_n2 + ckc);
            float hv2 = 2.0 * g_s1 / (nkc_s2 + ckc);
            float kv = calc_dist(hv1, hv2) * calc_dist(ckc * ckc, nkc_n2 * nkc_s2);
            kv = kv*kv; kv = kv*kv; kv = kv*kv; // kv^8
            float dv = kv * calc_dist(g_n3 * g_s3, g_n1 * g_s1);

            // 水平方向
            float nkc_w2 = (kc == 0) ? nr(p + ivec2(-2,0)).r : nr(p + ivec2(-2,0)).b;
            float nkc_e2 = (kc == 0) ? nr(p + ivec2( 2,0)).r : nr(p + ivec2( 2,0)).b;
            float g_w1 = nr(p + ivec2(-1,0)).g;
            float g_e1 = nr(p + ivec2( 1,0)).g;
            float g_w3 = nr(p + ivec2(-3,0)).g;
            float g_e3 = nr(p + ivec2( 3,0)).g;

            float hh1 = 2.0 * g_w1 / (nkc_w2 + ckc);
            float hh2 = 2.0 * g_e1 / (nkc_e2 + ckc);
            float kh = calc_dist(hh1, hh2) * calc_dist(ckc * ckc, nkc_w2 * nkc_e2);
            kh = kh*kh; kh = kh*kh; kh = kh*kh;
            float dh = kh * calc_dist(g_w3 * g_e3, g_w1 * g_e1);

            float e = calc_dist(dh, dv);
            return dh < dv ? (e > Tg ? HORSH : HOR) : (e > Tg ? VERSH : VER);
        }

        // get_hv_rbg: 绿像素位置的 HV 方向判定
        int get_hv_rbg(ivec2 p, int kc) {
            // kc: 该行非绿像素的颜色 (0=R, 2=B)
            // hc = kc, hc^2 在C++中: 如果kc=0(R), hc^2=2(B); 如果kc=2(B), hc^2=0(R)
            int hc = kc;
            int hc2 = kc ^ 2; // 0->2, 2->0

            float g_c = nr(p).g;

            // 垂直: 邻居是 hc^2 颜色
            float g_n2 = nr(p + ivec2(0,-2)).g;
            float g_s2 = nr(p + ivec2(0, 2)).g;
            float c_n1 = (hc2 == 0) ? nr(p + ivec2(0,-1)).r : nr(p + ivec2(0,-1)).b;
            float c_s1 = (hc2 == 0) ? nr(p + ivec2(0, 1)).r : nr(p + ivec2(0, 1)).b;
            float c_n3 = (hc2 == 0) ? nr(p + ivec2(0,-3)).r : nr(p + ivec2(0,-3)).b;
            float c_s3 = (hc2 == 0) ? nr(p + ivec2(0, 3)).r : nr(p + ivec2(0, 3)).b;

            float hv1 = 2.0 * c_n1 / (g_n2 + g_c);
            float hv2 = 2.0 * c_s1 / (g_s2 + g_c);
            float kv = calc_dist(hv1, hv2) * calc_dist(g_c * g_c, g_n2 * g_s2);
            kv = kv*kv; kv = kv*kv; kv = kv*kv;
            float dv = kv * calc_dist(c_n3 * c_s3, c_n1 * c_s1);

            // 水平: 邻居是 hc 颜色
            float g_w2 = nr(p + ivec2(-2,0)).g;
            float g_e2 = nr(p + ivec2( 2,0)).g;
            float c_w1 = (hc == 0) ? nr(p + ivec2(-1,0)).r : nr(p + ivec2(-1,0)).b;
            float c_e1 = (hc == 0) ? nr(p + ivec2( 1,0)).r : nr(p + ivec2( 1,0)).b;
            float c_w3 = (hc == 0) ? nr(p + ivec2(-3,0)).r : nr(p + ivec2(-3,0)).b;
            float c_e3 = (hc == 0) ? nr(p + ivec2( 3,0)).r : nr(p + ivec2( 3,0)).b;

            float hh1 = 2.0 * c_w1 / (g_w2 + g_c);
            float hh2 = 2.0 * c_e1 / (g_e2 + g_c);
            float kh = calc_dist(hh1, hh2) * calc_dist(g_c * g_c, g_w2 * g_e2);
            kh = kh*kh; kh = kh*kh; kh = kh*kh;
            float dh = kh * calc_dist(c_w3 * c_e3, c_w1 * c_e1);

            float e = calc_dist(dh, dv);
            return dh < dv ? (e > Tg ? HORSH : HOR) : (e > Tg ? VERSH : VER);
        }

        void main() {
            ivec2 coord = ivec2(gl_FragCoord.xy);
            int js = getJs(coord);
            int kc = getKc(coord);
            int type = getChannelType(coord);

            int d;
            if (type != 1) {
                // 非绿位置: get_hv_grb
                d = get_hv_grb(coord, kc);
            } else {
                // 绿色位置: get_hv_rbg
                d = get_hv_rbg(coord, kc);
            }
            fragDir = uint(d);
        }
    """.trimIndent()

    // ==================== Pass 2: HV Direction Refinement ====================
    // 运行 3 次:
    //   uPass=0: refine_hv_dirs (奇数行/列)
    //   uPass=1: refine_hv_dirs (偶数行/列)
    //   uPass=2: refine_ihv_dirs (所有像素)

    val DHT_PASS2_HV_REFINE = """
        $DHT_COMMON_HEADER

        in vec2 vTexCoord;
        out uint fragDir;

        uniform usampler2D uNdirTexture; // R8UI
        $DHT_CFA_UTILS
        uniform int uPass; // 0=refine_even, 1=refine_odd, 2=refine_ihv

        int nd(ivec2 c) {
            return int(texelFetch(uNdirTexture, clamp(c, ivec2(0), ivec2(uImageSize) - 1), 0).r);
        }

        void main() {
            ivec2 coord = ivec2(gl_FragCoord.xy);
            int d = nd(coord);

            if (uPass < 2) {
                // refine_hv_dirs: 基于邻域方向一致性调整
                int js = getJs(coord);
                // uPass=0 处理 js 对齐的, uPass=1 处理 js^1 对齐的
                int targetParity = (uPass == 0) ? js : (js ^ 1);
                bool shouldProcess = ((coord.x & 1) == targetParity);

                if (shouldProcess && (d & HVSH) == 0) {
                    int nv = (nd(coord + ivec2(0,-1)) & VER)
                           + (nd(coord + ivec2(0, 1)) & VER)
                           + (nd(coord + ivec2(-1,0)) & VER)
                           + (nd(coord + ivec2( 1,0)) & VER);
                    int nh = (nd(coord + ivec2(0,-1)) & HOR)
                           + (nd(coord + ivec2(0, 1)) & HOR)
                           + (nd(coord + ivec2(-1,0)) & HOR)
                           + (nd(coord + ivec2( 1,0)) & HOR);

                    bool codir;
                    if ((d & VER) != 0) {
                        codir = ((nd(coord + ivec2(0,-1)) & VER) != 0)
                             || ((nd(coord + ivec2(0, 1)) & VER) != 0);
                    } else {
                        codir = ((nd(coord + ivec2(-1,0)) & HOR) != 0)
                             || ((nd(coord + ivec2( 1,0)) & HOR) != 0);
                    }

                    nv /= VER;
                    nh /= HOR;

                    if ((d & VER) != 0 && nh > 2 && !codir) {
                        d = (d & ~VER) | HOR;
                    }
                    if ((d & HOR) != 0 && nv > 2 && !codir) {
                        d = (d & ~HOR) | VER;
                    }
                }
            } else {
                // refine_ihv_dirs: 更严格的最终精炼
                if ((d & HVSH) == 0) {
                    int nv = (nd(coord + ivec2(0,-1)) & VER)
                           + (nd(coord + ivec2(0, 1)) & VER)
                           + (nd(coord + ivec2(-1,0)) & VER)
                           + (nd(coord + ivec2( 1,0)) & VER);
                    int nh = (nd(coord + ivec2(0,-1)) & HOR)
                           + (nd(coord + ivec2(0, 1)) & HOR)
                           + (nd(coord + ivec2(-1,0)) & HOR)
                           + (nd(coord + ivec2( 1,0)) & HOR);
                    nv /= VER;
                    nh /= HOR;
                    if ((d & VER) != 0 && nh > 3) { d = (d & ~VER) | HOR; }
                    if ((d & HOR) != 0 && nv > 3) { d = (d & ~HOR) | VER; }
                }
            }
            fragDir = uint(d);
        }
    """.trimIndent()

    // ==================== Pass 3: Green Interpolation ====================

    val DHT_PASS3_GREEN = """
        $DHT_COMMON_HEADER

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uNrawTexture;
        uniform usampler2D uNdirTexture;
        $DHT_CFA_UTILS
        uniform vec2 uChannelMax; // .x = max[1] (green max), .y unused
        uniform vec2 uChannelMin; // .x = min[1] (green min), .y unused

        vec3 nr(ivec2 c) {
            return texelFetch(uNrawTexture, clamp(c, ivec2(0), ivec2(uImageSize) - 1), 0).rgb;
        }
        int nd(ivec2 c) {
            return int(texelFetch(uNdirTexture, clamp(c, ivec2(0), ivec2(uImageSize) - 1), 0).r);
        }

        void main() {
            ivec2 coord = ivec2(gl_FragCoord.xy);
            vec3 pixel = nr(coord);
            int type = getChannelType(coord);

            if (type == 1) {
                // 已知绿色, 直接输出
                fragColor = vec4(pixel, 1.0);
                return;
            }

            // 非绿位置: 需要插值绿色
            int kc = (type == 0) ? 0 : 2; // R -> 0, B -> 2
            float ckc = (kc == 0) ? pixel.r : pixel.b;
            int d = nd(coord);

            int dx, dy, dx2, dy2;
            float h1, h2;

            if ((d & VER) != 0) {
                // 垂直方向
                float nkc_n2 = (kc == 0) ? nr(coord + ivec2(0,-2)).r : nr(coord + ivec2(0,-2)).b;
                float nkc_s2 = (kc == 0) ? nr(coord + ivec2(0, 2)).r : nr(coord + ivec2(0, 2)).b;
                h1 = 2.0 * nr(coord + ivec2(0,-1)).g / (nkc_n2 + ckc);
                h2 = 2.0 * nr(coord + ivec2(0, 1)).g / (nkc_s2 + ckc);
                float b1 = 1.0 / calc_dist(ckc, nkc_n2); b1 *= b1;
                float b2 = 1.0 / calc_dist(ckc, nkc_s2); b2 *= b2;
                float eg = ckc * (b1 * h1 + b2 * h2) / (b1 + b2);
                float mn = min(nr(coord + ivec2(0,-1)).g, nr(coord + ivec2(0,1)).g);
                float mx = max(nr(coord + ivec2(0,-1)).g, nr(coord + ivec2(0,1)).g);
                mn /= 1.2; mx *= 1.2;
                if (eg < mn) eg = scale_under(eg, mn);
                else if (eg > mx) eg = scale_over(eg, mx);
                eg = clamp(eg, uChannelMin.x, uChannelMax.x);
                pixel.g = eg;
            } else {
                // 水平方向
                float nkc_w2 = (kc == 0) ? nr(coord + ivec2(-2,0)).r : nr(coord + ivec2(-2,0)).b;
                float nkc_e2 = (kc == 0) ? nr(coord + ivec2( 2,0)).r : nr(coord + ivec2( 2,0)).b;
                h1 = 2.0 * nr(coord + ivec2( 1,0)).g / (nkc_e2 + ckc);
                h2 = 2.0 * nr(coord + ivec2(-1,0)).g / (nkc_w2 + ckc);
                float b1 = 1.0 / calc_dist(ckc, nkc_e2); b1 *= b1;
                float b2 = 1.0 / calc_dist(ckc, nkc_w2); b2 *= b2;
                float eg = ckc * (b1 * h1 + b2 * h2) / (b1 + b2);
                float mn = min(nr(coord + ivec2(1,0)).g, nr(coord + ivec2(-1,0)).g);
                float mx = max(nr(coord + ivec2(1,0)).g, nr(coord + ivec2(-1,0)).g);
                mn /= 1.2; mx *= 1.2;
                if (eg < mn) eg = scale_under(eg, mn);
                else if (eg > mx) eg = scale_over(eg, mx);
                eg = clamp(eg, uChannelMin.x, uChannelMax.x);
                pixel.g = eg;
            }

            fragColor = vec4(pixel, 1.0);
        }
    """.trimIndent()

    // ==================== Pass 4: Diagonal Direction Detection ====================

    val DHT_PASS4_DIAG_DIR = """
        $DHT_COMMON_HEADER

        in vec2 vTexCoord;
        out uint fragDir;

        uniform sampler2D uNrawTexture;
        uniform usampler2D uNdirTexture;
        $DHT_CFA_UTILS
        uniform int uPass; // 0=detect, 1=refine_idiag

        vec3 nr(ivec2 c) {
            return texelFetch(uNrawTexture, clamp(c, ivec2(0), ivec2(uImageSize) - 1), 0).rgb;
        }
        int nd(ivec2 c) {
            return int(texelFetch(uNdirTexture, clamp(c, ivec2(0), ivec2(uImageSize) - 1), 0).r);
        }

        int get_diag_grb(ivec2 p, int kc) {
            float hlu = nr(p + ivec2(-1,-1)).g / ((kc == 0) ? nr(p + ivec2(-1,-1)).r : nr(p + ivec2(-1,-1)).b);
            float hrd = nr(p + ivec2( 1, 1)).g / ((kc == 0) ? nr(p + ivec2( 1, 1)).r : nr(p + ivec2( 1, 1)).b);
            float dlurd = calc_dist(hlu, hrd) *
                calc_dist(nr(p + ivec2(-1,-1)).g * nr(p + ivec2(1,1)).g, nr(p).g * nr(p).g);
            float druld = calc_dist(hlu, hrd) *
                calc_dist(nr(p + ivec2(1,-1)).g * nr(p + ivec2(-1,1)).g, nr(p).g * nr(p).g);
            float e = calc_dist(dlurd, druld);
            return druld < dlurd ? (e > T ? RULDSH : RULD) : (e > T ? LURDSH : LURD);
        }

        int get_diag_rbg(ivec2 p) {
            float dlurd = calc_dist(
                nr(p + ivec2(-1,-1)).g * nr(p + ivec2(1,1)).g, nr(p).g * nr(p).g);
            float druld = calc_dist(
                nr(p + ivec2(1,-1)).g * nr(p + ivec2(-1,1)).g, nr(p).g * nr(p).g);
            float e = calc_dist(dlurd, druld);
            return druld < dlurd ? (e > T ? RULDSH : RULD) : (e > T ? LURDSH : LURD);
        }

        void main() {
            ivec2 coord = ivec2(gl_FragCoord.xy);
            int d = nd(coord);

            if (uPass == 0) {
                // 检测对角线方向
                int type = getChannelType(coord);
                int diagD;
                if (type != 1) {
                    int kc = (type == 0) ? 0 : 2;
                    diagD = get_diag_grb(coord, kc);
                } else {
                    diagD = get_diag_rbg(coord);
                }
                d |= diagD;
            } else {
                // refine_idiag_dirs
                if ((d & DIASH) == 0) {
                    int nv = 0, nh = 0;
                    for (int dy = -1; dy <= 1; dy++) {
                        for (int dx = -1; dx <= 1; dx++) {
                            if (dx == 0 && dy == 0) continue;
                            ivec2 nc = coord + ivec2(dx, dy);
                            nv += nd(nc) & LURD;
                            nh += nd(nc) & RULD;
                        }
                    }
                    nv /= LURD;
                    nh /= RULD;
                    if ((d & LURD) != 0 && nh > 7) { d = (d & ~LURD) | RULD; }
                    if ((d & RULD) != 0 && nv > 7) { d = (d & ~RULD) | LURD; }
                }
            }
            fragDir = uint(d);
        }
    """.trimIndent()

    // ==================== Pass 5: RB Diagonal Interpolation ====================

    val DHT_PASS5_RB_DIAG = """
        $DHT_COMMON_HEADER

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uNrawTexture;
        uniform usampler2D uNdirTexture;
        $DHT_CFA_UTILS
        uniform vec3 uChannelMax; // [R, G, B]
        uniform vec3 uChannelMin;

        vec3 nr(ivec2 c) {
            return texelFetch(uNrawTexture, clamp(c, ivec2(0), ivec2(uImageSize) - 1), 0).rgb;
        }
        int nd(ivec2 c) {
            return int(texelFetch(uNdirTexture, clamp(c, ivec2(0), ivec2(uImageSize) - 1), 0).r);
        }

        void main() {
            ivec2 coord = ivec2(gl_FragCoord.xy);
            vec3 pixel = nr(coord);
            int type = getChannelType(coord);

            // 只有非绿像素位置需要对角线插值另一个非绿色 (R位置插B, B位置插R)
            if (type != 1) {
                int cl = type ^ 2; // 0->2, 2->0 - 缺失的颜色通道
                int d = nd(coord);

                int dx1, dy1, dx2, dy2;
                if ((d & LURD) != 0) {
                    dx1 = -1; dy1 = -1; dx2 = 1; dy2 = 1;
                } else {
                    dx1 = -1; dy1 = 1; dx2 = 1; dy2 = -1;
                }

                vec3 n1 = nr(coord + ivec2(dx1, dy1));
                vec3 n2 = nr(coord + ivec2(dx2, dy2));

                float g1 = 1.0 / calc_dist(pixel.g, n1.g);
                float g2 = 1.0 / calc_dist(pixel.g, n2.g);
                g1 = g1*g1*g1; g2 = g2*g2*g2;

                float c1 = (cl == 0) ? n1.r : n1.b;
                float c2 = (cl == 0) ? n2.r : n2.b;

                float eg = pixel.g * (g1 * c1 / n1.g + g2 * c2 / n2.g) / (g1 + g2);

                float mn = min(c1, c2) / 1.2;
                float mx = max(c1, c2) * 1.2;
                if (eg < mn) eg = scale_under(eg, mn);
                else if (eg > mx) eg = scale_over(eg, mx);
                eg = clamp(eg, (cl == 0) ? uChannelMin.r : uChannelMin.b,
                               (cl == 0) ? uChannelMax.r : uChannelMax.b);

                if (cl == 0) pixel.r = eg; else pixel.b = eg;
            }

            fragColor = vec4(pixel, 1.0);
        }
    """.trimIndent()

    // ==================== Pass 6: RB HV Interpolation + CCM ====================

    val DHT_PASS6_RB_HV = """
        $DHT_COMMON_HEADER

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uNrawTexture;
        uniform usampler2D uNdirTexture;
        $DHT_CFA_UTILS
        uniform vec3 uChannelMax;
        uniform vec3 uChannelMin;
        uniform mat3 uColorCorrectionMatrix;

        // 用于高光保护的原始 RAW 采样
        uniform usampler2D uRawTexture;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;

        vec3 nr(ivec2 c) {
            return texelFetch(uNrawTexture, clamp(c, ivec2(0), ivec2(uImageSize) - 1), 0).rgb;
        }
        int nd(ivec2 c) {
            return int(texelFetch(uNdirTexture, clamp(c, ivec2(0), ivec2(uImageSize) - 1), 0).r);
        }

        float fetchRawNorm(ivec2 c) {
            c = clamp(c, ivec2(0), ivec2(uImageSize) - 1);
            float raw = float(texelFetch(uRawTexture, c, 0).r);
            int idx = getChannelIndex(c);
            vec4 mask = vec4(0.0);
            if (idx == 0) mask.r = 1.0;
            else if (idx == 1) mask.g = 1.0;
            else if (idx == 2) mask.b = 1.0;
            else mask.a = 1.0;
            float black = dot(uBlackLevel, mask);
            return (raw - black) / (uWhiteLevel - black);
        }

        void main() {
            ivec2 coord = ivec2(gl_FragCoord.xy);
            vec3 pixel = nr(coord);
            int type = getChannelType(coord);

            // 只有绿色位置需要 HV 方向插值 R 和 B
            if (type == 1) {
                int d = nd(coord);

                int dx1, dy1, dx2, dy2;
                if ((d & VER) != 0) {
                    dx1 = 0; dy1 = -1; dx2 = 0; dy2 = 1;
                } else {
                    dx1 = 1; dy1 = 0; dx2 = -1; dy2 = 0;
                }

                vec3 n1 = nr(coord + ivec2(dx1, dy1));
                vec3 n2 = nr(coord + ivec2(dx2, dy2));

                float g1 = 1.0 / calc_dist(pixel.g, n1.g);
                float g2 = 1.0 / calc_dist(pixel.g, n2.g);
                g1 *= g1; g2 *= g2;

                float eg_r = pixel.g * (g1 * n1.r / n1.g + g2 * n2.r / n2.g) / (g1 + g2);
                float eg_b = pixel.g * (g1 * n1.b / n1.g + g2 * n2.b / n2.g) / (g1 + g2);

                float mn_r = min(n1.r, n2.r) / 1.2;
                float mx_r = max(n1.r, n2.r) * 1.2;
                float mn_b = min(n1.b, n2.b) / 1.2;
                float mx_b = max(n1.b, n2.b) * 1.2;

                if (eg_r < mn_r) eg_r = scale_under(eg_r, mn_r);
                else if (eg_r > mx_r) eg_r = scale_over(eg_r, mx_r);
                if (eg_b < mn_b) eg_b = scale_under(eg_b, mn_b);
                else if (eg_b > mx_b) eg_b = scale_over(eg_b, mx_b);

                pixel.r = clamp(eg_r, uChannelMin.r, uChannelMax.r);
                pixel.b = clamp(eg_b, uChannelMin.b, uChannelMax.b);
            }

            // 直接使用 DHT 输出值 (已经是归一化 linear 空间, 无偏移)
            vec3 rgb = max(vec3(0.0), pixel);

            // 高光保护
            float rawC  = fetchRawNorm(coord);
            float rawN  = fetchRawNorm(coord + ivec2(0, -1));
            float rawS  = fetchRawNorm(coord + ivec2(0,  1));
            float rawW  = fetchRawNorm(coord + ivec2(-1, 0));
            float rawE  = fetchRawNorm(coord + ivec2( 1, 0));
            float maxRaw = max(rawC, max(max(rawN, rawS), max(rawW, rawE)));
            float satFactor = smoothstep(0.85, 0.98, maxRaw);
            if (satFactor > 0.0) {
                float luma = 0.2126 * rgb.r + 0.7152 * rgb.g + 0.0722 * rgb.b;
                rgb = mix(rgb, vec3(luma), satFactor);
            }

            // CCM
            rgb = uColorCorrectionMatrix * rgb;

            fragColor = vec4(rgb, 1.0);
        }
    """.trimIndent()
}
