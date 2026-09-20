// JNI bridge that runs the lifted MGC V25 RAISR chain
// (mgc_raisr_driver.cpp) over Photon's own containers.
//
// The recovered ABI of the five lifted AOT kernels lives in
// docs/research/mgc-raisr-output-upscale.md. Nothing about the chain itself
// belongs in Kotlin: the band loop, its scratch budget, the half-float and
// ARGB_8888 input conversion and direct RGBA8 output all run
// here, so a Kotlin caller only hands over the frame it already holds and gets
// the finished 2x bitmap back.

#include <android/bitmap.h>
#include <android/log.h>

#include <algorithm>
#include <cstdint>
#include <cstring>
#include <jni.h>

#include "mgc_raisr_bands.h"

namespace {

constexpr const char* kTag = "PLog_MgcRaisr";

// Declared before bitmap locks so the total includes their release and all
// scratch destruction. Emit once per image/tile, never once per band/pixel.
class NativeTiming {
public:
    explicit NativeTiming(const char* path)
        : path_(path), previous_(photon_raisr::active_timing),
          start_(photon_raisr::TimingNowNs()) {
        photon_raisr::active_timing = &timing_;
    }
    ~NativeTiming() {
        const int64_t total = photon_raisr::TimingNowNs() - start_;
        photon_raisr::active_timing = previous_;
        const auto& t = timing_;
        const int64_t aot = t.AotNs();
        const int64_t glue = t.chain - aot;
        __android_log_print(ANDROID_LOG_DEBUG, kTag,
            "RAISR native timing path=%s status=%d input=%dx%d rate=%.4f bands=%d "
            "processedMP=%.3f workRatio=%.3f bandAllocationMs=%.3f sourceConversionMs=%.3f "
            "aotMs=%.3f glueMs=%.3f outputWriteMs=%.3f overheadMs=%.3f totalMs=%.3f",
            path_, status, width, height, rate, t.bands, t.processed_pixels / 1e6,
            width > 0 && height > 0 ? double(t.processed_pixels) / (int64_t(width) * height) : 0.0,
            t.band_allocation / 1e6, t.source_conversion / 1e6, aot / 1e6, glue / 1e6,
            t.output_write / 1e6,
            (total - t.band_allocation - t.source_conversion - t.chain - t.output_write) / 1e6,
            total / 1e6);
        __android_log_print(ANDROID_LOG_DEBUG, kTag,
            "RAISR stage timing path=%s rgbToGrayMs=%.3f orientationMs=%.3f hashMs=%.3f "
            "upscale2xMs=%.3f dogMs=%.3f compositeMs=%.3f censusMs=%.3f polysharpAotMs=%.3f "
            "rgbPackMs=%.3f grayReplicateMs=%.3f lanczosMs=%.3f replaceLumaMs=%.3f "
            "rgbResampleMs=%.3f polysharpBoxMs=%.3f polysharpBlurMs=%.3f "
            "glueOtherMs=%.3f",
            path_, t.rgb_to_gray / 1e6, t.orientation / 1e6, t.hash / 1e6, t.upscale / 1e6,
            t.dog / 1e6, t.composite / 1e6, t.census / 1e6, t.polysharp / 1e6,
            t.rgb_pack / 1e6, t.gray_replicate / 1e6, t.lanczos / 1e6, t.chroma / 1e6,
            t.rgb_resample / 1e6, t.polysharp_box / 1e6, t.polysharp_blur / 1e6,
            (glue - t.rgb_pack - t.gray_replicate - t.lanczos - t.chroma -
                t.rgb_resample - t.polysharp_box - t.polysharp_blur) / 1e6);
        __android_log_print(ANDROID_LOG_DEBUG, kTag,
            "RAISR runtime timing path=%s aotParallelCalls=%d cppParallelCalls=%d workersCreated=%d "
            "threadCreateWallMs=%.3f workerWaitAndShutdownMs=%.3f sharedByAotAndGlue=true "
            "overlapsWorkerExecution=true",
            path_, t.parallel_calls, t.cpp_parallel_calls, t.workers_created, t.thread_create / 1e6,
            t.thread_join / 1e6);
    }
    int width = 0;
    int height = 0;
    float rate = 0.0f;
    int status = -1;

private:
    const char* path_;
    photon_raisr::Timing timing_;
    photon_raisr::Timing* previous_;
    int64_t start_;
};

// One Android bitmap locked for the duration of a single upscale.
class LockedBitmap {
public:
    LockedBitmap() = default;
    LockedBitmap(const LockedBitmap&) = delete;
    LockedBitmap& operator=(const LockedBitmap&) = delete;

    ~LockedBitmap() { Unlock(); }

    bool Lock(JNIEnv* env, jobject bitmap) {
        if (bitmap == nullptr) {
            return false;
        }
        AndroidBitmapInfo info{};
        if (AndroidBitmap_getInfo(env, bitmap, &info) != ANDROID_BITMAP_RESULT_SUCCESS) {
            return false;
        }
        void* pixels = nullptr;
        if (AndroidBitmap_lockPixels(env, bitmap, &pixels) != ANDROID_BITMAP_RESULT_SUCCESS) {
            return false;
        }
        env_ = env;
        bitmap_ = bitmap;
        info_ = info;
        pixels_ = pixels;
        return true;
    }

