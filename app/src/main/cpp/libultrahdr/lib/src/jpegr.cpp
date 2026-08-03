/*
 * Copyright 2022 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifdef _WIN32
#include <windows.h>
#include <sysinfoapi.h>
#else
#include <unistd.h>
#endif

#include <condition_variable>
#include <deque>
#include <functional>
#include <mutex>
#include <thread>

#include "ultrahdr/editorhelper.h"
#include "ultrahdr/gainmapmetadata.h"
#include "ultrahdr/ultrahdrcommon.h"
#include "ultrahdr/jpegr.h"
#include "ultrahdr/icc.h"
#include "ultrahdr/multipictureformat.h"

#include "image_io/base/data_segment_data_source.h"
#include "image_io/jpeg/jpeg_info.h"
#include "image_io/jpeg/jpeg_info_builder.h"
#include "image_io/jpeg/jpeg_marker.h"
#include "image_io/jpeg/jpeg_scanner.h"

using namespace std;
using namespace photos_editing_formats::image_io;

namespace ultrahdr {

#ifdef UHDR_ENABLE_GLES
uhdr_error_info_t applyGainMapGLES(uhdr_raw_image_t* sdr_intent, uhdr_raw_image_t* gainmap_img,
                                   uhdr_gainmap_metadata_ext_t* gainmap_metadata,
                                   uhdr_color_transfer_t output_ct, float display_boost,
                                   uhdr_color_gamut_t sdr_cg, uhdr_color_gamut_t hdr_cg,
                                   uhdr_opengl_ctxt_t* opengl_ctxt);
#endif

// Gain map metadata
#ifdef UHDR_WRITE_XMP
static const bool kWriteXmpMetadata = true;
#else
static const bool kWriteXmpMetadata = false;
#endif
#ifdef UHDR_WRITE_ISO
static const bool kWriteIso21496_1Metadata = true;
#else
static const bool kWriteIso21496_1Metadata = false;
#endif

static const string kXmpNameSpace = "http://ns.adobe.com/xap/1.0/";
static const string kIsoNameSpace = "urn:iso:std:iso:ts:21496:-1";

static_assert(kWriteXmpMetadata || kWriteIso21496_1Metadata,
              "Must write gain map metadata in XMP format, or iso 21496-1 format, or both.");

class JobQueue {
 public:
  bool dequeueJob(unsigned int& rowStart, unsigned int& rowEnd);
  void enqueueJob(unsigned int rowStart, unsigned int rowEnd);
  void markQueueForEnd();
  void reset();

 private:
  bool mQueuedAllJobs = false;
  std::deque<std::tuple<unsigned int, unsigned int>> mJobs;
  std::mutex mMutex;
  std::condition_variable mCv;
};

bool JobQueue::dequeueJob(unsigned int& rowStart, unsigned int& rowEnd) {
  std::unique_lock<std::mutex> lock{mMutex};
  while (true) {
    if (mJobs.empty()) {
      if (mQueuedAllJobs) {
        return false;
      } else {
        mCv.wait_for(lock, std::chrono::milliseconds(100));
      }
    } else {
      auto it = mJobs.begin();
      rowStart = std::get<0>(*it);
      rowEnd = std::get<1>(*it);
      mJobs.erase(it);
      return true;
    }
  }
  return false;
}

void JobQueue::enqueueJob(unsigned int rowStart, unsigned int rowEnd) {
  std::unique_lock<std::mutex> lock{mMutex};
  mJobs.push_back(std::make_tuple(rowStart, rowEnd));
  lock.unlock();
  mCv.notify_one();
}

void JobQueue::markQueueForEnd() {
  std::unique_lock<std::mutex> lock{mMutex};
  mQueuedAllJobs = true;
  lock.unlock();
  mCv.notify_all();
}

void JobQueue::reset() {
  std::unique_lock<std::mutex> lock{mMutex};
  mJobs.clear();
  mQueuedAllJobs = false;
}

/*
 * MessageWriter implementation for ALOG functions.
 */
class AlogMessageWriter : public MessageWriter {
 public:
  void WriteMessage(const Message& message) override {
    std::string log = GetFormattedMessage(message);
    ALOGD("%s", log.c_str());
  }
};

unsigned int GetCPUCoreCount() { return (std::max)(1u, std::thread::hardware_concurrency()); }

JpegR::JpegR(void* uhdrGLESCtxt, int mapDimensionScaleFactor, int mapCompressQuality,
             bool useMultiChannelGainMap, float gamma, uhdr_enc_preset_t preset,
             float minContentBoost, float maxContentBoost, float targetDispPeakBrightness) {
  mUhdrGLESCtxt = uhdrGLESCtxt;
  mMapDimensionScaleFactor = mapDimensionScaleFactor;
  mMapCompressQuality = mapCompressQuality;
  mUseMultiChannelGainMap = useMultiChannelGainMap;
  mGamma = gamma;
  mEncPreset = preset;
  mMinContentBoost = minContentBoost;
  mMaxContentBoost = maxContentBoost;
  mTargetDispPeakBrightness = targetDispPeakBrightness;
}

/*
 * Helper function copies the JPEG image from without EXIF.
 *
 * @param pDest destination of the data to be written.
 * @param pSource source of data being written.
 * @param exif_pos position of the EXIF package, which is aligned with jpegdecoder.getEXIFPos().
 *                 (4 bytes offset to FF sign, the byte after FF E1 XX XX <this byte>).
 * @param exif_size exif size without the initial 4 bytes, aligned with jpegdecoder.getEXIFSize().
 */
static void copyJpegWithoutExif(uhdr_compressed_image_t* pDest, uhdr_compressed_image_t* pSource,
                                size_t exif_pos, size_t exif_size) {
  const size_t exif_offset = 4;  // exif_pos has 4 bytes offset to the FF sign
  pDest->data_sz = pSource->data_sz - exif_size - exif_offset;
  pDest->data = new uint8_t[pDest->data_sz];
  pDest->capacity = pDest->data_sz;
  pDest->cg = pSource->cg;
  pDest->ct = pSource->ct;
  pDest->range = pSource->range;
  memcpy(pDest->data, pSource->data, exif_pos - exif_offset);
  memcpy((uint8_t*)pDest->data + exif_pos - exif_offset,
         (uint8_t*)pSource->data + exif_pos + exif_size, pSource->data_sz - exif_pos - exif_size);
}

/* Encode API-0 */
uhdr_error_info_t JpegR::encodeJPEGR(uhdr_raw_image_t* hdr_intent, uhdr_compressed_image_t* dest,
                                     int quality, uhdr_mem_block_t* exif) {
  uhdr_img_fmt_t sdr_intent_fmt;
  if (hdr_intent->fmt == UHDR_IMG_FMT_24bppYCbCrP010) {
    sdr_intent_fmt = UHDR_IMG_FMT_12bppYCbCr420;
  } else if (hdr_intent->fmt == UHDR_IMG_FMT_30bppYCbCr444) {
    sdr_intent_fmt = UHDR_IMG_FMT_24bppYCbCr444;
  } else if (hdr_intent->fmt == UHDR_IMG_FMT_32bppRGBA1010102 ||
             hdr_intent->fmt == UHDR_IMG_FMT_64bppRGBAHalfFloat) {
    sdr_intent_fmt = UHDR_IMG_FMT_32bppRGBA8888;
  } else {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_INVALID_PARAM;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail, "unsupported hdr intent color format %d",
             hdr_intent->fmt);
    return status;
  }
  std::unique_ptr<uhdr_raw_image_ext_t> sdr_intent = std::make_unique<uhdr_raw_image_ext_t>(
      sdr_intent_fmt, UHDR_CG_UNSPECIFIED, UHDR_CT_UNSPECIFIED, UHDR_CR_UNSPECIFIED, hdr_intent->w,
      hdr_intent->h, 64);

  // tone map
  UHDR_ERR_CHECK(toneMap(hdr_intent, sdr_intent.get()));

  // If hdr intent is tonemapped internally, it is observed from quality pov,
  // generateGainMapOnePass() is sufficient
  mEncPreset = UHDR_USAGE_REALTIME;  // overriding the config option

  // generate gain map
  uhdr_gainmap_metadata_ext_t metadata(kJpegrVersion);
  std::unique_ptr<uhdr_raw_image_ext_t> gainmap;
  UHDR_ERR_CHECK(generateGainMap(sdr_intent.get(), hdr_intent, &metadata, gainmap,
                                 /* sdr_is_601 */ false,
                                 /* use_luminance */ false));

  // compress gain map
  JpegEncoderHelper jpeg_enc_obj_gm;
  UHDR_ERR_CHECK(compressGainMap(gainmap.get(), &jpeg_enc_obj_gm));
  uhdr_compressed_image_t gainmap_compressed = jpeg_enc_obj_gm.getCompressedImage();

  std::shared_ptr<DataStruct> icc = IccHelper::writeIccProfile(UHDR_CT_SRGB, sdr_intent->cg);

  // compress sdr image
  std::unique_ptr<uhdr_raw_image_ext_t> sdr_intent_yuv_ext;
  uhdr_raw_image_t* sdr_intent_yuv = sdr_intent.get();
  if (isPixelFormatRgb(sdr_intent->fmt)) {
#if (defined(UHDR_ENABLE_INTRINSICS) && (defined(__ARM_NEON__) || defined(__ARM_NEON)))
    sdr_intent_yuv_ext = convert_raw_input_to_ycbcr_neon(sdr_intent.get());
#else
    sdr_intent_yuv_ext = convert_raw_input_to_ycbcr(sdr_intent.get());
#endif
    sdr_intent_yuv = sdr_intent_yuv_ext.get();
  }

  JpegEncoderHelper jpeg_enc_obj_sdr;
  UHDR_ERR_CHECK(
      jpeg_enc_obj_sdr.compressImage(sdr_intent_yuv, quality, icc->getData(), icc->getLength()));
  uhdr_compressed_image_t sdr_intent_compressed = jpeg_enc_obj_sdr.getCompressedImage();
  sdr_intent_compressed.cg = sdr_intent_yuv->cg;

  // append gain map, no ICC since JPEG encode already did it
  UHDR_ERR_CHECK(appendGainMap(&sdr_intent_compressed, &gainmap_compressed, exif, /* icc */ nullptr,
                               /* icc size */ 0, &metadata, dest));
  return g_no_error;
}

/* Encode API-1 */
uhdr_error_info_t JpegR::encodeJPEGR(uhdr_raw_image_t* hdr_intent, uhdr_raw_image_t* sdr_intent,
                                     uhdr_compressed_image_t* dest, int quality,
                                     uhdr_mem_block_t* exif) {
  // generate gain map
  uhdr_gainmap_metadata_ext_t metadata(kJpegrVersion);
  std::unique_ptr<uhdr_raw_image_ext_t> gainmap;
  UHDR_ERR_CHECK(generateGainMap(sdr_intent, hdr_intent, &metadata, gainmap));

  // compress gain map
  JpegEncoderHelper jpeg_enc_obj_gm;
  UHDR_ERR_CHECK(compressGainMap(gainmap.get(), &jpeg_enc_obj_gm));
  uhdr_compressed_image_t gainmap_compressed = jpeg_enc_obj_gm.getCompressedImage();

  std::shared_ptr<DataStruct> icc = IccHelper::writeIccProfile(UHDR_CT_SRGB, sdr_intent->cg);

  std::unique_ptr<uhdr_raw_image_ext_t> sdr_intent_yuv_ext;
  uhdr_raw_image_t* sdr_intent_yuv = sdr_intent;
  if (isPixelFormatRgb(sdr_intent->fmt)) {
#if (defined(UHDR_ENABLE_INTRINSICS) && (defined(__ARM_NEON__) || defined(__ARM_NEON)))
    sdr_intent_yuv_ext = convert_raw_input_to_ycbcr_neon(sdr_intent);
#else
    sdr_intent_yuv_ext = convert_raw_input_to_ycbcr(sdr_intent);
#endif
    sdr_intent_yuv = sdr_intent_yuv_ext.get();
  }

  // convert to bt601 YUV encoding for JPEG encode
#if (defined(UHDR_ENABLE_INTRINSICS) && (defined(__ARM_NEON__) || defined(__ARM_NEON)))
  UHDR_ERR_CHECK(convertYuv_neon(sdr_intent_yuv, sdr_intent_yuv->cg, UHDR_CG_DISPLAY_P3));
#else
  UHDR_ERR_CHECK(convertYuv(sdr_intent_yuv, sdr_intent_yuv->cg, UHDR_CG_DISPLAY_P3));
#endif

  // compress sdr image
  JpegEncoderHelper jpeg_enc_obj_sdr;
  UHDR_ERR_CHECK(
      jpeg_enc_obj_sdr.compressImage(sdr_intent_yuv, quality, icc->getData(), icc->getLength()));
  uhdr_compressed_image_t sdr_intent_compressed = jpeg_enc_obj_sdr.getCompressedImage();
  sdr_intent_compressed.cg = sdr_intent_yuv->cg;

  // append gain map, no ICC since JPEG encode already did it
  UHDR_ERR_CHECK(appendGainMap(&sdr_intent_compressed, &gainmap_compressed, exif, /* icc */ nullptr,
                               /* icc size */ 0, &metadata, dest));
  return g_no_error;
}

/* Encode API-2 */
uhdr_error_info_t JpegR::encodeJPEGR(uhdr_raw_image_t* hdr_intent, uhdr_raw_image_t* sdr_intent,
                                     uhdr_compressed_image_t* sdr_intent_compressed,
                                     uhdr_compressed_image_t* dest) {
  JpegDecoderHelper jpeg_dec_obj_sdr;
  UHDR_ERR_CHECK(jpeg_dec_obj_sdr.decompressImage(sdr_intent_compressed->data,
                                                  sdr_intent_compressed->data_sz, PARSE_STREAM));
  if (hdr_intent->w != jpeg_dec_obj_sdr.getDecompressedImageWidth() ||
      hdr_intent->h != jpeg_dec_obj_sdr.getDecompressedImageHeight()) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_INVALID_PARAM;
    status.has_detail = 1;
    snprintf(
        status.detail, sizeof status.detail,
        "sdr intent resolution %dx%d and compressed image sdr intent resolution %dx%d do not match",
        sdr_intent->w, sdr_intent->h, (int)jpeg_dec_obj_sdr.getDecompressedImageWidth(),
        (int)jpeg_dec_obj_sdr.getDecompressedImageHeight());
    return status;
  }

  // generate gain map
  uhdr_gainmap_metadata_ext_t metadata(kJpegrVersion);
  std::unique_ptr<uhdr_raw_image_ext_t> gainmap;
  UHDR_ERR_CHECK(generateGainMap(sdr_intent, hdr_intent, &metadata, gainmap));

  // compress gain map
  JpegEncoderHelper jpeg_enc_obj_gm;
  UHDR_ERR_CHECK(compressGainMap(gainmap.get(), &jpeg_enc_obj_gm));
  uhdr_compressed_image_t gainmap_compressed = jpeg_enc_obj_gm.getCompressedImage();

  return encodeJPEGR(sdr_intent_compressed, &gainmap_compressed, &metadata, dest);
}

/* Encode API-3 */
uhdr_error_info_t JpegR::encodeJPEGR(uhdr_raw_image_t* hdr_intent,
                                     uhdr_compressed_image_t* sdr_intent_compressed,
                                     uhdr_compressed_image_t* dest) {
  // decode input jpeg, gamut is going to be bt601.
  JpegDecoderHelper jpeg_dec_obj_sdr;
  UHDR_ERR_CHECK(jpeg_dec_obj_sdr.decompressImage(sdr_intent_compressed->data,
                                                  sdr_intent_compressed->data_sz));

  uhdr_raw_image_t sdr_intent = jpeg_dec_obj_sdr.getDecompressedImage();
  if (jpeg_dec_obj_sdr.getICCSize() > 0) {
    uhdr_color_gamut_t cg =
        IccHelper::readIccColorGamut(jpeg_dec_obj_sdr.getICCPtr(), jpeg_dec_obj_sdr.getICCSize());
    if (cg == UHDR_CG_UNSPECIFIED ||
        (sdr_intent_compressed->cg != UHDR_CG_UNSPECIFIED && sdr_intent_compressed->cg != cg)) {
      uhdr_error_info_t status;
      status.error_code = UHDR_CODEC_INVALID_PARAM;
      status.has_detail = 1;
      snprintf(status.detail, sizeof status.detail,
               "configured color gamut %d does not match with color gamut specified in icc box %d",
               sdr_intent_compressed->cg, cg);
      return status;
    }
    sdr_intent.cg = cg;
  } else {
    if (sdr_intent_compressed->cg <= UHDR_CG_UNSPECIFIED ||
        sdr_intent_compressed->cg > UHDR_CG_BT_2100) {
      uhdr_error_info_t status;
      status.error_code = UHDR_CODEC_INVALID_PARAM;
      status.has_detail = 1;
      snprintf(status.detail, sizeof status.detail, "Unrecognized 420 color gamut %d",
               sdr_intent_compressed->cg);
      return status;
    }
    sdr_intent.cg = sdr_intent_compressed->cg;
  }

  if (hdr_intent->w != sdr_intent.w || hdr_intent->h != sdr_intent.h) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_INVALID_PARAM;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "sdr intent resolution %dx%d and hdr intent resolution %dx%d do not match",
             sdr_intent.w, sdr_intent.h, hdr_intent->w, hdr_intent->h);
    return status;
  }

  // generate gain map
  uhdr_gainmap_metadata_ext_t metadata(kJpegrVersion);
  std::unique_ptr<uhdr_raw_image_ext_t> gainmap;
  UHDR_ERR_CHECK(
      generateGainMap(&sdr_intent, hdr_intent, &metadata, gainmap, true /* sdr_is_601 */));

  // compress gain map
  JpegEncoderHelper jpeg_enc_obj_gm;
  UHDR_ERR_CHECK(compressGainMap(gainmap.get(), &jpeg_enc_obj_gm));
  uhdr_compressed_image_t gainmap_compressed = jpeg_enc_obj_gm.getCompressedImage();

  return encodeJPEGR(sdr_intent_compressed, &gainmap_compressed, &metadata, dest);
}

