#include "mgc_denoise_static.h"

#include <android/log.h>
#include <jni.h>

#include <algorithm>
#include <array>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <limits>
#include <new>
#include <string>
#include <vector>

namespace {

constexpr int kWhiteLevel = 16383;
constexpr char kLogTag[] = "PLog_MgcFullResolutionDenoise";

int LogStageFailure(const char* stage, int result) {
    __android_log_print(
        ANDROID_LOG_ERROR,
        kLogTag,
        "MGC full-resolution denoise stage=%s failed result=%d",
        stage,
        result);
    return result;
}

int RoundUp(int value, int multiple) {
    return ((value + multiple - 1) / multiple) * multiple;
}

float HalfToFloat(uint16_t bits) {
    _Float16 half = {};
    static_assert(sizeof(half) == sizeof(bits));
    std::memcpy(&half, &bits, sizeof(bits));
    return static_cast<float>(half);
}

uint16_t FloatToHalf(float value) {
    const _Float16 half = static_cast<_Float16>(value);
    uint16_t bits = 0;
    std::memcpy(&bits, &half, sizeof(bits));
    return bits;
}

bool CopyFive(JNIEnv* env, jfloatArray source, float output[5]) {
    if (source == nullptr || env->GetArrayLength(source) != 5) return false;
    env->GetFloatArrayRegion(source, 0, 5, output);
    return !env->ExceptionCheck();
}

bool CopyThree(JNIEnv* env, jfloatArray source, float output[3]) {
    if (source == nullptr || env->GetArrayLength(source) != 3) return false;
    env->GetFloatArrayRegion(source, 0, 3, output);
    return !env->ExceptionCheck();
}

struct SampledDelta {
    int64_t sample_count = 0;
    int64_t changed_count = 0;
    double absolute_sum = 0.0;
    double squared_sum = 0.0;
    int maximum = 0;
};

std::array<SampledDelta, 3> MeasurePlanarDelta(
    const int16_t* source,
    const int16_t* denoised,
    int width,
    int height,
    int stride,
    size_t plane_size) {
    std::array<SampledDelta, 3> result = {};
    constexpr int kSampleStep = 8;
    for (int y = 0; y < height; y += kSampleStep) {
        for (int x = 0; x < width; x += kSampleStep) {
            const size_t pixel = static_cast<size_t>(y) * stride + x;
            for (int channel = 0; channel < 3; ++channel) {
                const size_t index =
                    static_cast<size_t>(channel) * plane_size + pixel;
                const int difference =
                    static_cast<int>(denoised[index]) -
                    static_cast<int>(source[index]);
                const int absolute = std::abs(difference);
                SampledDelta& delta = result[channel];
                ++delta.sample_count;
                if (difference != 0) ++delta.changed_count;
                delta.absolute_sum += static_cast<double>(absolute);
                delta.squared_sum +=
                    static_cast<double>(difference) * difference;
                delta.maximum = std::max(delta.maximum, absolute);
            }
        }
    }
    return result;
}

void LogDenoiseDiagnostics(
    const uint16_t* strength,
    size_t strength_count,
    const std::array<SampledDelta, 3>& delta) {
    std::array<uint16_t, 3> strength_min = {
        std::numeric_limits<uint16_t>::max(),
        std::numeric_limits<uint16_t>::max(),
        std::numeric_limits<uint16_t>::max(),
    };
    std::array<uint16_t, 3> strength_max = {};
    std::array<double, 3> strength_sum = {};
    for (int channel = 0; channel < 3; ++channel) {
        const uint16_t* plane =
            strength + static_cast<size_t>(channel) * strength_count;
        for (size_t index = 0; index < strength_count; ++index) {
            const uint16_t value = plane[index];
            strength_min[channel] =
                std::min(strength_min[channel], value);
            strength_max[channel] =
                std::max(strength_max[channel], value);
            strength_sum[channel] += value;
        }
    }
    const auto mean_strength = [&](int channel) {
        return strength_count > 0
            ? strength_sum[channel] /
                static_cast<double>(strength_count)
            : 0.0;
    };
    const auto changed_percent = [&](int channel) {
        return delta[channel].sample_count > 0
            ? 100.0 * static_cast<double>(delta[channel].changed_count) /
                static_cast<double>(delta[channel].sample_count)
            : 0.0;
    };
    const auto mean_absolute = [&](int channel) {
        return delta[channel].sample_count > 0
            ? delta[channel].absolute_sum /
                static_cast<double>(delta[channel].sample_count)
            : 0.0;
    };
    const auto rms = [&](int channel) {
        return delta[channel].sample_count > 0
            ? std::sqrt(
                delta[channel].squared_sum /
                static_cast<double>(delta[channel].sample_count))
            : 0.0;
    };
    __android_log_print(
        ANDROID_LOG_INFO,
        kLogTag,
        "MGC denoise diagnostics strengthQ8="
        "[%u..%u/%.2f,%u..%u/%.2f,%u..%u/%.2f] "
        "delta14 Y=%.2f/%.2f/%d/%.1f%% "
        "Cb=%.2f/%.2f/%d/%.1f%% "
        "Cr=%.2f/%.2f/%d/%.1f%% samples=%lld",
        strength_min[0],
        strength_max[0],
        mean_strength(0),
        strength_min[1],
        strength_max[1],
        mean_strength(1),
        strength_min[2],
        strength_max[2],
        mean_strength(2),
        mean_absolute(0),
        rms(0),
        delta[0].maximum,
        changed_percent(0),
        mean_absolute(1),
        rms(1),
        delta[1].maximum,
        changed_percent(1),
        mean_absolute(2),
        rms(2),
        delta[2].maximum,
        changed_percent(2),
        static_cast<long long>(delta[0].sample_count));
}

void LogPecanInputs(
    const float normalized_yuv_read[3],
    const float normalized_yuv_shot[3],
    const float normalized_yuv_quadratic[3],
    const float q14_yuv_read[3],
    const float q14_yuv_shot[3],
    const float correlation[128],
    const float luma_strength[5],
    const photon::mgc_denoise::DenoiseNoiseBuffers& noise) {
    float correlation_min = std::numeric_limits<float>::max();
    float correlation_max = std::numeric_limits<float>::lowest();
    double correlation_sum = 0.0;
    for (int index = 0; index < 128; ++index) {
        correlation_min = std::min(correlation_min, correlation[index]);
        correlation_max = std::max(correlation_max, correlation[index]);
        correlation_sum += correlation[index];
    }
    const auto luma_sigma_q14 = [&](float normalized_signal) {
        const float variance =
            std::max(
                normalized_yuv_read[0] +
                    normalized_yuv_shot[0] * normalized_signal +
                    normalized_yuv_quadratic[0] * normalized_signal *
                        normalized_signal,
                0.0f);
        return std::sqrt(variance) *
            static_cast<float>(kWhiteLevel);
    };
    __android_log_print(
        ANDROID_LOG_INFO,
        kLogTag,
        "MGC Pecan inputs "
        "normalizedRead=[%.6g,%.6g,%.6g] "
        "normalizedShot=[%.6g,%.6g,%.6g] "
        "normalizedQuadratic=[%.6g,%.6g,%.6g] "
        "q14Read=[%.6g,%.6g,%.6g] q14Shot=[%.6g,%.6g,%.6g] "
        "lumaSigmaQ14(18%%/50%%)=[%.3f,%.3f] "
        "correlation=%.6g..%.6g/%.6g "
        "strength=[%.6g,%.6g,%.6g,%.6g,%.6g] "
        "read4x2=[%.6g,%.6g,%.6g,%.6g;%.6g,%.6g,%.6g,%.6g] "
        "shot4x2=[%.6g,%.6g,%.6g,%.6g;%.6g,%.6g,%.6g,%.6g] "
        "outlier=[%.6g,%.6g,%.6g,%.6g,%.6g] "
        "revert=[%.6g,%.6g,%.6g,%.6g,%.6g]",
        normalized_yuv_read[0],
        normalized_yuv_read[1],
        normalized_yuv_read[2],
        normalized_yuv_shot[0],
        normalized_yuv_shot[1],
        normalized_yuv_shot[2],
        normalized_yuv_quadratic[0],
        normalized_yuv_quadratic[1],
        normalized_yuv_quadratic[2],
        q14_yuv_read[0],
        q14_yuv_read[1],
        q14_yuv_read[2],
        q14_yuv_shot[0],
        q14_yuv_shot[1],
        q14_yuv_shot[2],
        luma_sigma_q14(0.18f),
        luma_sigma_q14(0.5f),
        correlation_min,
        correlation_max,
        correlation_sum / 128.0,
        luma_strength[0],
        luma_strength[1],
        luma_strength[2],
        luma_strength[3],
        luma_strength[4],
        noise.read[0],
        noise.read[1],
        noise.read[2],
        noise.read[3],
        noise.read[4],
        noise.read[5],
        noise.read[6],
        noise.read[7],
        noise.shot[0],
        noise.shot[1],
        noise.shot[2],
        noise.shot[3],
        noise.shot[4],
        noise.shot[5],
        noise.shot[6],
        noise.shot[7],
        noise.outlier_distance[0],
        noise.outlier_distance[1],
        noise.outlier_distance[2],
        noise.outlier_distance[3],
        noise.outlier_distance[4],
        noise.revert_factor[0],
        noise.revert_factor[1],
        noise.revert_factor[2],
        noise.revert_factor[3],
        noise.revert_factor[4]);
}

}  // namespace