    void Unlock() {
        if (bitmap_ != nullptr) {
            AndroidBitmap_unlockPixels(env_, bitmap_);
            bitmap_ = nullptr;
            pixels_ = nullptr;
        }
    }

    const uint8_t* bytes() const { return static_cast<const uint8_t*>(pixels_); }
    uint8_t* mutable_bytes() const { return static_cast<uint8_t*>(pixels_); }
    int width() const { return int(info_.width); }
    int height() const { return int(info_.height); }
    size_t stride() const { return size_t(info_.stride); }
    int32_t format() const { return info_.format; }

private:
    JNIEnv* env_ = nullptr;
    jobject bitmap_ = nullptr;
    AndroidBitmapInfo info_{};
    void* pixels_ = nullptr;
};

// IEEE binary16 to binary32, subnormals included: the finalized frame comes back
// from the GPU as an RGBA_F16 bitmap while the chain's input is RGBA float.
float HalfToFloat(uint16_t half) {
    const uint32_t sign = uint32_t(half & 0x8000u) << 16;
    const uint32_t exponent = (half >> 10) & 0x1Fu;
    const uint32_t mantissa = half & 0x3FFu;
    uint32_t bits = 0;
    if (exponent == 0) {
        if (mantissa != 0) {
            uint32_t value = mantissa;
            int shift = 0;
            while ((value & 0x400u) == 0) {
                value <<= 1;
                ++shift;
            }
            bits = sign | (uint32_t(113 - shift) << 23) | ((value & 0x3FFu) << 13);
        } else {
            bits = sign;
        }
    } else if (exponent == 0x1Fu) {
        bits = sign | 0x7F800000u | (mantissa << 13);
    } else {
        bits = sign | ((exponent + 112u) << 23) | (mantissa << 13);
    }
    float result = 0.0f;
    std::memcpy(&result, &bits, sizeof(result));
    return result;
}

// A finalized frame as a band source. RGBA_F16 carries the GPU readback in the
// working colour space, ARGB_8888 the same values already quantised; both map to
// the RGBA float the chain consumes, with the alpha the chain ignores set opaque.
class BitmapSource {
public:
    BitmapSource(const uint8_t* pixels, size_t stride, int width, int32_t format)
        : pixels_(pixels),
          stride_(stride),
          width_(width),
          half_(format == ANDROID_BITMAP_FORMAT_RGBA_F16) {}

    void Fill(int top, int rows, float* destination) const {
        for (int row = 0; row < rows; ++row) {
            const uint8_t* source = pixels_ + size_t(top + row) * stride_;
            float* target = destination + size_t(row) * width_ * 4;
            for (int column = 0; column < width_; ++column) {
                if (half_) {
                    uint16_t halves[4] = {};
                    std::memcpy(halves, source + size_t(column) * 8, sizeof(halves));
                    target[column * 4 + 0] = HalfToFloat(halves[0]);
                    target[column * 4 + 1] = HalfToFloat(halves[1]);
                    target[column * 4 + 2] = HalfToFloat(halves[2]);
                } else {
                    const uint8_t* pixel = source + size_t(column) * 4;
                    target[column * 4 + 0] = pixel[0] / 255.0f;
                    target[column * 4 + 1] = pixel[1] / 255.0f;
                    target[column * 4 + 2] = pixel[2] / 255.0f;
                }
                target[column * 4 + 3] = 1.0f;
            }
        }
    }

private:
    const uint8_t* pixels_;
    size_t stride_;
    int width_;
    bool half_;
};

// The tiled path's texture readback: one float RGBA working tile, of which the
// core plus halo is the band region.
class TileSource {
public:
    TileSource(const float* pixels, int tile_width, int region_width, int left, int top)
        : pixels_(pixels), tile_width_(tile_width), region_width_(region_width),
          left_(left), top_(top) {}

    void Fill(int top, int rows, float* destination) const {
        for (int row = 0; row < rows; ++row) {
            const float* source = pixels_ + (size_t(top_ + top + row) * tile_width_ + left_) * 4;
            std::memcpy(destination + size_t(row) * region_width_ * 4, source,
                        size_t(region_width_) * 4 * sizeof(float));
        }
    }

private:
    const float* pixels_;
    int tile_width_;
    int region_width_;
    int left_;
    int top_;
};

// The destination bitmap's pixels. Android's RGBA_8888 layout stores R, G, B and
// A in that byte order, and the alpha is opaque, so writing it directly keeps
// the bitmap out of the premultiplied-alpha path.
class ArgbSink {
public:
    ArgbSink(uint8_t* pixels, size_t stride) : pixels_(pixels), stride_(stride) {}

    void Write(int row, const uint8_t* pixels, int count) const {
        uint8_t* target = pixels_ + size_t(row) * stride_;
        std::memcpy(target, pixels, size_t(count) * 4);
    }

private:
    uint8_t* pixels_;
    size_t stride_;
};

bool IsSourceFormat(int32_t format) {
    return format == ANDROID_BITMAP_FORMAT_RGBA_F16 || format == ANDROID_BITMAP_FORMAT_RGBA_8888;
}

}  // namespace

