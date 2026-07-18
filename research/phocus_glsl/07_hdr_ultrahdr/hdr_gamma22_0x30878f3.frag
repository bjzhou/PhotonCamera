/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: a38c2123a061abc12f46152f00b08b8964c81fa0f027a5c3d28c1ae96824329b
 * ELF offsets: 0x30878f3
 * Symbols: hdr_gamma22_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;
in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;
uniform float uGammaGain;
uniform float uHdrLimitGain;

void main() {
    vec4 res = texture(uInputTexture0, TexCoord);

    // Apply gamma gain (scale to HDR range)
    vec3 c = res.rgb * uGammaGain;

    // Apply Hasselblad gamma (2.19921875 = Adobe RGB gamma) → linear
    c = pow(max(c, vec3(0.0)), vec3(2.19921875));

    FragColor = vec4(c, res.a);
}
