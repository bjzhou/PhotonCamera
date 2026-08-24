#include <android/log.h>
#include <jni.h>

#include <algorithm>
#include <array>
#include <cmath>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <limits>
#include <vector>

namespace {

constexpr char kTag[] = "PLog_MgcSpatialRgbAot";

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

constexpr HalideType kUInt8 = {1, 8, 1};
constexpr HalideType kUInt16 = {1, 16, 1};
constexpr HalideType kUInt64 = {1, 64, 1};
constexpr HalideType kFloat16 = {2, 16, 1};
constexpr HalideType kFloat32 = {2, 32, 1};

constexpr int32_t Camera2CfaToMgcBayerPattern(int cfa_pattern) {
    switch (cfa_pattern) {
        case 0:
            return 1;  // RGGB
        case 1:
            return 3;  // GRBG
        case 2:
            return 4;  // GBRG
        case 3:
            return 2;  // BGGR
        default:
            return 0;
    }
}

HalideBuffer MakeBuffer(
    void* host,
    HalideType type,
    const HalideDimension* dimensions,
    int dimension_count) {
    HalideBuffer buffer = {};
    buffer.host = static_cast<uint8_t*>(host);
    buffer.type = type;
    buffer.dimensions = dimension_count;
    buffer.dim = dimensions;
    return buffer;
}

bool CopyFloatArray(
    JNIEnv* env,
    jfloatArray source,
    int expected_size,
    std::vector<float>* output,
    bool require_positive) {
    if (source == nullptr || env->GetArrayLength(source) != expected_size) return false;
    output->resize(expected_size);
    env->GetFloatArrayRegion(source, 0, expected_size, output->data());
    if (env->ExceptionCheck()) return false;
    return std::all_of(output->begin(), output->end(), [require_positive](float value) {
        return std::isfinite(value) && (!require_positive || value > 0.0f);
    });
}

bool CheckedProduct(std::initializer_list<int64_t> factors, int64_t* result) {
    int64_t value = 1;
    for (const int64_t factor : factors) {
        if (factor <= 0 || value > std::numeric_limits<int64_t>::max() / factor) return false;
        value *= factor;
    }
    *result = value;
    return true;
}

float HalfToFloat(uint16_t value) {
    const uint32_t sign = static_cast<uint32_t>(value & 0x8000u) << 16u;
    uint32_t exponent = (value >> 10u) & 0x1fu;
    uint32_t mantissa = value & 0x03ffu;
    uint32_t encoded = 0;
    if (exponent == 0) {
        if (mantissa == 0) {
            encoded = sign;
        } else {
            int shift = 0;
            while ((mantissa & 0x0400u) == 0) {
                mantissa <<= 1u;
                ++shift;
            }
            mantissa &= 0x03ffu;
            encoded = sign |
                (static_cast<uint32_t>(127 - 14 - shift) << 23u) |
                (mantissa << 13u);
        }
    } else if (exponent == 0x1fu) {
        encoded = sign | 0x7f800000u | (mantissa << 13u);
    } else {
        encoded = sign | ((exponent + 127u - 15u) << 23u) | (mantissa << 13u);
    }
    float result = 0.0f;
    std::memcpy(&result, &encoded, sizeof(result));
    return result;
}

}  // namespace

// Exact generated ABI at MGC 9.7.047 V25 libgcastartup.so+0x371990c.
extern "C" int photon_mgc_merge_rgb_raw16_f16_tile16_halide(
    void* user_context,
    int32_t bayer_pattern,
    HalideBuffer* base_frame,
    HalideBuffer* burst_ptrs,
    HalideBuffer* alignment,
    HalideBuffer* rejection_masks,
    HalideBuffer* frame_weights,
    HalideBuffer* wb_gains,
    HalideBuffer* input_black_levels_rgb,
    HalideBuffer* input_black_levels_rggb,
    HalideBuffer* input_gains,
    float overall_gain,
    float merge_sharpness,
    HalideBuffer* kernel_sigmas,
    int32_t output_width,
    int32_t output_height,
    HalideBuffer* output);

