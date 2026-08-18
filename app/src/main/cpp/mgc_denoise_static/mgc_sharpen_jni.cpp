#include "mgc_denoise_static.h"

#include <android/log.h>
#include <jni.h>
#include <omp.h>

#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstddef>
#include <cstdint>
#include <limits>
#include <memory>
#include <new>

namespace {

constexpr char kTag[] = "PLog_MgcSharpen";
constexpr int kU12White = 4095;
constexpr int kHostWorkers = 4;

int16_t RoundSignedU12(float value) {
    const long rounded = std::lrintf(value);
    return static_cast<int16_t>(std::clamp<long>(
        rounded,
        -kU12White,
        kU12White));
}

uint8_t U12ToU8(uint16_t value) {
    // SharpenTo16Bit's final worker clamps with 0x0000/0x0fff before ST3;
    // "16Bit" describes the output storage type, not a 0..65535 value domain.
    const uint32_t clamped = std::min<uint32_t>(value, kU12White);
    return static_cast<uint8_t>(
        (clamped * 255u + static_cast<uint32_t>(kU12White / 2)) /
        static_cast<uint32_t>(kU12White));
}

}  // namespace

extern "C" JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_raw_MgcSharpen_nativeSharpenRgba8(
    JNIEnv* env,
    jobject,
    jobject rgba_buffer,
    jint width,
    jint height,
    jfloat snr,
    jfloat sharpen_attenuation_scale) {
    if (rgba_buffer == nullptr || width <= 0 || height <= 0 ||
        !std::isfinite(snr) || snr <= 0.0f ||
        !std::isfinite(sharpen_attenuation_scale) ||
        sharpen_attenuation_scale < 0.0f) {
        return -1;
    }
    const size_t pixel_count =
        static_cast<size_t>(width) * static_cast<size_t>(height);
    if (pixel_count >
        static_cast<size_t>(std::numeric_limits<int>::max()) / 3u) {
        return -1;
    }
    auto* rgba = static_cast<uint8_t*>(
        env->GetDirectBufferAddress(rgba_buffer));
    const jlong capacity = env->GetDirectBufferCapacity(rgba_buffer);
    const size_t rgba_bytes = pixel_count * 4u;
    if (rgba == nullptr || capacity < 0 ||
        static_cast<uint64_t>(capacity) < rgba_bytes) {
        return -1;
    }

    photon::mgc_denoise::SharpenCurveSelection curve_selection;
    if (!photon::mgc_denoise::BuildDefaultSharpenCurves(
            snr,
            &curve_selection)) {
        return -1;
    }

    std::unique_ptr<int16_t[]> input_yuv(
        new (std::nothrow) int16_t[pixel_count * 3u]);
    std::unique_ptr<uint16_t[]> output_rgb(
        new (std::nothrow) uint16_t[pixel_count * 3u]);
    if (!input_yuv || !output_rgb) return -2;

    const auto start = std::chrono::steady_clock::now();
    // Exact camera RGB -> YUV matrix stored by MGC 9.6.080 at
    // libgcastartup.so+0x0d64c24. The adapter only changes storage/domain at
    // Photon's existing final-sharpen boundary; it does not apply a transfer
    // function, tone curve, white balance or color correction.
    constexpr float matrix[9] = {
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
    const float u8_to_u12 =
        static_cast<float>(kU12White) / 255.0f;
#pragma omp parallel for schedule(static) num_threads(kHostWorkers)
    for (size_t index = 0; index < pixel_count; ++index) {
        const float red = static_cast<float>(rgba[index * 4u]) * u8_to_u12;
        const float green =
            static_cast<float>(rgba[index * 4u + 1u]) * u8_to_u12;
        const float blue =
            static_cast<float>(rgba[index * 4u + 2u]) * u8_to_u12;
        input_yuv[index] = RoundSignedU12(
            matrix[0] * red + matrix[1] * green + matrix[2] * blue);
        input_yuv[pixel_count + index] = RoundSignedU12(
            matrix[3] * red + matrix[4] * green + matrix[5] * blue);
        input_yuv[pixel_count * 2u + index] = RoundSignedU12(
            matrix[6] * red + matrix[7] * green + matrix[8] * blue);
    }

    const int sharpen_result = photon::mgc_denoise::RunSharpenTo16Bit(
        input_yuv.get(),
        width,
        height,
        curve_selection.curves,
        curve_selection.relative_corner_acutance_correction,
        sharpen_attenuation_scale,
        output_rgb.get());
    if (sharpen_result != 0) {
        __android_log_print(
            ANDROID_LOG_ERROR,
            kTag,
            "SharpenTo16Bit failed status=%d size=%dx%d snr=%.6g attenuation=%.6g",
            sharpen_result,
            width,
            height,
            snr,
            sharpen_attenuation_scale);
        return sharpen_result;
    }

#pragma omp parallel for schedule(static) num_threads(kHostWorkers)
    for (size_t index = 0; index < pixel_count; ++index) {
        rgba[index * 4u] = U12ToU8(output_rgb[index * 3u]);
        rgba[index * 4u + 1u] = U12ToU8(output_rgb[index * 3u + 1u]);
        rgba[index * 4u + 2u] = U12ToU8(output_rgb[index * 3u + 2u]);
        rgba[index * 4u + 3u] = 255u;
    }
    const auto elapsed_ms = std::chrono::duration_cast<std::chrono::milliseconds>(
        std::chrono::steady_clock::now() - start).count();
    __android_log_print(
        ANDROID_LOG_INFO,
        kTag,
        "MGC SharpenTo16Bit complete size=%dx%d snr=%.6g nodes=%.6g..%.6g "
        "interpolation=%.6g attenuation=%.6g elapsed=%lldms",
        width,
        height,
        snr,
        curve_selection.lower_snr,
        curve_selection.upper_snr,
        curve_selection.interpolation,
        sharpen_attenuation_scale,
        static_cast<long long>(elapsed_ms));
    return 0;
}
