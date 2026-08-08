#include <algorithm>
#include <android/log.h>
#include <cmath>
#include <cstdint>
#include <jni.h>
#include <limits>
#include <new>
#include <vector>

namespace {
constexpr const char *kLogTag = "MgcStrengthScaler";

void LogError(const char *message, int sourceWidth, int sourceHeight,
              int destinationWidth, int destinationHeight) {
  __android_log_print(ANDROID_LOG_ERROR, kLogTag, message, sourceWidth,
                      sourceHeight, destinationWidth, destinationHeight);
}
}  // namespace

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_processor_MgcSpatialStrengthMapScaler_nativeScaleBilinearU16(
    JNIEnv *env, jobject, jshortArray sourceArray, jint sourceWidth,
    jint sourceHeight, jshortArray destinationArray, jint destinationWidth,
    jint destinationHeight) {
  if (!sourceArray || !destinationArray || sourceWidth <= 0 ||
      sourceHeight <= 0 || destinationWidth <= 0 || destinationHeight <= 0) {
    LogError("Invalid geometry src=%dx%d dst=%dx%d", sourceWidth, sourceHeight,
             destinationWidth, destinationHeight);
    return JNI_FALSE;
  }
  const int64_t sourceCount =
      static_cast<int64_t>(sourceWidth) * sourceHeight;
  const int64_t destinationCount =
      static_cast<int64_t>(destinationWidth) * destinationHeight;
  if (sourceCount > std::numeric_limits<jsize>::max() ||
      destinationCount > std::numeric_limits<jsize>::max() ||
      env->GetArrayLength(sourceArray) != sourceCount ||
      env->GetArrayLength(destinationArray) != destinationCount) {
    LogError("Array size mismatch src=%dx%d dst=%dx%d", sourceWidth,
             sourceHeight, destinationWidth, destinationHeight);
    return JNI_FALSE;
  }

  auto *sourceElements = env->GetShortArrayElements(sourceArray, nullptr);
  auto *destinationElements =
      env->GetShortArrayElements(destinationArray, nullptr);
  if (!sourceElements || !destinationElements) {
    if (destinationElements) {
      env->ReleaseShortArrayElements(destinationArray, destinationElements,
                                     JNI_ABORT);
    }
    if (sourceElements) {
      env->ReleaseShortArrayElements(sourceArray, sourceElements, JNI_ABORT);
    }
    return JNI_FALSE;
  }

  const auto *source = reinterpret_cast<const uint16_t *>(sourceElements);
  auto *destination = reinterpret_cast<uint16_t *>(destinationElements);
  bool completed = false;
  try {
    std::vector<int> x0(static_cast<size_t>(destinationWidth));
    std::vector<int> x1(static_cast<size_t>(destinationWidth));
    std::vector<float> fx(static_cast<size_t>(destinationWidth));
    for (int x = 0; x < destinationWidth; ++x) {
      const float sourceX =
          (static_cast<float>(x) + 0.5f) * sourceWidth / destinationWidth -
          0.5f;
      const float sourceFloor = std::floor(sourceX);
      x0[static_cast<size_t>(x)] =
          std::clamp(static_cast<int>(sourceFloor), 0, sourceWidth - 1);
      x1[static_cast<size_t>(x)] =
          std::min(x0[static_cast<size_t>(x)] + 1, sourceWidth - 1);
      fx[static_cast<size_t>(x)] =
          std::clamp(sourceX - sourceFloor, 0.0f, 1.0f);
    }

#pragma omp parallel for schedule(static) if (destinationHeight >= 64)
    for (int y = 0; y < destinationHeight; ++y) {
      const float sourceY =
          (static_cast<float>(y) + 0.5f) * sourceHeight / destinationHeight -
          0.5f;
      const float sourceFloor = std::floor(sourceY);
      const int y0 =
          std::clamp(static_cast<int>(sourceFloor), 0, sourceHeight - 1);
      const int y1 = std::min(y0 + 1, sourceHeight - 1);
      const float fy = std::clamp(sourceY - sourceFloor, 0.0f, 1.0f);
      const auto *topRow = source + static_cast<size_t>(y0) * sourceWidth;
      const auto *bottomRow = source + static_cast<size_t>(y1) * sourceWidth;
      auto *destinationRow =
          destination + static_cast<size_t>(y) * destinationWidth;
      for (int x = 0; x < destinationWidth; ++x) {
        const size_t index = static_cast<size_t>(x);
        const float xWeight = fx[index];
        const float top = static_cast<float>(topRow[x0[index]]) +
                          xWeight * (static_cast<float>(topRow[x1[index]]) -
                                     static_cast<float>(topRow[x0[index]]));
        const float bottom = static_cast<float>(bottomRow[x0[index]]) +
                             xWeight *
                                 (static_cast<float>(bottomRow[x1[index]]) -
                                  static_cast<float>(bottomRow[x0[index]]));
        const float interpolated = top + fy * (bottom - top);
        destinationRow[x] = static_cast<uint16_t>(std::clamp<long>(
            std::lrintf(interpolated), 0L, 65535L));
      }
    }
    completed = true;
  } catch (const std::bad_alloc &) {
    LogError("Allocation failed src=%dx%d dst=%dx%d", sourceWidth,
             sourceHeight, destinationWidth, destinationHeight);
  }

  env->ReleaseShortArrayElements(destinationArray, destinationElements,
                                 completed ? 0 : JNI_ABORT);
  env->ReleaseShortArrayElements(sourceArray, sourceElements, JNI_ABORT);
  return completed && !env->ExceptionCheck() ? JNI_TRUE : JNI_FALSE;
}
