#include "mgc_denoise_static.h"

#include <android/log.h>
#include <pthread.h>
#include <unistd.h>

#include <algorithm>
#include <atomic>
#include <cmath>
#include <cstring>
#include <vector>

namespace photon::mgc_denoise {
namespace {

constexpr char kTag[] = "PLog_MgcDenoiseStatic";

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

using HalideTask = int (*)(void*, int, uint8_t*);
using PecanFn = int (*)(
    void*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*);
using StrengthFn = int (*)(
    void*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    float,
    float);
using RgbRawToYuvFn = int (*)(
    void*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    uint16_t,
    uint16_t,
    HalideBuffer*,
    float,
    float,
    float,
    HalideBuffer*);
using ChromaFn = int (*)(
    void*,
    HalideBuffer*,
    HalideBuffer*,
    int,
    int,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*);
using YuvToRgbFn = int (*)(
    void*,
    HalideBuffer*,
    HalideBuffer*);
using DownsampleRawFn = int (*)(
    void*,
    HalideBuffer*,
    int32_t,
    HalideBuffer*,
    float,
    float,
    HalideBuffer*);
using DownsampleRgbFn = int (*)(
    void*,
    HalideBuffer*,
    HalideBuffer*,
    float,
    float,
    HalideBuffer*);
using ComputeBayerNoiseModelFn = int (*)(
    void*,
    int32_t,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    float,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*);
using ComputeRgbNoiseModelFn = int (*)(
    void*,
    int32_t,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    float,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*);
using DownsampleRgbModeFn = int (*)(
    int,
    HalideBuffer*,
    HalideBuffer*);

extern "C" int photon_mgc_compute_denoise_strength_maps_u16(
    void*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    float,
    float);
extern "C" int photon_mgc_rgb_raw_to_yuv_s16(
    void*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    uint16_t,
    uint16_t,
    HalideBuffer*,
    float,
    float,
    float,
    HalideBuffer*);
extern "C" int photon_mgc_chroma_denoise_pyramid_complete_s16(
    void*,
    HalideBuffer*,
    HalideBuffer*,
    int,
    int,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*);
extern "C" int photon_mgc_pecan_luma_denoise_s16(
    void*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*);
extern "C" int photon_mgc_yuv_to_rgb_s16(
    void*,
    HalideBuffer*,
    HalideBuffer*);
extern "C" int photon_mgc_downsample_raw_f16_to_float_tile_size_16(
    void*,
    HalideBuffer*,
    int32_t,
    HalideBuffer*,
    float,
    float,
    HalideBuffer*);
extern "C" int photon_mgc_downsample_rgb_f16_to_float_tile_size_16(
    void*,
    HalideBuffer*,
    HalideBuffer*,
    float,
    float,
    HalideBuffer*);
extern "C" int photon_mgc_compute_bayer_noise_model_f32_tile_size_16(
    void*,
    int32_t,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    float,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*);
extern "C" int photon_mgc_compute_rgb_noise_model_f32_tile_size_16(
    void*,
    int32_t,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    float,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*,
    HalideBuffer*);
extern "C" int photon_mgc_downsample_rgb_mode_0(
    int,
    HalideBuffer*,
    HalideBuffer*);
extern "C" int photon_mgc_downsample_rgb_mode_1(
    int,
    HalideBuffer*,
    HalideBuffer*);

void* HalideMalloc(void*, size_t size) {
    void* result = nullptr;
    if (posix_memalign(&result, 128, std::max<size_t>(size, 1)) != 0) {
        return nullptr;
    }
#if defined(MGC_DENOISE_FORCE_SERIAL)
    __android_log_print(
        ANDROID_LOG_INFO,
        kTag,
        "probe HalideMalloc size=%zu result=%p",
        size,
        result);
#endif
    return result;
}

void HalideFree(void*, void* pointer) {
    free(pointer);
}

uintptr_t HalideTrace(
    uintptr_t,
    uintptr_t,
    uintptr_t,
    uintptr_t,
    uintptr_t,
    uintptr_t,
    uintptr_t,
    uintptr_t,
    uintptr_t,
    uintptr_t,
    uintptr_t,
    uintptr_t) {
    return 0;
}

struct ParallelJob {
    void* user_context;
    HalideTask task;
    int minimum;
    int size;
    uint8_t* closure;
    std::atomic<int> next{0};
    std::atomic<int> first_error{0};
};

void* RunParallelJob(void* opaque) {
    auto* job = static_cast<ParallelJob*>(opaque);
    for (;;) {
        const int offset = job->next.fetch_add(1, std::memory_order_relaxed);
        if (offset >= job->size) break;
        const int result =
            job->task(job->user_context, job->minimum + offset, job->closure);
        if (result != 0) {
            int expected = 0;
            job->first_error.compare_exchange_strong(
                expected,
                result,
                std::memory_order_relaxed);
        }
    }
    return nullptr;
}

int HalideDoParFor(
    void* user_context,
    HalideTask task,
    int minimum,
    int size,
    uint8_t* closure) {
    if (size <= 0) return 0;
#if defined(MGC_DENOISE_FORCE_SERIAL)
    __android_log_print(
        ANDROID_LOG_INFO,
        kTag,
        "probe HalideDoParFor task=%p min=%d size=%d closure=%p",
        reinterpret_cast<void*>(task),
        minimum,
        size,
        closure);
#endif
    ParallelJob job{user_context, task, minimum, size, closure};
    long online_cpus = sysconf(_SC_NPROCESSORS_ONLN);
    online_cpus = std::max<long>(online_cpus, 1);
#if defined(MGC_DENOISE_FORCE_SERIAL)
    online_cpus = 1;
#endif
    const int worker_count =
        std::min<int>(std::min<long>(online_cpus, size), 16);
    pthread_t workers[15] = {};
    int created = 0;
    for (int index = 1; index < worker_count; ++index) {
        if (pthread_create(
                &workers[created],
                nullptr,
                RunParallelJob,
                &job) != 0) {
            break;
        }
        ++created;
    }
    RunParallelJob(&job);
    for (int index = 0; index < created; ++index) {
        pthread_join(workers[index], nullptr);
    }
    return job.first_error.load(std::memory_order_relaxed);
}

template <uintptr_t Target>
uintptr_t HalideValidationError(
    uintptr_t argument0,
    uintptr_t argument1,
    uintptr_t argument2,
    uintptr_t argument3,
    uintptr_t,
    uintptr_t,
    uintptr_t,
    uintptr_t) {
    __android_log_print(
        ANDROID_LOG_ERROR,
        kTag,
        "MGC Halide validation target=0x%zx args=[0x%zx,0x%zx,0x%zx,0x%zx]",
        static_cast<size_t>(Target),
        static_cast<size_t>(argument0),
        static_cast<size_t>(argument1),
        static_cast<size_t>(argument2),
        static_cast<size_t>(argument3));
    return Target;
}

HalideBuffer MakeBuffer(
    void* host,
    HalideType type,
    int dimensions,
    const HalideDimension* dimension_data) {
    return HalideBuffer{
        0,
        nullptr,
        static_cast<uint8_t*>(host),
        0,
        type,
        dimensions,
        dimension_data,
        nullptr,
    };
}

float DownsamplingEnergy(
    const float spectrum[128],
    int x_factor,
    int y_factor) {
    // Exact scalar form of MGC sub_5E9DEE0 (0x5e9dee0).
    float total = 0.0f;
    for (int outer = 0; outer < 128; ++outer) {
        float inner_sum = 0.0f;
        for (int inner = 0; inner < 128; ++inner) {
            const int wrapped =
                (outer * y_factor + inner * x_factor) & 127;
            // 0x5e9def4..0x5e9df68 builds:
            // cos(wrapped * pi / 64 - (x_factor + y_factor) * pi).
            // The second term is a whole-pi phase shift, not part of the
            // pi/64 bin coordinate.
            const double angle =
                static_cast<double>(wrapped) * M_PI / 64.0 -
                static_cast<double>(x_factor + y_factor) * M_PI;
            const float cosine = static_cast<float>(std::cos(angle));
            const float response =
                (1.0f - cosine * cosine) +
                (cosine - 1.0f) * (cosine - 1.0f);
            inner_sum += spectrum[inner] * response;
        }
        total += inner_sum * spectrum[outer];
    }
    return total * 0.00006103515625f;
}

bool AdvancePyramidCorrelation(
    float spectrum[128],
    float* coefficient_scale) {
    // MGC's fixed eight-tap filter at 0x6b20e0/0x6b6200.
    constexpr float filter[8] = {
        -3.0f / 128.0f,
        -7.0f / 128.0f,
        17.0f / 128.0f,
        57.0f / 128.0f,
        57.0f / 128.0f,
        17.0f / 128.0f,
        -7.0f / 128.0f,
        -3.0f / 128.0f,
    };
    float filtered[128] = {};
    float energy = 0.0f;
    for (int frequency = 0; frequency < 128; ++frequency) {
        double real = 0.0;
        double imaginary = 0.0;
        // mgc_noise_model_next_pyramid (0x5e98c98) reaches
        // sub_5e9ca0c through mgc_correlation_convolve. Its root table is
        // initialized at 0x5e9cd34 with this half-bin-centered coordinate.
        const double omega =
            (static_cast<double>(frequency) + 0.5) *
                2.0 * M_PI / 128.0 -
            M_PI;
        for (int tap = 0; tap < 8; ++tap) {
            real += static_cast<double>(filter[tap]) *
                std::cos(omega * tap);
            imaginary -= static_cast<double>(filter[tap]) *
                std::sin(omega * tap);
        }
        const float response = static_cast<float>(
            real * real + imaginary * imaginary);
        filtered[frequency] = spectrum[frequency] * response;
        energy += filtered[frequency];
    }
    energy *= 1.0f / 128.0f;
    if (!(energy > 0.0f) || !std::isfinite(energy)) return false;
    const float inverse_energy = 1.0f / energy;
    for (int index = 0; index < 128; ++index) {
        spectrum[index] = filtered[index] * inverse_energy;
    }
    *coefficient_scale = energy * energy;
    return true;
}

}  // namespace

extern "C" __attribute__((visibility("hidden"))) void*
photon_mgc_halide_malloc(void* user_context, size_t size) {
    return HalideMalloc(user_context, size);
}

extern "C" __attribute__((visibility("hidden"))) void
photon_mgc_halide_free(void* user_context, void* pointer) {
    HalideFree(user_context, pointer);
}

extern "C" __attribute__((visibility("hidden"))) uintptr_t
photon_mgc_halide_trace(
    uintptr_t argument0,
    uintptr_t argument1,
    uintptr_t argument2,
    uintptr_t argument3,
    uintptr_t argument4,
    uintptr_t argument5,
    uintptr_t argument6,
    uintptr_t argument7,
    uintptr_t argument8,
    uintptr_t argument9,
    uintptr_t argument10,
    uintptr_t argument11) {
    return HalideTrace(
        argument0,
        argument1,
        argument2,
        argument3,
        argument4,
        argument5,
        argument6,
        argument7,
        argument8,
        argument9,
        argument10,
        argument11);
}

extern "C" __attribute__((visibility("hidden"))) int
photon_mgc_halide_do_par_for(
    void* user_context,
    HalideTask task,
    int minimum,
    int size,
    uint8_t* closure) {
    return HalideDoParFor(user_context, task, minimum, size, closure);
}

extern "C" __attribute__((visibility("hidden"))) int
photon_mgc_downsample_rgb_dispatch(
    int mode,
    HalideBuffer* input,
    HalideBuffer* output,
    int argument) {
    DownsampleRgbModeFn function = nullptr;
    if (mode == 0) {
        function = &photon_mgc_downsample_rgb_mode_0;
    } else if (mode == 1) {
        function = &photon_mgc_downsample_rgb_mode_1;
    } else {
        return -1;
    }
    // The original dispatcher at 0x5dae16c deliberately discards the
    // specialized function's return value for modes 0/1.
    function(argument, input, output);
    return 0;
}

#define PHOTON_MGC_DEFINE_HALIDE_ERROR(address) \
    extern "C" __attribute__((visibility("hidden"))) uintptr_t \
    photon_mgc_halide_error_##address( \
        uintptr_t argument0, \
        uintptr_t argument1, \
        uintptr_t argument2, \
        uintptr_t argument3, \
        uintptr_t argument4, \
        uintptr_t argument5, \
        uintptr_t argument6, \
        uintptr_t argument7) { \
        return HalideValidationError<0x##address>( \
            argument0, \
            argument1, \
            argument2, \
            argument3, \
            argument4, \
            argument5, \
            argument6, \
            argument7); \
    }

PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef604c)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6140)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef61ac)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef636c)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef63f8)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef64dc)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6568)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6600)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef668c)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6794)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6a74)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6a94)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6b6c)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6bd8)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6c38)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6cd0)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef7030)
PHOTON_MGC_DEFINE_HALIDE_ERROR(20239a0)
PHOTON_MGC_DEFINE_HALIDE_ERROR(256406c)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5dac60c)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5dac85c)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5daca0c)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5dae204)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5dae37c)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5dae540)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5dae6b8)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f57538)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f59544)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f595a0)

#undef PHOTON_MGC_DEFINE_HALIDE_ERROR

extern "C" __attribute__((visibility("hidden"))) uintptr_t
photon_mgc_halide_error_5ef6294(
    uintptr_t user_context,
    uintptr_t buffer_name,
    uintptr_t expected_type,
    uintptr_t actual_type,
    uintptr_t,
    uintptr_t,
    uintptr_t,
    uintptr_t) {
    (void)user_context;
    const char* name = reinterpret_cast<const char*>(buffer_name);
    __android_log_print(
        ANDROID_LOG_ERROR,
        kTag,
        "MGC Halide buffer type mismatch name=%s expected=0x%zx "
        "actual=0x%zx",
        name != nullptr ? name : "<null>",
        static_cast<size_t>(expected_type),
        static_cast<size_t>(actual_type));
    // Original MGC helper 0x5ef6294 returns Halide's
    // halide_error_code_bad_type (-3).
    return static_cast<uintptr_t>(static_cast<intptr_t>(-3));
}

