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

namespace ultrahdr {

uhdr_opengl_ctxt::uhdr_opengl_ctxt() {
  mEGLDisplay = EGL_NO_DISPLAY;
  mEGLContext = EGL_NO_CONTEXT;
  mEGLSurface = EGL_NO_SURFACE;
  mEGLConfig = 0;
  mQuadVAO = 0;
  mQuadVBO = 0;
  mQuadEBO = 0;
  mErrorStatus = g_no_error;
  mDecodedImgTexture = 0;
  mGainmapImgTexture = 0;
  for (int i = 0; i < UHDR_RESIZE + 1; i++) {
    mShaderProgram[i] = 0;
  }
}

uhdr_opengl_ctxt::~uhdr_opengl_ctxt() { delete_opengl_ctxt(); }

void uhdr_opengl_ctxt::init_opengl_ctxt() {
#define RET_IF_TRUE(cond, msg)                                          \
  {                                                                     \
    if (cond) {                                                         \
      mErrorStatus.error_code = UHDR_CODEC_ERROR;                       \
      mErrorStatus.has_detail = 1;                                      \
      snprintf(mErrorStatus.detail, sizeof mErrorStatus.detail,         \
               "%s, received egl error code 0x%x", msg, eglGetError()); \
      return;                                                           \
    }                                                                   \
  }

  mEGLDisplay = eglGetDisplay(EGL_DEFAULT_DISPLAY);
  RET_IF_TRUE(mEGLDisplay == EGL_NO_DISPLAY, "eglGetDisplay() failed")

  RET_IF_TRUE(!eglInitialize(mEGLDisplay, NULL, NULL), "eglInitialize() failed")

  EGLint num_config;
  EGLint attribs[] = {EGL_SURFACE_TYPE, EGL_PBUFFER_BIT, EGL_RENDERABLE_TYPE, EGL_OPENGL_ES3_BIT,
                      EGL_NONE};
  RET_IF_TRUE(!eglChooseConfig(mEGLDisplay, attribs, &mEGLConfig, 1, &num_config) || num_config < 1,
              "eglChooseConfig() failed")

  EGLint context_attribs[] = {EGL_CONTEXT_CLIENT_VERSION, 3, EGL_NONE};
  mEGLContext = eglCreateContext(mEGLDisplay, mEGLConfig, EGL_NO_CONTEXT, context_attribs);
  RET_IF_TRUE(mEGLContext == EGL_NO_CONTEXT, "eglCreateContext() failed")

  EGLint pbuffer_attribs[] = {
      EGL_WIDTH, 1, EGL_HEIGHT, 1, EGL_NONE,
  };
  mEGLSurface = eglCreatePbufferSurface(mEGLDisplay, mEGLConfig, pbuffer_attribs);
  RET_IF_TRUE(mEGLSurface == EGL_NO_SURFACE, "eglCreatePbufferSurface() failed")

  RET_IF_TRUE(!eglMakeCurrent(mEGLDisplay, mEGLSurface, mEGLSurface, mEGLContext),
              "eglMakeCurrent() failed")
#undef RET_IF_TRUE

  setup_quad();
}

GLuint uhdr_opengl_ctxt::compile_shader(GLenum type, const char* source) {
  GLuint shader = glCreateShader(type);
  if (!shader) {
    mErrorStatus.error_code = UHDR_CODEC_ERROR;
    mErrorStatus.has_detail = 1;
    snprintf(mErrorStatus.detail, sizeof mErrorStatus.detail,
             "glCreateShader() failed, received gl error code 0x%x", glGetError());
    return 0;
  }
  glShaderSource(shader, 1, &source, nullptr);
  glCompileShader(shader);
  GLint compileStatus;
  glGetShaderiv(shader, GL_COMPILE_STATUS, &compileStatus);
  if (compileStatus != GL_TRUE) {
    GLint logLength;
    glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &logLength);
    // Info log length includes the null terminator, so 1 means that the info log is an empty
    // string.
    if (logLength > 1) {
      std::vector<char> log(logLength);
      glGetShaderInfoLog(shader, logLength, nullptr, log.data());
      mErrorStatus.error_code = UHDR_CODEC_ERROR;
      mErrorStatus.has_detail = 1;
      snprintf(mErrorStatus.detail, sizeof mErrorStatus.detail,
               "Unable to compile shader, error log: %s", log.data());
    } else {
      mErrorStatus.error_code = UHDR_CODEC_ERROR;
      mErrorStatus.has_detail = 1;
      snprintf(mErrorStatus.detail, sizeof mErrorStatus.detail,
               "Unable to compile shader, <empty log message>");
    }
    glDeleteShader(shader);
    return 0;
  }
  return shader;
}

