#include "raw_packed_unpack.h"

#include <android/hardware_buffer_jni.h>
#include <android/log.h>
#include <jni.h>
#include <limits>

namespace {

// These HAL RAW formats match the public ImageFormat values. The NDK does not
// expose named AHardwareBuffer constants for all three.
constexpr uint32_t kRaw16Format = 0x20;
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

extern "C" JNIEXPORT jlong JNICALL
Java_com_hinnka_mycamera_raw_RawImageBufferLayout_describeByteCountNative(
    JNIEnv *env, jobject, jobject hardwareBuffer, jint format, jint width, jint height) {
  const auto rawFormat = static_cast<uint32_t>(format);
  const uint32_t bits = PackedBitsPerPixel(rawFormat);
  const bool packed = bits != 0;
  if (!hardwareBuffer || (!packed && rawFormat != kRaw16Format)) return 0;
  AHardwareBuffer *buffer = AHardwareBuffer_fromHardwareBuffer(env, hardwareBuffer);
  if (!buffer) return 0;
  AHardwareBuffer_Desc desc{};
  AHardwareBuffer_describe(buffer, &desc);

  // ImageReader uses the GraphicBuffer stride as bytes for packed RAW and as
  // pixels for RAW16. Its packed plane setup aborts if the row is too short.
  const uint64_t rowBytes = uint64_t(desc.stride) * (packed ? 1 : sizeof(uint16_t));
  const uint64_t minimumRowBytes =
      packed ? uint64_t(desc.width) * bits / 8 : uint64_t(desc.width) * sizeof(uint16_t);
  const auto maxBytes = static_cast<uint64_t>(std::numeric_limits<jlong>::max());
  const bool valid = width > 0 && height > 0 && desc.layers == 1 &&
      desc.format == rawFormat && desc.width == uint32_t(width) &&
      desc.height == uint32_t(height) && rowBytes >= minimumRowBytes &&
      (!packed || (desc.width % 4 == 0 && desc.height % 2 == 0)) &&
      rowBytes <= maxBytes / desc.height;
  if (!valid && packed) {
    __android_log_print(ANDROID_LOG_ERROR, "PLog_RawPackedUnpacker",
        "Rejecting packed RAW buffer before getPlanes: image=%dx%d format=0x%x "
        "buffer=%ux%u format=0x%x layers=%u stride=%u minRowBytes=%llu usage=0x%llx",
        width, height, rawFormat, desc.width, desc.height, desc.format, desc.layers,
        desc.stride, static_cast<unsigned long long>(minimumRowBytes),
        static_cast<unsigned long long>(desc.usage));
  }
  return valid ? static_cast<jlong>(rowBytes * desc.height) : 0;
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
