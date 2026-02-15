/*
 *  This file is part of RawTherapee.
 *  Adapted to LibRaw by Antigravity.
 */
#include "../../internal/dcraw_defs.h"
#include <cmath>
#include <algorithm>
#include <vector>
#include <array>

#ifndef SQR
#define SQR(x) ((x)*(x))
#endif

namespace {
    // Helper for median of 9 values
    float median(float p1, float p2, float p3, float p4, float p5, float p6, float p7, float p8, float p9) {
        std::array<float, 9> p = {p1, p2, p3, p4, p5, p6, p7, p8, p9};
        std::sort(p.begin(), p.end());
        return p[4];
    }

    float median(float p1, float p2, float p3) {
        if (p1 > p2) std::swap(p1, p2);
        if (p2 > p3) std::swap(p2, p3);
        if (p1 > p2) std::swap(p1, p2);
        return p2;
    }
}

void LibRaw::lmmse_interpolate(int gamma_apply)
{
    // Test for RGB cfa
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            if (FC(i, j) == 3) {
                // avoid crash
                ahd_interpolate();
                return;
            }
        }
    }

    const int ba = 10;
    const int rr1 = height + 2 * ba;
    const int cc1 = width + 2 * ba;
    const int w1 = cc1;
    const int w2 = 2 * w1;
    const int w3 = 3 * w1;
    const int w4 = 4 * w1;
    float h0, h1, h2, h3, h4, hs;
    h0 = 1.0f;
    h1 = expf(-1.0f / 8.0f);
    h2 = expf(-4.0f / 8.0f);
    h3 = expf(-9.0f / 8.0f);
    h4 = expf(-16.0f / 8.0f);
    hs = h0 + 2.0f * (h1 + h2 + h3 + h4);
    h0 /= hs;
    h1 /= hs;
    h2 /= hs;
    h3 /= hs;
    h4 /= hs;
    
    // Default to 8 iterations (4 original + refinement) for high quality
    int iterations = 8;
    int iter = 3;
    int passref = 2;

    float *qix[5];
    float *buffer = (float *)calloc(static_cast<size_t>(rr1) * cc1 * 5, sizeof(float));

    if (buffer == nullptr) {
        throw LibRaw_exceptions(LIBRAW_EXCEPTION_ALLOC);
    } else {
        qix[0] = buffer;
        for (int i = 1; i < 5; i++) {
            qix[i] = qix[i - 1] + rr1 * cc1;
        }
    }

    // Gamma table if needed
    std::vector<float> glut;
    if (gamma_apply) {
        glut.resize(65536);
        for (int ii = 0; ii < 65536; ii++) {
            float v0 = (float)ii / 65535.0f;
            if (v0 <= 0.0031308f) glut[ii] = v0 * 12.92f;
            else glut[ii] = 1.055f * powf(v0, 1.0f / 2.4f) - 0.055f;
        }
    }

    RUN_CALLBACK(LIBRAW_PROGRESS_INTERPOLATE, 0, 100);

    // Initial copy
#ifdef LIBRAW_USE_OPENMP
#pragma omp parallel for
#endif
    for (int rrr = ba; rrr < rr1 - ba; rrr++) {
        int row = rrr - ba;
        for (int ccc = ba; ccc < cc1 - ba; ccc++) {
            int col = ccc - ba;
            float *rix = qix[4] + rrr * cc1 + ccc;
            ushort val = image[row * width + col][FC(row, col)];
            if (gamma_apply) rix[0] = glut[val];
            else rix[0] = (float)val / 65535.f;
        }
    }

    RUN_CALLBACK(LIBRAW_PROGRESS_INTERPOLATE, 10, 100);

    // G-R(B)