GLuint uhdr_opengl_ctxt::create_shader_program(const char* vertex_source,
                                               const char* fragment_source) {
  if (vertex_source == nullptr || *vertex_source == '\0') {
    mErrorStatus.error_code = UHDR_CODEC_INVALID_PARAM;
    mErrorStatus.has_detail = 1;
    snprintf(mErrorStatus.detail, sizeof mErrorStatus.detail, "empty vertex source shader");
    return 0;
  }

  if (fragment_source == nullptr || *fragment_source == '\0') {
    mErrorStatus.error_code = UHDR_CODEC_INVALID_PARAM;
    mErrorStatus.has_detail = 1;
    snprintf(mErrorStatus.detail, sizeof mErrorStatus.detail, "empty fragment source shader");
    return 0;
  }

  GLuint program = glCreateProgram();
  if (!program) {
    mErrorStatus.error_code = UHDR_CODEC_ERROR;
    mErrorStatus.has_detail = 1;
    snprintf(mErrorStatus.detail, sizeof mErrorStatus.detail,
             "glCreateProgram() failed, received gl error code 0x%x", glGetError());
    return 0;
  }

  GLuint vertexShader = compile_shader(GL_VERTEX_SHADER, vertex_source);
  GLuint fragmentShader = compile_shader(GL_FRAGMENT_SHADER, fragment_source);
  if (vertexShader == 0 || fragmentShader == 0) {
    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);
    glDeleteProgram(program);
    return 0;
  }

  glAttachShader(program, vertexShader);
  glDeleteShader(vertexShader);

  glAttachShader(program, fragmentShader);
  glDeleteShader(fragmentShader);

  glLinkProgram(program);
  GLint linkStatus;
  glGetProgramiv(program, GL_LINK_STATUS, &linkStatus);
  if (linkStatus != GL_TRUE) {
    GLint logLength;
    glGetProgramiv(program, GL_INFO_LOG_LENGTH, &logLength);
    // Info log length includes the null terminator, so 1 means that the info log is an empty
    // string.
    if (logLength > 1) {
      std::vector<char> log(logLength);
      glGetProgramInfoLog(program, logLength, nullptr, log.data());
      mErrorStatus.error_code = UHDR_CODEC_ERROR;
      mErrorStatus.has_detail = 1;
      snprintf(mErrorStatus.detail, sizeof mErrorStatus.detail,
               "Unable to link shader program, error log: %s", log.data());
    } else {
      mErrorStatus.error_code = UHDR_CODEC_ERROR;
      mErrorStatus.has_detail = 1;
      snprintf(mErrorStatus.detail, sizeof mErrorStatus.detail,
               "Unable to link shader program, <empty log message>");
    }
    glDeleteProgram(program);
    return 0;
  }
  return program;
}

