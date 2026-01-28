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

// 辅助函数：计算 Bicubic 权重 (Catmull-Rom)
inline float cubicWeight(float t) {
    // a = -0.5
    float a = -0.5f;
    float absT = std::abs(t);
    if (absT <= 1.0f) {
        return (a + 2.0f) * absT * absT * absT - (a + 3.0f) * absT * absT + 1.0f;
    } else if (absT < 2.0f) {
        return a * absT * absT * absT - 5.0f * a * absT * absT + 8.0f * a * absT - 4.0f * a;
    }
    return 0.0f;
}

// 替换原来的 sampleBilinear
// 注意：这会比双线性慢一点，但画质提升巨大
inline float sampleBicubic(const std::vector<uint16_t> &data, int width,
                            int height, float x, float y) {
    int xInt = (int)std::floor(x);
    int yInt = (int)std::floor(y);
    float dx = x - xInt;
    float dy = y - yInt;

    float sum = 0.0f;
    float weightSum = 0.0f;

    // 4x4 邻域采样
    for (int j = -1; j <= 2; ++j) {
        int sy = std::max(0, std::min(height - 1, yInt + j));
        float wy = cubicWeight((float)j - dy);

        for (int i = -1; i <= 2; ++i) {
            int sx = std::max(0, std::min(width - 1, xInt + i));
            float wx = cubicWeight((float)i - dx);

            float weight = wx * wy;
            sum += (float)data[sy * width + sx] * weight;
            // Bicubic 权重之和理论为 1，但为了浮点稳定性可以除以 weightSum
            // weightSum += weight;
        }
    }

    float val = sum;
    if (val < 0.0f) val = 0.0f;
    if (val > 65535.0f) val = 65535.0f; // 针对 16-bit RAW 必须限制上限
    return val;
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
  const int tileSize = 32; // Grid step size
  int width = refPyramid[0].width;
  int height = refPyramid[0].height;

  // Grid dimensions
  int gridW = (width + tileSize - 1) / tileSize;
  int gridH = (height + tileSize - 1) / tileSize;

  TileAlignment alignment;
  alignment.tileWidth = tileSize;
  alignment.tileHeight = tileSize;
  alignment.gridW = gridW;
  alignment.gridH = gridH;
  alignment.offsets.resize(gridW * gridH, {0, 0});

  // 1. Global offset (L3 -> L2 -> L1)
  // Search deeper to ensure stability
  Point globalOffset = {0, 0};
  int currentDx = 0;
  int currentDy = 0;

  for (int i = refPyramid.size() - 1; i >= 1; --i) {
    currentDx *= 2;
    currentDy *= 2;
    const GrayImage &ref = refPyramid[i];
    const GrayImage &tgt = targetPyramid[i];
    int searchRadius = (i >= 2) ? 4 : 2; // Larger search at top levels

    long long bestSAD = std::numeric_limits<long long>::max();
    Point layerBest = {0, 0};

    for (int dy = -searchRadius; dy <= searchRadius; ++dy) {
      for (int dx = -searchRadius; dx <= searchRadius; ++dx) {
        long long sad = computeSAD(ref, tgt, currentDx + dx, currentDy + dy);
        if (sad < bestSAD) {
          bestSAD = sad;
          layerBest = {(float)dx, (float)dy};
        }
      }
    }
    currentDx += (int)layerBest.x;
    currentDy += (int)layerBest.y;
  }

  globalOffset = {(float)currentDx, (float)currentDy};

  // 2. Refine per tile at Level 1
  const GrayImage &refL1 = refPyramid[1];
  const GrayImage &tgtL1 = targetPyramid[1];

  // Grid step at L1 is tileSize/2 (16 pixels)
  int stepL1 = tileSize / 2;

  // BUT we use a larger window for SAD to stabilize (Overlap)
  // 24x24 window allows 50% overlap with neighbors
  int matchSizeL1 = stepL1 + 8;

  float gDxL1 = globalOffset.x; // Already at L1 scale from loop above
  float gDyL1 = globalOffset.y;

  // Temporary buffer for raw vectors
  std::vector<Point> rawOffsets(gridW * gridH);

  for (int ty = 0; ty < gridH; ++ty) {
    for (int tx = 0; tx < gridW; ++tx) {
      int refX = tx * stepL1;
      int refY = ty * stepL1;

      long long bestSAD = std::numeric_limits<long long>::max();
      int baseDx = (int)std::round(gDxL1);
      int baseDy = (int)std::round(gDyL1);
      int bestDx = baseDx;
      int bestDy = baseDy;

      // Local search
      for (int dy = -2; dy <= 2; ++dy) {
        for (int dx = -2; dx <= 2; ++dx) {
          int curDx = baseDx + dx;
          int curDy = baseDy + dy;
          // Use matchSizeL1 which is larger than stepL1 for stability
          long long sad = computeBlockSAD(refL1, tgtL1, refX, refY, matchSizeL1,
                                          matchSizeL1, curDx, curDy);
          if (sad < bestSAD) {
            bestSAD = sad;
            bestDx = curDx;
            bestDy = curDy;
          }
        }
      }

      // 3. Sub-pixel Refinement (L1 scale)
      // We do subpixel at L1 to avoid noise at L0
      long long s0 = bestSAD;
      long long sx_m = computeBlockSAD(refL1, tgtL1, refX, refY, matchSizeL1,
                                       matchSizeL1, bestDx - 1, bestDy);
      long long sx_p = computeBlockSAD(refL1, tgtL1, refX, refY, matchSizeL1,
                                       matchSizeL1, bestDx + 1, bestDy);
      long long sy_m = computeBlockSAD(refL1, tgtL1, refX, refY, matchSizeL1,
                                       matchSizeL1, bestDx, bestDy - 1);
      long long sy_p = computeBlockSAD(refL1, tgtL1, refX, refY, matchSizeL1,
                                       matchSizeL1, bestDx, bestDy + 1);

      float subDx = interpolateSubpixel(s0, sx_m, sx_p);
      float subDy = interpolateSubpixel(s0, sy_m, sy_p);

      // Clamp subpixel to avoid wild shots on flat textures
      subDx = std::max(-0.5f, std::min(0.5f, subDx));
      subDy = std::max(-0.5f, std::min(0.5f, subDy));

      // Scale back to L0 (multiply by 2)
      rawOffsets[ty * gridW + tx] = {(float)(bestDx + subDx) * 2.0f,
                                     (float)(bestDy + subDy) * 2.0f};
    }
  }

  // 4. Vector Field Smoothing (Regularization) - KEY for removing Jello Effect
  // Apply 3x3 Box Blur to the offset field
  for (int y = 0; y < gridH; ++y) {
    for (int x = 0; x < gridW; ++x) {
      float sumX = 0, sumY = 0;
      float wSum = 0;

      // 3x3 neighborhood
      for (int dy = -1; dy <= 1; ++dy) {
        for (int dx = -1; dx <= 1; ++dx) {
          int nx = std::max(0, std::min(x + dx, gridW - 1));
          int ny = std::max(0, std::min(y + dy, gridH - 1));

          // Optional: Give center more weight
          float w = (dx == 0 && dy == 0) ? 2.0f : 1.0f;

          sumX += rawOffsets[ny * gridW + nx].x * w;
          sumY += rawOffsets[ny * gridW + nx].y * w;
          wSum += w;
        }
      }
      alignment.offsets[y * gridW + x] = {sumX / wSum, sumY / wSum};
    }
  }

  return alignment;
}

