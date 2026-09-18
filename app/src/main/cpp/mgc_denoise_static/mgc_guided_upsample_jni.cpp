#include "mgc_denoise_static.h"
#include "mgc_guided_prepare_adapter.h"
#include "mgc_sharpen_adapter.h"
#include <algorithm>
#include <android/log.h>
#include <chrono>
#include <cmath>
#include <jni.h>
#include <limits>
#include <memory>
#include <vector>

namespace {
using Clock = std::chrono::steady_clock;
double Milliseconds(Clock::time_point begin, Clock::time_point end) {
  return std::chrono::duration<double, std::milli>(end - begin).count();
}
struct GuidedInputs {
  int width, height, padded_width, padded_height, scale;
  std::vector<int16_t> guide, low_guide;
};
void OutOfMemory(JNIEnv *env) {
  auto type = env->FindClass("java/lang/OutOfMemoryError");
  if (type)
    env->ThrowNew(type, "MGC GuidedUpsample storage");
}
} // namespace

extern "C" JNIEXPORT jlong JNICALL
Java_com_hinnka_mycamera_raw_MgcGuidedUpsample_nativePrepare(
    JNIEnv *env, jobject, jobject buffer, jint width, jint height, jint log2_scale,
    jfloatArray gains) {
  using namespace photon::mgc_denoise;
  if (!buffer || !gains || env->GetArrayLength(gains) != 3 || width <= 0 ||
      height <= 0 || width > 65536 || height > 65536 ||
      log2_scale < 1 || log2_scale > 2)
    return 0;
  auto *rgba = static_cast<float *>(env->GetDirectBufferAddress(buffer));
  if (!rgba ||
      env->GetDirectBufferCapacity(buffer) < int64_t(width) * height * 16)
    return 0;
  float wb[3];
  env->GetFloatArrayRegion(gains, 0, 3, wb);
  if (env->ExceptionCheck())
    return 0;
  for (float v : wb)
    if (!std::isfinite(v) || v <= 0)
      return 0;
  const int pw = (width + 127) & ~127, ph = (height + 15) & ~15;
  const int scale = 1 << log2_scale;
  const size_t n = size_t(pw) * ph, ln = n / (scale * scale);
  if (n > size_t(std::numeric_limits<int>::max() / 16) ||
      env->GetDirectBufferCapacity(buffer) < jlong(ln * 16))
    return 0;
  try {
    const auto start = Clock::now();
    auto state = std::make_unique<GuidedInputs>();
    state->width = width;
    state->height = height;
    state->padded_width = pw;
    state->padded_height = ph;
    state->scale = scale;
    Clock::time_point allocated, converted, boxed, guides;
    std::vector<int16_t> low(ln * 3);
    {
      std::vector<int16_t> yuv(n * 3);
      allocated = Clock::now();
      if (!GuidedFloatRgbaToLinearYuv(rgba, width, height, pw, ph, wb, yuv.data()))
        return 0;
      converted = Clock::now();
      if (RunGuidedBoxDownsample(yuv.data(), pw, ph, log2_scale, low.data()) != 0)
        return 0;
      boxed = Clock::now();
      state->guide.assign(yuv.begin(), yuv.begin() + n);
      // Release the two unused chroma planes before allocating low RGB.
    }
    state->low_guide.assign(low.begin(), low.begin() + ln);
    guides = Clock::now();
    // The low color branch starts before CCM/DCP/tone; never downsample an
    // encoded JPEG.
    std::vector<int16_t> low_rgb(ln * 3);
    if (RunYuvToRgb(low.data(), pw / scale, ph / scale, low_rgb.data()) != 0)
      return 0;
    const auto low_color = Clock::now();
#pragma omp parallel for schedule(static) num_threads(4)
    for (size_t i = 0; i < ln; ++i) {
      for (int c = 0; c < 3; ++c)
        rgba[i * 4 + c] = low_rgb[c * ln + i] / 16383.f / wb[c];
      rgba[i * 4 + 3] = 1.f;
    }
    const auto finish = Clock::now();
    __android_log_print(ANDROID_LOG_INFO, "PLog_MgcGuidedUpsample",
        "prepare %dx%d scale=%d allocMs=%.1f q14YuvMs=%.1f boxMs=%.1f guidesMs=%.1f "
        "lowRgbMs=%.1f rgbaMs=%.1f totalNativeMs=%.1f",
        width, height, scale, Milliseconds(start, allocated),
        Milliseconds(allocated, converted), Milliseconds(converted, boxed),
        Milliseconds(boxed, guides), Milliseconds(guides, low_color),
        Milliseconds(low_color, finish), Milliseconds(start, finish));
    return reinterpret_cast<jlong>(state.release());
  } catch (const std::bad_alloc &) {
    OutOfMemory(env);
    return 0;
  }
}

