#version 300 es

layout (location = 0) in vec2 a_ClipSpacePosition;
layout (location = 1) in vec2 a_ViewfinderTextureCoord;

out vec2 v_ClipSpacePosition;
out vec2 v_ViewfinderTextureCoord;

void main() {
    v_ClipSpacePosition = a_ClipSpacePosition;
    v_ViewfinderTextureCoord = a_ViewfinderTextureCoord;
    gl_Position = vec4(a_ClipSpacePosition, 0.0, 1.0);
}
