// MGC ReplaceLumaPixelContig3ChOptHalide (0x3C4F4D8), core-cropped RGBA sink.
// Each RGB channel receives the same signed luma delta before U8 saturation.
#ifndef PHOTON_MGC_RAISR_COLOR_H
#define PHOTON_MGC_RAISR_COLOR_H

#include <algorithm>
#include <arm_neon.h>
#include <cstddef>
#include <cstdint>

#include "mgc_raisr_executor.h"

namespace photon_raisr {

inline void ReplaceLumaRgba8(const uint8_t* rgb, const uint8_t* old_luma,
                             const uint8_t* new_luma, int width, int left, int top,
                             int core_width, int core_height, uint8_t* output) {
    ParallelForRows(core_height, [&](int begin, int end) {
        for (int y = begin; y < end; ++y) {
            const size_t offset = size_t(y + top) * width + left;
            const uint8_t* color = rgb + offset * 3;
            const uint8_t* before = old_luma + offset;
            const uint8_t* after = new_luma + offset;
            uint8_t* target = output + size_t(y) * core_width * 4;
            int x = 0;
            for (; x + 7 < core_width; x += 8) {
                const int16x8_t delta = vreinterpretq_s16_u16(
                    vsubl_u8(vld1_u8(after + x), vld1_u8(before + x)));
                const uint8x8x3_t source = vld3_u8(color + x * 3);
                uint8x8x4_t result;
                for (int c = 0; c < 3; ++c) {
                    result.val[c] = vqmovun_s16(vaddq_s16(delta,
                        vreinterpretq_s16_u16(vmovl_u8(source.val[c]))));
                }
                result.val[3] = vdup_n_u8(255);
                vst4_u8(target + x * 4, result);
            }
            for (; x < core_width; ++x) {
                const int delta = int(after[x]) - before[x];
                for (int c = 0; c < 3; ++c) {
                    target[x * 4 + c] = uint8_t(std::clamp(int(color[x * 3 + c]) + delta, 0, 255));
                }
                target[x * 4 + 3] = 255;
            }
        }
    });
}

}  // namespace photon_raisr
#endif