GLuint uhdr_opengl_ctxt::create_texture(uhdr_img_fmt_t fmt, int w, int h, void* data) {
  GLuint textureID;

  glGenTextures(1, &textureID);
  glBindTexture(GL_TEXTURE_2D, textureID);
  switch (fmt) {
    case UHDR_IMG_FMT_12bppYCbCr420:
      glTexImage2D(GL_TEXTURE_2D, 0, GL_R8, w, h * 3 / 2, 0, GL_RED, GL_UNSIGNED_BYTE, data);
      break;
    case UHDR_IMG_FMT_8bppYCbCr400:
      glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
      glTexImage2D(GL_TEXTURE_2D, 0, GL_R8, w, h, 0, GL_RED, GL_UNSIGNED_BYTE, data);
      glPixelStorei(GL_UNPACK_ALIGNMENT, 4);
      break;
    case UHDR_IMG_FMT_32bppRGBA8888:
      glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, w, h, 0, GL_RGBA, GL_UNSIGNED_BYTE, data);
      break;
    case UHDR_IMG_FMT_64bppRGBAHalfFloat:
      glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA16F, w, h, 0, GL_RGBA, GL_HALF_FLOAT, data);
      break;
    case UHDR_IMG_FMT_32bppRGBA1010102:
      glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB10_A2, w, h, 0, GL_RGBA, GL_UNSIGNED_INT_2_10_10_10_REV,
                   data);
      break;
    case UHDR_IMG_FMT_24bppRGB888:
      glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, w, h, 0, GL_RGB, GL_UNSIGNED_BYTE, data);
      break;
    case UHDR_IMG_FMT_24bppYCbCr444:
      glTexImage2D(GL_TEXTURE_2D, 0, GL_R8, w, h * 3, 0, GL_RED, GL_UNSIGNED_BYTE, data);
      break;
    case UHDR_IMG_FMT_16bppYCbCr422:
      glTexImage2D(GL_TEXTURE_2D, 0, GL_R8, w, h * 2, 0, GL_RED, GL_UNSIGNED_BYTE, data);
      break;
    case UHDR_IMG_FMT_16bppYCbCr440:
      [[fallthrough]];
    case UHDR_IMG_FMT_12bppYCbCr411:
      [[fallthrough]];
    case UHDR_IMG_FMT_10bppYCbCr410:
      [[fallthrough]];
    case UHDR_IMG_FMT_30bppYCbCr444:
      [[fallthrough]];
    default:
      mErrorStatus.error_code = UHDR_CODEC_INVALID_PARAM;
      mErrorStatus.has_detail = 1;
      snprintf(mErrorStatus.detail, sizeof mErrorStatus.detail,
               "unsupported color format option in create_texture(), color format %d", fmt);
      glDeleteTextures(1, &textureID);
      return 0;
  }
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

  check_gl_errors("create_texture()");
  if (mErrorStatus.error_code != UHDR_CODEC_OK) {
    glDeleteTextures(1, &textureID);
    return 0;
  }

  return textureID;
}

void uhdr_opengl_ctxt::setup_quad() {
  const float quadVertices[] = { // Positions    // TexCoords
                                -1.0f,  1.0f,    0.0f, 1.0f,
                                -1.0f, -1.0f,    0.0f, 0.0f,
                                 1.0f, -1.0f,    1.0f, 0.0f,
                                 1.0f,  1.0f,    1.0f, 1.0f};
  const unsigned int quadIndices[] = {0, 1, 2,  0, 2, 3};

  glGenVertexArrays(1, &mQuadVAO);
  glGenBuffers(1, &mQuadVBO);
  glGenBuffers(1, &mQuadEBO);
  glBindVertexArray(mQuadVAO);
  glBindBuffer(GL_ARRAY_BUFFER, mQuadVBO);
  glBufferData(GL_ARRAY_BUFFER, sizeof(quadVertices), quadVertices, GL_STATIC_DRAW);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, mQuadEBO);
  glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(quadIndices), quadIndices, GL_STATIC_DRAW);
  glEnableVertexAttribArray(0);
  glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 4 * sizeof(float), (void*)0);
  glEnableVertexAttribArray(1);
  glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 4 * sizeof(float), (void*)(2 * sizeof(float)));

  check_gl_errors("setup_quad()");
  if (mErrorStatus.error_code != UHDR_CODEC_OK) {
    if (mQuadVAO) {
      glDeleteVertexArrays(1, &mQuadVAO);
      mQuadVAO = 0;
    }
    if (mQuadVBO) {
      glDeleteBuffers(1, &mQuadVBO);
      mQuadVBO = 0;
    }
    if (mQuadEBO) {
      glDeleteBuffers(1, &mQuadEBO);
      mQuadEBO = 0;
    }
  }
}

GLuint uhdr_opengl_ctxt::setup_framebuffer(GLuint& texture) {
  GLuint frameBufferID;

  glGenFramebuffers(1, &frameBufferID);
  glBindFramebuffer(GL_FRAMEBUFFER, frameBufferID);
  glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, texture, 0);
  GLenum err;
  if ((err = glCheckFramebufferStatus(GL_FRAMEBUFFER)) != GL_FRAMEBUFFER_COMPLETE) {
    mErrorStatus.error_code = UHDR_CODEC_ERROR;
    mErrorStatus.has_detail = 1;
    snprintf(mErrorStatus.detail, sizeof mErrorStatus.detail,
             "glCheckFramebufferStatus() returned with error code : 0x%x", err);
    glDeleteFramebuffers(1, &frameBufferID);
    return 0;
  }

  check_gl_errors("setup_framebuffer()");
  if (mErrorStatus.error_code != UHDR_CODEC_OK) {
    glDeleteFramebuffers(1, &frameBufferID);
    return 0;
  }
  return frameBufferID;
}

