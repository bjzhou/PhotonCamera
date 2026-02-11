#ifndef STACKING_UTILS_H
#define STACKING_UTILS_H

#include <cmath>
#include <cstdint>
#include <vector>

// Represents a 2D point or offset
// Represents a 2D point or offset
struct Point {
  float x;
  float y;
};

// Represents a grayscale image buffer for processing
struct GrayImage {
  std::vector<uint8_t> data;
  int width;
  int height;
};

struct StagedYuvFrame {
  std::vector<uint16_t> y, u, v;
  GrayImage y8;
  int format;
  float score = 0.0f;
};

// Represents a 2D vector field for tile-based alignment
struct TileAlignment {
  int tileWidth;
  int tileHeight;
  int gridW;
  int gridH;
  std::vector<Point> offsets;
  // Motion Prior (Error Map): Stores local variance/instability of the flow
  std::vector<float> errorMap;

  Point getOffset(int x, int y) const {
    if (tileWidth <= 0 || tileHeight <= 0 || offsets.empty())
      return {0.0f, 0.0f};

    // Calculate grid coordinates in "tile center" space
    // Tile 0,0 center is at (tileWidth/2, tileHeight/2)
    float gx = (float)x / (float)tileWidth - 0.5f;
    float gy = (float)y / (float)tileHeight - 0.5f;

    int x0 = (int)std::floor(gx);
    int y0 = (int)std::floor(gy);
    int x1 = x0 + 1;
    int y1 = y0 + 1;

    float dx = gx - (float)x0;
    float dy = gy - (float)y0;

    auto getGridPoint = [&](int ix, int iy) {
      ix = std::max(0, std::min(ix, gridW - 1));
      iy = std::max(0, std::min(iy, gridH - 1));
      return offsets[iy * gridW + ix];
    };

    Point p00 = getGridPoint(x0, y0);
    Point p10 = getGridPoint(x1, y0);
    Point p01 = getGridPoint(x0, y1);
    Point p11 = getGridPoint(x1, y1);

    Point result;
    result.x = (1.0f - dx) * (1.0f - dy) * p00.x + dx * (1.0f - dy) * p10.x +
               (1.0f - dx) * dy * p01.x + dx * dy * p11.x;
    result.y = (1.0f - dx) * (1.0f - dy) * p00.y + dx * (1.0f - dy) * p10.y +
               (1.0f - dx) * dy * p01.y + dx * dy * p11.y;
    return result;
  }

  float getError(int x, int y) const {
    if (tileWidth <= 0 || tileHeight <= 0 || errorMap.empty())
      return 0.0f;

    // Nearest neighbor or bilinear? Nearest is enough for error map
    int gx = (int)((float)x / (float)tileWidth);
    int gy = (int)((float)y / (float)tileHeight);

    gx = std::max(0, std::min(gx, gridW - 1));
    gy = std::max(0, std::min(gy, gridH - 1));

    return errorMap[gy * gridW + gx];
  }
};

// Represents a grayscale image buffer for processing
// (Already moved above Point)

// Build a Gaussian pyramid (downsampled images)
std::vector<GrayImage> buildPyramid(const uint8_t *src, int width, int height,
                                    int levels);

// Compute tile-based alignment
TileAlignment computeTileAlignment(const std::vector<GrayImage> &refPyramid,
                                   const std::vector<GrayImage> &targetPyramid,
                                   int maxShift);

class ImageStacker {
public:
  ImageStacker(int width, int height, bool enableSuperRes = false);
  ~ImageStacker() = default;

  // Add a frame to the stack. The first frame becomes the reference.
  void addFrame(const uint8_t *yData, const uint8_t *uData,
                const uint8_t *vData, int yRowStride, int uvRowStride,
                int uvPixelStride, int format);

  // New methods for faster image closing
  void stageFrame(const uint8_t *yData, const uint8_t *uData,
                  const uint8_t *vData, int yRowStride, int uvRowStride,
                  int uvPixelStride, int format);
  void processFrame(int index);
  void clearStagedFrames() { stagedFrames.clear(); }

  // Write the result to an ARGB8888 bitmap buffer with rotation and cropping
  void writeResult(uint32_t *outBitmap, int outWidth, int outHeight,
                   int rotation, int targetWR, int targetHR,
                   const char *outputPath = nullptr, int *outFinalW = nullptr,
                   int *outFinalH = nullptr);

  // Getter for the current scale
  int getScale() const { return scale; }

private:
  int width;
  int height;
  int scale; // Scaling factor (1 for normal, 2 for Super Res)
  bool isFirstFrame;
  int frameCount = 0;

  // Staged frame data (for fast closing of image)
  std::vector<StagedYuvFrame> stagedFrames;

  // Reference frame data for de-ghosting and alignment
  // Reference is always kept at original resolution (scale=1)
  std::vector<GrayImage> referencePyramid;
  std::vector<uint16_t> referenceY;
  std::vector<uint16_t> referenceU;
  std::vector<uint16_t> referenceV;

  // Accumulation buffers (32-bit for sum)
  // Scaled size: (width*scale) * (height*scale)
  std::vector<int32_t> accumY;
  std::vector<int32_t> accumU;
  std::vector<int32_t> accumV;

  // Weight buffers
  std::vector<int32_t> weightY;
  std::vector<int32_t> weightU;
  std::vector<int32_t> weightV;
};

struct StagedRawFrame {
  std::vector<uint16_t> planes[4];
  GrayImage proxy;
  int cfaPattern;
  float score = 0.0f;
};

class RawStacker {
public:
  RawStacker(int width, int height, bool enableSuperRes = false);
  ~RawStacker() = default;

  // Add a raw frame to the stack
  // rawData: 16-bit single channel Bayer data
  // cfaPattern: 0=RGGB, 1=GRBG, 2=GBRG, 3=BGGR
  void addFrame(const uint16_t *rawData, int rowStride, int cfaPattern);

  // New methods for faster image closing
  void stageFrame(const uint16_t *rawData, int rowStride, int cfaPattern);
  void processFrame(int index);
  void clearStagedFrames() { stagedFrames.clear(); }

  // Process and return the stacked raw image
  // Returns a vector containing the stacked 16-bit Bayer data
  std::vector<uint16_t> process();

  int getScale() const { return scale; }

private:
  int width;
  int height;
  int scale;
  bool isFirstFrame;
  int frameCount = 0;
  float byteScale = 1.0f;

  // Staged data
  std::vector<StagedRawFrame> stagedFrames;

  // Reference pyramid for alignment (built from a downscaled grayscale version
  // of the raw data)
  std::vector<GrayImage> referencePyramid;

  // Accumulation buffers for 4 Bayer planes: R, Gr, Gb, B
  // Size of each is (width/2) * (height/2)
  std::vector<uint16_t> referencePlanes[4];
  std::vector<int32_t> accum[4];
  std::vector<int32_t> weight[4];

  int mCfaPattern = 0;

  // Helper to get plane index for a pixel (x,y) based on CFA pattern
  int getPlaneIndex(int x, int y, int cfaPattern) const;
};

#endif // STACKING_UTILS_H