#ifdef LIBRAW_USE_OPENMP
#pragma omp parallel for
#endif
    for (int rr = 2; rr < rr1 - 2; rr++) {
        for (int cc = 2 + (FC(rr, 2) & 1); cc < cc1 - 2; cc += 2) {
            float *rix4 = qix[4] + rr * cc1 + cc;
            float v0 = 0.0625f * (rix4[-w1 - 1] + rix4[-w1 + 1] + rix4[w1 - 1] + rix4[w1 + 1]) + 0.25f * (rix4[0]);
            float *rix0 = qix[0] + rr * cc1 + cc;
            rix0[0] = -0.25f * (rix4[-2] + rix4[2]) + 0.5f * (rix4[-1] + rix4[0] + rix4[1]);
            float Y = v0 + 0.5f * rix0[0];

            if (rix4[0] > 1.75f * Y) rix0[0] = median(rix0[0], rix4[-1], rix4[1]);
            else rix0[0] = LIM(rix0[0], 0.0f, 1.0f);
            rix0[0] -= rix4[0];

            float *rix1 = qix[1] + rr * cc1 + cc;
            rix1[0] = -0.25f * (rix4[-w2] + rix4[w2]) + 0.5f * (rix4[-w1] + rix4[0] + rix4[w1]);
            Y = v0 + 0.5f * rix1[0];

            if (rix4[0] > 1.75f * Y) rix1[0] = median(rix1[0], rix4[-w1], rix4[w1]);
            else rix1[0] = LIM(rix1[0], 0.0f, 1.0f);
            rix1[0] -= rix4[0];
        }

        for (int ccc = 2 + (FC(rr, 3) & 1); ccc < cc1 - 2; ccc += 2) {
            float *rix0 = qix[0] + rr * cc1 + ccc;
            float *rix1 = qix[1] + rr * cc1 + ccc;
            float *rix4 = qix[4] + rr * cc1 + ccc;
            rix0[0] = 0.25f * (rix4[-2] + rix4[2]) - 0.5f * (rix4[-1] + rix4[0] + rix4[1]);
            rix1[0] = 0.25f * (rix4[-w2] + rix4[w2]) - 0.5f * (rix4[-w1] + rix4[0] + rix4[w1]);
            rix0[0] = LIM(rix0[0], -1.0f, 0.0f) + rix4[0];
            rix1[0] = LIM(rix1[0], -1.0f, 0.0f) + rix4[0];
        }
    }

    RUN_CALLBACK(LIBRAW_PROGRESS_INTERPOLATE, 20, 100);

#ifdef LIBRAW_USE_OPENMP
#pragma omp parallel for
#endif
    for (int rr = 4; rr < rr1 - 4; rr++) {
        for (int cc = 4; cc < cc1 - 4; cc++) {
            float *rix0 = qix[0] + rr * cc1 + cc;
            float *rix1 = qix[1] + rr * cc1 + cc;
            float *rix2 = qix[2] + rr * cc1 + cc;
            float *rix3 = qix[3] + rr * cc1 + cc;
            rix2[0] = h0 * rix0[0] + h1 * (rix0[-1] + rix0[1]) + h2 * (rix0[-2] + rix0[2]) + h3 * (rix0[-3] + rix0[3]) + h4 * (rix0[-4] + rix0[4]);
            rix3[0] = h0 * rix1[0] + h1 * (rix1[-w1] + rix1[w1]) + h2 * (rix1[-w2] + rix1[w2]) + h3 * (rix1[-w3] + rix1[w3]) + h4 * (rix1[-w4] + rix1[w4]);
        }
    }

    RUN_CALLBACK(LIBRAW_PROGRESS_INTERPOLATE, 30, 100);