bool BuildNoiseBuffers(
    float read_noise,
    float shot_noise,
    float quadratic_noise,
    const float correlation[128],
    const float strength[5],
    const float outlier_distance[5],
    const float revert_factor[5],
    DenoiseNoiseBuffers* output) {
    if (correlation == nullptr || strength == nullptr ||
        outlier_distance == nullptr || revert_factor == nullptr ||
        output == nullptr || !std::isfinite(read_noise) ||
        !std::isfinite(shot_noise) || !std::isfinite(quadratic_noise)) {
        return false;
    }

    float current_correlation[128] = {};
    for (int index = 0; index < 128; ++index) {
        const float value = correlation[index];
        if (!std::isfinite(value)) return false;
        current_correlation[index] = value;
    }
    float current_read = std::max(read_noise, 0.0f);
    float current_shot = std::max(shot_noise, 0.0f);
    float current_quadratic = std::max(quadratic_noise, 0.0f);

    for (int level = 0; level < 4; ++level) {
        const float strength_downsampled =
            std::max(strength[level + 1], 0.0f);
        const float strength_native = std::max(strength[level], 0.0f);
        const float downsampled_scale =
            strength_downsampled * strength_downsampled * 0.5f *
            DownsamplingEnergy(current_correlation, 2, 0);
        const float native_scale =
            strength_native * strength_native *
            DownsamplingEnergy(current_correlation, 1, 0);

        output->read[level] = current_read * downsampled_scale;
        output->read[4 + level] = current_read * native_scale;
        output->shot[level] = current_shot * downsampled_scale;
        output->shot[4 + level] = current_shot * native_scale;
        output->quadratic[level] =
            current_quadratic * downsampled_scale;
        output->quadratic[4 + level] =
            current_quadratic * native_scale;
        float coefficient_scale = 0.0f;
        if (!AdvancePyramidCorrelation(
                current_correlation,
                &coefficient_scale)) {
            return false;
        }
        current_read *= coefficient_scale;
        current_shot *= coefficient_scale;
        current_quadratic *= coefficient_scale;
    }
    std::copy_n(
        outlier_distance,
        5,
        output->outlier_distance);
    std::copy_n(revert_factor, 5, output->revert_factor);
    return true;
}