extern "C" JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_processor_MgcSpatialRgbMerger_nativeMerge(
    JNIEnv* env,
    jobject,
    jobjectArray raw_buffers,
    jintArray raw_offsets_array,
    jintArray raw_row_strides_array,
    jobject alignment_buffer,
    jint alignment_width,
    jint alignment_height,
    jobject rejection_buffer,
    jint rejection_width,
    jint rejection_height,
    jfloatArray frame_weights_array,
    jfloatArray wb_gains_array,
    jfloatArray input_black_levels_rgb_array,
    jfloatArray input_black_levels_rggb_array,
    jfloatArray input_gains_array,
    jfloat overall_gain,
    jfloat merge_sharpness,
    jfloatArray kernel_sigmas_array,
    jint raw_width,
    jint raw_height,
    jint output_width,
    jint output_height,
    jint output_storage_width,
    jint output_storage_height,
    jint cfa_pattern,
    jobject output_buffer) {
    const int32_t mgc_pattern = Camera2CfaToMgcBayerPattern(cfa_pattern);
    const int frame_count = raw_buffers != nullptr
        ? env->GetArrayLength(raw_buffers)
        : 0;
    const int64_t expected_alignment_width =
        (static_cast<int64_t>(output_width) + 15) / 16;
    const int64_t expected_alignment_height =
        (static_cast<int64_t>(output_height) + 15) / 16;
    const int64_t expected_rejection_width =
        (static_cast<int64_t>(output_width) + 3) / 4;
    const int64_t expected_rejection_height =
        (static_cast<int64_t>(output_height) + 3) / 4;
    if (frame_count <= 0 || raw_offsets_array == nullptr ||
        raw_row_strides_array == nullptr || alignment_buffer == nullptr ||
        rejection_buffer == nullptr || output_buffer == nullptr ||
        env->GetArrayLength(raw_offsets_array) != frame_count ||
        env->GetArrayLength(raw_row_strides_array) != frame_count ||
        raw_width <= 0 || raw_height <= 0 || output_width <= 0 ||
        output_height <= 0 || output_storage_width <= 0 ||
        output_storage_height <= 0 || (output_storage_width & 15) != 0 ||
        (output_storage_height & 15) != 0 ||
        output_storage_width != expected_alignment_width * 16 ||
        output_storage_height != expected_alignment_height * 16 ||
        alignment_width != expected_alignment_width ||
        alignment_height != expected_alignment_height ||
        rejection_width != expected_rejection_width ||
        rejection_height != expected_rejection_height || mgc_pattern == 0 ||
        !std::isfinite(overall_gain) || overall_gain <= 0.0f ||
        !std::isfinite(merge_sharpness) || merge_sharpness < 0.0f) {
        return -1;
    }

    int64_t raw_pixel_count = 0;
    int64_t output_sample_count = 0;
    int64_t alignment_sample_count = 0;
    int64_t rejection_sample_count = 0;
    if (!CheckedProduct({raw_width, raw_height}, &raw_pixel_count) ||
        !CheckedProduct(
            {output_storage_width, output_storage_height, 3},
            &output_sample_count) ||
        !CheckedProduct(
            {alignment_width, alignment_height, frame_count, 2},
            &alignment_sample_count) ||
        !CheckedProduct(
            {rejection_width, rejection_height, frame_count},
            &rejection_sample_count) ||
        raw_pixel_count > static_cast<int64_t>(
            std::numeric_limits<size_t>::max() / sizeof(uint16_t))) {
        return -1;
    }

    auto* alignment = static_cast<float*>(env->GetDirectBufferAddress(alignment_buffer));
    auto* rejection = static_cast<uint8_t*>(env->GetDirectBufferAddress(rejection_buffer));
    auto* output = static_cast<uint16_t*>(env->GetDirectBufferAddress(output_buffer));
    if (alignment == nullptr || rejection == nullptr || output == nullptr ||
        env->GetDirectBufferCapacity(alignment_buffer) <
            alignment_sample_count * static_cast<int64_t>(sizeof(float)) ||
        env->GetDirectBufferCapacity(rejection_buffer) < rejection_sample_count ||
        env->GetDirectBufferCapacity(output_buffer) <
            output_sample_count * static_cast<int64_t>(sizeof(uint16_t))) {
        return -1;
    }

    std::vector<jint> raw_offsets(frame_count);
    std::vector<jint> raw_row_strides(frame_count);
    env->GetIntArrayRegion(raw_offsets_array, 0, frame_count, raw_offsets.data());
    env->GetIntArrayRegion(
        raw_row_strides_array,
        0,
        frame_count,
        raw_row_strides.data());
    if (env->ExceptionCheck()) return -1;

    // Camera2 RAW planes are normally tight. Point the AOT directly at those direct buffers and
    // allocate a packed copy only for the uncommon padded-row plane; copying the whole burst would
    // otherwise duplicate hundreds of megabytes before Halide starts.
    std::vector<std::vector<uint16_t>> packed_raw(frame_count);
    std::vector<uint64_t> burst_ptrs(frame_count);
    for (int frame = 0; frame < frame_count; ++frame) {
        jobject raw_buffer = env->GetObjectArrayElement(raw_buffers, frame);
        if (raw_buffer == nullptr) return -1;
        auto* raw_base = static_cast<uint8_t*>(env->GetDirectBufferAddress(raw_buffer));
        const int64_t raw_capacity = env->GetDirectBufferCapacity(raw_buffer);
        const int64_t offset = raw_offsets[frame];
        const int64_t row_stride = raw_row_strides[frame];
        const int64_t required = offset +
            static_cast<int64_t>(raw_height - 1) * row_stride +
            static_cast<int64_t>(raw_width) * sizeof(uint16_t);
        if (raw_base == nullptr || offset < 0 || (offset & 1LL) != 0 ||
            row_stride < raw_width * 2LL ||
            required > raw_capacity) {
            env->DeleteLocalRef(raw_buffer);
            return -1;
        }
        uint16_t* destination = nullptr;
        if (row_stride == raw_width * static_cast<int64_t>(sizeof(uint16_t))) {
            destination = reinterpret_cast<uint16_t*>(raw_base + offset);
        } else {
            packed_raw[frame].resize(static_cast<size_t>(raw_pixel_count));
            destination = packed_raw[frame].data();
            for (int y = 0; y < raw_height; ++y) {
                std::memcpy(
                    destination + static_cast<int64_t>(y) * raw_width,
                    raw_base + offset + static_cast<int64_t>(y) * row_stride,
                    static_cast<size_t>(raw_width) * sizeof(uint16_t));
            }
        }
        burst_ptrs[frame] = reinterpret_cast<uint64_t>(destination);
        env->DeleteLocalRef(raw_buffer);
    }

    std::vector<float> frame_weights;
    std::vector<float> wb_gains;
    std::vector<float> black_rgb;
    std::vector<float> black_rggb;
    std::vector<float> input_gains;
    std::vector<float> kernel_sigmas;
    if (!CopyFloatArray(env, frame_weights_array, frame_count, &frame_weights, true) ||
        !CopyFloatArray(env, wb_gains_array, 4, &wb_gains, true) ||
        !CopyFloatArray(env, input_black_levels_rgb_array, 3, &black_rgb, false) ||
        !CopyFloatArray(env, input_black_levels_rggb_array, 4, &black_rggb, false) ||
        !CopyFloatArray(env, input_gains_array, frame_count, &input_gains, true) ||
        !CopyFloatArray(env, kernel_sigmas_array, frame_count, &kernel_sigmas, true)) {
        return -1;
    }

    const int32_t alignment_plane_stride = alignment_width * alignment_height;
    const int32_t rejection_plane_stride = rejection_width * rejection_height;
    const int32_t output_plane_stride = output_storage_width * output_storage_height;
    const HalideDimension raw_dimensions[2] = {
        {0, raw_width, 1, 0},
        {0, raw_height, raw_width, 0},
    };
    const HalideDimension burst_dimensions[1] = {{0, frame_count, 1, 0}};
    const HalideDimension alignment_dimensions[4] = {
        {0, alignment_width, 1, 0},
        {0, alignment_height, alignment_width, 0},
        {0, frame_count, alignment_plane_stride, 0},
        {0, 2, alignment_plane_stride * frame_count, 0},
    };
    const HalideDimension rejection_dimensions[3] = {
        {0, rejection_width, 1, 0},
        {0, rejection_height, rejection_width, 0},
        {0, frame_count, rejection_plane_stride, 0},
    };
    const HalideDimension frame_dimensions[1] = {{0, frame_count, 1, 0}};
    const HalideDimension wb_dimensions[1] = {{0, 4, 1, 0}};
    const HalideDimension rgb_dimensions[1] = {{0, 3, 1, 0}};
    const HalideDimension rggb_dimensions[1] = {{0, 4, 1, 0}};
    // The generated schedule constrains the output buffer extents to complete 16x16 tiles. Keep
    // those storage extents separate from output_width/output_height: the latter are semantic
    // parameters used by MGC's sampling and rejection equations.
    const HalideDimension output_dimensions[3] = {
        {0, output_storage_width, 1, 0},
        {0, output_storage_height, output_storage_width, 0},
        {0, 3, output_plane_stride, 0},
    };

    HalideBuffer base = MakeBuffer(
        reinterpret_cast<uint16_t*>(static_cast<uintptr_t>(burst_ptrs[0])),
        kUInt16,
        raw_dimensions,
        2);
    HalideBuffer burst = MakeBuffer(
        burst_ptrs.data(), kUInt64, burst_dimensions, 1);
    HalideBuffer alignment_halide = MakeBuffer(
        alignment, kFloat32, alignment_dimensions, 4);
    HalideBuffer rejection_halide = MakeBuffer(
        rejection, kUInt8, rejection_dimensions, 3);
    HalideBuffer weights_halide = MakeBuffer(
        frame_weights.data(), kFloat32, frame_dimensions, 1);
    HalideBuffer wb_halide = MakeBuffer(
        wb_gains.data(), kFloat32, wb_dimensions, 1);
    HalideBuffer black_rgb_halide = MakeBuffer(
        black_rgb.data(), kFloat32, rgb_dimensions, 1);
    HalideBuffer black_rggb_halide = MakeBuffer(
        black_rggb.data(), kFloat32, rggb_dimensions, 1);
    HalideBuffer gains_halide = MakeBuffer(
        input_gains.data(), kFloat32, frame_dimensions, 1);
    HalideBuffer sigmas_halide = MakeBuffer(
        kernel_sigmas.data(), kFloat32, frame_dimensions, 1);
    HalideBuffer output_halide = MakeBuffer(
        output, kFloat16, output_dimensions, 3);

    const int result = photon_mgc_merge_rgb_raw16_f16_tile16_halide(
        nullptr,
        mgc_pattern,
        &base,
        &burst,
        &alignment_halide,
        &rejection_halide,
        &weights_halide,
        &wb_halide,
        &black_rgb_halide,
        &black_rggb_halide,
        &gains_halide,
        overall_gain,
        merge_sharpness,
        &sigmas_halide,
        output_width,
        output_height,
        &output_halide);
    if (result != 0) {
        __android_log_print(
            ANDROID_LOG_ERROR,
            kTag,
            "MergeRgbRaw16F16 failed result=%d raw=%dx%d logical=%dx%d "
            "storage=%dx%d frames=%d cfa=%d",
            result,
            raw_width,
            raw_height,
            output_width,
            output_height,
            output_storage_width,
            output_storage_height,
            frame_count,
            cfa_pattern);
        return result;
    }
    return 0;
}

extern "C" JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_processor_MgcSpatialRgbMerger_nativeConvertPlanarF16ToFixed16(
    JNIEnv* env,
    jobject,
    jobject buffer,
    jint sample_count) {
    if (buffer == nullptr || sample_count <= 0) return -1;
    auto* samples = static_cast<uint16_t*>(env->GetDirectBufferAddress(buffer));
    const int64_t required_bytes =
        static_cast<int64_t>(sample_count) * static_cast<int64_t>(sizeof(uint16_t));
    if (samples == nullptr || env->GetDirectBufferCapacity(buffer) < required_bytes) return -1;
    auto* fixed16 = reinterpret_cast<int16_t*>(samples);
    for (int index = 0; index < sample_count; ++index) {
        const float sample = HalfToFloat(samples[index]);
        const float finite_sample = std::isfinite(sample) ? sample : 0.0f;
        fixed16[index] = static_cast<int16_t>(std::lrintf(
            std::clamp(finite_sample, 0.0f, 32767.0f)));
    }
    return 0;
}
