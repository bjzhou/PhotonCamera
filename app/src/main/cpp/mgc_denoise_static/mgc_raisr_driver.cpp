// MGC V25 RAISR output magnification driver.
//
// Chains the five lifted AOT kernels into the finish-stage 2x upscale that the
// original performs in `RaisrUpsample`. The lift itself is byte-identical to the
// pinned libgcastartup.so; this file only rebuilds the npcam glue around it.
//
// Buffer contract, measured on device against the lifted kernels (see
// docs/research/mgc-raisr-output-upscale.md): the whole chain runs in the UInt8
// finish domain, only the filter bank is int16. Layouts differ per kernel:
//   rgbx_in_   UInt8, 3 channels, interleaved (x stride 3, channel stride 1)
//   orientation in/out, composite in/out: UInt8, 1 or 3 channels, planar
//   randomness_lut: UInt8, one dimension of 256
//
// Original non-lifted stages are reconstructed and checked against the pinned
// library: Q6 Lanczos-3 with two U8 rounding passes, and RGB luma replacement
// (0x355FD48 -> 0x3C4DC7C -> ReplaceLumaPixelContig3ChOptHalide at 0x3C4F4D8).
// See docs/research/raisr-performance-original-parity.md for numeric evidence.

#include <android/log.h>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <vector>

#include "mgc_raisr_bands.h"
#include "mgc_raisr_color.h"
#include "mgc_raisr_resample.h"

namespace {

constexpr const char* kTag = "PLog_MgcRaisr";

// GPU input is quantised once at the entry to the original UInt8 finish domain.
using photon_raisr::ToU8;
using photon_raisr::Measure;
using photon_raisr::Timing;

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

// V25 compiled-params defaults that have a consumer in the lifted code. The
// stored f32 pairs at +0x18/+0x1C are stale in the binary and must not be
// copied; the self-consistent category triple is (24 angles, 3 coherence,
// 3 strength) with a 5x5 kernel over 4 shifts, i.e. 216 classes and 43200 bytes
// of filter data.
constexpr int32_t kNumAngleBuckets = 24;
constexpr float kMinStrength = 0.0523100868f;
constexpr float kMaxStrength = 0.00511798495f;
constexpr float kMinCoherence = -0.0055033979f;
constexpr float kMaxCoherence = -0.0482351705f;
constexpr int32_t kRefineBaselineOffset = 3;
// RaisrUpsample computes the DOG strength from the resample rate before calling
// the refine chain (0x355F5D4..0x355F620):
//     strength = (resample_rate - 2.0f) * 55.0f / 6.0f + 15.0f
// and hands it to the DOG wrapper, which truncates it to int32.  The second
// strength stays 0, so the wrapper passes (baseline 3, strength_high 0,
// strength_mid (int)strength).
constexpr float kRefineStrengthBase = 15.0f;
constexpr float kRefineStrengthRateOffset = 2.0f;
constexpr int16_t kDebugOutputSelect = 0;

// RaisrUpsample copies {0.7, 1, 3, -0.25} from 0x6BE390 into params+0xC.
// Keep floats until each wrapper's Q4/Q8 conversion; these are not integers.
struct RefineParams {
    float strength_mid;
    float strength_high = 0.0f;
    bool blend = true;
    float fallback_strength = 0.7f;
    float artifact_correction = 1.0f;
    float artifact_map_scale = 3.0f;
    float artifact_map_bias = -0.25f;
};

HalideBuffer MakeBuffer(void* host, uint8_t code, uint8_t bits, int32_t dimensions,
                        const HalideDimension* dim, uint16_t lanes = 1) {
    HalideBuffer buffer{};
    buffer.host = static_cast<uint8_t*>(host);
    buffer.type = HalideType{code, bits, lanes};
    buffer.dimensions = dimensions;
    buffer.dim = dim;
    return buffer;
}

HalideBuffer MakeU8Buffer(void* host, int32_t dimensions, const HalideDimension* dim) {
    return MakeBuffer(host, 1, 8, dimensions, dim);
}

} // namespace