/* Encode API-4 */
uhdr_error_info_t JpegR::encodeJPEGR(uhdr_compressed_image_t* base_img_compressed,
                                     uhdr_compressed_image_t* gainmap_img_compressed,
                                     uhdr_gainmap_metadata_ext_t* metadata,
                                     uhdr_compressed_image_t* dest) {
  // We just want to check if ICC is present, so don't do a full decode. Note,
  // this doesn't verify that the ICC is valid.
  JpegDecoderHelper decoder;
  UHDR_ERR_CHECK(decoder.parseImage(base_img_compressed->data, base_img_compressed->data_sz));

  if (!metadata->use_base_cg) {
    JpegDecoderHelper gainmap_decoder;
    UHDR_ERR_CHECK(
        gainmap_decoder.parseImage(gainmap_img_compressed->data, gainmap_img_compressed->data_sz));
    if (!(gainmap_decoder.getICCSize() > 0)) {
      uhdr_error_info_t status;
      status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
      status.has_detail = 1;
      snprintf(status.detail, sizeof status.detail,
               "For gainmap application space to be alternate image space, gainmap image is "
               "expected to contain alternate image color space in the form of ICC. The ICC marker "
               "in gainmap jpeg is missing.");
      return status;
    }
  }

  // Add ICC if not already present.
  if (decoder.getICCSize() > 0) {
    UHDR_ERR_CHECK(appendGainMap(base_img_compressed, gainmap_img_compressed, /* exif */ nullptr,
                                 /* icc */ nullptr, /* icc size */ 0, metadata, dest));
  } else {
    if (base_img_compressed->cg <= UHDR_CG_UNSPECIFIED ||
        base_img_compressed->cg > UHDR_CG_BT_2100) {
      uhdr_error_info_t status;
      status.error_code = UHDR_CODEC_INVALID_PARAM;
      status.has_detail = 1;
      snprintf(status.detail, sizeof status.detail, "Unrecognized 420 color gamut %d",
               base_img_compressed->cg);
      return status;
    }
    std::shared_ptr<DataStruct> newIcc =
        IccHelper::writeIccProfile(UHDR_CT_SRGB, base_img_compressed->cg);
    UHDR_ERR_CHECK(appendGainMap(base_img_compressed, gainmap_img_compressed, /* exif */ nullptr,
                                 newIcc->getData(), newIcc->getLength(), metadata, dest));
  }

  return g_no_error;
}

uhdr_error_info_t JpegR::convertYuv(uhdr_raw_image_t* image, uhdr_color_gamut_t src_encoding,
                                    uhdr_color_gamut_t dst_encoding) {
  const std::array<float, 9>* coeffs_ptr = nullptr;
  uhdr_error_info_t status = g_no_error;

  switch (src_encoding) {
    case UHDR_CG_BT_709:
      switch (dst_encoding) {
        case UHDR_CG_BT_709:
          return status;
        case UHDR_CG_DISPLAY_P3:
          coeffs_ptr = &kYuvBt709ToBt601;
          break;
        case UHDR_CG_BT_2100:
          coeffs_ptr = &kYuvBt709ToBt2100;
          break;
        default:
          status.error_code = UHDR_CODEC_INVALID_PARAM;
          status.has_detail = 1;
          snprintf(status.detail, sizeof status.detail, "Unrecognized dest color gamut %d",
                   dst_encoding);
          return status;
      }
      break;
    case UHDR_CG_DISPLAY_P3:
      switch (dst_encoding) {
        case UHDR_CG_BT_709:
          coeffs_ptr = &kYuvBt601ToBt709;
          break;
        case UHDR_CG_DISPLAY_P3:
          return status;
        case UHDR_CG_BT_2100:
          coeffs_ptr = &kYuvBt601ToBt2100;
          break;
        default:
          status.error_code = UHDR_CODEC_INVALID_PARAM;
          status.has_detail = 1;
          snprintf(status.detail, sizeof status.detail, "Unrecognized dest color gamut %d",
                   dst_encoding);
          return status;
      }
      break;
    case UHDR_CG_BT_2100:
      switch (dst_encoding) {
        case UHDR_CG_BT_709:
          coeffs_ptr = &kYuvBt2100ToBt709;
          break;
        case UHDR_CG_DISPLAY_P3:
          coeffs_ptr = &kYuvBt2100ToBt601;
          break;
        case UHDR_CG_BT_2100:
          return status;
        default:
          status.error_code = UHDR_CODEC_INVALID_PARAM;
          status.has_detail = 1;
          snprintf(status.detail, sizeof status.detail, "Unrecognized dest color gamut %d",
                   dst_encoding);
          return status;
      }
      break;
    default:
      status.error_code = UHDR_CODEC_INVALID_PARAM;
      status.has_detail = 1;
      snprintf(status.detail, sizeof status.detail, "Unrecognized src color gamut %d",
               src_encoding);
      return status;
  }

  if (image->fmt == UHDR_IMG_FMT_12bppYCbCr420) {
    transformYuv420(image, *coeffs_ptr);
  } else if (image->fmt == UHDR_IMG_FMT_24bppYCbCr444) {
    transformYuv444(image, *coeffs_ptr);
  } else {
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for performing gamut conversion for color format %d",
             image->fmt);
    return status;
  }

  return status;
}

uhdr_error_info_t JpegR::compressGainMap(uhdr_raw_image_t* gainmap_img,
                                         JpegEncoderHelper* jpeg_enc_obj) {
  if (!kWriteXmpMetadata) {
    std::shared_ptr<DataStruct> icc = IccHelper::writeIccProfile(gainmap_img->ct, gainmap_img->cg);
    return jpeg_enc_obj->compressImage(gainmap_img, mMapCompressQuality, icc->getData(),
                                       icc->getLength());
  }
  return jpeg_enc_obj->compressImage(gainmap_img, mMapCompressQuality, nullptr, 0);
}

