#include <algorithm>
#include <android/bitmap.h>
#include <android/log.h>
#include <array>
#include <cstdio>
#include <jni.h>
#include <string>
#include <turbojpeg.h>
#include <vector>

#include "jpeg_r_encoder.h"

#define LOG_TAG "JpegExportNative"
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

namespace {

class ScopedUtfChars {
public:
  ScopedUtfChars(JNIEnv *env, jstring value)
      : env_(env), value_(value),
        chars_(value ? env->GetStringUTFChars(value, nullptr) : nullptr) {}

  ~ScopedUtfChars() {
    if (chars_) {
      env_->ReleaseStringUTFChars(value_, chars_);
    }
  }

  const char *get() const { return chars_; }

private:
  JNIEnv *env_;
  jstring value_;
  const char *chars_;
};

bool writeBufferToPath(JNIEnv *env, jstring output_path,
                       const unsigned char *buffer, size_t size) {
  ScopedUtfChars path(env, output_path);
  if (!path.get() || !buffer || size == 0) {
    return false;
  }

  FILE *file = fopen(path.get(), "wb");
  if (!file) {
    LOGE("Failed to open output file: %s", path.get());
    return false;
  }
  const size_t bytes_written = fwrite(buffer, 1, size, file);
  const int flush_result = fflush(file);
  const int close_result = fclose(file);
  return bytes_written == size && flush_result == 0 && close_result == 0;
}

bool copyFloat3(JNIEnv *env, jfloatArray source,
                std::array<float, 3> *destination) {
  if (!source || !destination || env->GetArrayLength(source) != 3) {
    return false;
  }
  env->GetFloatArrayRegion(source, 0, 3, destination->data());
  return !env->ExceptionCheck();
}

} // namespace

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_gallery_Jpeg444ExportEncoder_writeNative(
    JNIEnv *env, jobject /* this */, jobject bitmap, jstring outputPath,
    jint quality, jbyteArray iccProfile) {
  if (!bitmap || !outputPath) {
    LOGE("JPEG 4:4:4 encode received null bitmap or output path");
    return JNI_FALSE;
  }

  AndroidBitmapInfo info{};
  if (AndroidBitmap_getInfo(env, bitmap, &info) !=
          ANDROID_BITMAP_RESULT_SUCCESS ||
      info.width == 0 || info.height == 0 ||
      info.format != ANDROID_BITMAP_FORMAT_RGBA_8888) {
    LOGE("JPEG 4:4:4 encode requires a non-empty RGBA_8888 bitmap");
    return JNI_FALSE;
  }

  void *pixels = nullptr;
  if (AndroidBitmap_lockPixels(env, bitmap, &pixels) !=
          ANDROID_BITMAP_RESULT_SUCCESS ||
      !pixels) {
    LOGE("JPEG 4:4:4 encode failed to lock bitmap pixels");
    return JNI_FALSE;
  }

  tjhandle encoder = tj3Init(TJINIT_COMPRESS);
  if (!encoder) {
    LOGE("JPEG 4:4:4 encode failed to initialize libjpeg-turbo: %s",
         tj3GetErrorStr(nullptr));
    AndroidBitmap_unlockPixels(env, bitmap);
    return JNI_FALSE;
  }

  const int clamped_quality = std::clamp(static_cast<int>(quality), 1, 100);
  if (tj3Set(encoder, TJPARAM_QUALITY, clamped_quality) < 0 ||
      tj3Set(encoder, TJPARAM_SUBSAMP, TJSAMP_444) < 0 ||
      tj3Set(encoder, TJPARAM_OPTIMIZE, 1) < 0) {
    LOGE("JPEG 4:4:4 encode failed to configure libjpeg-turbo: %s",
         tj3GetErrorStr(encoder));
    tj3Destroy(encoder);
    AndroidBitmap_unlockPixels(env, bitmap);
    return JNI_FALSE;
  }

  if (iccProfile) {
    const jsize icc_size = env->GetArrayLength(iccProfile);
    if (icc_size <= 0) {
      LOGE("JPEG 4:4:4 encode received an empty ICC profile");
      tj3Destroy(encoder);
      AndroidBitmap_unlockPixels(env, bitmap);
      return JNI_FALSE;
    }
    std::vector<unsigned char> icc_bytes(static_cast<size_t>(icc_size));
    env->GetByteArrayRegion(iccProfile, 0, icc_size,
                            reinterpret_cast<jbyte *>(icc_bytes.data()));
    if (env->ExceptionCheck() ||
        tj3SetICCProfile(encoder, icc_bytes.data(), icc_bytes.size()) < 0) {
      LOGE("JPEG 4:4:4 encode failed to attach ICC profile: %s",
           tj3GetErrorStr(encoder));
      tj3Destroy(encoder);
      AndroidBitmap_unlockPixels(env, bitmap);
      return JNI_FALSE;
    }
  }

  unsigned char *jpeg_buffer = nullptr;
  size_t jpeg_size = 0;
  const int encode_result = tj3Compress8(
      encoder, static_cast<const unsigned char *>(pixels),
      static_cast<int>(info.width), static_cast<int>(info.stride),
      static_cast<int>(info.height), TJPF_RGBA, &jpeg_buffer, &jpeg_size);
  AndroidBitmap_unlockPixels(env, bitmap);

  if (encode_result < 0 || !jpeg_buffer || jpeg_size == 0) {
    LOGE("JPEG 4:4:4 encode failed: %s", tj3GetErrorStr(encoder));
    if (jpeg_buffer) {
      tj3Free(jpeg_buffer);
    }
    tj3Destroy(encoder);
    return JNI_FALSE;
  }

  const bool written =
      writeBufferToPath(env, outputPath, jpeg_buffer, jpeg_size);
  tj3Free(jpeg_buffer);
  tj3Destroy(encoder);
  return written ? JNI_TRUE : JNI_FALSE;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_gallery_Jpeg444ExportEncoder_encodeGainmapNative(
    JNIEnv *env, jobject /* this */, jobject bitmap, jstring outputPath,
    jint quality) {
  if (!bitmap || !outputPath) {
    LOGE("Gain map JPEG encode received null bitmap or output path");
    return JNI_FALSE;
  }

  AndroidBitmapInfo info{};
  if (AndroidBitmap_getInfo(env, bitmap, &info) !=
          ANDROID_BITMAP_RESULT_SUCCESS ||
      info.width == 0 || info.height == 0 ||
      (info.format != ANDROID_BITMAP_FORMAT_A_8 &&
       info.format != ANDROID_BITMAP_FORMAT_RGBA_8888)) {
    LOGE("Gain map JPEG encode requires an ALPHA_8 or RGBA_8888 bitmap");
    return JNI_FALSE;
  }

  void *pixels = nullptr;
  if (AndroidBitmap_lockPixels(env, bitmap, &pixels) !=
          ANDROID_BITMAP_RESULT_SUCCESS ||
      !pixels) {
    LOGE("Gain map JPEG encode failed to lock bitmap pixels");
    return JNI_FALSE;
  }

  tjhandle encoder = tj3Init(TJINIT_COMPRESS);
  if (!encoder) {
    LOGE("Gain map JPEG encode failed to initialize libjpeg-turbo: %s",
         tj3GetErrorStr(nullptr));
    AndroidBitmap_unlockPixels(env, bitmap);
    return JNI_FALSE;
  }

  const int pixel_format =
      info.format == ANDROID_BITMAP_FORMAT_A_8 ? TJPF_GRAY : TJPF_RGBA;
  const int subsampling =
      info.format == ANDROID_BITMAP_FORMAT_A_8 ? TJSAMP_GRAY : TJSAMP_444;
  const int clamped_quality = std::clamp(static_cast<int>(quality), 1, 100);
  if (tj3Set(encoder, TJPARAM_QUALITY, clamped_quality) < 0 ||
      tj3Set(encoder, TJPARAM_SUBSAMP, subsampling) < 0 ||
      tj3Set(encoder, TJPARAM_OPTIMIZE, 1) < 0) {
    LOGE("Gain map JPEG encode failed to configure libjpeg-turbo: %s",
         tj3GetErrorStr(encoder));
    tj3Destroy(encoder);
    AndroidBitmap_unlockPixels(env, bitmap);
    return JNI_FALSE;
  }

  unsigned char *jpeg_buffer = nullptr;
  size_t jpeg_size = 0;
  const int encode_result = tj3Compress8(
      encoder, static_cast<const unsigned char *>(pixels),
      static_cast<int>(info.width), static_cast<int>(info.stride),
      static_cast<int>(info.height), pixel_format, &jpeg_buffer, &jpeg_size);
  AndroidBitmap_unlockPixels(env, bitmap);

  if (encode_result < 0 || !jpeg_buffer || jpeg_size == 0) {
    LOGE("Gain map JPEG encode failed: %s", tj3GetErrorStr(encoder));
    if (jpeg_buffer) {
      tj3Free(jpeg_buffer);
    }
    tj3Destroy(encoder);
    return JNI_FALSE;
  }

  const bool written =
      writeBufferToPath(env, outputPath, jpeg_buffer, jpeg_size);
  tj3Free(jpeg_buffer);
  tj3Destroy(encoder);
  return written ? JNI_TRUE : JNI_FALSE;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_gallery_Jpeg444ExportEncoder_packageJpegRNative(
    JNIEnv *env, jobject /* this */, jstring baseJpegPath,
    jstring gainmapJpegPath, jstring outputPath, jint baseColorGamut,
    jfloatArray ratioMin, jfloatArray ratioMax, jfloatArray gamma,
    jfloatArray epsilonSdr, jfloatArray epsilonHdr, jfloat displayRatioSdr,
    jfloat displayRatioHdr, jboolean useBaseColorSpace) {
  ScopedUtfChars base_path(env, baseJpegPath);
  ScopedUtfChars gainmap_path(env, gainmapJpegPath);
  ScopedUtfChars output_path(env, outputPath);
  if (!base_path.get() || !gainmap_path.get() || !output_path.get()) {
    LOGE("JPEG_R packaging received an invalid file path");
    return JNI_FALSE;
  }

  photon::JpegRGainmapMetadata metadata;
  if (!copyFloat3(env, ratioMin, &metadata.ratio_min) ||
      !copyFloat3(env, ratioMax, &metadata.ratio_max) ||
      !copyFloat3(env, gamma, &metadata.gamma) ||
      !copyFloat3(env, epsilonSdr, &metadata.epsilon_sdr) ||
      !copyFloat3(env, epsilonHdr, &metadata.epsilon_hdr)) {
    LOGE("JPEG_R packaging received invalid gain map metadata arrays");
    return JNI_FALSE;
  }
  metadata.display_ratio_sdr = displayRatioSdr;
  metadata.display_ratio_hdr = displayRatioHdr;
  metadata.use_base_color_space = useBaseColorSpace == JNI_TRUE;

  std::string error;
  const bool packaged =
      photon::packageJpegR(base_path.get(), gainmap_path.get(),
                           output_path.get(), baseColorGamut, metadata, &error);
  if (!packaged) {
    LOGE("JPEG_R packaging failed: %s", error.c_str());
  }
  return packaged ? JNI_TRUE : JNI_FALSE;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_hinnka_mycamera_gallery_Jpeg444ExportEncoder_isJpegRNative(
    JNIEnv *env, jobject /* this */, jstring path) {
  ScopedUtfChars file_path(env, path);
  if (!file_path.get()) {
    return JNI_FALSE;
  }
  return photon::isJpegRFile(file_path.get()) ? JNI_TRUE : JNI_FALSE;
}
