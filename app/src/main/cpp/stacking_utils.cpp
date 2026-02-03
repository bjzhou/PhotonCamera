#include "stacking_utils.h"
#include <omp.h>

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
    return a * absT * absT * absT - 5.0f * a * absT * absT + 8.0f * a * absT -
           4.0f * a;
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
  if (val < 0.0f)
    val = 0.0f;
  if (val > 65535.0f)
    val = 65535.0f; // 针对 16-bit RAW 必须限制上限
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

#pragma omp parallel for collapse(2) num_threads(4)
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

#pragma omp parallel for collapse(2) num_threads(4)
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
#pragma omp parallel for collapse(2) num_threads(4)
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
    return a * absT * absT * absT - 5.0f * a * absT * absT + 8.0f * a * absT -
           4.0f * a;
  }
  return 0.0f;
}

// --- 核心升级 1: Bicubic 采样函数 ---
// 用于替代原本的双线性插值。能显著提升亚像素对齐后的清晰度。
// data: 单通道数据 (Plane)
inline float sampleBicubicPlane(const std::vector<uint16_t> &data, int width,
                                int height, float x, float y) {
  int xInt = (int)std::floor(x);
  int yInt = (int)std::floor(y);
  float dx = x - xInt;
  float dy = y - yInt;

  float sum = 0.0f;
  // float weightSum = 0.0f; // Catmull-Rom 理论权重和为
  // 1，通常不需要归一化，省点计算量

  // 4x4 邻域采样
  // 边界检查放到循环内虽然稍微慢点，但写起来最安全
  for (int j = -1; j <= 2; ++j) {
    int sy = std::max(0, std::min(height - 1, yInt + j));
    float wy = cubicWeight((float)j - dy);

    // 优化：如果 Y 权重为 0 (极少见)，跳过整行
    if (std::abs(wy) < 1e-5f)
      continue;

    for (int i = -1; i <= 2; ++i) {
      int sx = std::max(0, std::min(width - 1, xInt + i));
      float wx = cubicWeight((float)i - dx);

      // 累加
      sum += (float)data[sy * width + sx] * wx * wy;
    }
  }

  // Bicubic 可能会产生负值（下冲），必须 Clamp 住
  return std::max(0.0f, std::min(65535.0f, sum));
}

} // end namespace

// --- ImageStacker Implementation ---

ImageStacker::ImageStacker(int width, int height, bool enableSuperRes)
    : width(width), height(height), isFirstFrame(true) {
  scale = enableSuperRes ? 2 : 1;
  // Accumulator buffers are scaled
  int scaledW = width * scale;
  int scaledH = height * scale;
  int size = scaledW * scaledH;

  // UV is subsampled 2x relative to Y
  int uvWidth = scaledW / 2;
  int uvHeight = scaledH / 2;
  int uvSize = uvWidth * uvHeight;

  accumY.assign(size, 0);
  accumU.assign(uvSize, 0);
  accumV.assign(uvSize, 0);

  weightY.assign(size, 0);
  weightU.assign(uvSize, 0);
  weightV.assign(uvSize, 0);

  // Reference is kept at original resolution for alignment
  int refYSize = width * height;
  int refUVSize = (width / 2) * (height / 2);
  referenceY.resize(refYSize);
  referenceU.resize(refUVSize);
  referenceV.resize(refUVSize);
}

inline int calculateWeight(int diff, float variance) {
  // Advanced de-ghosting based on noise statistics
  // sigma^2 = variance + base_noise
  float sigma = std::sqrt(variance + 1600.0f); // Base noise ~40 in 16-bit
  float threshold = 3.0f * sigma;

  // Relax thresholdHigh in high frequency regions (large variance)
  // to preserve more details where misalignment might cause larger differences.
  float factorHigh = 4.0f + std::min(8.0f, variance / 5000.0f);
  float thresholdHigh = threshold * factorHigh;

  if (diff < (int)threshold)
    return 256;
  if (diff > (int)thresholdHigh)
    return 0;

  // Interpolate linearly between threshold (weight=256) and thresholdHigh
  // (weight=0)
  return (int)(256.0f * (thresholdHigh - (float)diff) /
               (thresholdHigh - threshold));
}