uhdr_error_info_t JpegR::generateGainMap(uhdr_raw_image_t* sdr_intent, uhdr_raw_image_t* hdr_intent,
                                         uhdr_gainmap_metadata_ext_t* gainmap_metadata,
                                         std::unique_ptr<uhdr_raw_image_ext_t>& gainmap_img,
                                         bool sdr_is_601, bool use_luminance) {
  uhdr_error_info_t status = g_no_error;

  if (sdr_intent->fmt != UHDR_IMG_FMT_24bppYCbCr444 &&
      sdr_intent->fmt != UHDR_IMG_FMT_16bppYCbCr422 &&
      sdr_intent->fmt != UHDR_IMG_FMT_12bppYCbCr420 &&
      sdr_intent->fmt != UHDR_IMG_FMT_32bppRGBA8888) {
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "generate gainmap method expects sdr intent color format to be one of "
             "{UHDR_IMG_FMT_24bppYCbCr444, UHDR_IMG_FMT_16bppYCbCr422, "
             "UHDR_IMG_FMT_12bppYCbCr420, UHDR_IMG_FMT_32bppRGBA8888}. Received %d",
             sdr_intent->fmt);
    return status;
  }
  if (hdr_intent->fmt != UHDR_IMG_FMT_24bppYCbCrP010 &&
      hdr_intent->fmt != UHDR_IMG_FMT_30bppYCbCr444 &&
      hdr_intent->fmt != UHDR_IMG_FMT_32bppRGBA1010102 &&
      hdr_intent->fmt != UHDR_IMG_FMT_64bppRGBAHalfFloat) {
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "generate gainmap method expects hdr intent color format to be one of "
             "{UHDR_IMG_FMT_24bppYCbCrP010, UHDR_IMG_FMT_30bppYCbCr444, "
             "UHDR_IMG_FMT_32bppRGBA1010102, UHDR_IMG_FMT_64bppRGBAHalfFloat}. Received %d",
             hdr_intent->fmt);
    return status;
  }

  ColorTransformFn hdrInvOetf = getInverseOetfFn(hdr_intent->ct);
  if (hdrInvOetf == nullptr) {
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for converting transfer characteristics %d to linear",
             hdr_intent->ct);
    return status;
  }

  LuminanceFn hdrLuminanceFn = getLuminanceFn(hdr_intent->cg);
  if (hdrLuminanceFn == nullptr) {
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for calculating luminance for color gamut %d",
             hdr_intent->cg);
    return status;
  }

  SceneToDisplayLuminanceFn hdrOotfFn = getOotfFn(hdr_intent->ct);
  if (hdrOotfFn == nullptr) {
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for calculating Ootf for color transfer %d",
             hdr_intent->ct);
    return status;
  }

  float hdr_white_nits = getReferenceDisplayPeakLuminanceInNits(hdr_intent->ct);
  if (hdr_white_nits == -1.0f) {
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "received invalid peak brightness %f nits for hdr reference display with color "
             "transfer %d ",
             hdr_white_nits, hdr_intent->ct);
    return status;
  }

  ColorTransformFn hdrGamutConversionFn;
  ColorTransformFn sdrGamutConversionFn;
  bool use_sdr_cg = true;
  if (sdr_intent->cg != hdr_intent->cg) {
    use_sdr_cg = kWriteXmpMetadata ||
                 !(hdr_intent->cg == UHDR_CG_BT_2100 ||
                   (hdr_intent->cg == UHDR_CG_DISPLAY_P3 && sdr_intent->cg != UHDR_CG_BT_2100));
    if (use_sdr_cg) {
      hdrGamutConversionFn = getGamutConversionFn(sdr_intent->cg, hdr_intent->cg);
      if (hdrGamutConversionFn == nullptr) {
        status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
        status.has_detail = 1;
        snprintf(status.detail, sizeof status.detail,
                 "No implementation available for gamut conversion from %d to %d", hdr_intent->cg,
                 sdr_intent->cg);
        return status;
      }
      sdrGamutConversionFn = identityConversion;
    } else {
      hdrGamutConversionFn = identityConversion;
      sdrGamutConversionFn = getGamutConversionFn(hdr_intent->cg, sdr_intent->cg);
      if (sdrGamutConversionFn == nullptr) {
        status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
        status.has_detail = 1;
        snprintf(status.detail, sizeof status.detail,
                 "No implementation available for gamut conversion from %d to %d", sdr_intent->cg,
                 hdr_intent->cg);
        return status;
      }
    }
  } else {
    hdrGamutConversionFn = sdrGamutConversionFn = identityConversion;
  }
  gainmap_metadata->use_base_cg = use_sdr_cg;

  ColorTransformFn sdrYuvToRgbFn = getYuvToRgbFn(sdr_intent->cg);
  if (sdrYuvToRgbFn == nullptr) {
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for converting yuv to rgb for color gamut %d",
             sdr_intent->cg);
    return status;
  }

  ColorTransformFn hdrYuvToRgbFn = getYuvToRgbFn(hdr_intent->cg);
  if (hdrYuvToRgbFn == nullptr) {
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for converting yuv to rgb for color gamut %d",
             hdr_intent->cg);
    return status;
  }

  LuminanceFn luminanceFn = getLuminanceFn(sdr_intent->cg);
  if (luminanceFn == nullptr) {
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for computing luminance for color gamut %d",
             sdr_intent->cg);
    return status;
  }

  SamplePixelFn sdr_sample_pixel_fn = getSamplePixelFn(sdr_intent->fmt);
  if (sdr_sample_pixel_fn == nullptr) {
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for reading pixels for color format %d", sdr_intent->fmt);
    return status;
  }

  SamplePixelFn hdr_sample_pixel_fn = getSamplePixelFn(hdr_intent->fmt);
  if (hdr_sample_pixel_fn == nullptr) {
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for reading pixels for color format %d", hdr_intent->fmt);
    return status;
  }

  if (sdr_is_601) {
    sdrYuvToRgbFn = p3YuvToRgb;
  }

  unsigned int image_width = sdr_intent->w;
  unsigned int image_height = sdr_intent->h;
  unsigned int map_width = image_width / mMapDimensionScaleFactor;
  unsigned int map_height = image_height / mMapDimensionScaleFactor;
  if (map_width == 0 || map_height == 0) {
    int scaleFactor = (std::min)(image_width, image_height);
    scaleFactor = (scaleFactor >= DCTSIZE) ? (scaleFactor / DCTSIZE) : 1;
    ALOGW(
        "configured gainmap scale factor is resulting in gainmap width and/or height to be zero, "
        "image width %u, image height %u, scale factor %d. Modifying gainmap scale factor to %d ",
        image_width, image_height, mMapDimensionScaleFactor, scaleFactor);
    setMapDimensionScaleFactor(scaleFactor);
    map_width = image_width / mMapDimensionScaleFactor;
    map_height = image_height / mMapDimensionScaleFactor;
  }

  // NOTE: Even though gainmap image raw descriptor is being initialized with hdr intent's color
  // aspects, one should not associate gainmap image to this color profile. gain map image gamut
  // space can be hdr intent's or sdr intent's space (a decision made during gainmap generation).
  // Its color transfer is dependent on the gainmap encoding gamma. The reason to initialize with
  // hdr color aspects is compressGainMap method will use this to write hdr intent color profile in
  // the bitstream.
  gainmap_img = std::make_unique<uhdr_raw_image_ext_t>(
      mUseMultiChannelGainMap ? UHDR_IMG_FMT_24bppRGB888 : UHDR_IMG_FMT_8bppYCbCr400,
      hdr_intent->cg, hdr_intent->ct, hdr_intent->range, map_width, map_height, 64);
  uhdr_raw_image_ext_t* dest = gainmap_img.get();

  auto generateGainMapOnePass = [this, sdr_intent, hdr_intent, gainmap_metadata, dest, map_height,
                                 hdrInvOetf, hdrLuminanceFn, hdrOotfFn, hdrGamutConversionFn,
                                 sdrGamutConversionFn, luminanceFn, sdrYuvToRgbFn, hdrYuvToRgbFn,
                                 sdr_sample_pixel_fn, hdr_sample_pixel_fn, hdr_white_nits,
                                 use_luminance]() -> void {
    std::fill_n(gainmap_metadata->max_content_boost, 3, hdr_white_nits / kSdrWhiteNits);
    std::fill_n(gainmap_metadata->min_content_boost, 3, 1.0f);
    std::fill_n(gainmap_metadata->gamma, 3, mGamma);
    std::fill_n(gainmap_metadata->offset_sdr, 3, 0.0f);
    std::fill_n(gainmap_metadata->offset_hdr, 3, 0.0f);
    gainmap_metadata->hdr_capacity_min = 1.0f;
    if (this->mTargetDispPeakBrightness != -1.0f) {
      gainmap_metadata->hdr_capacity_max = this->mTargetDispPeakBrightness / kSdrWhiteNits;
    } else {
      gainmap_metadata->hdr_capacity_max = gainmap_metadata->max_content_boost[0];
    }

    float log2MinBoost = log2(gainmap_metadata->min_content_boost[0]);
    float log2MaxBoost = log2(gainmap_metadata->max_content_boost[0]);

    const int threads = (std::min)(GetCPUCoreCount(), 4u);
    const int jobSizeInRows = 1;
    unsigned int rowStep = threads == 1 ? map_height : jobSizeInRows;
    JobQueue jobQueue;
    std::function<void()> generateMap =
        [this, sdr_intent, hdr_intent, gainmap_metadata, dest, hdrInvOetf, hdrLuminanceFn,
         hdrOotfFn, hdrGamutConversionFn, sdrGamutConversionFn, luminanceFn, sdrYuvToRgbFn,
         hdrYuvToRgbFn, sdr_sample_pixel_fn, hdr_sample_pixel_fn, hdr_white_nits, log2MinBoost,
         log2MaxBoost, use_luminance, &jobQueue]() -> void {
      unsigned int rowStart, rowEnd;
      const bool isHdrIntentRgb = isPixelFormatRgb(hdr_intent->fmt);
      const bool isSdrIntentRgb = isPixelFormatRgb(sdr_intent->fmt);
      const float hdrSampleToNitsFactor =
          hdr_intent->ct == UHDR_CT_LINEAR ? kSdrWhiteNits : hdr_white_nits;
      while (jobQueue.dequeueJob(rowStart, rowEnd)) {
        for (size_t y = rowStart; y < rowEnd; ++y) {
          for (size_t x = 0; x < dest->w; ++x) {
            Color sdr_rgb_gamma;

            if (isSdrIntentRgb) {
              sdr_rgb_gamma = sdr_sample_pixel_fn(sdr_intent, mMapDimensionScaleFactor, x, y);
            } else {
              Color sdr_yuv_gamma = sdr_sample_pixel_fn(sdr_intent, mMapDimensionScaleFactor, x, y);
              sdr_rgb_gamma = sdrYuvToRgbFn(sdr_yuv_gamma);
            }

            // We are assuming the SDR input is always sRGB transfer.
#if USE_SRGB_INVOETF_LUT
            Color sdr_rgb = srgbInvOetfLUT(sdr_rgb_gamma);
#else
            Color sdr_rgb = srgbInvOetf(sdr_rgb_gamma);
#endif
            sdr_rgb = sdrGamutConversionFn(sdr_rgb);
            sdr_rgb = clipNegatives(sdr_rgb);

            Color hdr_rgb_gamma;

            if (isHdrIntentRgb) {
              hdr_rgb_gamma = hdr_sample_pixel_fn(hdr_intent, mMapDimensionScaleFactor, x, y);
            } else {
              Color hdr_yuv_gamma = hdr_sample_pixel_fn(hdr_intent, mMapDimensionScaleFactor, x, y);
              hdr_rgb_gamma = hdrYuvToRgbFn(hdr_yuv_gamma);
            }
            Color hdr_rgb = hdrInvOetf(hdr_rgb_gamma);
            hdr_rgb = hdrOotfFn(hdr_rgb, hdrLuminanceFn);
            hdr_rgb = hdrGamutConversionFn(hdr_rgb);
            hdr_rgb = clipNegatives(hdr_rgb);

            if (mUseMultiChannelGainMap) {
              Color sdr_rgb_nits = sdr_rgb * kSdrWhiteNits;
              Color hdr_rgb_nits = hdr_rgb * hdrSampleToNitsFactor;
              size_t pixel_idx = (x + y * dest->stride[UHDR_PLANE_PACKED]) * 3;

              reinterpret_cast<uint8_t*>(dest->planes[UHDR_PLANE_PACKED])[pixel_idx] = encodeGain(
                  sdr_rgb_nits.r, hdr_rgb_nits.r, gainmap_metadata, log2MinBoost, log2MaxBoost, 0);
              reinterpret_cast<uint8_t*>(dest->planes[UHDR_PLANE_PACKED])[pixel_idx + 1] =
                  encodeGain(sdr_rgb_nits.g, hdr_rgb_nits.g, gainmap_metadata, log2MinBoost,
                             log2MaxBoost, 1);
              reinterpret_cast<uint8_t*>(dest->planes[UHDR_PLANE_PACKED])[pixel_idx + 2] =
                  encodeGain(sdr_rgb_nits.b, hdr_rgb_nits.b, gainmap_metadata, log2MinBoost,
                             log2MaxBoost, 2);
            } else {
              float sdr_y_nits;
              float hdr_y_nits;
              if (use_luminance) {
                sdr_y_nits = luminanceFn(sdr_rgb) * kSdrWhiteNits;
                hdr_y_nits = luminanceFn(hdr_rgb) * hdrSampleToNitsFactor;
              } else {
                sdr_y_nits = fmax(sdr_rgb.r, fmax(sdr_rgb.g, sdr_rgb.b)) * kSdrWhiteNits;
                hdr_y_nits = fmax(hdr_rgb.r, fmax(hdr_rgb.g, hdr_rgb.b)) * hdrSampleToNitsFactor;
              }

              size_t pixel_idx = x + y * dest->stride[UHDR_PLANE_Y];

              reinterpret_cast<uint8_t*>(dest->planes[UHDR_PLANE_Y])[pixel_idx] = encodeGain(
                  sdr_y_nits, hdr_y_nits, gainmap_metadata, log2MinBoost, log2MaxBoost, 0);
            }
          }
        }
      }
    };

    // generate map
    std::vector<std::thread> workers;
    for (int th = 0; th < threads - 1; th++) {
      workers.push_back(std::thread(generateMap));
    }

    for (unsigned int rowStart = 0; rowStart < map_height;) {
      unsigned int rowEnd = (std::min)(rowStart + rowStep, map_height);
      jobQueue.enqueueJob(rowStart, rowEnd);
      rowStart = rowEnd;
    }
    jobQueue.markQueueForEnd();
    generateMap();
    std::for_each(workers.begin(), workers.end(), [](std::thread& t) { t.join(); });
  };

  auto generateGainMapTwoPass = [this, sdr_intent, hdr_intent, gainmap_metadata, dest, map_width,
                                 map_height, hdrInvOetf, hdrLuminanceFn, hdrOotfFn,
                                 hdrGamutConversionFn, sdrGamutConversionFn, luminanceFn,
                                 sdrYuvToRgbFn, hdrYuvToRgbFn, sdr_sample_pixel_fn,
                                 hdr_sample_pixel_fn, hdr_white_nits, use_luminance]() -> void {
    uhdr_memory_block_t gainmap_mem((size_t)map_width * map_height * sizeof(float) *
                                    (mUseMultiChannelGainMap ? 3 : 1));
    float* gainmap_data = reinterpret_cast<float*>(gainmap_mem.m_buffer.get());
    float gainmap_min[3] = {127.0f, 127.0f, 127.0f};
    float gainmap_max[3] = {-128.0f, -128.0f, -128.0f};
    std::mutex gainmap_minmax;

    const int threads = (std::min)(GetCPUCoreCount(), 4u);
    const int jobSizeInRows = 1;
    unsigned int rowStep = threads == 1 ? map_height : jobSizeInRows;
    JobQueue jobQueue;
    std::function<void()> generateMap =
        [this, sdr_intent, hdr_intent, gainmap_data, map_width, hdrInvOetf, hdrLuminanceFn,
         hdrOotfFn, hdrGamutConversionFn, sdrGamutConversionFn, luminanceFn, sdrYuvToRgbFn,
         hdrYuvToRgbFn, sdr_sample_pixel_fn, hdr_sample_pixel_fn, hdr_white_nits, use_luminance,
         &gainmap_min, &gainmap_max, &gainmap_minmax, &jobQueue]() -> void {
      unsigned int rowStart, rowEnd;
      const bool isHdrIntentRgb = isPixelFormatRgb(hdr_intent->fmt);
      const bool isSdrIntentRgb = isPixelFormatRgb(sdr_intent->fmt);
      const float hdrSampleToNitsFactor =
          hdr_intent->ct == UHDR_CT_LINEAR ? kSdrWhiteNits : hdr_white_nits;
      float gainmap_min_th[3] = {127.0f, 127.0f, 127.0f};
      float gainmap_max_th[3] = {-128.0f, -128.0f, -128.0f};

      while (jobQueue.dequeueJob(rowStart, rowEnd)) {
        for (size_t y = rowStart; y < rowEnd; ++y) {
          for (size_t x = 0; x < map_width; ++x) {
            Color sdr_rgb_gamma;

            if (isSdrIntentRgb) {
              sdr_rgb_gamma = sdr_sample_pixel_fn(sdr_intent, mMapDimensionScaleFactor, x, y);
            } else {
              Color sdr_yuv_gamma = sdr_sample_pixel_fn(sdr_intent, mMapDimensionScaleFactor, x, y);
              sdr_rgb_gamma = sdrYuvToRgbFn(sdr_yuv_gamma);
            }

            // We are assuming the SDR input is always sRGB transfer.
#if USE_SRGB_INVOETF_LUT
            Color sdr_rgb = srgbInvOetfLUT(sdr_rgb_gamma);
#else
            Color sdr_rgb = srgbInvOetf(sdr_rgb_gamma);
#endif
            sdr_rgb = sdrGamutConversionFn(sdr_rgb);
            sdr_rgb = clipNegatives(sdr_rgb);

            Color hdr_rgb_gamma;

            if (isHdrIntentRgb) {
              hdr_rgb_gamma = hdr_sample_pixel_fn(hdr_intent, mMapDimensionScaleFactor, x, y);
            } else {
              Color hdr_yuv_gamma = hdr_sample_pixel_fn(hdr_intent, mMapDimensionScaleFactor, x, y);
              hdr_rgb_gamma = hdrYuvToRgbFn(hdr_yuv_gamma);
            }
            Color hdr_rgb = hdrInvOetf(hdr_rgb_gamma);
            hdr_rgb = hdrOotfFn(hdr_rgb, hdrLuminanceFn);
            hdr_rgb = hdrGamutConversionFn(hdr_rgb);
            hdr_rgb = clipNegatives(hdr_rgb);

            if (mUseMultiChannelGainMap) {
              Color sdr_rgb_nits = sdr_rgb * kSdrWhiteNits;
              Color hdr_rgb_nits = hdr_rgb * hdrSampleToNitsFactor;
              size_t pixel_idx = (x + y * map_width) * 3;

              gainmap_data[pixel_idx] = computeGain(sdr_rgb_nits.r, hdr_rgb_nits.r);
              gainmap_data[pixel_idx + 1] = computeGain(sdr_rgb_nits.g, hdr_rgb_nits.g);
              gainmap_data[pixel_idx + 2] = computeGain(sdr_rgb_nits.b, hdr_rgb_nits.b);
              for (int i = 0; i < 3; i++) {
                gainmap_min_th[i] = (std::min)(gainmap_data[pixel_idx + i], gainmap_min_th[i]);
                gainmap_max_th[i] = (std::max)(gainmap_data[pixel_idx + i], gainmap_max_th[i]);
              }
            } else {
              float sdr_y_nits;
              float hdr_y_nits;

              if (use_luminance) {
                sdr_y_nits = luminanceFn(sdr_rgb) * kSdrWhiteNits;
                hdr_y_nits = luminanceFn(hdr_rgb) * hdrSampleToNitsFactor;
              } else {
                sdr_y_nits = fmax(sdr_rgb.r, fmax(sdr_rgb.g, sdr_rgb.b)) * kSdrWhiteNits;
                hdr_y_nits = fmax(hdr_rgb.r, fmax(hdr_rgb.g, hdr_rgb.b)) * hdrSampleToNitsFactor;
              }

              size_t pixel_idx = x + y * map_width;
              gainmap_data[pixel_idx] = computeGain(sdr_y_nits, hdr_y_nits);
              gainmap_min_th[0] = (std::min)(gainmap_data[pixel_idx], gainmap_min_th[0]);
              gainmap_max_th[0] = (std::max)(gainmap_data[pixel_idx], gainmap_max_th[0]);
            }
          }
        }
      }
      {
        std::unique_lock<std::mutex> lock{gainmap_minmax};
        for (int index = 0; index < (mUseMultiChannelGainMap ? 3 : 1); index++) {
          gainmap_min[index] = (std::min)(gainmap_min[index], gainmap_min_th[index]);
          gainmap_max[index] = (std::max)(gainmap_max[index], gainmap_max_th[index]);
        }
      }
    };

    // generate map
    std::vector<std::thread> workers;
    for (int th = 0; th < threads - 1; th++) {
      workers.push_back(std::thread(generateMap));
    }

    for (unsigned int rowStart = 0; rowStart < map_height;) {
      unsigned int rowEnd = (std::min)(rowStart + rowStep, map_height);
      jobQueue.enqueueJob(rowStart, rowEnd);
      rowStart = rowEnd;
    }
    jobQueue.markQueueForEnd();
    generateMap();
    std::for_each(workers.begin(), workers.end(), [](std::thread& t) { t.join(); });

    // xmp metadata current implementation does not support writing multichannel metadata
    // so merge them in to one
    if (kWriteXmpMetadata) {
      float min_content_boost_log2 = gainmap_min[0];
      float max_content_boost_log2 = gainmap_max[0];
      for (int index = 1; index < (mUseMultiChannelGainMap ? 3 : 1); index++) {
        min_content_boost_log2 = (std::min)(gainmap_min[index], min_content_boost_log2);
        max_content_boost_log2 = (std::max)(gainmap_max[index], max_content_boost_log2);
      }
      std::fill_n(gainmap_min, 3, min_content_boost_log2);
      std::fill_n(gainmap_max, 3, max_content_boost_log2);
    }

    for (int index = 0; index < (mUseMultiChannelGainMap ? 3 : 1); index++) {
      // gain coefficient range [-14.3, 15.6] is capable of representing hdr pels from sdr pels.
      // Allowing further excursion might not offer any benefit and on the downside can cause bigger
      // error during affine map and inverse affine map.
      gainmap_min[index] = (std::clamp)(gainmap_min[index], -14.3f, 15.6f);
      gainmap_max[index] = (std::clamp)(gainmap_max[index], -14.3f, 15.6f);
      if (this->mMaxContentBoost != FLT_MAX) {
        float suggestion = log2(this->mMaxContentBoost);
        gainmap_max[index] = (std::min)(gainmap_max[index], suggestion);
      }
      if (this->mMinContentBoost != FLT_MIN) {
        float suggestion = log2(this->mMinContentBoost);
        gainmap_min[index] = (std::max)(gainmap_min[index], suggestion);
      }
      if (fabs(gainmap_max[index] - gainmap_min[index]) < FLT_EPSILON) {
        gainmap_max[index] += 0.1f;  // to avoid div by zero during affine transform
      }
    }

    std::function<void()> encodeMap = [this, gainmap_data, map_width, dest, gainmap_min,
                                       gainmap_max, &jobQueue]() -> void {
      unsigned int rowStart, rowEnd;

      while (jobQueue.dequeueJob(rowStart, rowEnd)) {
        if (mUseMultiChannelGainMap) {
          for (size_t j = rowStart; j < rowEnd; j++) {
            size_t dst_pixel_idx = j * dest->stride[UHDR_PLANE_PACKED] * 3;
            size_t src_pixel_idx = j * map_width * 3;
            for (size_t i = 0; i < map_width * 3; i++) {
              reinterpret_cast<uint8_t*>(dest->planes[UHDR_PLANE_PACKED])[dst_pixel_idx + i] =
                  affineMapGain(gainmap_data[src_pixel_idx + i], gainmap_min[i % 3],
                                gainmap_max[i % 3], this->mGamma);
            }
          }
        } else {
          for (size_t j = rowStart; j < rowEnd; j++) {
            size_t dst_pixel_idx = j * dest->stride[UHDR_PLANE_Y];
            size_t src_pixel_idx = j * map_width;
            for (size_t i = 0; i < map_width; i++) {
              reinterpret_cast<uint8_t*>(dest->planes[UHDR_PLANE_Y])[dst_pixel_idx + i] =
                  affineMapGain(gainmap_data[src_pixel_idx + i], gainmap_min[0], gainmap_max[0],
                                this->mGamma);
            }
          }
        }
      }
    };
    workers.clear();
    jobQueue.reset();
    rowStep = threads == 1 ? map_height : 1;
    for (int th = 0; th < threads - 1; th++) {
      workers.push_back(std::thread(encodeMap));
    }
    for (unsigned int rowStart = 0; rowStart < map_height;) {
      unsigned int rowEnd = (std::min)(rowStart + rowStep, map_height);
      jobQueue.enqueueJob(rowStart, rowEnd);
      rowStart = rowEnd;
    }
    jobQueue.markQueueForEnd();
    encodeMap();
    std::for_each(workers.begin(), workers.end(), [](std::thread& t) { t.join(); });

    if (mUseMultiChannelGainMap) {
      for (int i = 0; i < 3; i++) {
        gainmap_metadata->max_content_boost[i] = exp2(gainmap_max[i]);
        gainmap_metadata->min_content_boost[i] = exp2(gainmap_min[i]);
      }
    } else {
      std::fill_n(gainmap_metadata->max_content_boost, 3, exp2(gainmap_max[0]));
      std::fill_n(gainmap_metadata->min_content_boost, 3, exp2(gainmap_min[0]));
    }
    std::fill_n(gainmap_metadata->gamma, 3, this->mGamma);
    std::fill_n(gainmap_metadata->offset_sdr, 3, kSdrOffset);
    std::fill_n(gainmap_metadata->offset_hdr, 3, kHdrOffset);
    gainmap_metadata->hdr_capacity_min = 1.0f;
    if (this->mTargetDispPeakBrightness != -1.0f) {
      gainmap_metadata->hdr_capacity_max = this->mTargetDispPeakBrightness / kSdrWhiteNits;
    } else {
      gainmap_metadata->hdr_capacity_max = hdr_white_nits / kSdrWhiteNits;
    }
  };

  if (mEncPreset == UHDR_USAGE_REALTIME) {
    generateGainMapOnePass();
  } else {
    generateGainMapTwoPass();
  }

  return status;
}

