// Standalone ARM64 probe: no APK or Android instrumentation installation.
#include "mgc_denoise_static.h"
#include "mgc_sharpen_adapter.h"
#include <EGL/egl.h>
#include <GLES3/gl31.h>
#include <algorithm>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <fstream>
#include <iterator>
#include <jni.h>
#include <string>
#include <vector>
using namespace photon::mgc_denoise;
extern "C" jlong Java_com_hinnka_mycamera_raw_MgcGuidedUpsample_nativePrepare(
    JNIEnv *, jobject, jobject, jint, jint, jint, jfloatArray);
extern "C" jint Java_com_hinnka_mycamera_raw_MgcGuidedUpsample_nativeRender(
    JNIEnv *, jobject, jlong, jobject, jfloat, jfloatArray);
extern "C" void
Java_com_hinnka_mycamera_raw_MgcGuidedUpsample_nativeRelease(JNIEnv *, jobject,
                                                             jlong);
extern "C" jboolean
Java_com_hinnka_mycamera_raw_RawFloatTextureTransfer_nativeUpload(JNIEnv *,
                                                                  jobject, jint,
                                                                  jint, jint,
                                                                  jint);
static void Check(bool ok, const char *message) {
  if (!ok) {
    fprintf(stderr, "FAIL %s\n", message);
    exit(1);
  }
}
template <class T>
static void Write(const std::string &path, const std::vector<T> &v) {
  FILE *f = fopen(path.c_str(), "wb");
  Check(f, "open fixture");
  Check(fwrite(v.data(), sizeof(T), v.size(), f) == v.size(), "write fixture");
  fclose(f);
}
struct Buffer {
  void *data;
  jlong bytes;
};
static JNIEnv FakeJni() {
  static JNINativeInterface functions{};
  functions.GetDirectBufferAddress = [](JNIEnv *, jobject b) {
    return reinterpret_cast<Buffer *>(b)->data;
  };
  functions.GetDirectBufferCapacity = [](JNIEnv *, jobject b) {
    return reinterpret_cast<Buffer *>(b)->bytes;
  };
  functions.GetArrayLength = [](JNIEnv *, jarray a) {
    return jsize(reinterpret_cast<Buffer *>(a)->bytes / 4);
  };
  functions.GetFloatArrayRegion = [](JNIEnv *, jfloatArray a, jsize start,
                                     jsize n, jfloat *out) {
    auto *p = static_cast<float *>(reinterpret_cast<Buffer *>(a)->data);
    std::copy(p + start, p + start + n, out);
  };
  functions.ExceptionCheck = [](JNIEnv *) -> jboolean { return JNI_FALSE; };
  return JNIEnv{&functions};
}
static std::vector<float> Curves() {
  std::vector<float> a(30);
  for (int c = 0; c < 3; c++)
    for (int p = 0; p < 5; p++) {
      a[c * 5 + p] = p * .25f;
      a[15 + c * 5 + p] = a[c * 5 + p] * 1.375f;
    }
  return a;
}
static std::vector<float> Jni(int w, int h, int scale, int originX = 0, int originY = 0) {
  auto env = FakeJni();
  const int pw = (w + 127) & ~127, ph = (h + 15) & ~15, lw = pw / scale,
            lh = ph / scale;
  const size_t count = std::max(size_t(w) * h, size_t(lw) * lh);
  std::vector<float> pixels(count * 4 + 16, 123.f);
  for (int i = 0; i < w * h; i++) {
    const int x = i % w + originX, y = i / w + originY;
    pixels[i * 4] = .18f + ((x * 17 + y * 3) % 113) * .0004f;
    pixels[i * 4 + 1] = .18f + ((x * 3 + y * 13) % 127) * .0003f;
    pixels[i * 4 + 2] = .18f;
    pixels[i * 4 + 3] = 1;
  }
  Buffer buffer{pixels.data(), jlong(count * 16)};
  float wb[] = {1, 1, 1};
  Buffer gains{wb, 12};
  auto handle = Java_com_hinnka_mycamera_raw_MgcGuidedUpsample_nativePrepare(
      &env, nullptr, reinterpret_cast<jobject>(&buffer), w, h, scale == 2 ? 1 : 2,
      reinterpret_cast<jfloatArray>(&gains));
  Check(handle != 0, "JNI prepare including original low YUV->RGB");
  for (int i = 0; i < lw * lh; i++)
    for (int c = 0; c < 3; c++)
      pixels[i * 4 + c] = sqrtf(std::max(0.f, pixels[i * 4 + c]));
  auto curves = Curves();
  Buffer curve{curves.data(), 120};
  int result = Java_com_hinnka_mycamera_raw_MgcGuidedUpsample_nativeRender(
      &env, nullptr, handle, reinterpret_cast<jobject>(&buffer), 1.f,
      reinterpret_cast<jfloatArray>(&curve));
  Java_com_hinnka_mycamera_raw_MgcGuidedUpsample_nativeRelease(&env, nullptr,
                                                               handle);
  Check(result == 0, "JNI guided render");
  for (int i = 0; i < w * h; i++)
    for (int c = 0; c < 4; c++)
      Check(std::isfinite(pixels[i * 4 + c]) && pixels[i * 4 + c] >= 0 &&
                pixels[i * 4 + c] <= 1,
            "finite float output");
  for (size_t i = count * 4; i < pixels.size(); i++)
    Check(pixels[i] == 123.f, "JNI buffer guard");
  printf("JNI %dx%d passed\n", w, h);
  pixels.resize(size_t(w) * h * 4);
  return pixels;
}
static void Gpu(const char *shaderPath, const char *boxPath) {
  EGLDisplay display = eglGetDisplay(EGL_DEFAULT_DISPLAY);
  Check(eglInitialize(display, nullptr, nullptr), "EGL initialize");
  EGLint attributes[] = {EGL_SURFACE_TYPE, EGL_PBUFFER_BIT, EGL_RENDERABLE_TYPE,
                         EGL_OPENGL_ES3_BIT, EGL_NONE};
  EGLConfig config;
  EGLint count;
  Check(eglChooseConfig(display, attributes, &config, 1, &count) && count > 0,
        "EGL config");
  EGLint ca[] = {EGL_CONTEXT_CLIENT_VERSION, 3, EGL_NONE},
         pa[] = {EGL_WIDTH, 1, EGL_HEIGHT, 1, EGL_NONE};
  auto context = eglCreateContext(display, config, EGL_NO_CONTEXT, ca);
  auto surface = eglCreatePbufferSurface(display, config, pa);
  Check(eglMakeCurrent(display, surface, surface, context), "EGL current");
  printf("GPU %s / %s\n", glGetString(GL_RENDERER), glGetString(GL_VERSION));
  const int w = 37, h = 19, n = w * h;
  std::vector<float> pixels(n * 4);
  for (int i = 0; i < n; i++) {
    pixels[i * 4] = i / 2048.f;
    pixels[i * 4 + 1] = (n - i) / 2048.f;
    pixels[i * 4 + 2] = .25f;
    pixels[i * 4 + 3] = 1;
  }
  GLuint textures[2];
  glGenTextures(2, textures);
  for (auto t : textures) {
    glBindTexture(GL_TEXTURE_2D, t);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA16F, w, h, 0, GL_RGBA, GL_FLOAT,
                 pixels.data());
  }
  GLuint framebuffer, pbo;
  glGenFramebuffers(1, &framebuffer);
  glBindFramebuffer(GL_FRAMEBUFFER, framebuffer);
  glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D,
                         textures[0], 0);
  Check(glCheckFramebufferStatus(GL_FRAMEBUFFER) == GL_FRAMEBUFFER_COMPLETE,
        "RGBA16F framebuffer");
  glGenBuffers(1, &pbo);
  glBindBuffer(GL_PIXEL_PACK_BUFFER, pbo);
  glBufferData(GL_PIXEL_PACK_BUFFER, pixels.size() * 4, nullptr,
               GL_STREAM_COPY);
  glReadPixels(0, 0, w, h, GL_RGBA, GL_FLOAT, nullptr);
  auto *mapped = static_cast<float *>(glMapBufferRange(
      GL_PIXEL_PACK_BUFFER, 0, pixels.size() * 4, GL_MAP_READ_BIT));
  Check(mapped && std::equal(pixels.begin(), pixels.end(), mapped),
        "float PBO fallback preserves all samples");
  Check(glUnmapBuffer(GL_PIXEL_PACK_BUFFER), "PBO unmap");
  glBindBuffer(GL_PIXEL_PACK_BUFFER, 0);
  std::ifstream file(shaderPath);
  std::string source((std::istreambuf_iterator<char>(file)), {});
  Check(!source.empty(), "production shader source");
  const char *text = source.c_str();
  GLuint shader = glCreateShader(GL_COMPUTE_SHADER);
  glShaderSource(shader, 1, &text, nullptr);
  glCompileShader(shader);
  GLint ok;
  glGetShaderiv(shader, GL_COMPILE_STATUS, &ok);
  Check(ok, "float compute compile");
  GLuint program = glCreateProgram();
  glAttachShader(program, shader);
  glLinkProgram(program);
  glGetProgramiv(program, GL_LINK_STATUS, &ok);
  Check(ok, "float compute link");
  glUseProgram(program);
  glActiveTexture(GL_TEXTURE0);
  glBindTexture(GL_TEXTURE_2D, textures[0]);
  glUniform1i(glGetUniformLocation(program, "uInput"), 0);
  glUniform2i(glGetUniformLocation(program, "uSize"), w, h);
  glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 0, pbo);
  glDispatchCompute((w + 7) / 8, (h + 7) / 8, 1);
  glMemoryBarrier(GL_SHADER_STORAGE_BARRIER_BIT | GL_BUFFER_UPDATE_BARRIER_BIT);
  glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 0, 0);
  glBindBuffer(GL_PIXEL_PACK_BUFFER, pbo);
  mapped = static_cast<float *>(
      glMapBufferRange(GL_PIXEL_PACK_BUFFER, 0, pixels.size() * 4,
                       GL_MAP_READ_BIT | GL_MAP_WRITE_BIT));
  Check(mapped && std::equal(pixels.begin(), pixels.end(), mapped),
        "float SSBO preserves all samples including tail");
  for (int i = 0; i < n; i++)
    mapped[i * 4] += .125f;
  Check(glUnmapBuffer(GL_PIXEL_PACK_BUFFER), "SSBO unmap");
  glBindBuffer(GL_PIXEL_PACK_BUFFER, 0);
  Check(Java_com_hinnka_mycamera_raw_RawFloatTextureTransfer_nativeUpload(
            nullptr, nullptr, pbo, textures[1], w, h),
        "native float upload");
  glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D,
                         textures[1], 0);
  std::vector<float> result(n * 4);
  glReadPixels(0, 0, w, h, GL_RGBA, GL_FLOAT, result.data());
  for (int i = 0; i < n; i++)
    Check(result[i * 4] == pixels[i * 4] + .125f,
          "RGBA16F upload/sample precision");
  // Exercise Filmic's new padded linear-color branch with the production
  // shader.
  std::ifstream boxFile(boxPath);
  std::string boxSource((std::istreambuf_iterator<char>(boxFile)), {});
  Check(!boxSource.empty(), "production box shader");
  const char *vertexSource =
      "#version 300 es\nvoid main(){vec2 "
      "p=vec2(float((gl_VertexID<<1)&2),float(gl_VertexID&2));gl_Position=vec4("
      "p*2.0-1.0,0.0,1.0);}";
  GLuint vs = glCreateShader(GL_VERTEX_SHADER),
         fs = glCreateShader(GL_FRAGMENT_SHADER);
  const char *boxText = boxSource.c_str();
  glShaderSource(vs, 1, &vertexSource, nullptr);
  glCompileShader(vs);
  glShaderSource(fs, 1, &boxText, nullptr);
  glCompileShader(fs);
  glGetShaderiv(vs, GL_COMPILE_STATUS, &ok);
  Check(ok, "box vertex compile");
  glGetShaderiv(fs, GL_COMPILE_STATUS, &ok);
  Check(ok, "box fragment compile");
  GLuint boxProgram = glCreateProgram();
  glAttachShader(boxProgram, vs);
  glAttachShader(boxProgram, fs);
  glLinkProgram(boxProgram);
  glGetProgramiv(boxProgram, GL_LINK_STATUS, &ok);
  Check(ok, "box program");
  for (int scale : {2, 4}) {
  const int lw = 128 / scale, lh = 32 / scale;
  glBindTexture(GL_TEXTURE_2D, textures[1]);
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA16F, lw, lh, 0, GL_RGBA, GL_FLOAT,
               nullptr);
  glBindTexture(GL_TEXTURE_2D, textures[0]);
  glUseProgram(boxProgram);
  glUniform1i(glGetUniformLocation(boxProgram, "uInput"), 0);
  glUniform1i(glGetUniformLocation(boxProgram, "uScale"), scale);
  glViewport(0, 0, lw, lh);
  glDrawArrays(GL_TRIANGLES, 0, 3);
  std::vector<float> boxed(lw * lh * 4);
  glReadPixels(0, 0, lw, lh, GL_RGBA, GL_FLOAT, boxed.data());
  for (int y = 0; y < lh; y++)
    for (int x = 0; x < lw; x++)
      for (int c = 0; c < 4; c++) {
        float expected = 0;
        for (int dy = 0; dy < scale; dy++)
          for (int dx = 0; dx < scale; dx++)
            expected += pixels[(std::min(y * scale + dy, h - 1) * w +
                                std::min(x * scale + dx, w - 1)) *
                                   4 +
                               c] *
                        (1.f / (scale * scale));
        Check(std::abs(boxed[(y * lw + x) * 4 + c] - expected) <= 1.f / 4096,
              "padded linear box samples");
      }
  }
  glDeleteProgram(boxProgram);
  glDeleteShader(vs);
  glDeleteShader(fs);
  printf("GPU padded linear color box passed\n");
  Check(glGetError() == GL_NO_ERROR, "GPU errors");
  glDeleteTextures(2, textures);
  glDeleteBuffers(1, &pbo);
  glDeleteFramebuffers(1, &framebuffer);
  glDeleteProgram(program);
  glDeleteShader(shader);
  eglMakeCurrent(display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
  eglDestroySurface(display, surface);
  eglDestroyContext(display, context);
  eglTerminate(display);
  printf("GPU float SSBO/PBO/upload 37x19 passed\n");
}