bool BuildChromaNoiseBuffers(
    const float read_noise[3],
    const float shot_noise[3],
    const float quadratic_noise[3],
    const float correlation[128],
    const float strength[5],
    const float outlier_threshold[5],
    ChromaDenoiseNoiseBuffers* output) {
    if (read_noise == nullptr || shot_noise == nullptr ||
        quadratic_noise == nullptr || correlation == nullptr ||
        strength == nullptr || outlier_threshold == nullptr ||
        output == nullptr) {
        return false;
    }
    float current_correlation[128] = {};
    for (int index = 0; index < 128; ++index) {
        if (!std::isfinite(correlation[index])) return false;
        current_correlation[index] = correlation[index];
    }
    float current_read[3] = {};
    float current_shot[3] = {};
    float current_quadratic[3] = {};
    for (int channel = 0; channel < 3; ++channel) {
        if (!std::isfinite(read_noise[channel]) ||
            !std::isfinite(shot_noise[channel]) ||
            !std::isfinite(quadratic_noise[channel])) {
            return false;
        }
        current_read[channel] = std::max(read_noise[channel], 0.0f);
        current_shot[channel] = std::max(shot_noise[channel], 0.0f);
        current_quadratic[channel] =
            std::max(quadratic_noise[channel], 0.0f);
    }

    for (int level = 0; level < 4; ++level) {
        for (int branch = 0; branch < 2; ++branch) {
            const int downsample_factor = branch == 0 ? 2 : 1;
            const int tuning_level =
                level + (downsample_factor == 2 ? 1 : 0);
            const float tuning_strength =
                std::max(strength[tuning_level], 0.0f);
            const float scale =
                tuning_strength * tuning_strength /
                static_cast<float>(downsample_factor) *
                DownsamplingEnergy(
                    current_correlation,
                    downsample_factor,
                    0);
            for (int channel = 0; channel < 3; ++channel) {
                const int index =
                    level + channel * 4 + branch * 12;
                output->read[index] = current_read[channel] * scale;
                output->shot[index] = current_shot[channel] * scale;
                output->quadratic[index] =
                    current_quadratic[channel] * scale;
            }
            output->outlier_threshold[level + branch * 4] =
                static_cast<uint8_t>(
                    static_cast<int>(outlier_threshold[tuning_level]));
        }
        float coefficient_scale = 0.0f;
        if (!AdvancePyramidCorrelation(
                current_correlation,
                &coefficient_scale)) {
            return false;
        }
        for (int channel = 0; channel < 3; ++channel) {
            current_read[channel] *= coefficient_scale;
            current_shot[channel] *= coefficient_scale;
            current_quadratic[channel] *= coefficient_scale;
        }
    }
    return true;
}

