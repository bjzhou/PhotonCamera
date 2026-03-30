#version 300 es

in vec2 aVertex;
in vec2 aTexCoord;

uniform mat4 uVertexTransform;

out vec2 vTexCoord;

void main() {
  vTexCoord = aTexCoord;
  gl_Position = uVertexTransform * vec4(aVertex, 0., 1.);
}
