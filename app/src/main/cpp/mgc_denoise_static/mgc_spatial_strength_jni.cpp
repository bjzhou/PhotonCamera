#include "mgc_denoise_static.h"

#include <android/log.h>
#include <jni.h>

#include <algorithm>
#include <cmath>
#include <cstdint>
#include <limits>
#include <new>
#include <vector>

namespace {

constexpr char kTag[] = "PLog_MgcSpatialStrength";
constexpr float kIdentityMultiplier = 1.0f;
constexpr float kIdentityReadNoise = 0.0f;
constexpr float kIdentityShotNoise = 1.0f;
constexpr uint16_t kIdentityStrengthQ8 = 256;

bool CopyFloatArray(
    JNIEnv* env,
    jfloatArray source,
    int expected,
    std::vector<float>* output) {
    if (source == nullptr || expected <= 0 ||
        env->GetArrayLength(source) != expected) {
        return false;
    }
    output->resize(static_cast<size_t>(expected));
    env->GetFloatArrayRegion(source, 0, expected, output->data());
    return !env->ExceptionCheck();
}

bool IsValidNoisePair(float read, float shot) {
    return std::isfinite(read) && read >= 0.0f &&
        std::isfinite(shot) && shot >= 0.0f &&
        (read > 0.0f || shot > 0.0f);
}

int SanitizeNoiseParameters(
    int frame_count,
    std::vector<float>* read,
    std::vector<float>* shot) {
    int replacement_count = 0;
    for (int channel = 0; channel < 3; ++channel) {
        const int channel_offset = channel * frame_count;
        float identity_read = kIdentityReadNoise;
        float identity_shot = kIdentityShotNoise;
        for (int frame = 0; frame < frame_count; ++frame) {
            const int index = channel_offset + frame;
            if (IsValidNoisePair((*read)[index], (*shot)[index])) {
                identity_read = (*read)[index];
                identity_shot = (*shot)[index];
                break;
            }
        }
        for (int frame = 0; frame < frame_count; ++frame) {
            const int index = channel_offset + frame;
            if (IsValidNoisePair((*read)[index], (*shot)[index])) continue;
            (*read)[index] = identity_read;
            (*shot)[index] = identity_shot;
            ++replacement_count;
        }
    }
    return replacement_count;
}

int SanitizePositiveMultipliers(std::vector<float>* values) {
    int replacement_count = 0;
    for (float& value : *values) {
        if (std::isfinite(value) && value > 0.0f) continue;
        value = kIdentityMultiplier;
        ++replacement_count;
    }
    return replacement_count;
}

}  // namespace

