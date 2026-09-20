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
// Two sub-steps of the original are not part of the lifted kernels and are
// rebuilt here from their documented behaviour:
//   * the cheap upscale that produces the composite's fallback luma. The
//     original runs it inside npcam C++ that was not lifted, so this uses plain
//     bilinear interpolation on the same luma grid.
//   * the chroma recombination, which lives in the original's caller
//     (libgcastartup.so+0x3364BC8) and has not been reconstructed. Chroma is
//     carried through bilinearly and recombined with the BT.601 full-range
//     matrix - the same matrix RgbToGray3ChOptHalideU8 uses, which the device
//     probe confirmed numerically (grey(0,64,32) == 41 == 0.299*0 + 0.587*64 +
//     0.114*32).

#include <android/log.h>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <vector>

#include "mgc_raisr_bands.h"

namespace {

constexpr const char* kTag = "PLog_MgcRaisr";

// The band buffer is quantised exactly like the driver quantises its own input,
// so the 8-bit round trip through the float band buffer is lossless.
using photon_raisr::ToU8;

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
// Composite strength parameters, the fixed-point forms of the constants the
// original caller feeds (0x6BE0390 through fcvtzs #8/#8/#4/#8).
constexpr int32_t kFallbackStrengthQ8 = 0;
constexpr int32_t kArtifactCorrectionMaxStrengthQ8 = 3;
constexpr int32_t kArtifactMapScaleQ4 = 0;
constexpr int16_t kArtifactMapBiasQ8 = 1;
constexpr int16_t kDebugOutputSelect = 0;

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

float Clamp01(float value) { return value < 0.0f ? 0.0f : (value > 1.0f ? 1.0f : value); }

// Bilinear 2x sample of a single channel grid. Output pixel X maps to source
// coordinate X/2 - 0.25, matching the half-pixel convention the per-shift
// kernel's phase grid implies.
uint8_t SampleBilinear2x(const std::vector<uint8_t>& source, int width, int height,
                         int out_x, int out_y) {
    const float source_x = 0.5f * out_x - 0.25f;
    const float source_y = 0.5f * out_y - 0.25f;
    int x0 = int(std::floor(source_x));
    int y0 = int(std::floor(source_y));
    const float fx = source_x - float(x0);
    const float fy = source_y - float(y0);
    int x1 = x0 + 1;
    int y1 = y0 + 1;
    if (x0 < 0) x0 = 0;
    if (y0 < 0) y0 = 0;
    if (x1 < 0) x1 = 0;
    if (y1 < 0) y1 = 0;
    if (x0 > width - 1) x0 = width - 1;
    if (x1 > width - 1) x1 = width - 1;
    if (y0 > height - 1) y0 = height - 1;
    if (y1 > height - 1) y1 = height - 1;
    const float top = float(source[size_t(y0) * width + x0]) * (1.0f - fx) +
        float(source[size_t(y0) * width + x1]) * fx;
    const float bottom = float(source[size_t(y1) * width + x0]) * (1.0f - fx) +
        float(source[size_t(y1) * width + x1]) * fx;
    const float value = top * (1.0f - fy) + bottom * fy + 0.5f;
    return value <= 0.0f ? 0 : (value >= 255.0f ? 255 : uint8_t(value));
}

// sRGB-encoded BT.601 full range, the matrix RgbToGray3ChOptHalideU8 was measured
// to use. Chroma quantisation saturates before narrowing: rounding a positive
// full-scale colour difference can produce 256, outside the UInt8 domain.
void RgbToChroma(uint8_t r, uint8_t g, uint8_t b, uint8_t& cb, uint8_t& cr) {
    cb = uint8_t(std::clamp(((-43 * r - 85 * g + 128 * b + 128) >> 8) + 128, 0, 255));
    cr = uint8_t(std::clamp(((128 * r - 107 * g - 21 * b + 128) >> 8) + 128, 0, 255));
}

void YcbcrToRgb(int y, int cb, int cr, float& r, float& g, float& b) {
    const int c = cb - 128;
    const int d = cr - 128;
    const int red = y + ((91881 * d) >> 16);
    const int green = y - ((22554 * c + 46802 * d) >> 16);
    const int blue = y + ((116130 * c) >> 16);
    r = Clamp01(float(red < 0 ? 0 : (red > 255 ? 255 : red)) / 255.0f);
    g = Clamp01(float(green < 0 ? 0 : (green > 255 ? 255 : green)) / 255.0f);
    b = Clamp01(float(blue < 0 ? 0 : (blue > 255 ? 255 : blue)) / 255.0f);
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
}


// Runs the whole RAISR luma chain on one image. `input` is float RGBA in 0..1
// sRGB, `output` must hold 2x the pixels in the same layout. Exposed with C
// linkage so the on-device probe can drive it without the app.
extern "C" int photon_mgc_raisr_upscale_rgba(const float* input, int width, int height,
                                             float* output) try {
    const int out_width = width * 2;
    const int out_height = height * 2;
    const size_t source_pixels = size_t(width) * height;

    // 1. rgbx_in_: UInt8, 3 channels, interleaved.
    std::vector<uint8_t> rgbx(source_pixels * 3);
    for (size_t index = 0; index < source_pixels; ++index) {
        rgbx[index * 3 + 0] = ToU8(input[index * 4 + 0]);
        rgbx[index * 3 + 1] = ToU8(input[index * 4 + 1]);
        rgbx[index * 3 + 2] = ToU8(input[index * 4 + 2]);
    }
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
        const int result = photon_mgc_raisr_rgb_to_gray(nullptr, &in, &out);
        if (result != 0) {
            __android_log_print(ANDROID_LOG_ERROR, kTag, "rgb_to_gray failed: %d", result);
            return result;
        }
    }

