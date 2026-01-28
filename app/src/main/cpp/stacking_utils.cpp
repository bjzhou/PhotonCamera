#include "stacking_utils.h"
#include "common.h" // For LOG macros
#include "math_utils.h"
#include <algorithm>
#include <cstring>
#include <limits>

// Helper to access pixel with boundary check (clamp)
inline uint8_t getPixel(const GrayImage &img, int x, int y) {
  x = std::max(0, std::min(x, img.width - 1));
  y = std::max(0, std::min(y, img.height - 1));
  return img.data[y * img.width + x];
}

// Sub-pixel refinement using parabolic interpolation
inline float interpolateSubpixel(long long s0, long long s_minus,
                                 long long s_plus) {
  long long denom = (s_plus + s_minus - 2 * s0);
  if (denom <= 0)
    return 0.0f;
  return -0.5f * (float)(s_plus - s_minus) / (float)denom;
}

// Bilinear sampling for uint16_t data
inline float sampleBilinear(const std::vector<uint16_t> &data, int width,
                            int height, float x, float y) {
  int x0 = (int)std::floor(x);
  int y0 = (int)std::floor(y);
  int x1 = x0 + 1;
  int y1 = y0 + 1;

  float dx = x - (float)x0;
  float dy = y - (float)y0;

  auto getVal = [&](int ix, int iy) {
    ix = std::max(0, std::min(ix, width - 1));
    iy = std::max(0, std::min(iy, height - 1));
    return (float)data[iy * width + ix];
  };

  float v00 = getVal(x0, y0);
  float v10 = getVal(x1, y0);
  float v01 = getVal(x0, y1);
  float v11 = getVal(x1, y1);

  return (1.0f - dx) * (1.0f - dy) * v00 + dx * (1.0f - dy) * v10 +
         (1.0f - dx) * dy * v01 + dx * dy * v11;
}

// Compute local variance in a 3x3 window
inline float computeLocalVariance(const std::vector<uint16_t> &data, int width,
                                  int height, int x, int y) {
  float sum = 0;
  float sumSq = 0;
  int count = 0;
  for (int dy = -1; dy <= 1; ++dy) {
    for (int dx = -1; dx <= 1; ++dx) {
      int nx = std::max(0, std::min(x + dx, width - 1));
      int ny = std::max(0, std::min(y + dy, height - 1));
      float val = (float)data[ny * width + nx];
      sum += val;
      sumSq += val * val;
      count++;
    }
  }
  float mean = sum / (float)count;
  return (sumSq / (float)count) - (mean * mean);
}

std::vector<GrayImage> buildPyramid(const uint8_t *src, int width, int height,
                                    int levels) {
  std::vector<GrayImage> pyramid;

  // Level 0 is the original image (or copy of it)
  GrayImage level0;
  level0.width = width;
  level0.height = height;
  level0.data.assign(src, src + width * height);
  pyramid.push_back(std::move(level0));

  for (int i = 1; i < levels; ++i) {
    const GrayImage &prev = pyramid.back();
    GrayImage next;
    next.width = prev.width / 2;
    next.height = prev.height / 2;
    next.data.resize(next.width * next.height);

    for (int y = 0; y < next.height; ++y) {
      for (int x = 0; x < next.width; ++x) {
        // Simple 2x2 average (Box filter)
        int sum = prev.data[(2 * y) * prev.width + (2 * x)] +
                  prev.data[(2 * y) * prev.width + (2 * x + 1)] +
                  prev.data[(2 * y + 1) * prev.width + (2 * x)] +
                  prev.data[(2 * y + 1) * prev.width + (2 * x + 1)];
        next.data[y * next.width + x] = static_cast<uint8_t>(sum / 4);
      }
    }
    pyramid.push_back(std::move(next));
  }
  return pyramid;
}

