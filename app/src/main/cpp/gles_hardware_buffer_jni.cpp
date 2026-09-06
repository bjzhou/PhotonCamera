#include <jni.h>
#include <cstdint>
#include <memory>
#include <android/hardware_buffer_jni.h>
#include <android/log.h>
#include <EGL/egl.h>
#include <EGL/eglext.h>
#include <GLES2/gl2.h>
#include <GLES2/gl2ext.h>

namespace {
constexpr char kLogTag[] = "PhotonHardwareBuffer";
struct HardwareBufferEglImage {
  EGLDisplay display = EGL_NO_DISPLAY;
  EGLImageKHR image = EGL_NO_IMAGE_KHR;
  AHardwareBuffer *buffer = nullptr;
  PFNEGLDESTROYIMAGEKHRPROC destroy_image = nullptr;
};

template <typename Procedure>
Procedure eglProcedure(const char *name) {
  return reinterpret_cast<Procedure>(eglGetProcAddress(name));
}

HardwareBufferEglImage *fromHardwareBufferImageJlong(jlong value) {
  return reinterpret_cast<HardwareBufferEglImage *>(
      static_cast<uintptr_t>(value));
}

jlong toHardwareBufferImageJlong(HardwareBufferEglImage *value) {
  return static_cast<jlong>(reinterpret_cast<uintptr_t>(value));
}

} // namespace

extern "C" JNIEXPORT jlong JNICALL
Java_com_hinnka_mycamera_processor_GlesHardwareBufferImage_create(
    JNIEnv *env, jobject, jobject hardware_buffer) {
  if (!hardware_buffer) {
    return 0;
  }
  const EGLDisplay display = eglGetCurrentDisplay();
  if (display == EGL_NO_DISPLAY) {
    __android_log_print(ANDROID_LOG_WARN, kLogTag,
                        "EGLImage import without a current EGL display");
    return 0;
  }
  const auto get_native_client_buffer =
      eglProcedure<PFNEGLGETNATIVECLIENTBUFFERANDROIDPROC>(
          "eglGetNativeClientBufferANDROID");
  const auto create_image =
      eglProcedure<PFNEGLCREATEIMAGEKHRPROC>("eglCreateImageKHR");
  const auto destroy_image =
      eglProcedure<PFNEGLDESTROYIMAGEKHRPROC>("eglDestroyImageKHR");
  if (!get_native_client_buffer || !create_image || !destroy_image) {
    __android_log_print(ANDROID_LOG_WARN, kLogTag,
                        "EGLImage extensions unavailable");
    return 0;
  }
  AHardwareBuffer *buffer =
      AHardwareBuffer_fromHardwareBuffer(env, hardware_buffer);
  if (!buffer) {
    __android_log_print(ANDROID_LOG_WARN, kLogTag,
                        "cannot unwrap Java HardwareBuffer");
    return 0;
  }
  const EGLClientBuffer client_buffer = get_native_client_buffer(buffer);
  if (!client_buffer) {
    __android_log_print(ANDROID_LOG_WARN, kLogTag,
                        "cannot create native EGL client buffer");
    return 0;
  }
  AHardwareBuffer_acquire(buffer);
  const EGLImageKHR image = create_image(
      display, EGL_NO_CONTEXT, EGL_NATIVE_BUFFER_ANDROID, client_buffer,
      nullptr);
  if (image == EGL_NO_IMAGE_KHR) {
    const EGLint error = eglGetError();
    AHardwareBuffer_release(buffer);
    __android_log_print(ANDROID_LOG_WARN, kLogTag,
                        "eglCreateImageKHR failed: 0x%x", error);
    return 0;
  }
  auto *result = new HardwareBufferEglImage{display, image, buffer, destroy_image};
  return toHardwareBufferImageJlong(result);
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_processor_GlesHardwareBufferImage_bind(
    JNIEnv *, jobject, jlong image_handle, jint texture_id) {
  auto *source = fromHardwareBufferImageJlong(image_handle);
  if (!source || source->display != eglGetCurrentDisplay() || texture_id == 0) {
    return JNI_FALSE;
  }
  const auto bind_image = eglProcedure<PFNGLEGLIMAGETARGETTEXTURE2DOESPROC>(
      "glEGLImageTargetTexture2DOES");
  if (!bind_image) {
    __android_log_print(ANDROID_LOG_WARN, kLogTag,
                        "glEGLImageTargetTexture2DOES unavailable");
    return JNI_FALSE;
  }
  glBindTexture(GL_TEXTURE_EXTERNAL_OES, static_cast<GLuint>(texture_id));
  bind_image(GL_TEXTURE_EXTERNAL_OES, source->image);
  const GLenum error = glGetError();
  if (error != GL_NO_ERROR) {
    __android_log_print(ANDROID_LOG_WARN, kLogTag,
                        "EGLImage external texture bind failed: 0x%x",
                        error);
    return JNI_FALSE;
  }
  return JNI_TRUE;
}

extern "C" JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_processor_GlesHardwareBufferImage_destroy(
    JNIEnv *, jobject, jlong image_handle) {
  std::unique_ptr<HardwareBufferEglImage> source(
      fromHardwareBufferImageJlong(image_handle));
  if (!source) {
    return;
  }
  if (source->display != EGL_NO_DISPLAY &&
      source->image != EGL_NO_IMAGE_KHR) {
    source->destroy_image(source->display, source->image);
  }
  if (source->buffer) {
    AHardwareBuffer_release(source->buffer);
  }
}
