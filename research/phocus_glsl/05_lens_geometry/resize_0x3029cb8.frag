/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: 8c44c4f649d107b2346725d1b018d85e426fded06bd05fbb5a836dbeaf45e569
 * ELF offsets: 0x3029cb8
 * Symbols: resize_fragmentShaderSource
 */

#version 300 es
precision highp float;

in vec2 TexCoord;
out vec4 FragColor;

uniform sampler2D uInputTexture0;

uniform ivec2 uInputSize;
uniform ivec2 uOutputSize;
uniform ivec2 uMargin;
uniform int uAlgorithmType;
uniform ivec2 uMidSize;

void main() {
    ivec2 outputPos = ivec2(gl_FragCoord.xy);
    
    if (outputPos.x >= uOutputSize.x || outputPos.y >= uOutputSize.y) {
        FragColor = vec4(0.0);
        return;
    }
    
    ivec2 inputPos = outputPos + uMargin;
    
    if (uAlgorithmType == 0) { // IntegralDown
        ivec2 scale = uInputSize / uOutputSize;
        ivec2 startPos = outputPos * scale;
        ivec2 endPos = min(startPos + scale, uInputSize);
        
        vec3 sum = vec3(0.0);
        int count = 0;
        
        for (int y = startPos.y; y < endPos.y; y++) {
            for (int x = startPos.x; x < endPos.x; x++) {
                if (x < uInputSize.x && y < uInputSize.y) {
                    vec2 texCoord = (vec2(x, y) + vec2(0.5)) / vec2(uInputSize);
                    vec4 pixel = texture(uInputTexture0, texCoord);
                    sum += pixel.rgb;
                    count++;
                }
            }
        }
        
        vec3 result = sum / float(count);
        FragColor = vec4(result, 0.0);
    } else {
        vec2 scale = vec2(uInputSize) / vec2(uOutputSize);
        vec2 sourcePos = (vec2(outputPos) + 0.5) * scale - 0.5;
        
        ivec2 base = ivec2(sourcePos);
        vec2 offset = sourcePos - vec2(base);
        
        ivec2 p00 = clamp(base, ivec2(0), uInputSize - 1);
        ivec2 p10 = clamp(base + ivec2(1, 0), ivec2(0), uInputSize - 1);
        ivec2 p01 = clamp(base + ivec2(0, 1), ivec2(0), uInputSize - 1);
        ivec2 p11 = clamp(base + ivec2(1, 1), ivec2(0), uInputSize - 1);
        
        vec4 pix00 = texture(uInputTexture0, (vec2(p00) + vec2(0.5)) / vec2(uInputSize));
        vec4 pix10 = texture(uInputTexture0, (vec2(p10) + vec2(0.5)) / vec2(uInputSize));
        vec4 pix01 = texture(uInputTexture0, (vec2(p01) + vec2(0.5)) / vec2(uInputSize));
        vec4 pix11 = texture(uInputTexture0, (vec2(p11) + vec2(0.5)) / vec2(uInputSize));
        
        vec3 result = mix(
            mix(pix00.rgb, pix10.rgb, offset.x),
            mix(pix01.rgb, pix11.rgb, offset.x),
            offset.y
        );
        
        FragColor = vec4(result, 1.0);
    }
}
