// Per-request wall-clock attribution. AOT timings include its runtime callbacks;
// Thread creation/wait timings overlap kernel execution and must not be subtracted.
// RAISR reuses request-owned workers: thread_create measures pool growth and
// thread_join includes per-nest completion waits plus request-end worker joins.
#ifndef PHOTON_MGC_RAISR_TIMING_H
#define PHOTON_MGC_RAISR_TIMING_H

#include <chrono>
#include <cstdint>
#include <utility>

namespace photon_raisr {

inline int64_t TimingNowNs() {
    return std::chrono::duration_cast<std::chrono::nanoseconds>(
        std::chrono::steady_clock::now().time_since_epoch()).count();
}

struct Timing {
    int64_t band_allocation = 0;
    int64_t source_conversion = 0;
    int64_t chain = 0;
    int64_t output_write = 0;
    int64_t rgb_pack = 0;
    int64_t gray_replicate = 0;
    int64_t lanczos = 0;
    int64_t chroma = 0;
    int64_t rgb_resample = 0;
    int64_t polysharp_box = 0;
    int64_t polysharp_blur = 0;
    int64_t rgb_to_gray = 0;
    int64_t orientation = 0;
    int64_t hash = 0;
    int64_t upscale = 0;
    int64_t dog = 0;
    int64_t composite = 0;
    int64_t census = 0;
    int64_t polysharp = 0;
    int64_t thread_create = 0;
    int64_t thread_join = 0;
    int64_t processed_pixels = 0;
    int bands = 0;
    int parallel_calls = 0;
    int cpp_parallel_calls = 0;
    int workers_created = 0;

    int64_t AotNs() const {
        return rgb_to_gray + orientation + hash + upscale + dog + composite + census + polysharp;
    }
};

// Only the synchronous JNI caller owns the collector. Worker threads do not
// inherit it, so concurrent photos and other Halide pipelines cannot mix data.
inline thread_local Timing* active_timing = nullptr;

class ScopedTiming {
public:
    explicit ScopedTiming(int64_t Timing::* field)
        : destination_(active_timing ? &(active_timing->*field) : nullptr),
          start_(destination_ ? TimingNowNs() : 0) {}
    ~ScopedTiming() {
        if (destination_) *destination_ += TimingNowNs() - start_;
    }
    ScopedTiming(const ScopedTiming&) = delete;
    ScopedTiming& operator=(const ScopedTiming&) = delete;

private:
    int64_t* destination_;
    int64_t start_;
};

template <typename Function>
auto Measure(int64_t Timing::* field, Function&& function) {
    ScopedTiming timer(field);
    return std::forward<Function>(function)();
}

}  // namespace photon_raisr
#endif
