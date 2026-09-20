#version 300 es
precision highp float;
precision highp sampler2D;
uniform sampler2D content;
uniform vec2 sourceSize;
out vec4 fragColor;

void main() {
    // Preserve Android Bitmap's top row at texture v=0 for the subsequent lens sampler.
    vec4 color = texture(content, gl_FragCoord.xy / sourceSize);
    // AndroidLiquidGlass ColorFilter.kt: vibrancy(), saturation=1.5.
    vec3 vibrant = vec3(
        1.3935 * color.r - 0.3575 * color.g - 0.036 * color.b,
       -0.1065 * color.r + 1.1425 * color.g - 0.036 * color.b,
       -0.1065 * color.r - 0.3575 * color.g + 1.464 * color.b
    );
    fragColor = vec4(clamp(vibrant, 0.0, 1.0), color.a);
}
