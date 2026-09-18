#pragma once

#include <algorithm>
#include <arm_neon.h>
#include <cmath>
#include <cstddef>
#include <cstdint>

namespace photon::mgc_denoise {

// The GuidedUpsample guide has already received black-level/lens correction.
// Its only remaining raw boundary is WB + unsigned Q14 quantization, followed
// by RgbRawToYuv with black=0, gain=1, neutral gain map, white=16383.
// Under those fixed inputs the AOT's gain interpolation is identity and its
// final Q13 integer matrix is exactly the one below. Keep this specialization
// local to the guided boundary; general raw conversion still uses the AOT.
// Quantized RGB is in [0,16383], below the AOT's 29490 highlight knee;
// neither its highlight compression nor signed-16 saturation changes RGB.
// Matrix sums fit int32, and all rounded outputs fit int16. The V row retains
// the AOT's R + round((-7441 G - 751 B)/8192) operation order.
inline bool GuidedFloatRgbaToLinearYuv(const float *rgba, int width, int height,
                                      int padded_width, int padded_height,
                                      const float wb[3], int16_t *yuv) {
  if (!rgba || !wb || !yuv || width <= 0 || height <= 0 ||
      padded_width < width || padded_height < height || padded_width % 4 != 0)
    return false;
  for (int c = 0; c < 3; ++c)
    if (!std::isfinite(wb[c]) || wb[c] <= 0.f) return false;
  const size_t count = size_t(padded_width) * padded_height;
  int invalid = 0;
#pragma omp parallel for schedule(static) num_threads(4) reduction(| : invalid)
  for (int y = 0; y < padded_height; ++y) {
    const float *row = rgba + size_t(std::min(y, height - 1)) * width * 4;
    for (int x = 0; x < padded_width; x += 4) {
      float32x4x4_t input;
      if (x + 4 <= width) {
        input = vld4q_f32(row + size_t(x) * 4);
      } else {
        // Replicate the original unpadded border, including incomplete groups.
        float edge[16];
        for (int lane = 0; lane < 4; ++lane)
          for (int c = 0; c < 4; ++c)
            edge[lane * 4 + c] = row[size_t(std::min(x + lane, width - 1)) * 4 + c];
        input = vld4q_f32(edge);
      }
      uint32x4_t nonfinite = vdupq_n_u32(0);
      int16x4_t rgb[3];
      for (int c = 0; c < 3; ++c) {
        const auto exponent = vandq_u32(vreinterpretq_u32_f32(input.val[c]),
                                        vdupq_n_u32(0x7f800000));
        nonfinite = vorrq_u32(nonfinite,
                              vceqq_u32(exponent, vdupq_n_u32(0x7f800000)));
      }
      if (vmaxvq_u32(nonfinite)) {
        invalid = 1;
        continue;
      }
      for (int c = 0; c < 3; ++c) {
        const auto balanced = vmulq_n_f32(input.val[c], wb[c]);
        const auto bounded = vminq_f32(vmaxq_f32(balanced, vdupq_n_f32(0.f)),
                                       vdupq_n_f32(1.f));
        // lround rounds ties away from zero, independently of FPCR mode.
        rgb[c] = vreinterpret_s16_u16(vmovn_u32(
            vcvtaq_u32_f32(vmulq_n_f32(bounded, 16383.f))));
      }
      const auto r = rgb[0], g = rgb[1], b = rgb[2];
      const auto yy = vmlal_n_s16(vmlal_n_s16(vmull_n_s16(r, 1742), g, 5859), b, 591);
      const auto uu = vmlal_n_s16(vmlal_n_s16(vmull_n_s16(r, -1331), g, -4477), b, 5808);
      const auto vv = vmlal_n_s16(vmull_n_s16(g, -7441), b, -751);
      const size_t dest = size_t(y) * padded_width + x;
      // AOT uses signed rounding shifts (ties toward +infinity), not lrintf.
      vst1_s16(yuv + dest, vqrshrn_n_s32(yy, 13));
      vst1_s16(yuv + count + dest, vqrshrn_n_s32(uu, 13));
      vst1_s16(yuv + count * 2 + dest, vadd_s16(r, vqrshrn_n_s32(vv, 13)));
    }
  }
  return invalid == 0;
}

} // namespace photon::mgc_denoise