extern "C" JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_raw_MgcFullResolutionDenoise_nativeDenoiseRgba16f(
    JNIEnv* env,
    jobject,
    jobject rgba_buffer,
    jint width,
    jint height,
    jint global_origin_x,
    jint global_origin_y,
    jint full_width,
    jint full_height,
    jboolean input_is_bayer,
    jint cfa_pattern,
    jboolean apply_lens_shading_in_bayer_aot,
    jfloatArray lens_shading,
    jint lens_width,
    jint lens_height,
    jfloatArray normalized_rgb_shot_array,
    jfloatArray normalized_rgb_read_array,
    jfloatArray normalized_rgb_white_balance_array,
    jfloatArray prepared_normalized_yuv_read_array,
    jfloat prepared_normalized_luma_shot,
    jfloat prepared_normalized_luma_quadratic,
    jfloat prepared_normalized_chroma_shot,
    jfloat prepared_normalized_chroma_quadratic,
    jfloatArray luma_correlation_array,
    jfloatArray chroma_correlation_array,
    jshortArray spatial_strength_q8_array,
    jint spatial_strength_width,
    jint spatial_strength_height,
    jboolean luma_enabled,
    jboolean chroma_enabled,
    jfloatArray luma_strength_array,
    jfloatArray luma_outlier_array,
    jfloatArray luma_revert_array,
    jfloatArray chroma_strength_array,
    jfloatArray chroma_outlier_array) {
    const bool run_luma = luma_enabled == JNI_TRUE;
    const bool run_chroma = chroma_enabled == JNI_TRUE;
    const bool bayer_input = input_is_bayer == JNI_TRUE;
    const bool apply_bayer_lens_shading =
        apply_lens_shading_in_bayer_aot == JNI_TRUE;
    if (rgba_buffer == nullptr || width <= 0 || height <= 0 ||
        full_width <= 0 || full_height <= 0 ||
        global_origin_x < 0 || global_origin_y < 0 ||
        global_origin_x + width > full_width ||
        global_origin_y + height > full_height ||
        (bayer_input && (cfa_pattern < 0 || cfa_pattern > 3)) ||
        (apply_bayer_lens_shading && !bayer_input) ||
        (!run_luma && !run_chroma)) {
        return -1;
    }
    auto* rgba = static_cast<uint16_t*>(
        env->GetDirectBufferAddress(rgba_buffer));
    const jlong capacity = env->GetDirectBufferCapacity(rgba_buffer);
    const int64_t required_bytes =
        static_cast<int64_t>(width) * height * 4 * sizeof(uint16_t);
    if (rgba == nullptr || capacity < required_bytes) return -1;

    float normalized_rgb_shot[3] = {};
    float normalized_rgb_read[3] = {};
    float normalized_rgb_white_balance[3] = {};
    float prepared_normalized_yuv_read[3] = {};
    float luma_strength[5] = {};
    float luma_outlier[5] = {};
    float luma_revert[5] = {};
    float chroma_strength[5] = {};
    float chroma_outlier[5] = {};
    if (!CopyThree(env, normalized_rgb_shot_array, normalized_rgb_shot) ||
        !CopyThree(env, normalized_rgb_read_array, normalized_rgb_read) ||
        !CopyThree(
            env,
            normalized_rgb_white_balance_array,
            normalized_rgb_white_balance) ||
        !CopyFive(env, luma_strength_array, luma_strength) ||
        !CopyFive(env, luma_outlier_array, luma_outlier) ||
        !CopyFive(env, luma_revert_array, luma_revert) ||
        !CopyFive(env, chroma_strength_array, chroma_strength) ||
        !CopyFive(env, chroma_outlier_array, chroma_outlier)) {
        return -1;
    }
    const bool has_prepared_yuv_noise =
        prepared_normalized_yuv_read_array != nullptr;
    if (has_prepared_yuv_noise &&
        (bayer_input ||
         !CopyThree(
             env,
             prepared_normalized_yuv_read_array,
             prepared_normalized_yuv_read))) {
        return -1;
    }
    if (has_prepared_yuv_noise &&
        (!std::isfinite(prepared_normalized_luma_shot) ||
         prepared_normalized_luma_shot < 0.0f ||
         !std::isfinite(prepared_normalized_luma_quadratic) ||
         prepared_normalized_luma_quadratic < 0.0f ||
         !std::isfinite(prepared_normalized_chroma_shot) ||
         prepared_normalized_chroma_shot < 0.0f ||
         !std::isfinite(prepared_normalized_chroma_quadratic) ||
         prepared_normalized_chroma_quadratic < 0.0f)) {
        return -1;
    }
    for (int channel = 0; channel < 3; ++channel) {
        if (!std::isfinite(normalized_rgb_white_balance[channel]) ||
            normalized_rgb_white_balance[channel] <= 0.0f) {
            return -1;
        }
        if (has_prepared_yuv_noise &&
            (!std::isfinite(prepared_normalized_yuv_read[channel]) ||
             prepared_normalized_yuv_read[channel] < 0.0f)) {
            return -1;
        }
    }

    float luma_correlation[128];
    float chroma_correlation[128];
    std::fill_n(luma_correlation, 128, 1.0f);
    std::fill_n(chroma_correlation, 128, 1.0f);
    const auto copy_correlation = [env](
                                      jfloatArray source,
                                      float destination[128]) {
        if (source == nullptr) return true;
        if (env->GetArrayLength(source) != 128) return false;
        env->GetFloatArrayRegion(source, 0, 128, destination);
        if (env->ExceptionCheck()) return false;
        for (int index = 0; index < 128; ++index) {
            if (!std::isfinite(destination[index]) ||
                destination[index] < 0.0f) {
                return false;
            }
        }
        return true;
    };
    if (!copy_correlation(luma_correlation_array, luma_correlation) ||
        !copy_correlation(chroma_correlation_array, chroma_correlation)) {
        return -1;
    }

    const int padded_width = RoundUp(width, 128);
    const int padded_height = RoundUp(height, 16);
    const int strength_width = padded_width / 4;
    const int strength_height = padded_height / 4;
    const size_t pixel_count =
        static_cast<size_t>(padded_width) * padded_height;
    const size_t strength_count =
        static_cast<size_t>(strength_width) * strength_height;

    try {
        // Two planar allocations are reused across RGB -> YUV, chroma,
        // Pecan luma and YUV -> RGB.
        std::vector<int16_t> planar_a(pixel_count * 3);
        std::vector<int16_t> planar_b(pixel_count * 3);
        if (bayer_input) {
            // BayerRawToYuv's exact input contract is a 3D U16 buffer whose
            // four planes are the spatial positions in each 2x2 Bayer cell.
            // Pack into planar_a's first pixel_count samples so this does not
            // require another full-resolution allocation.
            auto* packed_bayer =
                reinterpret_cast<uint16_t*>(planar_a.data());
            const int packed_width = padded_width / 2;
            const int packed_height = padded_height / 2;
            const size_t packed_plane_size =
                static_cast<size_t>(packed_width) * packed_height;
            for (int packed_y = 0; packed_y < packed_height; ++packed_y) {
                for (int packed_x = 0; packed_x < packed_width; ++packed_x) {
                    const size_t packed_index =
                        static_cast<size_t>(packed_y) * packed_width + packed_x;
                    for (int position_y = 0; position_y < 2; ++position_y) {
                        const int source_y = std::min(
                            packed_y * 2 + position_y,
                            height - 1);
                        for (int position_x = 0; position_x < 2; ++position_x) {
                            const int source_x = std::min(
                                packed_x * 2 + position_x,
                                width - 1);
                            const int plane = position_y * 2 + position_x;
                            const uint16_t normalized_u16 = rgba[
                                static_cast<size_t>(source_y) * width + source_x];
                            packed_bayer[
                                static_cast<size_t>(plane) * packed_plane_size +
                                packed_index] = static_cast<uint16_t>(std::lround(
                                    static_cast<double>(normalized_u16) * 16384.0 /
                                    65535.0));
                        }
                    }
                }
            }
        } else {
            auto* rgb_input =
                reinterpret_cast<uint16_t*>(planar_a.data());
            for (int y = 0; y < padded_height; ++y) {
                const int source_y = std::min(y, height - 1);
                for (int x = 0; x < padded_width; ++x) {
                    const int source_x = std::min(x, width - 1);
                    const size_t source_index =
                        (static_cast<size_t>(source_y) * width + source_x) * 4;
                    const size_t destination_index =
                        static_cast<size_t>(y) * padded_width + x;
                    for (int channel = 0; channel < 3; ++channel) {
                        const float normalized = std::clamp(
                            std::max(
                                HalfToFloat(rgba[source_index + channel]),
                                0.0f) *
                                normalized_rgb_white_balance[channel],
                            0.0f,
                            1.0f);
                        rgb_input[
                            static_cast<size_t>(channel) * pixel_count +
                            destination_index] =
                            static_cast<uint16_t>(
                                std::lround(normalized * kWhiteLevel));
                    }
                }
            }
        }

        std::vector<uint16_t> base_strength(strength_count, 256);
        std::vector<uint16_t> strength(strength_count * 3, 256);
        if (spatial_strength_q8_array != nullptr) {
            const int expected_full_strength_width =
                (full_width + 3) / 4;
            const int expected_full_strength_height =
                (full_height + 3) / 4;
            if (spatial_strength_width != expected_full_strength_width ||
                spatial_strength_height != expected_full_strength_height ||
                env->GetArrayLength(spatial_strength_q8_array) !=
                    spatial_strength_width * spatial_strength_height) {
                return -1;
            }
            std::vector<uint16_t> spatial_strength(
                static_cast<size_t>(spatial_strength_width) *
                spatial_strength_height);
            env->GetShortArrayRegion(
                spatial_strength_q8_array,
                0,
                static_cast<jsize>(spatial_strength.size()),
                reinterpret_cast<jshort*>(spatial_strength.data()));
            if (env->ExceptionCheck()) return -1;
            for (int y = 0; y < strength_height; ++y) {
                const int local_pixel_y = std::min(y * 4, height - 1);
                const int source_y = std::clamp(
                    (global_origin_y + local_pixel_y) / 4,
                    0,
                    spatial_strength_height - 1);
                for (int x = 0; x < strength_width; ++x) {
                    const int local_pixel_x = std::min(x * 4, width - 1);
                    const int source_x = std::clamp(
                        (global_origin_x + local_pixel_x) / 4,
                        0,
                        spatial_strength_width - 1);
                    base_strength[
                        static_cast<size_t>(y) * strength_width + x] =
                        spatial_strength[
                            static_cast<size_t>(source_y) *
                                spatial_strength_width +
                            source_x];
                }
            }
        } else if (spatial_strength_width != 0 ||
                   spatial_strength_height != 0) {
            return -1;
        }
        uint16_t base_strength_min = std::numeric_limits<uint16_t>::max();
        uint16_t base_strength_max = 0;
        uint64_t base_strength_sum = 0;
        for (const uint16_t value : base_strength) {
            base_strength_min = std::min(base_strength_min, value);
            base_strength_max = std::max(base_strength_max, value);
            base_strength_sum += value;
        }
        __android_log_print(
            ANDROID_LOG_INFO,
            kLogTag,
            "MGC denoise base Spatial strengthQ8=%u..%u/%.3f "
            "source=%s logical=%dx%d padded=%dx%d origin=(%d,%d)",
            base_strength_min,
            base_strength_max,
            base_strength.empty()
                ? 0.0
                : static_cast<double>(base_strength_sum) /
                    static_cast<double>(base_strength.size()),
            spatial_strength_q8_array == nullptr ? "identity" : "spatial-aot",
            spatial_strength_width,
            spatial_strength_height,
            strength_width,
            strength_height,
            global_origin_x,
            global_origin_y);
        std::vector<float> lens;
        if (lens_shading != nullptr && lens_width > 0 && lens_height > 0) {
            const jsize lens_count = env->GetArrayLength(lens_shading);
            if (lens_count != lens_width * lens_height * 4) return -1;
            lens.resize(static_cast<size_t>(lens_count));
            env->GetFloatArrayRegion(
                lens_shading,
                0,
                lens_count,
                lens.data());
            if (env->ExceptionCheck()) return -1;
            const int full_strength_width = RoundUp(full_width, 128) / 4;
            const int full_strength_height = RoundUp(full_height, 16) / 4;
            const int strength_origin_x = global_origin_x / 4;
            const int strength_origin_y = global_origin_y / 4;
            const float sample_rate_x = full_strength_width > 1
                ? static_cast<float>(lens_width - 1) /
                    static_cast<float>(full_strength_width - 1)
                : 1.0f;
            const float sample_rate_y = full_strength_height > 1
                ? static_cast<float>(lens_height - 1) /
                    static_cast<float>(full_strength_height - 1)
                : 1.0f;
            const int strength_result =
                photon::mgc_denoise::ComputeStrengthMap(
                    base_strength.data(),
                    strength_width,
                    strength_height,
                    strength_origin_x,
                    strength_origin_y,
                    lens.data(),
                    lens_width,
                    lens_height,
                    sample_rate_x,
                    sample_rate_y,
                    strength.data());
            if (strength_result != 0) {
                return LogStageFailure("strength_map", strength_result);
            }
        } else {
            if (apply_bayer_lens_shading) return -1;
            for (int channel = 0; channel < 3; ++channel) {
                std::copy_n(
                    base_strength.data(),
                    strength_count,
                    strength.data() +
                        static_cast<size_t>(channel) * strength_count);
            }
        }

        // Exact matrix stored by MGC at libgcastartup.so+0x0d64c24.
        constexpr float rgb_to_yuv[9] = {
            0.2125999927520752f,
            0.7152000069618225f,
            0.07219959795475006f,
            -0.16245023906230927f,
            -0.5464943051338196f,
            0.7089447379112244f,
            0.9999967217445374f,
            -0.9083024859428406f,
            -0.09169333428144455f,
        };
        float scaled_rgb_read[3] = {};
        float scaled_rgb_shot[3] = {};
        float scaled_rgb_quadratic[3] = {};
        float prepared_rgb_read[3] = {};
        float prepared_rgb_shot[3] = {};
        float prepared_rgb_quadratic[3] = {};
        float prepared_luma_correlation[128] = {};
        float prepared_chroma_correlation[128] = {};
        // The input NoiseModel is expressed in normalized, un-white-balanced
        // camera RGB: variance(x) = read + shot * x + quadratic * x^2.
        // The full-resolution denoiser operates on the Scale(2) noise model.
        // Together with the calculation WB this gives x' = 2 * gain * x, so
        // read' = read * (2 * gain)^2 and shot' = shot * (2 * gain), while
        // quadratic remains unchanged.
        constexpr float full_resolution_noise_model_scale = 2.0f;
        for (int channel = 0; channel < 3; ++channel) {
            const float channel_gain =
                normalized_rgb_white_balance[channel] *
                full_resolution_noise_model_scale;
            scaled_rgb_read[channel] =
                std::max(normalized_rgb_read[channel], 0.0f) *
                channel_gain * channel_gain;
            scaled_rgb_shot[channel] =
                std::max(normalized_rgb_shot[channel], 0.0f) *
                channel_gain;
        }
        if (has_prepared_yuv_noise) {
            __android_log_print(
                ANDROID_LOG_INFO,
                kLogTag,
                "MGC RGB noise-domain remap bypassed: "
                "using measured VGN YUV model");
        } else {
            __android_log_print(
                ANDROID_LOG_INFO,
                kLogTag,
                "MGC RGB noise domain input=%s "
                "calculationWb=[%.6g,%.6g,%.6g] "
                "read=[%.6g,%.6g,%.6g]->[%.6g,%.6g,%.6g] "
                "shot=[%.6g,%.6g,%.6g]->[%.6g,%.6g,%.6g]",
                bayer_input ? "BAYER" : "CAMERA_RGBA16F",
                normalized_rgb_white_balance[0],
                normalized_rgb_white_balance[1],
                normalized_rgb_white_balance[2],
                normalized_rgb_read[0],
                normalized_rgb_read[1],
                normalized_rgb_read[2],
                scaled_rgb_read[0],
                scaled_rgb_read[1],
                scaled_rgb_read[2],
                normalized_rgb_shot[0],
                normalized_rgb_shot[1],
                normalized_rgb_shot[2],
                scaled_rgb_shot[0],
                scaled_rgb_shot[1],
                scaled_rgb_shot[2]);
        }
        if (bayer_input) {
            float correlation_mean = 0.0f;
            if (!photon::mgc_denoise::PrepareDefaultBayerDenoiseNoiseModel(
                    scaled_rgb_read,
                    scaled_rgb_shot,
                    scaled_rgb_quadratic,
                    luma_correlation,
                    prepared_rgb_read,
                    prepared_rgb_shot,
                    prepared_rgb_quadratic,
                    prepared_luma_correlation,
                    &correlation_mean)) {
                return LogStageFailure("bayer_noise_model", -1);
            }
            // The default Bayer path receives one upstream Spatial spectrum. Its fixed demosaic
            // remap is channel-independent, so the chroma spectrum has the same propagated shape.
            std::copy_n(
                prepared_luma_correlation,
                128,
                prepared_chroma_correlation);
            __android_log_print(
                ANDROID_LOG_INFO,
                kLogTag,
                "MGC Bayer denoise prepare demosaicSharpness=0.1 "
                "correlationMean=%.9g "
                "rgbRead=[%.6g,%.6g,%.6g] "
                "rgbShot=[%.6g,%.6g,%.6g]",
                correlation_mean,
                prepared_rgb_read[0],
                prepared_rgb_read[1],
                prepared_rgb_read[2],
                prepared_rgb_shot[0],
                prepared_rgb_shot[1],
                prepared_rgb_shot[2]);
        } else {
            std::copy_n(scaled_rgb_read, 3, prepared_rgb_read);
            std::copy_n(scaled_rgb_shot, 3, prepared_rgb_shot);
            std::copy_n(scaled_rgb_quadratic, 3, prepared_rgb_quadratic);
            std::copy_n(luma_correlation, 128, prepared_luma_correlation);
            std::copy_n(chroma_correlation, 128, prepared_chroma_correlation);
        }
        float yuv_read[3] = {};
        float yuv_shot[3] = {};
        float yuv_quadratic[3] = {};
        if (has_prepared_yuv_noise) {
            std::copy_n(prepared_normalized_yuv_read, 3, yuv_read);
            yuv_shot[0] = prepared_normalized_luma_shot;
            yuv_quadratic[0] = prepared_normalized_luma_quadratic;
            yuv_shot[1] = yuv_shot[2] = prepared_normalized_chroma_shot;
            yuv_quadratic[1] = yuv_quadratic[2] =
                prepared_normalized_chroma_quadratic;
            __android_log_print(
                ANDROID_LOG_INFO,
                kLogTag,
                "MGC VGN prepared YUV noise "
                "read=[%.6g,%.6g,%.6g] lumaShot=%.6g lumaQuadratic=%.6g "
                "chromaShot=%.6g chromaQuadratic=%.6g",
                yuv_read[0],
                yuv_read[1],
                yuv_read[2],
                yuv_shot[0],
                yuv_quadratic[0],
                yuv_shot[1],
                yuv_quadratic[1]);
        } else {
            for (int output_channel = 0; output_channel < 3; ++output_channel) {
                for (int input_channel = 0; input_channel < 3; ++input_channel) {
                    const float matrix_value =
                        rgb_to_yuv[output_channel * 3 + input_channel];
                    const float matrix_squared = matrix_value * matrix_value;
                    yuv_read[output_channel] +=
                        matrix_squared * prepared_rgb_read[input_channel];
                    yuv_shot[output_channel] +=
                        matrix_squared * prepared_rgb_shot[input_channel];
                    yuv_quadratic[output_channel] +=
                        matrix_squared * prepared_rgb_quadratic[input_channel];
                }
            }
            // CompleteS16's shot/quadratic ABI is scalar for chroma. A component-wise maximum
            // is the conservative representable envelope of the analytic Cb and Cr curves.
            yuv_shot[1] = yuv_shot[2] = std::max(yuv_shot[1], yuv_shot[2]);
            yuv_quadratic[1] = yuv_quadratic[2] =
                std::max(yuv_quadratic[1], yuv_quadratic[2]);
            __android_log_print(
                ANDROID_LOG_INFO,
                kLogTag,
                "MGC analytic YUV noise read=[%.6g,%.6g,%.6g] "
                "lumaShot=%.6g lumaQuadratic=%.6g "
                "chromaEnvelopeShot=%.6g chromaEnvelopeQuadratic=%.6g",
                yuv_read[0],
                yuv_read[1],
                yuv_read[2],
                yuv_shot[0],
                yuv_quadratic[0],
                yuv_shot[1],
                yuv_quadratic[1]);
        }
        // RgbRawToYuv emits Q14 S16 samples.  Pecan's generated arithmetic
        // consumes variance = read + shot * sample + quadratic * sample^2 in
        // that same sample domain; it does not rescale normalized
        // coefficients internally.  Convert the normalized NoiseModel once
        // at this boundary: read variance scales by white^2, shot by white,
        // while the dimensionless quadratic factor is unchanged.
        constexpr float white = static_cast<float>(kWhiteLevel);
        constexpr float white_squared = white * white;
        float q14_yuv_read[3] = {};
        float q14_yuv_shot[3] = {};
        for (int channel = 0; channel < 3; ++channel) {
            q14_yuv_read[channel] = yuv_read[channel] * white_squared;
            q14_yuv_shot[channel] = yuv_shot[channel] * white;
        }

        int rgb_to_yuv_result = 0;
        if (bayer_input) {
            const float bayer_channel_gains[4] = {
                normalized_rgb_white_balance[0],
                normalized_rgb_white_balance[1],
                normalized_rgb_white_balance[1],
                normalized_rgb_white_balance[2],
            };
            rgb_to_yuv_result =
                photon::mgc_denoise::RunDefaultBayerRawToYuv(
                    reinterpret_cast<const uint16_t*>(planar_a.data()),
                    padded_width,
                    padded_height,
                    cfa_pattern,
                    bayer_channel_gains,
                    apply_bayer_lens_shading && !lens.empty()
                        ? lens.data()
                        : nullptr,
                    apply_bayer_lens_shading ? lens_width : 0,
                    apply_bayer_lens_shading ? lens_height : 0,
                    !apply_bayer_lens_shading || lens.empty() || width <= 1
                        ? 1.0f
                        : static_cast<float>(lens_width - 1) /
                            static_cast<float>(width - 1),
                    !apply_bayer_lens_shading || lens.empty() || height <= 1
                        ? 1.0f
                        : static_cast<float>(lens_height - 1) /
                            static_cast<float>(height - 1),
                    planar_b.data());
        } else {
            rgb_to_yuv_result = photon::mgc_denoise::RunRgbRawToYuv(
                reinterpret_cast<const uint16_t*>(planar_a.data()),
                padded_width,
                padded_height,
                planar_b.data());
        }
        if (rgb_to_yuv_result != 0) {
            return LogStageFailure("rgb_to_yuv", rgb_to_yuv_result);
        }

        if (run_chroma) {
            photon::mgc_denoise::ChromaDenoiseNoiseBuffers chroma_noise;
            if (!photon::mgc_denoise::BuildChromaNoiseBuffers(
                    q14_yuv_read,
                    q14_yuv_shot[1],
                    yuv_quadratic[1],
                    prepared_chroma_correlation,
                    chroma_strength,
                    chroma_outlier,
                    &chroma_noise)) {
                return LogStageFailure("chroma_noise_model", -1);
            }
            const int chroma_result =
                photon::mgc_denoise::RunChromaDenoise(
                    planar_b.data(),
                    padded_width,
                    padded_height,
                    strength.data(),
                    strength_width,
                    strength_height,
                    chroma_noise,
                    planar_a.data());
            if (chroma_result != 0) {
                return LogStageFailure("chroma_pyramid", chroma_result);
            }
        }

        if (run_luma) {
            photon::mgc_denoise::DenoiseNoiseBuffers luma_noise;
            if (!photon::mgc_denoise::BuildNoiseBuffers(
                    q14_yuv_read[0],
                    q14_yuv_shot[0],
                    yuv_quadratic[0],
                    prepared_luma_correlation,
                    luma_strength,
                    luma_outlier,
                    luma_revert,
                    &luma_noise)) {
                return LogStageFailure("luma_noise_model", -1);
            }
            LogPecanInputs(
                yuv_read,
                yuv_shot,
                yuv_quadratic,
                q14_yuv_read,
                q14_yuv_shot,
                prepared_luma_correlation,
                luma_strength,
                luma_noise);
            if (!run_chroma) {
                std::copy_n(
                    planar_b.data() + pixel_count,
                    pixel_count * 2,
                    planar_a.data() + pixel_count);
            }
            const int pecan_result = photon::mgc_denoise::RunPecan(
                strength.data(),
                strength_width,
                strength_height,
                luma_noise,
                planar_b.data(),
                padded_width,
                padded_height,
                planar_a.data());
            if (pecan_result != 0) {
                return LogStageFailure("pecan_luma", pecan_result);
            }
        }

        const auto output_delta = MeasurePlanarDelta(
            planar_b.data(),
            planar_a.data(),
            width,
            height,
            padded_width,
            pixel_count);
        LogDenoiseDiagnostics(
            strength.data(),
            strength_count,
            output_delta);

        const int yuv_to_rgb_result =
            photon::mgc_denoise::RunYuvToRgb(
                planar_a.data(),
                padded_width,
                padded_height,
                planar_b.data());
        if (yuv_to_rgb_result != 0) {
            return LogStageFailure("yuv_to_rgb", yuv_to_rgb_result);
        }

        for (int y = 0; y < height; ++y) {
            for (int x = 0; x < width; ++x) {
                const size_t source_index =
                    static_cast<size_t>(y) * padded_width + x;
                const size_t destination_index =
                    (static_cast<size_t>(y) * width + x) * 4;
                for (int channel = 0; channel < 3; ++channel) {
                    const float normalized =
                        static_cast<float>(
                            planar_b[
                                static_cast<size_t>(channel) * pixel_count +
                                source_index]) /
                        static_cast<float>(kWhiteLevel) /
                        normalized_rgb_white_balance[channel];
                    rgba[destination_index + channel] =
                        FloatToHalf(normalized);
                }
                rgba[destination_index + 3] = FloatToHalf(1.0f);
            }
        }
        return 0;
    } catch (const std::bad_alloc&) {
        return LogStageFailure("allocation", -2);
    }
}
