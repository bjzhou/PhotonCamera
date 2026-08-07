#pragma once

#include <cstdint>

namespace photon::mgc_denoise {

struct DenoiseNoiseBuffers {
    float read[8] = {};
    float shot[8] = {};
    float quadratic[8] = {};
    float outlier_distance[5] = {};
    float revert_factor[5] = {};
};

struct ChromaDenoiseNoiseBuffers {
    // The MGC wrapper first creates [level=4, channel=3, branch=2] tables.
    // CompleteS16 then slices channel zero from quadratic/shot while retaining
    // all three channels for read variance. Keeping the original 24-value
    // backing layout preserves the exact sliced strides (1, 12).
    float quadratic[24] = {};
    float shot[24] = {};
    float read[24] = {};
    uint8_t outlier_threshold[8] = {};
};

enum class SpatialStrengthInputLayout {
    Bayer = 0,
    Rgb = 1,
};

struct SpatialStrengthResult {
    // Bayer Halide NoiseModel tuple: .0 = read variance,
    // .1 = shot coefficient. The convenience NoiseModel constructor at
    // 0x5e959c8 prepends the zero quadratic span before forwarding them.
    float output_noise_model_0[3] = {};
    float output_noise_model_1[3] = {};
    float output_weights_sum_total_diag_0[3] = {};
    float output_weights_sum_total_diag_1[3] = {};
};

/**
 * Reproduces CreateLumaDenoiseNoiseBuffers for one luma noise channel.
 * correlation is MGC's 128-bin normalized power correlation spectrum.  A
 * single uncorrelated frame is represented by 128 ones.
 */
bool BuildNoiseBuffers(
    float read_noise,
    float shot_noise,
    float quadratic_noise,
    const float correlation[128],
    const float strength[5],
    const float outlier_distance[5],
    const float revert_factor[5],
    DenoiseNoiseBuffers* output);

/**
 * Reproduces CreateChromaDenoiseNoiseModelBuffers. Input coefficients are
 * already transformed into MGC's Y/Cb/Cr domain.
 */
bool BuildChromaNoiseBuffers(
    const float read_noise[3],
    const float shot_noise[3],
    const float quadratic_noise[3],
    const float correlation[128],
    const float strength[5],
    const float outlier_threshold[5],
    ChromaDenoiseNoiseBuffers* output);

/**
 * Runs the original ComputeDenoiseStrengthMapsU16Halide kernel.
 *
 * gain_map is [height][width][4] interleaved Camera2 R/Ge/Go/B gain data.
 * output is three planar U16 channels: strength, strength*lumaGain and
 * strength*lumaGain^2.
 */
int ComputeStrengthMap(
    const uint16_t* input,
    int width,
    int height,
    const float* gain_map,
    int gain_width,
    int gain_height,
    float sample_rate_x,
    float sample_rate_y,
    uint16_t* output);

/**
 * Runs MGC's exact Spatial Compute*NoiseModelF32TileSize16 pipeline.
 *
 * fused_fixed16 is signed Q14. Bayer uses [quadX,quadY,phase] with positional
 * phase order 00/10/01/11; RGB uses planar [x,y,rgb]. Alignment is planar
 * [x,y,frame,xy], rejection is [x,y,frame], and per-frame RGB noise
 * coefficients are planar [frame,rgb].
 */
int ComputeSpatialStrengthMap(
    SpatialStrengthInputLayout layout,
    const int16_t* fused_fixed16,
    int width,
    int height,
    int cfa_pattern,
    const float* alignment,
    int alignment_width,
    int alignment_height,
    const uint8_t* rejection,
    int rejection_width,
    int rejection_height,
    int frame_count,
    const float* input_read_noise,
    const float* input_shot_noise,
    const float* frame_weights,
    const float* kernel_sigmas,
    float rejected_denoise_multiplier,
    uint16_t* output_strength_q8,
    SpatialStrengthResult* diagnostics);

/** Runs the statically linked RgbRawToYuv1xS16 with neutral corrections. */
int RunRgbRawToYuv(
    const uint16_t* input,
    int width,
    int height,
    int16_t* output);

/**
 * Runs MGC's default standard-Bayer RawToYuv path on normalized unsigned-Q14
 * input packed as four planar 2x2 Bayer-position channels. Channel gains use
 * semantic [R,G1,G2,B] order. cfa_pattern uses Camera2's 0..3 enumeration;
 * the implementation maps it to MGC's differently ordered BayerPattern enum.
 */
int RunDefaultBayerRawToYuv(
    const uint16_t* packed_input,
    int width,
    int height,
    int cfa_pattern,
    const float channel_gains[4],
    const float* gain_map,
    int gain_map_width,
    int gain_map_height,
    float gain_map_sample_rate_x,
    float gain_map_sample_rate_y,
    int16_t* output);

/**
 * Applies the exact default Bayer demosaic NoiseModel remap and correlation
 * composition performed by PrepareFullResolutionDenoiseNoiseModel.
 * Coefficients must already include channel gains and the full-resolution
 * NoiseModel Scale(2).
 */
bool PrepareDefaultBayerDenoiseNoiseModel(
    const float input_read[3],
    const float input_shot[3],
    const float input_quadratic[3],
    const float input_correlation[128],
    float output_read[3],
    float output_shot[3],
    float output_quadratic[3],
    float output_correlation[128],
    float* correlation_mean);

/** Runs the complete four-level S16 chroma pyramid used by MGC. */
int RunChromaDenoise(
    const int16_t* input,
    int width,
    int height,
    const uint16_t* strength_map,
    int strength_width,
    int strength_height,
    const ChromaDenoiseNoiseBuffers& noise,
    int16_t* output);

/**
 * Runs the exact statically linked PecanLumaDenoise S16 kernel recovered from
 * RunFullResolutionDenoise.
 */
int RunPecan(
    const uint16_t* strength_map,
    int strength_width,
    int strength_height,
    const DenoiseNoiseBuffers& noise,
    const int16_t* input,
    int width,
    int height,
    int16_t* output);

/** Runs the statically linked YuvToRgbS16 kernel on planar S16 data. */
int RunYuvToRgb(
    const int16_t* input,
    int width,
    int height,
    int16_t* output);

}  // namespace photon::mgc_denoise
