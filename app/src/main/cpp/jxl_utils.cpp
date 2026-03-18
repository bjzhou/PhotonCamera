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

static bool applyColorEncoding(JxlEncoder *encoder,
                               JxlEncodingProfile encodingProfile) {
  if (encodingProfile == JxlEncodingProfile::ORIGINAL) {
    return true;
  }

  JxlColorEncoding color_encoding = {};
  color_encoding.color_space = JXL_COLOR_SPACE_RGB;
  color_encoding.white_point = JXL_WHITE_POINT_D65;
  color_encoding.primaries = JXL_PRIMARIES_2100;
  color_encoding.transfer_function = JXL_TRANSFER_FUNCTION_HLG;
  color_encoding.rendering_intent = JXL_RENDERING_INTENT_PERCEPTUAL;

  if (JXL_ENC_SUCCESS !=
      JxlEncoderSetColorEncoding(encoder, &color_encoding)) {
    LOGE("JxlEncoderSetColorEncoding failed: error=%d",
         static_cast<int>(JxlEncoderGetError(encoder)));
    return false;
  }
  return true;
}

static bool applyExtraChannelInfo(JxlEncoder *encoder,
                                  const JxlBasicInfo &basicInfo) {
  if (basicInfo.num_extra_channels == 0 || basicInfo.alpha_bits == 0) {
    return true;
  }

  JxlExtraChannelInfo alpha_info;
  JxlEncoderInitExtraChannelInfo(JXL_CHANNEL_ALPHA, &alpha_info);
  alpha_info.bits_per_sample = basicInfo.alpha_bits;
  alpha_info.exponent_bits_per_sample = basicInfo.alpha_exponent_bits;
  alpha_info.alpha_premultiplied = basicInfo.alpha_premultiplied;

  if (JXL_ENC_SUCCESS !=
      JxlEncoderSetExtraChannelInfo(encoder, 0, &alpha_info)) {
    LOGE("JxlEncoderSetExtraChannelInfo failed: error=%d",
         static_cast<int>(JxlEncoderGetError(encoder)));
    return false;
  }
  return true;
}

bool saveJxl(const void *pixels, int32_t width, int32_t height,
             JxlDataType dataType, const std::string &outputPath,
             JxlEncodingProfile encodingProfile) {
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
  basic_info.alpha_exponent_bits = 0;
  basic_info.alpha_premultiplied = JXL_FALSE;
  if (encodingProfile == JxlEncodingProfile::BT2100_HLG) {
    basic_info.intensity_target = 1000.0f;
  }

  if (JXL_ENC_SUCCESS != JxlEncoderSetBasicInfo(encoder.get(), &basic_info)) {
    LOGE("JxlEncoderSetBasicInfo failed: error=%d",
         static_cast<int>(JxlEncoderGetError(encoder.get())));
    return false;
  }
  if (!applyExtraChannelInfo(encoder.get(), basic_info)) {
    return false;
  }
  if (!applyColorEncoding(encoder.get(), encodingProfile)) {
    return false;
  }

  size_t bytes_per_sample = (basic_info.bits_per_sample + 7) / 8;
  JxlPixelFormat pixel_format = {4, dataType, JXL_LITTLE_ENDIAN, 0};
  if (JXL_ENC_SUCCESS !=
      JxlEncoderAddImageFrame(frame_settings, &pixel_format, pixels,
                              static_cast<size_t>(width) * height * 4 *
                                  bytes_per_sample)) {
    LOGE("JxlEncoderAddImageFrame failed: error=%d, profile=%d, dataType=%d, "
         "bits=%u, expBits=%u, alphaBits=%u, intensityTarget=%.1f",
         static_cast<int>(JxlEncoderGetError(encoder.get())),
         static_cast<int>(encodingProfile), static_cast<int>(dataType),
         basic_info.bits_per_sample, basic_info.exponent_bits_per_sample,
         basic_info.alpha_bits, basic_info.intensity_target);
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
  size_t outSize = 0;
  void *data = loadJxlRaw(inputPath, outWidth, outHeight, dataType, outSize);
  if (data == nullptr)
    return false;

  outPixels.resize(outSize / sizeof(uint16_t));
  std::memcpy(outPixels.data(), data, outSize);
  free(data);
  return true;
}

void *loadJxlRaw(const std::string &inputPath, int32_t &outWidth,
                 int32_t &outHeight, JxlDataType dataType, size_t &outSize) {
  std::ifstream is(inputPath, std::ios::binary | std::ios::ate);
  if (!is) {
    LOGE("loadJxlRaw: Failed to open file: %s", inputPath.c_str());
    return nullptr;
  }
  std::streamsize size = is.tellg();
  is.seekg(0, std::ios::beg);
  std::vector<uint8_t> buffer(size);
  if (!is.read(reinterpret_cast<char *>(buffer.data()), size)) {
    LOGE("loadJxlRaw: Failed to read file: %s", inputPath.c_str());
    return nullptr;
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
    return nullptr;
  }

  if (JXL_DEC_SUCCESS !=
      JxlDecoderSubscribeEvents(decoder.get(),
                                JXL_DEC_BASIC_INFO | JXL_DEC_FULL_IMAGE)) {
    LOGE("JxlDecoderSubscribeEvents failed");
    return nullptr;
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
      return nullptr;
    } else if (status == JXL_DEC_NEED_MORE_INPUT) {
      LOGE("Error, unexpected end of input");
      if (pixels_buffer)
        free(pixels_buffer);
      return nullptr;
    } else if (status == JXL_DEC_BASIC_INFO) {
      if (JXL_DEC_SUCCESS != JxlDecoderGetBasicInfo(decoder.get(), &info)) {
        LOGE("JxlDecoderGetBasicInfo failed");
        return nullptr;
      }
      outWidth = info.xsize;
      outHeight = info.ysize;
    } else if (status == JXL_DEC_NEED_IMAGE_OUT_BUFFER) {
      JxlPixelFormat format = {4, dataType, JXL_LITTLE_ENDIAN, 0};
      if (JXL_DEC_SUCCESS !=
          JxlDecoderImageOutBufferSize(decoder.get(), &format, &outSize)) {
        LOGE("JxlDecoderImageOutBufferSize failed");
        return nullptr;
      }
      pixels_buffer = malloc(outSize);
      if (JXL_DEC_SUCCESS != JxlDecoderSetImageOutBuffer(decoder.get(), &format,
                                                         pixels_buffer,
                                                         outSize)) {
        LOGE("JxlDecoderSetImageOutBuffer failed");
        free(pixels_buffer);
        return nullptr;
      }
    } else if (status == JXL_DEC_FULL_IMAGE) {
      // Nothing to do, pixels_buffer already contains the data
    } else if (status == JXL_DEC_SUCCESS) {
      break;
    }
  }
  return pixels_buffer;
}
