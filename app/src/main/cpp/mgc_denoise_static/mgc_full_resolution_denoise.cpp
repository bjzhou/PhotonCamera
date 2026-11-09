#include "mgc_full_resolution_denoise.h"

#include "mgc_denoise_static.h"

#include <android/log.h>
#include <omp.h>

#include <algorithm>
#include <array>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <cstring>
#include <limits>
#include <memory>
#include <new>
#include <string>
#include <vector>

namespace {

constexpr int kWhiteLevel = 16383;
constexpr int kHostWorkers = 4;
constexpr char kLogTag[] = "PLog_MgcFullResolutionDenoise";

int HostWorkerCount() {
    return kHostWorkers;
}

void ZeroPlanarBuffers(
    int16_t* planar_a,
    int16_t* planar_b,
    size_t sample_count,
    int worker_count) {
#pragma omp parallel num_threads(worker_count)
    {
        const size_t worker = static_cast<size_t>(omp_get_thread_num());
        const size_t workers = static_cast<size_t>(omp_get_num_threads());
        const size_t begin = sample_count * worker / workers;
        const size_t end = sample_count * (worker + 1) / workers;
        const size_t byte_count = (end - begin) * sizeof(int16_t);
        std::memset(planar_a + begin, 0, byte_count);
        std::memset(planar_b + begin, 0, byte_count);
    }
}

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

void LogMeasureMoireDiagnostics(
    const uint16_t* input,
    const uint16_t* output,
    size_t plane_size) {
    std::array<uint16_t, 3> input_min = {
        std::numeric_limits<uint16_t>::max(),
        std::numeric_limits<uint16_t>::max(),
        std::numeric_limits<uint16_t>::max(),
    };
    std::array<uint16_t, 3> input_max = {};
    std::array<uint16_t, 3> output_min = input_min;
    std::array<uint16_t, 3> output_max = {};
    std::array<uint64_t, 3> input_sum = {};
    std::array<uint64_t, 3> output_sum = {};
    std::array<size_t, 3> changed = {};
    for (int channel = 0; channel < 3; ++channel) {
        const size_t plane_offset =
            static_cast<size_t>(channel) * plane_size;
        for (size_t index = 0; index < plane_size; ++index) {
            const uint16_t input_value = input[plane_offset + index];
            const uint16_t output_value = output[plane_offset + index];
            input_min[channel] = std::min(input_min[channel], input_value);
            input_max[channel] = std::max(input_max[channel], input_value);
            output_min[channel] = std::min(output_min[channel], output_value);
            output_max[channel] = std::max(output_max[channel], output_value);
            input_sum[channel] += input_value;
            output_sum[channel] += output_value;
            if (input_value != output_value) ++changed[channel];
        }
    }
    const auto mean = [plane_size](uint64_t sum) {
        return plane_size > 0
            ? static_cast<double>(sum) / static_cast<double>(plane_size)
            : 0.0;
    };
    const auto changed_percent = [plane_size](size_t count) {
        return plane_size > 0
            ? 100.0 * static_cast<double>(count) /
                static_cast<double>(plane_size)
            : 0.0;
    };
    __android_log_print(
        ANDROID_LOG_INFO,
        kLogTag,
        "MGC MeasureMoire strengthQ8 "
        "in=[%u..%u/%.2f,%u..%u/%.2f,%u..%u/%.2f] "
        "out=[%u..%u/%.2f,%u..%u/%.2f,%u..%u/%.2f] "
        "changed=[%.1f%%,%.1f%%,%.1f%%]",
        input_min[0],
        input_max[0],
        mean(input_sum[0]),
        input_min[1],
        input_max[1],
        mean(input_sum[1]),
        input_min[2],
        input_max[2],
        mean(input_sum[2]),
        output_min[0],
        output_max[0],
        mean(output_sum[0]),
        output_min[1],
        output_max[1],
        mean(output_sum[1]),
        output_min[2],
        output_max[2],
        mean(output_sum[2]),
        changed_percent(changed[0]),
        changed_percent(changed[1]),
        changed_percent(changed[2]));
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

// BoxDownsampleS16Halide (0x4cc8ac8): every plane is the rounded mean of an f x f
// block, round(sum / f^2) via a rounding arithmetic shift.
void BoxDownsamplePlanes(
    const int16_t* input,
    int width,
    int height,
    int log2_factor,
    int16_t* output) {
    const int factor = 1 << log2_factor;
    const int output_width = width >> log2_factor;
    const int output_height = height >> log2_factor;
    const int shift = 2 * log2_factor;
    const int64_t rounding = int64_t{1} << (shift - 1);
    const size_t input_plane = static_cast<size_t>(width) * height;
    const size_t output_plane = static_cast<size_t>(output_width) * output_height;
    #pragma omp parallel for collapse(2) schedule(static)
    for (int channel = 0; channel < 3; ++channel) {
        for (int y = 0; y < output_height; ++y) {
            const int16_t* source = input + channel * input_plane;
            int16_t* destination = output + channel * output_plane +
                static_cast<size_t>(y) * output_width;
            for (int x = 0; x < output_width; ++x) {
                int64_t sum = 0;
                for (int dy = 0; dy < factor; ++dy) {
                    const int16_t* row = source +
                        static_cast<size_t>(y * factor + dy) * width + x * factor;
                    for (int dx = 0; dx < factor; ++dx) sum += row[dx];
                }
                destination[x] = static_cast<int16_t>((sum + rounding) >> shift);
            }
        }
    }
}

// GCam ChromaMedianFilter (V25 0x4cfb1b8; AGC 9.6 0x4c8d2a8), bit-exact model of
// ChromaDualFivePointMedianFilterS16Halide (type 1) and
// ChromaDualThreePointMedianFilterS16Halide (type 2), verified by emulation:
// Y is copied; U and V each take two medians whose floor average is blended in
// with one shared Q11 weight driven by how much more saturated the centre is.
enum class ChromaMedianFilterType : int { kNone = 0, kDualFivePoint = 1, kDualThreePoint = 2 };

inline int16_t Wrap16(int value) { return static_cast<int16_t>(static_cast<uint16_t>(value)); }
// NEON abs on int16: abs(-32768) stays -32768.
inline int16_t Abs16(int16_t value) { return Wrap16(value < 0 ? -static_cast<int>(value) : value); }
inline int16_t AbsDiff16(int16_t a, int16_t m) { return Wrap16(Abs16(a) - Abs16(m)); }

inline int16_t Median3(int16_t a, int16_t b, int16_t c) {
    return std::max(std::min(a, b), std::min(std::max(a, b), c));
}

inline int16_t Median5(int16_t a, int16_t b, int16_t c, int16_t d, int16_t e) {
    int16_t v[5] = {a, b, c, d, e};
    std::sort(v, v + 5);
    return v[2];
}

void ChromaMedianFilter(
    ChromaMedianFilterType type,
    const int16_t* input,
    int width,
    int height,
    int16_t* output) {
    const size_t plane = static_cast<size_t>(width) * height;
    std::copy_n(input, plane, output);
    const int16_t* u_plane = input + plane;
    const int16_t* v_plane = input + 2 * plane;
    #pragma omp parallel for schedule(static)
    for (int y = 0; y < height; ++y) {
        const int ym = std::max(y - 1, 0);
        const int yp = std::min(y + 1, height - 1);
        for (int x = 0; x < width; ++x) {
            const int xm = std::max(x - 1, 0);
            const int xp = std::min(x + 1, width - 1);
            const auto at = [&](const int16_t* p, int yy, int xx) {
                return p[static_cast<size_t>(yy) * width + xx];
            };
            int16_t median_a[2];
            int16_t median_b[2];
            int16_t centre[2];
            const int16_t* planes[2] = {u_plane, v_plane};
            for (int c = 0; c < 2; ++c) {
                const int16_t* p = planes[c];
                centre[c] = at(p, y, x);
                if (type == ChromaMedianFilterType::kDualFivePoint) {
                    median_a[c] = Median5(centre[c], at(p, ym, x), at(p, yp, x),
                        at(p, y, xm), at(p, y, xp));
                    median_b[c] = Median5(centre[c], at(p, ym, xm), at(p, ym, xp),
                        at(p, yp, xm), at(p, yp, xp));
                } else {
                    median_a[c] = Median3(at(p, y, xm), centre[c], at(p, y, xp));
                    median_b[c] = Median3(at(p, ym, x), centre[c], at(p, yp, x));
                }
            }
            int16_t average[2];
            for (int c = 0; c < 2; ++c) {
                average[c] = static_cast<int16_t>(
                    (static_cast<int>(median_a[c]) + median_b[c]) >> 1);
            }
            int16_t excess;
            if (type == ChromaMedianFilterType::kDualFivePoint) {
                excess = std::max(AbsDiff16(centre[0], average[0]),
                    AbsDiff16(centre[1], average[1]));
            } else {
                excess = std::min(
                    std::max(AbsDiff16(centre[0], median_a[0]),
                        AbsDiff16(centre[1], median_a[1])),
                    std::max(AbsDiff16(centre[0], median_b[0]),
                        AbsDiff16(centre[1], median_b[1])));
            }
            const int weight = std::clamp(
                std::clamp(static_cast<int>(excess) + 1024, -32768, 32767), 0, 2047);
            const size_t index = static_cast<size_t>(y) * width + x;
            for (int c = 0; c < 2; ++c) {
                const int16_t d = Wrap16(average[c] - centre[c]);
                const int delta = (static_cast<int>(d) * weight + 1024) >> 11;
                output[(c + 1) * plane + index] = Wrap16(centre[c] + delta);
            }
        }
    }
}

// Adds the low-frequency chroma correction back to the full-resolution Cb/Cr
// planes. The renderer derives its chroma from a box-downsampled copy of this
// output (GuidedUpsample takes chroma only from the low-resolution image, as in
// GCam), so storing the correction at full resolution makes that copy carry the
// low-frequency ChromaDenoise result, in the DNG and in every later render.
void AddUpsampledChromaCorrection(
    const int16_t* low_input,
    const int16_t* low_output,
    int low_width,
    int low_height,
    int log2_factor,
    int16_t* full,
    int width,
    int height) {
    const float factor = static_cast<float>(1 << log2_factor);
    const size_t full_plane = static_cast<size_t>(width) * height;
    const size_t low_plane = static_cast<size_t>(low_width) * low_height;
    #pragma omp parallel for collapse(2) schedule(static)
    for (int channel = 1; channel < 3; ++channel) {
        for (int y = 0; y < height; ++y) {
            const float low_y = std::clamp(
                (static_cast<float>(y) + 0.5f) / factor - 0.5f,
                0.0f,
                static_cast<float>(low_height - 1));
            const int y0 = static_cast<int>(low_y);
            const int y1 = std::min(y0 + 1, low_height - 1);
            const float fy = low_y - static_cast<float>(y0);
            const size_t base = channel * low_plane;
            int16_t* row = full + channel * full_plane + static_cast<size_t>(y) * width;
            for (int x = 0; x < width; ++x) {
                const float low_x = std::clamp(
                    (static_cast<float>(x) + 0.5f) / factor - 0.5f,
                    0.0f,
                    static_cast<float>(low_width - 1));
                const int x0 = static_cast<int>(low_x);
                const int x1 = std::min(x0 + 1, low_width - 1);
                const float fx = low_x - static_cast<float>(x0);
                const auto delta = [&](int lx, int ly) {
                    const size_t index = base + static_cast<size_t>(ly) * low_width + lx;
                    return static_cast<float>(low_output[index]) -
                        static_cast<float>(low_input[index]);
                };
                const float correction =
                    (1.0f - fy) * ((1.0f - fx) * delta(x0, y0) + fx * delta(x1, y0)) +
                    fy * ((1.0f - fx) * delta(x0, y1) + fx * delta(x1, y1));
                const float value = static_cast<float>(row[x]) + correction;
                row[x] = static_cast<int16_t>(
                    std::lrint(std::clamp(value, -32768.0f, 32767.0f)));
            }
        }
    }
}

}  // namespace

namespace photon::mgc_denoise {

int RunFullResolutionDenoise(const FullResolutionDenoiseRequest& request) {
    const int width = request.width;
    const int height = request.height;
    const int global_origin_x = request.global_origin_x;
    const int global_origin_y = request.global_origin_y;
    const int full_width = request.full_width;
    const int full_height = request.full_height;
    const int cfa_pattern = request.cfa_pattern;
    const float* lens_shading = request.lens_shading;
    const int lens_width = request.lens_width;
    const int lens_height = request.lens_height;
    const float denoise_response_offset = request.denoise_response_offset;
    const float denoise_response_cosine_offset = request.denoise_response_cosine_offset;
    const uint16_t* spatial_strength_q8 = request.spatial_strength_q8;
    const int spatial_strength_width = request.spatial_strength_width;
    const int spatial_strength_height = request.spatial_strength_height;
    const int low_frequency_log2_downsample = request.low_frequency_log2_downsample;
    const int chroma_median_filter_type = request.chroma_median_filter_type;
    const bool run_luma = request.luma_enabled;
    const bool run_chroma = request.chroma_enabled;
    const bool run_diagnostics = request.diagnostics_enabled;
    const bool bayer_input = request.input_is_bayer;
    const bool run_measure_moire = request.measure_moire_enabled;
    const bool apply_bayer_lens_shading = request.apply_lens_shading_in_bayer_aot;
    if (request.rgba == nullptr || width <= 0 || height <= 0 ||
        full_width <= 0 || full_height <= 0 ||
        global_origin_x < 0 || global_origin_y < 0 ||
        global_origin_x + width > full_width ||
        global_origin_y + height > full_height ||
        (bayer_input && (cfa_pattern < 0 || cfa_pattern > 3)) ||
        (run_measure_moire &&
         (!run_chroma || cfa_pattern < 0 || cfa_pattern > 3)) ||
        (apply_bayer_lens_shading && !bayer_input) ||
        (lens_shading != nullptr && (lens_width <= 0 || lens_height <= 0)) ||
        (spatial_strength_q8 != nullptr &&
         (spatial_strength_width <= 0 || spatial_strength_height <= 0)) ||
        !std::isfinite(denoise_response_offset) ||
        !std::isfinite(denoise_response_cosine_offset) ||
        (!run_luma && !run_chroma)) {
        return -1;
    }
    uint16_t* rgba = request.rgba;

    float normalized_rgb_shot[3] = {};
    float normalized_rgb_read[3] = {};
    float normalized_rgb_white_balance[3] = {};
    float prepared_normalized_yuv_read[3] = {};
    float luma_strength[5] = {};
    float luma_outlier[5] = {};
    float luma_revert[5] = {};
    float chroma_strength[5] = {};
    float chroma_outlier[5] = {};
    std::copy_n(request.normalized_rgb_shot, 3, normalized_rgb_shot);
    std::copy_n(request.normalized_rgb_read, 3, normalized_rgb_read);
    std::copy_n(request.normalized_rgb_white_balance, 3, normalized_rgb_white_balance);
    std::copy_n(request.luma_strength, 5, luma_strength);
    std::copy_n(request.luma_outlier, 5, luma_outlier);
    std::copy_n(request.luma_revert, 5, luma_revert);
    std::copy_n(request.chroma_strength, 5, chroma_strength);
    std::copy_n(request.chroma_outlier, 5, chroma_outlier);
    const bool has_prepared_yuv_noise = request.has_prepared_yuv_noise;
    if (has_prepared_yuv_noise && bayer_input) return -1;
    std::copy_n(request.prepared_normalized_yuv_read, 3, prepared_normalized_yuv_read);
    const float prepared_normalized_luma_shot = request.prepared_normalized_luma_shot;
    const float prepared_normalized_luma_quadratic =
        request.prepared_normalized_luma_quadratic;
    const float prepared_normalized_chroma_shot = request.prepared_normalized_chroma_shot;
    const float prepared_normalized_chroma_quadratic =
        request.prepared_normalized_chroma_quadratic;
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
    std::copy_n(request.luma_correlation, 128, luma_correlation);
    std::copy_n(request.chroma_correlation, 128, chroma_correlation);
    for (int index = 0; index < 128; ++index) {
        if (!std::isfinite(luma_correlation[index]) || luma_correlation[index] < 0.0f ||
            !std::isfinite(chroma_correlation[index]) || chroma_correlation[index] < 0.0f) {
            return -1;
        }
    }

    const int padded_width = RoundUp(width, 128);
    const int padded_height = RoundUp(height, 16);
    const int strength_width = padded_width / 4;
    const int strength_height = padded_height / 4;
    const size_t pixel_count =
        static_cast<size_t>(padded_width) * padded_height;
    const size_t strength_count =
        static_cast<size_t>(strength_width) * strength_height;
    const int host_worker_count = HostWorkerCount();

    using StageClock = std::chrono::steady_clock;
    const auto elapsed_ms = [](StageClock::time_point start) -> int64_t {
        return std::chrono::duration_cast<std::chrono::milliseconds>(
            StageClock::now() - start).count();
    };
    const auto total_start = StageClock::now();
    int64_t allocation_ms = 0;
    int64_t input_pack_ms = 0;
    int64_t strength_ms = 0;
    int64_t demoire_ms = 0;
    int64_t rgb_to_yuv_ms = 0;
    int64_t chroma_ms = 0;
    int64_t pecan_ms = 0;
    int64_t diagnostics_ms = 0;
    int64_t yuv_to_rgb_ms = 0;
    int64_t output_pack_ms = 0;
    try {
        // Two zero-initialized planar allocations are reused across RGB -> YUV, chroma,
        // Pecan luma and YUV -> RGB. The lifted AOT kernels may use untouched output regions as
        // deterministic boundary state, so initialization is part of this buffer contract.
        const auto allocation_start = StageClock::now();
        const size_t planar_sample_count = pixel_count * 3;
        // Array make_unique value-initializes every sample before returning.
        // Allocate without initialization so the explicit parallel clear below
        // is the only full-buffer zeroing pass.
        std::unique_ptr<int16_t[]> planar_a(
            new int16_t[planar_sample_count]);
        std::unique_ptr<int16_t[]> planar_b(
            new int16_t[planar_sample_count]);
        ZeroPlanarBuffers(
            planar_a.get(),
            planar_b.get(),
            planar_sample_count,
            host_worker_count);
        allocation_ms = elapsed_ms(allocation_start);
        const auto input_pack_start = StageClock::now();
        if (bayer_input) {
            // BayerRawToYuv's exact input contract is a 3D U16 buffer whose
            // four planes are the spatial positions in each 2x2 Bayer cell.
            // Pack into planar_a's first pixel_count samples so this does not
            // require another full-resolution allocation.
            auto* packed_bayer =
                reinterpret_cast<uint16_t*>(planar_a.get());
            const int packed_width = padded_width / 2;
            const int packed_height = padded_height / 2;
            const size_t packed_plane_size =
                static_cast<size_t>(packed_width) * packed_height;
#pragma omp parallel for schedule(static) num_threads(host_worker_count)
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
                            const uint16_t normalized_q14 =
                                static_cast<uint16_t>(std::lround(
                                    static_cast<double>(normalized_u16) *
                                    16384.0 / 65535.0));
                            packed_bayer[
                                static_cast<size_t>(plane) * packed_plane_size +
                                packed_index] = normalized_q14;
                        }
                    }
                }
            }
        } else {
            auto* rgb_input =
                reinterpret_cast<uint16_t*>(planar_a.get());
#pragma omp parallel for schedule(static) num_threads(host_worker_count)
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
        input_pack_ms = elapsed_ms(input_pack_start);

        const auto strength_start = StageClock::now();
        std::vector<uint16_t> base_strength(strength_count, 256);
        std::vector<uint16_t> strength(strength_count * 3, 256);
        if (spatial_strength_q8 != nullptr) {
            const int expected_full_strength_width =
                (full_width + 3) / 4;
            const int expected_full_strength_height =
                (full_height + 3) / 4;
            if (spatial_strength_width != expected_full_strength_width ||
                spatial_strength_height != expected_full_strength_height) {
                return -1;
            }
            const uint16_t* spatial_strength = spatial_strength_q8;
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
        if (run_diagnostics) {
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
                spatial_strength_q8 == nullptr ? "identity" : "spatial-aot",
                spatial_strength_width,
                spatial_strength_height,
                strength_width,
                strength_height,
                global_origin_x,
                global_origin_y);
        }
        std::vector<float> lens;
        if (lens_shading != nullptr && lens_width > 0 && lens_height > 0) {
            lens.assign(
                lens_shading,
                lens_shading + static_cast<size_t>(lens_width) * lens_height * 4);
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
        strength_ms = elapsed_ms(strength_start);

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
        // MGC FinishRaw hands the full-resolution denoiser NoiseModel.Scale(2) of
        // the white-balanced model: x' = 2 * gain * x, so read' = read * (2 * gain)^2
        // and shot' = shot * (2 * gain), quadratic unchanged. The pixels themselves
        // stay unsigned Q14 (RawToYuv maps a flat q to Y = q, measured on device),
        // exactly as in MGC: the factor is part of the contract the luma/chroma
        // strength curves were tuned against, not a pixel-domain conversion.
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
        float chroma_shared_shot = 0.0f;
        float chroma_shared_quadratic = 0.0f;
        if (has_prepared_yuv_noise) {
            std::copy_n(prepared_normalized_yuv_read, 3, yuv_read);
            yuv_shot[0] = prepared_normalized_luma_shot;
            yuv_quadratic[0] = prepared_normalized_luma_quadratic;
            yuv_shot[1] = yuv_shot[2] = prepared_normalized_chroma_shot;
            yuv_quadratic[1] = yuv_quadratic[2] =
                prepared_normalized_chroma_quadratic;
            chroma_shared_shot = prepared_normalized_chroma_shot;
            chroma_shared_quadratic = prepared_normalized_chroma_quadratic;
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
                float row_sum = 0.0f;
                for (int input_channel = 0; input_channel < 3; ++input_channel) {
                    const float matrix_value =
                        rgb_to_yuv[output_channel * 3 + input_channel];
                    const float matrix_squared = matrix_value * matrix_value;
                    row_sum += matrix_value;
                    yuv_read[output_channel] +=
                        matrix_squared * prepared_rgb_read[input_channel];
                    yuv_shot[output_channel] +=
                        matrix_squared * prepared_rgb_shot[input_channel];
                    yuv_quadratic[output_channel] +=
                        matrix_squared * prepared_rgb_quadratic[input_channel];
                }
                // NoiseModel::Transform at 0x5e985d8 keeps read variance in
                // the matrix output domain, but normalizes the signal-dependent
                // coefficients by the row's signal scale. Zero-sum chroma rows
                // therefore have no independent shot/quadratic coefficient.
                const float absolute_row_sum = std::abs(row_sum);
                if (absolute_row_sum < 1.0e-6f) {
                    yuv_shot[output_channel] = 0.0f;
                    yuv_quadratic[output_channel] = 0.0f;
                } else {
                    yuv_shot[output_channel] /= absolute_row_sum;
                    yuv_quadratic[output_channel] /=
                        absolute_row_sum * absolute_row_sum;
                }
            }
            // CreateChromaDenoiseNoiseModelBuffers preserves all three read channels, then
            // slices channel 0 from the shot and quadratic buffers before invoking CompleteS16.
            // Keep the analytic Y/Cb/Cr model intact and reproduce that exact slice here.
            chroma_shared_shot = yuv_shot[0];
            chroma_shared_quadratic = yuv_quadratic[0];
            __android_log_print(
                ANDROID_LOG_INFO,
                kLogTag,
                "MGC analytic YUV noise read=[%.6g,%.6g,%.6g] "
                "lumaShot=%.6g lumaQuadratic=%.6g "
                "chromaSharedChannel0Shot=%.6g "
                "chromaSharedChannel0Quadratic=%.6g",
                yuv_read[0],
                yuv_read[1],
                yuv_read[2],
                yuv_shot[0],
                yuv_quadratic[0],
                chroma_shared_shot,
                chroma_shared_quadratic);
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
        const float q14_chroma_shared_shot = chroma_shared_shot * white;
        __android_log_print(
            ANDROID_LOG_INFO,
            kLogTag,
            "MGC Q14 denoise noise luma=[read=%.6g shot=%.6g quadratic=%.6g] "
            "chroma=[read=%.6g,%.6g,%.6g sharedShot=%.6g sharedQuadratic=%.6g]",
            q14_yuv_read[0],
            q14_yuv_shot[0],
            yuv_quadratic[0],
            q14_yuv_read[0],
            q14_yuv_read[1],
            q14_yuv_read[2],
            q14_chroma_shared_shot,
            chroma_shared_quadratic);

        const auto rgb_to_yuv_start = StageClock::now();
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
                    reinterpret_cast<const uint16_t*>(planar_a.get()),
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
                    planar_b.get());
        } else {
            rgb_to_yuv_result = photon::mgc_denoise::RunRgbRawToYuv(
                reinterpret_cast<const uint16_t*>(planar_a.get()),
                padded_width,
                padded_height,
                planar_b.get());
        }
        if (rgb_to_yuv_result != 0) {
            return LogStageFailure("rgb_to_yuv", rgb_to_yuv_result);
        }
        rgb_to_yuv_ms = elapsed_ms(rgb_to_yuv_start);

        // MGC invokes MeasureMoire after RawToYuv and passes a channel-0 slice
        // of linear_yuv. The lifted AOT contract therefore sees one planar
        // S16/Q14 Y channel, not the Bayer mosaic. Its output replaces only
        // the strength map supplied to ChromaDenoise; Pecan keeps strength.
        std::vector<uint16_t> demoire_strength;
        const uint16_t* chroma_strength_q8 = strength.data();
        if (run_measure_moire) {
            const auto demoire_start = StageClock::now();
            demoire_strength.resize(strength_count * 3);
            const int demoire_result =
                photon::mgc_denoise::RunMeasureMoireS16(
                    planar_b.get(),
                    padded_width,
                    padded_height,
                    strength.data(),
                    strength_width,
                    strength_height,
                    demoire_strength.data());
            if (demoire_result != 0) {
                return LogStageFailure("measure_moire", demoire_result);
            }
            if (run_diagnostics) {
                LogMeasureMoireDiagnostics(
                    strength.data(),
                    demoire_strength.data(),
                    strength_count);
            }
            chroma_strength_q8 = demoire_strength.data();
            demoire_ms = elapsed_ms(demoire_start);
        }

        // GCam ProcessRaw order: Pecan denoises luma first, its Y is copied back into
        // linear_yuv (slice(2, 0).copy_from), and ChromaDenoise then runs on
        // [denoised Y, Cb, Cr], so the chroma pyramid sees a clean luma plane instead
        // of the noisy RawToYuv Y. MeasureMoire above still reads the RawToYuv Y.
        if (run_luma) {
            const auto pecan_start = StageClock::now();
            photon::mgc_denoise::DenoiseNoiseBuffers luma_noise;
            if (!photon::mgc_denoise::BuildNoiseBuffers(
                    q14_yuv_read[0],
                    q14_yuv_shot[0],
                    yuv_quadratic[0],
                    prepared_luma_correlation,
                    denoise_response_offset,
                    denoise_response_cosine_offset,
                    luma_strength,
                    luma_outlier,
                    luma_revert,
                    &luma_noise)) {
                return LogStageFailure("luma_noise_model", -1);
            }
            if (run_diagnostics) {
                LogPecanInputs(
                    yuv_read,
                    yuv_shot,
                    yuv_quadratic,
                    q14_yuv_read,
                    q14_yuv_shot,
                    prepared_luma_correlation,
                    luma_strength,
                    luma_noise);
            }
            const int pecan_result = photon::mgc_denoise::RunPecan(
                strength.data(),
                strength_width,
                strength_height,
                luma_noise,
                planar_b.get(),
                padded_width,
                padded_height,
                planar_a.get());
            if (pecan_result != 0) {
                return LogStageFailure("pecan_luma", pecan_result);
            }
            pecan_ms = elapsed_ms(pecan_start);
        } else {
            // Luma denoise disabled: keep the RawToYuv Y.
            std::copy_n(planar_b.get(), pixel_count, planar_a.get());
        }

        // planar_a's Y is final from here on; ChromaDenoise owns only Cb/Cr.
        std::copy_n(planar_a.get(), pixel_count, planar_b.get());

        if (run_chroma) {
            const auto chroma_start = StageClock::now();
            photon::mgc_denoise::ChromaDenoiseNoiseBuffers chroma_noise;
            if (!photon::mgc_denoise::BuildChromaNoiseBuffers(
                    q14_yuv_read,
                    q14_chroma_shared_shot,
                    chroma_shared_quadratic,
                    prepared_chroma_correlation,
                    denoise_response_offset,
                    denoise_response_cosine_offset,
                    chroma_strength,
                    chroma_outlier,
                    &chroma_noise)) {
                return LogStageFailure("chroma_noise_model", -1);
            }
            const int chroma_result =
                photon::mgc_denoise::RunChromaDenoise(
                    planar_b.get(),
                    padded_width,
                    padded_height,
                    chroma_strength_q8,
                    strength_width,
                    strength_height,
                    chroma_noise,
                    planar_a.get());
            if (chroma_result != 0) {
                return LogStageFailure("chroma_pyramid", chroma_result);
            }
            chroma_ms = elapsed_ms(chroma_start);
        }

        if (!run_chroma) {
            std::copy_n(
                planar_b.get() + pixel_count,
                pixel_count * 2,
                planar_a.get() + pixel_count);
        }

        // GCam ProcessRaw low-frequency branch: BoxDownsample of [Pecan Y,
        // chroma-denoised Cb/Cr] by 2^L, the model box-downsampled L times
        // (0x5e99434), then ChromaDenoise again with the same tuning and the same
        // RAW/4 strength map (decimation 2 - L, downsample factor L). The pyramid
        // at 1/2^L resolution reaches the coarse chroma blotches the
        // full-resolution pyramid cannot. It needs the whole image, not a tile.
        const int low_frequency_log2 = low_frequency_log2_downsample;
        const bool whole_image = global_origin_x == 0 && global_origin_y == 0 &&
            width == full_width && height == full_height;
        if (run_chroma && low_frequency_log2 > 0 && whole_image) {
            const auto low_start = StageClock::now();
            const int low_width = padded_width >> low_frequency_log2;
            const int low_height = padded_height >> low_frequency_log2;
            const size_t low_count =
                static_cast<size_t>(low_width) * low_height * 3;
            std::vector<int16_t> low_input(low_count);
            std::vector<int16_t> low_output(low_count);
            std::vector<int16_t> low_median;
            BoxDownsamplePlanes(
                planar_a.get(),
                padded_width,
                padded_height,
                low_frequency_log2,
                low_input.data());
            const auto median_type =
                static_cast<ChromaMedianFilterType>(chroma_median_filter_type);
            if (median_type != ChromaMedianFilterType::kNone) {
                // ProcessLowFrequency (0x4694fbc): the median replaces ds_linear_yuv
                // before the low-frequency ChromaDenoise.
                std::vector<int16_t> filtered(low_count);
                ChromaMedianFilter(
                    median_type, low_input.data(), low_width, low_height, filtered.data());
                low_median = std::move(filtered);
            }
            const int16_t* low_denoise_input =
                low_median.empty() ? low_input.data() : low_median.data();
            float low_read[3] = {q14_yuv_read[0], q14_yuv_read[1], q14_yuv_read[2]};
            float low_shot = q14_chroma_shared_shot;
            float low_quadratic = chroma_shared_quadratic;
            float low_spectrum[128];
            std::copy_n(prepared_chroma_correlation, 128, low_spectrum);
            if (!photon::mgc_denoise::BoxDownsampleNoiseModel(
                    low_frequency_log2,
                    low_read,
                    &low_shot,
                    &low_quadratic,
                    low_spectrum)) {
                return LogStageFailure("low_frequency_noise_model", -1);
            }
            photon::mgc_denoise::ChromaDenoiseNoiseBuffers low_noise;
            if (!photon::mgc_denoise::BuildChromaNoiseBuffers(
                    low_read,
                    low_shot,
                    low_quadratic,
                    low_spectrum,
                    denoise_response_offset,
                    denoise_response_cosine_offset,
                    chroma_strength,
                    chroma_outlier,
                    &low_noise)) {
                return LogStageFailure("low_frequency_chroma_noise_model", -1);
            }
            const int low_result = photon::mgc_denoise::RunChromaDenoise(
                low_denoise_input,
                low_width,
                low_height,
                chroma_strength_q8,
                strength_width,
                strength_height,
                low_noise,
                low_output.data(),
                2 - low_frequency_log2,
                low_frequency_log2);
            if (low_result != 0) {
                return LogStageFailure("low_frequency_chroma_pyramid", low_result);
            }
            AddUpsampledChromaCorrection(
                low_input.data(),
                low_output.data(),
                low_width,
                low_height,
                low_frequency_log2,
                planar_a.get(),
                padded_width,
                padded_height);
            __android_log_print(
                ANDROID_LOG_INFO,
                kLogTag,
                "MGC low-frequency chroma denoise factor=%dx size=%dx%d median=%d "
                "read=[%.6g,%.6g,%.6g] shot=%.6g quadratic=%.6g took=%lldms",
                1 << low_frequency_log2,
                low_width,
                low_height,
                chroma_median_filter_type,
                low_read[0],
                low_read[1],
                low_read[2],
                low_shot,
                low_quadratic,
                static_cast<long long>(elapsed_ms(low_start)));
        } else if (run_chroma && low_frequency_log2 > 0) {
            __android_log_print(
                ANDROID_LOG_WARN,
                kLogTag,
                "MGC low-frequency chroma denoise skipped for tile origin=(%d,%d) "
                "size=%dx%d full=%dx%d",
                global_origin_x,
                global_origin_y,
                width,
                height,
                full_width,
                full_height);
        }

        if (run_diagnostics) {
            // planar_b's Y already holds the Pecan output, so this delta covers Cb/Cr
            // only; the luma change is reflected in the Pecan stage timing/inputs.
            const auto diagnostics_start = StageClock::now();
            const auto output_delta = MeasurePlanarDelta(
                planar_b.get(),
                planar_a.get(),
                width,
                height,
                padded_width,
                pixel_count);
            LogDenoiseDiagnostics(
                strength.data(),
                strength_count,
                output_delta);
            diagnostics_ms = elapsed_ms(diagnostics_start);
        }

        // This boundary returns linear camera RGB to Photon. The original MGC pipeline only
        // sharpened after tone mapping; Photon now performs final sharpening in its GLES output
        // chain. Calling the former U12 kernel here would clamp Q14 samples at 4095 and corrupt
        // exposure and saturation, so the matching operation at this boundary is YuvToRgb.
        const auto yuv_to_rgb_start = StageClock::now();
        const int yuv_to_rgb_result =
            photon::mgc_denoise::RunYuvToRgb(
                planar_a.get(),
                padded_width,
                padded_height,
                planar_b.get());
        if (yuv_to_rgb_result != 0) {
            return LogStageFailure("yuv_to_rgb", yuv_to_rgb_result);
        }
        yuv_to_rgb_ms = elapsed_ms(yuv_to_rgb_start);

        const auto output_pack_start = StageClock::now();
