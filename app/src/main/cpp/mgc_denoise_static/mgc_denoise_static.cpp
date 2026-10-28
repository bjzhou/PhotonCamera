// Host wrappers of the MGC FinishRaw sharpen and GuidedUpsample AOT kernels.
#include "mgc_denoise_static.h"

#include <cmath>
#include <cstddef>
#include <cstdint>

namespace photon::mgc_denoise {
namespace {

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

static_assert(sizeof(HalideBuffer) == 56);
static_assert(sizeof(HalideDimension) == 16);
static_assert(offsetof(HalideBuffer, type) == 32);
static_assert(offsetof(HalideBuffer, dimensions) == 36);
static_assert(offsetof(HalideBuffer, dim) == 40);

using SharpenTo16BitFn = int (*)(
    void*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    float);
extern "C" int photon_mgc_sharpen_to_16_bit_halide(
    void*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    float);

HalideBuffer MakeBuffer(
    void* host,
    HalideType type,
    int dimensions,
    const HalideDimension* dimension_data) {
    return HalideBuffer{
        0,
        nullptr,
        static_cast<uint8_t*>(host),
        0,
        type,
        dimensions,
        dimension_data,
        nullptr,
    };
}

}  // namespace

int RunSharpenTo16Bit(
    const int16_t* input_yuv,
    int width,
    int height,
    const float curves[30],
    const float relative_corner_acutance_correction[3],
    float sharpen_attenuation_scale,
    uint16_t* output_interleaved_rgb) {
    if (input_yuv == nullptr || curves == nullptr ||
        relative_corner_acutance_correction == nullptr ||
        output_interleaved_rgb == nullptr || width <= 0 || height <= 0 ||
        !std::isfinite(sharpen_attenuation_scale)) {
        return -1;
    }
    const int pixel_count = width * height;
    const HalideDimension input_dimensions[] = {
        {0, width, 1, 0},
        {0, height, width, 0},
        {0, 3, pixel_count, 0},
    };
    const HalideDimension curve_dimensions[] = {
        {0, 1, 1, 0},
        {0, 5, 1, 0},
        {0, 3, 5, 0},
        {0, 2, 15, 0},
    };
    const HalideDimension correction_dimensions[] = {
        {0, 3, 1, 0},
    };
    const HalideDimension output_dimensions[] = {
        {0, width, 3, 0},
        // This AOT schedules two output rows per iteration, including its final tail.
        // Input bounds stay exact so the kernel applies its original edge extension.
        {0, (height + 1) & ~1, width * 3, 0},
        {0, 3, 1, 0},
    };
    HalideBuffer input_buffer = MakeBuffer(
        const_cast<int16_t*>(input_yuv),
        {0, 16, 1},
        3,
        input_dimensions);
    HalideBuffer curve_buffer = MakeBuffer(
        const_cast<float*>(curves),
        {2, 32, 1},
        4,
        curve_dimensions);
    HalideBuffer correction_buffer = MakeBuffer(
        const_cast<float*>(relative_corner_acutance_correction),
        {2, 32, 1},
        1,
        correction_dimensions);
    HalideBuffer output_buffer = MakeBuffer(
        output_interleaved_rgb,
        {1, 16, 1},
        3,
        output_dimensions);
    const auto function = reinterpret_cast<SharpenTo16BitFn>(
        &photon_mgc_sharpen_to_16_bit_halide);
    return function(
        nullptr,
        &input_buffer,
        &curve_buffer,
        &correction_buffer,
        &output_buffer,
        sharpen_attenuation_scale);
}


// V25 S16 guide uses the same padded Q14 linear YUV domain as FinishRaw.
extern "C" int photon_mgc_box_downsample_s16(
    void*, HalideBuffer*, HalideBuffer*, int, HalideBuffer*);
extern "C" int photon_mgc_guided_upsample_s16_to_16_bit(
    void*, HalideBuffer*, HalideBuffer*, HalideBuffer*, HalideBuffer*, HalideBuffer*,
    int, float, HalideBuffer*, float, HalideBuffer*, float, HalideBuffer*);

int RunGuidedBoxDownsample(const int16_t* linear_yuv, int width, int height,
                          int log2_scale, int16_t* low_yuv) {
    if (!linear_yuv || !low_yuv || width <= 0 || height <= 0 ||
        width % 128 || height % 16 || log2_scale < 1 || log2_scale > 2) return -1;
    const int scale = 1 << log2_scale;
    const HalideDimension full[] = {{0,width,1,0},{0,height,width,0},{0,3,width*height,0}};
    const HalideDimension low[] = {{0,width/scale,1,0},
        {0,height/scale,width/scale,0},{0,3,(width/scale)*(height/scale),0}};
    auto y = MakeBuffer(const_cast<int16_t*>(linear_yuv), {0,16,1}, 2, full);
    auto uv = MakeBuffer(const_cast<int16_t*>(linear_yuv), {0,16,1}, 3, full);
    auto out = MakeBuffer(low_yuv, {0,16,1}, 3, low);
    return photon_mgc_box_downsample_s16(nullptr, &y, &uv, log2_scale, &out);
}

int RunGuidedUpsampleTo16Bit(const int16_t* guide, int guide_width, int guide_height,
    const int16_t* low_guide, const int16_t* low_output_yuv, int scale,
    int width, int height, const float curves[30], float attenuation, uint16_t* output) {
    if (!guide || !low_guide || !low_output_yuv || !curves || !output ||
        guide_width <= 0 || guide_height <= 0 || guide_width % 128 || guide_height % 16 ||
        width <= 0 || height <= 0 || width > guide_width || height > guide_height ||
        (scale != 2 && scale != 4) || !std::isfinite(attenuation) || attenuation < 0) return -1;
    const int lw = guide_width / scale, lh = guide_height / scale;
    const HalideDimension full[] = {{0,guide_width,1,0},{0,guide_height,guide_width,0}};
    const HalideDimension low[] = {{0,lw,1,0},{0,lh,lw,0},{0,3,lw*lh,0}};
    const HalideDimension curve_dims[] = {{0,1,1,0},{0,5,1,0},{0,3,5,0},{0,2,15,0}};
    const HalideDimension corner_dims[] = {{0,3,1,0}};
    const HalideDimension out_dims[] = {{0,width,3,0},{0,(height+1)&~1,width*3,0},{0,3,1,0}};
    float corner[3] = {};
    auto g = MakeBuffer(const_cast<int16_t*>(guide), {0,16,1}, 2, full);
    auto lg = MakeBuffer(const_cast<int16_t*>(low_guide), {0,16,1}, 2, low);
    auto lo = MakeBuffer(const_cast<int16_t*>(low_output_yuv), {0,16,1}, 3, low);
    auto cv = MakeBuffer(const_cast<float*>(curves), {2,32,1}, 4, curve_dims);
    auto cc = MakeBuffer(corner, {2,32,1}, 1, corner_dims);
    auto out = MakeBuffer(output, {1,16,1}, 3, out_dims);
    // Non-skin S16 variant: skin buffers and the skin multiplier are unused.
    return photon_mgc_guided_upsample_s16_to_16_bit(
        nullptr, &g, nullptr, &lg, &lo, nullptr, scale, 0.f, &cv, attenuation, &cc, 0.f, &out);
}

}  // namespace photon::mgc_denoise
