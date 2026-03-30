#version 300 es

precision mediump float;

uniform sampler2D uYTexture;
uniform sampler2D uUTexture;
uniform sampler2D uVTexture;
uniform float uCornerRadius;
uniform float uAspectRatio;

in vec2 vTexCoord;

out vec4 oFragColor;

bool isInsideRoundedBox(vec2 coord,
                        vec2 boxCenter,
                        vec2 halfBoxSize,
                        float boxCornerRadius) {
  vec2 interiorHalfBoxSize = halfBoxSize - boxCornerRadius;
  float d = length(
    max(abs(coord - boxCenter), interiorHalfBoxSize) - interiorHalfBoxSize
  ) - boxCornerRadius;
  return d <= 0.0;
}

void main (void) {
  if (!isInsideRoundedBox(vTexCoord,
                          vec2(0.5, 0.5),
                          vec2(0.5, 0.5),
                          uCornerRadius)) {
    discard;
  }

  float scale = uAspectRatio > 1.0 ? 1.0 / uAspectRatio : uAspectRatio;
  vec2 sampleCoord = vec2((vTexCoord.x - 0.5) * scale + 0.5, vTexCoord.y);

  float r, g, b, y, u, v;
  y = texture(uYTexture, sampleCoord).r;
  u = texture(uUTexture, sampleCoord).r - 0.5;
  v = texture(uVTexture, sampleCoord).r - 0.5;
  r = y + 1.13983 * v;
  g = y - 0.39465 * u - 0.58060 * v;
  b = y + 2.03211 * u;
  oFragColor = vec4(r, g, b, 1.0);
}