void ImageStacker::addFrame(const uint8_t *yData, const uint8_t *uData,
                            const uint8_t *vData, int yRowStride,
                            int uvRowStride, int uvPixelStride, int format) {
  stageFrame(yData, uData, vData, yRowStride, uvRowStride, uvPixelStride,
             format);
  processFrame((int)stagedFrames.size() - 1);
}

void ImageStacker::stageFrame(const uint8_t *yData, const uint8_t *uData,
                              const uint8_t *vData, int yRowStride,
                              int uvRowStride, int uvPixelStride, int format) {
  frameCount++;

  if (!yData || !uData || !vData) {
    LOGE("ImageStacker::stageFrame: Received NULL buffer(s)");
    return;
  }

  StagedYuvFrame frame;
  frame.format = format;

  bool isP010 = (format == 0x36);
  int yPixelStride = isP010 ? 2 : 1;

  // Convert current frame to internal 16-bit and 8-bit for alignment
  frame.y.resize(width * height);
  frame.y8.width = width;
  frame.y8.height = height;
  frame.y8.data.resize(width * height);

#pragma omp parallel for num_threads(4)
  for (int r = 0; r < height; ++r) {
    const uint8_t *yRowPtr = yData + r * yRowStride;
    for (int c = 0; c < width; ++c) {
      uint16_t val;
      if (isP010) {
        val = readValue<uint16_t>(yRowPtr + c * yPixelStride, false);
      } else {
        val = static_cast<uint16_t>(yRowPtr[c]) << 8;
      }
      frame.y[r * width + c] = val;
      frame.y8.data[r * width + c] = static_cast<uint8_t>(val >> 8);
    }
  }

  // Convert UV frames to internal 16-bit
  int uvW = width / 2;
  int uvH = height / 2;
  frame.u.resize(uvW * uvH);
  frame.v.resize(uvW * uvH);

#pragma omp parallel for num_threads(4)
  for (int r = 0; r < uvH; ++r) {
    const uint8_t *uRowPtr = uData + r * uvRowStride;
    const uint8_t *vRowPtr = vData + r * uvRowStride;
    for (int c = 0; c < uvW; ++c) {
      uint16_t uVal, vVal;
      if (isP010) {
        uVal = readValue<uint16_t>(uRowPtr + c * uvPixelStride, false);
        vVal = readValue<uint16_t>(vRowPtr + c * uvPixelStride, false);
      } else {
        uVal = static_cast<uint16_t>(uRowPtr[c * uvPixelStride]) << 8;
        vVal = static_cast<uint16_t>(vRowPtr[c * uvPixelStride]) << 8;
      }
      frame.u[r * uvW + c] = uVal;
      frame.v[r * uvW + c] = vVal;
    }
  }
  stagedFrames.push_back(std::move(frame));
}

