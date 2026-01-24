#include "yuv_utils.h"

void RotatePlane16(const uint16_t *src, uint16_t *dst, int width, int height,
                   int rotation) {
  if (rotation == 90) {
    for (int y = 0; y < height; y++) {
      for (int x = 0; x < width; x++) {
        dst[x * height + (height - 1 - y)] = src[y * width + x];
      }
    }
  } else if (rotation == 180) {
    for (int y = 0; y < height; y++) {
      for (int x = 0; x < width; x++) {
        dst[(height - 1 - y) * width + (width - 1 - x)] = src[y * width + x];
      }
    }
  } else if (rotation == 270) {
    for (int y = 0; y < height; y++) {
      for (int x = 0; x < width; x++) {
        dst[(width - 1 - x) * height + y] = src[y * width + x];
      }
    }
  } else { // 0 or unsupported
    for (int i = 0; i < width * height; i++) {
      dst[i] = src[i];
    }
  }
}
