#include "jpeg_r_encoder.h"

#include <cstdio>
#include <limits>
#include <memory>
#include <vector>

#include <ultrahdr_api.h>

namespace photon {
namespace {

struct EncoderDeleter {
  void operator()(uhdr_codec_private_t *encoder) const {
    if (encoder) {
      uhdr_release_encoder(encoder);
    }
  }
};

using EncoderHandle = std::unique_ptr<uhdr_codec_private_t, EncoderDeleter>;

bool readFile(const char *path, std::vector<unsigned char> *data) {
  if (!path || !data) {
    return false;
  }

  FILE *file = fopen(path, "rb");
  if (!file) {
    return false;
  }
  if (fseek(file, 0, SEEK_END) != 0) {
    fclose(file);
    return false;
  }
  const long length = ftell(file);
  if (length <= 0 || fseek(file, 0, SEEK_SET) != 0) {
    fclose(file);
    return false;
  }

  data->resize(static_cast<size_t>(length));
  const size_t bytes_read = fread(data->data(), 1, data->size(), file);
  const int close_result = fclose(file);
  return bytes_read == data->size() && close_result == 0;
}

bool writeFile(const char *path, const void *data, size_t size) {
  if (!path || !data || size == 0) {
    return false;
  }

  FILE *file = fopen(path, "wb");
  if (!file) {
    return false;
  }
  const size_t bytes_written = fwrite(data, 1, size, file);
  const int flush_result = fflush(file);
  const int close_result = fclose(file);
  return bytes_written == size && flush_result == 0 && close_result == 0;
}

bool checkStatus(const uhdr_error_info_t &status, const char *operation,
                 std::string *error) {
  if (status.error_code == UHDR_CODEC_OK) {
    return true;
  }
  if (error) {
    *error = operation ? operation : "libultrahdr operation";
    if (status.has_detail && status.detail[0] != '\0') {
      *error += ": ";
      *error += status.detail;
    }
  }
  return false;
}

uhdr_color_gamut_t sanitizeColorGamut(int color_gamut) {
  switch (color_gamut) {
  case UHDR_CG_BT_709:
    return UHDR_CG_BT_709;
  case UHDR_CG_DISPLAY_P3:
    return UHDR_CG_DISPLAY_P3;
  case UHDR_CG_BT_2100:
    return UHDR_CG_BT_2100;
  default:
    return UHDR_CG_UNSPECIFIED;
  }
}

} // namespace

bool packageJpegR(const char *base_jpeg_path, const char *gainmap_jpeg_path,
                  const char *output_path, int base_color_gamut,
                  const JpegRGainmapMetadata &metadata, std::string *error) {
  std::vector<unsigned char> base_jpeg;
  std::vector<unsigned char> gainmap_jpeg;
  if (!readFile(base_jpeg_path, &base_jpeg)) {
    if (error) {
      *error = "failed to read base JPEG";
    }
    return false;
  }
  if (!readFile(gainmap_jpeg_path, &gainmap_jpeg)) {
    if (error) {
      *error = "failed to read gain map JPEG";
    }
    return false;
  }

  EncoderHandle encoder(uhdr_create_encoder());
  if (!encoder) {
    if (error) {
      *error = "failed to create libultrahdr encoder";
    }
    return false;
  }

  uhdr_compressed_image_t base{};
  base.data = base_jpeg.data();
  base.data_sz = base.capacity = base_jpeg.size();
  base.cg = sanitizeColorGamut(base_color_gamut);
  base.ct = UHDR_CT_SRGB;
  base.range = UHDR_CR_FULL_RANGE;

  uhdr_compressed_image_t gainmap{};
  gainmap.data = gainmap_jpeg.data();
  gainmap.data_sz = gainmap.capacity = gainmap_jpeg.size();
  gainmap.cg = UHDR_CG_UNSPECIFIED;
  gainmap.ct = UHDR_CT_UNSPECIFIED;
  gainmap.range = UHDR_CR_UNSPECIFIED;

  uhdr_gainmap_metadata_t gainmap_metadata{};
  for (size_t i = 0; i < 3; ++i) {
    gainmap_metadata.min_content_boost[i] = metadata.ratio_min[i];
    gainmap_metadata.max_content_boost[i] = metadata.ratio_max[i];
    gainmap_metadata.gamma[i] = metadata.gamma[i];
    gainmap_metadata.offset_sdr[i] = metadata.epsilon_sdr[i];
    gainmap_metadata.offset_hdr[i] = metadata.epsilon_hdr[i];
  }
  gainmap_metadata.hdr_capacity_min = metadata.display_ratio_sdr;
  gainmap_metadata.hdr_capacity_max = metadata.display_ratio_hdr;
  gainmap_metadata.use_base_cg = metadata.use_base_color_space ? 1 : 0;

  if (!checkStatus(
          uhdr_enc_set_compressed_image(encoder.get(), &base, UHDR_BASE_IMG),
          "failed to set base JPEG", error) ||
      !checkStatus(uhdr_enc_set_gainmap_image(encoder.get(), &gainmap,
                                              &gainmap_metadata),
                   "failed to set gain map JPEG", error) ||
      !checkStatus(uhdr_enc_set_output_format(encoder.get(), UHDR_CODEC_JPG),
                   "failed to select JPEG_R output", error) ||
      !checkStatus(uhdr_encode(encoder.get()), "JPEG_R encoding failed",
                   error)) {
    return false;
  }

  const uhdr_compressed_image_t *encoded =
      uhdr_get_encoded_stream(encoder.get());
  if (!encoded || !encoded->data || encoded->data_sz == 0 ||
      encoded->data_sz > static_cast<size_t>(std::numeric_limits<int>::max())) {
    if (error) {
      *error = "libultrahdr returned an invalid JPEG_R stream";
    }
    return false;
  }
  if (!is_uhdr_image(encoded->data, static_cast<int>(encoded->data_sz))) {
    if (error) {
      *error = "libultrahdr output failed JPEG_R validation";
    }
    return false;
  }
  if (!writeFile(output_path, encoded->data, encoded->data_sz)) {
    if (error) {
      *error = "failed to write JPEG_R output";
    }
    return false;
  }
  return true;
}

bool isJpegRFile(const char *path) {
  std::vector<unsigned char> data;
  if (!readFile(path, &data) ||
      data.size() > static_cast<size_t>(std::numeric_limits<int>::max())) {
    return false;
  }
  return is_uhdr_image(data.data(), static_cast<int>(data.size())) != 0;
}

} // namespace photon
