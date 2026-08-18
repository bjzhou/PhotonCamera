#include <android/log.h>
#include <jni.h>

#include <algorithm>
#include <array>
#include <cmath>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <limits>

namespace {

constexpr char kTag[] = "PLog_MgcSabreResolve";

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

constexpr HalideType kUInt16 = {1, 16, 1};
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

bool CopyThree(JNIEnv* env, jfloatArray source, std::array<float, 3>* output) {
    if (source == nullptr || env->GetArrayLength(source) != 3) return false;
    env->GetFloatArrayRegion(source, 0, 3, output->data());
    if (env->ExceptionCheck()) return false;
    return std::all_of(output->begin(), output->end(), [](float value) {
        return std::isfinite(value);
    });
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

}  // namespace

// Exact generated ABI at libgcastartup.so+0x34a55d4. In particular, the two
// F32 vectors are ordered final_gains first and final_black_level second.
extern "C" int photon_mgc_resolve_sabre_halide(
    void* user_context,
    int32_t bayer_pattern,
    HalideBuffer* sabre_accumulated_color,
    HalideBuffer* final_gains,
    HalideBuffer* final_black_level,
    int16_t demosaic_white_level,
    HalideBuffer* output,
    float output_white_level,
    float demosaic_blend_scale,
    float demosaic_blend_bias,
    float demosaic_sharpness_scale);

extern "C" JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_processor_MgcSabreResolver_nativeResolve(
    JNIEnv* env,
    jobject,
    jobject accumulated_color_buffer,
    jobject output_rgb_buffer,
    jint width,
    jint height,
    jint cfa_pattern,
    jfloatArray final_black_level_array,
    jfloatArray final_gains_array,
    jint demosaic_white_level,
    jfloat output_white_level,
    jfloat demosaic_blend_scale,
    jfloat demosaic_blend_bias,
    jfloat demosaic_sharpness_scale) {
    const int32_t mgc_pattern = Camera2CfaToMgcBayerPattern(cfa_pattern);
    if (accumulated_color_buffer == nullptr || output_rgb_buffer == nullptr ||
        width <= 0 || height <= 0 || mgc_pattern == 0 ||
        demosaic_white_level <= 0 ||
        demosaic_white_level > std::numeric_limits<int16_t>::max() ||
        !std::isfinite(output_white_level) || output_white_level < 0.0f ||
        !std::isfinite(demosaic_blend_scale) ||
        !std::isfinite(demosaic_blend_bias) ||
        !std::isfinite(demosaic_sharpness_scale)) {
        return -1;
    }

    auto* accumulated_color = static_cast<uint16_t*>(
        env->GetDirectBufferAddress(accumulated_color_buffer));
    auto* output_rgb = static_cast<uint16_t*>(
        env->GetDirectBufferAddress(output_rgb_buffer));
    std::array<float, 3> final_black_level = {};
    std::array<float, 3> final_gains = {};
    if (accumulated_color == nullptr || output_rgb == nullptr ||
        !CopyThree(env, final_black_level_array, &final_black_level) ||
        !CopyThree(env, final_gains_array, &final_gains) ||
        std::any_of(final_gains.begin(), final_gains.end(), [](float gain) {
            return gain <= 0.0f;
        })) {
        return -1;
    }

    const int64_t pixel_count = static_cast<int64_t>(width) * height;
    const int64_t accumulated_bytes =
        pixel_count * 4 * static_cast<int64_t>(sizeof(uint16_t));
    const int64_t output_bytes =
        pixel_count * 3 * static_cast<int64_t>(sizeof(uint16_t));
    if (pixel_count <= 0 ||
        pixel_count > std::numeric_limits<int32_t>::max() ||
        width > std::numeric_limits<int32_t>::max() / 4 ||
        env->GetDirectBufferCapacity(accumulated_color_buffer) < accumulated_bytes ||
        env->GetDirectBufferCapacity(output_rgb_buffer) < output_bytes) {
        return -1;
    }

    const HalideDimension accumulated_dimensions[3] = {
        {0, width, 4, 0},
        {0, height, 4 * width, 0},
        {0, 4, 1, 0},
    };
    const HalideDimension output_dimensions[3] = {
        {0, width, 1, 0},
        {0, height, width, 0},
        {0, 3, width * height, 0},
    };
    const HalideDimension vector_dimension[1] = {{0, 3, 1, 0}};
    HalideBuffer accumulated = MakeBuffer(
        accumulated_color,
        kUInt16,
        accumulated_dimensions,
        3);
    HalideBuffer output = MakeBuffer(output_rgb, kUInt16, output_dimensions, 3);
    HalideBuffer black = MakeBuffer(
        final_black_level.data(),
        kFloat32,
        vector_dimension,
        1);
    HalideBuffer gains = MakeBuffer(
        final_gains.data(),
        kFloat32,
        vector_dimension,
        1);

    const int result = photon_mgc_resolve_sabre_halide(
        nullptr,
        mgc_pattern,
        &accumulated,
        &gains,
        &black,
        static_cast<int16_t>(demosaic_white_level),
        &output,
        output_white_level,
        demosaic_blend_scale,
        demosaic_blend_bias,
        demosaic_sharpness_scale);
    if (result != 0) {
        __android_log_print(
            ANDROID_LOG_ERROR,
            kTag,
            "ResolveSabreHalide failed result=%d size=%dx%d cfa=%d mgcPattern=%d",
            result,
            width,
            height,
            cfa_pattern,
            mgc_pattern);
    }
    return result;
}
