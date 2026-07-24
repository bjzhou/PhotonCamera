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

#include <ultrahdr/editorhelper.h>


namespace ultrahdr {

extern const std::string vertex_shader;

static const std::string mirror_horz_fragmentSource = R"__SHADER__(#version 300 es
  precision highp float;
  precision highp sampler2D;
  in vec2 TexCoord;
  out vec4 outColor;
  uniform sampler2D srcTexture;
  void main() {
      vec2 texCoord = TexCoord;
      texCoord.y = 1.0 - TexCoord.y; // Horizontal mirror
      ivec2 texelCoord = ivec2(texCoord * vec2(textureSize(srcTexture, 0)));
      vec4 sampledColor = texelFetch(srcTexture, texelCoord, 0);
      outColor = sampledColor;
  }
)__SHADER__";

static const std::string mirror_vert_fragmentSource = R"__SHADER__(#version 300 es
  precision highp float;
  precision highp sampler2D;
  in vec2 TexCoord;
  out vec4 outColor;
  uniform sampler2D srcTexture;
  void main() {
      vec2 texCoord = TexCoord;
      texCoord.x = 1.0 - TexCoord.x; // Vertical mirror
      ivec2 texelCoord = ivec2(texCoord * vec2(textureSize(srcTexture, 0)));
      vec4 sampledColor = texelFetch(srcTexture, texelCoord, 0);
      outColor = sampledColor;
  }
)__SHADER__";

static const std::string rotate_90_fragmentSource = R"__SHADER__(#version 300 es
  precision highp float;
  precision highp sampler2D;
  in vec2 TexCoord;
  out vec4 outColor;
  uniform sampler2D srcTexture;
  void main() {
      vec2 texCoord = TexCoord;
      texCoord = vec2(TexCoord.y, 1.0 - TexCoord.x); // 90 degree
      ivec2 texelCoord = ivec2(texCoord * vec2(textureSize(srcTexture, 0)));
      vec4 sampledColor = texelFetch(srcTexture, texelCoord, 0);
      outColor = sampledColor;
  }
)__SHADER__";

static const std::string rotate_180_fragmentSource = R"__SHADER__(#version 300 es
  precision highp float;
  precision highp sampler2D;
  in vec2 TexCoord;
  out vec4 outColor;
  uniform sampler2D srcTexture;
  uniform int rotateDegree;
  void main() {
      vec2 texCoord = TexCoord;
      texCoord = vec2(1.0 - TexCoord.x, 1.0 - TexCoord.y); // 180 degree
      ivec2 texelCoord = ivec2(texCoord * vec2(textureSize(srcTexture, 0)));
      vec4 sampledColor = texelFetch(srcTexture, texelCoord, 0);
      outColor = sampledColor;
  }
)__SHADER__";

static const std::string rotate_270_fragmentSource = R"__SHADER__(#version 300 es
  precision highp float;
  precision highp sampler2D;
  in vec2 TexCoord;
  out vec4 outColor;
  uniform sampler2D srcTexture;
  void main() {
      vec2 texCoord = TexCoord;
      texCoord = vec2(1.0 - TexCoord.y, TexCoord.x); // 270 degree
      ivec2 texelCoord = ivec2(texCoord * vec2(textureSize(srcTexture, 0)));
      vec4 sampledColor = texelFetch(srcTexture, texelCoord, 0);
      outColor = sampledColor;
  }
)__SHADER__";

static const std::string crop_fragmentSource = R"__SHADER__(#version 300 es
  precision highp float;
  precision highp sampler2D;
  in vec2 TexCoord;
  out vec4 outColor;
  uniform sampler2D srcTexture;
  uniform vec2 cropStart; // Crop start coordinate (normalized)
  uniform vec2 cropSize;  // Size of the crop region (normalized)
  void main() {
    vec2 texCoord = cropStart + TexCoord * cropSize;
    ivec2 texelCoord = ivec2(texCoord * vec2(textureSize(srcTexture, 0)));
    vec4 sampledColor = texelFetch(srcTexture, texelCoord, 0);
    outColor = sampledColor;
  }
)__SHADER__";