extern "C" {
int photon_mgc_raisr_rgb_to_gray(void*, HalideBuffer*, HalideBuffer*);
int photon_mgc_raisr_orientation(void*, HalideBuffer*, int32_t, HalideBuffer*);
int photon_mgc_raisr_hash(void*, HalideBuffer*, int32_t, float, float, float, float,
                          HalideBuffer*);
int photon_mgc_raisr_upscale_2x(void*, HalideBuffer*, HalideBuffer*, HalideBuffer*,
                                HalideBuffer*);
int photon_mgc_raisr_composite(void*, HalideBuffer*, HalideBuffer*, HalideBuffer*,
                               HalideBuffer*, int32_t, int32_t, int32_t, int16_t, int16_t,
                               HalideBuffer*);
extern const int16_t photon_mgc_raisr_filters[];
extern const uint8_t photon_mgc_raisr_randomness_lut[];

// Lifted Polysharp kernels (mgc_polysharp_static.S).  Their ABIs were pinned on
// device: SharpenDOG and Census carry a user context, the lib_enhance pipelines
// do not.  Only these two take part in the luma refine chain.
int photon_mgc_polysharp_sharpen_dog(void*, HalideBuffer*, int32_t, HalideBuffer*, int32_t,
                                     int32_t, HalideBuffer*);
int photon_mgc_polysharp_census(void*, HalideBuffer*, HalideBuffer*, int32_t, int32_t,
                                HalideBuffer*, HalideBuffer*);
}

extern "C" int photon_mgc_polysharp_sharpen(const uint8_t* luma, int width, int height,
                                            float strength, uint8_t* destination);

namespace {

// The branches in 0x35A2474 are alternatives, not sequential Census passes.
int RefineLuma(std::vector<uint8_t>& raisr, std::vector<uint8_t>& fallback,
               int width, int height, const RefineParams& params,
               std::vector<uint8_t>& destination) {
    const HalideDimension dims[] = {{0, width, 1, 0}, {0, height, width, 0}};
    const HalideDimension lut_dims[] = {{0, 256, 1, 0}};
    HalideBuffer lut = MakeU8Buffer(const_cast<uint8_t*>(photon_mgc_raisr_randomness_lut),
                                    1, lut_dims);
    std::vector<uint8_t> sharpened;
    uint8_t* refined = raisr.data();
    const bool sharpen = std::max(params.strength_mid, params.strength_high) > 0.0f;
    if (sharpen) {
        sharpened.resize(raisr.size());
        HalideBuffer in = MakeU8Buffer(raisr.data(), 2, dims);
        HalideBuffer out = MakeU8Buffer(sharpened.data(), 2, dims);
        const int status = Measure(&Timing::dog, [&] {
            return photon_mgc_polysharp_sharpen_dog(
                nullptr, &in, kRefineBaselineOffset, &lut, int32_t(params.strength_high),
                int32_t(params.strength_mid), &out);
        });
        if (status != 0) return status;
        refined = sharpened.data();
    }
    if (!params.blend) {
        std::memcpy(destination.data(), refined, raisr.size());
        return 0;
    }
    HalideBuffer left = MakeU8Buffer(fallback.data(), 2, dims);
    HalideBuffer right = MakeU8Buffer(refined, 2, dims);
    HalideBuffer out = MakeU8Buffer(destination.data(), 2, dims);
    if (params.artifact_correction > 0.0f) {
        return Measure(&Timing::composite, [&] {
            return photon_mgc_raisr_composite(
                nullptr, &left, &right, &left, &lut,
                int32_t(params.fallback_strength * 256.0f),
                int32_t(params.artifact_correction * 256.0f),
                int32_t(params.artifact_map_scale * 16.0f),
                int16_t(params.artifact_map_bias * 256.0f), kDebugOutputSelect, &out);
        });
    }
    // With no artifact correction the original selects Census instead. When
    // DOG is disabled its repeated Census call writes the same result twice;
    // one invocation has the same inputs and final output.
    return Measure(&Timing::census, [&] {
        return photon_mgc_polysharp_census(nullptr, &left, &right,
            int32_t(params.fallback_strength * 16.0f), kRefineBaselineOffset, &lut, &out);
    });
}

}  // namespace