// JPEG/R structure:
// SOI (ff d8)
//
// (Optional, if EXIF package is from outside (Encode API-0 API-1), or if EXIF package presents
// in the JPEG input (Encode API-2, API-3, API-4))
// APP1 (ff e1)
// 2 bytes of length (2 + length of exif package)
// EXIF package (this includes the first two bytes representing the package length)
//
// (Required, XMP package) APP1 (ff e1)
// 2 bytes of length (2 + 29 + length of xmp package)
// name space ("http://ns.adobe.com/xap/1.0/\0")
// XMP
//
// (Required, ISO 21496-1 metadata, version only) APP2 (ff e2)
// 2 bytes of length
// name space (""urn:iso:std:iso:ts:21496:-1\0")
// 2 bytes minimum_version: (00 00)
// 2 bytes writer_version: (00 00)
//
// (Required, MPF package) APP2 (ff e2)
// 2 bytes of length
// MPF
//
// (Required) primary image (without the first two bytes (SOI) and EXIF, may have other packages)
//
// SOI (ff d8)
//
// (Required, XMP package) APP1 (ff e1)
// 2 bytes of length (2 + 29 + length of xmp package)
// name space ("http://ns.adobe.com/xap/1.0/\0")
// XMP
//
// (Required, ISO 21496-1 metadata) APP2 (ff e2)
// 2 bytes of length
// name space (""urn:iso:std:iso:ts:21496:-1\0")
// metadata
//
// (Required) secondary image (the gain map, without the first two bytes (SOI))
//
// Metadata versions we are using:
// ECMA TR-98 for JFIF marker
// Exif 2.2 spec for EXIF marker
// Adobe XMP spec part 3 for XMP marker
// ICC v4.3 spec for ICC
uhdr_error_info_t JpegR::appendGainMap(uhdr_compressed_image_t* sdr_intent_compressed,
                                       uhdr_compressed_image_t* gainmap_compressed,
                                       uhdr_mem_block_t* pExif, void* pIcc, size_t icc_size,
                                       uhdr_gainmap_metadata_ext_t* metadata,
                                       uhdr_compressed_image_t* dest) {
  if (kWriteXmpMetadata && !metadata->use_base_cg) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(
        status.detail, sizeof status.detail,
        "setting gainmap application space as alternate image space in xmp mode is not supported");
    return status;
  }

  if (kWriteXmpMetadata && !metadata->are_all_channels_identical()) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "signalling multichannel gainmap metadata in xmp mode is not supported");
    return status;
  }

  const size_t xmpNameSpaceLength = kXmpNameSpace.size() + 1;  // need to count the null terminator
  const size_t isoNameSpaceLength = kIsoNameSpace.size() + 1;  // need to count the null terminator

  /////////////////////////////////////////////////////////////////////////////////////////////////
  // calculate secondary image length first, because the length will be written into the primary //
  // image xmp                                                                                   //
  /////////////////////////////////////////////////////////////////////////////////////////////////

  // XMP
  string xmp_secondary;
  size_t xmp_secondary_length;
  if (kWriteXmpMetadata) {
    xmp_secondary = generateXmpForSecondaryImage(*metadata);
    // xmp_secondary_length = 2 bytes representing the length of the package +
    //  + xmpNameSpaceLength = 29 bytes length
    //  + length of xmp packet = xmp_secondary.size()
    xmp_secondary_length = 2 + xmpNameSpaceLength + xmp_secondary.size();
  }

  // ISO
  uhdr_gainmap_metadata_frac iso_secondary_metadata;
  std::vector<uint8_t> iso_secondary_data;
  size_t iso_secondary_length;
  if (kWriteIso21496_1Metadata) {
    UHDR_ERR_CHECK(uhdr_gainmap_metadata_frac::gainmapMetadataFloatToFraction(
        metadata, &iso_secondary_metadata));

    UHDR_ERR_CHECK(uhdr_gainmap_metadata_frac::encodeGainmapMetadata(&iso_secondary_metadata,
                                                                     iso_secondary_data));
    // iso_secondary_length = 2 bytes representing the length of the package +
    //  + isoNameSpaceLength = 28 bytes length
    //  + length of iso metadata packet = iso_secondary_data.size()
    iso_secondary_length = 2 + isoNameSpaceLength + iso_secondary_data.size();
  }

  size_t secondary_image_size = gainmap_compressed->data_sz;
  if (kWriteXmpMetadata) {
    secondary_image_size += 2 /* 2 bytes length of APP1 sign */ + xmp_secondary_length;
  }
  if (kWriteIso21496_1Metadata) {
    secondary_image_size += 2 /* 2 bytes length of APP2 sign */ + iso_secondary_length;
  }

  // Check if EXIF package presents in the JPEG input.
  // If so, extract and remove the EXIF package.
  JpegDecoderHelper decoder;
  UHDR_ERR_CHECK(decoder.parseImage(sdr_intent_compressed->data, sdr_intent_compressed->data_sz));

  uhdr_mem_block_t exif_from_jpg;
  exif_from_jpg.data = nullptr;
  exif_from_jpg.data_sz = 0;

  uhdr_compressed_image_t new_jpg_image;
  new_jpg_image.data = nullptr;
  new_jpg_image.data_sz = 0;
  new_jpg_image.capacity = 0;
  new_jpg_image.cg = UHDR_CG_UNSPECIFIED;
  new_jpg_image.ct = UHDR_CT_UNSPECIFIED;
  new_jpg_image.range = UHDR_CR_UNSPECIFIED;

  std::unique_ptr<uint8_t[]> dest_data;
  if (decoder.getEXIFPos() >= 0) {
    if (pExif != nullptr) {
      uhdr_error_info_t status;
      status.error_code = UHDR_CODEC_INVALID_PARAM;
      status.has_detail = 1;
      snprintf(status.detail, sizeof status.detail,
               "received exif from uhdr_enc_set_exif_data() while the base image intent already "
               "contains exif, unsure which one to use");
      return status;
    }
    copyJpegWithoutExif(&new_jpg_image, sdr_intent_compressed, decoder.getEXIFPos(),
                        decoder.getEXIFSize());
    dest_data.reset(reinterpret_cast<uint8_t*>(new_jpg_image.data));
    exif_from_jpg.data = decoder.getEXIFPtr();
    exif_from_jpg.data_sz = decoder.getEXIFSize();
    pExif = &exif_from_jpg;
  }

  uhdr_compressed_image_t* final_primary_jpg_image_ptr =
      new_jpg_image.data_sz == 0 ? sdr_intent_compressed : &new_jpg_image;

  size_t pos = 0;
  // Begin primary image
  // Write SOI
  UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kStart, 1, pos));
  UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kSOI, 1, pos));

  // Write EXIF
  if (pExif != nullptr) {
    const size_t length = 2 + pExif->data_sz;
    const uint8_t lengthH = ((length >> 8) & 0xff);
    const uint8_t lengthL = (length & 0xff);
    UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kStart, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kAPP1, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &lengthH, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &lengthL, 1, pos));
    UHDR_ERR_CHECK(Write(dest, pExif->data, pExif->data_sz, pos));
  }

  // Prepare and write XMP
  if (kWriteXmpMetadata) {
    const string xmp_primary = generateXmpForPrimaryImage(secondary_image_size, *metadata);
    const size_t length = 2 + xmpNameSpaceLength + xmp_primary.size();
    const uint8_t lengthH = ((length >> 8) & 0xff);
    const uint8_t lengthL = (length & 0xff);
    UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kStart, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kAPP1, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &lengthH, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &lengthL, 1, pos));
    UHDR_ERR_CHECK(Write(dest, (void*)kXmpNameSpace.c_str(), xmpNameSpaceLength, pos));
    UHDR_ERR_CHECK(Write(dest, (void*)xmp_primary.c_str(), xmp_primary.size(), pos));
  }

  // Write ICC
  if (pIcc != nullptr && icc_size > 0) {
    const size_t length = icc_size + 2;
    const uint8_t lengthH = ((length >> 8) & 0xff);
    const uint8_t lengthL = (length & 0xff);
    UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kStart, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kAPP2, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &lengthH, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &lengthL, 1, pos));
    UHDR_ERR_CHECK(Write(dest, pIcc, icc_size, pos));
  }

  // Prepare and write ISO 21496-1 metadata
  if (kWriteIso21496_1Metadata) {
    const size_t length = 2 + isoNameSpaceLength + 4;
    uint8_t zero = 0;
    const uint8_t lengthH = ((length >> 8) & 0xff);
    const uint8_t lengthL = (length & 0xff);
    UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kStart, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kAPP2, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &lengthH, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &lengthL, 1, pos));
    UHDR_ERR_CHECK(Write(dest, (void*)kIsoNameSpace.c_str(), isoNameSpaceLength, pos));
    UHDR_ERR_CHECK(Write(dest, &zero, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &zero, 1, pos));  // 2 bytes minimum_version: (00 00)
    UHDR_ERR_CHECK(Write(dest, &zero, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &zero, 1, pos));  // 2 bytes writer_version: (00 00)
  }

  // Prepare and write MPF
  {
    const size_t length = 2 + calculateMpfSize();
    const uint8_t lengthH = ((length >> 8) & 0xff);
    const uint8_t lengthL = (length & 0xff);
    size_t primary_image_size = pos + length + final_primary_jpg_image_ptr->data_sz;
    // between APP2 + package size + signature
    // ff e2 00 58 4d 50 46 00
    // 2 + 2 + 4 = 8 (bytes)
    // and ff d8 sign of the secondary image
    size_t secondary_image_offset = primary_image_size - pos - 8;
    std::shared_ptr<DataStruct> mpf = generateMpf(primary_image_size, 0, /* primary_image_offset */
                                                  secondary_image_size, secondary_image_offset);
    UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kStart, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kAPP2, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &lengthH, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &lengthL, 1, pos));
    UHDR_ERR_CHECK(Write(dest, (void*)mpf->getData(), mpf->getLength(), pos));
  }

  // Write primary image
  UHDR_ERR_CHECK(Write(dest, (uint8_t*)final_primary_jpg_image_ptr->data + 2,
                       final_primary_jpg_image_ptr->data_sz - 2, pos));
  // Finish primary image

  // Begin secondary image (gain map)
  // Write SOI
  UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kStart, 1, pos));
  UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kSOI, 1, pos));

  // Prepare and write XMP
  if (kWriteXmpMetadata) {
    const size_t length = xmp_secondary_length;
    const uint8_t lengthH = ((length >> 8) & 0xff);
    const uint8_t lengthL = (length & 0xff);
    UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kStart, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kAPP1, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &lengthH, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &lengthL, 1, pos));
    UHDR_ERR_CHECK(Write(dest, (void*)kXmpNameSpace.c_str(), xmpNameSpaceLength, pos));
    UHDR_ERR_CHECK(Write(dest, (void*)xmp_secondary.c_str(), xmp_secondary.size(), pos));
  }

  // Prepare and write ISO 21496-1 metadata
  if (kWriteIso21496_1Metadata) {
    const size_t length = iso_secondary_length;
    const uint8_t lengthH = ((length >> 8) & 0xff);
    const uint8_t lengthL = (length & 0xff);
    UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kStart, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &photos_editing_formats::image_io::JpegMarker::kAPP2, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &lengthH, 1, pos));
    UHDR_ERR_CHECK(Write(dest, &lengthL, 1, pos));
    UHDR_ERR_CHECK(Write(dest, (void*)kIsoNameSpace.c_str(), isoNameSpaceLength, pos));
    UHDR_ERR_CHECK(Write(dest, (void*)iso_secondary_data.data(), iso_secondary_data.size(), pos));
  }

  // Write secondary image
  UHDR_ERR_CHECK(
      Write(dest, (uint8_t*)gainmap_compressed->data + 2, gainmap_compressed->data_sz - 2, pos));

  // Set back length
  dest->data_sz = pos;

  // Done!
  return g_no_error;
}

uhdr_error_info_t JpegR::getJPEGRInfo(uhdr_compressed_image_t* uhdr_compressed_img,
                                      jr_info_ptr uhdr_image_info) {
  uhdr_compressed_image_t primary_image, gainmap;

  UHDR_ERR_CHECK(extractPrimaryImageAndGainMap(uhdr_compressed_img, &primary_image, &gainmap))

  UHDR_ERR_CHECK(parseJpegInfo(&primary_image, uhdr_image_info->primaryImgInfo,
                               &uhdr_image_info->width, &uhdr_image_info->height))
  if (uhdr_image_info->gainmapImgInfo != nullptr) {
    UHDR_ERR_CHECK(parseJpegInfo(&gainmap, uhdr_image_info->gainmapImgInfo))
  }

  return g_no_error;
}

uhdr_error_info_t JpegR::parseGainMapMetadata(uint8_t* iso_data, size_t iso_size, uint8_t* xmp_data,
                                              size_t xmp_size,
                                              uhdr_gainmap_metadata_ext_t* uhdr_metadata) {
  if (iso_size > 0) {
    if (iso_size < kIsoNameSpace.size() + 1) {
      uhdr_error_info_t status;
      status.error_code = UHDR_CODEC_ERROR;
      status.has_detail = 1;
      snprintf(status.detail, sizeof status.detail,
               "iso block size needs to be atleast %zd but got %zd", kIsoNameSpace.size() + 1,
               iso_size);
      return status;
    }
    uhdr_gainmap_metadata_frac decodedMetadata;
    std::vector<uint8_t> iso_vec;
    for (size_t i = kIsoNameSpace.size() + 1; i < iso_size; i++) {
      iso_vec.push_back(iso_data[i]);
    }

    UHDR_ERR_CHECK(uhdr_gainmap_metadata_frac::decodeGainmapMetadata(iso_vec, &decodedMetadata));
    UHDR_ERR_CHECK(uhdr_gainmap_metadata_frac::gainmapMetadataFractionToFloat(&decodedMetadata,
                                                                              uhdr_metadata));
  } else if (xmp_size > 0) {
    UHDR_ERR_CHECK(getMetadataFromXMP(xmp_data, xmp_size, uhdr_metadata));
  } else {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_INVALID_PARAM;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "received no valid buffer to parse gainmap metadata");
    return status;
  }

  return g_no_error;
}

/* Decode API */
uhdr_error_info_t JpegR::decodeJPEGR(uhdr_compressed_image_t* uhdr_compressed_img,
                                     uhdr_raw_image_t* dest, float max_display_boost,
                                     uhdr_color_transfer_t output_ct, uhdr_img_fmt_t output_format,
                                     uhdr_raw_image_t* gainmap_img,
                                     uhdr_gainmap_metadata_t* gainmap_metadata) {
  uhdr_compressed_image_t primary_jpeg_image, gainmap_jpeg_image;
  UHDR_ERR_CHECK(
      extractPrimaryImageAndGainMap(uhdr_compressed_img, &primary_jpeg_image, &gainmap_jpeg_image))

  JpegDecoderHelper jpeg_dec_obj_sdr;
  UHDR_ERR_CHECK(jpeg_dec_obj_sdr.decompressImage(
      primary_jpeg_image.data, primary_jpeg_image.data_sz,
      (output_ct == UHDR_CT_SRGB) ? DECODE_TO_RGB_CS : DECODE_TO_YCBCR_CS));

  JpegDecoderHelper jpeg_dec_obj_gm;
  uhdr_raw_image_t gainmap;
  if (gainmap_img != nullptr || output_ct != UHDR_CT_SRGB) {
    UHDR_ERR_CHECK(jpeg_dec_obj_gm.decompressImage(gainmap_jpeg_image.data,
                                                   gainmap_jpeg_image.data_sz, DECODE_STREAM));
    gainmap = jpeg_dec_obj_gm.getDecompressedImage();
    if (gainmap_img != nullptr) {
      UHDR_ERR_CHECK(copy_raw_image(&gainmap, gainmap_img));
    }
    gainmap.cg =
        IccHelper::readIccColorGamut(jpeg_dec_obj_gm.getICCPtr(), jpeg_dec_obj_gm.getICCSize());
  }

  uhdr_gainmap_metadata_ext_t uhdr_metadata;
  if (gainmap_metadata != nullptr || output_ct != UHDR_CT_SRGB) {
    UHDR_ERR_CHECK(parseGainMapMetadata(static_cast<uint8_t*>(jpeg_dec_obj_gm.getIsoMetadataPtr()),
                                        jpeg_dec_obj_gm.getIsoMetadataSize(),
                                        static_cast<uint8_t*>(jpeg_dec_obj_gm.getXMPPtr()),
                                        jpeg_dec_obj_gm.getXMPSize(), &uhdr_metadata))
    if (gainmap_metadata != nullptr) {
      std::copy(uhdr_metadata.min_content_boost, uhdr_metadata.min_content_boost + 3,
                gainmap_metadata->min_content_boost);
      std::copy(uhdr_metadata.max_content_boost, uhdr_metadata.max_content_boost + 3,
                gainmap_metadata->max_content_boost);
      std::copy(uhdr_metadata.gamma, uhdr_metadata.gamma + 3, gainmap_metadata->gamma);
      std::copy(uhdr_metadata.offset_sdr, uhdr_metadata.offset_sdr + 3,
                gainmap_metadata->offset_sdr);
      std::copy(uhdr_metadata.offset_hdr, uhdr_metadata.offset_hdr + 3,
                gainmap_metadata->offset_hdr);
      gainmap_metadata->hdr_capacity_min = uhdr_metadata.hdr_capacity_min;
      gainmap_metadata->hdr_capacity_max = uhdr_metadata.hdr_capacity_max;
      gainmap_metadata->use_base_cg = uhdr_metadata.use_base_cg;
    }
  }

  uhdr_raw_image_t sdr_intent = jpeg_dec_obj_sdr.getDecompressedImage();
  sdr_intent.cg =
      IccHelper::readIccColorGamut(jpeg_dec_obj_sdr.getICCPtr(), jpeg_dec_obj_sdr.getICCSize());
  if (output_ct == UHDR_CT_SRGB) {
    UHDR_ERR_CHECK(copy_raw_image(&sdr_intent, dest));
    return g_no_error;
  }

  UHDR_ERR_CHECK(applyGainMap(&sdr_intent, &gainmap, &uhdr_metadata, output_ct, output_format,
                              max_display_boost, dest));

  return g_no_error;
}

