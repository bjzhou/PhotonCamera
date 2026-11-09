#include "mgc_full_resolution_denoise.h"

#include <jni.h>

#include <algorithm>
#include <cstdint>
#include <vector>

namespace {

bool CopyFloats(JNIEnv* env, jfloatArray source, jsize count, float* output) {
    if (source == nullptr || env->GetArrayLength(source) != count) return false;
    env->GetFloatArrayRegion(source, 0, count, output);
    return !env->ExceptionCheck();
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
    jboolean measure_moire_enabled,
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
    jfloat denoise_response_offset,
    jfloat denoise_response_cosine_offset,
    jshortArray spatial_strength_q8_array,
    jint spatial_strength_width,
    jint spatial_strength_height,
    jboolean luma_enabled,
    jboolean chroma_enabled,
    jfloatArray luma_strength_array,
    jfloatArray luma_outlier_array,
    jfloatArray luma_revert_array,
    jfloatArray chroma_strength_array,
    jfloatArray chroma_outlier_array,
    jboolean diagnostics_enabled,
    jint low_frequency_log2_downsample,
    jint chroma_median_filter_type) {
    if (rgba_buffer == nullptr || width <= 0 || height <= 0) return -1;
    photon::mgc_denoise::FullResolutionDenoiseRequest request;
    request.rgba = static_cast<uint16_t*>(env->GetDirectBufferAddress(rgba_buffer));
    const jlong capacity = env->GetDirectBufferCapacity(rgba_buffer);
    const int64_t required_bytes =
        static_cast<int64_t>(width) * height * 4 * sizeof(uint16_t);
    if (request.rgba == nullptr || capacity < required_bytes) return -1;
    request.width = width;
    request.height = height;
    request.global_origin_x = global_origin_x;
    request.global_origin_y = global_origin_y;
    request.full_width = full_width;
    request.full_height = full_height;
    request.input_is_bayer = input_is_bayer == JNI_TRUE;
    request.cfa_pattern = cfa_pattern;
    request.measure_moire_enabled = measure_moire_enabled == JNI_TRUE;
    request.apply_lens_shading_in_bayer_aot = apply_lens_shading_in_bayer_aot == JNI_TRUE;
    if (!CopyFloats(env, normalized_rgb_shot_array, 3, request.normalized_rgb_shot) ||
        !CopyFloats(env, normalized_rgb_read_array, 3, request.normalized_rgb_read) ||
        !CopyFloats(
            env, normalized_rgb_white_balance_array, 3, request.normalized_rgb_white_balance) ||
        !CopyFloats(env, luma_strength_array, 5, request.luma_strength) ||
        !CopyFloats(env, luma_outlier_array, 5, request.luma_outlier) ||
        !CopyFloats(env, luma_revert_array, 5, request.luma_revert) ||
        !CopyFloats(env, chroma_strength_array, 5, request.chroma_strength) ||
        !CopyFloats(env, chroma_outlier_array, 5, request.chroma_outlier)) {
        return -1;
    }
    request.has_prepared_yuv_noise = prepared_normalized_yuv_read_array != nullptr;
    if (request.has_prepared_yuv_noise &&
        !CopyFloats(
            env, prepared_normalized_yuv_read_array, 3, request.prepared_normalized_yuv_read)) {
        return -1;
    }
    request.prepared_normalized_luma_shot = prepared_normalized_luma_shot;
    request.prepared_normalized_luma_quadratic = prepared_normalized_luma_quadratic;
    request.prepared_normalized_chroma_shot = prepared_normalized_chroma_shot;
    request.prepared_normalized_chroma_quadratic = prepared_normalized_chroma_quadratic;
    // An absent spectrum is MGC's white (unit) correlation.
    std::fill_n(request.luma_correlation, 128, 1.0f);
    std::fill_n(request.chroma_correlation, 128, 1.0f);
    if ((luma_correlation_array != nullptr &&
         !CopyFloats(env, luma_correlation_array, 128, request.luma_correlation)) ||
        (chroma_correlation_array != nullptr &&
         !CopyFloats(env, chroma_correlation_array, 128, request.chroma_correlation))) {
        return -1;
    }
    request.denoise_response_offset = denoise_response_offset;
    request.denoise_response_cosine_offset = denoise_response_cosine_offset;

    std::vector<float> lens;
    if (lens_shading != nullptr && lens_width > 0 && lens_height > 0) {
        lens.resize(static_cast<size_t>(lens_width) * lens_height * 4);
        if (!CopyFloats(env, lens_shading, static_cast<jsize>(lens.size()), lens.data())) {
            return -1;
        }
        request.lens_shading = lens.data();
        request.lens_width = lens_width;
        request.lens_height = lens_height;
    }

    std::vector<uint16_t> spatial_strength;
    if (spatial_strength_q8_array != nullptr) {
        const jsize count = env->GetArrayLength(spatial_strength_q8_array);
        if (spatial_strength_width <= 0 || spatial_strength_height <= 0 ||
            count != spatial_strength_width * spatial_strength_height) {
            return -1;
        }
        spatial_strength.resize(static_cast<size_t>(count));
        env->GetShortArrayRegion(
            spatial_strength_q8_array,
            0,
            count,
            reinterpret_cast<jshort*>(spatial_strength.data()));
        if (env->ExceptionCheck()) return -1;
        request.spatial_strength_q8 = spatial_strength.data();
        request.spatial_strength_width = spatial_strength_width;
        request.spatial_strength_height = spatial_strength_height;
    } else if (spatial_strength_width != 0 || spatial_strength_height != 0) {
        return -1;
    }

    request.luma_enabled = luma_enabled == JNI_TRUE;
    request.chroma_enabled = chroma_enabled == JNI_TRUE;
    request.diagnostics_enabled = diagnostics_enabled == JNI_TRUE;
    request.low_frequency_log2_downsample = low_frequency_log2_downsample;
    request.chroma_median_filter_type = chroma_median_filter_type;
    return photon::mgc_denoise::RunFullResolutionDenoise(request);
}

extern "C" JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_raw_MgcFullResolutionDenoise_nativeLowFrequencyChromaCorrection(
    JNIEnv* env,
    jobject,
    jobject rgba_buffer,
    jint low_width,
    jint low_height,
    jint full_width,
    jint full_height,
    jint log2_downsample,
    jfloatArray prepared_normalized_yuv_read_array,
    jfloat prepared_normalized_chroma_shot,
    jfloat prepared_normalized_chroma_quadratic,
    jfloatArray chroma_correlation_array,
    jfloat denoise_response_offset,
    jfloat denoise_response_cosine_offset,
    jshortArray spatial_strength_q8_array,
    jint spatial_strength_width,
    jint spatial_strength_height,
    jfloatArray chroma_strength_array,
    jfloatArray chroma_outlier_array,
    jint chroma_median_filter_type) {
    if (rgba_buffer == nullptr || low_width <= 0 || low_height <= 0) return -1;
    photon::mgc_denoise::LowFrequencyChromaRequest request;
    request.rgba = static_cast<uint16_t*>(env->GetDirectBufferAddress(rgba_buffer));
    const jlong capacity = env->GetDirectBufferCapacity(rgba_buffer);
    if (request.rgba == nullptr ||
        capacity < static_cast<int64_t>(low_width) * low_height * 4 * sizeof(uint16_t)) {
        return -1;
    }
    request.low_width = low_width;
    request.low_height = low_height;
    request.full_width = full_width;
    request.full_height = full_height;
    request.log2_downsample = log2_downsample;
    if (!CopyFloats(env, prepared_normalized_yuv_read_array, 3, request.prepared_normalized_yuv_read) ||
        !CopyFloats(env, chroma_correlation_array, 128, request.chroma_correlation) ||
        !CopyFloats(env, chroma_strength_array, 5, request.chroma_strength) ||
        !CopyFloats(env, chroma_outlier_array, 5, request.chroma_outlier)) {
        return -1;
    }
    request.prepared_normalized_chroma_shot = prepared_normalized_chroma_shot;
    request.prepared_normalized_chroma_quadratic = prepared_normalized_chroma_quadratic;
    request.denoise_response_offset = denoise_response_offset;
    request.denoise_response_cosine_offset = denoise_response_cosine_offset;
    std::vector<uint16_t> spatial_strength;
    if (spatial_strength_q8_array != nullptr) {
        const jsize count = env->GetArrayLength(spatial_strength_q8_array);
        if (spatial_strength_width <= 0 || spatial_strength_height <= 0 ||
            count != spatial_strength_width * spatial_strength_height) {
            return -1;
        }
        spatial_strength.resize(static_cast<size_t>(count));
        env->GetShortArrayRegion(
            spatial_strength_q8_array, 0, count, reinterpret_cast<jshort*>(spatial_strength.data()));
        if (env->ExceptionCheck()) return -1;
        request.spatial_strength_q8 = spatial_strength.data();
        request.spatial_strength_width = spatial_strength_width;
        request.spatial_strength_height = spatial_strength_height;
    }
    request.chroma_median_filter_type = chroma_median_filter_type;
    return photon::mgc_denoise::RunLowFrequencyChromaCorrection(request);
}
