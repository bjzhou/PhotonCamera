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

#include <errno.h>
#include <setjmp.h>

#include <cmath>
#include <cstring>
#include <map>
#include <memory>
#include <string>

#include "ultrahdr/ultrahdrcommon.h"
#include "ultrahdr/jpegencoderhelper.h"

namespace ultrahdr {

/*!\brief map of sub sampling format and jpeg h_samp_factor, v_samp_factor */
std::map<uhdr_img_fmt_t, std::vector<int>> sample_factors = {
    {UHDR_IMG_FMT_8bppYCbCr400,
     {1 /*h0*/, 1 /*v0*/, 0 /*h1*/, 0 /*v1*/, 0 /*h2*/, 0 /*v2*/, 1 /*maxh*/, 1 /*maxv*/}},
    {UHDR_IMG_FMT_24bppYCbCr444,
     {1 /*h0*/, 1 /*v0*/, 1 /*h1*/, 1 /*v1*/, 1 /*h2*/, 1 /*v2*/, 1 /*maxh*/, 1 /*maxv*/}},
    {UHDR_IMG_FMT_16bppYCbCr440,
     {1 /*h0*/, 2 /*v0*/, 1 /*h1*/, 1 /*v1*/, 1 /*h2*/, 1 /*v2*/, 1 /*maxh*/, 2 /*maxv*/}},
    {UHDR_IMG_FMT_16bppYCbCr422,
     {2 /*h0*/, 1 /*v0*/, 1 /*h1*/, 1 /*v1*/, 1 /*h2*/, 1 /*v2*/, 2 /*maxh*/, 1 /*maxv*/}},
    {UHDR_IMG_FMT_12bppYCbCr420,
     {2 /*h0*/, 2 /*v0*/, 1 /*h1*/, 1 /*v1*/, 1 /*h2*/, 1 /*v2*/, 2 /*maxh*/, 2 /*maxv*/}},
    {UHDR_IMG_FMT_12bppYCbCr411,
     {4 /*h0*/, 1 /*v0*/, 1 /*h1*/, 1 /*v1*/, 1 /*h2*/, 1 /*v2*/, 4 /*maxh*/, 1 /*maxv*/}},
    {UHDR_IMG_FMT_10bppYCbCr410,
     {4 /*h0*/, 2 /*v0*/, 1 /*h1*/, 1 /*v1*/, 1 /*h2*/, 1 /*v2*/, 4 /*maxh*/, 2 /*maxv*/}},
    {UHDR_IMG_FMT_24bppRGB888,
     {1 /*h0*/, 1 /*v0*/, 1 /*h1*/, 1 /*v1*/, 1 /*h2*/, 1 /*v2*/, 1 /*maxh*/, 1 /*maxv*/}},
};

/*!\brief jpeg encoder library destination manager callback functions implementation */

/*!\brief  called by jpeg_start_compress() before any data is actually written. This function is
 * expected to initialize fields next_output_byte (place to write encoded output) and
 * free_in_buffer (size of the buffer supplied) of jpeg destination manager. free_in_buffer must
 * be initialized to a positive value.*/
static void initDestination(j_compress_ptr cinfo) {
  destination_mgr_impl* dest = reinterpret_cast<destination_mgr_impl*>(cinfo->dest);
  std::vector<JOCTET>& buffer = dest->mResultBuffer;
  buffer.resize(dest->kBlockSize);
  dest->next_output_byte = &buffer[0];
  dest->free_in_buffer = buffer.size();
}

/*!\brief  called if buffer provided for storing encoded data is exhausted during encoding. This
 * function is expected to consume the encoded output and provide fresh buffer to continue
 * encoding. */
static boolean emptyOutputBuffer(j_compress_ptr cinfo) {
  destination_mgr_impl* dest = reinterpret_cast<destination_mgr_impl*>(cinfo->dest);
  std::vector<JOCTET>& buffer = dest->mResultBuffer;
  size_t oldsize = buffer.size();
  buffer.resize(oldsize + dest->kBlockSize);
  dest->next_output_byte = &buffer[oldsize];
  dest->free_in_buffer = dest->kBlockSize;
  return TRUE;
}

/*!\brief  called by jpeg_finish_compress() to flush out all the remaining encoded data. client
 * can use either next_output_byte or free_in_buffer to determine how much data is in the buffer.
 */
static void terminateDestination(j_compress_ptr cinfo) {
  destination_mgr_impl* dest = reinterpret_cast<destination_mgr_impl*>(cinfo->dest);
  std::vector<JOCTET>& buffer = dest->mResultBuffer;
  buffer.resize(buffer.size() - dest->free_in_buffer);
}

/*!\brief module for managing error */
struct jpeg_error_mgr_impl : jpeg_error_mgr {
  jmp_buf setjmp_buffer;
};

/*!\brief jpeg encoder library error manager callback function implementations */
static void jpegrerror_exit(j_common_ptr cinfo) {
  jpeg_error_mgr_impl* err = reinterpret_cast<jpeg_error_mgr_impl*>(cinfo->err);
  longjmp(err->setjmp_buffer, 1);
}

/* receive most recent jpeg error message and print */
static void outputErrorMessage(j_common_ptr cinfo) {
  char buffer[JMSG_LENGTH_MAX];

  /* Create the message */
  (*cinfo->err->format_message)(cinfo, buffer);
  ALOGE("%s\n", buffer);
}

uhdr_error_info_t JpegEncoderHelper::compressImage(const uhdr_raw_image_t* img, const int qfactor,
                                                   const void* iccBuffer, const size_t iccSize) {
  const uint8_t* planes[3]{reinterpret_cast<uint8_t*>(img->planes[UHDR_PLANE_Y]),
                           reinterpret_cast<uint8_t*>(img->planes[UHDR_PLANE_U]),
                           reinterpret_cast<uint8_t*>(img->planes[UHDR_PLANE_V])};
  const unsigned int strides[3]{img->stride[UHDR_PLANE_Y], img->stride[UHDR_PLANE_U],
                                img->stride[UHDR_PLANE_V]};
  return compressImage(planes, strides, img->w, img->h, img->fmt, qfactor, iccBuffer, iccSize);
}

uhdr_error_info_t JpegEncoderHelper::compressImage(const uint8_t* planes[3],
                                                   const unsigned int strides[3], const int width,
                                                   const int height, const uhdr_img_fmt_t format,
                                                   const int qfactor, const void* iccBuffer,
                                                   const size_t iccSize) {
  return encode(planes, strides, width, height, format, qfactor, iccBuffer, iccSize);
}

uhdr_compressed_image_t JpegEncoderHelper::getCompressedImage() {
  uhdr_compressed_image_t img;

  img.data = mDestMgr.mResultBuffer.data();
  img.capacity = img.data_sz = mDestMgr.mResultBuffer.size();
  img.cg = UHDR_CG_UNSPECIFIED;
  img.ct = UHDR_CT_UNSPECIFIED;
  img.range = UHDR_CR_UNSPECIFIED;

  return img;
}

uhdr_error_info_t JpegEncoderHelper::encode(const uint8_t* planes[3], const unsigned int strides[3],
                                            const int width, const int height,
                                            const uhdr_img_fmt_t format, const int qfactor,
                                            const void* iccBuffer, const size_t iccSize) {
  jpeg_compress_struct cinfo;
  jpeg_error_mgr_impl myerr;
  uhdr_error_info_t status = g_no_error;

  if (sample_factors.find(format) == sample_factors.end()) {
    status.error_code = UHDR_CODEC_INVALID_PARAM;
    status.has_detail = 1;
    snprintf(status.detail, sizeof status.detail, "unrecognized input format %d", format);
    return status;
  }
  std::vector<int>& factors = sample_factors.find(format)->second;

  cinfo.err = jpeg_std_error(&myerr);
  myerr.error_exit = jpegrerror_exit;
  myerr.output_message = outputErrorMessage;

  if (0 == setjmp(myerr.setjmp_buffer)) {
    jpeg_create_compress(&cinfo);

    // initialize destination manager
    mDestMgr.init_destination = &initDestination;
    mDestMgr.empty_output_buffer = &emptyOutputBuffer;
    mDestMgr.term_destination = &terminateDestination;
    mDestMgr.mResultBuffer.clear();
    cinfo.dest = reinterpret_cast<struct jpeg_destination_mgr*>(&mDestMgr);

    // initialize configuration parameters
    cinfo.image_width = width;
    cinfo.image_height = height;
    bool isGainMapImg = true;
    if (format == UHDR_IMG_FMT_24bppRGB888) {
      cinfo.input_components = 3;
      cinfo.in_color_space = JCS_RGB;
    } else {
      if (format == UHDR_IMG_FMT_8bppYCbCr400) {
        cinfo.input_components = 1;
        cinfo.in_color_space = JCS_GRAYSCALE;
      } else if (format == UHDR_IMG_FMT_12bppYCbCr420 || format == UHDR_IMG_FMT_24bppYCbCr444 ||
                 format == UHDR_IMG_FMT_16bppYCbCr422 || format == UHDR_IMG_FMT_16bppYCbCr440 ||
                 format == UHDR_IMG_FMT_12bppYCbCr411 || format == UHDR_IMG_FMT_10bppYCbCr410) {
        cinfo.input_components = 3;
        cinfo.in_color_space = JCS_YCbCr;
        isGainMapImg = false;
      } else {
        status.error_code = UHDR_CODEC_ERROR;
        status.has_detail = 1;
        snprintf(status.detail, sizeof status.detail,
                 "unrecognized input color format for encoding, color format %d", format);
        jpeg_destroy_compress(&cinfo);
        return status;
      }
    }
    jpeg_set_defaults(&cinfo);
    jpeg_set_quality(&cinfo, qfactor, TRUE);
    for (int i = 0; i < cinfo.num_components; i++) {
      cinfo.comp_info[i].h_samp_factor = factors[i * 2];
      cinfo.comp_info[i].v_samp_factor = factors[i * 2 + 1];
      mPlaneWidth[i] =
          std::ceil(((float)cinfo.image_width * cinfo.comp_info[i].h_samp_factor) / factors[6]);
      mPlaneHeight[i] =
          std::ceil(((float)cinfo.image_height * cinfo.comp_info[i].v_samp_factor) / factors[7]);
    }
    if (format != UHDR_IMG_FMT_24bppRGB888) cinfo.raw_data_in = TRUE;
    cinfo.dct_method = JDCT_ISLOW;

    // start compress
    jpeg_start_compress(&cinfo, TRUE);
    if (iccBuffer != nullptr && iccSize > 0) {
      jpeg_write_marker(&cinfo, JPEG_APP0 + 2, static_cast<const JOCTET*>(iccBuffer), iccSize);
    }
    if (isGainMapImg) {
      char comment[255];
      snprintf(comment, sizeof comment,
               "Source: google libuhdr v%s, Coder: libjpeg v%d, Attrib: GainMap Image",
               UHDR_LIB_VERSION_STR, JPEG_LIB_VERSION);
      jpeg_write_marker(&cinfo, JPEG_COM, reinterpret_cast<JOCTET*>(comment), strlen(comment));
    }
    if (format == UHDR_IMG_FMT_24bppRGB888) {
      while (cinfo.next_scanline < cinfo.image_height) {
        JSAMPROW row_pointer[]{
            const_cast<JSAMPROW>(&planes[0][cinfo.next_scanline * strides[0] * 3])};
        JDIMENSION processed = jpeg_write_scanlines(&cinfo, row_pointer, 1);
        if (1 != processed) {
          status.error_code = UHDR_CODEC_ERROR;
          status.has_detail = 1;
          snprintf(status.detail, sizeof status.detail,
                   "jpeg_read_scanlines returned %d, expected %d", processed, 1);
          jpeg_destroy_compress(&cinfo);
          return status;
        }
      }
    } else {
      status = compressYCbCr(&cinfo, planes, strides);
      if (status.error_code != UHDR_CODEC_OK) {
        jpeg_destroy_compress(&cinfo);
        return status;
      }
    }
  } else {
    status.error_code = UHDR_CODEC_ERROR;
    status.has_detail = 1;
    cinfo.err->format_message((j_common_ptr)&cinfo, status.detail);
    jpeg_destroy_compress(&cinfo);
    return status;
  }

  jpeg_finish_compress(&cinfo);
  jpeg_destroy_compress(&cinfo);
  return status;
}

uhdr_error_info_t JpegEncoderHelper::compressYCbCr(jpeg_compress_struct* cinfo,
                                                   const uint8_t* planes[3],
                                                   const unsigned int strides[3]) {
  JSAMPROW mcuRows[kMaxNumComponents][2 * DCTSIZE];
  JSAMPROW mcuRowsTmp[kMaxNumComponents][2 * DCTSIZE];
  size_t alignedPlaneWidth[kMaxNumComponents]{};
  JSAMPARRAY subImage[kMaxNumComponents];

  for (int i = 0; i < cinfo->num_components; i++) {
    alignedPlaneWidth[i] = ALIGNM(mPlaneWidth[i], DCTSIZE);
    if (strides[i] < alignedPlaneWidth[i]) {
      mPlanesMCURow[i] = std::make_unique<uint8_t[]>(alignedPlaneWidth[i] * DCTSIZE *
                                                     cinfo->comp_info[i].v_samp_factor);
      uint8_t* mem = mPlanesMCURow[i].get();
      for (int j = 0; j < DCTSIZE * cinfo->comp_info[i].v_samp_factor;
           j++, mem += alignedPlaneWidth[i]) {
        mcuRowsTmp[i][j] = mem;
        if (i > 0) {
          memset(mem + mPlaneWidth[i], 128, alignedPlaneWidth[i] - mPlaneWidth[i]);
        }
      }
    } else if (mPlaneHeight[i] % DCTSIZE != 0) {
      mPlanesMCURow[i] = std::make_unique<uint8_t[]>(alignedPlaneWidth[i]);
      if (i > 0) {
        memset(mPlanesMCURow[i].get(), 128, alignedPlaneWidth[i]);
      }
    }
    subImage[i] = strides[i] < alignedPlaneWidth[i] ? mcuRowsTmp[i] : mcuRows[i];
  }

  while (cinfo->next_scanline < cinfo->image_height) {
    JDIMENSION mcu_scanline_start[kMaxNumComponents];

    for (int i = 0; i < cinfo->num_components; i++) {
      mcu_scanline_start[i] =
          std::ceil(((float)cinfo->next_scanline * cinfo->comp_info[i].v_samp_factor) /
                    cinfo->max_v_samp_factor);

      for (int j = 0; j < cinfo->comp_info[i].v_samp_factor * DCTSIZE; j++) {
        JDIMENSION scanline = mcu_scanline_start[i] + j;

        if (scanline < mPlaneHeight[i]) {
          mcuRows[i][j] = const_cast<uint8_t*>(planes[i] + (size_t)scanline * strides[i]);
          if (strides[i] < alignedPlaneWidth[i]) {
            memcpy(mcuRowsTmp[i][j], mcuRows[i][j], mPlaneWidth[i]);
          }
        } else {
          mcuRows[i][j] = mPlanesMCURow[i].get();
        }
      }
    }
    int processed = jpeg_write_raw_data(cinfo, subImage, DCTSIZE * cinfo->max_v_samp_factor);
    if (processed != DCTSIZE * cinfo->max_v_samp_factor) {
      uhdr_error_info_t status;
      status.error_code = UHDR_CODEC_ERROR;
      status.has_detail = 1;
      snprintf(status.detail, sizeof status.detail,
               "number of scan lines processed %d does not equal requested scan lines %d ",
               processed, DCTSIZE * cinfo->max_v_samp_factor);
      return status;
    }
  }
  return g_no_error;
}

}  // namespace ultrahdr