uhdr_error_info_t JpegR::applyGainMap(uhdr_raw_image_t* sdr_intent, uhdr_raw_image_t* gainmap_img,
                                      uhdr_gainmap_metadata_ext_t* gainmap_metadata,
                                      uhdr_color_transfer_t output_ct,
                                      [[maybe_unused]] uhdr_img_fmt_t output_format,
                                      float max_display_boost, uhdr_raw_image_t* dest) {
  if (gainmap_metadata->version.compare(kJpegrVersion)) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "Unsupported gainmap metadata, version. Expected %s, Got %s", kJpegrVersion,
             gainmap_metadata->version.c_str());
    return status;
  }
  UHDR_ERR_CHECK(uhdr_validate_gainmap_metadata_descriptor(gainmap_metadata));
  if (sdr_intent->fmt != UHDR_IMG_FMT_24bppYCbCr444 &&
      sdr_intent->fmt != UHDR_IMG_FMT_16bppYCbCr422 &&
      sdr_intent->fmt != UHDR_IMG_FMT_12bppYCbCr420) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "apply gainmap method expects base image color format to be one of "
             "{UHDR_IMG_FMT_24bppYCbCr444, UHDR_IMG_FMT_16bppYCbCr422, "
             "UHDR_IMG_FMT_12bppYCbCr420}. Received %d",
             sdr_intent->fmt);
    return status;
  }
  if (gainmap_img->fmt != UHDR_IMG_FMT_8bppYCbCr400 &&
      gainmap_img->fmt != UHDR_IMG_FMT_24bppRGB888 &&
      gainmap_img->fmt != UHDR_IMG_FMT_32bppRGBA8888) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "apply gainmap method expects gainmap image color format to be one of "
             "{UHDR_IMG_FMT_8bppYCbCr400, UHDR_IMG_FMT_24bppRGB888, UHDR_IMG_FMT_32bppRGBA8888}. "
             "Received %d",
             gainmap_img->fmt);
    return status;
  }

  uhdr_color_gamut_t sdr_cg =
      sdr_intent->cg == UHDR_CG_UNSPECIFIED ? UHDR_CG_BT_709 : sdr_intent->cg;
  uhdr_color_gamut_t hdr_cg = gainmap_img->cg == UHDR_CG_UNSPECIFIED ? sdr_cg : gainmap_img->cg;
  dest->cg = hdr_cg;
  ColorTransformFn hdrGamutConversionFn =
      gainmap_metadata->use_base_cg ? getGamutConversionFn(hdr_cg, sdr_cg) : identityConversion;
  ColorTransformFn sdrGamutConversionFn =
      gainmap_metadata->use_base_cg ? identityConversion : getGamutConversionFn(hdr_cg, sdr_cg);
  if (hdrGamutConversionFn == nullptr || sdrGamutConversionFn == nullptr) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_ERROR;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for converting from gamut %d to %d", sdr_cg, hdr_cg);
    return status;
  }

#ifdef UHDR_ENABLE_GLES
  if (mUhdrGLESCtxt != nullptr) {
    if (((sdr_intent->fmt == UHDR_IMG_FMT_12bppYCbCr420 && sdr_intent->w % 2 == 0 &&
          sdr_intent->h % 2 == 0) ||
         (sdr_intent->fmt == UHDR_IMG_FMT_16bppYCbCr422 && sdr_intent->w % 2 == 0) ||
         (sdr_intent->fmt == UHDR_IMG_FMT_24bppYCbCr444)) &&
        isBufferDataContiguous(sdr_intent) && isBufferDataContiguous(gainmap_img) &&
        isBufferDataContiguous(dest)) {
      // TODO: both inputs and outputs of GLES implementation assumes that raw image is contiguous
      // and without strides. If not, handle the same by using temp copy
      float display_boost = (std::min)(max_display_boost, gainmap_metadata->hdr_capacity_max);

      return applyGainMapGLES(sdr_intent, gainmap_img, gainmap_metadata, output_ct, display_boost,
                              sdr_cg, hdr_cg, static_cast<uhdr_opengl_ctxt_t*>(mUhdrGLESCtxt));
    }
  }
#endif

  std::unique_ptr<uhdr_raw_image_ext_t> resized_gainmap = nullptr;
  {
    float primary_aspect_ratio = (float)sdr_intent->w / sdr_intent->h;
    float gainmap_aspect_ratio = (float)gainmap_img->w / gainmap_img->h;
    float delta_aspect_ratio = fabs(primary_aspect_ratio - gainmap_aspect_ratio);
    // Allow 1% delta
    const float delta_tolerance = 0.01f;
    if (delta_aspect_ratio / primary_aspect_ratio > delta_tolerance) {
      resized_gainmap = resize_image(gainmap_img, sdr_intent->w, sdr_intent->h);
      if (resized_gainmap == nullptr) {
        uhdr_error_info_t status;
        status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
        status.has_detail = 1;
        snprintf(status.detail, sizeof status.detail,
                 "encountered error while resizing the gainmap image from %ux%u to %ux%u",
                 gainmap_img->w, gainmap_img->h, sdr_intent->w, sdr_intent->h);
        return status;
      }
      gainmap_img = resized_gainmap.get();
    }
  }

  float map_scale_factor = (float)sdr_intent->w / gainmap_img->w;
  int map_scale_factor_rnd = (std::max)(1, (int)std::roundf(map_scale_factor));

  // Table will only be used when map scale factor is integer.
  ShepardsIDW idwTable(map_scale_factor_rnd);
  float display_boost = (std::min)(max_display_boost, gainmap_metadata->hdr_capacity_max);

  float gainmap_weight;
  if (display_boost != gainmap_metadata->hdr_capacity_max) {
    gainmap_weight =
        (log2(display_boost) - log2(gainmap_metadata->hdr_capacity_min)) /
        (log2(gainmap_metadata->hdr_capacity_max) - log2(gainmap_metadata->hdr_capacity_min));
    // avoid extrapolating the gain map to fill the displayable range
    gainmap_weight = CLIP3(0.0f, gainmap_weight, 1.0f);
  } else {
    gainmap_weight = 1.0f;
  }
  GainLUT gainLUT(gainmap_metadata, gainmap_weight);

  GetPixelFn get_pixel_fn = getPixelFn(sdr_intent->fmt);
  if (get_pixel_fn == nullptr) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for reading pixels for color format %d", sdr_intent->fmt);
    return status;
  }

  JobQueue jobQueue;
  std::function<void()> applyRecMap = [sdr_intent, gainmap_img, dest, &jobQueue, &idwTable,
                                       output_ct, &gainLUT, gainmap_metadata, hdrGamutConversionFn,
                                       sdrGamutConversionFn,
#if !USE_APPLY_GAIN_LUT
                                       gainmap_weight,
#endif
                                       map_scale_factor, get_pixel_fn]() -> void {
    unsigned int width = sdr_intent->w;
    unsigned int rowStart, rowEnd;

    while (jobQueue.dequeueJob(rowStart, rowEnd)) {
      for (size_t y = rowStart; y < rowEnd; ++y) {
        for (size_t x = 0; x < width; ++x) {
          Color yuv_gamma_sdr = get_pixel_fn(sdr_intent, x, y);
          // Assuming the sdr image is a decoded JPEG, we should always use Rec.601 YUV coefficients
          Color rgb_gamma_sdr = p3YuvToRgb(yuv_gamma_sdr);
          // We are assuming the SDR base image is always sRGB transfer.
#if USE_SRGB_INVOETF_LUT
          Color rgb_sdr = srgbInvOetfLUT(rgb_gamma_sdr);
#else
          Color rgb_sdr = srgbInvOetf(rgb_gamma_sdr);
#endif
          rgb_sdr = sdrGamutConversionFn(rgb_sdr);
          Color rgb_hdr;
          if (gainmap_img->fmt == UHDR_IMG_FMT_8bppYCbCr400) {
            float gain;

            if (map_scale_factor != floorf(map_scale_factor)) {
              gain = sampleMap(gainmap_img, map_scale_factor, x, y);
            } else {
              gain = sampleMap(gainmap_img, map_scale_factor, x, y, idwTable);
            }

#if USE_APPLY_GAIN_LUT
            rgb_hdr = applyGainLUT(rgb_sdr, gain, gainLUT, gainmap_metadata);
#else
            rgb_hdr = applyGain(rgb_sdr, gain, gainmap_metadata, gainmap_weight);
#endif
          } else {
            Color gain;

            if (map_scale_factor != floorf(map_scale_factor)) {
              gain = sampleMap3Channel(gainmap_img, map_scale_factor, x, y,
                                       gainmap_img->fmt == UHDR_IMG_FMT_32bppRGBA8888);
            } else {
              gain = sampleMap3Channel(gainmap_img, map_scale_factor, x, y, idwTable,
                                       gainmap_img->fmt == UHDR_IMG_FMT_32bppRGBA8888);
            }

#if USE_APPLY_GAIN_LUT
            rgb_hdr = applyGainLUT(rgb_sdr, gain, gainLUT, gainmap_metadata);
#else
            rgb_hdr = applyGain(rgb_sdr, gain, gainmap_metadata, gainmap_weight);
#endif
          }

          size_t pixel_idx = x + y * dest->stride[UHDR_PLANE_PACKED];

          switch (output_ct) {
            case UHDR_CT_LINEAR: {
              rgb_hdr = hdrGamutConversionFn(rgb_hdr);
              rgb_hdr = clampPixelFloatLinear(rgb_hdr);
              uint64_t rgba_f16 = colorToRgbaF16(rgb_hdr);
              reinterpret_cast<uint64_t*>(dest->planes[UHDR_PLANE_PACKED])[pixel_idx] = rgba_f16;
              break;
            }
            case UHDR_CT_HLG: {
#if USE_HLG_OETF_LUT
              ColorTransformFn hdrOetf = hlgOetfLUT;
#else
              ColorTransformFn hdrOetf = hlgOetf;
#endif
              rgb_hdr = rgb_hdr * kSdrWhiteNits / kHlgMaxNits;
              rgb_hdr = hdrGamutConversionFn(rgb_hdr);
              rgb_hdr = clampPixelFloat(rgb_hdr);
              rgb_hdr = hlgInverseOotfApprox(rgb_hdr);
              Color rgb_gamma_hdr = hdrOetf(rgb_hdr);
              uint32_t rgba_1010102 = colorToRgba1010102(rgb_gamma_hdr);
              reinterpret_cast<uint32_t*>(dest->planes[UHDR_PLANE_PACKED])[pixel_idx] =
                  rgba_1010102;
              break;
            }
            case UHDR_CT_PQ: {
#if USE_PQ_OETF_LUT
              ColorTransformFn hdrOetf = pqOetfLUT;
#else
              ColorTransformFn hdrOetf = pqOetf;
#endif
              rgb_hdr = rgb_hdr * kSdrWhiteNits / kPqMaxNits;
              rgb_hdr = hdrGamutConversionFn(rgb_hdr);
              rgb_hdr = clampPixelFloat(rgb_hdr);
              Color rgb_gamma_hdr = hdrOetf(rgb_hdr);
              uint32_t rgba_1010102 = colorToRgba1010102(rgb_gamma_hdr);
              reinterpret_cast<uint32_t*>(dest->planes[UHDR_PLANE_PACKED])[pixel_idx] =
                  rgba_1010102;
              break;
            }
            default: {
            }
              // Should be impossible to hit after input validation.
          }
        }
      }
    }
  };

  const int threads = (std::min)(GetCPUCoreCount(), 4u);
  std::vector<std::thread> workers;
  for (int th = 0; th < threads - 1; th++) {
    workers.push_back(std::thread(applyRecMap));
  }
  const unsigned int rowStep = threads == 1 ? sdr_intent->h : map_scale_factor_rnd;
  for (unsigned int rowStart = 0; rowStart < sdr_intent->h;) {
    unsigned int rowEnd = (std::min)(rowStart + rowStep, sdr_intent->h);
    jobQueue.enqueueJob(rowStart, rowEnd);
    rowStart = rowEnd;
  }
  jobQueue.markQueueForEnd();
  applyRecMap();
  std::for_each(workers.begin(), workers.end(), [](std::thread& t) { t.join(); });

  return g_no_error;
}

uhdr_error_info_t JpegR::extractPrimaryImageAndGainMap(uhdr_compressed_image_t* jpegr_image,
                                                       uhdr_compressed_image_t* primary_image,
                                                       uhdr_compressed_image_t* gainmap_image) {
  MessageHandler msg_handler;
  msg_handler.SetMessageWriter(make_unique<AlogMessageWriter>(AlogMessageWriter()));

  std::shared_ptr<DataSegment> seg = DataSegment::Create(
      DataRange(0, jpegr_image->data_sz), static_cast<const uint8_t*>(jpegr_image->data),
      DataSegment::BufferDispositionPolicy::kDontDelete);
  DataSegmentDataSource data_source(seg);

  JpegInfoBuilder jpeg_info_builder;
  jpeg_info_builder.SetImageLimit(2);

  JpegScanner jpeg_scanner(&msg_handler);
  jpeg_scanner.Run(&data_source, &jpeg_info_builder);
  data_source.Reset();

  if (jpeg_scanner.HasError()) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_ERROR;
    status.has_detail = 1;
    auto messages = msg_handler.GetMessages();
    std::string append{};
    for (auto message : messages) append += message.GetText();
    snprintf(status.detail, sizeof status.detail, "%s", append.c_str());
    return status;
  }

  const auto& jpeg_info = jpeg_info_builder.GetInfo();
  const auto& image_ranges = jpeg_info.GetImageRanges();

  if (image_ranges.empty()) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_INVALID_PARAM;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail, "input uhdr image does not any valid images");
    return status;
  }

  if (primary_image != nullptr) {
    primary_image->data = static_cast<uint8_t*>(jpegr_image->data) + image_ranges[0].GetBegin();
    primary_image->data_sz = image_ranges[0].GetLength();
  }

  if (image_ranges.size() == 1) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_INVALID_PARAM;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "input uhdr image does not contain gainmap image");
    return status;
  }

  if (gainmap_image != nullptr) {
    gainmap_image->data = static_cast<uint8_t*>(jpegr_image->data) + image_ranges[1].GetBegin();
    gainmap_image->data_sz = image_ranges[1].GetLength();
  }

  // TODO: choose primary image and gain map image carefully
  if (image_ranges.size() > 2) {
    ALOGW("Number of jpeg images present %d, primary, gain map images may not be correctly chosen",
          (int)image_ranges.size());
  }

  return g_no_error;
}

uhdr_error_info_t JpegR::parseJpegInfo(uhdr_compressed_image_t* jpeg_image, j_info_ptr image_info,
                                       unsigned int* img_width, unsigned int* img_height) {
  JpegDecoderHelper jpeg_dec_obj;
  UHDR_ERR_CHECK(jpeg_dec_obj.parseImage(jpeg_image->data, jpeg_image->data_sz))
  unsigned int imgWidth, imgHeight, numComponents;
  imgWidth = jpeg_dec_obj.getDecompressedImageWidth();
  imgHeight = jpeg_dec_obj.getDecompressedImageHeight();
  numComponents = jpeg_dec_obj.getNumComponentsInImage();

  if (image_info != nullptr) {
    image_info->width = imgWidth;
    image_info->height = imgHeight;
    image_info->numComponents = numComponents;
    image_info->imgData.resize(jpeg_image->data_sz, 0);
    memcpy(static_cast<void*>(image_info->imgData.data()), jpeg_image->data, jpeg_image->data_sz);
    if (jpeg_dec_obj.getICCSize() != 0) {
      image_info->iccData.resize(jpeg_dec_obj.getICCSize(), 0);
      memcpy(static_cast<void*>(image_info->iccData.data()), jpeg_dec_obj.getICCPtr(),
             jpeg_dec_obj.getICCSize());
    }
    if (jpeg_dec_obj.getEXIFSize() != 0) {
      image_info->exifData.resize(jpeg_dec_obj.getEXIFSize(), 0);
      memcpy(static_cast<void*>(image_info->exifData.data()), jpeg_dec_obj.getEXIFPtr(),
             jpeg_dec_obj.getEXIFSize());
    }
    if (jpeg_dec_obj.getXMPSize() != 0) {
      image_info->xmpData.resize(jpeg_dec_obj.getXMPSize(), 0);
      memcpy(static_cast<void*>(image_info->xmpData.data()), jpeg_dec_obj.getXMPPtr(),
             jpeg_dec_obj.getXMPSize());
    }
    if (jpeg_dec_obj.getIsoMetadataSize() != 0) {
      image_info->isoData.resize(jpeg_dec_obj.getIsoMetadataSize(), 0);
      memcpy(static_cast<void*>(image_info->isoData.data()), jpeg_dec_obj.getIsoMetadataPtr(),
             jpeg_dec_obj.getIsoMetadataSize());
    }
  }
  if (img_width != nullptr && img_height != nullptr) {
    *img_width = imgWidth;
    *img_height = imgHeight;
  }
  return g_no_error;
}

