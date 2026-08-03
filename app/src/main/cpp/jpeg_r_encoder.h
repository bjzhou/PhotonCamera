#ifndef PHOTON_JPEG_R_ENCODER_H
#define PHOTON_JPEG_R_ENCODER_H

#include <array>
#include <string>

namespace photon {

struct JpegRGainmapMetadata {
  std::array<float, 3> ratio_min{};
  std::array<float, 3> ratio_max{};
  std::array<float, 3> gamma{};
  std::array<float, 3> epsilon_sdr{};
  std::array<float, 3> epsilon_hdr{};
  float display_ratio_sdr = 1.0f;
  float display_ratio_hdr = 1.0f;
  bool use_base_color_space = true;
};

bool packageJpegR(const char *base_jpeg_path, const char *gainmap_jpeg_path,
                  const char *output_path, int base_color_gamut,
                  const JpegRGainmapMetadata &metadata, std::string *error);

bool isJpegRFile(const char *path);

} // namespace photon

#endif // PHOTON_JPEG_R_ENCODER_H
