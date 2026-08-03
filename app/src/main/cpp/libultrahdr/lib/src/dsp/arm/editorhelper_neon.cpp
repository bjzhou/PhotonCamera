/*
 * Copyright 2024 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <arm_neon.h>
#include <cstring>

#include "ultrahdr/dsp/arm/mem_neon.h"
#include "ultrahdr/editorhelper.h"

namespace ultrahdr {

#define vrev128q_u8(src, dst) \
  dst = vrev64q_u8(src);      \
  dst = vextq_u8(dst, dst, 8);

#define vrev128q_u16(src, dst) \
  dst = vrev64q_u16(src);      \
  dst = vextq_u16(dst, dst, 4);

#define vrev128q_u32(src, dst) \
  dst = vrev64q_u32(src);      \
  dst = vextq_u32(dst, dst, 2);

#define vrev128q_u64(a) a = vextq_u64(a, a, 1)

static void mirror_buffer_horizontal_neon_uint8_t(uint8_t* src_buffer, uint8_t* dst_buffer,
                                                  int src_w, int src_h, int src_stride,
                                                  int dst_stride) {
  uint8_t* src_row = src_buffer;
  uint8_t* dst_row = dst_buffer;

  for (int i = 0; i < src_h; i++, src_row += src_stride, dst_row += dst_stride) {
    uint8_t* src_blk = src_row + src_w;
    uint8_t* dst_blk = dst_row;
    int j = 0;

    for (; j + 64 <= src_w; src_blk -= 64, dst_blk += 64, j += 64) {
      uint8x16x4_t s0 = load_u8x16_x4(src_blk - 64);
      uint8x16x4_t d0;
      vrev128q_u8(s0.val[0], d0.val[3]);
      vrev128q_u8(s0.val[1], d0.val[2]);
      vrev128q_u8(s0.val[2], d0.val[1]);
      vrev128q_u8(s0.val[3], d0.val[0]);
      store_u8x16_x4(dst_blk, d0);
    }

    for (; j + 32 <= src_w; src_blk -= 32, dst_blk += 32, j += 32) {
      uint8x16x2_t s0 = load_u8x16_x2(src_blk - 32);
      uint8x16x2_t d0;
      vrev128q_u8(s0.val[0], d0.val[1]);
      vrev128q_u8(s0.val[1], d0.val[0]);
      store_u8x16_x2(dst_blk, d0);
    }

    for (; j + 16 <= src_w; src_blk -= 16, dst_blk += 16, j += 16) {
      uint8x16_t s0 = vld1q_u8(src_blk - 16);
      vrev128q_u8(s0, s0);
      vst1q_u8(dst_blk, s0);
    }

    for (; j + 8 <= src_w; src_blk -= 8, dst_blk += 8, j += 8) {
      uint8x8_t s0 = vld1_u8(src_blk - 8);
      s0 = vrev64_u8(s0);
      vst1_u8(dst_blk, s0);
    }

    for (int k = 0; k < src_w - j; k++) {
      dst_blk[k] = src_row[src_w - j - k - 1];
    }
  }
}

static void mirror_buffer_horizontal_neon_uint16_t(uint16_t* src_buffer, uint16_t* dst_buffer,
                                                   int src_w, int src_h, int src_stride,
                                                   int dst_stride) {
  uint16_t* src_row = src_buffer;
  uint16_t* dst_row = dst_buffer;

  for (int i = 0; i < src_h; i++, src_row += src_stride, dst_row += dst_stride) {
    uint16_t* src_blk = src_row + src_w;
    uint16_t* dst_blk = dst_row;
    int j = 0;

    for (; j + 32 <= src_w; src_blk -= 32, dst_blk += 32, j += 32) {
      uint16x8x4_t s0 = load_u16x8_x4(src_blk - 32);
      uint16x8x4_t d0;
      vrev128q_u16(s0.val[0], d0.val[3]);
      vrev128q_u16(s0.val[1], d0.val[2]);
      vrev128q_u16(s0.val[2], d0.val[1]);
      vrev128q_u16(s0.val[3], d0.val[0]);
      store_u16x8_x4(dst_blk, d0);
    }

    for (; j + 16 <= src_w; src_blk -= 16, dst_blk += 16, j += 16) {
      uint16x8x2_t s0 = load_u16x8_x2(src_blk - 16);
      uint16x8x2_t d0;
      vrev128q_u16(s0.val[0], d0.val[1]);
      vrev128q_u16(s0.val[1], d0.val[0]);
      store_u16x8_x2(dst_blk, d0);
    }

    for (; j + 8 <= src_w; src_blk -= 8, dst_blk += 8, j += 8) {
      uint16x8_t s0 = vld1q_u16(src_blk - 8);
      vrev128q_u16(s0, s0);
      vst1q_u16(dst_blk, s0);
    }

    for (int k = 0; k < src_w - j; k++) {
      dst_blk[k] = src_row[src_w - j - k - 1];
    }
  }
}

static void mirror_buffer_horizontal_neon_uint32_t(uint32_t* src_buffer, uint32_t* dst_buffer,
                                                   int src_w, int src_h, int src_stride,
                                                   int dst_stride) {
  uint32_t* src_row = src_buffer;
  uint32_t* dst_row = dst_buffer;

  for (int i = 0; i < src_h; i++, src_row += src_stride, dst_row += dst_stride) {
    uint32_t* src_blk = src_row + src_w;
    uint32_t* dst_blk = dst_row;
    int j = 0;

    for (; j + 16 <= src_w; src_blk -= 16, dst_blk += 16, j += 16) {
      uint32x4x4_t s0 = load_u32x4_x4(src_blk - 16);
      uint32x4x4_t d0;
      vrev128q_u32(s0.val[0], d0.val[3]);
      vrev128q_u32(s0.val[1], d0.val[2]);
      vrev128q_u32(s0.val[2], d0.val[1]);
      vrev128q_u32(s0.val[3], d0.val[0]);
      store_u32x4_x4(dst_blk, d0);
    }

    for (; j + 8 <= src_w; src_blk -= 8, dst_blk += 8, j += 8) {
      uint32x4x2_t s0 = load_u32x4_x2(src_blk - 8);
      uint32x4x2_t d0;
      vrev128q_u32(s0.val[0], d0.val[1]);
      vrev128q_u32(s0.val[1], d0.val[0]);
      store_u32x4_x2(dst_blk, d0);
    }

    for (; j + 4 <= src_w; src_blk -= 4, dst_blk += 4, j += 4) {
      uint32x4_t s0 = vld1q_u32(src_blk - 4);
      vrev128q_u32(s0, s0);
      vst1q_u32(dst_blk, s0);
    }

    for (int k = 0; k < src_w - j; k++) {
      dst_blk[k] = src_row[src_w - j - k - 1];
    }
  }
}

static void mirror_buffer_horizontal_neon_uint64_t(uint64_t* src_buffer, uint64_t* dst_buffer,
                                                   int src_w, int src_h, int src_stride,
                                                   int dst_stride) {
  uint64_t* src_row = src_buffer;
  uint64_t* dst_row = dst_buffer;

  for (int i = 0; i < src_h; i++, src_row += src_stride, dst_row += dst_stride) {
    uint64_t* src_blk = src_row + src_w;
    uint64_t* dst_blk = dst_row;
    int j = 0;

    for (; j + 2 <= src_w; src_blk -= 2, dst_blk += 2, j += 2) {
      uint64x2_t s0 = vld1q_u64(src_blk - 2);
      vrev128q_u64(s0);
      vst1q_u64(dst_blk, s0);
    }
    for (int k = 0; k < src_w - j; k++) {
      dst_blk[k] = src_row[src_w - j - k - 1];
    }
  }
}

static void mirror_buffer_vertical_neon_uint8_t(uint8_t* src_buffer, uint8_t* dst_buffer, int src_w,
                                                int src_h, int src_stride, int dst_stride) {
  uint8_t* src_row = src_buffer;
  uint8_t* dst_row = dst_buffer + (src_h - 1) * dst_stride;

  for (int i = 0; i < src_h; i++, src_row += src_stride, dst_row -= dst_stride) {
    uint8_t* src_blk = src_row;
    uint8_t* dst_blk = dst_row;
    int j = 0;

    for (; j + 64 <= src_w; src_blk += 64, dst_blk += 64, j += 64) {
      uint8x16x4_t s0 = load_u8x16_x4(src_blk);
      store_u8x16_x4(dst_blk, s0);
    }

    for (; j + 32 <= src_w; src_blk += 32, dst_blk += 32, j += 32) {
      uint8x16x2_t s0 = load_u8x16_x2(src_blk);
      store_u8x16_x2(dst_blk, s0);
    }

    for (; j + 16 <= src_w; src_blk += 16, dst_blk += 16, j += 16) {
      uint8x16_t s0 = vld1q_u8(src_blk);
      vst1q_u8(dst_blk, s0);
    }

    for (; j + 8 <= src_w; src_blk += 8, dst_blk += 8, j += 8) {
      uint8x8_t s0 = vld1_u8(src_blk);
      vst1_u8(dst_blk, s0);
    }

    if (j < src_w) memcpy(dst_blk, src_blk, src_w - j);
  }
}

static void mirror_buffer_vertical_neon_uint16_t(uint16_t* src_buffer, uint16_t* dst_buffer,
                                                 int src_w, int src_h, int src_stride,
                                                 int dst_stride) {
  uint16_t* src_row = src_buffer;
  uint16_t* dst_row = dst_buffer + (src_h - 1) * dst_stride;

  for (int i = 0; i < src_h; i++, src_row += src_stride, dst_row -= dst_stride) {
    uint16_t* src_blk = src_row;
    uint16_t* dst_blk = dst_row;
    int j = 0;

    for (; j + 32 <= src_w; src_blk += 32, dst_blk += 32, j += 32) {
      uint16x8x4_t s0 = load_u16x8_x4(src_blk);
      store_u16x8_x4(dst_blk, s0);
    }

    for (; j + 16 <= src_w; src_blk += 16, dst_blk += 16, j += 16) {
      uint16x8x2_t s0 = load_u16x8_x2(src_blk);
      store_u16x8_x2(dst_blk, s0);
    }

    for (; j + 8 <= src_w; src_blk += 8, dst_blk += 8, j += 8) {
      uint16x8_t s0 = vld1q_u16(src_blk);
      vst1q_u16(dst_blk, s0);
    }

    if (j < src_w) memcpy(dst_blk, src_blk, (src_w - j) * sizeof(uint16_t));
  }
}

static void mirror_buffer_vertical_neon_uint32_t(uint32_t* src_buffer, uint32_t* dst_buffer,
                                                 int src_w, int src_h, int src_stride,
                                                 int dst_stride) {
  uint32_t* src_row = src_buffer;
  uint32_t* dst_row = dst_buffer + (src_h - 1) * dst_stride;

  for (int i = 0; i < src_h; i++, src_row += src_stride, dst_row -= dst_stride) {
    uint32_t* src_blk = src_row;
    uint32_t* dst_blk = dst_row;
    int j = 0;

    for (; j + 16 <= src_w; src_blk += 16, dst_blk += 16, j += 16) {
      uint32x4x4_t s0 = load_u32x4_x4(src_blk);
      store_u32x4_x4(dst_blk, s0);
    }

    for (; j + 8 <= src_w; src_blk += 8, dst_blk += 8, j += 8) {
      uint32x4x2_t s0 = load_u32x4_x2(src_blk);
      store_u32x4_x2(dst_blk, s0);
    }

    for (; j + 4 <= src_w; src_blk += 4, dst_blk += 4, j += 4) {
      uint32x4_t s0 = vld1q_u32(src_blk);
      vst1q_u32(dst_blk, s0);
    }

    if (j < src_w) memcpy(dst_blk, src_blk, (src_w - j) * sizeof(uint32_t));
  }
}

static void mirror_buffer_vertical_neon_uint64_t(uint64_t* src_buffer, uint64_t* dst_buffer,
                                                 int src_w, int src_h, int src_stride,
                                                 int dst_stride) {
  uint64_t* src_row = src_buffer;
  uint64_t* dst_row = dst_buffer + (src_h - 1) * dst_stride;

  for (int i = 0; i < src_h; i++, src_row += src_stride, dst_row -= dst_stride) {
    uint64_t* src_blk = src_row;
    uint64_t* dst_blk = dst_row;
    int j = 0;

    for (; j + 2 <= src_w; src_blk += 2, dst_blk += 2, j += 2) {
      uint64x2_t s0 = vld1q_u64(src_blk);
      vst1q_u64(dst_blk, s0);
    }

    if (j < src_w) memcpy(dst_blk, src_blk, (src_w - j) * sizeof(uint64_t));
  }
}

static INLINE void transpose_u8_8x8(uint8x8_t* a0, uint8x8_t* a1, uint8x8_t* a2, uint8x8_t* a3,
                                    uint8x8_t* a4, uint8x8_t* a5, uint8x8_t* a6, uint8x8_t* a7) {
  // Swap 8 bit elements. Goes from:
  // a0: 00 01 02 03 04 05 06 07
  // a1: 10 11 12 13 14 15 16 17
  // a2: 20 21 22 23 24 25 26 27
  // a3: 30 31 32 33 34 35 36 37
  // a4: 40 41 42 43 44 45 46 47
  // a5: 50 51 52 53 54 55 56 57
  // a6: 60 61 62 63 64 65 66 67
  // a7: 70 71 72 73 74 75 76 77
  // to:
  // b0.val[0]: 00 10 02 12 04 14 06 16  40 50 42 52 44 54 46 56
  // b0.val[1]: 01 11 03 13 05 15 07 17  41 51 43 53 45 55 47 57
  // b1.val[0]: 20 30 22 32 24 34 26 36  60 70 62 72 64 74 66 76
  // b1.val[1]: 21 31 23 33 25 35 27 37  61 71 63 73 65 75 67 77

  const uint8x16x2_t b0 = vtrnq_u8(vcombine_u8(*a0, *a4), vcombine_u8(*a1, *a5));
  const uint8x16x2_t b1 = vtrnq_u8(vcombine_u8(*a2, *a6), vcombine_u8(*a3, *a7));

  // Swap 16 bit elements resulting in:
  // c0.val[0]: 00 10 20 30 04 14 24 34  40 50 60 70 44 54 64 74
  // c0.val[1]: 02 12 22 32 06 16 26 36  42 52 62 72 46 56 66 76
  // c1.val[0]: 01 11 21 31 05 15 25 35  41 51 61 71 45 55 65 75
  // c1.val[1]: 03 13 23 33 07 17 27 37  43 53 63 73 47 57 67 77

  const uint16x8x2_t c0 =
      vtrnq_u16(vreinterpretq_u16_u8(b0.val[0]), vreinterpretq_u16_u8(b1.val[0]));
  const uint16x8x2_t c1 =
      vtrnq_u16(vreinterpretq_u16_u8(b0.val[1]), vreinterpretq_u16_u8(b1.val[1]));

  // Unzip 32 bit elements resulting in:
  // d0.val[0]: 00 10 20 30 40 50 60 70  01 11 21 31 41 51 61 71
  // d0.val[1]: 04 14 24 34 44 54 64 74  05 15 25 35 45 55 65 75
  // d1.val[0]: 02 12 22 32 42 52 62 72  03 13 23 33 43 53 63 73
  // d1.val[1]: 06 16 26 36 46 56 66 76  07 17 27 37 47 57 67 77
  const uint32x4x2_t d0 =
      vuzpq_u32(vreinterpretq_u32_u16(c0.val[0]), vreinterpretq_u32_u16(c1.val[0]));
  const uint32x4x2_t d1 =
      vuzpq_u32(vreinterpretq_u32_u16(c0.val[1]), vreinterpretq_u32_u16(c1.val[1]));

  *a0 = vreinterpret_u8_u32(vget_low_u32(d0.val[0]));
  *a1 = vreinterpret_u8_u32(vget_high_u32(d0.val[0]));
  *a2 = vreinterpret_u8_u32(vget_low_u32(d1.val[0]));
  *a3 = vreinterpret_u8_u32(vget_high_u32(d1.val[0]));
  *a4 = vreinterpret_u8_u32(vget_low_u32(d0.val[1]));
  *a5 = vreinterpret_u8_u32(vget_high_u32(d0.val[1]));
  *a6 = vreinterpret_u8_u32(vget_low_u32(d1.val[1]));
  *a7 = vreinterpret_u8_u32(vget_high_u32(d1.val[1]));
}

static INLINE void reverse_uint8x8_regs(uint8x8_t* a0, uint8x8_t* a1, uint8x8_t* a2, uint8x8_t* a3,
                                        uint8x8_t* a4, uint8x8_t* a5, uint8x8_t* a6,
                                        uint8x8_t* a7) {
  *a0 = vrev64_u8(*a0);
  *a1 = vrev64_u8(*a1);
  *a2 = vrev64_u8(*a2);
  *a3 = vrev64_u8(*a3);
  *a4 = vrev64_u8(*a4);
  *a5 = vrev64_u8(*a5);
  *a6 = vrev64_u8(*a6);
  *a7 = vrev64_u8(*a7);
}

static INLINE uint16x8x2_t vtrnq_u64_to_u16(uint32x4_t a0, uint32x4_t a1) {
  uint16x8x2_t b0;

#if (defined(__arm64__) && defined(__APPLE__)) || defined(__aarch64__)
  b0.val[0] =
      vreinterpretq_u16_u64(vtrn1q_u64(vreinterpretq_u64_u32(a0), vreinterpretq_u64_u32(a1)));
  b0.val[1] =
      vreinterpretq_u16_u64(vtrn2q_u64(vreinterpretq_u64_u32(a0), vreinterpretq_u64_u32(a1)));
#else
  b0.val[0] =
      vcombine_u16(vreinterpret_u16_u32(vget_low_u32(a0)), vreinterpret_u16_u32(vget_low_u32(a1)));
  b0.val[1] = vcombine_u16(vreinterpret_u16_u32(vget_high_u32(a0)),
                           vreinterpret_u16_u32(vget_high_u32(a1)));
#endif
  return b0;
}

static INLINE void transpose_u16_8x8(uint16x8_t* a0, uint16x8_t* a1, uint16x8_t* a2, uint16x8_t* a3,
                                     uint16x8_t* a4, uint16x8_t* a5, uint16x8_t* a6,
                                     uint16x8_t* a7) {
  // Swap 16 bit elements. Goes from:
  // a0: 00 01 02 03 04 05 06 07
  // a1: 10 11 12 13 14 15 16 17
  // a2: 20 21 22 23 24 25 26 27
  // a3: 30 31 32 33 34 35 36 37
  // a4: 40 41 42 43 44 45 46 47
  // a5: 50 51 52 53 54 55 56 57
  // a6: 60 61 62 63 64 65 66 67
  // a7: 70 71 72 73 74 75 76 77
  // to:
  // b0.val[0]: 00 10 02 12 04 14 06 16
  // b0.val[1]: 01 11 03 13 05 15 07 17
  // b1.val[0]: 20 30 22 32 24 34 26 36
  // b1.val[1]: 21 31 23 33 25 35 27 37
  // b2.val[0]: 40 50 42 52 44 54 46 56
  // b2.val[1]: 41 51 43 53 45 55 47 57
  // b3.val[0]: 60 70 62 72 64 74 66 76
  // b3.val[1]: 61 71 63 73 65 75 67 77
  const uint16x8x2_t b0 = vtrnq_u16(*a0, *a1);
  const uint16x8x2_t b1 = vtrnq_u16(*a2, *a3);
  const uint16x8x2_t b2 = vtrnq_u16(*a4, *a5);
  const uint16x8x2_t b3 = vtrnq_u16(*a6, *a7);

  // Swap 32 bit elements resulting in:
  // c0.val[0]: 00 10 20 30 04 14 24 34
  // c0.val[1]: 02 12 22 32 06 16 26 36
  // c1.val[0]: 01 11 21 31 05 15 25 35
  // c1.val[1]: 03 13 23 33 07 17 27 37
  // c2.val[0]: 40 50 60 70 44 54 64 74
  // c2.val[1]: 42 52 62 72 46 56 66 76
  // c3.val[0]: 41 51 61 71 45 55 65 75
  // c3.val[1]: 43 53 63 73 47 57 67 77
  const uint32x4x2_t c0 =
      vtrnq_u32(vreinterpretq_u32_u16(b0.val[0]), vreinterpretq_u32_u16(b1.val[0]));
  const uint32x4x2_t c1 =
      vtrnq_u32(vreinterpretq_u32_u16(b0.val[1]), vreinterpretq_u32_u16(b1.val[1]));
  const uint32x4x2_t c2 =
      vtrnq_u32(vreinterpretq_u32_u16(b2.val[0]), vreinterpretq_u32_u16(b3.val[0]));
  const uint32x4x2_t c3 =
      vtrnq_u32(vreinterpretq_u32_u16(b2.val[1]), vreinterpretq_u32_u16(b3.val[1]));

  // Swap 64 bit elements resulting in:
  // d0.val[0]: 00 10 20 30 40 50 60 70
  // d0.val[1]: 04 14 24 34 44 54 64 74
  // d1.val[0]: 01 11 21 31 41 51 61 71
  // d1.val[1]: 05 15 25 35 45 55 65 75
  // d2.val[0]: 02 12 22 32 42 52 62 72
  // d2.val[1]: 06 16 26 36 46 56 66 76
  // d3.val[0]: 03 13 23 33 43 53 63 73
  // d3.val[1]: 07 17 27 37 47 57 67 77
  const uint16x8x2_t d0 = vtrnq_u64_to_u16(c0.val[0], c2.val[0]);
  const uint16x8x2_t d1 = vtrnq_u64_to_u16(c1.val[0], c3.val[0]);
  const uint16x8x2_t d2 = vtrnq_u64_to_u16(c0.val[1], c2.val[1]);
  const uint16x8x2_t d3 = vtrnq_u64_to_u16(c1.val[1], c3.val[1]);

  *a0 = d0.val[0];
  *a1 = d1.val[0];
  *a2 = d2.val[0];
  *a3 = d3.val[0];
  *a4 = d0.val[1];
  *a5 = d1.val[1];
  *a6 = d2.val[1];
  *a7 = d3.val[1];
}

static INLINE void reverse_uint16x8_regs(uint16x8_t* a0, uint16x8_t* a1, uint16x8_t* a2,
                                         uint16x8_t* a3, uint16x8_t* a4, uint16x8_t* a5,
                                         uint16x8_t* a6, uint16x8_t* a7) {
  vrev128q_u16(*a0, *a0);
  vrev128q_u16(*a1, *a1);
  vrev128q_u16(*a2, *a2);
  vrev128q_u16(*a3, *a3);
  vrev128q_u16(*a4, *a4);
  vrev128q_u16(*a5, *a5);
  vrev128q_u16(*a6, *a6);
  vrev128q_u16(*a7, *a7);
}

static INLINE uint32x4x2_t vtrnq_u64_to_u32(uint32x4_t a0, uint32x4_t a1) {
  uint32x4x2_t b0;
#if (defined(__arm64__) && defined(__APPLE__)) || defined(__aarch64__)
  b0.val[0] =
      vreinterpretq_u32_u64(vtrn1q_u64(vreinterpretq_u64_u32(a0), vreinterpretq_u64_u32(a1)));
  b0.val[1] =
      vreinterpretq_u32_u64(vtrn2q_u64(vreinterpretq_u64_u32(a0), vreinterpretq_u64_u32(a1)));
#else
  b0.val[0] = vcombine_u32(vget_low_u32(a0), vget_low_u32(a1));
  b0.val[1] = vcombine_u32(vget_high_u32(a0), vget_high_u32(a1));
#endif
  return b0;
}

static INLINE void transpose_u32_4x4(uint32x4_t* a0, uint32x4_t* a1, uint32x4_t* a2,
                                     uint32x4_t* a3) {
  // Swap 32 bit elements. Goes from:
  // a0: 00 01 02 03
  // a1: 10 11 12 13
  // a2: 20 21 22 23
  // a3: 30 31 32 33
  // to:
  // b0.val[0]: 00 10 02 12
  // b0.val[1]: 01 11 03 13
  // b1.val[0]: 20 30 22 32
  // b1.val[1]: 21 31 23 33

  const uint32x4x2_t b0 = vtrnq_u32(*a0, *a1);
  const uint32x4x2_t b1 = vtrnq_u32(*a2, *a3);

  // Swap 64 bit elements resulting in:
  // c0.val[0]: 00 10 20 30
  // c0.val[1]: 02 12 22 32
  // c1.val[0]: 01 11 21 31
  // c1.val[1]: 03 13 23 33

  const uint32x4x2_t c0 = vtrnq_u64_to_u32(b0.val[0], b1.val[0]);
  const uint32x4x2_t c1 = vtrnq_u64_to_u32(b0.val[1], b1.val[1]);

  *a0 = c0.val[0];
  *a1 = c1.val[0];
  *a2 = c0.val[1];
  *a3 = c1.val[1];
}

static INLINE void reverse_uint32x4_regs(uint32x4_t* a0, uint32x4_t* a1, uint32x4_t* a2,
                                         uint32x4_t* a3) {
  vrev128q_u32(*a0, *a0);
  vrev128q_u32(*a1, *a1);
  vrev128q_u32(*a2, *a2);
  vrev128q_u32(*a3, *a3);
}

static INLINE void rotate90_u64_2x2(uint64x2_t* a0, uint64x2_t* a1) {
  uint64x2_t b0 = vcombine_u64(vget_low_u64(*a1), vget_low_u64(*a0));
  uint64x2_t b1 = vcombine_u64(vget_high_u64(*a1), vget_high_u64(*a0));
  *a0 = b0;
  *a1 = b1;
}

static INLINE void rotate270_u64_2x2(uint64x2_t* a0, uint64x2_t* a1) {
  uint64x2_t b0 = vcombine_u64(vget_low_u64(*a0), vget_low_u64(*a1));
  uint64x2_t b1 = vcombine_u64(vget_high_u64(*a0), vget_high_u64(*a1));
  *a0 = b1;
  *a1 = b0;
}

static INLINE void load_u8_8x8(const uint8_t* s, const int stride, uint8x8_t* s0, uint8x8_t* s1,
                               uint8x8_t* s2, uint8x8_t* s3, uint8x8_t* s4, uint8x8_t* s5,
                               uint8x8_t* s6, uint8x8_t* s7) {
  *s0 = vld1_u8(s);
  s += stride;
  *s1 = vld1_u8(s);
  s += stride;
  *s2 = vld1_u8(s);
  s += stride;
  *s3 = vld1_u8(s);
  s += stride;
  *s4 = vld1_u8(s);
  s += stride;
  *s5 = vld1_u8(s);
  s += stride;
  *s6 = vld1_u8(s);
  s += stride;
  *s7 = vld1_u8(s);
}

static INLINE void load_u16_8x8(const uint16_t* s, const int stride, uint16x8_t* s0, uint16x8_t* s1,
                                uint16x8_t* s2, uint16x8_t* s3, uint16x8_t* s4, uint16x8_t* s5,
                                uint16x8_t* s6, uint16x8_t* s7) {
  *s0 = vld1q_u16(s);
  s += stride;
  *s1 = vld1q_u16(s);
  s += stride;
  *s2 = vld1q_u16(s);
  s += stride;
  *s3 = vld1q_u16(s);
  s += stride;
  *s4 = vld1q_u16(s);
  s += stride;
  *s5 = vld1q_u16(s);
  s += stride;
  *s6 = vld1q_u16(s);
  s += stride;
  *s7 = vld1q_u16(s);
}

static INLINE void load_u32_4x4(const uint32_t* s, const int stride, uint32x4_t* s1, uint32x4_t* s2,
                                uint32x4_t* s3, uint32x4_t* s4) {
  *s1 = vld1q_u32(s);
  s += stride;
  *s2 = vld1q_u32(s);
  s += stride;
  *s3 = vld1q_u32(s);
  s += stride;
  *s4 = vld1q_u32(s);
}

static INLINE void load_u64_2x2(const uint64_t* s, const int stride, uint64x2_t* s1,
                                uint64x2_t* s2) {
  *s1 = vld1q_u64(s);
  s += stride;
  *s2 = vld1q_u64(s);
}

static INLINE void store_u8_8x8(uint8_t* s, int stride, uint8x8_t s0, uint8x8_t s1, uint8x8_t s2,
                                uint8x8_t s3, uint8x8_t s4, uint8x8_t s5, uint8x8_t s6,
                                uint8x8_t s7) {
  vst1_u8(s, s0);
  s += stride;
  vst1_u8(s, s1);
  s += stride;
  vst1_u8(s, s2);
  s += stride;
  vst1_u8(s, s3);
  s += stride;
  vst1_u8(s, s4);
  s += stride;
  vst1_u8(s, s5);
  s += stride;
  vst1_u8(s, s6);
  s += stride;
  vst1_u8(s, s7);
}

static INLINE void store_u16_8x8(uint16_t* s, int stride, uint16x8_t s0, uint16x8_t s1,
                                 uint16x8_t s2, uint16x8_t s3, uint16x8_t s4, uint16x8_t s5,
                                 uint16x8_t s6, uint16x8_t s7) {
  vst1q_u16(s, s0);
  s += stride;
  vst1q_u16(s, s1);
  s += stride;
  vst1q_u16(s, s2);
  s += stride;
  vst1q_u16(s, s3);
  s += stride;
  vst1q_u16(s, s4);
  s += stride;
  vst1q_u16(s, s5);
  s += stride;
  vst1q_u16(s, s6);
  s += stride;
  vst1q_u16(s, s7);
}

static INLINE void store_u32_4x4(uint32_t* s, int stride, uint32x4_t s1, uint32x4_t s2,
                                 uint32x4_t s3, uint32x4_t s4) {
  vst1q_u32(s, s1);
  s += stride;
  vst1q_u32(s, s2);
  s += stride;
  vst1q_u32(s, s3);
  s += stride;
  vst1q_u32(s, s4);
}

static INLINE void store_u64_2x2(uint64_t* s, int stride, uint64x2_t s1, uint64x2_t s2) {
  vst1q_u64(s, s1);
  s += stride;
  vst1q_u64(s, s2);
}

static void rotate_buffer_clockwise_90_neon_uint8_t(uint8_t* src_buffer, uint8_t* dst_buffer,
                                                    int src_w, int src_h, int src_stride,
                                                    int dst_stride) {
  const int blk_wd = 8;

  if (src_h < blk_wd || src_w < blk_wd) {
    rotate_buffer_clockwise(src_buffer, dst_buffer, src_w, src_h, src_stride, dst_stride, 90);
    return;
  }

  int sub_img_w = (src_w / blk_wd) * blk_wd;
  uint8x8_t s[blk_wd];
  int i = 0;

  while (1) {
    uint8_t* dst_blk = dst_buffer + src_h - i - blk_wd;
    uint8_t* src_blk = src_buffer + (i * src_stride);
    int j;

    for (j = 0; j < sub_img_w; j += blk_wd, src_blk += blk_wd, dst_blk += (blk_wd * dst_stride)) {
      load_u8_8x8(src_blk, src_stride, &s[0], &s[1], &s[2], &s[3], &s[4], &s[5], &s[6], &s[7]);
      transpose_u8_8x8(&s[0], &s[1], &s[2], &s[3], &s[4], &s[5], &s[6], &s[7]);
      reverse_uint8x8_regs(&s[0], &s[1], &s[2], &s[3], &s[4], &s[5], &s[6], &s[7]);
      store_u8_8x8(dst_blk, dst_stride, s[0], s[1], s[2], s[3], s[4], s[5], s[6], s[7]);
    }
    if (sub_img_w < src_w) {
      dst_blk += blk_wd - 1;
      for (int k = 0; k < blk_wd; k++) {
        for (int l = 0; l < (src_w - sub_img_w); l++) {
          dst_blk[l * dst_stride - k] = src_blk[k * src_stride + l];
        }
      }
    }
    i += blk_wd;
    if (i == src_h) break;
    if (i + blk_wd > src_h) i = src_h - blk_wd;
  }
}

static void rotate_buffer_clockwise_90_neon_uint16_t(uint16_t* src_buffer, uint16_t* dst_buffer,
                                                     int src_w, int src_h, int src_stride,
                                                     int dst_stride) {
  const int blk_wd = 8;

  if (src_h < blk_wd || src_w < blk_wd) {
    rotate_buffer_clockwise(src_buffer, dst_buffer, src_w, src_h, src_stride, dst_stride, 90);
    return;
  }

  int sub_img_w = (src_w / blk_wd) * blk_wd;
  uint16x8_t s[blk_wd];
  int i = 0;

  while (1) {
    uint16_t* dst_blk = dst_buffer + src_h - i - blk_wd;
    uint16_t* src_blk = src_buffer + (i * src_stride);
    int j;

    for (j = 0; j < sub_img_w; j += blk_wd, src_blk += blk_wd, dst_blk += (blk_wd * dst_stride)) {
      load_u16_8x8(src_blk, src_stride, &s[0], &s[1], &s[2], &s[3], &s[4], &s[5], &s[6], &s[7]);
      transpose_u16_8x8(&s[0], &s[1], &s[2], &s[3], &s[4], &s[5], &s[6], &s[7]);
      reverse_uint16x8_regs(&s[0], &s[1], &s[2], &s[3], &s[4], &s[5], &s[6], &s[7]);
      store_u16_8x8(dst_blk, dst_stride, s[0], s[1], s[2], s[3], s[4], s[5], s[6], s[7]);
    }
    if (sub_img_w < src_w) {
      dst_blk += blk_wd - 1;
      for (int k = 0; k < blk_wd; k++) {
        for (int l = 0; l < (src_w - sub_img_w); l++) {
          dst_blk[l * dst_stride - k] = src_blk[k * src_stride + l];
        }
      }
    }
    i += blk_wd;
    if (i == src_h) break;
    if (i + blk_wd > src_h) i = src_h - blk_wd;
  }
}

static void rotate_buffer_clockwise_90_neon_uint32_t(uint32_t* src_buffer, uint32_t* dst_buffer,
                                                     int src_w, int src_h, int src_stride,
                                                     int dst_stride) {
  const int blk_wd = 4;

  if (src_h < blk_wd || src_w < blk_wd) {
    rotate_buffer_clockwise(src_buffer, dst_buffer, src_w, src_h, src_stride, dst_stride, 90);
    return;
  }

  int sub_img_w = (src_w / blk_wd) * blk_wd;
  uint32x4_t s[blk_wd];
  int i = 0;

  while (1) {
    uint32_t* dst_blk = dst_buffer + src_h - i - blk_wd;
    uint32_t* src_blk = src_buffer + (i * src_stride);
    int j;

    for (j = 0; j < sub_img_w; j += blk_wd, src_blk += blk_wd, dst_blk += (blk_wd * dst_stride)) {
      load_u32_4x4(src_blk, src_stride, &s[0], &s[1], &s[2], &s[3]);
      transpose_u32_4x4(&s[0], &s[1], &s[2], &s[3]);
      reverse_uint32x4_regs(&s[0], &s[1], &s[2], &s[3]);
      store_u32_4x4(dst_blk, dst_stride, s[0], s[1], s[2], s[3]);
    }
    if (sub_img_w < src_w) {
      dst_blk += blk_wd - 1;
      for (int k = 0; k < blk_wd; k++) {
        for (int l = 0; l < (src_w - sub_img_w); l++) {
          dst_blk[l * dst_stride - k] = src_blk[k * src_stride + l];
        }
      }
    }
    i += blk_wd;
    if (i == src_h) break;
    if (i + blk_wd > src_h) i = src_h - blk_wd;
  }
}

static void rotate_buffer_clockwise_90_neon_uint64_t(uint64_t* src_buffer, uint64_t* dst_buffer,
                                                     int src_w, int src_h, int src_stride,
                                                     int dst_stride) {
  const int blk_wd = 2;

  if (src_h < blk_wd || src_w < blk_wd) {
    rotate_buffer_clockwise(src_buffer, dst_buffer, src_w, src_h, src_stride, dst_stride, 90);
    return;
  }

  int sub_img_w = (src_w / blk_wd) * blk_wd;
  uint64x2_t s[blk_wd];
  int i = 0;

  while (1) {
    uint64_t* dst_blk = dst_buffer + src_h - i - blk_wd;
    uint64_t* src_blk = src_buffer + (i * src_stride);
    int j;

    for (j = 0; j < sub_img_w; j += blk_wd, src_blk += blk_wd, dst_blk += (blk_wd * dst_stride)) {
      load_u64_2x2(src_blk, src_stride, &s[0], &s[1]);
      rotate90_u64_2x2(&s[0], &s[1]);
      store_u64_2x2(dst_blk, dst_stride, s[0], s[1]);
    }
    if (sub_img_w < src_w) {
      dst_blk += blk_wd - 1;
      for (int k = 0; k < blk_wd; k++) {
        for (int l = 0; l < (src_w - sub_img_w); l++) {
          dst_blk[l * dst_stride - k] = src_blk[k * src_stride + l];
        }
      }
    }
    i += blk_wd;
    if (i == src_h) break;
    if (i + blk_wd > src_h) i = src_h - blk_wd;
  }
}

static void rotate_buffer_clockwise_270_neon_uint8_t(uint8_t* src_buffer, uint8_t* dst_buffer,
                                                     int src_w, int src_h, int src_stride,
                                                     int dst_stride) {
  const int blk_wd = 8;

  if (src_h < blk_wd || src_w < blk_wd) {
    rotate_buffer_clockwise(src_buffer, dst_buffer, src_w, src_h, src_stride, dst_stride, 270);
    return;
  }

  int sub_img_w = (src_w / blk_wd) * blk_wd;
  uint8x8_t s[blk_wd];
  int i = 0;

  while (1) {
    uint8_t* dst_blk = dst_buffer + i + (src_w - blk_wd) * dst_stride;
    uint8_t* src_blk = src_buffer + (i * src_stride);
    int j;

    for (j = 0; j < sub_img_w; j += blk_wd, src_blk += blk_wd, dst_blk -= (blk_wd * dst_stride)) {
      load_u8_8x8(src_blk, src_stride, &s[0], &s[1], &s[2], &s[3], &s[4], &s[5], &s[6], &s[7]);
      transpose_u8_8x8(&s[0], &s[1], &s[2], &s[3], &s[4], &s[5], &s[6], &s[7]);
      store_u8_8x8(dst_blk, dst_stride, s[7], s[6], s[5], s[4], s[3], s[2], s[1], s[0]);
    }
    if (sub_img_w < src_w) {
      dst_blk += (blk_wd - 1) * dst_stride;
      for (int k = 0; k < blk_wd; k++) {
        for (int l = 0; l < (src_w - sub_img_w); l++) {
          dst_blk[-l * dst_stride + k] = src_blk[k * src_stride + l];
        }
      }
    }
    i += blk_wd;
    if (i == src_h) break;
    if (i + blk_wd > src_h) i = src_h - blk_wd;
  }
}

static void rotate_buffer_clockwise_270_neon_uint16_t(uint16_t* src_buffer, uint16_t* dst_buffer,
                                                      int src_w, int src_h, int src_stride,
                                                      int dst_stride) {
  const int blk_wd = 8;

  if (src_h < blk_wd || src_w < blk_wd) {
    rotate_buffer_clockwise(src_buffer, dst_buffer, src_w, src_h, src_stride, dst_stride, 270);
    return;
  }

  int sub_img_w = (src_w / blk_wd) * blk_wd;
  uint16x8_t s[blk_wd];
  int i = 0;

  while (1) {
    uint16_t* dst_blk = dst_buffer + i + (src_w - blk_wd) * dst_stride;
    uint16_t* src_blk = src_buffer + (i * src_stride);
    int j;

    for (j = 0; j < sub_img_w; j += blk_wd, src_blk += blk_wd, dst_blk -= (blk_wd * dst_stride)) {
      load_u16_8x8(src_blk, src_stride, &s[0], &s[1], &s[2], &s[3], &s[4], &s[5], &s[6], &s[7]);
      transpose_u16_8x8(&s[0], &s[1], &s[2], &s[3], &s[4], &s[5], &s[6], &s[7]);
      store_u16_8x8(dst_blk, dst_stride, s[7], s[6], s[5], s[4], s[3], s[2], s[1], s[0]);
    }
    if (sub_img_w < src_w) {
      dst_blk += (blk_wd - 1) * dst_stride;
      for (int k = 0; k < blk_wd; k++) {
        for (int l = 0; l < (src_w - sub_img_w); l++) {
          dst_blk[-l * dst_stride + k] = src_blk[k * src_stride + l];
        }
      }
    }
    i += blk_wd;
    if (i == src_h) break;
    if (i + blk_wd > src_h) i = src_h - blk_wd;
  }
}

static void rotate_buffer_clockwise_270_neon_uint32_t(uint32_t* src_buffer, uint32_t* dst_buffer,
                                                      int src_w, int src_h, int src_stride,
                                                      int dst_stride) {
  const int blk_wd = 4;

  if (src_h < blk_wd || src_w < blk_wd) {
    rotate_buffer_clockwise(src_buffer, dst_buffer, src_w, src_h, src_stride, dst_stride, 270);
    return;
  }

  int sub_img_w = (src_w / blk_wd) * blk_wd;
  uint32x4_t s[blk_wd];
  int i = 0;

  while (1) {
    uint32_t* dst_blk = dst_buffer + i + (src_w - blk_wd) * dst_stride;
    uint32_t* src_blk = src_buffer + (i * src_stride);
    int j;

    for (j = 0; j < sub_img_w; j += blk_wd, src_blk += blk_wd, dst_blk -= (blk_wd * dst_stride)) {
      load_u32_4x4(src_blk, src_stride, &s[0], &s[1], &s[2], &s[3]);
      transpose_u32_4x4(&s[0], &s[1], &s[2], &s[3]);
      store_u32_4x4(dst_blk, dst_stride, s[3], s[2], s[1], s[0]);
    }
    if (sub_img_w < src_w) {
      dst_blk += (blk_wd - 1) * dst_stride;
      for (int k = 0; k < blk_wd; k++) {
        for (int l = 0; l < (src_w - sub_img_w); l++) {
          dst_blk[-l * dst_stride + k] = src_blk[k * src_stride + l];
        }
      }
    }
    i += blk_wd;
    if (i == src_h) break;
    if (i + blk_wd > src_h) i = src_h - blk_wd;
  }
}

static void rotate_buffer_clockwise_270_neon_uint64_t(uint64_t* src_buffer, uint64_t* dst_buffer,
                                                      int src_w, int src_h, int src_stride,
                                                      int dst_stride) {
  const int blk_wd = 2;

  if (src_h < blk_wd || src_w < blk_wd) {
    rotate_buffer_clockwise(src_buffer, dst_buffer, src_w, src_h, src_stride, dst_stride, 270);
    return;
  }

  int sub_img_w = (src_w / blk_wd) * blk_wd;
  uint64x2_t s[blk_wd];
  int i = 0;

  while (1) {
    uint64_t* dst_blk = dst_buffer + i + (src_w - blk_wd) * dst_stride;
    uint64_t* src_blk = src_buffer + (i * src_stride);
    int j;

    for (j = 0; j < sub_img_w; j += blk_wd, src_blk += blk_wd, dst_blk -= (blk_wd * dst_stride)) {
      load_u64_2x2(src_blk, src_stride, &s[0], &s[1]);
      rotate270_u64_2x2(&s[0], &s[1]);
      store_u64_2x2(dst_blk, dst_stride, s[0], s[1]);
    }
    if (sub_img_w < src_w) {
      dst_blk += (blk_wd - 1) * dst_stride;
      for (int k = 0; k < blk_wd; k++) {
        for (int l = 0; l < (src_w - sub_img_w); l++) {
          dst_blk[-l * dst_stride + k] = src_blk[k * src_stride + l];
        }
      }
    }
    i += blk_wd;
    if (i == src_h) break;
    if (i + blk_wd > src_h) i = src_h - blk_wd;
  }
}

template <typename T>
void mirror_buffer_neon(T* src_buffer, T* dst_buffer, int src_w, int src_h, int src_stride,
                        int dst_stride, uhdr_mirror_direction_t direction) {
  if (direction == UHDR_MIRROR_VERTICAL) {
    if constexpr (sizeof(T) == 1) {
      mirror_buffer_vertical_neon_uint8_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                          dst_stride);
    } else if constexpr (sizeof(T) == 2) {
      mirror_buffer_vertical_neon_uint16_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                           dst_stride);
    } else if constexpr (sizeof(T) == 4) {
      mirror_buffer_vertical_neon_uint32_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                           dst_stride);
    } else if constexpr (sizeof(T) == 8) {
      mirror_buffer_vertical_neon_uint64_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                           dst_stride);
    }

  } else if (direction == UHDR_MIRROR_HORIZONTAL) {
    if constexpr (sizeof(T) == 1) {
      mirror_buffer_horizontal_neon_uint8_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                            dst_stride);
    } else if constexpr (sizeof(T) == 2) {
      mirror_buffer_horizontal_neon_uint16_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                             dst_stride);
    } else if constexpr (sizeof(T) == 4) {
      mirror_buffer_horizontal_neon_uint32_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                             dst_stride);
    } else if constexpr (sizeof(T) == 8) {
      mirror_buffer_horizontal_neon_uint64_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                             dst_stride);
    }
  }
}

template <typename T>
void rotate_buffer_clockwise_180_neon(T* src_buffer, T* dst_buffer, int src_w, int src_h,
                                      int src_stride, int dst_stride) {
  if constexpr (sizeof(T) == 1) {
    mirror_buffer_horizontal_neon_uint8_t(src_buffer + (src_h - 1) * src_stride, dst_buffer, src_w,
                                          src_h, -src_stride, dst_stride);
  } else if constexpr (sizeof(T) == 2) {
    mirror_buffer_horizontal_neon_uint16_t(src_buffer + (src_h - 1) * src_stride, dst_buffer, src_w,
                                           src_h, -src_stride, dst_stride);
  } else if constexpr (sizeof(T) == 4) {
    mirror_buffer_horizontal_neon_uint32_t(src_buffer + (src_h - 1) * src_stride, dst_buffer, src_w,
                                           src_h, -src_stride, dst_stride);
  } else if constexpr (sizeof(T) == 8) {
    mirror_buffer_horizontal_neon_uint64_t(src_buffer + (src_h - 1) * src_stride, dst_buffer, src_w,
                                           src_h, -src_stride, dst_stride);
  }
}

template <typename T>
void rotate_buffer_clockwise_90_neon(T* src_buffer, T* dst_buffer, int src_w, int src_h,
                                     int src_stride, int dst_stride) {
  if constexpr (sizeof(T) == 1) {
    rotate_buffer_clockwise_90_neon_uint8_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                            dst_stride);
  } else if constexpr (sizeof(T) == 2) {
    rotate_buffer_clockwise_90_neon_uint16_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                             dst_stride);
  } else if constexpr (sizeof(T) == 4) {
    rotate_buffer_clockwise_90_neon_uint32_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                             dst_stride);
  } else if constexpr (sizeof(T) == 8) {
    rotate_buffer_clockwise_90_neon_uint64_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                             dst_stride);
  }
}

template <typename T>
void rotate_buffer_clockwise_270_neon(T* src_buffer, T* dst_buffer, int src_w, int src_h,
                                      int src_stride, int dst_stride) {
  if constexpr (sizeof(T) == 1) {
    rotate_buffer_clockwise_270_neon_uint8_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                             dst_stride);
  } else if constexpr (sizeof(T) == 2) {
    rotate_buffer_clockwise_270_neon_uint16_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                              dst_stride);
  } else if constexpr (sizeof(T) == 4) {
    rotate_buffer_clockwise_270_neon_uint32_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                              dst_stride);
  } else if constexpr (sizeof(T) == 8) {
    rotate_buffer_clockwise_270_neon_uint64_t(src_buffer, dst_buffer, src_w, src_h, src_stride,
                                              dst_stride);
  }
}

template <typename T>
void rotate_buffer_clockwise_neon(T* src_buffer, T* dst_buffer, int src_w, int src_h,
                                  int src_stride, int dst_stride, int degrees) {
  if (degrees == 90) {
    rotate_buffer_clockwise_90_neon(src_buffer, dst_buffer, src_w, src_h, src_stride, dst_stride);
  } else if (degrees == 180) {
    rotate_buffer_clockwise_180_neon(src_buffer, dst_buffer, src_w, src_h, src_stride, dst_stride);
  } else if (degrees == 270) {
    rotate_buffer_clockwise_270_neon(src_buffer, dst_buffer, src_w, src_h, src_stride, dst_stride);
  }
}

template void mirror_buffer_neon<uint8_t>(uint8_t*, uint8_t*, int, int, int, int,
                                          uhdr_mirror_direction_t);
template void mirror_buffer_neon<uint16_t>(uint16_t*, uint16_t*, int, int, int, int,
                                           uhdr_mirror_direction_t);
template void mirror_buffer_neon<uint32_t>(uint32_t*, uint32_t*, int, int, int, int,
                                           uhdr_mirror_direction_t);
template void mirror_buffer_neon<uint64_t>(uint64_t*, uint64_t*, int, int, int, int,
                                           uhdr_mirror_direction_t);

template void rotate_buffer_clockwise_neon<uint8_t>(uint8_t*, uint8_t*, int, int, int, int, int);
template void rotate_buffer_clockwise_neon<uint16_t>(uint16_t*, uint16_t*, int, int, int, int, int);
template void rotate_buffer_clockwise_neon<uint32_t>(uint32_t*, uint32_t*, int, int, int, int, int);
template void rotate_buffer_clockwise_neon<uint64_t>(uint64_t*, uint64_t*, int, int, int, int, int);

}  // namespace ultrahdr