// Runs the whole RAISR chain on one band of float RGBA input. Only the requested
// core is emitted, in tightly packed 2x RGBA8, with no intermediate float output.
// Exposed with C linkage so the on-device probe can drive it without the app.
extern "C" int photon_mgc_raisr_upscale_rgba8(const float* input, int width, int height,
    uint8_t* output, int core_left, int core_top, int core_width, int core_height,
    float resample_rate) try {
    if (input == nullptr || output == nullptr || width <= 0 || height <= 0 ||
        !std::isfinite(resample_rate) || resample_rate <= 0.0f ||
        core_left < 0 || core_top < 0 || core_width <= 0 || core_height <= 0 ||
        core_left + core_width > width || core_top + core_height > height) {
        return -1;
    }
    const int out_width = width * 2;
    const int out_height = height * 2;
    const size_t source_pixels = size_t(width) * height;

    // 1. rgbx_in_: UInt8, 3 channels, interleaved.
    std::vector<uint8_t> rgbx(source_pixels * 3);
    Measure(&Timing::rgb_pack, [&] {
        for (size_t index = 0; index < source_pixels; ++index) {
            rgbx[index * 3 + 0] = ToU8(input[index * 4 + 0]);
            rgbx[index * 3 + 1] = ToU8(input[index * 4 + 1]);
            rgbx[index * 3 + 2] = ToU8(input[index * 4 + 2]);
        }
    });
    // 2. Luma.
    std::vector<uint8_t> gray(source_pixels);
    // 3. Orientation input: the same luma as a planar 3 channel image.
    std::vector<uint8_t> gray3(source_pixels * 3);
    // 4. Orientation output.
    std::vector<uint8_t> orientation(source_pixels * 3);
    // 5. Filter class image, at the upscaled grid.
    std::vector<uint8_t> hash(size_t(out_width) * out_height);
    // 6. RAISR luma at the upscaled grid.
    std::vector<uint8_t> raisr(size_t(out_width) * out_height);
    // 7. Cheap fallback luma at the upscaled grid.
    std::vector<uint8_t> fallback(size_t(out_width) * out_height);
    // 8. Composite output luma.
    std::vector<uint8_t> luma(size_t(out_width) * out_height);

    {
        // rgbx_in_ is declared as three dimensions whose innermost stride is the
        // channel count and whose channel dimension has stride 1, i.e. interleaved
        // RGB. The on-device probe rejects a flattened two-dimensional form.
        const HalideDimension dims[] = {
            {0, width, 3, 0},
            {0, height, width * 3, 0},
            {0, 3, 1, 0},
        };
        HalideBuffer in = MakeU8Buffer(rgbx.data(), 3, dims);
        const HalideDimension out_dims[] = {
            {0, width, 1, 0},
            {0, height, width, 0},
        };
        HalideBuffer out = MakeU8Buffer(gray.data(), 2, out_dims);
        const int result = Measure(&Timing::rgb_to_gray, [&] {
            return photon_mgc_raisr_rgb_to_gray(nullptr, &in, &out);
        });
        if (result != 0) {
            __android_log_print(ANDROID_LOG_ERROR, kTag, "rgb_to_gray failed: %d", result);
            return result;
        }
    }

    Measure(&Timing::gray_replicate, [&] {
        for (size_t index = 0; index < source_pixels; ++index) {
            for (int channel = 0; channel < 3; ++channel) {
                gray3[size_t(channel) * source_pixels + index] = gray[index];
            }
        }
    });
    {
        const HalideDimension dims[] = {
            {0, width, 1, 0},
            {0, height, width, 0},
            {0, 3, width * height, 0},
        };
        HalideBuffer in = MakeU8Buffer(gray3.data(), 3, dims);
        HalideBuffer out = MakeU8Buffer(orientation.data(), 3, dims);
        const int result = Measure(&Timing::orientation, [&] {
            return photon_mgc_raisr_orientation(nullptr, &in, kNumAngleBuckets, &out);
        });
        if (result != 0) {
            __android_log_print(ANDROID_LOG_ERROR, kTag, "orientation failed: %d", result);
            return result;
        }
    }
    {
        const HalideDimension in_dims[] = {
            {0, width, 1, 0},
            {0, height, width, 0},
            {0, 3, width * height, 0},
        };
        const HalideDimension out_dims[] = {
            {0, out_width, 1, 0},
            {0, out_height, out_width, 0},
        };
        HalideBuffer in = MakeU8Buffer(orientation.data(), 3, in_dims);
        HalideBuffer out = MakeU8Buffer(hash.data(), 2, out_dims);
        const int result = Measure(&Timing::hash, [&] {
            return photon_mgc_raisr_hash(nullptr, &in, kNumAngleBuckets, kMinStrength,
                                          kMaxStrength, kMinCoherence, kMaxCoherence, &out);
        });
        if (result != 0) {
            __android_log_print(ANDROID_LOG_ERROR, kTag, "hash failed: %d", result);
            return result;
        }
    }

    Measure(&Timing::lanczos, [&] {
        photon_raisr::ResampleLanczos3To2x(gray.data(), width, height, 1, fallback.data());
    });
    {
        const HalideDimension luma_dims[] = {
            {0, width, 1, 0},
            {0, height, width, 0},
        };
        const HalideDimension filter_dims[] = {
            {0, 5, 1, 0},
            {0, 5, 5, 0},
            {0, 216, 25, 0},
            {0, 4, 5400, 0},
        };
        const HalideDimension up_dims[] = {
            {0, out_width, 1, 0},
            {0, out_height, out_width, 0},
        };
        // The lifted filter bank is const; the AOT entry only reads it.
        HalideBuffer in = MakeU8Buffer(gray.data(), 2, luma_dims);
        HalideBuffer filters = MakeBuffer(const_cast<int16_t*>(photon_mgc_raisr_filters), 0, 16,
                                          4, filter_dims);
        HalideBuffer hash_buffer = MakeU8Buffer(hash.data(), 2, up_dims);
        HalideBuffer out = MakeU8Buffer(raisr.data(), 2, up_dims);
        const int result = Measure(&Timing::upscale, [&] {
            return photon_mgc_raisr_upscale_2x(nullptr, &in, &filters, &hash_buffer, &out);
        });
        if (result != 0) {
            __android_log_print(ANDROID_LOG_ERROR, kTag, "upscale_2x failed: %d", result);
            return result;
        }
    }
    const float refine_strength =
        (resample_rate - kRefineStrengthRateOffset) * 55.0f / 6.0f + kRefineStrengthBase;
    const int refine_status = RefineLuma(raisr, fallback, out_width, out_height,
                                         RefineParams{refine_strength}, luma);
    if (refine_status != 0) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "refine failed: %d", refine_status);
        return refine_status;
    }

    // Polysharp: RaisrUpsample only runs it when the strength it derives from the
    // resample rate reaches 0.38 (0x355F940..0x355F99C), with
    //     s = -0.7 / resample_rate + 0.699285.
    // The original additionally applies an external device-tuning cap.
    const float polysharp_strength = -0.7f / resample_rate + 0.699285f;
    if (polysharp_strength >= 0.38f) {
        std::vector<uint8_t> polished(size_t(out_width) * out_height);
        const int status = photon_mgc_polysharp_sharpen(luma.data(), out_width, out_height,
                                                        polysharp_strength, polished.data());
        if (status != 0) {
            __android_log_print(ANDROID_LOG_ERROR, kTag, "polysharp failed: %d", status);
            return status;
        }
        luma.swap(polished);
    }

    // Original RaisrUpsample -> 0x3C4DC7C: Lanczos-resample RGB, measure its
    // quantized luma, then ReplaceLumaPixelContig3ChOptHalide's saturating delta.
    // Keep the finish domain U8 through the final core-only bitmap write.
    std::vector<uint8_t> color(size_t(out_width) * out_height * 3);
    std::vector<uint8_t> color_luma(size_t(out_width) * out_height);
    Measure(&Timing::rgb_resample, [&] {
        photon_raisr::ResampleLanczos3To2x(rgbx.data(), width, height, 3, color.data());
    });
    const HalideDimension color_dims[] = {
        {0, out_width, 3, 0}, {0, out_height, out_width * 3, 0}, {0, 3, 1, 0},
    };
    const HalideDimension gray_dims[] = {
        {0, out_width, 1, 0}, {0, out_height, out_width, 0},
    };
    HalideBuffer color_buffer = MakeU8Buffer(color.data(), 3, color_dims);
    HalideBuffer gray_buffer = MakeU8Buffer(color_luma.data(), 2, gray_dims);
    const int color_status = Measure(&Timing::rgb_to_gray, [&] {
        return photon_mgc_raisr_rgb_to_gray(nullptr, &color_buffer, &gray_buffer);
    });
    if (color_status != 0) return color_status;
    Measure(&Timing::chroma, [&] {
        photon_raisr::ReplaceLumaRgba8(color.data(), color_luma.data(), luma.data(),
            out_width, core_left * 2, core_top * 2, core_width * 2, core_height * 2, output);
    });
    return 0;
} catch (const std::bad_alloc&) {
    // Every intermediate plane belongs to this call; unwind them before the
    // failure crosses the C/JNI boundary and let the caller discard the output.
    __android_log_print(ANDROID_LOG_ERROR, kTag, "unable to allocate RAISR intermediate planes");
    return -2;
}

