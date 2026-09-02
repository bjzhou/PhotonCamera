#include <jni.h>

#include <algorithm>
#include <cmath>
#include <exception>
#include <memory>

#include <android/hardware_buffer_jni.h>
#include <android/log.h>
#include <EGL/egl.h>
#include <EGL/eglext.h>
#include <GLES2/gl2.h>
#include <GLES2/gl2ext.h>

#include "mgc_eis_reconstruction.hpp"

namespace {

using mgc_eis_reconstruction::Engine;
using mgc_eis_reconstruction::EngineConfig;
using mgc_eis_reconstruction::FrameMetadata;
using mgc_eis_reconstruction::GyroSample;
using mgc_eis_reconstruction::LensOffsetSample;
using mgc_eis_reconstruction::Quaternion;
using mgc_eis_reconstruction::Vec2;
using mgc_eis_reconstruction::Vec3;
using mgc_eis_reconstruction::norm;
using mgc_eis_reconstruction::quaternionLog;

constexpr char kLogTag[] = "PhotonMgcEis";
constexpr jlong kPendingTimestamp = -1;
// `device_key=blueline` resolves to iyk.c / product profile 7 in the installed
// MGC build.  The factory fixes these values; keeping them here prevents a UI
// or JNI caller from silently constructing an unrelated profile.
constexpr int kMgcProfileStripCount = 12;
constexpr int kMgcProfileLookaheadFrames = 7;

struct HardwareBufferEglImage {
  EGLDisplay display = EGL_NO_DISPLAY;
  EGLImageKHR image = EGL_NO_IMAGE_KHR;
  AHardwareBuffer *buffer = nullptr;
};

struct Handle {
  Handle(EngineConfig config, bool front_camera_coordinate_mode)
      : engine(std::move(config)),
        front_camera_coordinate_mode(front_camera_coordinate_mode) {}
  Engine engine;
  bool front_camera_coordinate_mode = false;
  std::uint64_t submitted_frames = 0;
  std::uint64_t emitted_frames = 0;
  std::uint64_t dropped_frames = 0;
  Vec3 latest_native_gyro;
  Quaternion previous_measured_pose = Quaternion::identity();
  Quaternion previous_virtual_pose = Quaternion::identity();
  Vec2 previous_warp_center;
  bool has_previous_output = false;
};

Handle *fromJlong(jlong value) {
  return reinterpret_cast<Handle *>(static_cast<uintptr_t>(value));
}

jlong toJlong(Handle *value) {
  return static_cast<jlong>(reinterpret_cast<uintptr_t>(value));
}

void logFailure(const char *operation, const std::exception &error) {
  __android_log_print(ANDROID_LOG_ERROR, kLogTag, "%s failed: %s", operation,
                      error.what());
}

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
Java_com_hinnka_mycamera_stabilization_MgcEisNativeBridge_create(
    JNIEnv *, jobject, jint width, jint height, jboolean front_facing,
    jfloat strength, jint lookahead_frames) {
  try {
    EngineConfig config;
    config.output_width = width;
    config.output_height = height;
    config.active_array_width = width;
    config.active_array_height = height;
    config.crop_width = width;
    config.crop_height = height;
    config.num_strips = kMgcProfileStripCount;
    config.lookahead_frames = std::clamp(static_cast<int>(lookahead_frames), 3, 10);
    config.stabilization_strength =
        std::clamp(static_cast<double>(strength), 0.0, 1.0);
    return toJlong(
        new Handle(std::move(config), front_facing == JNI_TRUE));
  } catch (const std::exception &error) {
    logFailure("create", error);
    return 0;
  }
}

extern "C" JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_stabilization_MgcEisNativeBridge_release(
    JNIEnv *, jobject, jlong handle) {
  delete fromJlong(handle);
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_stabilization_MgcEisNativeBridge_processGyro(
    JNIEnv *, jobject, jlong handle, jfloat x, jfloat y, jfloat z,
    jlong timestamp_ns) {
  Handle *state = fromJlong(handle);
  if (!state) {
    return JNI_FALSE;
  }
  try {
    // V25 0x22C097C writes `STP S1, S0, [SP]`: the native gyro sample therefore
    // receives Java Y then Java X. Front-camera mode negates Java Y and Z
    // before that ordered store.
    const double native_x = state->front_camera_coordinate_mode ? -y : y;
    const double native_y = x;
    const double native_z = state->front_camera_coordinate_mode ? -z : z;
    state->latest_native_gyro = {native_x, native_y, native_z};
    return state->engine.pushGyro(
               GyroSample{timestamp_ns,
                          Vec3{native_x, native_y, native_z}})
               ? JNI_TRUE
               : JNI_FALSE;
  } catch (const std::exception &error) {
    logFailure("processGyro", error);
    return JNI_FALSE;
  }
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_stabilization_MgcEisNativeBridge_processLensOffset(
    JNIEnv *, jobject, jlong handle, jfloat x_shift_pixels,
    jfloat y_shift_pixels, jlong timestamp_ns, jint camera_type) {
  Handle *state = fromJlong(handle);
  if (!state) {
    return JNI_FALSE;
  }
  try {
    return state->engine.pushLensOffset(LensOffsetSample{
               timestamp_ns,
               Vec2{x_shift_pixels, y_shift_pixels},
               camera_type,
           })
               ? JNI_TRUE
               : JNI_FALSE;
  } catch (const std::exception &error) {
    logFailure("processLensOffset", error);
    return JNI_FALSE;
  }
}

extern "C" JNIEXPORT jlong JNICALL
Java_com_hinnka_mycamera_stabilization_MgcEisNativeBridge_processFrame(
    JNIEnv *env, jobject, jlong handle, jlong source_timestamp_ns,
    jlong first_row_center_timestamp_ns,
    jlong exposure_time_ns, jlong rolling_shutter_skew_ns,
    jfloat inverse_focal_length,
    jint active_width, jint active_height, jint crop_width, jint crop_height,
    jfloatArray row_homographies, jfloatArray output_state) {
  Handle *state = fromJlong(handle);
  if (!state || !row_homographies ||
      env->GetArrayLength(row_homographies) < 12 * 9) {
    return kPendingTimestamp;
  }
  try {
    ++state->submitted_frames;
    state->engine.setActiveArraySize(active_width, active_height);
    state->engine.setCropWindowSize(crop_width, crop_height);
    FrameMetadata frame;
    frame.source_timestamp_ns = source_timestamp_ns;
    frame.frame_timestamp_ns = first_row_center_timestamp_ns;
    frame.exposure_time_ns = exposure_time_ns;
    frame.rolling_shutter_skew_ns = rolling_shutter_skew_ns;
    frame.inverse_focal_length = inverse_focal_length;
    const auto result = state->engine.processFrame(frame);
    if (!result) {
      return kPendingTimestamp;
    }
    if (result->strip_input_to_output.size() != 12) {
      ++state->dropped_frames;
      if (state->dropped_frames <= 3 || state->dropped_frames % 30 == 0) {
        __android_log_print(
            ANDROID_LOG_WARN, kLogTag,
            "MGC profile dropped output ts=%lld submitted=%llu dropped=%llu",
            static_cast<long long>(result->timestamp_ns),
            static_cast<unsigned long long>(state->submitted_frames),
            static_cast<unsigned long long>(state->dropped_frames));
      }
      return -result->source_timestamp_ns;
    }

    for (const auto &matrix : result->strip_input_to_output) {
      for (const double value : matrix.v) {
        if (!std::isfinite(value)) {
          ++state->dropped_frames;
          __android_log_print(ANDROID_LOG_ERROR, kLogTag,
                              "MGC profile rejected non-finite matrix ts=%lld",
                              static_cast<long long>(result->timestamp_ns));
          return -result->source_timestamp_ns;
        }
      }
    }
    ++state->emitted_frames;
    const auto &first_matrix = result->strip_input_to_output.front();
    const Vec2 warp_center = first_matrix.transformPoint({});
    double minimum_row_x = warp_center.x;
    double maximum_row_x = warp_center.x;
    double minimum_row_y = warp_center.y;
    double maximum_row_y = warp_center.y;
    for (const auto &row_matrix : result->strip_input_to_output) {
      const Vec2 row_center = row_matrix.transformPoint({});
      minimum_row_x = std::min(minimum_row_x, row_center.x);
      maximum_row_x = std::max(maximum_row_x, row_center.x);
      minimum_row_y = std::min(minimum_row_y, row_center.y);
      maximum_row_y = std::max(maximum_row_y, row_center.y);
    }
    double measured_delta = 0.0;
    double virtual_delta = 0.0;
    Vec2 warp_delta;
    if (state->has_previous_output) {
      measured_delta = norm(quaternionLog(
          result->diagnostic_measured_pose *
          state->previous_measured_pose.inverse()));
      virtual_delta = norm(quaternionLog(
          result->diagnostic_virtual_pose *
          state->previous_virtual_pose.inverse()));
      warp_delta = {warp_center.x - state->previous_warp_center.x,
                    warp_center.y - state->previous_warp_center.y};
    }
    state->previous_measured_pose = result->diagnostic_measured_pose;
    state->previous_virtual_pose = result->diagnostic_virtual_pose;
    state->previous_warp_center = warp_center;
    state->has_previous_output = true;
    __android_log_print(
        ANDROID_LOG_INFO, kLogTag,
        "MGC profile trace ts=%lld n=%llu gyro=%.6f measuredD=%.6f "
        "virtualD=%.6f center=(%.6f,%.6f) centerD=(%.6f,%.6f) "
        "rowSpan=(%.6f,%.6f) tripod=%d",
        static_cast<long long>(result->timestamp_ns),
        static_cast<unsigned long long>(state->emitted_frames),
        norm(state->latest_native_gyro), measured_delta, virtual_delta,
        warp_center.x, warp_center.y, warp_delta.x, warp_delta.y,
        maximum_row_x - minimum_row_x, maximum_row_y - minimum_row_y,
        result->tripod_mode ? 1 : 0);
    if (state->emitted_frames <= 3 || state->emitted_frames % 30 == 0) {
      const auto &matrix = result->strip_input_to_output.front().v;
      __android_log_print(
          ANDROID_LOG_INFO, kLogTag,
          "MGC profile output ts=%lld submitted=%llu emitted=%llu h00=%.6f "
          "h02=%.6f h11=%.6f h12=%.6f h22=%.6f",
          static_cast<long long>(result->timestamp_ns),
          static_cast<unsigned long long>(state->submitted_frames),
          static_cast<unsigned long long>(state->emitted_frames), matrix[0],
          matrix[2], matrix[4], matrix[5], matrix[8]);
    }

    jfloat *matrices = env->GetFloatArrayElements(row_homographies, nullptr);
    if (!matrices) {
      return -result->source_timestamp_ns;
    }
    for (std::size_t strip = 0; strip < result->strip_input_to_output.size();
         ++strip) {
      const auto &matrix = result->strip_input_to_output[strip].v;
      for (std::size_t value = 0; value < matrix.size(); ++value) {
        matrices[strip * 9 + value] = static_cast<jfloat>(matrix[value]);
      }
    }
    env->ReleaseFloatArrayElements(row_homographies, matrices, 0);

    if (output_state && env->GetArrayLength(output_state) >= 2) {
      const jfloat values[2] = {
          static_cast<jfloat>(result->applied_strength),
          result->tripod_mode ? 1.0f : 0.0f,
      };
      env->SetFloatArrayRegion(output_state, 0, 2, values);
    }
    return result->source_timestamp_ns;
  } catch (const std::exception &error) {
    logFailure("processFrame", error);
    return kPendingTimestamp;
  }
}

extern "C" JNIEXPORT jlong JNICALL
Java_com_hinnka_mycamera_stabilization_MgcEisNativeBridge_createHardwareBufferImage(
    JNIEnv *env, jobject, jobject hardware_buffer) {
  if (!hardware_buffer) {
    return 0;
  }
  const EGLDisplay display = eglGetCurrentDisplay();
  if (display == EGL_NO_DISPLAY) {
    __android_log_print(ANDROID_LOG_WARN, kLogTag,
                        "MGC EGLImage import without a current EGL display");
    return 0;
  }
  const auto get_native_client_buffer =
      eglProcedure<PFNEGLGETNATIVECLIENTBUFFERANDROIDPROC>(
          "eglGetNativeClientBufferANDROID");
  const auto create_image =
      eglProcedure<PFNEGLCREATEIMAGEKHRPROC>("eglCreateImageKHR");
  if (!get_native_client_buffer || !create_image) {
    __android_log_print(ANDROID_LOG_WARN, kLogTag,
                        "MGC EGLImage extensions unavailable");
    return 0;
  }
  AHardwareBuffer *buffer =
      AHardwareBuffer_fromHardwareBuffer(env, hardware_buffer);
  if (!buffer) {
    __android_log_print(ANDROID_LOG_WARN, kLogTag,
                        "MGC cannot unwrap Java HardwareBuffer");
    return 0;
  }
  const EGLClientBuffer client_buffer = get_native_client_buffer(buffer);
  if (!client_buffer) {
    __android_log_print(ANDROID_LOG_WARN, kLogTag,
                        "MGC cannot create native EGL client buffer");
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
                        "MGC eglCreateImageKHR failed: 0x%x", error);
    return 0;
  }
  auto *result = new HardwareBufferEglImage{display, image, buffer};
  return toHardwareBufferImageJlong(result);
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_stabilization_MgcEisNativeBridge_bindHardwareBufferImage(
    JNIEnv *, jobject, jlong image_handle, jint texture_id) {
  auto *source = fromHardwareBufferImageJlong(image_handle);
  if (!source || source->display != eglGetCurrentDisplay() || texture_id == 0) {
    return JNI_FALSE;
  }
  const auto bind_image = eglProcedure<PFNGLEGLIMAGETARGETTEXTURE2DOESPROC>(
      "glEGLImageTargetTexture2DOES");
  if (!bind_image) {
    __android_log_print(ANDROID_LOG_WARN, kLogTag,
                        "MGC glEGLImageTargetTexture2DOES unavailable");
    return JNI_FALSE;
  }
  glBindTexture(GL_TEXTURE_EXTERNAL_OES, static_cast<GLuint>(texture_id));
  bind_image(GL_TEXTURE_EXTERNAL_OES, source->image);
  const GLenum error = glGetError();
  if (error != GL_NO_ERROR) {
    __android_log_print(ANDROID_LOG_WARN, kLogTag,
                        "MGC EGLImage external texture bind failed: 0x%x",
                        error);
    return JNI_FALSE;
  }
  return JNI_TRUE;
}

extern "C" JNIEXPORT void JNICALL
Java_com_hinnka_mycamera_stabilization_MgcEisNativeBridge_destroyHardwareBufferImage(
    JNIEnv *, jobject, jlong image_handle) {
  std::unique_ptr<HardwareBufferEglImage> source(
      fromHardwareBufferImageJlong(image_handle));
  if (!source) {
    return;
  }
  const auto destroy_image =
      eglProcedure<PFNEGLDESTROYIMAGEKHRPROC>("eglDestroyImageKHR");
  if (destroy_image && source->display != EGL_NO_DISPLAY &&
      source->image != EGL_NO_IMAGE_KHR) {
    destroy_image(source->display, source->image);
  }
  if (source->buffer) {
    AHardwareBuffer_release(source->buffer);
  }
}