void uhdr_opengl_ctxt::check_gl_errors(const char* msg) {
  GLenum err;
  if ((err = glGetError()) != GL_NO_ERROR) {
    mErrorStatus.error_code = UHDR_CODEC_ERROR;
    mErrorStatus.has_detail = 1;
    const char* err_str;
    switch (err) {
      case GL_INVALID_ENUM:
        err_str = "GL_INVALID_ENUM";
        break;
      case GL_INVALID_VALUE:
        err_str = "GL_INVALID_VALUE";
        break;
      case GL_INVALID_OPERATION:
        err_str = "GL_INVALID_OPERATION";
        break;
      case GL_INVALID_FRAMEBUFFER_OPERATION:
        err_str = "GL_INVALID_FRAMEBUFFER_OPERATION";
        break;
      case GL_OUT_OF_MEMORY:
        err_str = "GL_OUT_OF_MEMORY";
        break;
      default:
        err_str = "Unknown";
        break;
    }
    snprintf(mErrorStatus.detail, sizeof mErrorStatus.detail,
             "call to %s has raised one or more error flags, value of one error flag : %s", msg,
             err_str);
  }
}

void uhdr_opengl_ctxt::read_texture(GLuint* texture, uhdr_img_fmt_t fmt, int w, int h, void* data) {
  GLuint frm_buffer;
  glGenFramebuffers(1, &frm_buffer);
  glBindFramebuffer(GL_FRAMEBUFFER, frm_buffer);
  glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, *texture, 0);
  if (fmt == UHDR_IMG_FMT_32bppRGBA8888) {
    glReadPixels(0, 0, w, h, GL_RGBA, GL_UNSIGNED_BYTE, data);
  } else if (fmt == UHDR_IMG_FMT_32bppRGBA1010102) {
    glReadPixels(0, 0, w, h, GL_RGBA, GL_UNSIGNED_INT_2_10_10_10_REV, data);
  } else if (fmt == UHDR_IMG_FMT_64bppRGBAHalfFloat) {
    glReadPixels(0, 0, w, h, GL_RGBA, GL_HALF_FLOAT, data);
  } else if (fmt == UHDR_IMG_FMT_8bppYCbCr400) {
    glPixelStorei(GL_PACK_ALIGNMENT, 1);
    glReadPixels(0, 0, w, h, GL_RED, GL_UNSIGNED_BYTE, data);
    glPixelStorei(GL_PACK_ALIGNMENT, 4);
  }
  glBindFramebuffer(GL_FRAMEBUFFER, 0);
  glDeleteFramebuffers(1, &frm_buffer);
}

void uhdr_opengl_ctxt::reset_opengl_ctxt() {
  delete_opengl_ctxt();
  mErrorStatus = g_no_error;
}

void uhdr_opengl_ctxt::delete_opengl_ctxt() {
  if (mQuadVAO) {
    glDeleteVertexArrays(1, &mQuadVAO);
    mQuadVAO = 0;
  }
  if (mQuadVBO) {
    glDeleteBuffers(1, &mQuadVBO);
    mQuadVBO = 0;
  }
  if (mQuadEBO) {
    glDeleteBuffers(1, &mQuadEBO);
    mQuadEBO = 0;
  }
  if (mEGLSurface != EGL_NO_SURFACE) {
    eglDestroySurface(mEGLDisplay, mEGLSurface);
    mEGLSurface = EGL_NO_SURFACE;
  }
  if (mEGLContext != EGL_NO_CONTEXT) {
    eglDestroyContext(mEGLDisplay, mEGLContext);
    mEGLContext = EGL_NO_CONTEXT;
  }
  mEGLConfig = 0;
  if (mEGLDisplay != EGL_NO_DISPLAY) {
    eglTerminate(mEGLDisplay);
    mEGLDisplay = EGL_NO_DISPLAY;
  }
  if (mDecodedImgTexture) {
    glDeleteTextures(1, &mDecodedImgTexture);
    mDecodedImgTexture = 0;
  }
  if (mGainmapImgTexture) {
    glDeleteTextures(1, &mGainmapImgTexture);
    mGainmapImgTexture = 0;
  }
  for (int i = 0; i < UHDR_RESIZE + 1; i++) {
    if (mShaderProgram[i]) {
      glDeleteProgram(mShaderProgram[i]);
      mShaderProgram[i] = 0;
    }
  }
}
}  // namespace ultrahdr