int ComputeStrengthMap(
    const uint16_t* input,
    int width,
    int height,
    const float* gain_map,
    int gain_width,
    int gain_height,
    float sample_rate_x,
    float sample_rate_y,
    uint16_t* output) {
    if (input == nullptr || gain_map == nullptr ||
        output == nullptr || width <= 0 || height <= 0 ||
        gain_width <= 0 || gain_height <= 0) {
        return -1;
    }
    const HalideDimension input_dimensions[] = {
        {0, width, 1, 0},
        {0, height, width, 0},
    };
    const HalideDimension gain_dimensions[] = {
        {0, gain_width, 4, 0},
        {0, gain_height, gain_width * 4, 0},
        {0, 4, 1, 0},
    };
    const HalideDimension output_dimensions[] = {
        {0, width, 1, 0},
        {0, height, width, 0},
        {0, 3, width * height, 0},
    };
    HalideBuffer input_buffer = MakeBuffer(
        const_cast<uint16_t*>(input),
        {1, 16, 1},
        2,
        input_dimensions);
    HalideBuffer gain_buffer = MakeBuffer(
        const_cast<float*>(gain_map),
        {2, 32, 1},
        3,
        gain_dimensions);
    HalideBuffer output_buffer = MakeBuffer(
        output,
        {1, 16, 1},
        3,
        output_dimensions);
    const auto function = reinterpret_cast<StrengthFn>(
        &photon_mgc_compute_denoise_strength_maps_u16);
    return function(
        nullptr,
        &input_buffer,
        &gain_buffer,
        &output_buffer,
        sample_rate_x,
        sample_rate_y);
}

