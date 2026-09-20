#pragma once

#include <cstddef>
#include <cstdint>

namespace photon {

// Input starts at the first pixel, width is a multiple of four, and rowStride
// includes any source padding. Destination is separate, contiguous uint16 data.
// The caller validates geometry and buffer lengths before entering this kernel.
void UnpackRaw10(const uint8_t *source, uint16_t *destination, size_t width,
                 size_t height, size_t rowStride);

}  // namespace photon
