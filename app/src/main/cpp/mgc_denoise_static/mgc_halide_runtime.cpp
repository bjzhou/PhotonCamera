// Shared Halide runtime for the lifted MGC AOT capsules (docs/photon-multiscale-denoise.md §15):
// allocation, tracing, parallel dispatch and the validation-error hooks the capsules call.
#include "mgc_raisr_executor.h"
#include "mgc_raisr_timing.h"

#include <android/log.h>
#include <pthread.h>
#include <unistd.h>

#include <algorithm>
#include <atomic>
#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <sys/types.h>

namespace photon::mgc_denoise {
namespace {

constexpr char kTag[] = "PLog_MgcHalideRuntime";

using HalideTask = int (*)(void*, int, uint8_t*);

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
    if (photon_raisr::active_timing) ++photon_raisr::active_timing->parallel_calls;
    if (photon_raisr::active_executor) {
        return photon_raisr::active_executor->Run(user_context, task, minimum, size, closure);
    }
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
    {
        photon_raisr::ScopedTiming timer(&photon_raisr::Timing::thread_create);
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
    }
    if (photon_raisr::active_timing) photon_raisr::active_timing->workers_created += created;
    RunParallelJob(&job);
    photon_raisr::ScopedTiming join_timer(&photon_raisr::Timing::thread_join);
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

PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef61ac)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef64dc)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6568)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6600)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6794)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6a74)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6a94)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6b6c)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6bd8)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ef6c38)
PHOTON_MGC_DEFINE_HALIDE_ERROR(2055170)
PHOTON_MGC_DEFINE_HALIDE_ERROR(38a3740)
PHOTON_MGC_DEFINE_HALIDE_ERROR(38a92e8)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f94b18)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f94c0c)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f94c78)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f94d60)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f94e38)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f94ec4)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f94fa8)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f95034)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f950cc)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f95260)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f95540)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f95560)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f95638)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f956a4)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ff6938)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ff8944)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5ff89a0)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f95158)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f95704)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f9579c)
PHOTON_MGC_DEFINE_HALIDE_ERROR(5f95a4c)

#undef PHOTON_MGC_DEFINE_HALIDE_ERROR

extern "C" __attribute__((visibility("hidden"))) uintptr_t
photon_mgc_halide_error_5ef63f8(
    uintptr_t user_context,
    uintptr_t buffer_name,
    uintptr_t dimension,
    uintptr_t minimum_touched,
    uintptr_t maximum_touched,
    uintptr_t minimum_valid,
    uintptr_t maximum_valid,
    uintptr_t) {
    const char* name = reinterpret_cast<const char*>(buffer_name);
    __android_log_print(
        ANDROID_LOG_ERROR,
        kTag,
        "MGC Halide access out of bounds name=%s dimension=%zu "
        "touched=[%zd,%zd] valid=[%zd,%zd] userContext=%p",
        name != nullptr ? name : "<null>",
        static_cast<size_t>(dimension),
        static_cast<ssize_t>(minimum_touched),
        static_cast<ssize_t>(maximum_touched),
        static_cast<ssize_t>(minimum_valid),
        static_cast<ssize_t>(maximum_valid),
        reinterpret_cast<void*>(user_context));
    return static_cast<uintptr_t>(0x5ef63f8);
}

extern "C" __attribute__((visibility("hidden"))) uintptr_t
photon_mgc_halide_error_5ef636c(
    uintptr_t user_context,
    uintptr_t buffer_name,
    uintptr_t actual_dimensions,
    uintptr_t expected_dimensions,
    uintptr_t,
    uintptr_t,
    uintptr_t,
    uintptr_t) {
    const char* name = reinterpret_cast<const char*>(buffer_name);
    __android_log_print(
        ANDROID_LOG_ERROR,
        kTag,
        "MGC Halide buffer dimension mismatch name=%s actual=%zu expected=%zu userContext=%p",
        name != nullptr ? name : "<null>",
        static_cast<size_t>(actual_dimensions),
        static_cast<size_t>(expected_dimensions),
        reinterpret_cast<void*>(user_context));
    return static_cast<uintptr_t>(0x5ef636c);
}

extern "C" __attribute__((visibility("hidden"))) uintptr_t
photon_mgc_halide_error_5ef6294(
    uintptr_t user_context,
    uintptr_t buffer_name,
    uintptr_t actual_type,
    uintptr_t expected_type,
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
    // The original helper ABI is (user_context, name, actual, expected).
    // It returns Halide's halide_error_code_bad_type (-3).
    return static_cast<uintptr_t>(static_cast<intptr_t>(-3));
}

}  // namespace photon::mgc_denoise