int ComputeSpatialStrengthMap(
    SpatialStrengthInputLayout layout,
    const uint16_t* fused_f16,
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
    SpatialStrengthResult* diagnostics) {
    if (fused_f16 == nullptr || alignment == nullptr ||
        rejection == nullptr || input_read_noise == nullptr ||
        input_shot_noise == nullptr || frame_weights == nullptr ||
        kernel_sigmas == nullptr || output_strength_q8 == nullptr ||
        diagnostics == nullptr || width <= 0 || height <= 0 ||
        alignment_width <= 0 || alignment_height <= 0 ||
        rejection_width <= 0 || rejection_height <= 0 ||
        frame_count <= 1 || cfa_pattern < 0 || cfa_pattern > 3 ||
        !std::isfinite(rejected_denoise_multiplier)) {
        return -1;
    }
    const bool is_bayer = layout == SpatialStrengthInputLayout::Bayer;
    if (!is_bayer && layout != SpatialStrengthInputLayout::Rgba) {
        return -1;
    }
    const int expected_alignment_width =
        (width + (is_bayer ? 7 : 15)) / (is_bayer ? 8 : 16);
    const int expected_alignment_height =
        (height + (is_bayer ? 7 : 15)) / (is_bayer ? 8 : 16);
    if (alignment_width != expected_alignment_width ||
        alignment_height != expected_alignment_height ||
        rejection_width != (width + 3) / 4 ||
        rejection_height != (height + 3) / 4) {
        return -1;
    }

    const size_t pixel_count =
        static_cast<size_t>(width) * static_cast<size_t>(height);
    std::vector<uint16_t> rgb_planar;
    const uint16_t* downsample_input = fused_f16;
    if (!is_bayer) {
        rgb_planar.resize(pixel_count * 3);
        for (size_t pixel = 0; pixel < pixel_count; ++pixel) {
            for (int channel = 0; channel < 3; ++channel) {
                rgb_planar[
                    static_cast<size_t>(channel) * pixel_count + pixel] =
                    fused_f16[pixel * 4 + channel];
            }
        }
        downsample_input = rgb_planar.data();
    }

    const int signal_count = alignment_width * alignment_height;
    std::vector<float> signal(static_cast<size_t>(signal_count) * 3);
    float black[4] = {};
    const HalideDimension input_dimensions_bayer[] = {
        {0, width, 1, 0},
        {0, height, width, 0},
    };
    const HalideDimension input_dimensions_rgb[] = {
        {0, width, 1, 0},
        {0, height, width, 0},
        {0, 3, static_cast<int32_t>(pixel_count), 0},
    };
    const HalideDimension black_dimensions[] = {
        {0, is_bayer ? 4 : 3, 1, 0},
    };
    const HalideDimension signal_dimensions[] = {
        {0, alignment_width, 1, 0},
        {0, alignment_height, alignment_width, 0},
        {0, 3, signal_count, 0},
    };
    HalideBuffer input_buffer = MakeBuffer(
        const_cast<uint16_t*>(downsample_input),
        {2, 16, 1},
        is_bayer ? 2 : 3,
        is_bayer ? input_dimensions_bayer : input_dimensions_rgb);
    HalideBuffer black_buffer = MakeBuffer(
        black,
        {2, 32, 1},
        1,
        black_dimensions);
    HalideBuffer signal_buffer = MakeBuffer(
        signal.data(),
        {2, 32, 1},
        3,
        signal_dimensions);
    int result = 0;
    if (is_bayer) {
        const auto function = reinterpret_cast<DownsampleRawFn>(
            &photon_mgc_downsample_raw_f16_to_float_tile_size_16);
        result = function(
            nullptr,
            &input_buffer,
            cfa_pattern,
            &black_buffer,
            1.0f,
            1.0f,
            &signal_buffer);
    } else {
        const auto function = reinterpret_cast<DownsampleRgbFn>(
            &photon_mgc_downsample_rgb_f16_to_float_tile_size_16);
        result = function(
            nullptr,
            &input_buffer,
            &black_buffer,
            1.0f,
            1.0f,
            &signal_buffer);
    }
    if (result != 0) return result;

    const int alignment_plane = alignment_width * alignment_height;
    const int rejection_plane = rejection_width * rejection_height;
    const HalideDimension alignment_dimensions[] = {
        {0, alignment_width, 1, 0},
        {0, alignment_height, alignment_width, 0},
        {0, frame_count, alignment_plane, 0},
        {0, 2, alignment_plane * frame_count, 0},
    };
    const HalideDimension temporal_dimensions[] = {
        {0, frame_count, 1, 0},
    };
    const HalideDimension noise_dimensions[] = {
        {0, frame_count, 1, 0},
        {0, 3, frame_count, 0},
    };
    const HalideDimension rejection_dimensions[] = {
        {0, rejection_width, 1, 0},
        {0, rejection_height, rejection_width, 0},
        {0, frame_count, rejection_plane, 0},
    };
    const HalideDimension vector_dimensions[] = {
        {0, 3, 1, 0},
    };
    const HalideDimension strength_dimensions[] = {
        {0, rejection_width, 1, 0},
        {0, rejection_height, rejection_width, 0},
    };
    HalideBuffer alignment_buffer = MakeBuffer(
        const_cast<float*>(alignment),
        {2, 32, 1},
        4,
        alignment_dimensions);
    HalideBuffer kernel_buffer = MakeBuffer(
        const_cast<float*>(kernel_sigmas),
        {2, 32, 1},
        1,
        temporal_dimensions);
    HalideBuffer read_buffer = MakeBuffer(
        const_cast<float*>(input_read_noise),
        {2, 32, 1},
        2,
        noise_dimensions);
    HalideBuffer shot_buffer = MakeBuffer(
        const_cast<float*>(input_shot_noise),
        {2, 32, 1},
        2,
        noise_dimensions);
    HalideBuffer frame_weight_buffer = MakeBuffer(
        const_cast<float*>(frame_weights),
        {2, 32, 1},
        1,
        temporal_dimensions);
    HalideBuffer rejection_buffer = MakeBuffer(
        const_cast<uint8_t*>(rejection),
        {1, 8, 1},
        3,
        rejection_dimensions);
    HalideBuffer output_noise_0_buffer = MakeBuffer(
        diagnostics->output_noise_model_0,
        {2, 32, 1},
        1,
        vector_dimensions);
    HalideBuffer output_noise_1_buffer = MakeBuffer(
        diagnostics->output_noise_model_1,
        {2, 32, 1},
        1,
        vector_dimensions);
    HalideBuffer output_diag_0_buffer = MakeBuffer(
        diagnostics->output_weights_sum_total_diag_0,
        {2, 32, 1},
        1,
        vector_dimensions);
    HalideBuffer output_diag_1_buffer = MakeBuffer(
        diagnostics->output_weights_sum_total_diag_1,
        {2, 32, 1},
        1,
        vector_dimensions);
    HalideBuffer output_strength_buffer = MakeBuffer(
        output_strength_q8,
        {1, 16, 1},
        2,
        strength_dimensions);

    if (is_bayer) {
        const auto function = reinterpret_cast<ComputeBayerNoiseModelFn>(
            &photon_mgc_compute_bayer_noise_model_f32_tile_size_16);
        return function(
            nullptr,
            cfa_pattern,
            &alignment_buffer,
            &signal_buffer,
            &kernel_buffer,
            rejected_denoise_multiplier,
            &read_buffer,
            &shot_buffer,
            &frame_weight_buffer,
            &rejection_buffer,
            &output_noise_0_buffer,
            &output_noise_1_buffer,
            &output_diag_0_buffer,
            &output_diag_1_buffer,
            &output_strength_buffer);
    }
    const auto function = reinterpret_cast<ComputeRgbNoiseModelFn>(
        &photon_mgc_compute_rgb_noise_model_f32_tile_size_16);
    return function(
        nullptr,
        cfa_pattern,
        &alignment_buffer,
        &signal_buffer,
        &kernel_buffer,
        rejected_denoise_multiplier,
        &read_buffer,
        &shot_buffer,
        &frame_weight_buffer,
        &rejection_buffer,
        &output_noise_0_buffer,
        &output_noise_1_buffer,
        &output_diag_0_buffer,
        &output_diag_1_buffer,
        &output_strength_buffer);
}

