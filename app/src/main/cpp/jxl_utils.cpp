#include "jxl_utils.h"
#include "common.h"
#include <fstream>
#include <jxl/decode.h>
#include <jxl/decode_cxx.h>
#include <jxl/encode.h>
#include <jxl/encode_cxx.h>
#include <jxl/thread_parallel_runner.h>
#include <jxl/thread_parallel_runner_cxx.h>
#include <vector>

bool saveJxl(const void *pixels, int32_t width, int32_t height,
             JxlDataType dataType, const std::string &outputPath) {
  auto encoder = JxlEncoderMake(nullptr);
  size_t num_threads = JxlThreadParallelRunnerDefaultNumWorkerThreads();
  if (num_threads > 4)
    num_threads = 4;
  auto runner = JxlThreadParallelRunnerMake(nullptr, num_threads);
  if (JXL_ENC_SUCCESS != JxlEncoderSetParallelRunner(encoder.get(),
                                                     JxlThreadParallelRunner,
                                                     runner.get())) {
    LOGE("JxlEncoderSetParallelRunner failed");
    return false;
  }

  JxlEncoderFrameSettings *frame_settings =
      JxlEncoderFrameSettingsCreate(encoder.get(), nullptr);
  // Lossless encoding
  JxlEncoderSetFrameLossless(frame_settings, JXL_TRUE);
  JxlEncoderFrameSettingsSetOption(frame_settings, JXL_ENC_FRAME_SETTING_EFFORT,
                                   1);

  JxlBasicInfo basic_info;
  JxlEncoderInitBasicInfo(&basic_info);
  basic_info.xsize = width;
  basic_info.ysize = height;

  if (dataType == JXL_TYPE_FLOAT16) {
    basic_info.bits_per_sample = 16;
    basic_info.exponent_bits_per_sample = 5;
  } else if (dataType == JXL_TYPE_FLOAT) {
    basic_info.bits_per_sample = 32;
    basic_info.exponent_bits_per_sample = 8;
  } else {
    basic_info.bits_per_sample = (dataType == JXL_TYPE_UINT16 ? 16 : 8);
    basic_info.exponent_bits_per_sample = 0;
  }

  basic_info.uses_original_profile = JXL_TRUE;
  basic_info.num_color_channels = 3;
  basic_info.num_extra_channels = 1;
  basic_info.alpha_bits = basic_info.bits_per_sample;

  if (JXL_ENC_SUCCESS != JxlEncoderSetBasicInfo(encoder.get(), &basic_info)) {
    LOGE("JxlEncoderSetBasicInfo failed");
    return false;
  }

  size_t bytes_per_sample = (basic_info.bits_per_sample + 7) / 8;
  JxlPixelFormat pixel_format = {4, dataType, JXL_LITTLE_ENDIAN, 0};
  if (JXL_ENC_SUCCESS !=
      JxlEncoderAddImageFrame(frame_settings, &pixel_format, pixels,
                              static_cast<size_t>(width) * height * 4 *
                                  bytes_per_sample)) {
    LOGE("JxlEncoderAddImageFrame failed");
    return false;
  }
  JxlEncoderCloseInput(encoder.get());

  std::vector<uint8_t> compressed;
  compressed.resize(64 * 1024);
  uint8_t *next_out = compressed.data();
  size_t avail_out = compressed.size();
  JxlEncoderStatus process_result = JXL_ENC_NEED_MORE_OUTPUT;
  while (process_result == JXL_ENC_NEED_MORE_OUTPUT) {
    process_result =
        JxlEncoderProcessOutput(encoder.get(), &next_out, &avail_out);
    if (process_result == JXL_ENC_NEED_MORE_OUTPUT) {
      size_t offset = next_out - compressed.data();
      compressed.resize(compressed.size() * 2);
      next_out = compressed.data() + offset;
      avail_out = compressed.size() - offset;
    }
  }
  compressed.resize(next_out - compressed.data());

  std::ofstream out(outputPath, std::ios::binary);
  if (!out) {
    LOGE("saveJxl: Failed to open file for writing: %s", outputPath.c_str());
    return false;
  }
  out.write(reinterpret_cast<const char *>(compressed.data()),
            compressed.size());
  out.close();

  return true;
}

