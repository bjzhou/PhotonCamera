// Standalone ARM64 executable; never installs an APK or uses instrumentation.
#include "mgc_denoise_static.h"
#include "mgc_guided_prepare_adapter.h"
#include <EGL/egl.h>
#include <GLES3/gl31.h>
#include <chrono>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <limits>
#include <random>
#include <jni.h>
#include <vector>
using namespace photon::mgc_denoise;
using Clock = std::chrono::steady_clock;
extern "C" jlong Java_com_hinnka_mycamera_raw_MgcGuidedUpsample_nativePrepare(
    JNIEnv *, jobject, jobject, jint, jint, jint, jfloatArray);
extern "C" void Java_com_hinnka_mycamera_raw_MgcGuidedUpsample_nativeRelease(
    JNIEnv *, jobject, jlong);
struct Buffer { void *data; jlong bytes; };
static JNIEnv FakeJni() {
  static JNINativeInterface functions{};
  functions.GetDirectBufferAddress = [](JNIEnv *, jobject b) { return reinterpret_cast<Buffer *>(b)->data; };
  functions.GetDirectBufferCapacity = [](JNIEnv *, jobject b) { return reinterpret_cast<Buffer *>(b)->bytes; };
  functions.GetArrayLength = [](JNIEnv *, jarray a) { return jsize(reinterpret_cast<Buffer *>(a)->bytes / 4); };
  functions.GetFloatArrayRegion = [](JNIEnv *, jfloatArray a, jsize start, jsize n, jfloat *out) {
    auto *p = static_cast<float *>(reinterpret_cast<Buffer *>(a)->data);
    std::copy(p + start, p + start + n, out);
  };
  functions.ExceptionCheck = [](JNIEnv *) -> jboolean { return JNI_FALSE; };
  return JNIEnv{&functions};
}
static void Check(bool ok, const char *label) {
  if (!ok) { fprintf(stderr, "FAIL %s\n", label); std::exit(1); }
}
static double Ms(Clock::time_point a, Clock::time_point b) {
  return std::chrono::duration<double, std::milli>(b - a).count();
}
static void Original(const float *rgba, int w, int h, int pw, int ph,
                     const float wb[3], uint16_t *rgb, int16_t *yuv,
                     double *q14_ms = nullptr, double *yuv_ms = nullptr) {
  const size_t n = size_t(pw) * ph;
  const auto start = Clock::now();
#pragma omp parallel for schedule(static) num_threads(4)
  for (int y = 0; y < ph; ++y)
    for (int x = 0; x < pw; ++x) {
      const size_t src = (size_t(std::min(y, h - 1)) * w + std::min(x, w - 1)) * 4;
      for (int c = 0; c < 3; ++c) {
        const float v = rgba[src + c];
        Check(std::isfinite(v), "reference finite");
        rgb[size_t(c) * n + size_t(y) * pw + x] = uint16_t(
            std::lround(std::clamp(v * wb[c], 0.f, 1.f) * 16383.f));
      }
    }
  const auto converted = Clock::now();
  Check(RunRgbRawToYuv(rgb, pw, ph, yuv) == 0, "original AOT");
  const auto end = Clock::now();
  if (q14_ms) *q14_ms = Ms(start, converted);
  if (yuv_ms) *yuv_ms = Ms(converted, end);
}
static void Compare(const std::vector<float> &rgba, int w, int h, const float wb[3]) {
  const int pw = (w + 127) & ~127, ph = (h + 15) & ~15;
  const size_t n = size_t(pw) * ph;
  std::vector<uint16_t> rgb(n * 3);
  std::vector<int16_t> old(n * 3), now(n * 3 + 32, 12345);
  Original(rgba.data(), w, h, pw, ph, wb, rgb.data(), old.data());
  Check(GuidedFloatRgbaToLinearYuv(rgba.data(), w, h, pw, ph, wb, now.data()), "fused valid");
  if (memcmp(old.data(), now.data(), n * 6)) {
    for (size_t i = 0; i < n * 3; ++i) if (old[i] != now[i]) {
      fprintf(stderr, "mismatch %dx%d wb=%g,%g,%g index=%zu old=%d new=%d\n",
              w, h, wb[0], wb[1], wb[2], i, old[i], now[i]); break;
    }
    std::exit(2);
  }
  for (size_t i = n * 3; i < now.size(); ++i) Check(now[i] == 12345, "output guard");
}
static void Numerics() {
  std::mt19937 random(1709);
  const float gains[][3] = {{1.f,1.f,1.f},{.001f,.73f,4.18f},{2.f,1.f,1.7f},
      {std::numeric_limits<float>::max(),.00001f,1000.f}};
  size_t checked = 0;
  for (auto shape : {std::pair<int,int>{1,1},{3,5},{127,15},{128,16},{129,17},
                     {385,321},{1024,1024},{2728,2048}}) {
    const int w = shape.first, h = shape.second;
    std::vector<float> rgba(size_t(w) * h * 4);
    for (float &v : rgba) v = float(int(random() % 65536) - 16384) / 16383.f;
    for (const auto &wb : gains) { Compare(rgba, w, h, wb); checked += size_t(w) * h; }
  }
  // All Q14 levels on every axis; ties and neighbors exercise lround's rule.
  for (int axis = 0; axis < 3; ++axis) {
    std::vector<float> rgba(16384 * 4);
    for (int i = 0; i < 16384; ++i) for (int c = 0; c < 4; ++c)
      rgba[i * 4 + c] = c == axis ? float(i) / 16383.f : float(random() % 16384) / 16383.f;
    Compare(rgba, 128, 128, gains[0]);
    for (int delta = -1; delta <= 1; ++delta) {
      for (int i = 0; i < 16384; ++i) {
        const float tie = (float(i) + .5f) / 16383.f;
        rgba[i * 4 + axis] = delta == 0 ? tie : std::nextafter(tie, delta < 0 ? 0.f : 2.f);
      }
      Compare(rgba, 128, 128, gains[0]);
    }
  }
  for (float bad : {std::numeric_limits<float>::infinity(),
                    -std::numeric_limits<float>::infinity(),
                    std::numeric_limits<float>::quiet_NaN()})
    for (int pixel = 0; pixel < 15; ++pixel) for (int c = 0; c < 3; ++c) {
      std::vector<float> rgba(15 * 4, .5f); std::vector<int16_t> out(128 * 16 * 3);
      rgba[pixel * 4 + c] = bad;
      Check(!GuidedFloatRgbaToLinearYuv(rgba.data(), 3, 5, 128, 16, gains[0], out.data()), "nonfinite rejection");
    }
  {
    std::vector<float> rgba(3 * 5 * 4, .5f);
    std::vector<int16_t> out(128 * 16 * 3);
    Check(!GuidedFloatRgbaToLinearYuv(rgba.data(), 3, 5, 127, 16, gains[0], out.data()), "non-vector-aligned padding");
    Check(!GuidedFloatRgbaToLinearYuv(rgba.data(), 3, 5, 128, 4, gains[0], out.data()), "short padded height");
    Check(!GuidedFloatRgbaToLinearYuv(rgba.data(), 129, 5, 128, 16, gains[0], out.data()), "short padded width");
    for (size_t i = 0; i < rgba.size() / 4; ++i) rgba[i * 4 + 3] = std::numeric_limits<float>::quiet_NaN();
    Compare(rgba, 3, 5, gains[0]); // Alpha is not part of the camera RGB boundary.
  }
  printf("PASS AOT equivalence: %zu+ pixels, WB/clipping/overflow, Q14 axes/ties, odd padding, finite rejection\n", checked);
}
static void Benchmark(const char *kind, const float *rgba, int w, int h) {
  const int pw = (w + 127) & ~127, ph = (h + 15) & ~15;
  const size_t n = size_t(pw) * ph;
  const float wb[3] = {2.14f,1.f,1.62f};
  std::vector<uint16_t> rgb(n * 3);
  std::vector<int16_t> old(n * 3), now(n * 3);
  std::vector<double> q, y, fused;
  for (int iteration = 0; iteration < 10; ++iteration) {
    double qms, yms;
    Original(rgba, w, h, pw, ph, wb, rgb.data(), old.data(), &qms, &yms);
    const auto begin = Clock::now();
    Check(GuidedFloatRgbaToLinearYuv(rgba, w, h, pw, ph, wb, now.data()), "benchmark valid");
    const auto end = Clock::now();
    Check(old == now, "benchmark pixels");
    if (iteration >= 2) { q.push_back(qms); y.push_back(yms); fused.push_back(Ms(begin, end)); }
  }
  std::sort(q.begin(), q.end()); std::sort(y.begin(), y.end()); std::sort(fused.begin(), fused.end());
  printf("%s %dx%d median q14=%.2fms AOT=%.2fms fused=%.2fms (preallocated)\n",kind,w,h,q[4],y[4],fused[4]);
}
static void MappedBenchmark() {
  EGLDisplay display = eglGetDisplay(EGL_DEFAULT_DISPLAY);
  Check(eglInitialize(display, nullptr, nullptr), "EGL init");
  const EGLint attrs[] = {EGL_SURFACE_TYPE,EGL_PBUFFER_BIT,EGL_RENDERABLE_TYPE,EGL_OPENGL_ES3_BIT,EGL_NONE};
  EGLConfig config; EGLint count;
  Check(eglChooseConfig(display,attrs,&config,1,&count) && count,"EGL config");
  const EGLint context_attrs[] = {EGL_CONTEXT_CLIENT_VERSION,3,EGL_NONE};
  const EGLint surface_attrs[] = {EGL_WIDTH,1,EGL_HEIGHT,1,EGL_NONE};
  auto context = eglCreateContext(display,config,EGL_NO_CONTEXT,context_attrs);
  auto surface = eglCreatePbufferSurface(display,config,surface_attrs);
  Check(eglMakeCurrent(display,surface,surface,context),"EGL current");
  printf("GPU %s / %s\n",glGetString(GL_RENDERER),glGetString(GL_VERSION));
  const int w=2728,h=2048,n=w*h;
  const char *source="#version 310 es\nprecision highp float;precision highp int;layout(local_size_x=128) in;layout(std430,binding=0) writeonly buffer Pixels{vec4 pixels[];};uniform int uCount;void main(){uint i=gl_GlobalInvocationID.x;if(i>=uint(uCount))return;pixels[i]=vec4(float((i*13u)%16384u),float((i*47u)%16384u),float((i*101u)%16384u),16383.0)/16383.0;}";
  GLuint shader=glCreateShader(GL_COMPUTE_SHADER);glShaderSource(shader,1,&source,nullptr);glCompileShader(shader);
  GLint ok;glGetShaderiv(shader,GL_COMPILE_STATUS,&ok);Check(ok,"compute compile");
  GLuint program=glCreateProgram();glAttachShader(program,shader);glLinkProgram(program);
  glGetProgramiv(program,GL_LINK_STATUS,&ok);Check(ok,"compute link");
  GLuint buffer;glGenBuffers(1,&buffer);glBindBuffer(GL_SHADER_STORAGE_BUFFER,buffer);
  GLint64 limit;glGetInteger64v(GL_MAX_SHADER_STORAGE_BLOCK_SIZE,&limit);Check(int64_t(n)*16<=limit,"SSBO limit");
  glBufferData(GL_SHADER_STORAGE_BUFFER,size_t(n)*16,nullptr,GL_STREAM_COPY);
  glUseProgram(program);glUniform1i(glGetUniformLocation(program,"uCount"),n);
  glBindBufferBase(GL_SHADER_STORAGE_BUFFER,0,buffer);glDispatchCompute((n+127)/128,1,1);
  glMemoryBarrier(GL_SHADER_STORAGE_BARRIER_BIT|GL_BUFFER_UPDATE_BARRIER_BIT);
  glBindBufferBase(GL_SHADER_STORAGE_BUFFER,0,0);glBindBuffer(GL_PIXEL_PACK_BUFFER,buffer);
  auto mapped=static_cast<float*>(glMapBufferRange(GL_PIXEL_PACK_BUFFER,0,size_t(n)*16,GL_MAP_READ_BIT|GL_MAP_WRITE_BIT));
  Check(mapped && glGetError()==GL_NO_ERROR,"mapped GPU-produced input");
  std::vector<float> heap(mapped,mapped+size_t(n)*4);
  Benchmark("heap",heap.data(),w,h);Benchmark("GPU-mapped",mapped,w,h);
  auto env = FakeJni();
  float wb[] = {2.14f,1.f,1.62f};
  Buffer input{mapped,jlong(n)*16},gains{wb,12};
  const auto prepare_begin = Clock::now();
  const auto handle = Java_com_hinnka_mycamera_raw_MgcGuidedUpsample_nativePrepare(
      &env,nullptr,reinterpret_cast<jobject>(&input),w,h,1,reinterpret_cast<jfloatArray>(&gains));
  const auto prepare_end = Clock::now();
  Check(handle != 0,"complete mapped nativePrepare");
  printf("GPU-mapped %dx%d complete nativePrepare=%.2fms (fresh allocations, box, low RGB, mapped writeback)\n",w,h,Ms(prepare_begin,prepare_end));
  Java_com_hinnka_mycamera_raw_MgcGuidedUpsample_nativeRelease(&env,nullptr,handle);
  Check(glUnmapBuffer(GL_PIXEL_PACK_BUFFER),"unmap");glDeleteBuffers(1,&buffer);
  glDeleteProgram(program);glDeleteShader(shader);eglMakeCurrent(display,EGL_NO_SURFACE,EGL_NO_SURFACE,EGL_NO_CONTEXT);
  eglDestroySurface(display,surface);eglDestroyContext(display,context);eglTerminate(display);
}
int main() { Numerics(); MappedBenchmark(); }
