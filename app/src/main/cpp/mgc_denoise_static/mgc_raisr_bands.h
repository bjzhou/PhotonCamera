// Horizontal-band runner for the lifted MGC V25 RAISR chain.
//
// The chain upscales in place, so a single call needs one buffer holding the
// input image and its 2x output: 64 bytes per source pixel, i.e. 800 MB for a
// 12 MP frame. This runner instead distributes the image into horizontal bands
// bounded by the requested core capacity, feeds each band kBandHaloPx rows beyond its
// own core, and hands every finished core row to a sink. The on-device probe
// measured the haloed crop as bit-identical to the full-frame result from two
// rows of halo on (docs/research/mgc-raisr-output-upscale.md), so banding only
// changes the peak allocation.
//
// `Source` must provide `void Fill(int top, int rows, float* destination)`,
// filling `rows` rows of `width` RGBA float pixels each; `Sink` must provide
// `void Write(int row, const float* pixels, int count)`, storing `count` RGBA
// float pixels at the given row of the 2x core.

#ifndef PHOTON_MGC_RAISR_BANDS_H
#define PHOTON_MGC_RAISR_BANDS_H

#include <algorithm>
#include <cstdint>
#include <new>
#include <vector>

namespace photon_raisr {

// Rows of context a band needs beyond its own core.
constexpr int kBandHaloPx = 4;

// Floor for the requested band capacity. Distribute the core evenly across
// bands so a short remainder cannot produce an undersized AOT input. When more
// than one band is needed, each core has at least eight rows at this floor.
// A one-to-three-row tail with only the top halo would fail composite's
// image_fallback_ extent check even when all preceding bands were large enough.
constexpr int kMinimumBandCoreRows = 16;

// Peak scratch one band may occupy.
constexpr int64_t kBandScratchBudgetBytes = 32 * 1024 * 1024;

// Bytes one source pixel occupies across the band buffer: the chain reads RGBA
// float (16) and writes the 2x RGBA float image (64).
constexpr int64_t kBandBytesPerSourcePixel = 64;

inline uint8_t ToU8(float value) {
    const float scaled = value * 255.0f + 0.5f;
    if (!(scaled > 0.0f)) {
        return 0;
    }
    return scaled >= 255.0f ? 255 : uint8_t(scaled);
}

extern "C" int photon_mgc_raisr_upscale_rgba(const float* input, int width, int height,
                                             float* output);

// Core rows one band may cover at this width without leaving the budget, never
// fewer than kMinimumBandCoreRows. At any real frame width the budget is the
// binding constraint; the floor only takes over past ~21k columns, where it
// still caps a band at width * 1536 bytes.
inline int BandCoreRows(int width) {
    const int64_t rows = kBandScratchBudgetBytes / (int64_t(width) * kBandBytesPerSourcePixel);
    return int(std::max<int64_t>(kMinimumBandCoreRows, rows - 2 * kBandHaloPx));
}

template <typename Source, typename Sink>
int RunBands(const Source& source, const Sink& sink, int width, int height, int core_left,
             int core_top, int core_width, int core_height, int band_core_rows) {
    if (width <= 0 || height <= 0 || core_width <= 0 || core_height <= 0 || core_left < 0 ||
        core_top < 0 || core_left + core_width > width || core_top + core_height > height) {
        return -1;
    }
    const int rows_per_band = std::min(std::max(kMinimumBandCoreRows, band_core_rows), height);
    const int band_count = 1 + (core_height - 1) / rows_per_band;
    const int base_rows = core_height / band_count;
    const int extra_rows = core_height % band_count;
    const int out_width = width * 2;
    std::vector<float> band;
    try {
        band.resize(size_t(width) * size_t(rows_per_band + 2 * kBandHaloPx) * 16);
    } catch (const std::bad_alloc&) {
        return -2;
    }
    int top = core_top;
    for (int index = 0; index < band_count; ++index) {
        const int rows = base_rows + (index < extra_rows ? 1 : 0);
        const int band_top = std::max(0, top - kBandHaloPx);
        const int band_bottom = std::min(height, top + rows + kBandHaloPx);
        const int band_height = band_bottom - band_top;
        source.Fill(band_top, band_height, band.data());
        // The chain builds all of its UInt8 planes from the input before it
        // writes the first output pixel, so one buffer can carry both.
        const int status =
            photon_mgc_raisr_upscale_rgba(band.data(), width, band_height, band.data());
        if (status != 0) {
            return status;
        }
        for (int row = 0; row < rows * 2; ++row) {
            const float* line =
                band.data() +
                (size_t(row + (top - band_top) * 2) * out_width + size_t(core_left) * 2) * 4;
            sink.Write((top - core_top) * 2 + row, line, core_width * 2);
        }
        top += rows;
    }
    return 0;
}

}  // namespace photon_raisr

#endif  // PHOTON_MGC_RAISR_BANDS_H
