#ifndef STACKING_UTILS_H
#define STACKING_UTILS_H

#include <cmath>
#include <cstdint>
#include <vector>

// Represents a 2D point or offset
struct Point {
  float x;
  float y;
};

// Represents a 2D vector field for tile-based alignment
struct TileAlignment {
  int tileWidth;
  int tileHeight;
  int gridW;
  int gridH;
  std::vector<Point> offsets;

  Point getOffset(int x, int y) const {
    if (tileWidth <= 0 || tileHeight <= 0 || offsets.empty())
      return {0.0f, 0.0f};
    int tx = std::max(0, std::min(x / tileWidth, gridW - 1));
    int ty = std::max(0, std::min(y / tileHeight, gridH - 1));
    return offsets[ty * gridW + tx];
  }
};

// Represents a grayscale image buffer for processing
struct GrayImage {
  std::vector<uint8_t> data;
  int width;
  int height;
};

// Build a Gaussian pyramid (downsampled images)
std::vector<GrayImage> buildPyramid(const uint8_t *src, int width, int height,
                                    int levels);

// Compute tile-based alignment
TileAlignment computeTileAlignment(const std::vector<GrayImage> &refPyramid,
                                   const std::vector<GrayImage> &targetPyramid,
                                   int maxShift);

class ImageStacker {
public:
  ImageStacker(int width, int height);
  ~ImageStacker() = default;

  // Add a frame to the stack. The first frame becomes the reference.
  void addFrame(const uint8_t *yData, const uint8_t *uData,
                const uint8_t *vData, int yRowStride, int uvRowStride,
                int uvPixelStride, int format);

  // Write the result to an ARGB8888 bitmap buffer with rotation and cropping
  void writeResult(uint32_t *outBitmap, int outWidth, int outHeight,
                   int rotation, int targetWR, int targetHR,
                   const char *outputPath = nullptr, int *outFinalW = nullptr,
                   int *outFinalH = nullptr);

private:
  int width;
  int height;
  bool isFirstFrame;
  int frameCount = 0;

  // Reference frame data for de-ghosting and alignment
  std::vector<GrayImage> referencePyramid;
  std::vector<uint16_t> referenceY; // Store in 16-bit to match accum logic
  std::vector<uint16_t> referenceU;
  std::vector<uint16_t> referenceV;

  // Accumulation buffers (32-bit for sum)
  std::vector<int32_t> accumY;
  std::vector<int32_t> accumU;
  std::vector<int32_t> accumV;

  // Weight buffers (instead of simple counts)
  // We'll use 8-bit or 16-bit weights. Let's use 32-bit for accumulated weights
  // to avoid overflow.
  std::vector<int32_t> weightY;
  std::vector<int32_t> weightU;
  std::vector<int32_t> weightV;
};

#endif // STACKING_UTILS_H