int RunRgbRawToYuv(
    const uint16_t* input,
    int width,
    int height,
    int16_t* output) {
    if (input == nullptr || output == nullptr ||
        width <= 0 || height <= 0) {
        return -1;
    }
    const int pixel_count = width * height;
    const HalideDimension image_dimensions[] = {
        {0, width, 1, 0},
        {0, height, width, 0},
        {0, 3, pixel_count, 0},
    };
    const HalideDimension vector_dimensions[] = {
        {0, 3, 1, 0},
    };
    const HalideDimension gain_map_dimensions[] = {
        {0, 2, 4, 0},
        {0, 2, 8, 0},
        {0, 4, 1, 0},
    };
    float black_levels[3] = {};
    float channel_gains[3] = {1.0f, 1.0f, 1.0f};
    float neutral_gain_map[16];
    std::fill_n(neutral_gain_map, 16, 1.0f);
    HalideBuffer input_buffer = MakeBuffer(
        const_cast<uint16_t*>(input),
        {1, 16, 1},
        3,
        image_dimensions);
    HalideBuffer black_buffer = MakeBuffer(
        black_levels,
        {2, 32, 1},
        1,
        vector_dimensions);
    HalideBuffer gain_buffer = MakeBuffer(
        channel_gains,
        {2, 32, 1},
        1,
        vector_dimensions);
    HalideBuffer gain_map_buffer = MakeBuffer(
        neutral_gain_map,
        {2, 32, 1},
        3,
        gain_map_dimensions);
    HalideBuffer output_buffer = MakeBuffer(
        output,
        {0, 16, 1},
        3,
        image_dimensions);
    const auto function = reinterpret_cast<RgbRawToYuvFn>(
        &photon_mgc_rgb_raw_to_yuv_s16);
    constexpr uint16_t kDenoiseWhiteLevel = 16383;
    return function(
        nullptr,
        &input_buffer,
        &black_buffer,
        &gain_buffer,
        kDenoiseWhiteLevel,
        kDenoiseWhiteLevel,
        &gain_map_buffer,
        1.0f,
        1.0f,
        1.0f,
        &output_buffer);
}

int RunChromaDenoise(
    const int16_t* input,
    int width,
    int height,
    const uint16_t* strength_map,
    int strength_width,
    int strength_height,
    const ChromaDenoiseNoiseBuffers& noise,
    int16_t* output) {
    if (input == nullptr ||
        strength_map == nullptr || output == nullptr ||
        width <= 0 || height <= 0 ||
        strength_width != width / 4 ||
        strength_height != height / 4) {
        return -1;
    }
    const int pixel_count = width * height;
    const int strength_count = strength_width * strength_height;
    const HalideDimension image_dimensions[] = {
        {0, width, 1, 0},
        {0, height, width, 0},
        {0, 3, pixel_count, 0},
    };
    const HalideDimension strength_dimensions[] = {
        {0, strength_width, 1, 0},
        {0, strength_height, strength_width, 0},
        {0, 3, strength_count, 0},
    };
    // MGC slices channel zero from its original [4,3,2] quadratic and
    // shot buffers, retaining the original branch stride of 12.
    const HalideDimension scalar_noise_dimensions[] = {
        {0, 4, 1, 0},
        {0, 2, 12, 0},
    };
    const HalideDimension read_noise_dimensions[] = {
        {0, 4, 1, 0},
        {0, 3, 4, 0},
        {0, 2, 12, 0},
    };
    const HalideDimension outlier_dimensions[] = {
        {0, 4, 1, 0},
        {0, 2, 4, 0},
    };
    HalideBuffer input_buffer = MakeBuffer(
        const_cast<int16_t*>(input),
        {0, 16, 1},
        3,
        image_dimensions);
    HalideBuffer strength_buffer = MakeBuffer(
        const_cast<uint16_t*>(strength_map),
        {1, 16, 1},
        3,
        strength_dimensions);
    HalideBuffer quadratic_buffer = MakeBuffer(
        const_cast<float*>(noise.quadratic),
        {2, 32, 1},
        2,
        scalar_noise_dimensions);
    HalideBuffer shot_buffer = MakeBuffer(
        const_cast<float*>(noise.shot),
        {2, 32, 1},
        2,
        scalar_noise_dimensions);
    HalideBuffer read_buffer = MakeBuffer(
        const_cast<float*>(noise.read),
        {2, 32, 1},
        3,
        read_noise_dimensions);
    HalideBuffer outlier_buffer = MakeBuffer(
        const_cast<uint8_t*>(noise.outlier_threshold),
        {1, 8, 1},
        2,
        outlier_dimensions);
    HalideBuffer output_buffer = MakeBuffer(
        output,
        {0, 16, 1},
        3,
        image_dimensions);
    const auto function = reinterpret_cast<ChromaFn>(
        &photon_mgc_chroma_denoise_pyramid_complete_s16);
    // The full-resolution S16 call site at 0x468512c passes 2 and 0.
    return function(
        nullptr,
        &input_buffer,
        &strength_buffer,
        2,
        0,
        &quadratic_buffer,
        &shot_buffer,
        &read_buffer,
        &outlier_buffer,
        &output_buffer);
}

