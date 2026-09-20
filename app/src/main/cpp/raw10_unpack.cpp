#include "raw10_unpack.h"

#include <arm_neon.h>

namespace photon {

void UnpackRaw10(const uint8_t *source, uint16_t *destination, size_t width,
                 size_t height, size_t rowStride) {
  // Each RAW10 group contains four high bytes and one byte of packed low bits.
  // https://developer.android.com/reference/android/graphics/ImageFormat#RAW10
  // The two table registers contain source[0..15] and source[4..19]. Overlapping
  // loads cover exactly 20 bytes, including when the block ends at buffer.limit.
  const uint8x16_t highIndices = {0, 1, 2, 3, 5, 6, 7, 8,
                                 10, 11, 12, 13, 15, 28, 29, 30};
  const uint8x16_t lowIndices = {4, 4, 4, 4, 9, 9, 9, 9,
                                14, 14, 14, 14, 31, 31, 31, 31};
  const int8x16_t lowShifts = {0, -2, -4, -6, 0, -2, -4, -6,
                              0, -2, -4, -6, 0, -2, -4, -6};
  const uint8x16_t lowMask = vdupq_n_u8(3);
  const size_t vectorWidth = width & ~size_t{15};

  for (size_t y = 0; y < height; ++y) {
    const uint8_t *input = source + y * rowStride;
    uint16_t *output = destination + y * width;
    size_t x = 0;
    for (; x < vectorWidth; x += 16, input += 20, output += 16) {
      const uint8x16x2_t packed = {{vld1q_u8(input), vld1q_u8(input + 4)}};
      const uint8x16_t high = vqtbl2q_u8(packed, highIndices);
      const uint8x16_t low = vandq_u8(
          vshlq_u8(vqtbl2q_u8(packed, lowIndices), lowShifts), lowMask);
      vst1q_u16(output, vorrq_u16(vshll_n_u8(vget_low_u8(high), 2),
                                 vmovl_u8(vget_low_u8(low))));
      vst1q_u16(output + 8, vorrq_u16(vshll_n_u8(vget_high_u8(high), 2),
                                     vmovl_u8(vget_high_u8(low))));
    }
    // Up to three remaining groups; never read row padding or the next row.
    for (; x < width; x += 4, input += 5, output += 4) {
      const uint8_t low = input[4];
      output[0] = (static_cast<uint16_t>(input[0]) << 2) | (low & 3);
      output[1] = (static_cast<uint16_t>(input[1]) << 2) | ((low >> 2) & 3);
      output[2] = (static_cast<uint16_t>(input[2]) << 2) | ((low >> 4) & 3);
      output[3] = (static_cast<uint16_t>(input[3]) << 2) | (low >> 6);
    }
  }
}

}  // namespace photon