static float ReinhardMap(float y_hdr, float headroom) {
  float out = 1.0f + y_hdr / (headroom * headroom);
  out /= 1.0f + y_hdr;
  return out * y_hdr;
}

GlobalTonemapOutputs globalTonemap(const std::array<float, 3>& rgb_in, float headroom,
                                   bool is_normalized) {
  // Scale to Headroom to get HDR values that are referenced to SDR white. The range [0.0, 1.0] is
  // linearly stretched to [0.0, headroom].
  std::array<float, 3> rgb_hdr;
  std::transform(rgb_in.begin(), rgb_in.end(), rgb_hdr.begin(),
                 [&](float x) { return is_normalized ? x * headroom : x; });

  // Apply a tone mapping to compress the range [0, headroom] to [0, 1] by
  // keeping the shadows the same and crushing the highlights.
  float max_hdr = *std::max_element(rgb_hdr.begin(), rgb_hdr.end());
  float max_sdr = ReinhardMap(max_hdr, headroom);
  std::array<float, 3> rgb_sdr;
  std::transform(rgb_hdr.begin(), rgb_hdr.end(), rgb_sdr.begin(), [&](float x) {
    if (x > 0.0f) {
      return x * max_sdr / max_hdr;
    }
    return 0.0f;
  });

  GlobalTonemapOutputs tonemap_outputs;
  tonemap_outputs.rgb_out = rgb_sdr;
  tonemap_outputs.y_hdr = max_hdr;
  tonemap_outputs.y_sdr = max_sdr;

  return tonemap_outputs;
}

uint8_t ScaleTo8Bit(float value) {
  constexpr float kMaxValFloat = 255.0f;
  constexpr int kMaxValInt = 255;
  return std::clamp(static_cast<int>(std::round(value * kMaxValFloat)), 0, kMaxValInt);
}

uhdr_error_info_t JpegR::toneMap(uhdr_raw_image_t* hdr_intent, uhdr_raw_image_t* sdr_intent) {
  if (hdr_intent->fmt != UHDR_IMG_FMT_24bppYCbCrP010 &&
      hdr_intent->fmt != UHDR_IMG_FMT_30bppYCbCr444 &&
      hdr_intent->fmt != UHDR_IMG_FMT_32bppRGBA1010102 &&
      hdr_intent->fmt != UHDR_IMG_FMT_64bppRGBAHalfFloat) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "tonemap method expects hdr intent color format to be one of "
             "{UHDR_IMG_FMT_24bppYCbCrP010, UHDR_IMG_FMT_30bppYCbCr444, "
             "UHDR_IMG_FMT_32bppRGBA1010102, UHDR_IMG_FMT_64bppRGBAHalfFloat}. Received %d",
             hdr_intent->fmt);
    return status;
  }

  if (hdr_intent->fmt == UHDR_IMG_FMT_24bppYCbCrP010 &&
      sdr_intent->fmt != UHDR_IMG_FMT_12bppYCbCr420) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "tonemap method expects sdr intent color format to be UHDR_IMG_FMT_12bppYCbCr420, if "
             "hdr intent color format is UHDR_IMG_FMT_24bppYCbCrP010. Received %d",
             sdr_intent->fmt);
    return status;
  }

  if (hdr_intent->fmt == UHDR_IMG_FMT_30bppYCbCr444 &&
      sdr_intent->fmt != UHDR_IMG_FMT_24bppYCbCr444) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "tonemap method expects sdr intent color format to be UHDR_IMG_FMT_24bppYCbCr444, if "
             "hdr intent color format is UHDR_IMG_FMT_30bppYCbCr444. Received %d",
             sdr_intent->fmt);
    return status;
  }

  if ((hdr_intent->fmt == UHDR_IMG_FMT_32bppRGBA1010102 ||
       hdr_intent->fmt == UHDR_IMG_FMT_64bppRGBAHalfFloat) &&
      sdr_intent->fmt != UHDR_IMG_FMT_32bppRGBA8888) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "tonemap method expects sdr intent color format to be UHDR_IMG_FMT_32bppRGBA8888, if "
             "hdr intent color format is UHDR_IMG_FMT_32bppRGBA1010102 or "
             "UHDR_IMG_FMT_64bppRGBAHalfFloat. Received %d",
             sdr_intent->fmt);
    return status;
  }

  ColorTransformFn hdrYuvToRgbFn = getYuvToRgbFn(hdr_intent->cg);
  if (hdrYuvToRgbFn == nullptr) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for converting yuv to rgb for color gamut %d",
             hdr_intent->cg);
    return status;
  }

  LuminanceFn hdrLuminanceFn = getLuminanceFn(hdr_intent->cg);
  if (hdrLuminanceFn == nullptr) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for calculating luminance for color gamut %d",
             hdr_intent->cg);
    return status;
  }

  SceneToDisplayLuminanceFn hdrOotfFn = getOotfFn(hdr_intent->ct);
  if (hdrOotfFn == nullptr) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for calculating Ootf for color transfer %d",
             hdr_intent->ct);
    return status;
  }

  ColorTransformFn hdrInvOetf = getInverseOetfFn(hdr_intent->ct);
  if (hdrInvOetf == nullptr) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for converting transfer characteristics %d to linear",
             hdr_intent->ct);
    return status;
  }

  float hdr_white_nits = getReferenceDisplayPeakLuminanceInNits(hdr_intent->ct);
  if (hdr_white_nits == -1.0f) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "received invalid peak brightness %f nits for hdr reference display with color "
             "transfer %d ",
             hdr_white_nits, hdr_intent->ct);
    return status;
  }

  GetPixelFn get_pixel_fn = getPixelFn(hdr_intent->fmt);
  if (get_pixel_fn == nullptr) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for reading pixels for color format %d", hdr_intent->fmt);
    return status;
  }

  PutPixelFn put_pixel_fn = putPixelFn(sdr_intent->fmt);
  // for subsampled formats, we are writing to raw image buffers directly instead of using
  // put_pixel_fn
  if (put_pixel_fn == nullptr && sdr_intent->fmt != UHDR_IMG_FMT_12bppYCbCr420) {
    uhdr_error_info_t status;
    status.error_code = UHDR_CODEC_UNSUPPORTED_FEATURE;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail,
             "No implementation available for writing pixels for color format %d", sdr_intent->fmt);
    return status;
  }

  sdr_intent->cg = UHDR_CG_DISPLAY_P3;
  sdr_intent->ct = UHDR_CT_SRGB;
  sdr_intent->range = UHDR_CR_FULL_RANGE;

  ColorTransformFn hdrGamutConversionFn = getGamutConversionFn(sdr_intent->cg, hdr_intent->cg);

  unsigned int height = hdr_intent->h;
  const int threads = (std::min)(GetCPUCoreCount(), 4u);
  // for 420 subsampling, process 2 rows at once
  const int jobSizeInRows = hdr_intent->fmt == UHDR_IMG_FMT_24bppYCbCrP010 ? 2 : 1;
  unsigned int rowStep = threads == 1 ? height : jobSizeInRows;
  JobQueue jobQueue;
  std::function<void()> toneMapInternal;

  toneMapInternal = [hdr_intent, sdr_intent, hdrInvOetf, hdrGamutConversionFn, hdrYuvToRgbFn,
                     hdr_white_nits, get_pixel_fn, put_pixel_fn, hdrLuminanceFn, hdrOotfFn,
                     &jobQueue]() -> void {
    unsigned int rowStart, rowEnd;
    const int hfactor = hdr_intent->fmt == UHDR_IMG_FMT_24bppYCbCrP010 ? 2 : 1;
    const int vfactor = hdr_intent->fmt == UHDR_IMG_FMT_24bppYCbCrP010 ? 2 : 1;
    const bool isHdrIntentRgb = isPixelFormatRgb(hdr_intent->fmt);
    const bool isSdrIntentRgb = isPixelFormatRgb(sdr_intent->fmt);
    const bool is_normalized = hdr_intent->ct != UHDR_CT_LINEAR;
    uint8_t* luma_data = reinterpret_cast<uint8_t*>(sdr_intent->planes[UHDR_PLANE_Y]);
    uint8_t* cb_data = reinterpret_cast<uint8_t*>(sdr_intent->planes[UHDR_PLANE_U]);
    uint8_t* cr_data = reinterpret_cast<uint8_t*>(sdr_intent->planes[UHDR_PLANE_V]);
    size_t luma_stride = sdr_intent->stride[UHDR_PLANE_Y];
    size_t cb_stride = sdr_intent->stride[UHDR_PLANE_U];
    size_t cr_stride = sdr_intent->stride[UHDR_PLANE_V];

    while (jobQueue.dequeueJob(rowStart, rowEnd)) {
      for (size_t y = rowStart; y < rowEnd; y += vfactor) {
        for (size_t x = 0; x < hdr_intent->w; x += hfactor) {
          // meant for p010 input
          float sdr_u_gamma = 0.0f;
          float sdr_v_gamma = 0.0f;

          for (int i = 0; i < vfactor; i++) {
            for (int j = 0; j < hfactor; j++) {
              Color hdr_rgb_gamma;

              if (isHdrIntentRgb) {
                hdr_rgb_gamma = get_pixel_fn(hdr_intent, x + j, y + i);
              } else {
                Color hdr_yuv_gamma = get_pixel_fn(hdr_intent, x + j, y + i);
                hdr_rgb_gamma = hdrYuvToRgbFn(hdr_yuv_gamma);
              }
              Color hdr_rgb = hdrInvOetf(hdr_rgb_gamma);
              hdr_rgb = hdrOotfFn(hdr_rgb, hdrLuminanceFn);

              GlobalTonemapOutputs tonemap_outputs = globalTonemap(
                  {hdr_rgb.r, hdr_rgb.g, hdr_rgb.b}, hdr_white_nits / kSdrWhiteNits, is_normalized);
              Color sdr_rgb_linear_bt2100 = {
                  {{tonemap_outputs.rgb_out[0], tonemap_outputs.rgb_out[1],
                    tonemap_outputs.rgb_out[2]}}};
              Color sdr_rgb = hdrGamutConversionFn(sdr_rgb_linear_bt2100);

              // Hard clip out-of-gamut values;
              sdr_rgb = clampPixelFloat(sdr_rgb);

              Color sdr_rgb_gamma = srgbOetf(sdr_rgb);
              if (isSdrIntentRgb) {
                put_pixel_fn(sdr_intent, (x + j), (y + i), sdr_rgb_gamma);
              } else {
                Color sdr_yuv_gamma = p3RgbToYuv(sdr_rgb_gamma);
                sdr_yuv_gamma += {{{0.0f, 0.5f, 0.5f}}};
                if (sdr_intent->fmt != UHDR_IMG_FMT_12bppYCbCr420) {
                  put_pixel_fn(sdr_intent, (x + j), (y + i), sdr_yuv_gamma);
                } else {
                  size_t out_y_idx = (y + i) * luma_stride + x + j;
                  luma_data[out_y_idx] = ScaleTo8Bit(sdr_yuv_gamma.y);

                  sdr_u_gamma += sdr_yuv_gamma.u;
                  sdr_v_gamma += sdr_yuv_gamma.v;
                }
              }
            }
          }
          if (sdr_intent->fmt == UHDR_IMG_FMT_12bppYCbCr420) {
            sdr_u_gamma /= (hfactor * vfactor);
            sdr_v_gamma /= (hfactor * vfactor);
            cb_data[x / hfactor + (y / vfactor) * cb_stride] = ScaleTo8Bit(sdr_u_gamma);
            cr_data[x / hfactor + (y / vfactor) * cr_stride] = ScaleTo8Bit(sdr_v_gamma);
          }
        }
      }
    }
  };

  // tone map
  std::vector<std::thread> workers;
  for (int th = 0; th < threads - 1; th++) {
    workers.push_back(std::thread(toneMapInternal));
  }

  for (unsigned int rowStart = 0; rowStart < height;) {
    unsigned int rowEnd = (std::min)(rowStart + rowStep, height);
    jobQueue.enqueueJob(rowStart, rowEnd);
    rowStart = rowEnd;
  }
  jobQueue.markQueueForEnd();
  toneMapInternal();
  std::for_each(workers.begin(), workers.end(), [](std::thread& t) { t.join(); });

  return g_no_error;
}