extern "C" JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_processor_MgcSpatialStrengthMapGenerator_nativeCompute(
    JNIEnv* env,
    jobject,
    jint layout,
    jobject fused_fixed16_buffer,
    jint width,
    jint height,
    jint cfa_pattern,
    jobject alignment_buffer,
    jint alignment_width,
    jint alignment_height,
    jobject rejection_buffer,
    jint rejection_width,
    jint rejection_height,
    jint frame_count,
    jfloatArray input_read_noise_array,
    jfloatArray input_shot_noise_array,
    jfloatArray frame_weights_array,
    jfloatArray kernel_sigmas_array,
    jfloat rejected_denoise_multiplier,
    jshortArray output_strength_array,
    jfloatArray output_read_noise_array,
    jfloatArray output_shot_noise_array,
    jfloatArray output_weights_sum_total_diag_0_array,
    jfloatArray output_weights_sum_total_diag_1_array) {
    if (fused_fixed16_buffer == nullptr || alignment_buffer == nullptr ||
        rejection_buffer == nullptr || output_strength_array == nullptr ||
        output_read_noise_array == nullptr ||
        output_shot_noise_array == nullptr ||
        output_weights_sum_total_diag_0_array == nullptr ||
        output_weights_sum_total_diag_1_array == nullptr ||
        width <= 0 || height <= 0 || alignment_width <= 0 ||
        alignment_height <= 0 || rejection_width <= 0 ||
        rejection_height <= 0 || frame_count <= 1 ||
        (layout != 0 && layout != 1)) {
        return -1;
    }
    auto* fused_fixed16 = static_cast<int16_t*>(
        env->GetDirectBufferAddress(fused_fixed16_buffer));
    auto* alignment = static_cast<float*>(
        env->GetDirectBufferAddress(alignment_buffer));
    auto* rejection = static_cast<uint8_t*>(
        env->GetDirectBufferAddress(rejection_buffer));
    if (fused_fixed16 == nullptr || alignment == nullptr ||
        rejection == nullptr) {
        return -1;
    }
    const int64_t fused_samples = layout == 0
        ? ((static_cast<int64_t>(width) + 15) / 16 * 8) *
            ((static_cast<int64_t>(height) + 15) / 16 * 8) * 4
        : ((static_cast<int64_t>(width) + 15) / 16 * 16) *
            ((static_cast<int64_t>(height) + 15) / 16 * 16) * 3;
    const int64_t alignment_values =
        static_cast<int64_t>(alignment_width) * alignment_height *
        frame_count * 2;
    const int64_t rejection_values =
        static_cast<int64_t>(rejection_width) * rejection_height *
        frame_count;
    const int64_t output_values =
        static_cast<int64_t>(rejection_width) * rejection_height;
    if (env->GetDirectBufferCapacity(fused_fixed16_buffer) <
            fused_samples * static_cast<int64_t>(sizeof(int16_t)) ||
        env->GetDirectBufferCapacity(alignment_buffer) <
            alignment_values * static_cast<int64_t>(sizeof(float)) ||
        env->GetDirectBufferCapacity(rejection_buffer) < rejection_values ||
        env->GetArrayLength(output_strength_array) != output_values ||
        env->GetArrayLength(output_read_noise_array) != 3 ||
        env->GetArrayLength(output_shot_noise_array) != 3 ||
        env->GetArrayLength(output_weights_sum_total_diag_0_array) != 3 ||
        env->GetArrayLength(output_weights_sum_total_diag_1_array) != 3) {
        return -1;
    }

    try {
        std::vector<float> input_read_noise;
        std::vector<float> input_shot_noise;
        std::vector<float> frame_weights;
        std::vector<float> kernel_sigmas;
        if (!CopyFloatArray(
                env,
                input_read_noise_array,
                frame_count * 3,
                &input_read_noise) ||
            !CopyFloatArray(
                env,
                input_shot_noise_array,
                frame_count * 3,
                &input_shot_noise) ||
            !CopyFloatArray(
                env,
                frame_weights_array,
                frame_count,
                &frame_weights) ||
            !CopyFloatArray(
                env,
                kernel_sigmas_array,
                frame_count,
                &kernel_sigmas)) {
            return -1;
        }
        const int noise_replacements = SanitizeNoiseParameters(
            frame_count,
            &input_read_noise,
            &input_shot_noise);
        const int frame_weight_replacements =
            SanitizePositiveMultipliers(&frame_weights);
        const int kernel_sigma_replacements =
            SanitizePositiveMultipliers(&kernel_sigmas);
        const bool rejected_multiplier_replaced =
            !std::isfinite(rejected_denoise_multiplier) ||
            rejected_denoise_multiplier <= 0.0f;
        if (rejected_multiplier_replaced) {
            rejected_denoise_multiplier = kIdentityMultiplier;
        }
        if (noise_replacements > 0 || frame_weight_replacements > 0 ||
            kernel_sigma_replacements > 0 || rejected_multiplier_replaced) {
            __android_log_print(
                ANDROID_LOG_WARN,
                kTag,
                "MGC Spatial strength replaced invalid inputs with identity "
                "noisePairs=%d frameWeights=%d kernelSigmas=%d "
                "rejectedMultiplier=%d",
                noise_replacements,
                frame_weight_replacements,
                kernel_sigma_replacements,
                rejected_multiplier_replaced ? 1 : 0);
        }
        std::vector<uint16_t> output(static_cast<size_t>(output_values));
        photon::mgc_denoise::SpatialStrengthResult diagnostics;
        const int result = photon::mgc_denoise::ComputeSpatialStrengthMap(
            layout == 0
                ? photon::mgc_denoise::SpatialStrengthInputLayout::Bayer
                : photon::mgc_denoise::SpatialStrengthInputLayout::Rgb,
            fused_fixed16,
            width,
            height,
            cfa_pattern,
            alignment,
            alignment_width,
            alignment_height,
            rejection,
            rejection_width,
            rejection_height,
            frame_count,
            input_read_noise.data(),
            input_shot_noise.data(),
            frame_weights.data(),
            kernel_sigmas.data(),
            rejected_denoise_multiplier,
            output.data(),
            &diagnostics);
        if (result != 0) {
            __android_log_print(
                ANDROID_LOG_ERROR,
                kTag,
                "MGC Spatial strength AOT failed result=%d layout=%d "
                "image=%dx%d alignment=%dx%dx%d rejection=%dx%dx%d",
                result,
                layout,
                width,
                height,
                alignment_width,
                alignment_height,
                frame_count,
                rejection_width,
                rejection_height,
                frame_count);
            return result;
        }
        int identity_strength_replacements = 0;
        for (uint16_t& value : output) {
            if (value != 0) continue;
            value = kIdentityStrengthQ8;
            ++identity_strength_replacements;
        }
        if (identity_strength_replacements > 0) {
            __android_log_print(
                ANDROID_LOG_WARN,
                kTag,
                "MGC Spatial strength replaced zero Q8 outputs with identity "
                "count=%d identityQ8=%u",
                identity_strength_replacements,
                static_cast<unsigned int>(kIdentityStrengthQ8));
        }
        uint16_t minimum = std::numeric_limits<uint16_t>::max();
        uint16_t maximum = 0;
        uint64_t sum = 0;
        for (const uint16_t value : output) {
            minimum = std::min(minimum, value);
            maximum = std::max(maximum, value);
            sum += value;
        }
        env->SetShortArrayRegion(
            output_strength_array,
            0,
            static_cast<jsize>(output.size()),
            reinterpret_cast<const jshort*>(output.data()));
        if (env->ExceptionCheck()) return -1;
        // NoiseModel's wrapper at 0x5e959c8 prepends a zero quadratic span:
        // Halide output .0 remains read and output .1 remains shot.
        env->SetFloatArrayRegion(
            output_read_noise_array,
            0,
            3,
            diagnostics.output_noise_model_0);
        env->SetFloatArrayRegion(
            output_shot_noise_array,
            0,
            3,
            diagnostics.output_noise_model_1);
        env->SetFloatArrayRegion(
            output_weights_sum_total_diag_0_array,
            0,
            3,
            diagnostics.output_weights_sum_total_diag_0);
        env->SetFloatArrayRegion(
            output_weights_sum_total_diag_1_array,
            0,
            3,
            diagnostics.output_weights_sum_total_diag_1);
        if (env->ExceptionCheck()) return -1;
        __android_log_print(
            ANDROID_LOG_INFO,
            kTag,
            "MGC Spatial strength complete layout=%s size=%dx%d frames=%d "
            "rejectedMultiplier=%.6g q8=%u..%u/%.3f "
            "read(output0)=[%.6g,%.6g,%.6g] "
            "shot(output1)=[%.6g,%.6g,%.6g] diag0=[%.6g,%.6g,%.6g] "
            "diag1=[%.6g,%.6g,%.6g]",
            layout == 0 ? "BAYER" : "RGB",
            rejection_width,
            rejection_height,
            frame_count,
            rejected_denoise_multiplier,
            minimum,
            maximum,
            output.empty()
                ? 0.0
                : static_cast<double>(sum) /
                    static_cast<double>(output.size()),
            diagnostics.output_noise_model_0[0],
            diagnostics.output_noise_model_0[1],
            diagnostics.output_noise_model_0[2],
            diagnostics.output_noise_model_1[0],
            diagnostics.output_noise_model_1[1],
            diagnostics.output_noise_model_1[2],
            diagnostics.output_weights_sum_total_diag_0[0],
            diagnostics.output_weights_sum_total_diag_0[1],
            diagnostics.output_weights_sum_total_diag_0[2],
            diagnostics.output_weights_sum_total_diag_1[0],
            diagnostics.output_weights_sum_total_diag_1[1],
            diagnostics.output_weights_sum_total_diag_1[2]);
        return 0;
    } catch (const std::bad_alloc&) {
        return -2;
    }
}