static const std::string resizeShader = R"__SHADER__(
  uniform sampler2D srcTexture;
  uniform int srcWidth;
  uniform int srcHeight;
  uniform int dstWidth;
  uniform int dstHeight;

  // Cubic interpolation function
  float cubic(float x) {
    const float a = -0.5;
    float absX = abs(x);
    float absX2 = absX * absX;
    float absX3 = absX2 * absX;
    if (absX <= 1.0) {
      return (a + 2.0) * absX3 - (a + 3.0) * absX2 + 1.0;
    } else if (absX < 2.0) {
      return a * absX3 - 5.0 * a * absX2 + 8.0 * a * absX - 4.0 * a;
    }
    return 0.0;
  }

  // Resizing function using bicubic interpolation
  vec4 resize() {
    vec2 texCoord = gl_FragCoord.xy / vec2(float(dstWidth), float(dstHeight));
    vec2 srcCoord = texCoord * vec2(float(srcWidth), float(srcHeight));

    // Separate the integer and fractional parts of the source coordinates
    vec2 srcCoordFloor = floor(srcCoord);
    vec2 srcCoordFrac = fract(srcCoord);
    vec4 color = vec4(0.0);

    // Perform bicubic interpolation
    // Loop through the 4x4 neighborhood of pixels around the source coordinate
    for (int y = -1; y <= 2; ++y) {
      float yWeight = cubic(srcCoordFrac.y - float(y));
      vec4 rowColor = vec4(0.0);
      for (int x = -1; x <= 2; ++x) {
          float xWeight = cubic(srcCoordFrac.x - float(x));
          vec2 sampleCoord = clamp(
              (srcCoordFloor + vec2(float(x), float(y))) / vec2(float(srcWidth), float(srcHeight)),
              0.0, 1.0);
          rowColor += texture(srcTexture, sampleCoord) * xWeight;
      }
      color += rowColor * yWeight;
    }
    return color;
  }
)__SHADER__";

void release_resources(GLuint* texture, GLuint* frameBuffer) {
  if (frameBuffer) glDeleteFramebuffers(1, frameBuffer);
  if (texture) glDeleteTextures(1, texture);
}

#define RET_IF_ERR()                                       \
  if (gl_ctxt->mErrorStatus.error_code != UHDR_CODEC_OK) { \
    release_resources(&dstTexture, &frameBuffer);          \
    return nullptr;                                        \
  }

std::unique_ptr<uhdr_raw_image_ext_t> apply_mirror_gles(ultrahdr::uhdr_mirror_effect_t* desc,
                                                        uhdr_raw_image_t* src,
                                                        uhdr_opengl_ctxt* gl_ctxt,
                                                        GLuint* srcTexture) {
  std::unique_ptr<uhdr_raw_image_ext_t> dst = std::make_unique<uhdr_raw_image_ext_t>(
      src->fmt, src->cg, src->ct, src->range, src->w, src->h, 1);
  GLuint* shaderProgram = nullptr;

  if (desc->m_direction == UHDR_MIRROR_HORIZONTAL) {
    if (gl_ctxt->mShaderProgram[UHDR_MIR_HORZ] == 0) {
      gl_ctxt->mShaderProgram[UHDR_MIR_HORZ] =
          gl_ctxt->create_shader_program(vertex_shader.c_str(), mirror_horz_fragmentSource.c_str());
    }
    shaderProgram = &gl_ctxt->mShaderProgram[UHDR_MIR_HORZ];
  } else if (desc->m_direction == UHDR_MIRROR_VERTICAL) {
    if (gl_ctxt->mShaderProgram[UHDR_MIR_VERT] == 0) {
      gl_ctxt->mShaderProgram[UHDR_MIR_VERT] =
          gl_ctxt->create_shader_program(vertex_shader.c_str(), mirror_vert_fragmentSource.c_str());
    }
    shaderProgram = &gl_ctxt->mShaderProgram[UHDR_MIR_VERT];
  }
  GLuint dstTexture = gl_ctxt->create_texture(src->fmt, dst->w, dst->h, NULL);
  GLuint frameBuffer = gl_ctxt->setup_framebuffer(dstTexture);

  glViewport(0, 0, dst->w, dst->h);
  glUseProgram(*shaderProgram);
  RET_IF_ERR()

  glActiveTexture(GL_TEXTURE0);
  glBindTexture(GL_TEXTURE_2D, *srcTexture);
  glUniform1i(glGetUniformLocation(*shaderProgram, "srcTexture"), 0);
  gl_ctxt->check_gl_errors("binding values to uniform");
  RET_IF_ERR()

  glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
  RET_IF_ERR()

  std::swap(*srcTexture, dstTexture);
  release_resources(&dstTexture, &frameBuffer);
  return dst;
}

