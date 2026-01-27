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
          globalOffset = {currentDx + dx, currentDy + dy};
        }
      }
    }
    currentDx = globalOffset.x;
    currentDy = globalOffset.y;
  }
  LOGD("Frame global alignment: %d, %d", globalOffset.x, globalOffset.y);

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
            bestOffset = {(gDxL1 + dx) * 2, (gDyL1 + dy) * 2};
          }
        }
      }
      alignment.offsets[ty * gridW + tx] = bestOffset;
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

inline int calculateWeight(int diff) {
  // Simple de-ghosting weight logic
  // If diff is small (noise), weight is high.
  // if diff is large (motion), weight is small.
  // Using a threshold-based ramp.
  const int threshold1 = 2000; // ~8 in 0-255 scale
  const int threshold2 = 8000; // ~31 in 0-255 scale
  if (diff < threshold1)
    return 256;
  if (diff > threshold2)
    return 0;
  return 256 * (threshold2 - diff) / (threshold2 - threshold1);
}

void ImageStacker::addFrame(const uint8_t *yData, const uint8_t *uData,
                            const uint8_t *vData, int yRowStride,
                            int uvRowStride, int uvPixelStride, int format) {
  frameCount++;
  LOGD("ImageStacker::addFrame #%d starting (w=%d, h=%d, isP010=%d)",
       frameCount, width, height, (format == 0x36));

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
  LOGD("ImageStacker::addFrame: Alignment completed, merging planes");

  // Merge with Robust Weighting
  // Y Plane
  for (int y = 0; y < height; ++y) {
    for (int x = 0; x < width; ++x) {
      Point offset = alignment.getOffset(x, y);
      int tx = x + offset.x;
      int ty = y + offset.y;

      int destIdx = y * width + x;
      if (tx >= 0 && tx < width && ty >= 0 && ty < height &&
          destIdx < (int)accumY.size()) {
        uint16_t targetVal = currentY[ty * width + tx];
        uint16_t refVal = referenceY[destIdx];
        int diff = std::abs((int)targetVal - (int)refVal);
        int weight = calculateWeight(diff);

        accumY[destIdx] += (int32_t)targetVal * weight;
        weightY[destIdx] += weight;
      }
    }
  }

  // UV Planes (subsampled)
  int uvWidth = width / 2;
  int uvHeight = height / 2;
  int uvSize = uvWidth * uvHeight;

  for (int y = 0; y < uvHeight; ++y) {
    for (int x = 0; x < uvWidth; ++x) {
      Point offset = alignment.getOffset(x * 2, y * 2);
      int tx = x + offset.x / 2;
      int ty = y + offset.y / 2;

      int destIdx = y * uvWidth + x;
      if (tx >= 0 && tx < uvWidth && ty >= 0 && ty < uvHeight &&
          destIdx < uvSize) {
        uint16_t targetU, targetV;
        if (isP010) {
          targetU = readValue<uint16_t>(
              uData + ty * uvRowStride + tx * uvPixelStride, false);
          targetV = readValue<uint16_t>(
              vData + ty * uvRowStride + tx * uvPixelStride, false);
        } else {
          targetU = static_cast<uint16_t>(
                        uData[ty * uvRowStride + tx * uvPixelStride])
                    << 8;
          targetV = static_cast<uint16_t>(
                        vData[ty * uvRowStride + tx * uvPixelStride])
                    << 8;
        }

        uint16_t refU = referenceU[y * uvWidth + x];
        uint16_t refV = referenceV[y * uvWidth + x];

        // Use Y weight or compute independent weight?
        // For simplicity, let's use a weight based on UV difference or just
        // reuse Y weight from nearby. Actually, UV de-ghosting is often linked
        // to Y. Let's compute a simple UV weight.
        int diffU = std::abs((int)targetU - (int)refU);
        int diffV = std::abs((int)targetV - (int)refV);
        int weight = calculateWeight(std::max(diffU, diffV));

        // Note: we could also use the weight from the corresponding Y pixel to
        // be more robust.

        accumU[y * uvWidth + x] += (int32_t)targetU * weight;
        weightU[y * uvWidth + x] += weight;
        accumV[y * uvWidth + x] += (int32_t)targetV * weight;
        weightV[y * uvWidth + x] += weight;
      }
    }
  }
}

#include "yuv_utils.h"

#include "jxl_utils.h"

void ImageStacker::writeResult(uint32_t *outBitmap, int rotation, int targetWR,
                               int targetHR, const char *outputPath,
                               int *outFinalW, int *outFinalH) {
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

  for (int y = 0; y < finalHeight; y++) {
    for (int x = 0; x < finalWidth; x++) {
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
        outBitmap[y * finalWidth + x] =
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
