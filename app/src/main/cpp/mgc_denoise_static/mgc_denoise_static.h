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

/** Runs the statically linked RgbRawToYuv1xS16 with neutral corrections. */
int RunRgbRawToYuv(
    const uint16_t* input,
    int width,
    int height,
    int16_t* output);

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