std::unique_ptr<uhdr_raw_image_ext_t> apply_rotate_gles(ultrahdr::uhdr_rotate_effect_t* desc,
                                                        uhdr_raw_image_t* src,
                                                        uhdr_opengl_ctxt* gl_ctxt,
                                                        GLuint* srcTexture) {
  std::unique_ptr<uhdr_raw_image_ext_t> dst;
  GLuint* shaderProgram;
  if (desc->m_degree == 90 || desc->m_degree == 270) {
    dst = std::make_unique<uhdr_raw_image_ext_t>(src->fmt, src->cg, src->ct, src->range, src->h,
                                                 src->w, 1);
    if (desc->m_degree == 90) {
      if (gl_ctxt->mShaderProgram[UHDR_ROT_90] == 0) {
        gl_ctxt->mShaderProgram[UHDR_ROT_90] =
            gl_ctxt->create_shader_program(vertex_shader.c_str(), rotate_90_fragmentSource.c_str());
      }
      shaderProgram = &gl_ctxt->mShaderProgram[UHDR_ROT_90];
    } else {
      if (gl_ctxt->mShaderProgram[UHDR_ROT_270] == 0) {
        gl_ctxt->mShaderProgram[UHDR_ROT_270] = gl_ctxt->create_shader_program(
            vertex_shader.c_str(), rotate_270_fragmentSource.c_str());
      }
      shaderProgram = &gl_ctxt->mShaderProgram[UHDR_ROT_270];
    }
  } else if (desc->m_degree == 180) {
    dst = std::make_unique<uhdr_raw_image_ext_t>(src->fmt, src->cg, src->ct, src->range, src->w,
                                                 src->h, 1);
    if (gl_ctxt->mShaderProgram[UHDR_ROT_180] == 0) {
      gl_ctxt->mShaderProgram[UHDR_ROT_180] =
          gl_ctxt->create_shader_program(vertex_shader.c_str(), rotate_180_fragmentSource.c_str());
    }
    shaderProgram = &gl_ctxt->mShaderProgram[UHDR_ROT_180];
  } else {
    return nullptr;
  }
  GLuint dstTexture = gl_ctxt->create_texture(src->fmt, dst->w, dst->h, NULL);
  GLuint frameBuffer = gl_ctxt->setup_framebuffer(dstTexture);

  glViewport(0, 0, dst->w, dst->h);
  glUseProgram(*shaderProgram);
  RET_IF_ERR()

  glActiveTexture(GL_TEXTURE0);
  glBindTexture(GL_TEXTURE_2D, *srcTexture);
  glUniform1i(glGetUniformLocation(*shaderProgram, "srcTexture"), 0);
  gl_ctxt->check_gl_errors("binding values to uniform");
  RET_IF_ERR()

  glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
  RET_IF_ERR()

  std::swap(*srcTexture, dstTexture);
  release_resources(&dstTexture, &frameBuffer);
  return dst;
}

