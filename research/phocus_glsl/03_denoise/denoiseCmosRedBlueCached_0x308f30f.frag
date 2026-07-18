/*
 * Recovered from a compiled proprietary binary for personal study.
 * SHA-256: ddf06024ffc6b97bd6e48447543b6b33c79c45a80b2ffdd786f6eaff24177058
 * ELF offsets: 0x308f30f
 * Symbols: denoiseCmosRedBlueCached_fragmentShaderSource
 */

#version 300 es
precision highp float;
precision highp sampler2D;

uniform sampler2D uInputTexture0; // 原始图像
uniform sampler2D uInputTexture1; // 缓存数据1 (cache0: redvalRed/1, horizSum/3)
uniform sampler2D uInputTexture2; // 缓存数据2 (cache1: vertSum/3, grAveRed/1)
uniform sampler2D uInputTexture3; // 缓存数据3 (cache2: blueAveRed/1, lumaRed/4)

uniform float uLumaSqThr;
uniform float uDarkLumaMinThr;
uniform float uAvg4GreenAtRedRelThr;
uniform float uAvg4BlueAtRedRelThr;
uniform float uCrossRedBlueThr;
uniform float uOffset;
uniform float uOfsSub;
uniform float uOfsAdd;
uniform int uKernSizeX;
uniform int uKernSizeY;

uniform vec2 uTextureSize;
uniform vec2 uInvTextureSize;
uniform vec2 uMargin;

in vec2 TexCoord;
out vec4 FragColor;

struct NLMCheckRedBlue {
    vec2 redvalRed;
    vec2 horizSum;
    vec2 vertSum;
    vec2 grAveRed;
    vec2 blueAveRed;
    vec2 lumaRed;
};

NLMCheckRedBlue getRedBlueCached(vec2 pos) {
    vec2 texCoord = pos * uInvTextureSize;

    vec4 val0 = texture(uInputTexture1, texCoord) * 65535.0;
    vec4 val1 = texture(uInputTexture2, texCoord) * 65535.0;
    vec4 val2 = texture(uInputTexture3, texCoord) * 65535.0;

    NLMCheckRedBlue res;
    res.redvalRed  = val0.xy * 1.0;      // redvalRed
    res.horizSum   = val0.zw * 3.0;      // horizSum
    res.vertSum    = val1.xy * 3.0;      // vertSum
    res.grAveRed   = val1.zw * 1.0;      // grAveRed
    res.blueAveRed = val2.xy * 1.0;      // blueAveRed
    res.lumaRed    = val2.zw * 4.0;      // lumaRed
    return res;
}

vec2 noiseThreshold(vec2 value, float ofsSub, float ofsAdd) {
    return sqrt(max(value - vec2(ofsSub), vec2(0.0))) + vec2(ofsAdd);
}

