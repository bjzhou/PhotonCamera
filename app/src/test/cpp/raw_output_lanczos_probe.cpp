#include <EGL/egl.h>
#include <GLES3/gl3.h>
#include <algorithm>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <fstream>
#include <iterator>
#include <string>
#include <vector>
void check(bool b, const char *msg) {
  if (!b) {
    fprintf(stderr, "FAIL %s GL=%x\n", msg, glGetError());
    exit(1);
  }
}
GLuint compile(GLenum type, const char *text) {
  GLuint s = glCreateShader(type);
  glShaderSource(s, 1, &text, nullptr);
  glCompileShader(s);
  GLint ok;
  glGetShaderiv(s, GL_COMPILE_STATUS, &ok);
  if (!ok) {
    char log[8192];
    glGetShaderInfoLog(s, 8192, nullptr, log);
    puts(log);
  }
  check(ok, "compile");
  return s;
}
GLuint texture(int w, int h, const std::vector<float> *data) {
  GLuint t;
  glGenTextures(1, &t);
  glBindTexture(GL_TEXTURE_2D, t);
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA16F, w, h, 0, GL_RGBA, GL_FLOAT,
               data ? data->data() : nullptr);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
  return t;
}
double weight(double x) {
  x = std::abs(x);
  if (x < 1e-6)
    return 1;
  if (x >= 3)
    return 0;
  double p = x * 3.141592653589793;
  return sin(p) / p * sin(p / 3) / (p / 3);
}
int main(int argc, char **argv) {
  check(argc == 3, "production fragment and vertex shader paths");
  EGLDisplay d = eglGetDisplay(EGL_DEFAULT_DISPLAY);
  check(eglInitialize(d, nullptr, nullptr), "egl");
  EGLint attrs[] = {EGL_SURFACE_TYPE, EGL_PBUFFER_BIT, EGL_RENDERABLE_TYPE,
                    EGL_OPENGL_ES3_BIT, EGL_NONE};
  EGLConfig cfg;
  EGLint n;
  check(eglChooseConfig(d, attrs, &cfg, 1, &n) && n, "config");
  EGLint ca[] = {EGL_CONTEXT_CLIENT_VERSION, 3, EGL_NONE},
         pa[] = {EGL_WIDTH, 1, EGL_HEIGHT, 1, EGL_NONE};
  auto ctx = eglCreateContext(d, cfg, EGL_NO_CONTEXT, ca);
  auto surf = eglCreatePbufferSurface(d, cfg, pa);
  check(eglMakeCurrent(d, surf, surf, ctx), "current");
  printf("%s / %s\n", glGetString(GL_RENDERER), glGetString(GL_VERSION));
  std::ifstream ff(argv[1]), vf(argv[2]);
  std::string fs((std::istreambuf_iterator<char>(ff)), {}),
      vs((std::istreambuf_iterator<char>(vf)), {});
  check(fs.rfind("#version", 0) == 0 && vs.rfind("#version", 0) == 0,
        "version first byte");
  GLuint frag = compile(GL_FRAGMENT_SHADER, fs.c_str()),
         vert = compile(GL_VERTEX_SHADER, vs.c_str()), prog = glCreateProgram();
  glAttachShader(prog, frag);
  glAttachShader(prog, vert);
  glLinkProgram(prog);
  GLint ok;
  glGetProgramiv(prog, GL_LINK_STATUS, &ok);
  check(ok, "link");
  glUseProgram(prog);
  const float pos[] = {-1, -1, 1, -1, -1, 1, 1, 1},
              uv[] = {0, 0, 1, 0, 0, 1, 1, 1};
  GLuint vbo[2];
  glGenBuffers(2, vbo);
  int i = 0;
  for (const char *attr : {"aPosition", "aTexCoord"}) {
    auto a = glGetAttribLocation(prog, attr);
    glBindBuffer(GL_ARRAY_BUFFER, vbo[i]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(pos), i ? uv : pos, GL_STATIC_DRAW);
    glVertexAttribPointer(a, 2, GL_FLOAT, GL_FALSE, 0, nullptr);
    glEnableVertexAttribArray(a);
    ++i;
  }
  const int W = 37, H = 29;
  std::vector<float> input(W * H * 4), gain(W * H * 4, 2.f);
  for (int y = 0; y < H; y++)
    for (int x = 0; x < W; x++) {
      int k = (y * W + x) * 4;
      input[k] = ((x + y) % 2 ? 0.9f : 0.1f);
      input[k + 1] = (x * 13 + y * 17) % 1024 / 1024.f;
      input[k + 2] = .5f + ((x + y) % 4) / 4096.f;
      input[k + 3] = 1.f;
      for (int c = 0; c < 4; c++)
        input[k + c] = float((_Float16)input[k + c]);
    }
  GLuint src = texture(W, H, &input), hdr = texture(W, H, &gain), fbo;
  glGenFramebuffers(1, &fbo);
  glBindFramebuffer(GL_FRAMEBUFFER, fbo);
  glUniform1i(glGetUniformLocation(prog, "uTexture"), 0);
  glUniform1i(glGetUniformLocation(prog, "uSdrBase"), 1);
  double worst = 0;
  int cases = 0;
  for (int rotation : {0, 90, 180, 270})
    for (double scale : {1., 1.3, 1.5, 2.})
      for (bool cropped : {false, true})
        for (bool isHdr : {false, true}) {
          int l = cropped ? 3 : 0, t = cropped ? 5 : 0, r = cropped ? 34 : W,
              b = cropped ? 26 : H;
          int nw = rotation % 180 ? b - t : r - l,
              nh = rotation % 180 ? r - l : b - t;
          int ow = std::lround(nw * scale), oh = std::lround(nh * scale);
          if (scale > 1) {
            ow -= ow % 2;
            oh -= oh % 2;
          }
          GLuint out = texture(ow, oh, nullptr);
          glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0,
                                 GL_TEXTURE_2D, out, 0);
          check(glCheckFramebufferStatus(GL_FRAMEBUFFER) ==
                    GL_FRAMEBUFFER_COMPLETE,
                "fbo");
          auto coord = [&](double x, double y) {
            double u = x / ow, v = y / oh, sx, sy;
            switch (rotation) {
            case 0:
              sx = u;
              sy = v;
              break;
            case 90:
              sx = v;
              sy = 1 - u;
              break;
            case 180:
              sx = 1 - u;
              sy = 1 - v;
              break;
            default:
              sx = 1 - v;
              sy = u;
            }
            return std::pair<double, double>{l + sx * (r - l),
                                             t + sy * (b - t)};
          };
          // Draw irregular output regions with the global phase and compare all
          // resulting pixels.
          for (int top = 0; top < oh; top += 13)
            for (int left = 0; left < ow; left += 17) {
              int tw = std::min(17, ow - left), th = std::min(13, oh - top);
              auto p = coord(left, top), px = coord(left + tw, top),
                   py = coord(left, top + th);
              float m[] = {float((px.first - p.first) / W),
                           float((px.second - p.second) / H),
                           0,
                           0,
                           float((py.first - p.first) / W),
                           float((py.second - p.second) / H),
                           0,
                           0,
                           0,
                           0,
                           1,
                           0,
                           float(p.first / W),
                           float(p.second / H),
                           0,
                           1};
              glUniformMatrix4fv(glGetUniformLocation(prog, "uTexMatrix"), 1,
                                 GL_FALSE, m);
              glUniform1i(glGetUniformLocation(prog, "uResample"), scale > 1);
              glUniform1i(glGetUniformLocation(prog, "uNativeGrid"),
                          scale == 1);
              glUniform1i(glGetUniformLocation(prog, "uApplyHdrGain"), isHdr);
              glActiveTexture(GL_TEXTURE0);
              glBindTexture(GL_TEXTURE_2D, isHdr ? hdr : src);
              glActiveTexture(GL_TEXTURE1);
              glBindTexture(GL_TEXTURE_2D, src);
              glViewport(left, top, tw, th);
              glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
            }
          std::vector<float> result(ow * oh * 4);
          glReadPixels(0, 0, ow, oh, GL_RGBA, GL_FLOAT, result.data());
          check(glGetError() == GL_NO_ERROR, "draw/readback");
          for (int y = 0; y < oh; y++)
            for (int x = 0; x < ow; x++) {
              auto p = coord(x + .5, y + .5);
              double sx = p.first - .5, sy = p.second - .5;
              for (int c = 0; c < 3; c++) {
                double total = 0, sum = 0;
                int bx = floor(sx), by = floor(sy);
                for (int dy = -2; dy <= 3; dy++)
                  for (int dx = -2; dx <= 3; dx++) {
                    double w = weight(bx + dx - sx) * weight(by + dy - sy);
                    total += input[(std::clamp(by + dy, 0, H - 1) * W +
                                    std::clamp(bx + dx, 0, W - 1)) *
                                       4 +
                                   c] *
                             w;
                    sum += w;
                  }
                double expected = std::clamp(total / sum, 0., 1.);
                if (isHdr)
                  expected = 2 * (expected <= .04045
                                      ? expected / 12.92
                                      : pow((expected + .055) / 1.055, 2.4));
                double err = std::abs(result[(y * ow + x) * 4 + c] - expected);
                worst = std::max(worst, err);
                if (err > .002) {
                  fprintf(stderr,
                          "case r=%d s=%g crop=%d hdr=%d xy=%d,%d c=%d "
                          "expected=%g actual=%g error=%g\n",
                          rotation, scale, cropped, isHdr, x, y, c, expected,
                          result[(y * ow + x) * 4 + c], err);
                  exit(1);
                }
              }
            }
          glDeleteTextures(1, &out);
          cases++;
        }
  printf("PASS %d cases: rotations, 1/1.3/1.5/2x, full/crop, SDR/HDR, "
         "fractional tile edges; max error=%g\n",
         cases, worst);
  glDeleteTextures(1, &src);
  glDeleteTextures(1, &hdr);
  glDeleteFramebuffers(1, &fbo);
  glDeleteBuffers(2, vbo);
  glDeleteProgram(prog);
  glDeleteShader(frag);
  glDeleteShader(vert);
  eglMakeCurrent(d, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
  eglDestroySurface(d, surf);
  eglDestroyContext(d, ctx);
  eglTerminate(d);
}