// Compute Sum of Absolute Differences (SAD)
long long computeSAD(const GrayImage &ref, const GrayImage &target, int dx,
                     int dy) {
  long long sad = 0;
  int margin = 2;
  int startX = std::max(margin, -dx + margin);
  int startY = std::max(margin, -dy + margin);
  int endX = std::min(ref.width - margin, target.width - dx - margin);
  int endY = std::min(ref.height - margin, target.height - dy - margin);

  if (startX >= endX || startY >= endY)
    return std::numeric_limits<long long>::max();

  int samples = 0;
  for (int y = startY; y < endY; ++y) {
    const uint8_t *pRef = &ref.data[y * ref.width + startX];
    const uint8_t *pTgt = &target.data[(y + dy) * target.width + (startX + dx)];
    for (int x = startX; x < endX; ++x) {
      sad += std::abs((int)(*pRef) - (int)(*pTgt));
      pRef++;
      pTgt++;
    }
    samples += (endX - startX);
  }

  return samples > 0 ? (sad * 1000) / samples
                     : std::numeric_limits<long long>::max();
}

// Compute Sum of Absolute Differences (SAD) for a block
long long computeBlockSAD(const GrayImage &ref, const GrayImage &target,
                          int refX, int refY, int w, int h, int dx, int dy) {
  long long sad = 0;
  int count = 0;
  for (int y = 0; y < h; ++y) {
    int rY = refY + y;
    int tY = rY + dy;
    if (rY < 0 || rY >= ref.height || tY < 0 || tY >= target.height)
      continue;

    const uint8_t *pRef = &ref.data[rY * ref.width + refX];
    const uint8_t *pTgt = &target.data[tY * target.width + refX + dx];

    for (int x = 0; x < w; ++x) {
      int rX = refX + x;
      int tX = rX + dx;
      if (rX < 0 || rX >= ref.width || tX < 0 || tX >= target.width)
        continue;
      sad += std::abs((int)pRef[x] - (int)pTgt[x]);
      count++;
    }
  }
  return count > 0 ? (sad * 256) / count
                   : std::numeric_limits<long long>::max();
}

TileAlignment computeTileAlignment(const std::vector<GrayImage> &refPyramid,
                                   const std::vector<GrayImage> &targetPyramid,
                                   int maxShift) {
  const int tileSize = 32; // Use 32x32 tiles
  int width = refPyramid[0].width;
  int height = refPyramid[0].height;
  int gridW = (width + tileSize - 1) / tileSize;
  int gridH = (height + tileSize - 1) / tileSize;

  TileAlignment alignment;
  alignment.tileWidth = tileSize;
  alignment.tileHeight = tileSize;
  alignment.gridW = gridW;
  alignment.gridH = gridH;
  alignment.offsets.resize(gridW * gridH, {0, 0});

  // 1. Compute a global offset first as a base
  Point globalOffset = {0, 0};
  int currentDx = 0;
  int currentDy = 0;

  for (int i = refPyramid.size() - 1; i >= 0; --i) {
    currentDx *= 2;
    currentDy *= 2;
    const GrayImage &ref = refPyramid[i];
    const GrayImage &tgt = targetPyramid[i];
    int searchRadius = (i == (int)refPyramid.size() - 1) ? (maxShift >> i) : 2;

    long long bestSAD = std::numeric_limits<long long>::max();
    for (int dy = -searchRadius; dy <= searchRadius; ++dy) {
      for (int dx = -searchRadius; dx <= searchRadius; ++dx) {
        long long sad = computeSAD(ref, tgt, currentDx + dx, currentDy + dy);
        if (sad < bestSAD) {
          bestSAD = sad;
          globalOffset = {(float)(currentDx + dx), (float)(currentDy + dy)};
        }
      }
    }
    currentDx = (int)globalOffset.x;
    currentDy = (int)globalOffset.y;
  }

  // 2. Refine per tile using the global offset as a starting point
  // We refine at level 1 (1/2 size) for better speed/robustness balance
  const GrayImage &refL1 = refPyramid[1];
  const GrayImage &tgtL1 = targetPyramid[1];
  int tSizeL1 = tileSize / 2;
  int gDxL1 = globalOffset.x / 2;
  int gDyL1 = globalOffset.y / 2;

  for (int ty = 0; ty < gridH; ++ty) {
    for (int tx = 0; tx < gridW; ++tx) {
      int refX = tx * tSizeL1;
      int refY = ty * tSizeL1;

      long long bestSAD = std::numeric_limits<long long>::max();
      Point bestOffset = {globalOffset.x, globalOffset.y};

      // Search range around global offset at level 1
      for (int dy = -2; dy <= 2; ++dy) {
        for (int dx = -2; dx <= 2; ++dx) {
          long long sad = computeBlockSAD(refL1, tgtL1, refX, refY, tSizeL1,
                                          tSizeL1, gDxL1 + dx, gDyL1 + dy);
          if (sad < bestSAD) {
            bestSAD = sad;
            bestOffset = {(float)((gDxL1 + dx) * 2), (float)((gDyL1 + dy) * 2)};
          }
        }
      }

      // 3. Sub-pixel refinement at Level 0
      const GrayImage &refL0 = refPyramid[0];
      const GrayImage &tgtL0 = targetPyramid[0];
      int bX = (int)bestOffset.x;
      int bY = (int)bestOffset.y;
      int rX = tx * tileSize;
      int rY = ty * tileSize;

      long long s0 =
          computeBlockSAD(refL0, tgtL0, rX, rY, tileSize, tileSize, bX, bY);
      long long sx_m =
          computeBlockSAD(refL0, tgtL0, rX, rY, tileSize, tileSize, bX - 1, bY);
      long long sx_p =
          computeBlockSAD(refL0, tgtL0, rX, rY, tileSize, tileSize, bX + 1, bY);
      long long sy_m =
          computeBlockSAD(refL0, tgtL0, rX, rY, tileSize, tileSize, bX, bY - 1);
      long long sy_p =
          computeBlockSAD(refL0, tgtL0, rX, rY, tileSize, tileSize, bX, bY + 1);

      float subDx = interpolateSubpixel(s0, sx_m, sx_p);
      float subDy = interpolateSubpixel(s0, sy_m, sy_p);

      alignment.offsets[ty * gridW + tx] = {(float)bX + subDx,
                                            (float)bY + subDy};
    }
  }

  return alignment;
}