extern "C" JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_raw_MgcGuidedUpsample_nativeRender(
    JNIEnv *env, jobject, jlong handle, jobject buffer, jfloat attenuation,
    jfloatArray points) {
  using namespace photon::mgc_denoise;
  auto *state = reinterpret_cast<GuidedInputs *>(handle);
  if (!state || !buffer || !points || env->GetArrayLength(points) != 30 ||
      !std::isfinite(attenuation) || attenuation < 0)
    return -1;
  auto *rgba = static_cast<float *>(env->GetDirectBufferAddress(buffer));
  const size_t n = size_t(state->width) * state->height;
  const size_t ln = state->low_guide.size();
  if (!rgba ||
      env->GetDirectBufferCapacity(buffer) < jlong(std::max(n, ln) * 16))
    return -1;
  float curves[30];
  env->GetFloatArrayRegion(points, 0, 30, curves);
  if (env->ExceptionCheck())
    return -1;
  for (int c = 0; c < 3; ++c)
    for (int p = 0; p < 5; ++p) {
      const int i = c * 5 + p;
      if (!std::isfinite(curves[i]) || !std::isfinite(curves[i + 15]) ||
          curves[i] < 0 || curves[i + 15] < 0 ||
          (p == 0 && (curves[i] != 0 || curves[i + 15] != 0)) ||
          (p > 0 && curves[i] <= curves[i - 1]))
        return -1;
    }
  try {
    const auto start = Clock::now();
    std::vector<int16_t> yuv(ln * 3);
    std::vector<uint16_t> output(size_t(state->width) *
                                 ((state->height + 1) & ~1) * 3);
    if (!SharpenFloatRgbaToYuv(rgba, ln, yuv.data()))
      return -1;
    const auto converted = Clock::now();
    const int result = RunGuidedUpsampleTo16Bit(
        state->guide.data(), state->padded_width, state->padded_height,
        state->low_guide.data(), yuv.data(), state->scale, state->width,
        state->height, curves, attenuation, output.data());
    if (result)
      return result;
    const auto reconstructed = Clock::now();
    SharpenRgbToFloatRgba(output.data(), n, rgba);
    const auto finish = Clock::now();
    __android_log_print(ANDROID_LOG_INFO, "PLog_MgcGuidedUpsample",
        "render %dx%d scale=%d yuvMs=%.1f guidedMs=%.1f rgbaMs=%.1f totalNativeMs=%.1f",
        state->width, state->height, state->scale, Milliseconds(start, converted),
        Milliseconds(converted, reconstructed), Milliseconds(reconstructed, finish),
        Milliseconds(start, finish));
    return 0;
  } catch (const std::bad_alloc &) {
    OutOfMemory(env);
    return -1;
  }
}

extern "C" JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_raw_MgcGuidedUpsample_nativeRelease(JNIEnv *, jobject,
                                                             jlong handle) {
  delete reinterpret_cast<GuidedInputs *>(handle);
}