    for (size_t index = 0; index < source_pixels; ++index) {
        for (int channel = 0; channel < 3; ++channel) {
            gray3[size_t(channel) * source_pixels + index] = gray[index];
        }
    }
    {
        const HalideDimension dims[] = {
            {0, width, 1, 0},
            {0, height, width, 0},
            {0, 3, width * height, 0},
        };
        HalideBuffer in = MakeU8Buffer(gray3.data(), 3, dims);
        HalideBuffer out = MakeU8Buffer(orientation.data(), 3, dims);
        const int result =
            photon_mgc_raisr_orientation(nullptr, &in, kNumAngleBuckets, &out);
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
        const int result = photon_mgc_raisr_hash(nullptr, &in, kNumAngleBuckets, kMinStrength,
                                                 kMaxStrength, kMinCoherence, kMaxCoherence,
                                                 &out);
        if (result != 0) {
            __android_log_print(ANDROID_LOG_ERROR, kTag, "hash failed: %d", result);
            return result;
        }
    }

    for (int y = 0; y < out_height; ++y) {
        for (int x = 0; x < out_width; ++x) {
            fallback[size_t(y) * out_width + x] = SampleBilinear2x(gray, width, height, x, y);
        }
    }
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
        const int result =
            photon_mgc_raisr_upscale_2x(nullptr, &in, &filters, &hash_buffer, &out);
        if (result != 0) {
            __android_log_print(ANDROID_LOG_ERROR, kTag, "upscale_2x failed: %d", result);
            return result;
        }
    }
    {
        const HalideDimension up_dims[] = {
            {0, out_width, 1, 0},
            {0, out_height, out_width, 0},
        };
        const HalideDimension lut_dims[] = {
            {0, 256, 1, 0},
        };
        HalideBuffer fallback_buffer = MakeU8Buffer(fallback.data(), 2, up_dims);
        HalideBuffer raisr_buffer = MakeU8Buffer(raisr.data(), 2, up_dims);
        HalideBuffer lut = MakeU8Buffer(const_cast<uint8_t*>(photon_mgc_raisr_randomness_lut), 1,
                                        lut_dims);
        HalideBuffer out = MakeU8Buffer(luma.data(), 2, up_dims);
        // The artifact argument is present in the ABI but never read by the
        // kernel; the original also passes the target buffer there.
        const int result = photon_mgc_raisr_composite(
            nullptr, &fallback_buffer, &raisr_buffer, &fallback_buffer, &lut,
            kFallbackStrengthQ8, kArtifactCorrectionMaxStrengthQ8, kArtifactMapScaleQ4,
            kArtifactMapBiasQ8, kDebugOutputSelect, &out);
        if (result != 0) {
            __android_log_print(ANDROID_LOG_ERROR, kTag, "composite failed: %d", result);
            return result;
        }
    }

    // Chroma is carried through bilinearly and recombined with the RAISR luma.
    std::vector<uint8_t> cb(source_pixels);
    std::vector<uint8_t> cr(source_pixels);
    for (size_t index = 0; index < source_pixels; ++index) {
        RgbToChroma(rgbx[index * 3 + 0], rgbx[index * 3 + 1], rgbx[index * 3 + 2],
                    cb[index], cr[index]);
    }
    for (int y = 0; y < out_height; ++y) {
        for (int x = 0; x < out_width; ++x) {
            const int luma_value = luma[size_t(y) * out_width + x];
            const int cb_value = SampleBilinear2x(cb, width, height, x, y);
            const int cr_value = SampleBilinear2x(cr, width, height, x, y);
            float red = 0.0f;
            float green = 0.0f;
            float blue = 0.0f;
            YcbcrToRgb(luma_value, cb_value, cr_value, red, green, blue);
            float* pixel = output + (size_t(y) * out_width + x) * 4;
            pixel[0] = red;
            pixel[1] = green;
            pixel[2] = blue;
            pixel[3] = 1.0f;
        }
    }
    return 0;
} catch (const std::bad_alloc&) {
    // Every intermediate plane belongs to this call; unwind them before the
    // failure crosses the C/JNI boundary and let the caller discard the output.
    __android_log_print(ANDROID_LOG_ERROR, kTag, "unable to allocate RAISR intermediate planes");
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

    void Write(int row, const float* pixels, int count) const {
        std::memcpy(pixels_ + size_t(row) * out_width_ * 4, pixels,
                    size_t(count) * 4 * sizeof(float));
    }

private:
    float* pixels_;
    int out_width_;
};

}  // namespace

// The same chain, band by band, so a caller never needs the 64 bytes per source
// pixel one in-place call needs. `output` holds the 2x float RGBA image.
//
// `band_core_rows` is explicit so the probe can compare this against
// photon_mgc_raisr_upscale_rgba bit for bit at several band heights; the app
// passes photon_raisr::BandCoreRows(width), which keeps one band inside the
// scratch budget.
extern "C" int photon_mgc_raisr_upscale_rgba_banded(const float* input, int width, int height,
                                                    float* output, int band_core_rows) {
    if (input == nullptr || output == nullptr) {
        return -1;
    }
    return photon_raisr::RunBands(FullImageSource(input, width), FullImageSink(output, width * 2),
                                  width, height, 0, 0, width, height, band_core_rows);
}