// --- ImageStacker Implementation ---

ImageStacker::ImageStacker(int width, int height)
    : width(width), height(height), isFirstFrame(true) {
  int size = width * height;
  int uvWidth = width / 2;
  int uvHeight = height / 2;
  int uvSize = uvWidth * uvHeight;

  accumY.assign(size, 0);
  accumU.assign(uvSize, 0);
  accumV.assign(uvSize, 0);

  weightY.assign(size, 0);
  weightU.assign(uvSize, 0);
  weightV.assign(uvSize, 0);

  referenceY.resize(size);
  referenceU.resize(uvSize);
  referenceV.resize(uvSize);
}

inline int calculateWeight(int diff, float variance) {
  // Advanced de-ghosting based on noise statistics
  // sigma^2 = variance + base_noise
  float sigma = std::sqrt(variance + 1600.0f); // Base noise ~40 in 16-bit
  float threshold = 3.0f * sigma;

  if (diff < (int)threshold)
    return 256;
  if (diff > (int)(threshold * 4.0f))
    return 0;

  return 256 * (int)(threshold * 4.0f - (float)diff) / (int)(threshold * 3.0f);
}

void ImageStacker::addFrame(const uint8_t *yData, const uint8_t *uData,
                            const uint8_t *vData, int yRowStride,
                            int uvRowStride, int uvPixelStride, int format) {
  frameCount++;

  if (!yData || !uData || !vData) {
    LOGE("ImageStacker::addFrame: Received NULL buffer(s)");
    return;
  }

  bool isP010 = (format == 0x36);
  int yPixelStride = isP010 ? 2 : 1;

  // Convert current frame to internal 16-bit and 8-bit for alignment
  std::vector<uint16_t> currentY(width * height);
  GrayImage image8bit;
  image8bit.width = width;
  image8bit.height = height;
  image8bit.data.resize(width * height);

  for (int r = 0; r < height; ++r) {
    for (int c = 0; c < width; ++c) {
      uint16_t val;
      if (isP010) {
        val = readValue<uint16_t>(yData + r * yRowStride + c * yPixelStride,
                                  false);
      } else {
        val = static_cast<uint16_t>(yData[r * yRowStride + c]) << 8;
      }
      currentY[r * width + c] = val;
      image8bit.data[r * width + c] = static_cast<uint8_t>(val >> 8);
    }
  }

  if (isFirstFrame) {
    referenceY = currentY;
    // Store U, V for reference as well
    int uvWidth = width / 2;
    int uvHeight = height / 2;
    referenceU.resize(uvWidth * uvHeight);
    referenceV.resize(uvWidth * uvHeight);

    for (int r = 0; r < uvHeight; ++r) {
      for (int c = 0; c < uvWidth; ++c) {
        if (isP010) {
          referenceU[r * uvWidth + c] = readValue<uint16_t>(
              uData + r * uvRowStride + c * uvPixelStride, false);
          referenceV[r * uvWidth + c] = readValue<uint16_t>(
              vData + r * uvRowStride + c * uvPixelStride, false);
        } else {
          referenceU[r * uvWidth + c] =
              static_cast<uint16_t>(uData[r * uvRowStride + c * uvPixelStride])
              << 8;
          referenceV[r * uvWidth + c] =
              static_cast<uint16_t>(vData[r * uvRowStride + c * uvPixelStride])
              << 8;
        }
      }
    }

    referencePyramid = buildPyramid(image8bit.data.data(), width, height, 4);

    // First frame has full weight (exactly copying to accum/weight)
    for (int i = 0; i < (int)accumY.size(); ++i) {
      accumY[i] = (int32_t)referenceY[i] * 256;
      weightY[i] = 256;
    }
    for (int i = 0; i < (int)accumU.size(); ++i) {
      accumU[i] = (int32_t)referenceU[i] * 256;
      weightU[i] = 256;
      accumV[i] = (int32_t)referenceV[i] * 256;
      weightV[i] = 256;
    }
    isFirstFrame = false;
    LOGD("ImageStacker::addFrame: First frame initialized");
    return;
  }

  // Align current frame against reference
  std::vector<GrayImage> currentPyramid =
      buildPyramid(image8bit.data.data(), width, height, 4);
  TileAlignment alignment =
      computeTileAlignment(referencePyramid, currentPyramid, 64);

  // Merge with Robust Weighting
  // Y Plane
  for (int y = 0; y < height; ++y) {
    for (int x = 0; x < width; ++x) {
      Point offset = alignment.getOffset(x, y);
      float tx = (float)x + offset.x;
      float ty = (float)y + offset.y;

      int destIdx = y * width + x;
      if (tx >= 0 && tx < (float)width && ty >= 0 && ty < (float)height &&
          destIdx < (int)accumY.size()) {
        uint16_t targetVal =
            (uint16_t)sampleBilinear(currentY, width, height, tx, ty);
        uint16_t refVal = (uint16_t)(accumY[destIdx] / weightY[destIdx]);

        float variance = computeLocalVariance(referenceY, width, height, x, y);
        int diff = std::abs((int)targetVal - (int)refVal);
        int weight = calculateWeight(diff, variance);

        accumY[destIdx] += (int32_t)targetVal * weight;
        weightY[destIdx] += weight;

        // Progressive reference update (recursive filter)
        // Only update if weight is high (no motion) to avoid ghosting in
        // reference
        if (weight > 128) {
          referenceY[destIdx] =
              (uint16_t)((referenceY[destIdx] * 7 + targetVal) / 8);
        }
      }
    }
  }

  // Update reference pyramid for next frame alignment
  GrayImage ref8bit;
  ref8bit.width = width;
  ref8bit.height = height;
  ref8bit.data.resize(width * height);
  for (int i = 0; i < width * height; ++i) {
    ref8bit.data[i] = static_cast<uint8_t>(referenceY[i] >> 8);
  }
  referencePyramid = buildPyramid(ref8bit.data.data(), width, height, 4);

  // UV Planes (subsampled)
  int uvWidth = width / 2;
  int uvHeight = height / 2;
  int uvSize = uvWidth * uvHeight;

  for (int y = 0; y < uvHeight; ++y) {
    for (int x = 0; x < uvWidth; ++x) {
      Point offset = alignment.getOffset(x * 2, y * 2);
      float tx = (float)x + offset.x / 2.0f;
      float ty = (float)y + offset.y / 2.0f;

      int destIdx = y * uvWidth + x;
      if (tx >= 0 && tx < (float)uvWidth && ty >= 0 && ty < (float)uvHeight &&
          destIdx < uvSize) {

        // Use a temporary vector or similar for sampling U/V
        // For efficiency, compute integer indices and weights if bilinearly
        // sampling U/V But let's reuse sampleBilinear logic if we had
        // currentU/V. Currently we don't have currentU/V in a vector, we read
        // from raw. Let's create them for easier sampling.

        auto sampleRawUV = [&](const uint8_t *data, float sx, float sy) {
          int x0 = (int)std::floor(sx);
          int y0 = (int)std::floor(sy);
          int x1 = std::min(x0 + 1, uvWidth - 1);
          int y1 = std::min(y0 + 1, uvHeight - 1);
          float dx = sx - (float)x0;
          float dy = sy - (float)y0;

          auto getRawVal = [&](int ix, int iy) {
            if (isP010) {
              return (float)readValue<uint16_t>(
                  data + iy * uvRowStride + ix * uvPixelStride, false);
            } else {
              return (float)data[iy * uvRowStride + ix * uvPixelStride] *
                     256.0f;
            }
          };

          float v00 = getRawVal(x0, y0);
          float v10 = getRawVal(x1, y0);
          float v01 = getRawVal(x0, y1);
          float v11 = getRawVal(x1, y1);
          return (1.0f - dx) * (1.0f - dy) * v00 + dx * (1.0f - dy) * v10 +
                 (1.0f - dx) * dy * v01 + dx * dy * v11;
        };

        uint16_t targetU = (uint16_t)sampleRawUV(uData, tx, ty);
        uint16_t targetV = (uint16_t)sampleRawUV(vData, tx, ty);

        uint16_t refU = (uint16_t)(accumU[destIdx] / weightU[destIdx]);
        uint16_t refV = (uint16_t)(accumV[destIdx] / weightV[destIdx]);

        int diffU = std::abs((int)targetU - (int)refU);
        int diffV = std::abs((int)targetV - (int)refV);

        // Variance for UV is usually linked to Y. Let's use simplified
        // variance.
        int weight = calculateWeight(std::max(diffU, diffV),
                                     40000.0f); // Higher base for UV

        accumU[destIdx] += (int32_t)targetU * weight;
        weightU[destIdx] += weight;
        accumV[destIdx] += (int32_t)targetV * weight;
        weightV[destIdx] += weight;

        if (weight > 128) {
          referenceU[destIdx] =
              (uint16_t)((referenceU[destIdx] * 7 + targetU) / 8);
          referenceV[destIdx] =
              (uint16_t)((referenceV[destIdx] * 7 + targetV) / 8);
        }
      }
    }
  }
}