#ifdef LIBRAW_USE_OPENMP
#pragma omp parallel for
#endif
    for (int rr = 4; rr < rr1 - 4; rr++) {
        for (int cc = 4 + (FC(rr, 4) & 1); cc < cc1 - 4; cc += 2) {
            float *rix0 = qix[0] + rr * cc1 + cc;
            float *rix1 = qix[1] + rr * cc1 + cc;
            float *rix2 = qix[2] + rr * cc1 + cc;
            float *rix3 = qix[3] + rr * cc1 + cc;
            float *rix4 = qix[4] + rr * cc1 + cc;
            float p1, p2, p3, p4, p5, p6, p7, p8, p9, mu, vx, vn, xh, vh, xv, vv;
            p1 = rix2[-4]; p2 = rix2[-3]; p3 = rix2[-2]; p4 = rix2[-1]; p5 = rix2[0]; p6 = rix2[1]; p7 = rix2[2]; p8 = rix2[3]; p9 = rix2[4];
            mu = (p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9) / 9.f;
            vx = 1e-7f + SQR(p1 - mu) + SQR(p2 - mu) + SQR(p3 - mu) + SQR(p4 - mu) + SQR(p5 - mu) + SQR(p6 - mu) + SQR(p7 - mu) + SQR(p8 - mu) + SQR(p9 - mu);
            p1 -= rix0[-4]; p2 -= rix0[-3]; p3 -= rix0[-2]; p4 -= rix0[-1]; p5 -= rix0[0]; p6 -= rix0[1]; p7 -= rix0[2]; p8 -= rix0[3]; p9 -= rix0[4];
            vn = 1e-7f + SQR(p1) + SQR(p2) + SQR(p3) + SQR(p4) + SQR(p5) + SQR(p6) + SQR(p7) + SQR(p8) + SQR(p9);
            xh = (rix0[0] * vx + rix2[0] * vn) / (vx + vn);
            vh = vx * vn / (vx + vn);

            p1 = rix3[-w4]; p2 = rix3[-w3]; p3 = rix3[-w2]; p4 = rix3[-w1]; p5 = rix3[0]; p6 = rix3[w1]; p7 = rix3[w2]; p8 = rix3[w3]; p9 = rix3[w4];
            mu = (p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9) / 9.f;
            vx = 1e-7f + SQR(p1 - mu) + SQR(p2 - mu) + SQR(p3 - mu) + SQR(p4 - mu) + SQR(p5 - mu) + SQR(p6 - mu) + SQR(p7 - mu) + SQR(p8 - mu) + SQR(p9 - mu);
            p1 -= rix1[-w4]; p2 -= rix1[-w3]; p3 -= rix1[-w2]; p4 -= rix1[-w1]; p5 -= rix1[0]; p6 -= rix1[w1]; p7 -= rix1[w2]; p8 -= rix1[w3]; p9 -= rix1[w4];
            vn = 1e-7f + SQR(p1) + SQR(p2) + SQR(p3) + SQR(p4) + SQR(p5) + SQR(p6) + SQR(p7) + SQR(p8) + SQR(p9);
            xv = (rix1[0] * vx + rix3[0] * vn) / (vx + vn);
            vv = vx * vn / (vx + vn);
            rix4[0] = (xh * vv + xv * vh) / (vh + vv);
        }
    }

    RUN_CALLBACK(LIBRAW_PROGRESS_INTERPOLATE, 40, 100);

#ifdef LIBRAW_USE_OPENMP
#pragma omp parallel for
#endif
    for (int rr = 0; rr < rr1; rr++) {
        int row = rr - ba;
        for (int cc = 0; cc < cc1; cc++) {
            int col = cc - ba;
            int c = FC(rr, cc);
            float *rixc = qix[c] + rr * cc1 + cc;
            if (row >= 0 && row < height && col >= 0 && col < width) {
                ushort val = image[row * width + col][c];
                if (gamma_apply) rixc[0] = glut[val];
                else rixc[0] = (float)val / 65535.f;
            } else rixc[0] = 0.f;

            if (c != 1) {
                float *rix1 = qix[1] + rr * cc1 + cc;
                float *rix4 = qix[4] + rr * cc1 + cc;
                rix1[0] = rixc[0] + rix4[0];
            }
        }
    }

    RUN_CALLBACK(LIBRAW_PROGRESS_INTERPOLATE, 50, 100);

