#version 300 es

uniform mat4 u_ModelViewProjection;

layout(location = 0) in vec3 a_BitmapLocalPosition;
layout(location = 1) in vec2 a_BitmapTexCoord;

out vec2 v_BitmapTexCoord;

void main() {
    v_BitmapTexCoord = a_BitmapTexCoord;
    gl_Position = u_ModelViewProjection * vec4(a_BitmapLocalPosition.xyz, 1.0);
}
