#pragma once

#include <cstdint>

namespace photon::mgc_denoise {

/** V25 BoxDownsample: padded planar Q14 YUV; output dimensions divide by 2^log2_scale. */
int RunGuidedBoxDownsample(const int16_t* linear_yuv, int width, int height,
                          int log2_scale, int16_t* low_yuv);
/** V25 GuidedUpsample+sharpen: Q14 linear guides and U12 encoded low YUV.
 * Output allocates width * round_up(height, 2) * 3 uint16 samples. */
int RunGuidedUpsampleTo16Bit(const int16_t* guide, int guide_width, int guide_height,
    const int16_t* low_guide, const int16_t* low_output_yuv, int scale,
    int width, int height, const float curves[30], float attenuation, uint16_t* output);

}  // namespace photon::mgc_denoise