#ifdef LIBRAW_USE_OPENMP
#pragma omp parallel for
#endif
    for (int rr = 1; rr < rr1 - 1; rr++) {
        for (int cc = 1 + (FC(rr, 2) & 1); cc < cc1 - 1; cc += 2) {
            int c = FC(rr, cc + 1);
            float *rixc = qix[c] + rr * cc1 + cc;
            float *rix1 = qix[1] + rr * cc1 + cc;
            rixc[0] = rix1[0] + 0.5f * (qix[c][rr*cc1 + cc-1] - qix[1][rr*cc1 + cc-1] + qix[c][rr*cc1 + cc+1] - qix[1][rr*cc1 + cc+1]);
            c = 2 - c;
            rixc = qix[c] + rr * cc1 + cc;
            rixc[0] = rix1[0] + 0.5f * (qix[c][(rr-1)*cc1 + cc] - qix[1][(rr-1)*cc1 + cc] + qix[c][(rr+1)*cc1 + cc] - qix[1][(rr+1)*cc1 + cc]);
        }
    }

    RUN_CALLBACK(LIBRAW_PROGRESS_INTERPOLATE, 65, 100);

#ifdef LIBRAW_USE_OPENMP
#pragma omp parallel for
#endif
    for (int rr = 1; rr < rr1 - 1; rr++) {
        for (int cc = 1 + (FC(rr, 1) & 1); cc < cc1 - 1; cc += 2) {
            int c = 2 - FC(rr, cc);
            float d1 = qix[c][(rr-1)*cc1 + cc] - qix[1][(rr-1)*cc1 + cc];
            float d2 = qix[c][rr*cc1 + cc-1] - qix[1][rr*cc1 + cc-1];
            float d3 = qix[c][rr*cc1 + cc+1] - qix[1][rr*cc1 + cc+1];
            float d4 = qix[c][(rr+1)*cc1 + cc] - qix[1][(rr+1)*cc1 + cc];
            qix[c][rr * cc1 + cc] = qix[1][rr * cc1 + cc] + 0.25f * (d1 + d2 + d3 + d4);
        }
    }

    RUN_CALLBACK(LIBRAW_PROGRESS_INTERPOLATE, 75, 100);

    for (int pass = 0; pass < iter; pass++) {
#ifdef LIBRAW_USE_OPENMP
#pragma omp parallel for
#endif
        for (int rr = 1; rr < rr1 - 1; rr++) {
            for (int c = 0; c < 3; c += 2) {
                int d = (c == 0) ? 3 : 4;
                for (int cc = 1; cc < cc1 - 1; cc++) {
                    std::array<float, 9> p;
                    for(int i=-1; i<=1; i++)
                        for(int j=-1; j<=1; j++)
                            p[(i+1)*3 + (j+1)] = qix[c][(rr+i)*cc1 + cc+j] - qix[1][(rr+i)*cc1 + cc+j];
                    qix[d][rr * cc1 + cc] = median(p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8]);
                }
            }
        }