// Upscales a whole finalized frame: `source` is the frame on its native grid and
// `destination` the empty 2x bitmap of RGBA_8888 pixels to fill.
extern "C" JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_raw_MgcRaisrUpscale_nativeUpscaleBitmap(JNIEnv* env, jclass,
                                                                jobject source,
                                                                jobject destination,
                                                                jfloat resample_rate) {
    NativeTiming timing("bitmap");
    timing.rate = resample_rate;
    LockedBitmap source_bitmap;
    LockedBitmap destination_bitmap;
    if (!source_bitmap.Lock(env, source) || !destination_bitmap.Lock(env, destination)) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "unable to lock the frame bitmaps");
        return -1;
    }
    if (!IsSourceFormat(source_bitmap.format())) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "unsupported source format: %d",
                            source_bitmap.format());
        return -1;
    }
    const int width = source_bitmap.width();
    const int height = source_bitmap.height();
    timing.width = width;
    timing.height = height;
    if (destination_bitmap.format() != ANDROID_BITMAP_FORMAT_RGBA_8888 ||
        destination_bitmap.width() != width * 2 || destination_bitmap.height() != height * 2) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
                            "destination %dx%d format=%d does not match %dx%d",
                            destination_bitmap.width(), destination_bitmap.height(),
                            destination_bitmap.format(), width * 2, height * 2);
        return -1;
    }
    const int status = photon_raisr::RunBands(
        BitmapSource(source_bitmap.bytes(), source_bitmap.stride(), width, source_bitmap.format()),
        ArgbSink(destination_bitmap.mutable_bytes(), destination_bitmap.stride()), width, height, 0,
        0, width, height, photon_raisr::BandCoreRows(width), resample_rate);
    timing.status = status;
    if (status != 0) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "banded upscale failed: %d", status);
    }
    return status;
}

// Upscales one tile of a tiled render. `source` is the float RGBA readback of the
// whole working tile, which is larger than the core on every side, so the chain
// is fed the core plus photon_raisr::kBandHaloPx and the margin is cropped from
// the 2x result again. `destination` holds the core's 2x pixels.
extern "C" JNIEXPORT jint JNICALL
Java_com_hinnka_mycamera_raw_MgcRaisrUpscale_nativeUpscaleTile(
    JNIEnv* env, jclass, jobject source, jint tile_width, jint tile_height, jint core_left,
    jint core_top, jint core_width, jint core_height, jobject destination,
    jfloat resample_rate) {
    NativeTiming timing("tile");
    timing.width = core_width;
    timing.height = core_height;
    timing.rate = resample_rate;
    if (source == nullptr || tile_width <= 0 || tile_height <= 0 || core_width <= 0 ||
        core_height <= 0 || core_left < 0 || core_top < 0 || core_left + core_width > tile_width ||
        core_top + core_height > tile_height) {
        return -1;
    }
    auto* pixels = static_cast<const float*>(env->GetDirectBufferAddress(source));
    if (pixels == nullptr) {
        return -1;
    }
    const jlong capacity = env->GetDirectBufferCapacity(source);
    if (capacity < jlong(tile_width) * tile_height * 4 * jlong(sizeof(float))) {
        return -1;
    }
    // Preserve the DOG pyramid phase when cropping context out of the tile.
    const int alignment = photon_raisr::kBandAlignmentPx;
    const int left = std::max(0, core_left - photon_raisr::kBandHaloPx) / alignment * alignment;
    const int top = std::max(0, core_top - photon_raisr::kBandHaloPx) / alignment * alignment;
    const int right = std::min<int>(tile_width, core_left + core_width + photon_raisr::kBandHaloPx);
    const int bottom =
        std::min<int>(tile_height, core_top + core_height + photon_raisr::kBandHaloPx);
    const int region_width = right - left;
    const int region_height = bottom - top;
    LockedBitmap destination_bitmap;
    if (!destination_bitmap.Lock(env, destination)) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "unable to lock the destination bitmap");
        return -1;
    }
    if (destination_bitmap.format() != ANDROID_BITMAP_FORMAT_RGBA_8888 ||
        destination_bitmap.width() != core_width * 2 ||
        destination_bitmap.height() != core_height * 2) {
        __android_log_print(ANDROID_LOG_ERROR, kTag,
                            "tile destination %dx%d format=%d does not match %dx%d",
                            destination_bitmap.width(), destination_bitmap.height(),
                            destination_bitmap.format(), core_width * 2, core_height * 2);
        return -1;
    }
    const int status = photon_raisr::RunBands(
        TileSource(pixels, tile_width, region_width, left, top),
        ArgbSink(destination_bitmap.mutable_bytes(), destination_bitmap.stride()), region_width,
        region_height, core_left - left, core_top - top, core_width, core_height,
        photon_raisr::BandCoreRows(region_width), resample_rate);
    timing.status = status;
    if (status != 0) {
        __android_log_print(ANDROID_LOG_ERROR, kTag, "banded tile upscale failed: %d", status);
    }
    return status;
}
