// MGC V25 Polysharp stage: the separable kernel and the polynomial filter.
//
// Polysharp runs on the upscaled luma after the RAISR refine chain.  In the
// original (`polysharp_raisr2020.cc` / `polysharp_utils.cc`) `Polysharp()`
// 0x357680C builds a blur kernel, derives five polynomial coefficients, and then
// runs `SeparableIterativePolyFilterHalide`, then halo masking and blending.
//
// The Gaussian builder (0x35882FC) is followed by a relative 0.03 crop
// (0x3588CB4), then center-row/column normalization (0x3588880). Preserve all
// three steps and their float rounding before calling the separable filter.

#include <algorithm>
#include <arm_neon.h>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <vector>

#include "mgc_raisr_timing.h"
#include "mgc_raisr_executor.h"

namespace {

// Halide AOT descriptor layout, identical to mgc_raisr_driver.cpp (the capsules
// share the runtime ABI, so the layouts are pinned by the same static asserts).
struct HalideType {
    uint8_t code;
    uint8_t bits;
    uint16_t lanes;
};

struct HalideDimension {
    int32_t min;
    int32_t extent;
    int32_t stride;
    uint32_t flags;
};

struct HalideBuffer {
    uint64_t device;
    const void* device_interface;
    uint8_t* host;
    uint64_t flags;
    HalideType type;
    int32_t dimensions;
    const HalideDimension* dim;
    void* padding;
};

static_assert(sizeof(HalideType) == 4, "HalideType layout");
static_assert(sizeof(HalideDimension) == 16, "HalideDimension layout");
static_assert(sizeof(HalideBuffer) == 56, "HalideBuffer layout");

HalideBuffer MakeBuffer(void* host, uint8_t code, uint8_t bits, int32_t dimensions,
                        const HalideDimension* dim) {
    HalideBuffer buffer{};
    buffer.host = static_cast<uint8_t*>(host);
    buffer.type = HalideType{code, bits, 1};
    buffer.dimensions = dimensions;
    buffer.dim = dim;
    return buffer;
}

HalideBuffer MakeU8Buffer(void* host, int32_t dimensions, const HalideDimension* dim) {
    return MakeBuffer(host, 1, 8, dimensions, dim);
}

HalideBuffer MakeF32Buffer(void* host, int32_t dimensions, const HalideDimension* dim) {
    return MakeBuffer(host, 2, 32, dimensions, dim);
}


std::vector<float> BuildGaussianKernel(float sigma) {
    // CMake disables contraction/reassociation: the original exp argument
    // uses separate float multiply/add instructions.
    std::vector<float> kernel;
    if (!(sigma > 0.0f)) {
        kernel.push_back(1.0f);
        return kernel;
    }
    const int half = int(sigma * 3.0f);
    const int size = 4 * half + 3;
    const int center = size / 2;
    std::vector<float> gaussian(size_t(size) * size);
    const float variance = sigma * sigma;
    const float inverse = 1.0f / (variance + variance);
    float total = 0.0f;
    for (int y = 0; y < size; ++y) {
        for (int x = 0; x < size; ++x) {
            const float dx = float(x - center), dy = float(y - center);
            const float value = std::exp(-(inverse * (dy * dy) + inverse * (dx * dx)));
            gaussian[size_t(y) * size + x] = value;
            total += value;
        }
    }
    const float normalization = 1.0f / total;
    for (float& value : gaussian) value *= normalization;
    const float* row = gaussian.data() + size_t(center) * size;
    const float threshold = row[center] * 0.03f;
    int radius = 0;
    for (int offset = 1; offset <= center; ++offset) {
        if (row[center + offset] > threshold) radius = offset;
    }
    kernel.assign(row + center - radius, row + center + radius + 1);
    total = 0.0f;
    for (float value : kernel) total += value;
    const float axis_normalization = 1.0f / total;
    for (float& value : kernel) value *= axis_normalization;
    return kernel;
}

}  // namespace

extern "C" int photon_mgc_polysharp_kernel_size(float sigma) {
    return int(BuildGaussianKernel(sigma).size());
}

// Lifted SeparableIterativePolyFilterHalide (mgc_polysharp_static.S).  The
// lib_enhance pipelines take no user_context; this one interleaves the two
// kernel sizes between the buffers.
extern "C" int photon_mgc_polysharp_poly_filter(HalideBuffer*, HalideBuffer*, int32_t,
                                                 HalideBuffer*, int32_t, HalideBuffer*,
                                                 HalideBuffer*);
extern "C" int photon_mgc_polysharp_halo_mask(HalideBuffer*, HalideBuffer*, HalideBuffer*);
// tau is in s0 under AAPCS64; it does not change the four buffer registers.
extern "C" int photon_mgc_polysharp_blend_tau_mask(HalideBuffer*, HalideBuffer*,
                                                    HalideBuffer*, HalideBuffer*, float);