#include "yuv_utils.h"

#include "jxl_utils.h"

void ImageStacker::writeResult(uint32_t *outBitmap, int outWidth, int outHeight,
                               int rotation, int targetWR, int targetHR,
                               const char *outputPath, int *outFinalW,
                               int *outFinalH) {
  int ySize = width * height;
  int uvWidth = width / 2;
  int uvHeight = height / 2;
  int uvSize = uvWidth * uvHeight;

  // 1. Calculate averaged unrotated 16-bit YUV
  std::vector<uint16_t> iY(ySize);
  std::vector<uint16_t> iU(uvSize);
  std::vector<uint16_t> iV(uvSize);

  for (int i = 0; i < ySize; ++i) {
    iY[i] =
        (weightY[i] > 0) ? static_cast<uint16_t>(accumY[i] / weightY[i]) : 0;
  }
  for (int i = 0; i < uvSize; ++i) {
    iU[i] = (weightU[i] > 0) ? static_cast<uint16_t>(accumU[i] / weightU[i])
                             : 32768;
    iV[i] = (weightV[i] > 0) ? static_cast<uint16_t>(accumV[i] / weightV[i])
                             : 32768;
  }

  // 2. Rotate
  int rotatedWidth = (rotation == 90 || rotation == 270) ? height : width;
  int rotatedHeight = (rotation == 90 || rotation == 270) ? width : height;
  int rotatedUvWidth = rotatedWidth / 2;
  int rotatedUvHeight = rotatedHeight / 2;

  std::vector<uint16_t> rY(rotatedWidth * rotatedHeight);
  std::vector<uint16_t> rU(rotatedUvWidth * rotatedUvHeight);
  std::vector<uint16_t> rV(rotatedUvWidth * rotatedUvHeight);

  RotatePlane16(iY.data(), rY.data(), width, height, rotation);
  RotatePlane16(iU.data(), rU.data(), uvWidth, uvHeight, rotation);
  RotatePlane16(iV.data(), rV.data(), uvWidth, uvHeight, rotation);

  // 3. Cropping Calculation (same as processAndSaveYuv)
  bool currentIsLandscape = (rotatedWidth >= rotatedHeight);
  int tw, th;
  if (currentIsLandscape) {
    tw = (targetWR >= targetHR) ? targetWR : targetHR;
    th = (targetWR >= targetHR) ? targetHR : targetWR;
  } else {
    tw = (targetWR >= targetHR) ? targetHR : targetWR;
    th = (targetWR >= targetHR) ? targetWR : targetHR;
  }

  int finalWidth, finalHeight;
  if ((long long)rotatedWidth * th > (long long)tw * rotatedHeight) {
    finalHeight = (rotatedHeight / 2) * 2;
    finalWidth = (int)(((long long)finalHeight * tw / th) / 2) * 2;
  } else {
    finalWidth = (rotatedWidth / 2) * 2;
    finalHeight = (int)(((long long)finalWidth * th / tw) / 2) * 2;
  }

  if (finalWidth > rotatedWidth)
    finalWidth = (rotatedWidth / 2) * 2;
  if (finalHeight > rotatedHeight)
    finalHeight = (rotatedHeight / 2) * 2;

  if (outFinalW)
    *outFinalW = finalWidth;
  if (outFinalH)
    *outFinalH = finalHeight;

  int cropX = ((rotatedWidth - finalWidth) / 4) * 2;
  int cropY = ((rotatedHeight - finalHeight) / 4) * 2;

  // 4. Convert and write to outBitmap and optionally to JXL (FP16)
  std::vector<uint16_t> fp16Pixels;
  if (outputPath) {
    fp16Pixels.resize(finalWidth * finalHeight * 4);
  }

  // Ensure we don't write out of the provided bitmap bounds
  int drawWidth = std::min(finalWidth, outWidth);
  int drawHeight = std::min(finalHeight, outHeight);

  for (int y = 0; y < drawHeight; y++) {
    for (int x = 0; x < drawWidth; x++) {
      int srcY = (cropY + y) * rotatedWidth + (cropX + x);
      int srcUV = ((cropY + y) / 2) * (rotatedWidth / 2) + ((cropX + x) / 2);

      float Y_val = (float)rY[srcY] / 65535.0f;
      float U_val = (static_cast<float>(rU[srcUV]) - 32768.0f) / 65535.0f;
      float V_val = (static_cast<float>(rV[srcUV]) - 32768.0f) / 65535.0f;

      // YUV to RGB (Rec. 601)
      float R = Y_val + 1.402f * V_val;
      float G = Y_val - 0.344136f * U_val - 0.714136f * V_val;
      float B = Y_val + 1.772f * U_val;

      // --- Preview: 8-bit ---
      if (outBitmap) {
        uint32_t r8 =
            static_cast<uint32_t>(std::max(0.0f, std::min(1.0f, R)) * 255.0f);
        uint32_t g8 =
            static_cast<uint32_t>(std::max(0.0f, std::min(1.0f, G)) * 255.0f);
        uint32_t b8 =
            static_cast<uint32_t>(std::max(0.0f, std::min(1.0f, B)) * 255.0f);
        outBitmap[y * outWidth + x] =
            (0xFF << 24) | (b8 << 16) | (g8 << 8) | r8;
      }

      // --- Storage: 16-bit JXL ---
      if (outputPath) {
        int idx16 = (y * finalWidth + x) * 4;
        fp16Pixels[idx16 + 0] =
            static_cast<uint16_t>(std::max(0.0f, std::min(1.0f, R)) * 65535.0f);
        fp16Pixels[idx16 + 1] =
            static_cast<uint16_t>(std::max(0.0f, std::min(1.0f, G)) * 65535.0f);
        fp16Pixels[idx16 + 2] =
            static_cast<uint16_t>(std::max(0.0f, std::min(1.0f, B)) * 65535.0f);
        fp16Pixels[idx16 + 3] = 65535; // Alpha
      }
    }
  }

  if (outputPath) {
    saveJxl(fp16Pixels.data(), finalWidth, finalHeight, JXL_TYPE_UINT16,
            outputPath);
  }
}