bool loadJxl(const std::string &inputPath, std::vector<uint16_t> &outPixels,
             int32_t &outWidth, int32_t &outHeight, JxlDataType dataType) {
  std::ifstream is(inputPath, std::ios::binary | std::ios::ate);
  if (!is) {
    LOGE("loadJxl: Failed to open file: %s", inputPath.c_str());
    return false;
  }
  std::streamsize size = is.tellg();
  is.seekg(0, std::ios::beg);
  std::vector<uint8_t> buffer(size);
  if (!is.read(reinterpret_cast<char *>(buffer.data()), size)) {
    LOGE("loadJxl: Failed to read file: %s", inputPath.c_str());
    return false;
  }

  auto decoder = JxlDecoderMake(nullptr);
  size_t num_threads = JxlThreadParallelRunnerDefaultNumWorkerThreads();
  if (num_threads > 4)
    num_threads = 4;
  auto runner = JxlThreadParallelRunnerMake(nullptr, num_threads);
  if (JXL_DEC_SUCCESS != JxlDecoderSetParallelRunner(decoder.get(),
                                                     JxlThreadParallelRunner,
                                                     runner.get())) {
    LOGE("JxlDecoderSetParallelRunner failed");
    return false;
  }

  if (JXL_DEC_SUCCESS !=
      JxlDecoderSubscribeEvents(decoder.get(),
                                JXL_DEC_BASIC_INFO | JXL_DEC_FULL_IMAGE)) {
    LOGE("JxlDecoderSubscribeEvents failed");
    return false;
  }

  JxlDecoderSetInput(decoder.get(), buffer.data(), buffer.size());
  JxlDecoderCloseInput(decoder.get());

  JxlBasicInfo info;
  void *pixels_buffer = nullptr;

  for (;;) {
    JxlDecoderStatus status = JxlDecoderProcessInput(decoder.get());

    if (status == JXL_DEC_ERROR) {
      LOGE("Decoder error");
      if (pixels_buffer)
        free(pixels_buffer);
      return false;
    } else if (status == JXL_DEC_NEED_MORE_INPUT) {
      LOGE("Error, unexpected end of input");
      if (pixels_buffer)
        free(pixels_buffer);
      return false;
    } else if (status == JXL_DEC_BASIC_INFO) {
      if (JXL_DEC_SUCCESS != JxlDecoderGetBasicInfo(decoder.get(), &info)) {
        LOGE("JxlDecoderGetBasicInfo failed");
        return false;
      }
      outWidth = info.xsize;
      outHeight = info.ysize;
      outPixels.resize(static_cast<size_t>(outWidth) * outHeight * 4);
    } else if (status == JXL_DEC_NEED_IMAGE_OUT_BUFFER) {
      JxlPixelFormat format = {4, dataType, JXL_LITTLE_ENDIAN, 0};
      size_t buffer_size;
      if (JXL_DEC_SUCCESS !=
          JxlDecoderImageOutBufferSize(decoder.get(), &format, &buffer_size)) {
        LOGE("JxlDecoderImageOutBufferSize failed");
        return false;
      }
      pixels_buffer = malloc(buffer_size);
      if (JXL_DEC_SUCCESS != JxlDecoderSetImageOutBuffer(decoder.get(), &format,
                                                         pixels_buffer,
                                                         buffer_size)) {
        LOGE("JxlDecoderSetImageOutBuffer failed");
        free(pixels_buffer);
        return false;
      }
    } else if (status == JXL_DEC_FULL_IMAGE) {
      std::memcpy(outPixels.data(), pixels_buffer,
                  outPixels.size() * sizeof(uint16_t));
      free(pixels_buffer);
      pixels_buffer = nullptr;
    } else if (status == JXL_DEC_SUCCESS) {
      break;
    }
  }
  return true;
}
