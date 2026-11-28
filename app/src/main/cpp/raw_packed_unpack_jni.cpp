#include "raw_packed_unpack.h"

#include <android/hardware_buffer_jni.h>
#include <android/log.h>
#include <jni.h>

namespace {

// HAL_PIXEL_FORMAT_RAW10/RAW12 match the public ImageFormat values. AHardwareBuffer
// does not expose named NDK constants for these packed formats.
constexpr uint32_t kRaw10Format = 0x25;
constexpr uint32_t kRaw12Format = 0x26;

uint32_t PackedBitsPerPixel(uint32_t format) {
  switch (format) {
    case kRaw10Format: return 10;
    case kRaw12Format: return 12;
    default: return 0;
  }
}

}  // namespace

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_RawPackedUnpacker_validateHardwareBufferNative(
    JNIEnv *env, jobject, jobject hardwareBuffer, jint format, jint width, jint height) {
  const uint32_t bits = PackedBitsPerPixel(format);
  if (!hardwareBuffer || bits == 0) return JNI_FALSE;
  AHardwareBuffer *buffer = AHardwareBuffer_fromHardwareBuffer(env, hardwareBuffer);
  if (!buffer) return JNI_FALSE;
  AHardwareBuffer_Desc desc{};
  AHardwareBuffer_describe(buffer, &desc);

  // For packed RAW, framework getLockedImageInfo interprets the GraphicBuffer stride
  // as bytes and can abort if it is smaller than the packed row. Inspect it without
  // locking pixels or calling Image.getPlanes(), which would hit that abort.
  const uint64_t packedRowBytes = uint64_t(desc.width) * bits / 8;
  const bool valid = width > 0 && height > 0 && desc.layers == 1 &&
      desc.format == uint32_t(format) && desc.width == uint32_t(width) &&
      desc.height == uint32_t(height) && desc.width % 4 == 0 &&
      desc.height % 2 == 0 && desc.stride >= packedRowBytes;
  if (!valid) {
    __android_log_print(ANDROID_LOG_ERROR, "PLog_RawPackedUnpacker",
        "Rejecting packed RAW buffer before getPlanes: image=%dx%d format=0x%x "
        "buffer=%ux%u format=0x%x layers=%u stride=%u minRowBytes=%llu usage=0x%llx",
        width, height, uint32_t(format), desc.width, desc.height, desc.format, desc.layers,
        desc.stride, static_cast<unsigned long long>(packedRowBytes),
        static_cast<unsigned long long>(desc.usage));
  }
  return valid ? JNI_TRUE : JNI_FALSE;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_raw_RawPackedUnpacker_unpackNative(
    JNIEnv *env, jobject, jobject sourceBuffer, jint sourceLimit,
    jobject destinationBuffer, jint format, jint width, jint height, jint rowStride) {
  const uint32_t bits = PackedBitsPerPixel(format);
  if (!sourceBuffer || !destinationBuffer || bits == 0 || width <= 0 || width % 4 != 0 ||
      height <= 0 || height % 2 != 0 || rowStride <= 0 || sourceLimit < 0) {
    __android_log_print(ANDROID_LOG_ERROR, "PLog_RawPackedUnpacker",
                        "Invalid packed RAW geometry: format=0x%x %dx%d stride=%d limit=%d",
                        uint32_t(format), width, height, rowStride, sourceLimit);
    return JNI_FALSE;
  }

  const int64_t packedRowBytes = static_cast<int64_t>(width) * bits / 8;
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
    __android_log_print(ANDROID_LOG_ERROR, "PLog_RawPackedUnpacker",
                        "Invalid packed RAW buffers: format=0x%x %dx%d stride=%d limit=%d srcCapacity=%lld dstCapacity=%lld",
                        uint32_t(format), width, height, rowStride, sourceLimit,
                        static_cast<long long>(sourceCapacity), static_cast<long long>(destinationCapacity));
    return JNI_FALSE;
  }

  if (bits == 10) {
    photon::UnpackRaw10(source, destination, width, height, rowStride);
  } else {
    photon::UnpackRaw12(source, destination, width, height, rowStride);
  }
  return JNI_TRUE;
}
