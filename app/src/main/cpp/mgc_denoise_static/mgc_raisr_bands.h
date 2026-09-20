// Horizontal-band runner for the lifted MGC V25 RAISR chain.
//
// Input is float RGBA, output is directly RGBA8: together 32 bytes per source
// pixel. This runner distributes the image into horizontal bands
// bounded by the requested core capacity, feeds each band kBandHaloPx rows beyond its
// own core, and hands every finished core row to a sink. The on-device probe
// compares the complete haloed chain against full-frame output, including odd
// band origins (docs/research/mgc-raisr-output-upscale.md).
//
// `Source` must provide `void Fill(int top, int rows, float* destination)`,
// filling `rows` rows of `width` RGBA float pixels each; `Sink` must provide
// `void Write(int row, const uint8_t* pixels, int count)`, storing `count` RGBA8
// pixels at the given row of the 2x core.

#ifndef PHOTON_MGC_RAISR_BANDS_H
#define PHOTON_MGC_RAISR_BANDS_H

#include <algorithm>
#include <cstdint>
#include <new>
#include <vector>

#include "mgc_raisr_timing.h"
#include "mgc_raisr_executor.h"

namespace photon_raisr {

// Polysharp uses three iterations of a three-tap polynomial kernel, then halo
// masking and an eleven-tap Gaussian. Include the preceding RAISR/DOG/composite
// support as well; validate the complete chain against a full frame.
constexpr int kBandHaloPx = 16;
// SharpenDOG has a 4-output-pixel pyramid grid (two input pixels). A band
// cannot reset that phase when an evenly distributed core starts on an odd row.
constexpr int kBandAlignmentPx = 2;
constexpr int kBandAlignmentSlackPx = kBandAlignmentPx - 1;

// Floor for the requested band capacity. Distribute the core evenly across
// bands so a short remainder cannot produce an undersized AOT input. When more
// than one band is needed, each core has at least eight rows at this floor.
// A one-to-three-row tail with only the top halo would fail composite's
// image_fallback_ extent check even when all preceding bands were large enough.
constexpr int kMinimumBandCoreRows = 16;

// RGBA transfer-buffer budget for one band; stage-private scratch is additional.
constexpr int64_t kBandScratchBudgetBytes = 32 * 1024 * 1024;

// RGBA float input (16) plus 2x RGBA8 output (16), not a float output round trip.
constexpr int64_t kBandBytesPerSourcePixel = 32;

inline uint8_t ToU8(float value) {
    const float scaled = value * 255.0f + 0.5f;
    if (!(scaled > 0.0f)) {
        return 0;
    }
    return scaled >= 255.0f ? 255 : uint8_t(scaled);
}

extern "C" int photon_mgc_raisr_upscale_rgba(const float* input, int width, int height,
                                             float* output, float resample_rate);
extern "C" int photon_mgc_raisr_upscale_rgba8(const float* input, int width, int height,
    uint8_t* output, int core_left, int core_top, int core_width, int core_height,
    float resample_rate);

// Core rows one band may cover at this width without leaving the budget, never
// fewer than kMinimumBandCoreRows. At any real frame width the budget is the
// binding constraint; the floor only takes over past ~21.4k columns, where it
// still caps the buffers at width * 1568 bytes (16 core + 33 context rows).
inline int BandCoreRows(int width) {
    const int64_t rows = kBandScratchBudgetBytes / (int64_t(width) * kBandBytesPerSourcePixel);
    return int(std::max<int64_t>(kMinimumBandCoreRows,
                                 rows - 2 * kBandHaloPx - kBandAlignmentSlackPx));
}

template <typename Source, typename Sink>
int RunBands(const Source& source, const Sink& sink, int width, int height, int core_left,
             int core_top, int core_width, int core_height, int band_core_rows,
             float resample_rate) {
    if (width <= 0 || height <= 0 || core_width <= 0 || core_height <= 0 || core_left < 0 ||
        core_top < 0 || core_left + core_width > width || core_top + core_height > height) {
        return -1;
    }
    RequestExecutor execution_scope;
    const int rows_per_band = std::min(std::max(kMinimumBandCoreRows, band_core_rows), height);
    const int band_count = 1 + (core_height - 1) / rows_per_band;
    const int base_rows = core_height / band_count;
    const int extra_rows = core_height % band_count;
    std::vector<float> band;
    std::vector<uint8_t> result;
    try {
        ScopedTiming timer(&Timing::band_allocation);
        band.resize(size_t(width) *
                    size_t(rows_per_band + 2 * kBandHaloPx + kBandAlignmentSlackPx) * 4);
        result.resize(size_t(core_width) * rows_per_band * 16);
    } catch (const std::bad_alloc&) {
        return -2;
    }
    int top = core_top;
    for (int index = 0; index < band_count; ++index) {
        const int rows = base_rows + (index < extra_rows ? 1 : 0);
        const int band_top = std::max(0, top - kBandHaloPx) / kBandAlignmentPx *
            kBandAlignmentPx;
        const int band_bottom = std::min(height, top + rows + kBandHaloPx);
        const int band_height = band_bottom - band_top;
        if (active_timing) {
            ++active_timing->bands;
            active_timing->processed_pixels += int64_t(width) * band_height;
        }
        Measure(&Timing::source_conversion, [&] {
            source.Fill(band_top, band_height, band.data());
        });
        const int status = Measure(&Timing::chain, [&] {
            return photon_mgc_raisr_upscale_rgba8(band.data(), width, band_height,
                result.data(), core_left, top - band_top, core_width, rows, resample_rate);
        });
        if (status != 0) {
            return status;
        }
        ScopedTiming write_timer(&Timing::output_write);
        for (int row = 0; row < rows * 2; ++row) {
            const uint8_t* line = result.data() + size_t(row) * core_width * 8;
            sink.Write((top - core_top) * 2 + row, line, core_width * 2);
        }
        top += rows;
    }
    return 0;
}

}  // namespace photon_raisr

#endif  // PHOTON_MGC_RAISR_BANDS_H