status_t JpegR::areInputArgumentsValid(jr_uncompressed_ptr p010_image_ptr,
                                       jr_uncompressed_ptr yuv420_image_ptr,
                                       ultrahdr_transfer_function hdr_tf,
                                       jr_compressed_ptr dest_ptr) {
  if (p010_image_ptr == nullptr || p010_image_ptr->data == nullptr) {
    ALOGE("Received nullptr for input p010 image");
    return ERROR_JPEGR_BAD_PTR;
  }
  if (p010_image_ptr->width % 2 != 0 || p010_image_ptr->height % 2 != 0) {
    ALOGE("Image dimensions cannot be odd, image dimensions %ux%u", p010_image_ptr->width,
          p010_image_ptr->height);
    return ERROR_JPEGR_UNSUPPORTED_WIDTH_HEIGHT;
  }
  if ((int)p010_image_ptr->width < kMinWidth || (int)p010_image_ptr->height < kMinHeight) {
    ALOGE("Image dimensions cannot be less than %dx%d, image dimensions %ux%u", kMinWidth,
          kMinHeight, p010_image_ptr->width, p010_image_ptr->height);
    return ERROR_JPEGR_UNSUPPORTED_WIDTH_HEIGHT;
  }
  if ((int)p010_image_ptr->width > kMaxWidth || (int)p010_image_ptr->height > kMaxHeight) {
    ALOGE("Image dimensions cannot be larger than %dx%d, image dimensions %ux%u", kMaxWidth,
          kMaxHeight, p010_image_ptr->width, p010_image_ptr->height);
    return ERROR_JPEGR_UNSUPPORTED_WIDTH_HEIGHT;
  }
  if (p010_image_ptr->colorGamut <= ULTRAHDR_COLORGAMUT_UNSPECIFIED ||
      p010_image_ptr->colorGamut > ULTRAHDR_COLORGAMUT_MAX) {
    ALOGE("Unrecognized p010 color gamut %d", p010_image_ptr->colorGamut);
    return ERROR_JPEGR_INVALID_COLORGAMUT;
  }
  if (p010_image_ptr->luma_stride != 0 && p010_image_ptr->luma_stride < p010_image_ptr->width) {
    ALOGE("Luma stride must not be smaller than width, stride=%u, width=%u",
          p010_image_ptr->luma_stride, p010_image_ptr->width);
    return ERROR_JPEGR_INVALID_STRIDE;
  }
  if (p010_image_ptr->chroma_data != nullptr &&
      p010_image_ptr->chroma_stride < p010_image_ptr->width) {
    ALOGE("Chroma stride must not be smaller than width, stride=%u, width=%u",
          p010_image_ptr->chroma_stride, p010_image_ptr->width);
    return ERROR_JPEGR_INVALID_STRIDE;
  }
  if (dest_ptr == nullptr || dest_ptr->data == nullptr) {
    ALOGE("Received nullptr for destination");
    return ERROR_JPEGR_BAD_PTR;
  }
  if (hdr_tf <= ULTRAHDR_TF_UNSPECIFIED || hdr_tf > ULTRAHDR_TF_MAX || hdr_tf == ULTRAHDR_TF_SRGB) {
    ALOGE("Invalid hdr transfer function %d", hdr_tf);
    return ERROR_JPEGR_INVALID_TRANS_FUNC;
  }
  if (mMapDimensionScaleFactor <= 0 || mMapDimensionScaleFactor > 128) {
    ALOGE("gainmap scale factor is ecpected to be in range (0, 128], received %d",
          mMapDimensionScaleFactor);
    return ERROR_JPEGR_UNSUPPORTED_MAP_SCALE_FACTOR;
  }
  if (mMapCompressQuality < 0 || mMapCompressQuality > 100) {
    ALOGE("invalid quality factor %d, expects in range [0-100]", mMapCompressQuality);
    return ERROR_JPEGR_INVALID_QUALITY_FACTOR;
  }
  if (!std::isfinite(mGamma) || mGamma <= 0.0f) {
    ALOGE("unsupported gainmap gamma %f, expects to be > 0", mGamma);
    return ERROR_JPEGR_INVALID_GAMMA;
  }
  if (mEncPreset != UHDR_USAGE_REALTIME && mEncPreset != UHDR_USAGE_BEST_QUALITY) {
    ALOGE("invalid preset %d, expects one of {UHDR_USAGE_REALTIME, UHDR_USAGE_BEST_QUALITY}",
          mEncPreset);
    return ERROR_JPEGR_INVALID_ENC_PRESET;
  }
  if (!std::isfinite(mMinContentBoost) || !std::isfinite(mMaxContentBoost) ||
      mMaxContentBoost < mMinContentBoost || mMinContentBoost <= 0.0f) {
    ALOGE("Invalid min boost / max boost configuration. Configured max boost %f, min boost %f",
          mMaxContentBoost, mMinContentBoost);
    return ERROR_JPEGR_INVALID_DISPLAY_BOOST;
  }
  if ((!std::isfinite(mTargetDispPeakBrightness) ||
       mTargetDispPeakBrightness < ultrahdr::kSdrWhiteNits ||
       mTargetDispPeakBrightness > ultrahdr::kPqMaxNits) &&
      mTargetDispPeakBrightness != -1.0f) {
    ALOGE("unexpected target display peak brightness nits %f, expects to be with in range [%f %f]",
          mTargetDispPeakBrightness, ultrahdr::kSdrWhiteNits, ultrahdr::kPqMaxNits);
    return ERROR_JPEGR_INVALID_TARGET_DISP_PEAK_BRIGHTNESS;
  }
  if (yuv420_image_ptr == nullptr) {
    return JPEGR_NO_ERROR;
  }
  if (yuv420_image_ptr->data == nullptr) {
    ALOGE("Received nullptr for uncompressed 420 image");
    return ERROR_JPEGR_BAD_PTR;
  }
  if (yuv420_image_ptr->luma_stride != 0 &&
      yuv420_image_ptr->luma_stride < yuv420_image_ptr->width) {
    ALOGE("Luma stride must not be smaller than width, stride=%u, width=%u",
          yuv420_image_ptr->luma_stride, yuv420_image_ptr->width);
    return ERROR_JPEGR_INVALID_STRIDE;
  }
  if (yuv420_image_ptr->chroma_data != nullptr &&
      yuv420_image_ptr->chroma_stride < yuv420_image_ptr->width / 2) {
    ALOGE("Chroma stride must not be smaller than (width / 2), stride=%u, width=%u",
          yuv420_image_ptr->chroma_stride, yuv420_image_ptr->width);
    return ERROR_JPEGR_INVALID_STRIDE;
  }
  if (p010_image_ptr->width != yuv420_image_ptr->width ||
      p010_image_ptr->height != yuv420_image_ptr->height) {
    ALOGE("Image resolutions mismatch: P010: %ux%u, YUV420: %ux%u", p010_image_ptr->width,
          p010_image_ptr->height, yuv420_image_ptr->width, yuv420_image_ptr->height);
    return ERROR_JPEGR_RESOLUTION_MISMATCH;
  }
  if (yuv420_image_ptr->colorGamut <= ULTRAHDR_COLORGAMUT_UNSPECIFIED ||
      yuv420_image_ptr->colorGamut > ULTRAHDR_COLORGAMUT_MAX) {
    ALOGE("Unrecognized 420 color gamut %d", yuv420_image_ptr->colorGamut);
    return ERROR_JPEGR_INVALID_COLORGAMUT;
  }
  return JPEGR_NO_ERROR;
}

status_t JpegR::areInputArgumentsValid(jr_uncompressed_ptr p010_image_ptr,
                                       jr_uncompressed_ptr yuv420_image_ptr,
                                       ultrahdr_transfer_function hdr_tf,
                                       jr_compressed_ptr dest_ptr, int quality) {
  if (quality < 0 || quality > 100) {
    ALOGE("quality factor is out side range [0-100], quality factor : %d", quality);
    return ERROR_JPEGR_INVALID_QUALITY_FACTOR;
  }
  return areInputArgumentsValid(p010_image_ptr, yuv420_image_ptr, hdr_tf, dest_ptr);
}

uhdr_color_transfer_t map_legacy_ct_to_ct(ultrahdr::ultrahdr_transfer_function ct) {
  switch (ct) {
    case ultrahdr::ULTRAHDR_TF_HLG:
      return UHDR_CT_HLG;
    case ultrahdr::ULTRAHDR_TF_PQ:
      return UHDR_CT_PQ;
    case ultrahdr::ULTRAHDR_TF_LINEAR:
      return UHDR_CT_LINEAR;
    case ultrahdr::ULTRAHDR_TF_SRGB:
      return UHDR_CT_SRGB;
    default:
      return UHDR_CT_UNSPECIFIED;
  }
}

uhdr_color_gamut_t map_legacy_cg_to_cg(ultrahdr::ultrahdr_color_gamut cg) {
  switch (cg) {
    case ultrahdr::ULTRAHDR_COLORGAMUT_BT2100:
      return UHDR_CG_BT_2100;
    case ultrahdr::ULTRAHDR_COLORGAMUT_BT709:
      return UHDR_CG_BT_709;
    case ultrahdr::ULTRAHDR_COLORGAMUT_P3:
      return UHDR_CG_DISPLAY_P3;
    default:
      return UHDR_CG_UNSPECIFIED;
  }
}

ultrahdr::ultrahdr_color_gamut map_cg_to_legacy_cg(uhdr_color_gamut_t cg) {
  switch (cg) {
    case UHDR_CG_BT_2100:
      return ultrahdr::ULTRAHDR_COLORGAMUT_BT2100;
    case UHDR_CG_BT_709:
      return ultrahdr::ULTRAHDR_COLORGAMUT_BT709;
    case UHDR_CG_DISPLAY_P3:
      return ultrahdr::ULTRAHDR_COLORGAMUT_P3;
    default:
      return ultrahdr::ULTRAHDR_COLORGAMUT_UNSPECIFIED;
  }
}

/* Encode API-0 */
status_t JpegR::encodeJPEGR(jr_uncompressed_ptr p010_image_ptr, ultrahdr_transfer_function hdr_tf,
                            jr_compressed_ptr dest, int quality, jr_exif_ptr exif) {
  // validate input arguments
  JPEGR_CHECK(areInputArgumentsValid(p010_image_ptr, nullptr, hdr_tf, dest, quality));
  if (exif != nullptr && exif->data == nullptr) {
    ALOGE("received nullptr for exif metadata");
    return ERROR_JPEGR_BAD_PTR;
  }

  // clean up input structure for later usage
  jpegr_uncompressed_struct p010_image = *p010_image_ptr;
  if (p010_image.luma_stride == 0) p010_image.luma_stride = p010_image.width;
  if (!p010_image.chroma_data) {
    uint16_t* data = reinterpret_cast<uint16_t*>(p010_image.data);
    p010_image.chroma_data = data + (size_t)p010_image.luma_stride * p010_image.height;
    p010_image.chroma_stride = p010_image.luma_stride;
  }

  uhdr_raw_image_t hdr_intent;
  hdr_intent.fmt = UHDR_IMG_FMT_24bppYCbCrP010;
  hdr_intent.cg = map_legacy_cg_to_cg(p010_image.colorGamut);
  hdr_intent.ct = map_legacy_ct_to_ct(hdr_tf);
  hdr_intent.range = p010_image.colorRange;
  hdr_intent.w = p010_image.width;
  hdr_intent.h = p010_image.height;
  hdr_intent.planes[UHDR_PLANE_Y] = p010_image.data;
  hdr_intent.stride[UHDR_PLANE_Y] = p010_image.luma_stride;
  hdr_intent.planes[UHDR_PLANE_UV] = p010_image.chroma_data;
  hdr_intent.stride[UHDR_PLANE_UV] = p010_image.chroma_stride;
  hdr_intent.planes[UHDR_PLANE_V] = nullptr;
  hdr_intent.stride[UHDR_PLANE_V] = 0;

  uhdr_compressed_image_t output;
  output.data = dest->data;
  output.data_sz = 0;
  output.capacity = dest->maxLength;
  output.cg = UHDR_CG_UNSPECIFIED;
  output.ct = UHDR_CT_UNSPECIFIED;
  output.range = UHDR_CR_UNSPECIFIED;

  uhdr_mem_block_t exifBlock;
  if (exif) {
    exifBlock.data = exif->data;
    exifBlock.data_sz = exifBlock.capacity = exif->length;
  }

  auto result = encodeJPEGR(&hdr_intent, &output, quality, exif ? &exifBlock : nullptr);
  if (result.error_code == UHDR_CODEC_OK) {
    dest->colorGamut = map_cg_to_legacy_cg(output.cg);
    dest->length = output.data_sz;
  }

  return result.error_code == UHDR_CODEC_OK ? JPEGR_NO_ERROR : JPEGR_UNKNOWN_ERROR;
}

/* Encode API-1 */
status_t JpegR::encodeJPEGR(jr_uncompressed_ptr p010_image_ptr,
                            jr_uncompressed_ptr yuv420_image_ptr, ultrahdr_transfer_function hdr_tf,
                            jr_compressed_ptr dest, int quality, jr_exif_ptr exif) {
  // validate input arguments
  if (yuv420_image_ptr == nullptr) {
    ALOGE("received nullptr for uncompressed 420 image");
    return ERROR_JPEGR_BAD_PTR;
  }
  if (exif != nullptr && exif->data == nullptr) {
    ALOGE("received nullptr for exif metadata");
    return ERROR_JPEGR_BAD_PTR;
  }
  JPEGR_CHECK(areInputArgumentsValid(p010_image_ptr, yuv420_image_ptr, hdr_tf, dest, quality))

  // clean up input structure for later usage
  jpegr_uncompressed_struct p010_image = *p010_image_ptr;
  if (p010_image.luma_stride == 0) p010_image.luma_stride = p010_image.width;
  if (!p010_image.chroma_data) {
    uint16_t* data = reinterpret_cast<uint16_t*>(p010_image.data);
    p010_image.chroma_data = data + (size_t)p010_image.luma_stride * p010_image.height;
    p010_image.chroma_stride = p010_image.luma_stride;
  }
  uhdr_raw_image_t hdr_intent;
  hdr_intent.fmt = UHDR_IMG_FMT_24bppYCbCrP010;
  hdr_intent.cg = map_legacy_cg_to_cg(p010_image.colorGamut);
  hdr_intent.ct = map_legacy_ct_to_ct(hdr_tf);
  hdr_intent.range = p010_image.colorRange;
  hdr_intent.w = p010_image.width;
  hdr_intent.h = p010_image.height;
  hdr_intent.planes[UHDR_PLANE_Y] = p010_image.data;
  hdr_intent.stride[UHDR_PLANE_Y] = p010_image.luma_stride;
  hdr_intent.planes[UHDR_PLANE_UV] = p010_image.chroma_data;
  hdr_intent.stride[UHDR_PLANE_UV] = p010_image.chroma_stride;
  hdr_intent.planes[UHDR_PLANE_V] = nullptr;
  hdr_intent.stride[UHDR_PLANE_V] = 0;

  jpegr_uncompressed_struct yuv420_image = *yuv420_image_ptr;
  if (yuv420_image.luma_stride == 0) yuv420_image.luma_stride = yuv420_image.width;
  if (!yuv420_image.chroma_data) {
    uint8_t* data = reinterpret_cast<uint8_t*>(yuv420_image.data);
    yuv420_image.chroma_data = data + (size_t)yuv420_image.luma_stride * yuv420_image.height;
    yuv420_image.chroma_stride = yuv420_image.luma_stride >> 1;
  }
  uhdr_raw_image_t sdrRawImg;
  sdrRawImg.fmt = UHDR_IMG_FMT_12bppYCbCr420;
  sdrRawImg.cg = map_legacy_cg_to_cg(yuv420_image.colorGamut);
  sdrRawImg.ct = UHDR_CT_SRGB;
  sdrRawImg.range = yuv420_image.colorRange;
  sdrRawImg.w = yuv420_image.width;
  sdrRawImg.h = yuv420_image.height;
  sdrRawImg.planes[UHDR_PLANE_Y] = yuv420_image.data;
  sdrRawImg.stride[UHDR_PLANE_Y] = yuv420_image.luma_stride;
  sdrRawImg.planes[UHDR_PLANE_U] = yuv420_image.chroma_data;
  sdrRawImg.stride[UHDR_PLANE_U] = yuv420_image.chroma_stride;
  uint8_t* data = reinterpret_cast<uint8_t*>(yuv420_image.chroma_data);
  data += (yuv420_image.height * yuv420_image.chroma_stride) / 2;
  sdrRawImg.planes[UHDR_PLANE_V] = data;
  sdrRawImg.stride[UHDR_PLANE_V] = yuv420_image.chroma_stride;
  auto sdr_intent = convert_raw_input_to_ycbcr(&sdrRawImg);

  uhdr_compressed_image_t output;
  output.data = dest->data;
  output.data_sz = 0;
  output.capacity = dest->maxLength;
  output.cg = UHDR_CG_UNSPECIFIED;
  output.ct = UHDR_CT_UNSPECIFIED;
  output.range = UHDR_CR_UNSPECIFIED;

  uhdr_mem_block_t exifBlock;
  if (exif) {
    exifBlock.data = exif->data;
    exifBlock.data_sz = exifBlock.capacity = exif->length;
  }

  auto result =
      encodeJPEGR(&hdr_intent, sdr_intent.get(), &output, quality, exif ? &exifBlock : nullptr);
  if (result.error_code == UHDR_CODEC_OK) {
    dest->colorGamut = map_cg_to_legacy_cg(output.cg);
    dest->length = output.data_sz;
  }

  return result.error_code == UHDR_CODEC_OK ? JPEGR_NO_ERROR : JPEGR_UNKNOWN_ERROR;
}

/* Encode API-2 */
status_t JpegR::encodeJPEGR(jr_uncompressed_ptr p010_image_ptr,
                            jr_uncompressed_ptr yuv420_image_ptr,
                            jr_compressed_ptr yuv420jpg_image_ptr,
                            ultrahdr_transfer_function hdr_tf, jr_compressed_ptr dest) {
  // validate input arguments
  if (yuv420_image_ptr == nullptr) {
    ALOGE("received nullptr for uncompressed 420 image");
    return ERROR_JPEGR_BAD_PTR;
  }
  if (yuv420jpg_image_ptr == nullptr || yuv420jpg_image_ptr->data == nullptr) {
    ALOGE("received nullptr for compressed jpeg image");
    return ERROR_JPEGR_BAD_PTR;
  }
  JPEGR_CHECK(areInputArgumentsValid(p010_image_ptr, yuv420_image_ptr, hdr_tf, dest))

  // clean up input structure for later usage
  jpegr_uncompressed_struct p010_image = *p010_image_ptr;
  if (p010_image.luma_stride == 0) p010_image.luma_stride = p010_image.width;
  if (!p010_image.chroma_data) {
    uint16_t* data = reinterpret_cast<uint16_t*>(p010_image.data);
    p010_image.chroma_data = data + (size_t)p010_image.luma_stride * p010_image.height;
    p010_image.chroma_stride = p010_image.luma_stride;
  }
  uhdr_raw_image_t hdr_intent;
  hdr_intent.fmt = UHDR_IMG_FMT_24bppYCbCrP010;
  hdr_intent.cg = map_legacy_cg_to_cg(p010_image.colorGamut);
  hdr_intent.ct = map_legacy_ct_to_ct(hdr_tf);
  hdr_intent.range = p010_image.colorRange;
  hdr_intent.w = p010_image.width;
  hdr_intent.h = p010_image.height;
  hdr_intent.planes[UHDR_PLANE_Y] = p010_image.data;
  hdr_intent.stride[UHDR_PLANE_Y] = p010_image.luma_stride;
  hdr_intent.planes[UHDR_PLANE_UV] = p010_image.chroma_data;
  hdr_intent.stride[UHDR_PLANE_UV] = p010_image.chroma_stride;
  hdr_intent.planes[UHDR_PLANE_V] = nullptr;
  hdr_intent.stride[UHDR_PLANE_V] = 0;

  jpegr_uncompressed_struct yuv420_image = *yuv420_image_ptr;
  if (yuv420_image.luma_stride == 0) yuv420_image.luma_stride = yuv420_image.width;
  if (!yuv420_image.chroma_data) {
    uint8_t* data = reinterpret_cast<uint8_t*>(yuv420_image.data);
    yuv420_image.chroma_data = data + (size_t)yuv420_image.luma_stride * p010_image.height;
    yuv420_image.chroma_stride = yuv420_image.luma_stride >> 1;
  }
  uhdr_raw_image_t sdrRawImg;
  sdrRawImg.fmt = UHDR_IMG_FMT_12bppYCbCr420;
  sdrRawImg.cg = map_legacy_cg_to_cg(yuv420_image.colorGamut);
  sdrRawImg.ct = UHDR_CT_SRGB;
  sdrRawImg.range = yuv420_image.colorRange;
  sdrRawImg.w = yuv420_image.width;
  sdrRawImg.h = yuv420_image.height;
  sdrRawImg.planes[UHDR_PLANE_Y] = yuv420_image.data;
  sdrRawImg.stride[UHDR_PLANE_Y] = yuv420_image.luma_stride;
  sdrRawImg.planes[UHDR_PLANE_U] = yuv420_image.chroma_data;
  sdrRawImg.stride[UHDR_PLANE_U] = yuv420_image.chroma_stride;
  uint8_t* data = reinterpret_cast<uint8_t*>(yuv420_image.chroma_data);
  data += (yuv420_image.height * yuv420_image.chroma_stride) / 2;
  sdrRawImg.planes[UHDR_PLANE_V] = data;
  sdrRawImg.stride[UHDR_PLANE_V] = yuv420_image.chroma_stride;
  auto sdr_intent = convert_raw_input_to_ycbcr(&sdrRawImg);

  uhdr_compressed_image_t input;
  input.data = yuv420jpg_image_ptr->data;
  input.data_sz = yuv420jpg_image_ptr->length;
  input.capacity = yuv420jpg_image_ptr->maxLength;
  input.cg = map_legacy_cg_to_cg(yuv420jpg_image_ptr->colorGamut);
  input.ct = UHDR_CT_UNSPECIFIED;
  input.range = UHDR_CR_UNSPECIFIED;

  uhdr_compressed_image_t output;
  output.data = dest->data;
  output.data_sz = 0;
  output.capacity = dest->maxLength;
  output.cg = UHDR_CG_UNSPECIFIED;
  output.ct = UHDR_CT_UNSPECIFIED;
  output.range = UHDR_CR_UNSPECIFIED;

  auto result = encodeJPEGR(&hdr_intent, sdr_intent.get(), &input, &output);
  if (result.error_code == UHDR_CODEC_OK) {
    dest->colorGamut = map_cg_to_legacy_cg(output.cg);
    dest->length = output.data_sz;
  }

  return result.error_code == UHDR_CODEC_OK ? JPEGR_NO_ERROR : JPEGR_UNKNOWN_ERROR;
}