#ifdef LIBRAW_USE_OPENMP
#pragma omp parallel for
#endif
        for (int rr = 0; rr < rr1; rr++) {
            if (FC(rr, 0) == 1) { // Green
                int c1 = 2 - FC(rr, 1);
                int d = (c1 == 0) ? 3 : 4;
                for (int cc = 0; cc < cc1 - 1; cc += 2) {
                    qix[0][rr*cc1 + cc] = qix[1][rr*cc1 + cc] + qix[3][rr*cc1 + cc];
                    qix[2][rr*cc1 + cc] = qix[1][rr*cc1 + cc] + qix[4][rr*cc1 + cc];
                    int ncc = cc + 1;
                    qix[c1][rr*cc1 + ncc] = qix[1][rr*cc1 + ncc] + qix[d][rr*cc1 + ncc];
                    qix[1][rr*cc1 + ncc] = 0.5f * (qix[0][rr*cc1 + ncc] - qix[3][rr*cc1 + ncc] + qix[2][rr*cc1 + ncc] - qix[4][rr*cc1 + ncc]);
                }
            } else {
                int c0 = 2 - FC(rr, 0);
                int d = (c0 == 0) ? 3 : 4;
                for (int cc = 0; cc < cc1 - 1; cc += 2) {
                    qix[c0][rr*cc1 + cc] = qix[1][rr*cc1 + cc] + qix[d][rr*cc1 + cc];
                    qix[1][rr*cc1 + cc] = 0.5f * (qix[0][rr*cc1 + cc] - qix[3][rr*cc1 + cc] + qix[2][rr*cc1 + cc] - qix[4][rr*cc1 + cc]);
                    int ncc = cc + 1;
                    qix[0][rr*cc1 + ncc] = qix[1][rr*cc1 + ncc] + qix[3][rr*cc1 + ncc];
                    qix[2][rr*cc1 + ncc] = qix[1][rr*cc1 + ncc] + qix[4][rr*cc1 + ncc];
                }
            }
        }
    }

    RUN_CALLBACK(LIBRAW_PROGRESS_INTERPOLATE, 85, 100);

    std::vector<float> iglut;
    if (gamma_apply) {
        iglut.resize(65536);
        for (int ii = 0; ii < 65536; ii++) {
            float v0 = (float)ii / 65535.0f;
            if (v0 <= 0.04045f) iglut[ii] = v0 / 12.92f * 65535.f;
            else iglut[ii] = powf((v0 + 0.055f) / 1.055f, 2.4f) * 65535.f;
        }
    }

#ifdef LIBRAW_USE_OPENMP
#pragma omp parallel for
#endif
    for (int row = 0; row < height; row++) {
        for (int col = 0; col < width; col++) {
            int rr = row + ba, cc = col + ba, c = FC(row, col);
            for (int ii = 0; ii < 3; ii++) {
                if (ii != c) {
                    float val = qix[ii][rr * cc1 + cc];
                    if (gamma_apply) image[row * width + col][ii] = CLIP((int)(iglut[CLIP((int)(val * 65535.f))] + 0.5f));
                    else image[row * width + col][ii] = CLIP((int)(val * 65535.f + 0.5f));
                }
            }
        }
    }

    free(buffer);
    if (passref > 0) refinement(passref);
    RUN_CALLBACK(LIBRAW_PROGRESS_INTERPOLATE, 100, 100);
}