std::unique_ptr<uhdr_raw_image_ext_t> apply_crop_gles(uhdr_raw_image_t* src, int left, int top,
                                                      int wd, int ht, uhdr_opengl_ctxt* gl_ctxt,
                                                      GLuint* srcTexture) {
  std::unique_ptr<uhdr_raw_image_ext_t> dst =
      std::make_unique<uhdr_raw_image_ext_t>(src->fmt, src->cg, src->ct, src->range, wd, ht, 1);
  GLuint dstTexture = 0;
  GLuint frameBuffer = 0;

  if (gl_ctxt->mShaderProgram[UHDR_CROP] == 0) {
    gl_ctxt->mShaderProgram[UHDR_CROP] =
        gl_ctxt->create_shader_program(vertex_shader.c_str(), crop_fragmentSource.c_str());
  }
  dstTexture = gl_ctxt->create_texture(src->fmt, wd, ht, NULL);
  frameBuffer = gl_ctxt->setup_framebuffer(dstTexture);

  glViewport(0, 0, dst->w, dst->h);
  glUseProgram(gl_ctxt->mShaderProgram[UHDR_CROP]);

  float normCropX = (float)left / src->w;
  float normCropY = (float)top / src->h;
  float normCropW = (float)wd / src->w;
  float normCropH = (float)ht / src->h;

  glActiveTexture(GL_TEXTURE0);
  glBindTexture(GL_TEXTURE_2D, *srcTexture);
  glUniform1i(glGetUniformLocation(gl_ctxt->mShaderProgram[UHDR_CROP], "srcTexture"), 0);
  glUniform2f(glGetUniformLocation(gl_ctxt->mShaderProgram[UHDR_CROP], "cropStart"), normCropX,
              normCropY);
  glUniform2f(glGetUniformLocation(gl_ctxt->mShaderProgram[UHDR_CROP], "cropSize"), normCropW,
              normCropH);
  gl_ctxt->check_gl_errors("binding values to uniform");
  RET_IF_ERR()

  glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
  RET_IF_ERR()

  std::swap(*srcTexture, dstTexture);
  release_resources(&dstTexture, &frameBuffer);
  return dst;
}

std::unique_ptr<uhdr_raw_image_ext_t> apply_resize_gles(uhdr_raw_image_t* src, int dst_w, int dst_h,
                                                        uhdr_opengl_ctxt* gl_ctxt,
                                                        GLuint* srcTexture) {
  std::unique_ptr<uhdr_raw_image_ext_t> dst = std::make_unique<uhdr_raw_image_ext_t>(
      src->fmt, src->cg, src->ct, src->range, dst_w, dst_h, 1);
  std::string shader_code = R"__SHADER__(#version 300 es
    precision highp float;
    in vec2 TexCoord;
    out vec4 fragColor;
  )__SHADER__";
  shader_code.append(resizeShader);
  shader_code.append(R"__SHADER__(
    void main() {
      fragColor = resize();
    }
  )__SHADER__");
  if (gl_ctxt->mShaderProgram[UHDR_RESIZE] == 0) {
    gl_ctxt->mShaderProgram[UHDR_RESIZE] =
        gl_ctxt->create_shader_program(vertex_shader.c_str(), shader_code.c_str());
  }
  GLuint dstTexture = gl_ctxt->create_texture(src->fmt, dst_w, dst_h, NULL);
  GLuint frameBuffer = gl_ctxt->setup_framebuffer(dstTexture);

  glViewport(0, 0, dst->w, dst->h);
  glUseProgram(gl_ctxt->mShaderProgram[UHDR_RESIZE]);
  RET_IF_ERR()

  glActiveTexture(GL_TEXTURE0);
  glBindTexture(GL_TEXTURE_2D, *srcTexture);
  glUniform1i(glGetUniformLocation(gl_ctxt->mShaderProgram[UHDR_RESIZE], "srcTexture"), 0);
  glUniform1i(glGetUniformLocation(gl_ctxt->mShaderProgram[UHDR_RESIZE], "srcWidth"),
              src->w);
  glUniform1i(glGetUniformLocation(gl_ctxt->mShaderProgram[UHDR_RESIZE], "srcHeight"),
              src->h);
  glUniform1i(glGetUniformLocation(gl_ctxt->mShaderProgram[UHDR_RESIZE], "dstWidth"), dst_w);
  glUniform1i(glGetUniformLocation(gl_ctxt->mShaderProgram[UHDR_RESIZE], "dstHeight"),
              dst_h);
  gl_ctxt->check_gl_errors("binding values to uniform");
  RET_IF_ERR()

  glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
  RET_IF_ERR()

  std::swap(*srcTexture, dstTexture);
  release_resources(&dstTexture, &frameBuffer);
  return dst;
}
#undef RET_IF_ERR
}  // namespace ultrahdr