/* Encode API-3 */
status_t JpegR::encodeJPEGR(jr_uncompressed_ptr p010_image_ptr,
                            jr_compressed_ptr yuv420jpg_image_ptr,
                            ultrahdr_transfer_function hdr_tf, jr_compressed_ptr dest) {
  // validate input arguments
  if (yuv420jpg_image_ptr == nullptr || yuv420jpg_image_ptr->data == nullptr) {
    ALOGE("received nullptr for compressed jpeg image");
    return ERROR_JPEGR_BAD_PTR;
  }
  JPEGR_CHECK(areInputArgumentsValid(p010_image_ptr, nullptr, hdr_tf, dest))

  // clean up input structure for later usage
  jpegr_uncompressed_struct p010_image = *p010_image_ptr;
  if (p010_image.luma_stride == 0) p010_image.luma_stride = p010_image.width;
  if (!p010_image.chroma_data) {
    uint16_t* data = reinterpret_cast<uint16_t*>(p010_image.data);
    p010_image.chroma_data = data + (size_t)p010_image.luma_stride * p010_image.height;
    p010_image.chroma_stride = p010_image.luma_stride;
  }
  uhdr_raw_image_t hdr_intent;
  hdr_intent.fmt = UHDR_IMG_FMT_24bppYCbCrP010;
  hdr_intent.cg = map_legacy_cg_to_cg(p010_image.colorGamut);
  hdr_intent.ct = map_legacy_ct_to_ct(hdr_tf);
  hdr_intent.range = p010_image.colorRange;
  hdr_intent.w = p010_image.width;
  hdr_intent.h = p010_image.height;
  hdr_intent.planes[UHDR_PLANE_Y] = p010_image.data;
  hdr_intent.stride[UHDR_PLANE_Y] = p010_image.luma_stride;
  hdr_intent.planes[UHDR_PLANE_UV] = p010_image.chroma_data;
  hdr_intent.stride[UHDR_PLANE_UV] = p010_image.chroma_stride;
  hdr_intent.planes[UHDR_PLANE_V] = nullptr;
  hdr_intent.stride[UHDR_PLANE_V] = 0;

  uhdr_compressed_image_t input;
  input.data = yuv420jpg_image_ptr->data;
  input.data_sz = yuv420jpg_image_ptr->length;
  input.capacity = yuv420jpg_image_ptr->maxLength;
  input.cg = map_legacy_cg_to_cg(yuv420jpg_image_ptr->colorGamut);
  input.ct = UHDR_CT_UNSPECIFIED;
  input.range = UHDR_CR_UNSPECIFIED;

  uhdr_compressed_image_t output;
  output.data = dest->data;
  output.data_sz = 0;
  output.capacity = dest->maxLength;
  output.cg = UHDR_CG_UNSPECIFIED;
  output.ct = UHDR_CT_UNSPECIFIED;
  output.range = UHDR_CR_UNSPECIFIED;

  auto result = encodeJPEGR(&hdr_intent, &input, &output);
  if (result.error_code == UHDR_CODEC_OK) {
    dest->colorGamut = map_cg_to_legacy_cg(output.cg);
    dest->length = output.data_sz;
  }

  return result.error_code == UHDR_CODEC_OK ? JPEGR_NO_ERROR : JPEGR_UNKNOWN_ERROR;
}

/* Encode API-4 */
status_t JpegR::encodeJPEGR(jr_compressed_ptr yuv420jpg_image_ptr,
                            jr_compressed_ptr gainmapjpg_image_ptr, ultrahdr_metadata_ptr metadata,
                            jr_compressed_ptr dest) {
  if (yuv420jpg_image_ptr == nullptr || yuv420jpg_image_ptr->data == nullptr) {
    ALOGE("received nullptr for compressed jpeg image");
    return ERROR_JPEGR_BAD_PTR;
  }
  if (gainmapjpg_image_ptr == nullptr || gainmapjpg_image_ptr->data == nullptr) {
    ALOGE("received nullptr for compressed gain map");
    return ERROR_JPEGR_BAD_PTR;
  }
  if (dest == nullptr || dest->data == nullptr) {
    ALOGE("received nullptr for destination");
    return ERROR_JPEGR_BAD_PTR;
  }

  uhdr_compressed_image_t input;
  input.data = yuv420jpg_image_ptr->data;
  input.data_sz = yuv420jpg_image_ptr->length;
  input.capacity = yuv420jpg_image_ptr->maxLength;
  input.cg = map_legacy_cg_to_cg(yuv420jpg_image_ptr->colorGamut);
  input.ct = UHDR_CT_UNSPECIFIED;
  input.range = UHDR_CR_UNSPECIFIED;

  uhdr_compressed_image_t gainmap;
  gainmap.data = gainmapjpg_image_ptr->data;
  gainmap.data_sz = gainmapjpg_image_ptr->length;
  gainmap.capacity = gainmapjpg_image_ptr->maxLength;
  gainmap.cg = UHDR_CG_UNSPECIFIED;
  gainmap.ct = UHDR_CT_UNSPECIFIED;
  gainmap.range = UHDR_CR_UNSPECIFIED;

  uhdr_compressed_image_t output;
  output.data = dest->data;
  output.data_sz = 0;
  output.capacity = dest->maxLength;
  output.cg = UHDR_CG_UNSPECIFIED;
  output.ct = UHDR_CT_UNSPECIFIED;
  output.range = UHDR_CR_UNSPECIFIED;

  uhdr_gainmap_metadata_ext_t meta(metadata->version);
  meta.hdr_capacity_max = metadata->hdrCapacityMax;
  meta.hdr_capacity_min = metadata->hdrCapacityMin;
  std::fill_n(meta.gamma, 3, metadata->gamma);
  std::fill_n(meta.offset_sdr, 3, metadata->offsetSdr);
  std::fill_n(meta.offset_hdr, 3, metadata->offsetHdr);
  std::fill_n(meta.max_content_boost, 3, metadata->maxContentBoost);
  std::fill_n(meta.min_content_boost, 3, metadata->minContentBoost);
  meta.use_base_cg = true;

  auto result = encodeJPEGR(&input, &gainmap, &meta, &output);
  if (result.error_code == UHDR_CODEC_OK) {
    dest->colorGamut = map_cg_to_legacy_cg(output.cg);
    dest->length = output.data_sz;
  }

  return result.error_code == UHDR_CODEC_OK ? JPEGR_NO_ERROR : JPEGR_UNKNOWN_ERROR;
}

/* Decode API */
status_t JpegR::getJPEGRInfo(jr_compressed_ptr jpegr_image_ptr, jr_info_ptr jpegr_image_info_ptr) {
  if (jpegr_image_ptr == nullptr || jpegr_image_ptr->data == nullptr) {
    ALOGE("received nullptr for compressed jpegr image");
    return ERROR_JPEGR_BAD_PTR;
  }
  if (jpegr_image_info_ptr == nullptr) {
    ALOGE("received nullptr for compressed jpegr info struct");
    return ERROR_JPEGR_BAD_PTR;
  }

  uhdr_compressed_image_t input;
  input.data = jpegr_image_ptr->data;
  input.data_sz = jpegr_image_ptr->length;
  input.capacity = jpegr_image_ptr->maxLength;
  input.cg = map_legacy_cg_to_cg(jpegr_image_ptr->colorGamut);
  input.ct = UHDR_CT_UNSPECIFIED;
  input.range = UHDR_CR_UNSPECIFIED;

  auto result = getJPEGRInfo(&input, jpegr_image_info_ptr);

  return result.error_code == UHDR_CODEC_OK ? JPEGR_NO_ERROR : JPEGR_UNKNOWN_ERROR;
}

status_t JpegR::decodeJPEGR(jr_compressed_ptr jpegr_image_ptr, jr_uncompressed_ptr dest,
                            float max_display_boost, jr_exif_ptr exif,
                            ultrahdr_output_format output_format,
                            jr_uncompressed_ptr gainmap_image_ptr, ultrahdr_metadata_ptr metadata) {
  if (jpegr_image_ptr == nullptr || jpegr_image_ptr->data == nullptr) {
    ALOGE("received nullptr for compressed jpegr image");
    return ERROR_JPEGR_BAD_PTR;
  }
  if (dest == nullptr || dest->data == nullptr) {
    ALOGE("received nullptr for dest image");
    return ERROR_JPEGR_BAD_PTR;
  }
  if (max_display_boost < 1.0f) {
    ALOGE("received bad value for max_display_boost %f", max_display_boost);
    return ERROR_JPEGR_INVALID_DISPLAY_BOOST;
  }
  if (exif != nullptr && exif->data == nullptr) {
    ALOGE("received nullptr address for exif data");
    return ERROR_JPEGR_BAD_PTR;
  }
  if (gainmap_image_ptr != nullptr && gainmap_image_ptr->data == nullptr) {
    ALOGE("received nullptr address for gainmap data");
    return ERROR_JPEGR_BAD_PTR;
  }
  if (output_format <= ULTRAHDR_OUTPUT_UNSPECIFIED || output_format > ULTRAHDR_OUTPUT_MAX) {
    ALOGE("received bad value for output format %d", output_format);
    return ERROR_JPEGR_INVALID_OUTPUT_FORMAT;
  }

  uhdr_color_transfer_t ct;
  uhdr_img_fmt fmt;
  if (output_format == ULTRAHDR_OUTPUT_HDR_HLG) {
    fmt = UHDR_IMG_FMT_32bppRGBA1010102;
    ct = UHDR_CT_HLG;
  } else if (output_format == ULTRAHDR_OUTPUT_HDR_PQ) {
    fmt = UHDR_IMG_FMT_32bppRGBA1010102;
    ct = UHDR_CT_PQ;
  } else if (output_format == ULTRAHDR_OUTPUT_HDR_LINEAR) {
    fmt = UHDR_IMG_FMT_64bppRGBAHalfFloat;
    ct = UHDR_CT_LINEAR;
  } else if (output_format == ULTRAHDR_OUTPUT_SDR) {
    fmt = UHDR_IMG_FMT_32bppRGBA8888;
    ct = UHDR_CT_SRGB;
  }

  uhdr_compressed_image_t input;
  input.data = jpegr_image_ptr->data;
  input.data_sz = jpegr_image_ptr->length;
  input.capacity = jpegr_image_ptr->maxLength;
  input.cg = map_legacy_cg_to_cg(jpegr_image_ptr->colorGamut);
  input.ct = UHDR_CT_UNSPECIFIED;
  input.range = UHDR_CR_UNSPECIFIED;

  jpeg_info_struct primary_image;
  jpeg_info_struct gainmap_image;
  jpegr_info_struct jpegr_info;
  jpegr_info.primaryImgInfo = &primary_image;
  jpegr_info.gainmapImgInfo = &gainmap_image;
  if (getJPEGRInfo(&input, &jpegr_info).error_code != UHDR_CODEC_OK) return JPEGR_UNKNOWN_ERROR;

  if (exif != nullptr) {
    if (exif->length < primary_image.exifData.size()) {
      return ERROR_JPEGR_BUFFER_TOO_SMALL;
    }
    memcpy(exif->data, primary_image.exifData.data(), primary_image.exifData.size());
    exif->length = primary_image.exifData.size();
  }

  uhdr_raw_image_t output;
  output.fmt = fmt;
  output.cg = UHDR_CG_UNSPECIFIED;
  output.ct = UHDR_CT_UNSPECIFIED;
  output.range = UHDR_CR_UNSPECIFIED;
  output.w = jpegr_info.width;
  output.h = jpegr_info.height;
  output.planes[UHDR_PLANE_PACKED] = dest->data;
  output.stride[UHDR_PLANE_PACKED] = jpegr_info.width;
  output.planes[UHDR_PLANE_U] = nullptr;
  output.stride[UHDR_PLANE_U] = 0;
  output.planes[UHDR_PLANE_V] = nullptr;
  output.stride[UHDR_PLANE_V] = 0;

  uhdr_raw_image_t output_gm;
  if (gainmap_image_ptr) {
    output.fmt =
        gainmap_image.numComponents == 1 ? UHDR_IMG_FMT_8bppYCbCr400 : UHDR_IMG_FMT_24bppRGB888;
    output.cg = UHDR_CG_UNSPECIFIED;
    output.ct = UHDR_CT_UNSPECIFIED;
    output.range = UHDR_CR_UNSPECIFIED;
    output.w = gainmap_image.width;
    output.h = gainmap_image.height;
    output.planes[UHDR_PLANE_PACKED] = gainmap_image_ptr->data;
    output.stride[UHDR_PLANE_PACKED] = gainmap_image.width;
    output.planes[UHDR_PLANE_U] = nullptr;
    output.stride[UHDR_PLANE_U] = 0;
    output.planes[UHDR_PLANE_V] = nullptr;
    output.stride[UHDR_PLANE_V] = 0;
  }

  uhdr_gainmap_metadata_ext_t meta;
  auto result = decodeJPEGR(&input, &output, max_display_boost, ct, fmt,
                            gainmap_image_ptr ? &output_gm : nullptr, metadata ? &meta : nullptr);

  if (result.error_code == UHDR_CODEC_OK) {
    dest->width = output.w;
    dest->height = output.h;
    dest->colorGamut = map_cg_to_legacy_cg(output.cg);
    dest->colorRange = output.range;
    dest->pixelFormat = output.fmt;
    dest->chroma_data = nullptr;
    if (gainmap_image_ptr) {
      gainmap_image_ptr->width = output_gm.w;
      gainmap_image_ptr->height = output_gm.h;
      gainmap_image_ptr->colorGamut = map_cg_to_legacy_cg(output_gm.cg);
      gainmap_image_ptr->colorRange = output_gm.range;
      gainmap_image_ptr->pixelFormat = output_gm.fmt;
      gainmap_image_ptr->chroma_data = nullptr;
    }
    if (metadata) {
      if (!meta.are_all_channels_identical()) return ERROR_JPEGR_METADATA_ERROR;
      metadata->version = meta.version;
      metadata->hdrCapacityMax = meta.hdr_capacity_max;
      metadata->hdrCapacityMin = meta.hdr_capacity_min;
      metadata->gamma = meta.gamma[0];
      metadata->offsetSdr = meta.offset_sdr[0];
      metadata->offsetHdr = meta.offset_hdr[0];
      metadata->maxContentBoost = meta.max_content_boost[0];
      metadata->minContentBoost = meta.min_content_boost[0];
    }
  }

  return result.error_code == UHDR_CODEC_OK ? JPEGR_NO_ERROR : JPEGR_UNKNOWN_ERROR;
}

}  // namespace ultrahdr