#pragma omp parallel for schedule(static) num_threads(host_worker_count)
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
        output_pack_ms = elapsed_ms(output_pack_start);
        __android_log_print(
            ANDROID_LOG_INFO,
            kLogTag,
            "MGC denoise stages hostWorkers=%d allocation=%lldms inputPack=%lldms strength=%lldms "
            "demoire=%lldms rgbToYuv=%lldms chroma=%lldms pecan=%lldms diagnostics=%lldms "
            "yuvToRgb=%lldms outputPack=%lldms total=%lldms",
            host_worker_count,
            static_cast<long long>(allocation_ms),
            static_cast<long long>(input_pack_ms),
            static_cast<long long>(strength_ms),
            static_cast<long long>(demoire_ms),
            static_cast<long long>(rgb_to_yuv_ms),
            static_cast<long long>(chroma_ms),
            static_cast<long long>(pecan_ms),
            static_cast<long long>(diagnostics_ms),
            static_cast<long long>(yuv_to_rgb_ms),
            static_cast<long long>(output_pack_ms),
            static_cast<long long>(elapsed_ms(total_start)));
        return 0;
    } catch (const std::bad_alloc&) {
        return LogStageFailure("allocation", -2);
    }
}



int RunLowFrequencyChromaCorrection(const LowFrequencyChromaRequest& request) {
    const int log2_factor = request.log2_downsample;
    // RunChromaDenoise reads the RAW/4 strength map at decimation 2 - L.
    if (request.rgba == nullptr || log2_factor < 1 || log2_factor > 2 ||
        request.full_width <= 0 || request.full_height <= 0 ||
        request.low_width != (request.full_width + (1 << log2_factor) - 1) >> log2_factor ||
        request.low_height != (request.full_height + (1 << log2_factor) - 1) >> log2_factor ||
        (request.spatial_strength_q8 != nullptr &&
         (request.spatial_strength_width != (request.full_width + 3) / 4 ||
          request.spatial_strength_height != (request.full_height + 3) / 4)) ||
        !std::isfinite(request.denoise_response_offset) ||
        !std::isfinite(request.denoise_response_cosine_offset)) {
        return -1;
    }
    for (int channel = 0; channel < 3; ++channel) {
        if (!std::isfinite(request.prepared_normalized_yuv_read[channel]) ||
            request.prepared_normalized_yuv_read[channel] < 0.0f) {
            return -1;
        }
    }
    if (!std::isfinite(request.prepared_normalized_chroma_shot) ||
        request.prepared_normalized_chroma_shot < 0.0f ||
        !std::isfinite(request.prepared_normalized_chroma_quadratic) ||
        request.prepared_normalized_chroma_quadratic < 0.0f) {
        return -1;
    }
    // The same padded geometry as the in-call branch: the low image is the padded
    // full-resolution frame box-downsampled by 2^L, the strength map its quarter.
    const int padded_width = RoundUp(request.full_width, 128);
    const int padded_height = RoundUp(request.full_height, 16);
    const int low_width = padded_width >> log2_factor;
    const int low_height = padded_height >> log2_factor;
    const int strength_width = padded_width / 4;
    const int strength_height = padded_height / 4;
    const size_t low_plane = static_cast<size_t>(low_width) * low_height;
    const size_t strength_count = static_cast<size_t>(strength_width) * strength_height;
    try {
        std::vector<uint16_t> strength(strength_count * 3, 256);
        if (request.spatial_strength_q8 != nullptr) {
            for (int y = 0; y < strength_height; ++y) {
                const int source_y = std::clamp(
                    std::min(y * 4, request.full_height - 1) / 4,
                    0,
                    request.spatial_strength_height - 1);
                for (int x = 0; x < strength_width; ++x) {
                    const int source_x = std::clamp(
                        std::min(x * 4, request.full_width - 1) / 4,
                        0,
                        request.spatial_strength_width - 1);
                    const uint16_t value = request.spatial_strength_q8[
                        static_cast<size_t>(source_y) * request.spatial_strength_width + source_x];
                    for (int plane = 0; plane < 3; ++plane) {
                        strength[plane * strength_count +
                            static_cast<size_t>(y) * strength_width + x] = value;
                    }
                }
            }
        }

        std::vector<uint16_t> packed(low_plane * 3);
        for (int y = 0; y < low_height; ++y) {
            const int source_y = std::min(y, request.low_height - 1);
            for (int x = 0; x < low_width; ++x) {
                const int source_x = std::min(x, request.low_width - 1);
                const size_t source = (static_cast<size_t>(source_y) * request.low_width + source_x) * 4;
                for (int channel = 0; channel < 3; ++channel) {
                    const float normalized = std::clamp(
                        HalfToFloat(request.rgba[source + channel]), 0.0f, 1.0f);
                    packed[channel * low_plane + static_cast<size_t>(y) * low_width + x] =
                        static_cast<uint16_t>(std::lround(normalized * kWhiteLevel));
                }
            }
        }
        std::vector<int16_t> low_input(low_plane * 3);
        const int to_yuv = RunRgbRawToYuv(packed.data(), low_width, low_height, low_input.data());
        if (to_yuv != 0) return LogStageFailure("low_frequency_rgb_to_yuv", to_yuv);

        constexpr float white = static_cast<float>(kWhiteLevel);
        float low_read[3];
        for (int channel = 0; channel < 3; ++channel) {
            low_read[channel] = request.prepared_normalized_yuv_read[channel] * white * white;
        }
        float low_shot = request.prepared_normalized_chroma_shot * white;
        float low_quadratic = request.prepared_normalized_chroma_quadratic;
        float low_spectrum[128];
        std::copy_n(request.chroma_correlation, 128, low_spectrum);
        if (!BoxDownsampleNoiseModel(log2_factor, low_read, &low_shot, &low_quadratic, low_spectrum)) {
            return LogStageFailure("low_frequency_noise_model", -1);
        }
        ChromaDenoiseNoiseBuffers noise;
        if (!BuildChromaNoiseBuffers(
                low_read,
                low_shot,
                low_quadratic,
                low_spectrum,
                request.denoise_response_offset,
                request.denoise_response_cosine_offset,
                request.chroma_strength,
                request.chroma_outlier,
                &noise)) {
            return LogStageFailure("low_frequency_chroma_noise_model", -1);
        }
        std::vector<int16_t> median;
        const auto median_type =
            static_cast<ChromaMedianFilterType>(request.chroma_median_filter_type);
        if (median_type != ChromaMedianFilterType::kNone) {
            median.resize(low_plane * 3);
            ChromaMedianFilter(median_type, low_input.data(), low_width, low_height, median.data());
        }
        std::vector<int16_t> low_output(low_plane * 3);
        const int denoise = RunChromaDenoise(
            median.empty() ? low_input.data() : median.data(),
            low_width,
            low_height,
            strength.data(),
            strength_width,
            strength_height,
            noise,
            low_output.data(),
            2 - log2_factor,
            log2_factor);
        if (denoise != 0) return LogStageFailure("low_frequency_chroma_pyramid", denoise);

        // The correction is the Cb/Cr change against the un-medianed input (as the in-call
        // branch adds it); Y is unchanged. Both sides go through MGC's YuvToRgb.
        std::copy_n(low_input.data(), low_plane, low_output.data());
        std::vector<int16_t> rgb_before(low_plane * 3);
        std::vector<int16_t> rgb_after(low_plane * 3);
        int to_rgb = RunYuvToRgb(low_input.data(), low_width, low_height, rgb_before.data());
        if (to_rgb == 0) {
            to_rgb = RunYuvToRgb(low_output.data(), low_width, low_height, rgb_after.data());
        }
        if (to_rgb != 0) return LogStageFailure("low_frequency_yuv_to_rgb", to_rgb);
        for (int y = 0; y < request.low_height; ++y) {
            for (int x = 0; x < request.low_width; ++x) {
                const size_t pixel = static_cast<size_t>(y) * low_width + x;
                const size_t destination = (static_cast<size_t>(y) * request.low_width + x) * 4;
                for (int channel = 0; channel < 3; ++channel) {
                    const size_t index = channel * low_plane + pixel;
                    const float delta =
                        (static_cast<float>(rgb_after[index]) - static_cast<float>(rgb_before[index])) /
                        white;
                    request.rgba[destination + channel] = FloatToHalf(delta);
                }
                request.rgba[destination + 3] = FloatToHalf(0.0f);
            }
        }
        __android_log_print(
            ANDROID_LOG_INFO,
            kLogTag,
            "MGC low-frequency chroma correction factor=%dx low=%dx%d median=%d "
            "read=[%.6g,%.6g,%.6g] shot=%.6g quadratic=%.6g",
            1 << log2_factor,
            low_width,
            low_height,
            request.chroma_median_filter_type,
            low_read[0],
            low_read[1],
            low_read[2],
            low_shot,
            low_quadratic);
        return 0;
    } catch (const std::bad_alloc&) {
        return LogStageFailure("low_frequency_allocation", -2);
    }
}

}  // namespace photon::mgc_denoise