// Float output adapter used by the independent full-frame/banding probes.
extern "C" int photon_mgc_raisr_upscale_rgba(const float* input, int width, int height,
                                             float* output, float resample_rate) try {
    if (!input || !output || width <= 0 || height <= 0) return -1;
    std::vector<uint8_t> rgba(size_t(width) * height * 16);
    const int status = photon_mgc_raisr_upscale_rgba8(input, width, height, rgba.data(),
        0, 0, width, height, resample_rate);
    if (status != 0) return status;
    for (size_t i = 0; i < rgba.size(); ++i) output[i] = rgba[i] / 255.0f;
    return 0;
} catch (const std::bad_alloc&) {
    return -2;
}


namespace {

// Whole 1x float RGBA image as a band source: the shape both the probe and any
// caller that already holds the frame uses.
class FullImageSource {
public:
    FullImageSource(const float* pixels, int width) : pixels_(pixels), width_(width) {}

    void Fill(int top, int rows, float* destination) const {
        std::memcpy(destination, pixels_ + size_t(top) * width_ * 4,
                    size_t(rows) * width_ * 4 * sizeof(float));
    }

private:
    const float* pixels_;
    int width_;
};

// Whole 2x float RGBA image as a band sink.
class FullImageSink {
public:
    FullImageSink(float* pixels, int out_width) : pixels_(pixels), out_width_(out_width) {}

    void Write(int row, const uint8_t* pixels, int count) const {
        float* target = pixels_ + size_t(row) * out_width_ * 4;
        for (int i = 0; i < count * 4; ++i) target[i] = pixels[i] / 255.0f;
    }

private:
    float* pixels_;
    int out_width_;
};

}  // namespace

// Research adapter for the same band runner the app uses. `output` holds the
// 2x float RGBA image; the app sink instead copies RGBA8 straight into its bitmap.
//
// `band_core_rows` is explicit so the probe can compare this against
// photon_mgc_raisr_upscale_rgba bit for bit at several band heights; the app
// passes photon_raisr::BandCoreRows(width), which keeps one band inside the
// scratch budget.
extern "C" int photon_mgc_raisr_upscale_rgba_banded(const float* input, int width, int height,
                                                    float* output, int band_core_rows,
                                                    float resample_rate) {
    if (input == nullptr || output == nullptr) {
        return -1;
    }
    return photon_raisr::RunBands(FullImageSource(input, width), FullImageSink(output, width * 2),
                                  width, height, 0, 0, width, height, band_core_rows,
                                  resample_rate);
}
