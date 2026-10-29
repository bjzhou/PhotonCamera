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
#include <new>
#include <sys/mman.h>
#include <unistd.h>
#include <vector>

namespace {
using Clock = std::chrono::steady_clock;
double Milliseconds(Clock::time_point begin, Clock::time_point end) {
  return std::chrono::duration<double, std::milli>(end - begin).count();
}
// Anonymous mapping for the full-resolution planar Q14 YUV. Pages are zero-filled lazily on
// first write, so there is no separate clearing pass; once BoxDownsample has consumed U/V their
// pages are unmapped and the Y plane remains in place as the guide, without a copy.
class PlanarYuvMapping {
public:
  explicit PlanarYuvMapping(size_t plane_samples)
      : bytes_(plane_samples * 3 * sizeof(int16_t)) {
    void *base = mmap(nullptr, bytes_, PROT_READ | PROT_WRITE,
                      MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (base == MAP_FAILED)
      throw std::bad_alloc();
    base_ = static_cast<int16_t *>(base);
  }
  ~PlanarYuvMapping() {
    if (base_)
      munmap(base_, bytes_);
  }
  PlanarYuvMapping(const PlanarYuvMapping &) = delete;
  PlanarYuvMapping &operator=(const PlanarYuvMapping &) = delete;
  int16_t *data() const { return base_; }
  void RetainFirstPlane(size_t plane_samples) {
    const size_t page = size_t(sysconf(_SC_PAGESIZE));
    const size_t keep =
        (plane_samples * sizeof(int16_t) + page - 1) / page * page;
    if (keep < bytes_ &&
        munmap(reinterpret_cast<uint8_t *>(base_) + keep, bytes_ - keep) == 0)
      bytes_ = keep;
  }

private:
  int16_t *base_ = nullptr;
  size_t bytes_;
};
struct GuidedInputs {
  int width, height, padded_width, padded_height, scale;
  std::unique_ptr<PlanarYuvMapping> guide;
  std::vector<int16_t> low_guide;
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
    state->guide = std::make_unique<PlanarYuvMapping>(n);
    int16_t *yuv = state->guide->data();
    allocated = Clock::now();
    if (!GuidedFloatRgbaToLinearYuv(rgba, width, height, pw, ph, wb, yuv))
      return 0;
    converted = Clock::now();
    if (RunGuidedBoxDownsample(yuv, pw, ph, log2_scale, low.data()) != 0)
      return 0;
    boxed = Clock::now();
    // Release the two unused chroma planes before allocating low RGB.
    state->guide->RetainFirstPlane(n);
    state->low_guide.assign(low.begin(), low.begin() + ln);
    guides = Clock::now();
    // The low color branch starts before CCM/DCP/tone; never downsample an
    // encoded JPEG.
    std::vector<int16_t> low_rgb(ln * 3);
    GuidedLinearYuvToRgb(low.data(), ln, low_rgb.data());
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
    jfloatArray points, jboolean u12_rgb_output) {
  using namespace photon::mgc_denoise;
  auto *state = reinterpret_cast<GuidedInputs *>(handle);
  if (!state || !buffer || !points || env->GetArrayLength(points) != 30 ||
      !std::isfinite(attenuation) || attenuation < 0)
    return -1;
  auto *rgba = static_cast<float *>(env->GetDirectBufferAddress(buffer));
  const size_t n = size_t(state->width) * state->height;
  const size_t ln = state->low_guide.size();
  const size_t output_samples =
      size_t(state->width) * ((state->height + 1) & ~1) * 3;
  if (!rgba ||
      env->GetDirectBufferCapacity(buffer) < jlong(std::max(n, ln) * 16) ||
      env->GetDirectBufferCapacity(buffer) <
          jlong(output_samples * sizeof(uint16_t)))
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
    // Every element below is written by its producer before it is read; skip value-init.
    std::unique_ptr<int16_t[]> yuv(new int16_t[ln * 3]);
    if (!SharpenFloatRgbaToYuv(rgba, ln, yuv.get()))
      return -1;
    const auto converted = Clock::now();
    // The low-resolution input has been fully consumed, so the U12 RGB result can be written
    // straight into the mapped transfer buffer and expanded on the GPU at upload.
    std::unique_ptr<uint16_t[]> float_staging;
    uint16_t *output = reinterpret_cast<uint16_t *>(rgba);
    if (!u12_rgb_output) {
      float_staging.reset(new uint16_t[output_samples]);
      output = float_staging.get();
    }
    const int result = RunGuidedUpsampleTo16Bit(
        state->guide->data(), state->padded_width, state->padded_height,
        state->low_guide.data(), yuv.get(), state->scale, state->width,
        state->height, curves, attenuation, output);
    if (result)
      return result;
    const auto reconstructed = Clock::now();
    if (!u12_rgb_output)
      SharpenRgbToFloatRgba(output, n, rgba);
    const auto finish = Clock::now();
    __android_log_print(ANDROID_LOG_INFO, "PLog_MgcGuidedUpsample",
        "render %dx%d scale=%d output=%s yuvMs=%.1f guidedMs=%.1f rgbaMs=%.1f "
        "totalNativeMs=%.1f",
        state->width, state->height, state->scale, u12_rgb_output ? "u12" : "float",
        Milliseconds(start, converted), Milliseconds(converted, reconstructed),
        Milliseconds(reconstructed, finish), Milliseconds(start, finish));
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
