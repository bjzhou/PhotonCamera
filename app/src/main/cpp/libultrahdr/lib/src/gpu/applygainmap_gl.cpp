/*
 * Copyright 2024 The Android Open Source Project
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

#include "ultrahdr/ultrahdrcommon.h"
#include "ultrahdr/gainmapmath.h"
#include "ultrahdr/jpegr.h"

namespace ultrahdr {

extern const std::string vertex_shader = R"__SHADER__(#version 300 es
  precision highp float;

  layout(location = 0) in vec4 aPos;
  layout(location = 1) in vec2 aTexCoord;

  out vec2 TexCoord;

  void main() {
    gl_Position = aPos;
    TexCoord = aTexCoord;
  }
)__SHADER__";

static const std::string getYuv444PixelShader = R"__SHADER__(
  uniform sampler2D yuvTexture;
  uniform int pWidth, pHeight;

  vec3 getYUVPixel() {
    // Convert texCoord to pixel coordinates
    ivec2 pixelCoord = ivec2(TexCoord * vec2(pWidth, pHeight));

    float y = texelFetch(yuvTexture, ivec2(pixelCoord.r, pixelCoord.g), 0).r;
    float u = texelFetch(yuvTexture, ivec2(pixelCoord.r, pixelCoord.g + pHeight), 0).r;
    float v = texelFetch(yuvTexture, ivec2(pixelCoord.r, pixelCoord.g + 2 * pHeight), 0).r;

    return vec3(y, u, v);
  }
)__SHADER__";

static const std::string getYuv422PixelShader = R"__SHADER__(
  uniform sampler2D yuvTexture;
  uniform int pWidth, pHeight;

  vec3 getYUVPixel() {
    // Convert texCoord to pixel coordinates
    ivec2 pixelCoord = ivec2(TexCoord * vec2(pWidth, pHeight));
    ivec2 uvCoord = ivec2(pixelCoord.r / 2, pixelCoord.g);
    int uvWidth = pWidth / 2;
    int uvHeight = pHeight;
    uint yPlaneSize = uint(pWidth) * uint(pHeight);
    uint uPlaneSize = uint(uvWidth) * uint(uvHeight);
    uint yIndex = uint(pixelCoord.g * pWidth + pixelCoord.r);
    uint uIndex = yPlaneSize + uint(uvCoord.g * uvWidth + uvCoord.r);
    uint vIndex = yPlaneSize + uPlaneSize + uint(uvCoord.g * uvWidth + uvCoord.r);

    float y = texelFetch(yuvTexture, ivec2(yIndex % uint(pWidth), yIndex / uint(pWidth)), 0).r;
    float u = texelFetch(yuvTexture, ivec2(uIndex % uint(pWidth), uIndex / uint(pWidth)), 0).r;
    float v = texelFetch(yuvTexture, ivec2(vIndex % uint(pWidth), vIndex / uint(pWidth)), 0).r;

    return vec3(y, u, v);
  }
)__SHADER__";

static const std::string getYuv420PixelShader = R"__SHADER__(
  uniform sampler2D yuvTexture;
  uniform int pWidth, pHeight;

  vec3 getYUVPixel() {
    // Convert texCoord to pixel coordinates
    ivec2 pixelCoord = ivec2(TexCoord * vec2(pWidth, pHeight));
    ivec2 uvCoord = pixelCoord / 2;
    int uvWidth = pWidth / 2;
    int uvHeight = pHeight / 2;
    uint yPlaneSize = uint(pWidth) * uint(pHeight);
    uint uPlaneSize = uint(uvWidth) * uint(uvHeight);
    uint yIndex = uint(pixelCoord.g * pWidth + pixelCoord.r);
    uint uIndex = yPlaneSize + uint(uvCoord.g * uvWidth + uvCoord.r);
    uint vIndex = yPlaneSize + uPlaneSize + uint(uvCoord.g * uvWidth + uvCoord.r);

    float y = texelFetch(yuvTexture, ivec2(yIndex % uint(pWidth), yIndex / uint(pWidth)), 0).r;
    float u = texelFetch(yuvTexture, ivec2(uIndex % uint(pWidth), uIndex / uint(pWidth)), 0).r;
    float v = texelFetch(yuvTexture, ivec2(vIndex % uint(pWidth), vIndex / uint(pWidth)), 0).r;

    return vec3(y, u, v);
  }
)__SHADER__";

static const std::string p3YUVToRGBShader = R"__SHADER__(
  vec3 p3YuvToRgb(const vec3 color) {
    const vec3 offset = vec3(0.0, 128.0f / 255.0f, 128.0f / 255.0f);
    const mat3 transform = mat3(
        1.0,  1.0, 1.0,
        0.0, -0.344136286, 1.772,
        1.402, -0.714136286, 0.0);
    return clamp(transform * (color - offset), 0.0, 1.0);
  }
)__SHADER__";

static const std::string sRGBEOTFShader = R"__SHADER__(
  float sRGBEOTF(float e_gamma) {
    return e_gamma <= 0.04045 ? e_gamma / 12.92 : pow((e_gamma + 0.055) / 1.055, 2.4);
  }

  vec3 sRGBEOTF(const vec3 e_gamma) {
    return vec3(sRGBEOTF(e_gamma.r), sRGBEOTF(e_gamma.g), sRGBEOTF(e_gamma.b));
  }
)__SHADER__";

static const std::string getGainMapSampleSingleChannel = R"__SHADER__(
  uniform sampler2D gainMapTexture;

  vec3 sampleMap(sampler2D map) { return vec3(texture(map, TexCoord).r); }
)__SHADER__";

static const std::string getGainMapSampleMultiChannel = R"__SHADER__(
  uniform sampler2D gainMapTexture;

  vec3 sampleMap(sampler2D map) { return texture(map, TexCoord).rgb; }
)__SHADER__";

static const std::string applyGainMapShader = R"__SHADER__(
  uniform float gamma[3];
  uniform float logMinBoost[3];
  uniform float logMaxBoost[3];
  uniform float weight;
  uniform float offsetSdr[3];
  uniform float offsetHdr[3];
  uniform float normalize;

  float applyGainMapSample(const float channel, float gain, int idx) {
    gain = pow(gain, 1.0f / gamma[idx]);
    float logBoost = logMinBoost[idx] * (1.0f - gain) + logMaxBoost[idx] * gain;
    logBoost = exp2(logBoost * weight);
    return ((channel + offsetSdr[idx]) * logBoost - offsetHdr[idx]) / normalize;
  }

  vec3 applyGain(const vec3 color, const vec3 gain) {
    return vec3(applyGainMapSample(color.r, gain.r, 0),
            applyGainMapSample(color.g, gain.g, 1),
            applyGainMapSample(color.b, gain.b, 2));
  }
)__SHADER__";

static const std::string hlgOETFShader = R"__SHADER__(
  float OETF(const float linear) {
    const float kHlgA = 0.17883277;
    const float kHlgB = 0.28466892;
    const float kHlgC = 0.55991073;
    return linear <= 1.0 / 12.0 ? sqrt(3.0 * linear) : kHlgA * log(12.0 * linear - kHlgB) + kHlgC;
  }

  vec3 OETF(const vec3 linear) {
    return vec3(OETF(linear.r), OETF(linear.g), OETF(linear.b));
  }
)__SHADER__";

static const std::string pqOETFShader = R"__SHADER__(
  vec3 OETF(const vec3 linear) {
    const float kPqM1 = (2610.0 / 4096.0) / 4.0;
    const float kPqM2 = (2523.0 / 4096.0) * 128.0;
    const float kPqC1 = (3424.0 / 4096.0);
    const float kPqC2 = (2413.0 / 4096.0) * 32.0;
    const float kPqC3 = (2392.0 / 4096.0) * 32.0;
    vec3 tmp = pow(linear, vec3(kPqM1));
    tmp = (kPqC1 + kPqC2 * tmp) / (1.0 + kPqC3 * tmp);
    return pow(tmp, vec3(kPqM2));
  }
)__SHADER__";

static const std::string hlgInverseOOTFShader = R"__SHADER__(
  float InverseOOTF(const float linear) {
    const float kOotfGamma = 1.2f;
    return pow(linear, 1.0f / kOotfGamma);
  }

  vec3 InverseOOTF(const vec3 linear) {
    return vec3(InverseOOTF(linear.r), InverseOOTF(linear.g), InverseOOTF(linear.b));
  }
)__SHADER__";

template <typename... Args>
std::string StringFormat(const std::string& format, Args... args) {
  auto size = std::snprintf(nullptr, 0, format.c_str(), args...);
  if (size < 0) return std::string();
  std::vector<char> buffer(size + 1);  // Add 1 for terminating null byte
  std::snprintf(buffer.data(), buffer.size(), format.c_str(), args...);
  return std::string(buffer.data(), size);  // Exclude the terminating null byte
}

std::string getClampPixelFloatShader(uhdr_color_transfer_t output_ct) {
  return StringFormat(
      "  vec3 clampPixelFloat(const vec3 color) {\n"
      "    return clamp(color, 0.0, %f);\n"
      "  }\n",
      output_ct == UHDR_CT_LINEAR ? kMaxPixelFloatHdrLinear : kMaxPixelFloat);
}

std::string getGamutConversionShader(uhdr_color_gamut_t src_cg, uhdr_color_gamut_t dst_cg) {
  const float* coeffs = nullptr;
  if (dst_cg == UHDR_CG_BT_709) {
    if (src_cg == UHDR_CG_DISPLAY_P3) {
      coeffs = kP3ToBt709.data();
    } else if (src_cg == UHDR_CG_BT_2100) {
      coeffs = kBt2100ToBt709.data();
    }
  } else if (dst_cg == UHDR_CG_DISPLAY_P3) {
    if (src_cg == UHDR_CG_BT_709) {
      coeffs = kBt709ToP3.data();
    }
    if (src_cg == UHDR_CG_BT_2100) {
      coeffs = kBt2100ToP3.data();
    }
  } else if (dst_cg == UHDR_CG_BT_2100) {
    if (src_cg == UHDR_CG_BT_709) {
      coeffs = kBt709ToBt2100.data();
    } else if (src_cg == UHDR_CG_DISPLAY_P3) {
      coeffs = kP3ToBt2100.data();
    }
  }
  return StringFormat(
      "  vec3 gamutConversion(const vec3 color) {\n"
      "    const mat3 transform = mat3(\n"
      "      %f, %f, %f,\n"
      "      %f, %f, %f,\n"
      "      %f, %f, %f);\n"
      "    return transform * color;\n"
      "  }\n",
      coeffs[0], coeffs[3], coeffs[6], coeffs[1], coeffs[4], coeffs[7], coeffs[2], coeffs[5],
      coeffs[8]);
}

std::string getApplyGainMapFragmentShader(uhdr_img_fmt sdr_fmt, uhdr_img_fmt gm_fmt,
                                          uhdr_color_transfer output_ct, uhdr_color_gamut_t sdr_cg,
                                          uhdr_color_gamut_t hdr_cg, bool use_base_cg) {
  std::string shader_code = R"__SHADER__(#version 300 es
    precision highp float;
    precision highp int;

    out vec4 FragColor;
    in vec2 TexCoord;
  )__SHADER__";

  if (sdr_fmt == UHDR_IMG_FMT_24bppYCbCr444) {
    shader_code.append(getYuv444PixelShader);
  } else if (sdr_fmt == UHDR_IMG_FMT_16bppYCbCr422) {
    shader_code.append(getYuv422PixelShader);
  } else if (sdr_fmt == UHDR_IMG_FMT_12bppYCbCr420) {
    shader_code.append(getYuv420PixelShader);
  }
  shader_code.append(p3YUVToRGBShader);
  shader_code.append(sRGBEOTFShader);
  shader_code.append(gm_fmt == UHDR_IMG_FMT_8bppYCbCr400 ? getGainMapSampleSingleChannel
                                                         : getGainMapSampleMultiChannel);
  shader_code.append(applyGainMapShader);
  if (sdr_cg != hdr_cg) shader_code.append(getGamutConversionShader(sdr_cg, hdr_cg));
  shader_code.append(getClampPixelFloatShader(output_ct));
  if (output_ct == UHDR_CT_HLG) {
    shader_code.append(hlgInverseOOTFShader);
    shader_code.append(hlgOETFShader);
  } else if (output_ct == UHDR_CT_PQ) {
    shader_code.append(pqOETFShader);
  }
  shader_code.append(R"__SHADER__(
    void main() {
      vec3 yuv_gamma_sdr = getYUVPixel();
      vec3 rgb_gamma_sdr = p3YuvToRgb(yuv_gamma_sdr);
      vec3 rgb_sdr = sRGBEOTF(rgb_gamma_sdr);
  )__SHADER__");
  if (sdr_cg != hdr_cg && !use_base_cg) {
    shader_code.append(R"__SHADER__(
      rgb_sdr = gamutConversion(rgb_sdr);
    )__SHADER__");
  }
  shader_code.append(R"__SHADER__(
      vec3 gain = sampleMap(gainMapTexture);
      vec3 rgb_hdr = applyGain(rgb_sdr, gain);
  )__SHADER__");
  if (sdr_cg != hdr_cg && use_base_cg) {
    shader_code.append(R"__SHADER__(
      rgb_hdr = gamutConversion(rgb_hdr);
    )__SHADER__");
  }
  shader_code.append(R"__SHADER__(
      rgb_hdr = clampPixelFloat(rgb_hdr);
  )__SHADER__");
  if (output_ct == UHDR_CT_HLG) {
    shader_code.append(R"__SHADER__(
      rgb_hdr = InverseOOTF(rgb_hdr);
      rgb_hdr = OETF(rgb_hdr);
    )__SHADER__");
  } else if (output_ct == UHDR_CT_PQ) {
    shader_code.append(R"__SHADER__(
      rgb_hdr = OETF(rgb_hdr);
    )__SHADER__");
  }
  shader_code.append(R"__SHADER__(
      FragColor = vec4(rgb_hdr, 1.0);
    }
  )__SHADER__");
  return shader_code;
}

bool isBufferDataContiguous(uhdr_raw_image_t* img) {
  if (img->fmt == UHDR_IMG_FMT_32bppRGBA8888 || img->fmt == UHDR_IMG_FMT_24bppRGB888 ||
      img->fmt == UHDR_IMG_FMT_8bppYCbCr400 || img->fmt == UHDR_IMG_FMT_32bppRGBA1010102 ||
      img->fmt == UHDR_IMG_FMT_64bppRGBAHalfFloat) {
    return img->stride[UHDR_PLANE_PACKED] == img->w;
  } else if (img->fmt == UHDR_IMG_FMT_24bppYCbCrP010) {
    uint16_t* y = static_cast<uint16_t*>(img->planes[UHDR_PLANE_Y]);
    uint16_t* u = static_cast<uint16_t*>(img->planes[UHDR_PLANE_UV]);
    std::ptrdiff_t sz = u - y;
    long pixels = img->w * img->h;
    return img->stride[UHDR_PLANE_Y] == img->w && img->stride[UHDR_PLANE_UV] == img->w &&
           sz == pixels;
  } else if (img->fmt == UHDR_IMG_FMT_12bppYCbCr420 || img->fmt == UHDR_IMG_FMT_24bppYCbCr444 ||
             img->fmt == UHDR_IMG_FMT_16bppYCbCr422) {
    int h_samp_factor = img->fmt == UHDR_IMG_FMT_24bppYCbCr444 ? 1 : 2;
    int v_samp_factor = img->fmt == UHDR_IMG_FMT_12bppYCbCr420 ? 2 : 1;
    uint8_t* y = static_cast<uint8_t*>(img->planes[UHDR_PLANE_Y]);
    uint8_t* u = static_cast<uint8_t*>(img->planes[UHDR_PLANE_U]);
    uint8_t* v = static_cast<uint8_t*>(img->planes[UHDR_PLANE_V]);
    std::ptrdiff_t sz_a = u - y, sz_b = v - u;
    long pixels = img->w * img->h;
    return img->stride[UHDR_PLANE_Y] == img->w &&
           img->stride[UHDR_PLANE_U] == img->w / h_samp_factor &&
           img->stride[UHDR_PLANE_V] == img->w / h_samp_factor && sz_a == pixels &&
           sz_b == pixels / (h_samp_factor * v_samp_factor);
  }
  return false;
}

uhdr_error_info_t applyGainMapGLES(uhdr_raw_image_t* sdr_intent, uhdr_raw_image_t* gainmap_img,
                                   uhdr_gainmap_metadata_ext_t* gainmap_metadata,
                                   uhdr_color_transfer_t output_ct, float display_boost,
                                   uhdr_color_gamut_t sdr_cg, uhdr_color_gamut_t hdr_cg,
                                   uhdr_opengl_ctxt_t* opengl_ctxt) {
  GLuint shaderProgram = 0;  // shader program
  GLuint yuvTexture = 0;     // sdr intent texture
  GLuint frameBuffer = 0;

#define RET_IF_ERR()                                           \
  if (opengl_ctxt->mErrorStatus.error_code != UHDR_CODEC_OK) { \
    if (frameBuffer) glDeleteFramebuffers(1, &frameBuffer);    \
    if (yuvTexture) glDeleteTextures(1, &yuvTexture);          \
    if (shaderProgram) glDeleteProgram(shaderProgram);         \
    return opengl_ctxt->mErrorStatus;                          \
  }

  shaderProgram = opengl_ctxt->create_shader_program(
      vertex_shader.c_str(),
      getApplyGainMapFragmentShader(sdr_intent->fmt, gainmap_img->fmt, output_ct, sdr_cg, hdr_cg,
                                    gainmap_metadata->use_base_cg)
          .c_str());
  RET_IF_ERR()

  yuvTexture = opengl_ctxt->create_texture(sdr_intent->fmt, sdr_intent->w, sdr_intent->h,
                                           sdr_intent->planes[0]);
  opengl_ctxt->mGainmapImgTexture = opengl_ctxt->create_texture(
      gainmap_img->fmt, gainmap_img->w, gainmap_img->h, gainmap_img->planes[0]);
  opengl_ctxt->mDecodedImgTexture = opengl_ctxt->create_texture(
      output_ct == UHDR_CT_LINEAR ? UHDR_IMG_FMT_64bppRGBAHalfFloat : UHDR_IMG_FMT_32bppRGBA1010102,
      sdr_intent->w, sdr_intent->h, nullptr);
  RET_IF_ERR()

  frameBuffer = opengl_ctxt->setup_framebuffer(opengl_ctxt->mDecodedImgTexture);
  RET_IF_ERR()

  glViewport(0, 0, sdr_intent->w, sdr_intent->h);
  glUseProgram(shaderProgram);

  // Get the location of the uniform variables
  GLint pWidthLocation = glGetUniformLocation(shaderProgram, "pWidth");
  GLint pHeightLocation = glGetUniformLocation(shaderProgram, "pHeight");
  GLint gammaLocation = glGetUniformLocation(shaderProgram, "gamma");
  GLint logMinBoostLocation = glGetUniformLocation(shaderProgram, "logMinBoost");
  GLint logMaxBoostLocation = glGetUniformLocation(shaderProgram, "logMaxBoost");
  GLint weightLocation = glGetUniformLocation(shaderProgram, "weight");
  GLint offsetSdrLocation = glGetUniformLocation(shaderProgram, "offsetSdr");
  GLint offsetHdrLocation = glGetUniformLocation(shaderProgram, "offsetHdr");
  GLint normalizeLocation = glGetUniformLocation(shaderProgram, "normalize");

  glUniform1i(pWidthLocation, sdr_intent->w);
  glUniform1i(pHeightLocation, sdr_intent->h);
  glUniform1fv(gammaLocation, 3, gainmap_metadata->gamma);
  float logMinBoostValues[3] = {static_cast<float>(log2(gainmap_metadata->min_content_boost[0])),
                                static_cast<float>(log2(gainmap_metadata->min_content_boost[1])),
                                static_cast<float>(log2(gainmap_metadata->min_content_boost[2]))};
  float logMaxBoostValues[3] = {static_cast<float>(log2(gainmap_metadata->max_content_boost[0])),
                                static_cast<float>(log2(gainmap_metadata->max_content_boost[1])),
                                static_cast<float>(log2(gainmap_metadata->max_content_boost[2]))};
  glUniform1fv(logMinBoostLocation, 3, logMinBoostValues);
  glUniform1fv(logMaxBoostLocation, 3, logMaxBoostValues);
  glUniform1fv(offsetSdrLocation, 3, gainmap_metadata->offset_sdr);
  glUniform1fv(offsetHdrLocation, 3, gainmap_metadata->offset_hdr);
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
  glUniform1f(weightLocation, gainmap_weight);
  float normalize = 1.0f;
  if (output_ct == UHDR_CT_HLG)
    normalize = kHlgMaxNits / kSdrWhiteNits;
  else if (output_ct == UHDR_CT_PQ)
    normalize = kPqMaxNits / kSdrWhiteNits;
  glUniform1f(normalizeLocation, normalize);

  glActiveTexture(GL_TEXTURE0);
  glBindTexture(GL_TEXTURE_2D, yuvTexture);
  glUniform1i(glGetUniformLocation(shaderProgram, "yuvTexture"), 0);

  glActiveTexture(GL_TEXTURE1);
  glBindTexture(GL_TEXTURE_2D, opengl_ctxt->mGainmapImgTexture);
  glUniform1i(glGetUniformLocation(shaderProgram, "gainMapTexture"), 1);

  opengl_ctxt->check_gl_errors("binding values to uniforms");
  RET_IF_ERR()

  glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);

  glBindFramebuffer(GL_FRAMEBUFFER, 0);

  opengl_ctxt->check_gl_errors("reading gles output");
  RET_IF_ERR()

  if (frameBuffer) glDeleteFramebuffers(1, &frameBuffer);
  if (yuvTexture) glDeleteTextures(1, &yuvTexture);
  if (shaderProgram) glDeleteProgram(shaderProgram);

  return opengl_ctxt->mErrorStatus;
}

}  // namespace ultrahdr