int main(int argc, char **argv) {
  Check(argc == 4, "fixture output directory, float and box shaders");
  Gpu(argv[2], argv[3]);
  for (int scale : {2, 4}) {
    auto full = Jni(768, 640, scale);
    for (int origin : {0, 8, 16, 24, 56, 112}) {
      auto tile = Jni(385, 321, scale, origin, origin);
      size_t mismatch = 0;
      for (int y = 52; y < 321 - 52; y++)
        for (int x = 52; x < 385 - 52; x++)
          for (int c = 0; c < 3; c++)
            mismatch += tile[(y * 385 + x) * 4 + c] !=
                        full[((y + origin) * 768 + x + origin) * 4 + c];
      printf("tile scale=%d origin=%d mismatches=%zu\n", scale, origin, mismatch);
      Check(!mismatch, "guided tile equivalence");
    }
  }
  for (auto size :
       {std::pair<int, int>{256, 64}, {129, 35}, {17, 19}, {1, 1}}) {
    int w = size.first, h = size.second, pw = (w + 127) & ~127,
        ph = (h + 15) & ~15;
    for (int scale : {2, 4}) Jni(w, h, scale);
    for (int scale : {2, 4})
      for (int strength : {0, 1}) {
        int lw = pw / scale, lh = ph / scale;
        size_t n = size_t(pw) * ph, ln = size_t(lw) * lh;
        std::vector<int16_t> input(n * 3), low(ln * 3), tone(ln * 3);
        for (int y = 0; y < ph; y++)
          for (int x = 0; x < pw; x++) {
            int xx = std::min(x, w - 1), yy = std::min(y, h - 1);
            size_t i = size_t(y) * pw + x;
            input[i] = 2000 + (xx * 31 + yy * 17) % 2000 +
                       ((xx + yy * 2) % 13 < 5 ? 1500 : 0) +
                       (xx > w / 2 ? 2500 : 0);
            input[n + i] = (xx * 13 + yy * 23) % 400 - 200;
            input[n * 2 + i] = (xx * 17 + yy * 3) % 300 - 150;
          }
        Check(RunGuidedBoxDownsample(input.data(), pw, ph, scale == 2 ? 1 : 2,
                                     low.data()) == 0,
              "box");
        for (size_t i = 0; i < ln; i++) {
          tone[i] = std::min(4095, 200 + low[i] / 3);
          tone[ln + i] = low[ln + i] / 4;
          tone[ln * 2 + i] = low[ln * 2 + i] / 4;
        }
        auto curves = Curves();
        size_t outCount = size_t(w) * ((h + 1) & ~1) * 3;
        std::vector<uint16_t> out(outCount + 128, 65535);
        Check(RunGuidedUpsampleTo16Bit(input.data(), pw, ph, low.data(),
                                       tone.data(), scale, w, h, curves.data(),
                                       float(strength), out.data()) == 0,
              "guided");
        for (size_t i = outCount; i < out.size(); i++)
          Check(out[i] == 65535, "AOT output guard");
        out.resize(size_t(w) * h * 3);
        std::string base = std::string(argv[1]) + "/" + std::to_string(w) +
                           "_" + std::to_string(h) + "_" +
                           std::to_string(scale) + "_" +
                           std::to_string(strength);
        Write(base + ".input", input);
        Write(base + ".low", low);
        Write(base + ".tone", tone);
        Write(base + ".curves", curves);
        Write(base + ".out", out);
        printf("AOT %dx%d scale=%d attenuation=%d passed\n", w, h, scale,
               strength);
      }
  }
  std::vector<float> rgba(16);
  for (int i = 0; i < 4; i++) {
    rgba[i * 4] = rgba[i * 4 + 1] = rgba[i * 4 + 2] = .5f + i / 4095.f;
    rgba[i * 4 + 3] = 1;
  }
  std::vector<int16_t> yuv(12);
  Check(SharpenFloatRgbaToYuv(rgba.data(), 4, yuv.data()), "float conversion");
  Check(yuv[0] < yuv[1] && yuv[1] < yuv[2] && yuv[2] < yuv[3],
        "sub-8bit detail preserved");
}