namespace {

// 0x40A2DD8 with normalized {1,1,1} kernels. The original U8 separable
// convolution rounds only after both axes, and clamps at the image boundary.
void BoxBlur3x3(const uint8_t* source, int width, int height, uint8_t* output) {
    std::vector<uint16_t> rows(size_t(width) * height);
    photon_raisr::ParallelForRows(height, [&](int begin, int end) {
        for (int y = begin; y < end; ++y) {
            const auto* line = source + size_t(y) * width;
            for (int x = 0; x < width; ++x) {
                rows[size_t(y) * width + x] = uint16_t(line[std::max(0, x - 1)]) +
                    line[x] + line[std::min(width - 1, x + 1)];
            }
        }
    });
    photon_raisr::ParallelForRows(height, [&](int begin, int end) {
        for (int y = begin; y < end; ++y) {
            for (int x = 0; x < width; ++x) {
                const int sum = rows[size_t(std::max(0, y - 1)) * width + x] +
                    rows[size_t(y) * width + x] +
                    rows[size_t(std::min(height - 1, y + 1)) * width + x];
                output[size_t(y) * width + x] = uint8_t((sum + 4) / 9);
            }
        }
    });
}

// 0x3581E44: GaussianFilterFloatHalide at sigma=1.5, radius=ceil(3*sigma)=5.
void BlurHaloMask(const std::vector<float>& source, int width, int height,
                  std::vector<float>& output) {
    constexpr int radius = 5;
    // Halide's exp approximation at 0x4095998..0x4095A48, evaluated for the
    // fixed sigma/radius. Hex literals preserve its float rounding exactly.
    constexpr float kernel[] = {
        0x1.fab6bp-9f, 0x1.d4045ep-6f, 0x1.152a9ap-3f, 0x1.a4fab4p-2f,
        0x1.99fa5ap-1f, 0x1p+0f, 0x1.99fa5ap-1f, 0x1.a4fab4p-2f,
        0x1.152a9ap-3f, 0x1.d4045ep-6f, 0x1.fab6bp-9f,
    };
    constexpr float total = 0x1.e12e98p+1f;
    std::vector<float> rows(source.size());
    photon_raisr::ParallelForRows(height, [&](int begin, int end) {
        for (int y = begin; y < end; ++y) {
            const float* line = source.data() + size_t(y) * width;
            float* target = rows.data() + size_t(y) * width;
            int x = 0;
            const auto scalar = [&](int column) {
                float value = 0.0f;
                for (int tap = -radius; tap <= radius; ++tap) {
                    value = std::fma(kernel[tap + radius],
                        line[std::clamp(column + tap, 0, width - 1)], value);
                }
                target[column] = value / total;
            };
            for (; x < std::min(radius, width); ++x) scalar(x);
            // Four independent pixels, preserving the original eleven FMA steps
            // and final IEEE division in each lane. No reassociation of taps.
            for (; x + 3 + radius < width; x += 4) {
                float32x4_t value = vdupq_n_f32(0.0f);
                for (int tap = -radius; tap <= radius; ++tap) {
                    value = vfmaq_n_f32(value, vld1q_f32(line + x + tap), kernel[tap + radius]);
                }
                vst1q_f32(target + x, vdivq_f32(value, vdupq_n_f32(total)));
            }
            for (; x < width; ++x) scalar(x);
        }
    });
    photon_raisr::ParallelForRows(height, [&](int begin, int end) {
        for (int y = begin; y < end; ++y) {
            const float* lines[2 * radius + 1];
            for (int tap = -radius; tap <= radius; ++tap) {
                lines[tap + radius] = rows.data() + size_t(std::clamp(y + tap, 0, height - 1)) * width;
            }
            float* target = output.data() + size_t(y) * width;
            int x = 0;
            for (; x + 3 < width; x += 4) {
                float32x4_t value = vdupq_n_f32(0.0f);
                for (int tap = 0; tap <= 2 * radius; ++tap) {
                    value = vfmaq_n_f32(value, vld1q_f32(lines[tap] + x), kernel[tap]);
                }
                vst1q_f32(target + x, vdivq_f32(value, vdupq_n_f32(total)));
            }
            for (; x < width; ++x) {
                float value = 0.0f;
                for (int tap = 0; tap <= 2 * radius; ++tap) {
                    value = std::fma(kernel[tap], lines[tap][x], value);
                }
                target[x] = value / total;
            }
        }
    });
}

}  // namespace

