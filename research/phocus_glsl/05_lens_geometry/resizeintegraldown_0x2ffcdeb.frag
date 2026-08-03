/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: abc100e93094e15844f1aac7761b8b78aa5ac10d1fc122c86a131473eb3c0293
 * ELF offsets: 0x2ffcdeb
 * Symbols: resizeintegraldown_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;

uniform ivec2 uInputSize;
uniform ivec2 uOutputSize;
uniform int uDownHFactor;
uniform int uDownVFactor;

void main() {

    ivec2 outputPos = ivec2(gl_FragCoord.xy);

    if (outputPos.x >= uOutputSize.x || outputPos.y >= uOutputSize.y) {
        FragColor = vec4(0.0);
        return;
    }

    int startX = outputPos.x * uDownHFactor;
    int endX = min(startX + uDownHFactor, uInputSize.x);
    int startY = outputPos.y * uDownVFactor;
    int endY = min(startY + uDownVFactor, uInputSize.y);

    vec3 sum = vec3(0.0);
    int count = 0;

    for (int y = startY; y < endY; y++) {
        for (int x = startX; x < endX; x++) {
            if (x < uInputSize.x && y < uInputSize.y) {
                vec2 texCoord = (vec2(x, y) + vec2(0.5)) / vec2(uInputSize);
                vec4 pixel = texture(uInputTexture0, texCoord);
                sum += pixel.rgb;
                count++;
            }
        }
    }

    vec3 result = count > 0 ? sum / float(count) : vec3(0.0);
    FragColor = vec4(result, 1.0);
}