namespace { // 匿名命名空间，放置内部辅助函数

// --- 核心升级 1: Catmull-Rom 双三次插值权重 ---
// 这种曲线在保留锐度和抑制振铃之间取得了很好的平衡
inline float cubicWeight(float t) {
    float a = -0.5f; // Catmull-Rom spline
    float absT = std::abs(t);
    if (absT <= 1.0f) {
        return (a + 2.0f) * absT * absT * absT - (a + 3.0f) * absT * absT + 1.0f;
    } else if (absT < 2.0f) {
        return a * absT * absT * absT - 5.0f * a * absT * absT + 8.0f * a * absT - 4.0f * a;
    }
    return 0.0f;
}

// --- 核心升级 1: Bicubic 采样函数 ---
// 用于替代原本的双线性插值。能显著提升亚像素对齐后的清晰度。
// data: 单通道数据 (Plane)
inline float sampleBicubicPlane(const std::vector<uint16_t>& data, int width, int height, float x, float y) {
    int xInt = (int)std::floor(x);
    int yInt = (int)std::floor(y);
    float dx = x - xInt;
    float dy = y - yInt;

    float sum = 0.0f;
    // float weightSum = 0.0f; // Catmull-Rom 理论权重和为 1，通常不需要归一化，省点计算量

    // 4x4 邻域采样
    // 边界检查放到循环内虽然稍微慢点，但写起来最安全
    for (int j = -1; j <= 2; ++j) {
        int sy = std::max(0, std::min(height - 1, yInt + j));
        float wy = cubicWeight((float)j - dy);

        // 优化：如果 Y 权重为 0 (极少见)，跳过整行
        if (std::abs(wy) < 1e-5f) continue;

        for (int i = -1; i <= 2; ++i) {
            int sx = std::max(0, std::min(width - 1, xInt + i));
            float wx = cubicWeight((float)i - dx);

            // 累加
            sum += (float)data[sy * width + sx] * wx * wy;
        }
    }

    // Bicubic 可能会产生负值（下冲），必须 Clamp 住
    return std::max(0.0f, sum);
}

} // end namespace

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
            (uint16_t)sampleBicubic(currentY, width, height, tx, ty);
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