vec4 doRedBlueBNR(vec2 pos, bool isRedRow) {
    NLMCheckRedBlue c = getRedBlueCached(pos);

    vec2 avg4GreenAtRedThr = noiseThreshold(c.grAveRed * 4.0, uOfsSub, uOfsAdd) * vec2(uLumaSqThr * uAvg4GreenAtRedRelThr);
    vec2 avg4BlueAtRedThr = noiseThreshold(c.blueAveRed * 4.0, uOfsSub, uOfsAdd) * vec2(uLumaSqThr * uAvg4BlueAtRedRelThr);
    vec2 lumaRThr = noiseThreshold(c.lumaRed, uOfsSub, uOfsAdd) * vec2(uLumaSqThr);
    lumaRThr = max(lumaRThr, vec2(uDarkLumaMinThr));
    vec2 crossRedCThr = lumaRThr * vec2(uCrossRedBlueThr);

    vec2 sum = vec2(0.0);
    vec2 count = vec2(0.0);

    int kernSizeY = uKernSizeY;
    int kernSizeX = uKernSizeX;
    for (int j = -kernSizeY; j <= kernSizeY; j += 2) {
        for (int i = -kernSizeX; i <= kernSizeX; i++) {
            vec2 searchPos = pos + vec2(float(i), float(j));
            NLMCheckRedBlue s = getRedBlueCached(searchPos);

            bvec4 rb_check = bvec4(
                abs(s.lumaRed.x - c.lumaRed.x) <= lumaRThr.x,
                abs(s.lumaRed.y - c.lumaRed.y) <= lumaRThr.y,
                abs(s.lumaRed.y - c.lumaRed.x) <= lumaRThr.x,
                abs(s.lumaRed.x - c.lumaRed.y) <= lumaRThr.y
            );

            bvec4 temp = bvec4(
                abs(s.grAveRed.x - c.grAveRed.x) <= avg4GreenAtRedThr.x,
                abs(s.grAveRed.y - c.grAveRed.y) <= avg4GreenAtRedThr.y,
                abs(s.grAveRed.y - c.grAveRed.x) <= avg4GreenAtRedThr.x,
                abs(s.grAveRed.x - c.grAveRed.y) <= avg4GreenAtRedThr.y
            );
            rb_check = bvec4(rb_check.x && temp.x, rb_check.y && temp.y, rb_check.z && temp.z, rb_check.w && temp.w);

            temp = bvec4(
                abs(s.blueAveRed.x - c.blueAveRed.x) <= avg4BlueAtRedThr.x,
                abs(s.blueAveRed.y - c.blueAveRed.y) <= avg4BlueAtRedThr.y,
                abs(s.blueAveRed.y - c.blueAveRed.x) <= avg4BlueAtRedThr.x,
                abs(s.blueAveRed.x - c.blueAveRed.y) <= avg4BlueAtRedThr.y
            );
            rb_check = bvec4(rb_check.x && temp.x, rb_check.y && temp.y, rb_check.z && temp.z, rb_check.w && temp.w);

            temp = bvec4(
                abs(s.horizSum.x - c.horizSum.x) <= crossRedCThr.x,
                abs(s.horizSum.y - c.horizSum.y) <= crossRedCThr.y,
                abs(s.horizSum.y - c.horizSum.x) <= crossRedCThr.x,
                abs(s.horizSum.x - c.horizSum.y) <= crossRedCThr.y
            );
            rb_check = bvec4(rb_check.x && temp.x, rb_check.y && temp.y, rb_check.z && temp.z, rb_check.w && temp.w);

            temp = bvec4(
                abs(s.vertSum.x - c.vertSum.x) <= crossRedCThr.x,
                abs(s.vertSum.y - c.vertSum.y) <= crossRedCThr.y,
                abs(s.vertSum.y - c.vertSum.x) <= crossRedCThr.x,
                abs(s.vertSum.x - c.vertSum.y) <= crossRedCThr.y
            );
            rb_check = bvec4(rb_check.x && temp.x, rb_check.y && temp.y, rb_check.z && temp.z, rb_check.w && temp.w);

            if (i == -kernSizeX) {
                rb_check.w = false;
            }
            if (i == kernSizeX) {
                rb_check.z = false;
            }

            if (rb_check.x) {
                sum.x += s.redvalRed.x;
                count.x += 1.0;
            }
            if (rb_check.y) {
                sum.y += s.redvalRed.y;
                count.y += 1.0;
            }
            if (rb_check.z) {
                sum.x += s.redvalRed.y;
                count.x += 1.0;
            }
            if (rb_check.w) {
                sum.y += s.redvalRed.x;
                count.y += 1.0;
            }
        }
    }

    vec4 opix = texture(uInputTexture0, pos * uInvTextureSize) * 65535.0;

    if (isRedRow) {
        if (count.x > 1.0) {
            opix.x = round(sum.x / count.x);
        }
        if (count.y > 1.0) {
            opix.z = round(sum.y / count.y);
        }
    } else {
        if (count.x > 1.0) {
            opix.y = round(sum.x / count.x);
        }
        if (count.y > 1.0) {
            opix.w = round(sum.y / count.y);
        }
    }
    opix = max(opix - vec4(uOffset), vec4(0.0));

    return opix / 65535.0;
}

void main() {
    vec2 pixelPos = gl_FragCoord.xy;
    vec2 globalPos = pixelPos + uMargin;

    if (globalPos.x >= uTextureSize.x - float(uKernSizeX) ||
        globalPos.y >= uTextureSize.y - float(uKernSizeY)) {
        FragColor = texture(uInputTexture0, globalPos * uInvTextureSize);
        return;
    }
    bool isRedRow = (int(globalPos.y) & 1) == 0;
    FragColor = doRedBlueBNR(globalPos, isRedRow);
}