int RunPecan(
    const uint16_t* strength_map,
    int strength_width,
    int strength_height,
    const DenoiseNoiseBuffers& noise,
    const int16_t* input,
    int width,
    int height,
    int16_t* output) {
    if (strength_map == nullptr || input == nullptr ||
        output == nullptr || width <= 0 || height <= 0 ||
        strength_width != width / 4 ||
        strength_height != height / 4) {
        return -1;
    }
    const HalideDimension strength_dimensions[] = {
        {0, strength_width, 1, 0},
        {0, strength_height, strength_width, 0},
        {0, 3, strength_width * strength_height, 0},
    };
    const HalideDimension noise_dimensions[] = {
        {0, 4, 1, 0},
        {0, 2, 4, 0},
    };
    const HalideDimension tuning_dimensions[] = {
        {0, 5, 1, 0},
    };
    const HalideDimension image_dimensions[] = {
        {0, width, 1, 0},
        {0, height, width, 0},
    };
    HalideBuffer strength_buffer = MakeBuffer(
        const_cast<uint16_t*>(strength_map),
        {1, 16, 1},
        3,
        strength_dimensions);
    HalideBuffer read_buffer = MakeBuffer(
        const_cast<float*>(noise.read),
        {2, 32, 1},
        2,
        noise_dimensions);
    HalideBuffer shot_buffer = MakeBuffer(
        const_cast<float*>(noise.shot),
        {2, 32, 1},
        2,
        noise_dimensions);
    HalideBuffer quadratic_buffer = MakeBuffer(
        const_cast<float*>(noise.quadratic),
        {2, 32, 1},
        2,
        noise_dimensions);
    HalideBuffer outlier_buffer = MakeBuffer(
        const_cast<float*>(noise.outlier_distance),
        {2, 32, 1},
        1,
        tuning_dimensions);
    HalideBuffer revert_buffer = MakeBuffer(
        const_cast<float*>(noise.revert_factor),
        {2, 32, 1},
        1,
        tuning_dimensions);
    HalideBuffer input_buffer = MakeBuffer(
        const_cast<int16_t*>(input),
        {0, 16, 1},
        2,
        image_dimensions);
    HalideBuffer output_buffer = MakeBuffer(
        output,
        {0, 16, 1},
        2,
        image_dimensions);
    const auto function = reinterpret_cast<PecanFn>(
        &photon_mgc_pecan_luma_denoise_s16);
    return function(
        nullptr,
        &strength_buffer,
        &read_buffer,
        &shot_buffer,
        &quadratic_buffer,
        &outlier_buffer,
        &revert_buffer,
        &input_buffer,
        &output_buffer);
}

int RunYuvToRgb(
    const int16_t* input,
    int width,
    int height,
    int16_t* output) {
    if (input == nullptr || output == nullptr ||
        width <= 0 || height <= 0) {
        return -1;
    }
    const int pixel_count = width * height;
    const HalideDimension image_dimensions[] = {
        {0, width, 1, 0},
        {0, height, width, 0},
        {0, 3, pixel_count, 0},
    };
    HalideBuffer input_buffer = MakeBuffer(
        const_cast<int16_t*>(input),
        {0, 16, 1},
        3,
        image_dimensions);
    HalideBuffer output_buffer = MakeBuffer(
        output,
        {0, 16, 1},
        3,
        image_dimensions);
    const auto function = reinterpret_cast<YuvToRgbFn>(
        &photon_mgc_yuv_to_rgb_s16);
    return function(nullptr, &input_buffer, &output_buffer);
}

}  // namespace photon::mgc_denoise