RawStacker::RawStacker(int width, int height)
    : width(width), height(height), isFirstFrame(true) {
  int planeSize = (width / 2) * (height / 2);
  for (int i = 0; i < 4; ++i) {
    accum[i].assign(planeSize, 0);
    weight[i].assign(planeSize, 0);
  }
}

int RawStacker::getPlaneIndex(int x, int y, int cfaPattern) const {
  // cfaPattern: 0=RGGB, 1=GRBG, 2=GBRG, 3=BGGR
  // Row 0, Col 0 maps to: R, G, G, B respectively
  // We want output indices 0..3 for R, Gr, Gb, B

  // x%2, y%2 -> 00, 10, 01, 11
  int offset = (y % 2) * 2 + (x % 2);

  // Mapping table based on pattern
  static const int map[4][4] = {
      {0, 1, 2, 3}, // RGGB
      {1, 0, 3, 2}, // GRBG
      {2, 3, 0, 1}, // GBRG
      {3, 2, 1, 0}  // BGGR
  };

  return map[cfaPattern][offset];
}


// 辅助函数：安全地计算 RAW 的自动曝光缩放因子
// 使用 stride (bytes) 进行指针移动
inline float computeRawScaleSafe(const uint8_t* rawDataBytes, int width, int height, int rowStride) {
    int startY = height / 4;
    int endY = startY * 3;
    int startX = width / 4;
    int endX = startX * 3;

    uint16_t maxVal = 1;

    for (int y = startY; y < endY; y += 8) { // 步长加大，性能优先
        const uint16_t* row = (const uint16_t*)(rawDataBytes + y * rowStride);
        for (int x = startX; x < endX; x += 8) {
            if (row[x] > maxVal) maxVal = row[x];
        }
    }
    maxVal = std::max(maxVal, (uint16_t)255);
    return 255.0f / (float)maxVal;
}

// 辅助函数：简单的 3x3 均值模糊，去除 RAW 噪点以利于对齐
void smoothImage(GrayImage& img) {
    std::vector<uint8_t> temp = img.data;
    int w = img.width;
    int h = img.height;

    for (int y = 1; y < h - 1; ++y) {
        for (int x = 1; x < w - 1; ++x) {
            int sum = 0;
            // 3x3 Box Blur
            sum += temp[(y - 1) * w + (x - 1)];
            sum += temp[(y - 1) * w + x];
            sum += temp[(y - 1) * w + (x + 1)];
            sum += temp[y * w + (x - 1)];
            sum += temp[y * w + x];       // Center
            sum += temp[y * w + (x + 1)];
            sum += temp[(y + 1) * w + (x - 1)];
            sum += temp[(y + 1) * w + x];
            sum += temp[(y + 1) * w + (x + 1)];

            img.data[y * w + x] = (uint8_t)(sum / 9);
        }
    }
}

