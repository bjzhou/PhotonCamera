#pragma once

#include <cstdint>

namespace photon::mgc_denoise {

/**
 * One MGC full-resolution luma/chroma denoise call on an RGBA16F (or normalized
 * Bayer16) buffer. Every array is owned by the caller and must outlive the call.
 * Kept free of JNI so the app, offline calibration and oracle tools share it.
 */
struct FullResolutionDenoiseRequest {
    // In/out pixels: width * height * 4 half floats (or Bayer16 samples).
    uint16_t* rgba = nullptr;
    int width = 0;
    int height = 0;
    int global_origin_x = 0;
    int global_origin_y = 0;
    int full_width = 0;
    int full_height = 0;
    bool input_is_bayer = false;
    int cfa_pattern = 0;
    bool measure_moire_enabled = false;
    bool apply_lens_shading_in_bayer_aot = false;
    // lens_width * lens_height * 4 gains, or null.
    const float* lens_shading = nullptr;
    int lens_width = 0;
    int lens_height = 0;
    float normalized_rgb_shot[3] = {};
    float normalized_rgb_read[3] = {};
    float normalized_rgb_white_balance[3] = {1.0f, 1.0f, 1.0f};
    bool has_prepared_yuv_noise = false;
    float prepared_normalized_yuv_read[3] = {};
    float prepared_normalized_luma_shot = 0.0f;
    float prepared_normalized_luma_quadratic = 0.0f;
    float prepared_normalized_chroma_shot = 0.0f;
    float prepared_normalized_chroma_quadratic = 0.0f;
    float luma_correlation[128] = {};
    float chroma_correlation[128] = {};
    float denoise_response_offset = 0.0f;
    float denoise_response_cosine_offset = 0.0f;
    // spatial_strength_width * spatial_strength_height Q8 values over the full image, or null.
    const uint16_t* spatial_strength_q8 = nullptr;
    int spatial_strength_width = 0;
    int spatial_strength_height = 0;
    bool luma_enabled = false;
    bool chroma_enabled = false;
    float luma_strength[5] = {};
    float luma_outlier[5] = {};
    float luma_revert[5] = {};
    float chroma_strength[5] = {};
    float chroma_outlier[5] = {};
    bool diagnostics_enabled = false;
    int low_frequency_log2_downsample = 0;
    int chroma_median_filter_type = 0;
};

/** Returns 0 on success, a negative stage code otherwise. */
int RunFullResolutionDenoise(const FullResolutionDenoiseRequest& request);

/**
 * GCam ProcessRaw's low-frequency chroma branch as a separate whole-image pass, for callers
 * that run the full-resolution denoise in tiles (the in-call branch needs the whole image).
 *
 * [rgba] holds the full-resolution denoised linear RGB box-downsampled by 2^log2_downsample
 * (low_width x low_height = ceil(full / 2^L)), white balance 1. It is replaced in place by the
 * linear RGB correction to add at full resolution after bilinear upsampling (alpha 0): the
 * difference ChromaDenoise (after the optional chroma median) makes to Cb/Cr at that scale.
 */
struct LowFrequencyChromaRequest {
    uint16_t* rgba = nullptr;
    int low_width = 0;
    int low_height = 0;
    int full_width = 0;
    int full_height = 0;
    int log2_downsample = 1;
    float prepared_normalized_yuv_read[3] = {};
    float prepared_normalized_chroma_shot = 0.0f;
    float prepared_normalized_chroma_quadratic = 0.0f;
    float chroma_correlation[128] = {};
    float denoise_response_offset = 0.0f;
    float denoise_response_cosine_offset = 0.0f;
    // ((full+3)/4) Q8 strength over the full image, or null for identity.
    const uint16_t* spatial_strength_q8 = nullptr;
    int spatial_strength_width = 0;
    int spatial_strength_height = 0;
    float chroma_strength[5] = {};
    float chroma_outlier[5] = {};
    int chroma_median_filter_type = 0;
};

int RunLowFrequencyChromaCorrection(const LowFrequencyChromaRequest& request);

}  // namespace photon::mgc_denoise