// Runs the polynomial filter over one luma plane.  `coefficients` holds the five
// weights the original derives in 0x228B598 (the first is always zero).
extern "C" int photon_mgc_polysharp_apply(const uint8_t* luma, int width, int height,
                                          float sigma, const float* coefficients,
                                          uint8_t* destination) {
    if (luma == nullptr || destination == nullptr || coefficients == nullptr || width <= 0 ||
        height <= 0) {
        return -1;
    }
    const std::vector<float> kernel = BuildGaussianKernel(sigma);
    std::vector<float> weights(coefficients, coefficients + 5);
    const HalideDimension image_dims[] = {
        {0, width, 1, 0},
        {0, height, width, 0},
    };
    const HalideDimension kernel_dims[] = {
        {0, int(kernel.size()), 1, 0},
    };
    const HalideDimension coeff_dims[] = {
        {0, 5, 1, 0},
    };
    HalideBuffer image = MakeU8Buffer(const_cast<uint8_t*>(luma), 2, image_dims);
    HalideBuffer kernel_x = MakeF32Buffer(const_cast<float*>(kernel.data()), 1, kernel_dims);
    HalideBuffer kernel_y = MakeF32Buffer(const_cast<float*>(kernel.data()), 1, kernel_dims);
    HalideBuffer coeff = MakeF32Buffer(weights.data(), 1, coeff_dims);
    HalideBuffer out = MakeU8Buffer(destination, 2, image_dims);
    return photon_raisr::Measure(&photon_raisr::Timing::polysharp, [&] {
        return photon_mgc_polysharp_poly_filter(&image, &kernel_x, int(kernel.size()), &kernel_y,
                                                int(kernel.size()), &coeff, &out);
    });
}

// The five polynomial weights `Polysharp()` 0x3576868 builds for the filter: four
// floats loaded from .rodata 0xBAAC2C plus the 1.0f stored at +0x10, i.e.
// {0, 6, -13, 7, 1}.  The embedded assert `coeff_polysharp[0] == 0.0f` matches.
extern "C" const float photon_mgc_polysharp_coefficients[5] = {0.0f, 6.0f, -13.0f, 7.0f, 1.0f};

// Polysharp() 0x357680C: polynomial image, then HaloRemoval(original, polynomial,
// sigma=1.5, tau=4, preblur=true). Never use the polynomial image as final output.
extern "C" int photon_mgc_polysharp_sharpen(const uint8_t* luma, int width, int height,
                                            float strength, uint8_t* destination) {
    if (luma == nullptr || destination == nullptr || width <= 0 || height <= 0 ||
        !std::isfinite(strength) || strength <= 0.0f) return -1;
    const size_t count = size_t(width) * height;
    std::vector<uint8_t> polynomial(count);
    int status = photon_mgc_polysharp_apply(luma, width, height, strength,
                                            photon_mgc_polysharp_coefficients, polynomial.data());
    if (status != 0) return status;
    std::vector<uint8_t> reference(count);
    photon_raisr::Measure(&photon_raisr::Timing::polysharp_box, [&] {
        BoxBlur3x3(luma, width, height, reference.data());
    });
    std::vector<float> mask(count), alpha(count);
    const HalideDimension dims[] = {{0, width, 1, 0}, {0, height, width, 0}};
    HalideBuffer ref = MakeU8Buffer(reference.data(), 2, dims);
    HalideBuffer filtered = MakeU8Buffer(polynomial.data(), 2, dims);
    HalideBuffer halo = MakeF32Buffer(mask.data(), 2, dims);
    status = photon_raisr::Measure(&photon_raisr::Timing::polysharp, [&] {
        return photon_mgc_polysharp_halo_mask(&ref, &filtered, &halo);
    });
    if (status != 0) return status;
    photon_raisr::Measure(&photon_raisr::Timing::polysharp_blur, [&] {
        BlurHaloMask(mask, width, height, alpha);
    });
    HalideBuffer original = MakeU8Buffer(const_cast<uint8_t*>(luma), 2, dims);
    HalideBuffer blend_mask = MakeF32Buffer(alpha.data(), 2, dims);
    HalideBuffer output = MakeU8Buffer(destination, 2, dims);
    return photon_raisr::Measure(&photon_raisr::Timing::polysharp, [&] {
        return photon_mgc_polysharp_blend_tau_mask(&original, &filtered, &blend_mask, &output, 4.0f);
    });
}

extern "C" int photon_mgc_polysharp_fill_kernel(float sigma, float* destination, int capacity) {
    const std::vector<float> kernel = BuildGaussianKernel(sigma);
    if (destination == nullptr || capacity < int(kernel.size())) {
        return int(kernel.size());
    }
    for (size_t index = 0; index < kernel.size(); ++index) {
        destination[index] = kernel[index];
    }
    return int(kernel.size());
}