void RawStacker::addFrame(const uint16_t *rawData, int rowStride, int cfaPattern) {
  frameCount++;
  const uint8_t* rawBytes = (const uint8_t*)rawData;

  // 1. 自动曝光计算 (每帧独立计算或只算第一帧，这里为了安全每帧检查，第一帧锁定)
  if (isFirstFrame) {
      mScale = computeRawScaleSafe(rawBytes, width, height, rowStride);
      // 限制缩放倍数，防止纯黑图片导致数值爆炸
      if (mScale > 100.0f) mScale = 100.0f;
      LOGD("RawStacker: Scale factor: %f", mScale);
  }

  // 2. 准备 Proxy 和 Planes
  int proxyW = width / 2;
  int proxyH = height / 2;
  GrayImage proxy;
  proxy.width = proxyW;
  proxy.height = proxyH;
  proxy.data.resize(proxyW * proxyH);

  // 初始化 Planes
  std::vector<uint16_t> planes[4];
  for (int i = 0; i < 4; ++i) planes[i].resize(proxyW * proxyH);

  // CFA 偏移量逻辑 (保持之前的修正)
  int g1_dx = 0, g1_dy = 0;
  int g2_dx = 0, g2_dy = 0;

  // RGGB(0), BGGR(3) -> G at (1,0), (0,1) relative to 2x2 block
  // GRBG(1), GBRG(2) -> G at (0,0), (1,1) relative to 2x2 block
  if (cfaPattern == 1 || cfaPattern == 2) {
      g1_dx=0; g1_dy=0; g2_dx=1; g2_dy=1;
  } else {
      g1_dx=1; g1_dy=0; g2_dx=0; g2_dy=1;
  }

  // 3. 提取数据 (使用 Byte Stride 指针运算)
  for (int y = 0; y < proxyH; ++y) {
      // 预先计算当前行的指针，减少循环内乘法
      const uint8_t* row0 = rawBytes + (y * 2) * rowStride;
      const uint8_t* row1 = rawBytes + (y * 2 + 1) * rowStride;
      const uint16_t* pRow0 = (const uint16_t*)row0;
      const uint16_t* pRow1 = (const uint16_t*)row1;

      for (int x = 0; x < proxyW; ++x) {
          int ox = x * 2;

          // 读取 2x2 块
          uint16_t p00 = pRow0[ox];
          uint16_t p10 = pRow0[ox + 1];
          uint16_t p01 = pRow1[ox];
          uint16_t p11 = pRow1[ox + 1];

          // 提取绿色通道用于 Proxy
          // 根据 CFA 模式选择哪两个像素是绿色
          uint16_t g1, g2;

          // 简化逻辑：利用预读的像素值，避免重复指针计算
          if (cfaPattern == 1 || cfaPattern == 2) {
              // G at (0,0) and (1,1)
              g1 = p00; g2 = p11;
          } else {
              // G at (1,0) and (0,1)
              g1 = p10; g2 = p01;
          }

          // 生成对齐用 Proxy 像素 (均值 + 缩放)
          float avgG = (float)(g1 + g2) * 0.5f;
          proxy.data[y * proxyW + x] = (uint8_t)std::max(0.0f, std::min(255.0f, avgG * mScale));

          // 分发到 Planes
          planes[getPlaneIndex(ox, 0, cfaPattern)][y * proxyW + x] = p00;
          planes[getPlaneIndex(ox + 1, 0, cfaPattern)][y * proxyW + x] = p10;
          planes[getPlaneIndex(ox, 1, cfaPattern)][y * proxyW + x] = p01;
          planes[getPlaneIndex(ox + 1, 1, cfaPattern)][y * proxyW + x] = p11;
      }
  }

  // --- 关键修正 2: Proxy 降噪 ---
  // RAW 的单像素噪声极强，会导致 SAD 误判。对齐前进行轻微模糊是必须的。
  if (!isFirstFrame) {
      smoothImage(proxy);
  }

  if (isFirstFrame) {
    mCfaPattern = cfaPattern;
    // 第一帧也要平滑，作为干净的参考基准
    smoothImage(proxy);
    referencePyramid = buildPyramid(proxy.data.data(), proxyW, proxyH, 4);

    for (int i = 0; i < 4; ++i) {
      referencePlanes[i] = planes[i];
      for (size_t j = 0; j < planes[i].size(); ++j) {
        accum[i][j] = (int32_t)planes[i][j] * 256;
        weight[i][j] = 256;
      }
    }
    isFirstFrame = false;
    return;
  }

  // 4. 对齐 (Alignment)
  std::vector<GrayImage> currentPyramid =
      buildPyramid(proxy.data.data(), proxyW, proxyH, 4);

  // 搜索范围：48 (对应 RAW 像素 96)
  TileAlignment alignment =
      computeTileAlignment(referencePyramid, currentPyramid, 48);

  // 5. 堆栈融合 (Accumulate)
  for (int i = 0; i < 4; ++i) {
    const auto &srcPlane = planes[i];
    const auto &refPlane = referencePlanes[i]; // 用于方差计算的参考平面

    for (int y = 0; y < proxyH; ++y) {
      for (int x = 0; x < proxyW; ++x) {
        Point offset = alignment.getOffset(x, y);
        float tx = (float)x + offset.x;
        float ty = (float)y + offset.y;

        int destIdx = y * proxyW + x;

        // 边界保护
        if (tx >= 2.0f && tx < (float)proxyW - 3.0f &&
            ty >= 2.0f && ty < (float)proxyH - 3.0f) {

          // --- 核心升级 1: 调用 Bicubic 采样 ---
          float val = sampleBicubicPlane(srcPlane, proxyW, proxyH, tx, ty);
          int32_t sampleVal = (int32_t)val;

          // De-ghosting
          int32_t currentAvg = accum[i][destIdx] / weight[i][destIdx];
          int diff = std::abs(sampleVal - currentAvg);

          float noiseModel = 32.0f + std::sqrt((float)currentAvg) * 2.5f;
          float thresholdHigh = noiseModel * 4.0f; // 差异大到这个程度，认为是鬼影，权重归零
          float thresholdLow  = noiseModel * 1.5f; // 差异在这个范围内，认为是完全安全的

          int w = 256;
          if (diff > thresholdHigh) {
             w = 0;
          } else if (diff > thresholdLow) {
             float t = ((float)diff - thresholdLow) / (thresholdHigh - thresholdLow);
             float factor = 1.0f - (t * t * (3.0f - 2.0f * t)); // smoothstep flip
             w = (int)(256.0f * factor);
         }

          if (w > 0) {
            accum[i][destIdx] += sampleVal * w;
            weight[i][destIdx] += w;
          }
        }
      }
    }
  }
}

std::vector<uint16_t> RawStacker::process() {
  std::vector<uint16_t> result(width * height);

  int proxyW = width / 2;
  int proxyH = height / 2;

  for (int y = 0; y < proxyH; ++y) {
    for (int x = 0; x < proxyW; ++x) {
      int ox = x * 2;
      int oy = y * 2;

      // Helper to retrieve value for a specific original pixel coordinate
      auto getVal = [&](int px, int py) {
        int planeIdx = getPlaneIndex(px, py, mCfaPattern);
        int destIdx = y * proxyW + x;
        if (weight[planeIdx][destIdx] > 0) {
          return (uint16_t)(accum[planeIdx][destIdx] /
                            weight[planeIdx][destIdx]);
        }
        return (uint16_t)0;
      };

      result[oy * width + ox] = getVal(ox, oy);
      result[oy * width + ox + 1] = getVal(ox + 1, oy);
      result[(oy + 1) * width + ox] = getVal(ox, oy + 1);
      result[(oy + 1) * width + ox + 1] = getVal(ox + 1, oy + 1);
    }
  }
  return result;
}
