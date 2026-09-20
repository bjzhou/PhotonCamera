// MGC V25 gcam::Resample Lanczos-3, restricted to the RAISR 2x grid.
#ifndef PHOTON_MGC_RAISR_RESAMPLE_H
#define PHOTON_MGC_RAISR_RESAMPLE_H

#include "mgc_raisr_executor.h"

#include <arm_neon.h>
#include <algorithm>
#include <array>
#include <cmath>
#include <cstdint>
#include <vector>

namespace photon_raisr {
namespace resample_detail {
struct Weights {
    int begin = 0;
    int count = 0;
    std::array<int16_t, 9> values{};
};

// The original removes out-of-image taps before normalization. Its signed Q6
// weights sum to 64; rounding residue belongs to the largest absolute tap.
inline Weights MakeWeights(int output, int extent) {
    constexpr float pi = 3.14159265358979323846f;
    const float center = (float(output) + 0.5f) * 0.5f - 0.5f;
    const int nearest = int(std::round(center));
    Weights result;
    result.begin = std::max(0, nearest - 4);
    result.count = std::min(extent - 1, nearest + 4) - result.begin + 1;
    float weights[9]{};
    float sum = 0.0f;
    for (int tap = 0; tap < result.count; ++tap) {
        const float offset = float(result.begin + tap) - center;
        if (std::abs(offset) <= 3.0f) {
            const float x = offset * pi;
            const float y = (offset * (1.0f / 3.0f)) * pi;
            weights[tap] = (std::sin(x) / x) * (std::sin(y) / y);
        }
        sum += weights[tap];
    }
    int total = 0;
    int largest = 0;
    for (int tap = 0; tap < result.count; ++tap) {
        result.values[tap] = int16_t(std::round(weights[tap] * (64.0f / sum)));
        total += result.values[tap];
        if (std::abs(result.values[tap]) > std::abs(result.values[largest])) largest = tap;
    }
    result.values[largest] += 64 - total;
    while (result.count > 1 && result.values[result.count - 1] == 0) --result.count;
    while (result.count > 1 && result.values[0] == 0) {
        ++result.begin;
        --result.count;
        for (int tap = 0; tap < result.count; ++tap) result.values[tap] = result.values[tap + 1];
    }
    return result;
}

inline uint8_t Quantize(int sum) {
    return uint8_t(std::clamp((sum + 32) >> 6, 0, 255));
}

inline Weights GridWeights(int output, int extent) {
    if (output < 6 || output >= extent * 2 - 6) return MakeWeights(output, extent);
    static const Weights phases[2] = {MakeWeights(6, 16), MakeWeights(7, 16)};
    Weights result = phases[output & 1];
    result.begin += output / 2 - 3;
    return result;
}

inline uint8x16_t Quantize(int16x8_t low, int16x8_t high) {
    return vcombine_u8(vqrshrun_n_s16(low, 6), vqrshrun_n_s16(high, 6));
}

inline void Accumulate(uint8x16_t bytes, int16_t weight, int16x8_t& low, int16x8_t& high) {
    low = vmlaq_n_s16(low, vreinterpretq_s16_u16(vmovl_u8(vget_low_u8(bytes))), weight);
    high = vmlaq_n_s16(high, vreinterpretq_s16_u16(vmovl_u8(vget_high_u8(bytes))), weight);
}

template <int Channels>
inline void Horizontal(const uint8_t* row, int width, const std::vector<Weights>& weights,
                       uint8_t* output) {
    int x = 0;
    const auto scalar = [&](int destination) {
        const Weights& w = weights[destination];
        for (int channel = 0; channel < Channels; ++channel) {
            int sum = 0;
            for (int tap = 0; tap < w.count; ++tap) {
                sum += row[(w.begin + tap) * Channels + channel] * w.values[tap];
            }
            output[destination * Channels + channel] = Quantize(sum);
        }
    };
    // A vector covers 16 adjacent source pixels and both destination phases.
    // Only the complete interior uses shared phase weights; boundaries retain
    // their individually normalized kernels.
    while (x < std::min(width, 3)) {
        scalar(x * 2);
        scalar(x * 2 + 1);
        ++x;
    }
    for (; x + 18 < width; x += 16) {
        uint8x16_t phases[2][Channels];
        for (int phase = 0; phase < 2; ++phase) {
            const Weights& w = weights[x * 2 + phase];
            int16x8_t low[Channels], high[Channels];
            for (int channel = 0; channel < Channels; ++channel) {
                low[channel] = high[channel] = vdupq_n_s16(0);
            }
            for (int tap = 0; tap < w.count; ++tap) {
                const uint8_t* input = row + (w.begin + tap) * Channels;
                if constexpr (Channels == 3) {
                    const uint8x16x3_t pixels = vld3q_u8(input);
                    for (int channel = 0; channel < 3; ++channel) {
                        Accumulate(pixels.val[channel], w.values[tap], low[channel], high[channel]);
                    }
                } else {
                    Accumulate(vld1q_u8(input), w.values[tap], low[0], high[0]);
                }
            }
            for (int channel = 0; channel < Channels; ++channel) {
                phases[phase][channel] = Quantize(low[channel], high[channel]);
            }
        }
        if constexpr (Channels == 3) {
            uint8x16x3_t first, second;
            for (int channel = 0; channel < 3; ++channel) {
                first.val[channel] = vzip1q_u8(phases[0][channel], phases[1][channel]);
                second.val[channel] = vzip2q_u8(phases[0][channel], phases[1][channel]);
            }
            vst3q_u8(output + x * 6, first);
            vst3q_u8(output + x * 6 + 48, second);
        } else {
            vst1q_u8(output + x * 2, vzip1q_u8(phases[0][0], phases[1][0]));
            vst1q_u8(output + x * 2 + 16, vzip2q_u8(phases[0][0], phases[1][0]));
        }
    }
    for (; x < width; ++x) {
        scalar(x * 2);
        scalar(x * 2 + 1);
    }
}
}  // namespace resample_detail

// Input/output are tightly packed UInt8 gray (channels=1) or RGB (channels=3).
// Original order matters: vertically filter, round and saturate to UInt8, then
// horizontally filter, round and saturate again. Row-local scratch preserves
// that result without materializing a full intermediate image.
inline void ResampleLanczos3To2x(const uint8_t* source, int width, int height,
                                int channels, uint8_t* destination) {
    using namespace resample_detail;
    std::vector<Weights> horizontal(size_t(width) * 2);
    for (int x = 0; x < width * 2; ++x) horizontal[x] = GridWeights(x, width);
    const size_t source_stride = size_t(width) * channels;
    // Allocate before dispatch so allocation failure propagates to the caller,
    // never across a pthread entry point. ParallelForRows assigns eight-row
    // blocks; each block reuses one independently owned scratch row.
    const size_t blocks = (size_t(height) * 2 + kParallelRowBlockSize - 1) / kParallelRowBlockSize;
    std::vector<uint8_t> scratch(blocks * source_stride);
    ParallelForRows(height * 2, [&](int begin, int end) {
        uint8_t* row = scratch.data() + size_t(begin / kParallelRowBlockSize) * source_stride;
        for (int y = begin; y < end; ++y) {
            const Weights vertical = GridWeights(y, height);
            size_t offset = 0;
            for (; offset + 16 <= source_stride; offset += 16) {
                int16x8_t low = vdupq_n_s16(0), high = vdupq_n_s16(0);
                for (int tap = 0; tap < vertical.count; ++tap) {
                    Accumulate(vld1q_u8(source + size_t(vertical.begin + tap) * source_stride + offset),
                               vertical.values[tap], low, high);
                }
                vst1q_u8(row + offset, Quantize(low, high));
            }
            for (; offset < source_stride; ++offset) {
                int sum = 0;
                for (int tap = 0; tap < vertical.count; ++tap) {
                    sum += source[size_t(vertical.begin + tap) * source_stride + offset] * vertical.values[tap];
                }
                row[offset] = Quantize(sum);
            }
            uint8_t* output = destination + size_t(y) * source_stride * 2;
            if (channels == 3) Horizontal<3>(row, width, horizontal, output);
            else Horizontal<1>(row, width, horizontal, output);
        }
    });
}
}  // namespace photon_raisr
#endif