void ImageStacker::processFrame(int index) {
  if (index < 0 || index >= (int)stagedFrames.size()) {
    LOGE("ImageStacker::processFrame: Invalid index %d", index);
    return;
  }
  const auto &staged = stagedFrames[index];
  bool isP010 = (staged.format == 0x36);

  if (isFirstFrame) {
    referenceY = staged.y;
    referenceU = staged.u;
    referenceV = staged.v;

    referencePyramid = buildPyramid(staged.y8.data.data(), width, height, 4);

    // Initialize accumulators by upscaling the first frame
    int scaledW = width * scale;
    int scaledH = height * scale;

#pragma omp parallel for collapse(2) num_threads(4)
    for (int y = 0; y < scaledH; ++y) {
      for (int x = 0; x < scaledW; ++x) {
        // Map scaled coordinates back to input coordinates
        float srcX = (float)x / scale;
        float srcY = (float)y / scale;

        // Initial frame: strict bicubic upscale
        uint16_t val =
            (uint16_t)sampleBicubic(staged.y, width, height, srcX, srcY);
        accumY[y * scaledW + x] = (int32_t)val * 256;
        weightY[y * scaledW + x] = 256;
      }
    }

    // UV
    int scaledUVWidth = scaledW / 2;
    int scaledUVHeight = scaledH / 2;
    int uvRefWidth = width / 2;
    int uvRefHeight = height / 2;

#pragma omp parallel for collapse(2) num_threads(4)
    for (int y = 0; y < scaledUVHeight; ++y) {
      for (int x = 0; x < scaledUVWidth; ++x) {
        float srcX = (float)x / scale;
        float srcY = (float)y / scale;

        uint16_t uVal = (uint16_t)sampleBicubic(staged.u, uvRefWidth,
                                                uvRefHeight, srcX, srcY);
        uint16_t vVal = (uint16_t)sampleBicubic(staged.v, uvRefWidth,
                                                uvRefHeight, srcX, srcY);

        accumU[y * scaledUVWidth + x] = (int32_t)uVal * 256;
        weightU[y * scaledUVWidth + x] = 256;

        accumV[y * scaledUVWidth + x] = (int32_t)vVal * 256;
        weightV[y * scaledUVWidth + x] = 256;
      }
    }

    isFirstFrame = false;
    return;
  }

  // Align current frame against reference (Always at 1x scale)
  std::vector<GrayImage> currentPyramid =
      buildPyramid(staged.y8.data.data(), width, height, 4);
  TileAlignment alignment =
      computeTileAlignment(referencePyramid, currentPyramid, 64);

  int scaledW = width * scale;
  int scaledH = height * scale;

  // Merge with Robust Weighting
  // Y Plane - Iterate over Output Grid (Scaled)
#pragma omp parallel for collapse(2) num_threads(4)
  for (int y = 0; y < scaledH; ++y) {
    for (int x = 0; x < scaledW; ++x) {
      float refX = (float)x / scale;
      float refY = (float)y / scale;

      Point offset = alignment.getOffset((int)refX, (int)refY);
      float tx = refX + offset.x;
      float ty = refY + offset.y;

      int destIdx = y * scaledW + x;

      if (tx >= 0 && tx < (float)width && ty >= 0 && ty < (float)height) {
        uint16_t targetVal =
            (uint16_t)sampleBicubic(staged.y, width, height, tx, ty);
        uint16_t refVal = (uint16_t)(accumY[destIdx] / weightY[destIdx]);
        float variance = computeLocalVariance(referenceY, width, height,
                                              (int)refX, (int)refY);

        int diff = std::abs((int)targetVal - (int)refVal);
        int weight = calculateWeight(diff, variance);

        accumY[destIdx] += (int32_t)targetVal * weight;
        weightY[destIdx] += weight;

        if (x % scale == 0 && y % scale == 0 && weight > 128) {
          int refIdx = (y / scale) * width + (x / scale);
          referenceY[refIdx] =
              (uint16_t)((referenceY[refIdx] * 7 + targetVal) / 8);
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
  int scaledUVWidth = scaledW / 2;
  int scaledUVHeight = scaledH / 2;
  int uvRefWidth = width / 2;
  int uvRefHeight = height / 2;

#pragma omp parallel for collapse(2) num_threads(4)
  for (int y = 0; y < scaledUVHeight; ++y) {
    for (int x = 0; x < scaledUVWidth; ++x) {
      float refUVX = (float)x / scale;
      float refUVY = (float)y / scale;

      Point offset = alignment.getOffset(refUVX * 2, refUVY * 2);
      float tx = refUVX + offset.x / 2.0f;
      float ty = refUVY + offset.y / 2.0f;

      int destIdx = y * scaledUVWidth + x;
      if (tx >= 2.0f && tx < (float)uvRefWidth - 3.0f && ty >= 2.0f &&
          ty < (float)uvRefHeight - 3.0f) {
        // Use Bicubic for UV as well since we now have Dense 16-bit staging
        uint16_t targetU =
            (uint16_t)sampleBicubic(staged.u, uvRefWidth, uvRefHeight, tx, ty);
        uint16_t targetV =
            (uint16_t)sampleBicubic(staged.v, uvRefWidth, uvRefHeight, tx, ty);
        uint16_t refU = (uint16_t)(accumU[destIdx] / weightU[destIdx]);
        uint16_t refV = (uint16_t)(accumV[destIdx] / weightV[destIdx]);

        int diffU = std::abs((int)targetU - (int)refU);
        int diffV = std::abs((int)targetV - (int)refV);
        int weight = calculateWeight(std::max(diffU, diffV), 40000.0f);

        accumU[destIdx] += (int32_t)targetU * weight;
        weightU[destIdx] += weight;
        accumV[destIdx] += (int32_t)targetV * weight;
        weightV[destIdx] += weight;

        if (x % scale == 0 && y % scale == 0 && weight > 128) {
          int refIdx = (y / scale) * uvRefWidth + (x / scale);
          referenceU[refIdx] =
              (uint16_t)((referenceU[refIdx] * 7 + targetU) / 8);
          referenceV[refIdx] =
              (uint16_t)((referenceV[refIdx] * 7 + targetV) / 8);
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
  // Use current scaled dimensions
  int currentW = width * scale;
  int currentH = height * scale;

  int ySize = currentW * currentH;
  int uvWidth = currentW / 2;
  int uvHeight = currentH / 2;
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
  int rotatedWidth = (rotation == 90 || rotation == 270) ? currentH : currentW;
  int rotatedHeight = (rotation == 90 || rotation == 270) ? currentW : currentH;
  int rotatedUvWidth = rotatedWidth / 2;
  int rotatedUvHeight = rotatedHeight / 2;

  std::vector<uint16_t> rY(rotatedWidth * rotatedHeight);
  std::vector<uint16_t> rU(rotatedUvWidth * rotatedUvHeight);
  std::vector<uint16_t> rV(rotatedUvWidth * rotatedUvHeight);

  RotatePlane16(iY.data(), rY.data(), currentW, currentH, rotation);
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

#pragma omp parallel for collapse(2) num_threads(4)
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

RawStacker::RawStacker(int width, int height, bool enableSuperRes)
    : width(width), height(height), scale(enableSuperRes ? 2 : 1),
      isFirstFrame(true) {
  int planeSize = (width / 2 * scale) * (height / 2 * scale);
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
inline float computeRawScaleSafe(const uint8_t *rawDataBytes, int width,
                                 int height, int rowStride) {
  int startY = height / 4;
  int endY = startY * 3;
  int startX = width / 4;
  int endX = startX * 3;

  uint16_t maxVal = 1;

#pragma omp parallel for reduction(max : maxVal) num_threads(4)
  for (int y = startY; y < endY; y += 8) { // 步长加大，性能优先

    const uint16_t *row = (const uint16_t *)(rawDataBytes + y * rowStride);
    for (int x = startX; x < endX; x += 8) {
      if (row[x] > maxVal)
        maxVal = row[x];
    }
  }
  maxVal = std::max(maxVal, (uint16_t)255);
  return 255.0f / (float)maxVal;
}

// 辅助函数：简单的 3x3 均值模糊，去除 RAW 噪点以利于对齐
void smoothImage(GrayImage &img) {
  std::vector<uint8_t> temp = img.data;
  int w = img.width;
  int h = img.height;

#pragma omp parallel for num_threads(4)
  for (int y = 1; y < h - 1; ++y) {
    for (int x = 1; x < w - 1; ++x) {

      int sum = 0;
      // 3x3 Box Blur
      sum += temp[(y - 1) * w + (x - 1)];
      sum += temp[(y - 1) * w + x];
      sum += temp[(y - 1) * w + (x + 1)];
      sum += temp[y * w + (x - 1)];
      sum += temp[y * w + x]; // Center
      sum += temp[y * w + (x + 1)];
      sum += temp[(y + 1) * w + (x - 1)];
      sum += temp[(y + 1) * w + x];
      sum += temp[(y + 1) * w + (x + 1)];

      img.data[y * w + x] = (uint8_t)(sum / 9);
    }
  }
}

void RawStacker::addFrame(const uint16_t *rawData, int rowStride,
                          int cfaPattern) {
  stageFrame(rawData, rowStride, cfaPattern);
  processFrame((int)stagedFrames.size() - 1);
}

void RawStacker::stageFrame(const uint16_t *rawData, int rowStride,
                            int cfaPattern) {
  frameCount++;
  const uint8_t *rawBytes = (const uint8_t *)rawData;

  if (isFirstFrame) {
    byteScale = computeRawScaleSafe(rawBytes, width, height, rowStride);
    if (byteScale > 100.0f)
      byteScale = 100.0f;
    LOGD("RawStacker: Scale factor: %f", byteScale);
  }

  StagedRawFrame frame;
  frame.cfaPattern = cfaPattern;

  int proxyW = width / 2;
  int proxyH = height / 2;
  frame.proxy.width = proxyW;
  frame.proxy.height = proxyH;
  frame.proxy.data.resize(proxyW * proxyH);

  for (int i = 0; i < 4; ++i)
    frame.planes[i].resize(proxyW * proxyH);

#pragma omp parallel for num_threads(4)
  for (int y = 0; y < proxyH; ++y) {
    const uint8_t *row0 = rawBytes + (y * 2) * rowStride;
    const uint8_t *row1 = rawBytes + (y * 2 + 1) * rowStride;
    const uint16_t *pRow0 = (const uint16_t *)row0;
    const uint16_t *pRow1 = (const uint16_t *)row1;

    for (int x = 0; x < proxyW; ++x) {
      int ox = x * 2;
      uint16_t p00 = pRow0[ox];
      uint16_t p10 = pRow0[ox + 1];
      uint16_t p01 = pRow1[ox];
      uint16_t p11 = pRow1[ox + 1];

      uint16_t g1, g2;
      if (cfaPattern == 1 || cfaPattern == 2) {
        g1 = p00;
        g2 = p11;
      } else {
        g1 = p10;
        g2 = p01;
      }

      float avgG = (float)(g1 + g2) * 0.5f;
      frame.proxy.data[y * proxyW + x] =
          (uint8_t)std::max(0.0f, std::min(255.0f, avgG * byteScale));

      frame.planes[getPlaneIndex(ox, 0, cfaPattern)][y * proxyW + x] = p00;
      frame.planes[getPlaneIndex(ox + 1, 0, cfaPattern)][y * proxyW + x] = p10;
      frame.planes[getPlaneIndex(ox, 1, cfaPattern)][y * proxyW + x] = p01;
      frame.planes[getPlaneIndex(ox + 1, 1, cfaPattern)][y * proxyW + x] = p11;
    }
  }

  if (!isFirstFrame) {
    smoothImage(frame.proxy);
  } else {
    smoothImage(frame.proxy);
  }
  stagedFrames.push_back(std::move(frame));
}

void RawStacker::processFrame(int index) {
  if (index < 0 || index >= (int)stagedFrames.size()) {
    LOGE("RawStacker::processFrame: Invalid index %d", index);
    return;
  }
  const auto &staged = stagedFrames[index];

  int proxyW = width / 2;
  int proxyH = height / 2;

  if (isFirstFrame) {
    mCfaPattern = staged.cfaPattern;
    referencePyramid =
        buildPyramid(staged.proxy.data.data(), proxyW, proxyH, 4);

    int scaledW = proxyW * scale;
    int scaledH = proxyH * scale;

    for (int i = 0; i < 4; ++i) {
      referencePlanes[i] = staged.planes[i];
#pragma omp parallel for collapse(2) num_threads(4)
      for (int sy = 0; sy < scaledH; sy++) {
        for (int sx = 0; sx < scaledW; sx++) {
          float refX = (float)sx / scale;
          float refY = (float)sy / scale;

          float val =
              sampleBicubicPlane(staged.planes[i], proxyW, proxyH, refX, refY);
          int destIdx = sy * scaledW + sx;
          accum[i][destIdx] = (int32_t)val * 256;
          weight[i][destIdx] = 256;
        }
      }
    }
    isFirstFrame = false;
    return;
  }

  std::vector<GrayImage> currentPyramid =
      buildPyramid(staged.proxy.data.data(), proxyW, proxyH, 4);
  TileAlignment alignment =
      computeTileAlignment(referencePyramid, currentPyramid, 48);

  int scaledW = proxyW * scale;
  int scaledH = proxyH * scale;

  for (int i = 0; i < 4; ++i) {
    const auto &srcPlane = staged.planes[i];

#pragma omp parallel for collapse(2) num_threads(4)
    for (int y = 0; y < scaledH; ++y) {
      for (int x = 0; x < scaledW; ++x) {
        float refX = (float)x / scale;
        float refY = (float)y / scale;

        Point offset = alignment.getOffset(refX, refY);
        float tx = refX + offset.x;
        float ty = refY + offset.y;

        int destIdx = y * scaledW + x;

        if (tx >= 2.0f && tx < (float)proxyW - 3.0f && ty >= 2.0f &&
            ty < (float)proxyH - 3.0f) {
          float val = sampleBicubicPlane(srcPlane, proxyW, proxyH, tx, ty);
          int32_t sampleVal = (int32_t)val;
          int32_t currentAvg = accum[i][destIdx] / weight[i][destIdx];
          int diff = std::abs(sampleVal - currentAvg);

          float variance = computeLocalVariance(referencePlanes[i], proxyW,
                                                proxyH, (int)refX, (int)refY);
          float noiseModel = 32.0f + std::sqrt((float)currentAvg) * 2.5f;
          float thresholdLow = noiseModel * 1.5f;
          float factorHigh = 4.0f + std::min(8.0f, variance / 5000.0f);
          float thresholdHigh = noiseModel * factorHigh;

          int w = 256;
          if (diff > thresholdHigh) {
            w = 0;
          } else if (diff > thresholdLow) {
            float t =
                ((float)diff - thresholdLow) / (thresholdHigh - thresholdLow);
            float factor = 1.0f - (t * t * (3.0f - 2.0f * t));
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
  int outW = width * scale;
  int outH = height * scale;
  std::vector<uint16_t> result(outW * outH);

  int planeW = width / 2 * scale;
  int planeH = height / 2 * scale;

#pragma omp parallel for collapse(2) num_threads(4)
  for (int y = 0; y < planeH; ++y) {
    for (int x = 0; x < planeW; ++x) {

      int ox = x * 2;
      int oy = y * 2;

      // Helper to retrieve value for a specific output Bayer pixel coordinate
      auto getVal = [&](int px, int py) {
        int planeIdx = getPlaneIndex(px, py, mCfaPattern);
        int destIdx = y * planeW + x;
        if (weight[planeIdx][destIdx] > 0) {
          return (uint16_t)(accum[planeIdx][destIdx] /
                            weight[planeIdx][destIdx]);
        }
        return (uint16_t)0;
      };

      result[oy * outW + ox] = getVal(ox, oy);
      result[oy * outW + ox + 1] = getVal(ox + 1, oy);
      result[(oy + 1) * outW + ox] = getVal(ox, oy + 1);
      result[(oy + 1) * outW + ox + 1] = getVal(ox + 1, oy + 1);
    }
  }
  return result;
}