void LibRaw::refinement(int PassCount)
{
    for (int b = 0; b < PassCount; b++) {
#ifdef LIBRAW_USE_OPENMP
#pragma omp parallel for
#endif
        for (int row = 2; row < height - 2; row++) {
            for (int col = 2 + (FC(row, 2) & 1); col < width - 2; col += 2) {
                int c = FC(row, col);
                float pix_c = (float)image[row * width + col][c];
                float dL = 1.f / (1.f + fabsf((float)image[row * width + col - 2][c] - pix_c) + fabsf((float)image[row * width + col + 1][1] - (float)image[row * width + col - 1][1]));
                float dR = 1.f / (1.f + fabsf((float)image[row * width + col + 2][c] - pix_c) + fabsf((float)image[row * width + col + 1][1] - (float)image[row * width + col - 1][1]));
                float dU = 1.f / (1.f + fabsf((float)image[(row - 2) * width + col][c] - pix_c) + fabsf((float)image[(row + 1) * width + col][1] - (float)image[(row - 1) * width + col][1]));
                float dD = 1.f / (1.f + fabsf((float)image[(row + 2) * width + col][c] - pix_c) + fabsf((float)image[(row + 1) * width + col][1] - (float)image[(row - 1) * width + col][1]));
                float v0 = (pix_c + 0.5f + (((float)image[row * width + col - 1][1] - (float)image[row * width + col - 1][c]) * dL + ((float)image[row * width + col + 1][1] - (float)image[row * width + col + 1][c]) * dR + ((float)image[(row - 1) * width + col][1] - (float)image[(row - 1) * width + col][c]) * dU + ((float)image[(row + 1) * width + col][1] - (float)image[(row + 1) * width + col][c]) * dD ) / (dL + dR + dU + dD));
                image[row * width + col][1] = CLIP((int)(v0 + 0.5f));
            }
        }
#ifdef LIBRAW_USE_OPENMP
#pragma omp parallel for
#endif
        for (int row = 2; row < height - 2; row++) {
            for (int col = 2 + (FC(row, 3) & 1); col < width - 2; col += 2) {
                int c_start = FC(row, col + 1);
                for (int i = 0, c = c_start; i < 2; c = 2 - c, i++) {
                    float pix_g = (float)image[row * width + col][1];
                    float dL = 1.f / (1.f + fabsf((float)image[row * width + col - 2][1] - pix_g) + fabsf((float)image[row * width + col + 1][c] - (float)image[row * width + col - 1][c]));
                    float dR = 1.f / (1.f + fabsf((float)image[row * width + col + 2][1] - pix_g) + fabsf((float)image[row * width + col + 1][c] - (float)image[row * width + col - 1][c]));
                    float dU = 1.f / (1.f + fabsf((float)image[(row - 2) * width + col][1] - pix_g) + fabsf((float)image[(row + 1) * width + col][c] - (float)image[(row - 1) * width + col][c]));
                    float dD = 1.f / (1.f + fabsf((float)image[(row + 2) * width + col][1] - pix_g) + fabsf((float)image[(row + 1) * width + col][c] - (float)image[(row - 1) * width + col][c]));
                    float v0 = (pix_g + 0.5f - (((float)image[row * width + col - 1][1] - (float)image[row * width + col - 1][c]) * dL + ((float)image[row * width + col + 1][1] - (float)image[row * width + col + 1][c]) * dR + ((float)image[(row - 1) * width + col][1] - (float)image[(row - 1) * width + col][c]) * dU + ((float)image[(row + 1) * width + col][1] - (float)image[(row + 1) * width + col][c]) * dD ) / (dL + dR + dU + dD));
                    image[row * width + col][c] = CLIP((int)(v0 + 0.5f));
                }
            }
        }
#ifdef LIBRAW_USE_OPENMP
#pragma omp parallel for
#endif
        for (int row = 2; row < height - 2; row++) {
            for (int col = 2 + (FC(row, 2) & 1); col < width - 2; col += 2) {
                int c = 2 - FC(row, col), d = 2 - c;
                float pix_g = (float)image[row * width + col][1];
                float dL = 1.f / (1.f + fabsf((float)image[row * width + col - 2][d] - (float)image[row * width + col][d]) + fabsf((float)image[row * width + col + 1][1] - (float)image[row * width + col - 1][1]));
                float dR = 1.f / (1.f + fabsf((float)image[row * width + col + 2][d] - (float)image[row * width + col][d]) + fabsf((float)image[row * width + col + 1][1] - (float)image[row * width + col - 1][1]));
                float dU = 1.f / (1.f + fabsf((float)image[(row - 2) * width + col][d] - (float)image[row * width + col][d]) + fabsf((float)image[(row + 1) * width + col][1] - (float)image[(row - 1) * width + col][1]));
                float dD = 1.f / (1.f + fabsf((float)image[(row + 2) * width + col][d] - (float)image[row * width + col][d]) + fabsf((float)image[(row + 1) * width + col][1] - (float)image[(row - 1) * width + col][1]));
                float v0 = (pix_g + 0.5f - (((float)image[row * width + col - 1][1] - (float)image[row * width + col - 1][c]) * dL + ((float)image[row * width + col + 1][1] - (float)image[row * width + col + 1][c]) * dR + ((float)image[(row - 1) * width + col][1] - (float)image[(row - 1) * width + col][c]) * dU + ((float)image[(row + 1) * width + col][1] - (float)image[(row + 1) * width + col][c]) * dD ) / (dL + dR + dU + dD));
                image[row * width + col][c] = CLIP((int)(v0 + 0.5f));
            }
        }
    }
}
