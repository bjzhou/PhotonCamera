#include "raw10_unpack.h"

#include <android/log.h>
#include <jni.h>

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_Raw10Unpacker_unpackNative(
    JNIEnv *env, jobject, jobject sourceBuffer, jint sourceLimit,
    jobject destinationBuffer, jint width, jint height, jint rowStride) {
  if (!sourceBuffer || !destinationBuffer || width <= 0 || width % 4 != 0 ||
      height <= 0 || height % 2 != 0 || rowStride <= 0 || sourceLimit < 0) {
    __android_log_print(ANDROID_LOG_ERROR, "Raw10Unpacker",
                        "Invalid RAW10 geometry: %dx%d stride=%d limit=%d",
                        width, height, rowStride, sourceLimit);
    return JNI_FALSE;
  }

  const int64_t packedRowBytes = static_cast<int64_t>(width) / 4 * 5;
  const int64_t sourceBytes = static_cast<int64_t>(height - 1) * rowStride + packedRowBytes;
  const int64_t destinationBytes = static_cast<int64_t>(width) * height * sizeof(uint16_t);
  const auto *source = static_cast<const uint8_t *>(env->GetDirectBufferAddress(sourceBuffer));
  auto *destination = static_cast<uint16_t *>(env->GetDirectBufferAddress(destinationBuffer));
  const jlong sourceCapacity = env->GetDirectBufferCapacity(sourceBuffer);
  const jlong destinationCapacity = env->GetDirectBufferCapacity(destinationBuffer);
  if (!source || !destination || rowStride < packedRowBytes ||
      sourceLimit > sourceCapacity || sourceBytes > sourceLimit ||
      destinationCapacity < destinationBytes ||
      reinterpret_cast<uintptr_t>(destination) % alignof(uint16_t) != 0) {
    __android_log_print(ANDROID_LOG_ERROR, "Raw10Unpacker",
                        "Invalid RAW10 buffers: %dx%d stride=%d limit=%d srcCapacity=%lld dstCapacity=%lld",
                        width, height, rowStride, sourceLimit,
                        static_cast<long long>(sourceCapacity), static_cast<long long>(destinationCapacity));
    return JNI_FALSE;
  }

  photon::UnpackRaw10(source, destination, static_cast<size_t>(width),
                     static_cast<size_t>(height), static_cast<size_t>(rowStride));
  return JNI_TRUE;
}
