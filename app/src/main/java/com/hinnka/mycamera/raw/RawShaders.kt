package com.hinnka.mycamera.raw

import com.hinnka.mycamera.lut.ShadowsHighlightsShader

/**
 * RAW 图像处理的 GLSL 着色器
 *
 * 实现完整的 RAW 处理管线：
 * 1. 黑电平校正和归一化
 * 2. Malvar-He-Cutler (MHC) 解马赛克算法
 * 3. 白平衡增益
 * 4. 色彩校正矩阵 (CCM)
 * 5. Gamma 校正 (sRGB)
 */
object RawShaders {
    const val DEFAULT_USM_RADIUS = 2.0f
    const val DEFAULT_USM_THRESHOLD = 0.005f

    /**
     * 顶点着色器 - 简单的全屏四边形渲染
     */
    val VERTEX_SHADER = """
        #version 300 es
        
        in vec4 aPosition;
        in vec2 aTexCoord;
        
        out vec2 vTexCoord;
        
        uniform mat4 uTexMatrix;
        
        void main() {
            gl_Position = aPosition;
            vTexCoord = (uTexMatrix * vec4(aTexCoord, 0.0, 1.0)).xy;
        }
    """.trimIndent()

    /**
     * 全屏四边形顶点坐标
     */
    val FULL_QUAD_VERTICES = floatArrayOf(
        -1.0f, -1.0f,  // 左下
        1.0f, -1.0f,  // 右下
        -1.0f, 1.0f,  // 左上
        1.0f, 1.0f   // 右上
    )

    /**
     * 纹理坐标（Y 轴翻转，适配 Android Bitmap）
     */
    val TEXTURE_COORDS = floatArrayOf(
        0.0f, 0.0f,  // LB viewport -> Tex (0,0) [Sensor Row 0/Bottom of Tex] -> glReadPixels reads to Bitmap Top
        1.0f, 0.0f,  // RB viewport -> Tex (1,0)
        0.0f, 1.0f,  // LT viewport -> Tex (0,1)
        1.0f, 1.0f   // RT viewport -> Tex (1,1)
    )

    /**
     * 片元着色器 - 第二步：将解马赛克后的 RGB 纹理渲染到最终尺寸
     * 应用旋转、裁切和缩放
     */
    val PASSTHROUGH_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;
        
        in vec2 vTexCoord;
        out vec4 fragColor;
        
        uniform sampler2D uTexture;
        
        void main() {
            fragColor = texture(uTexture, vTexCoord);
        }
    """.trimIndent()

    fun combinedFragmentShaderFor(
        colorEngine: RawRenderingEngine,
        includeShadowsHighlights: Boolean = true
    ): String {
        return when (colorEngine) {
            RawRenderingEngine.AgX -> combinedFragmentShader(
                engineUniforms = AGX_COMBINED_UNIFORMS,
                engineFunctions = AGX_COMBINED_FUNCTIONS,
                includeAdobeProfilePipeline = false,
                includeShadowsHighlights = includeShadowsHighlights
            )

            RawRenderingEngine.AdobeCurve -> combinedFragmentShader(
                engineUniforms = ADOBE_COMBINED_UNIFORMS,
                engineFunctions =
                    "$CURVE_COMBINED_FUNCTIONS\n$ADOBE_COMBINED_FUNCTIONS",
                includeAdobeProfilePipeline = true,
                includeShadowsHighlights = includeShadowsHighlights
            )

            RawRenderingEngine.Spektrafilm -> combinedFragmentShader(
                engineUniforms = SPECTRAL_FILM_COMBINED_UNIFORMS,
                engineFunctions = SPECTRAL_FILM_COMBINED_FUNCTIONS,
                includeAdobeProfilePipeline = false,
                includeShadowsHighlights = includeShadowsHighlights
            )

            RawRenderingEngine.DarktableSigmoid -> combinedFragmentShader(
                engineUniforms = OUTPUT_TRANSFORM_COMBINED_UNIFORMS,
                engineFunctions = DARKTABLE_SIGMOID_COMBINED_FUNCTIONS,
                includeAdobeProfilePipeline = false,
                includeShadowsHighlights = includeShadowsHighlights
            )

            RawRenderingEngine.DarktableFilmic -> combinedFragmentShader(
                engineUniforms = OUTPUT_TRANSFORM_COMBINED_UNIFORMS,
                engineFunctions = DARKTABLE_FILMIC_COMBINED_FUNCTIONS,
                includeAdobeProfilePipeline = false,
                includeShadowsHighlights = includeShadowsHighlights
            )
        }
    }

    private fun combinedFragmentShader(
        engineUniforms: String,
        engineFunctions: String,
        includeAdobeProfilePipeline: Boolean,
        includeShadowsHighlights: Boolean
    ): String {
        val shadowsHighlightsUniforms = if (includeShadowsHighlights) {
            """
        uniform vec2 uTexelSize;
        uniform float uHighlights;
        uniform float uShadows;
            """.trimIndent()
        } else {
            ""
        }
        val shadowsHighlightsFunctions = if (includeShadowsHighlights) {
            """
        vec3 sampleToneSource(vec2 uv) {
            vec3 sampleColor = texture(uInputTexture, clamp(uv, vec2(0.0), vec2(1.0))).rgb;
            return applyEngineTone(prepareEngineInput(sampleColor));
        }

        vec3 shRgbToXyz(vec3 rgb) {
            return mat3(
                0.4360747, 0.2225045, 0.0139322,
                0.3850649, 0.7168786, 0.0971045,
                0.1430804, 0.0606169, 0.7141733
            ) * rgb;
        }

        vec3 shXyzToRgb(vec3 xyz) {
            return mat3(
                 3.1338561, -0.9787684,  0.0719453,
                -1.6168667,  1.9161415, -0.2289914,
                -0.4906146,  0.0334540,  1.4052427
            ) * xyz;
        }

        ${ShadowsHighlightsShader.GLSL}
            """.trimIndent()
        } else {
            ""
        }
        val shadowsHighlightsApply = if (includeShadowsHighlights) {
            "color = applyShadowsHighlights(color, vTexCoord);"
        } else {
            ""
        }
        val profileUniforms = if (includeAdobeProfilePipeline) {
            ADOBE_PROFILE_COMBINED_UNIFORMS
        } else {
            PROFILE_EXPOSURE_COMBINED_UNIFORMS
        }
        val profileFunctions = if (includeAdobeProfilePipeline) {
            ADOBE_PROFILE_COMBINED_FUNCTIONS
        } else {
            ""
        }
        val prepareEngineInputFunction = if (includeAdobeProfilePipeline) {
            """
        vec3 prepareEngineInput(vec3 color) {
            color = applyAdobeProfilePipeline(color);
            color = uProfileToEngineTransform * color;
            return color;
        }
            """.trimIndent()
        } else {
            """
        vec3 prepareEngineInput(vec3 color) {
            color *= uProfileExposureLinearGain;
            color = uProfileToEngineTransform * color;
            return color;
        }
            """.trimIndent()
        }
        val sampler3DPrecision = if (includeAdobeProfilePipeline || engineUniforms.contains("sampler3D")) {
            "precision highp sampler3D;"
        } else {
            ""
        }
        return """
        #version 300 es
        precision highp float;
        $sampler3DPrecision
        
        in vec2 vTexCoord;
        out vec4 fragColor;
        
        uniform sampler2D uInputTexture;
        uniform float uBlacks;
        uniform float uWhites;
        $shadowsHighlightsUniforms
        uniform mat3 uProfileToEngineTransform;
        
        $engineUniforms
        $profileUniforms

        vec3 linearToSrgb(vec3 color) {
            vec3 clampedColor = max(color, vec3(0.0));
            vec3 low = clampedColor * 12.92;
            vec3 high = 1.055 * pow(clampedColor, vec3(1.0 / 2.4)) - 0.055;
            bvec3 useHigh = greaterThan(clampedColor, vec3(0.0031308));
            return vec3(
                useHigh.r ? high.r : low.r,
                useHigh.g ? high.g : low.g,
                useHigh.b ? high.b : low.b
            );
        }

        $profileFunctions
        $engineFunctions

        $prepareEngineInputFunction

        $shadowsHighlightsFunctions

        const vec3 BW_LUMA = vec3(0.2126, 0.7152, 0.0722);
        const float BW_EPSILON = 0.000001;

        float blackInputLevel(float blacks) {
            float value = clamp(blacks, -1.0, 1.0);
            return value < 0.0 ? -value * 0.18 : -value * 0.12;
        }

        float whiteInputLevel(float whites) {
            float value = clamp(whites, -1.0, 1.0);
            return value > 0.0 ? mix(1.0, 0.72, value) : mix(1.0, 1.55, -value);
        }

        float applyInputLevelsToLuma(float luma, float blacks, float whites) {
            float blackLevel = blackInputLevel(blacks);
            float whiteLevel = max(whiteInputLevel(whites), blackLevel + 0.05);
            return max((luma - blackLevel) / max(whiteLevel - blackLevel, BW_EPSILON), 0.0);
        }

        vec3 applyBlackWhiteLevels(vec3 color) {
            float blacks = clamp(uBlacks, -1.0, 1.0);
            float whites = clamp(uWhites, -1.0, 1.0);
            if (abs(blacks) < 0.001 && abs(whites) < 0.001) {
                return color;
            }

            vec3 positiveColor = max(color, vec3(0.0));
            float luma = dot(positiveColor, BW_LUMA);
            float adjustedLuma = applyInputLevelsToLuma(luma, blacks, whites);

            if (luma <= BW_EPSILON) {
                return vec3(adjustedLuma);
            }
            return color * (adjustedLuma / luma);
        }

        void main() {
            vec3 color = texture(uInputTexture, vTexCoord).rgb;
            color = prepareEngineInput(color);
            color = applyEngineTone(color);
            $shadowsHighlightsApply
            color = applyBlackWhiteLevels(color);
            color = linearToSrgb(color);
            fragColor = vec4(color, 1.0);
        }
    """.trimIndent()
    }

    private val RAW_TONE_MAPPING_COMBINED_UNIFORMS = """
        uniform float uAgxBlackRelativeExposure;
        uniform float uAgxWhiteRelativeExposure;
        uniform float uAgxToe;
        uniform float uAgxShoulder;
        uniform float uFilmicBlackRelativeExposure;
        uniform float uFilmicWhiteRelativeExposure;
        uniform float uFilmicDynamicRange;
        uniform float uFilmicInputMin;
        uniform float uFilmicInputMax;
        uniform float uFilmicLatitudeMin;
        uniform float uFilmicLatitudeMax;
        uniform vec3 uFilmicM1;
        uniform vec3 uFilmicM2;
        uniform vec3 uFilmicM3;
        uniform vec3 uFilmicM4;
        uniform vec3 uFilmicM5;
    """.trimIndent()

    private val OUTPUT_TRANSFORM_COMBINED_UNIFORMS = """
        uniform mat3 uOutputTransform;
        $RAW_TONE_MAPPING_COMBINED_UNIFORMS
    """.trimIndent()

    private val ADOBE_COMBINED_UNIFORMS = """
        uniform sampler2D uCurveTexture;
        uniform mat3 uOutputTransform;
        uniform float uCurveSize;
        uniform bool uCurveEnabled;
    """.trimIndent()

    private val PROFILE_EXPOSURE_COMBINED_UNIFORMS = """
        uniform float uProfileExposureLinearGain;
    """.trimIndent()

    private val ADOBE_PROFILE_COMBINED_UNIFORMS = """
        uniform sampler3D uDcpHueSatTexture;
        uniform sampler3D uDcpLookTableTexture;
        uniform bool uDcpHueSatEnabled;
        uniform bool uDcpLookTableEnabled;
        uniform ivec3 uDcpHueSatDivisions;
        uniform ivec3 uDcpLookTableDivisions;
        uniform int uDcpHueSatEncoding;
        uniform int uDcpLookTableEncoding;
        $PROFILE_EXPOSURE_COMBINED_UNIFORMS
        uniform bool uProfileExposureRampEnabled;
        uniform float uProfileExposureRampSlope;
        uniform float uProfileExposureRampBlack;
        uniform float uProfileExposureRampRadius;
        uniform float uProfileExposureRampQScale;
        uniform bool uProfileExposureToneEnabled;
        uniform float uProfileExposureToneSlope;
        uniform float uProfileExposureToneA;
        uniform float uProfileExposureToneB;
        uniform float uProfileExposureToneC;
    """.trimIndent()

    private val AGX_COMBINED_UNIFORMS = """
        uniform mat3 uOutputTransform;
        $RAW_TONE_MAPPING_COMBINED_UNIFORMS
    """.trimIndent()

    private val SPECTRAL_FILM_COMBINED_UNIFORMS = """
        uniform sampler3D uSpectralFilmTexture;
        uniform mat3 uOutputTransform;
        uniform int uSpectralFilmSize;
    """.trimIndent()

    private val CURVE_COMBINED_FUNCTIONS = """
        float sampleCurve(float value) {
            if (!uCurveEnabled || uCurveSize <= 1.0) {
                return value;
            }
            value = clamp(value, 0.0, 1.0);
            float coordX = value * ((uCurveSize - 1.0) / uCurveSize) + (0.5 / uCurveSize);
            return texture(uCurveTexture, vec2(coordX, 0.5)).r;
        }

        void adobeRgbTone(inout float maxValue, inout float midValue, inout float minValue) {
            float oldMax = maxValue;
            float oldMid = midValue;
            float oldMin = minValue;
            maxValue = sampleCurve(oldMax);
            minValue = sampleCurve(oldMin);
            if (abs(oldMax - oldMin) < 1e-6) {
                midValue = minValue;
            } else {
                midValue = minValue + ((maxValue - minValue) * (oldMid - oldMin) / (oldMax - oldMin));
            }
        }

        vec3 applyAdobeCurve(vec3 color) {
            color = clamp(color, vec3(0.0), vec3(1.0));
            float r = color.r;
            float g = color.g;
            float b = color.b;

            if (r >= g) {
                if (g > b) {
                    adobeRgbTone(r, g, b);
                } else if (b > r) {
                    adobeRgbTone(b, r, g);
                } else if (b > g) {
                    adobeRgbTone(r, b, g);
                } else {
                    r = sampleCurve(r);
                    g = sampleCurve(g);
                    b = g;
                }
            } else {
                if (r >= b) {
                    adobeRgbTone(g, r, b);
                } else if (b > g) {
                    adobeRgbTone(b, g, r);
                } else {
                    adobeRgbTone(g, b, r);
                }
            }

            return clamp(vec3(r, g, b), vec3(0.0), vec3(1.0));
        }
    """.trimIndent()

    private val ADOBE_PROFILE_COMBINED_FUNCTIONS = """
        const float PROFILE_HIGHLIGHT_SHOULDER_START = 0.58;
        const float PROFILE_HIGHLIGHT_SHOULDER_SOFTNESS = 0.30;
        const float PROFILE_HIGHLIGHT_NEUTRAL_BLEND_MAX = 0.71;
        const float PROFILE_HIGHLIGHT_NEUTRAL_BLEND_POWER = 1.91;

        float clampDcpTableCoordinate(float value) {
            return clamp(value, 0.0, 1.0);
        }

        float encodeLookupValue(float value, int encoding) {
            value = clampDcpTableCoordinate(value);
            if (encoding == 1) {
                return linearToSrgb(vec3(value)).r;
            }
            return value;
        }

        float encodeScaledValue(float value, int encoding) {
            value = max(value, 0.0);
            if (encoding == 1) {
                return linearToSrgb(vec3(value)).r;
            }
            return value;
        }

        float decodeScaledValue(float value, int encoding) {
            value = max(value, 0.0);
            if (encoding == 1) {
                vec3 srgb = max(vec3(value), vec3(0.0));
                bvec3 useHigh = greaterThan(srgb, vec3(0.04045));
                vec3 low = srgb / 12.92;
                vec3 high = pow((srgb + 0.055) / 1.055, vec3(2.4));
                return useHigh.r ? high.r : low.r;
            }
            return value;
        }

        vec3 rgbToDcpHsv(vec3 rgb) {
            float maxValue = max(rgb.r, max(rgb.g, rgb.b));
            float minValue = min(rgb.r, min(rgb.g, rgb.b));
            float delta = maxValue - minValue;

            float hue = 0.0;
            if (delta > 1e-6) {
                if (maxValue == rgb.r) {
                    hue = mod((rgb.g - rgb.b) / delta, 6.0);
                } else if (maxValue == rgb.g) {
                    hue = ((rgb.b - rgb.r) / delta) + 2.0;
                } else {
                    hue = ((rgb.r - rgb.g) / delta) + 4.0;
                }
            }
            float sat = maxValue > 1e-6 ? delta / maxValue : 0.0;
            return vec3(hue, sat, maxValue);
        }

        vec3 dcpHsvToRgb(vec3 hsv) {
            float hue = mod(hsv.x, 6.0);
            float sat = max(hsv.y, 0.0);
            float value = max(hsv.z, 0.0);
            float chroma = value * sat;
            float x = chroma * (1.0 - abs(mod(hue, 2.0) - 1.0));
            vec3 rgb;
            if (hue < 1.0) rgb = vec3(chroma, x, 0.0);
            else if (hue < 2.0) rgb = vec3(x, chroma, 0.0);
            else if (hue < 3.0) rgb = vec3(0.0, chroma, x);
            else if (hue < 4.0) rgb = vec3(0.0, x, chroma);
            else if (hue < 5.0) rgb = vec3(x, 0.0, chroma);
            else rgb = vec3(chroma, 0.0, x);
            float matchValue = value - chroma;
            return rgb + vec3(matchValue);
        }

        vec3 sampleDcpMap(sampler3D tableTexture, ivec3 divisions, vec3 hsv) {
            int hueDivisions = divisions.x;
            int satDivisions = divisions.y;
            int valueDivisions = divisions.z;
            if (hueDivisions <= 0 || satDivisions <= 0 || valueDivisions <= 0) {
                return vec3(0.0, 1.0, 1.0);
            }

            float hScale = float(hueDivisions) / 6.0;
            float sScale = float(max(satDivisions - 1, 0));
            float vScale = float(max(valueDivisions - 1, 0));

            float hScaled = hsv.x * hScale;
            float sScaled = hsv.y * sScale;
            float vScaled = hsv.z * vScale;

            int maxHueIndex0 = hueDivisions - 1;
            int maxSatIndex0 = max(satDivisions - 2, 0);
            int maxValIndex0 = max(valueDivisions - 2, 0);

            int hIndex0 = int(floor(hScaled));
            int sIndex0 = min(int(floor(sScaled)), maxSatIndex0);
            int vIndex0 = min(int(floor(vScaled)), maxValIndex0);
            int hIndex1 = hIndex0 + 1;
            if (hIndex0 >= maxHueIndex0) {
                hIndex0 = maxHueIndex0;
                hIndex1 = 0;
            }

            float hFract1 = hScaled - float(hIndex0);
            float sFract1 = sScaled - float(sIndex0);
            float vFract1 = vScaled - float(vIndex0);
            float hFract0 = 1.0 - hFract1;
            float sFract0 = 1.0 - sFract1;
            float vFract0 = 1.0 - vFract1;

            vec3 p000 = texelFetch(tableTexture, ivec3(sIndex0, hIndex0, vIndex0), 0).rgb;
            vec3 p001 = texelFetch(tableTexture, ivec3(sIndex0, hIndex1, vIndex0), 0).rgb;
            vec3 p010 = texelFetch(tableTexture, ivec3(min(sIndex0 + 1, satDivisions - 1), hIndex0, vIndex0), 0).rgb;
            vec3 p011 = texelFetch(tableTexture, ivec3(min(sIndex0 + 1, satDivisions - 1), hIndex1, vIndex0), 0).rgb;

            vec3 v000 = p000;
            vec3 v001 = p001;
            vec3 v010 = p010;
            vec3 v011 = p011;

            if (valueDivisions > 1) {
                vec3 p100 = texelFetch(tableTexture, ivec3(sIndex0, hIndex0, min(vIndex0 + 1, valueDivisions - 1)), 0).rgb;
                vec3 p101 = texelFetch(tableTexture, ivec3(sIndex0, hIndex1, min(vIndex0 + 1, valueDivisions - 1)), 0).rgb;
                vec3 p110 = texelFetch(tableTexture, ivec3(min(sIndex0 + 1, satDivisions - 1), hIndex0, min(vIndex0 + 1, valueDivisions - 1)), 0).rgb;
                vec3 p111 = texelFetch(tableTexture, ivec3(min(sIndex0 + 1, satDivisions - 1), hIndex1, min(vIndex0 + 1, valueDivisions - 1)), 0).rgb;
                v000 = v000 * vFract0 + p100 * vFract1;
                v001 = v001 * vFract0 + p101 * vFract1;
                v010 = v010 * vFract0 + p110 * vFract1;
                v011 = v011 * vFract0 + p111 * vFract1;
            }

            vec3 edge0 = v000 * hFract0 + v001 * hFract1;
            vec3 edge1 = v010 * hFract0 + v011 * hFract1;
            return edge0 * sFract0 + edge1 * sFract1;
        }

        vec3 applyDcpHsvMap(vec3 color, sampler3D tableTexture, ivec3 divisions, int encoding) {
            vec3 hsv = rgbToDcpHsv(color);
            float lookupValue = hsv.z;
            float vEncoded = hsv.z;
            if (encoding == 1 && divisions.z > 1) {
                vEncoded = encodeScaledValue(hsv.z, encoding);
                lookupValue = encodeLookupValue(hsv.z, encoding);
            }

            vec3 lookupHsv = vec3(hsv.x, hsv.y, clampDcpTableCoordinate(lookupValue));
            vec3 modify = sampleDcpMap(tableTexture, divisions, lookupHsv);
            hsv.x = mod(hsv.x + (modify.x * 6.0 / 360.0), 6.0);
            hsv.y = clampDcpTableCoordinate(hsv.y * modify.y);
            vEncoded = clamp(vEncoded * modify.z, 0.0, 1.0);
            if (encoding == 1) {
                hsv.z = decodeScaledValue(vEncoded, encoding);
            } else {
                hsv.z = vEncoded;
            }

            return dcpHsvToRgb(hsv);
        }

        float applyProfileExposureRampValue(float value) {
            float black = uProfileExposureRampBlack;
            float radius = uProfileExposureRampRadius;
            if (value <= black - radius) {
                return 0.0;
            }
            if (value >= black + radius) {
                return max((value - black) * uProfileExposureRampSlope, 0.0);
            }
            float y = value - (black - radius);
            return uProfileExposureRampQScale * y * y;
        }

        vec3 applyProfileExposureRamp(vec3 color) {
            if (!uProfileExposureRampEnabled) {
                return color * uProfileExposureLinearGain;
            }
            vec3 ramped = vec3(
                applyProfileExposureRampValue(color.r),
                applyProfileExposureRampValue(color.g),
                applyProfileExposureRampValue(color.b)
            );
            float peak = max(ramped.r, max(ramped.g, ramped.b));
            if (peak <= PROFILE_HIGHLIGHT_SHOULDER_START) {
                return ramped;
            }
            float shoulderInput = peak - PROFILE_HIGHLIGHT_SHOULDER_START;
            float shoulderAmount = shoulderInput / (shoulderInput + PROFILE_HIGHLIGHT_SHOULDER_SOFTNESS);
            float compressedPeak = PROFILE_HIGHLIGHT_SHOULDER_START +
                (1.0 - PROFILE_HIGHLIGHT_SHOULDER_START) *
                shoulderAmount;
            vec3 compressed = ramped * (compressedPeak / max(peak, 1e-6));
            float neutralBlend = PROFILE_HIGHLIGHT_NEUTRAL_BLEND_MAX *
                pow(shoulderAmount, PROFILE_HIGHLIGHT_NEUTRAL_BLEND_POWER);
            return mix(compressed, vec3(compressedPeak), neutralBlend);
        }

        float applyProfileExposureToneValue(float value) {
            if (!uProfileExposureToneEnabled) {
                return value;
            }
            if (value <= 0.25) {
                return value * uProfileExposureToneSlope;
            }
            return (uProfileExposureToneA * value + uProfileExposureToneB) * value +
                uProfileExposureToneC;
        }

        vec3 applyProfileExposureTone(vec3 color) {
            if (!uProfileExposureRampEnabled) {
                return color;
            }
            return vec3(
                applyProfileExposureToneValue(color.r),
                applyProfileExposureToneValue(color.g),
                applyProfileExposureToneValue(color.b)
            );
        }

        vec3 applyDcpHueSatMap(vec3 color) {
            if (uDcpHueSatEnabled) {
                color = applyDcpHsvMap(color, uDcpHueSatTexture, uDcpHueSatDivisions, uDcpHueSatEncoding);
            }
            return color;
        }

        vec3 applyDcpLookTable(vec3 color) {
            if (uDcpLookTableEnabled) {
                color = applyDcpHsvMap(color, uDcpLookTableTexture, uDcpLookTableDivisions, uDcpLookTableEncoding);
            }
            return color;
        }

        vec3 applyAdobeProfilePipeline(vec3 color) {
            color = applyDcpHueSatMap(color);
            if (uProfileExposureRampEnabled) {
                color = applyProfileExposureRamp(color);
                color = applyDcpLookTable(color);
                color = applyProfileExposureTone(color);
            } else {
                color = applyDcpLookTable(color);
                color = applyProfileExposureRamp(color);
            }
            return color;
        }
    """.trimIndent()

    private val ADOBE_COMBINED_FUNCTIONS = """
        vec3 applyEngineTone(vec3 color) {
            color = applyAdobeCurve(color);
            return uOutputTransform * color;
        }
    """.trimIndent()

    private val AGX_COMBINED_FUNCTIONS = """
        const float DT_AGX_EPSILON = 0.000001;
        const float DT_AGX_DEFAULT_RANGE_EV = 16.5;
        const float DT_AGX_MIN_RANGE_EV = 0.2;
        const float DT_AGX_CURVE_GAMMA = 2.2;
        const float DT_AGX_PIVOT_Y = 0.4586564469;
        const float DT_AGX_SLOPE = 3.0;
        const float DT_AGX_HUE_MIX = 0.6;

        vec3 agxSanitize(vec3 color) {
            color.r = isnan(color.r) ? 0.0 : clamp(color.r, -1000000.0, 1000000.0);
            color.g = isnan(color.g) ? 0.0 : clamp(color.g, -1000000.0, 1000000.0);
            color.b = isnan(color.b) ? 0.0 : clamp(color.b, -1000000.0, 1000000.0);
            return color;
        }

        vec3 agxBaseToRendering(vec3 color) {
            return vec3(
                dot(vec3(0.8535098168, 0.0870498824, 0.0594403008), color),
                dot(vec3(0.1209748385, 0.7561015246, 0.1229236368), color),
                dot(vec3(0.0964595535, 0.0689548151, 0.8345856314), color)
            );
        }

        vec3 agxRenderingToBase(vec3 color) {
            return vec3(
                dot(vec3(1.1203173359, -0.0999545154, -0.0203628205), color),
                dot(vec3(-0.1213527019, 1.1417155224, -0.0203628205), color),
                dot(vec3(-0.1213527019, -0.0999545154, 1.2213072173), color)
            );
        }

        vec3 agxCompressIntoGamut(vec3 color) {
            const vec3 luminanceCoeffs = vec3(0.2658180370, 0.5984698605, 0.1357121025);
            float inputY = dot(color, luminanceCoeffs);
            float maxRgb = max(color.r, max(color.g, color.b));

            vec3 opponentRgb = vec3(maxRgb) - color;
            float opponentY = dot(opponentRgb, luminanceCoeffs);
            float maxOpponent = max(opponentRgb.r, max(opponentRgb.g, opponentRgb.b));
            float yCompensateNegative = maxOpponent - opponentY + inputY;

            float minRgb = min(color.r, min(color.g, color.b));
            float offset = max(-minRgb, 0.0);
            vec3 rgbOffset = color + vec3(offset);

            float maxOffsetRgb = max(rgbOffset.r, max(rgbOffset.g, rgbOffset.b));
            vec3 opponentOffsetRgb = vec3(maxOffsetRgb) - rgbOffset;
            float maxInverseOffset = max(
                opponentOffsetRgb.r,
                max(opponentOffsetRgb.g, opponentOffsetRgb.b)
            );
            float inverseOffsetY = dot(opponentOffsetRgb, luminanceCoeffs);
            float yNew = dot(rgbOffset, luminanceCoeffs);
            yNew = maxInverseOffset - inverseOffsetY + yNew;

            float luminanceRatio =
                (yNew > yCompensateNegative && yNew > DT_AGX_EPSILON)
                    ? yCompensateNegative / yNew
                    : 1.0;
            return luminanceRatio * rgbOffset;
        }

        float agxLogEncode(float value) {
            float relativeValue = max(DT_AGX_EPSILON, value / 0.18);
            float blackEv = min(uAgxBlackRelativeExposure, uAgxWhiteRelativeExposure - DT_AGX_MIN_RANGE_EV);
            float whiteEv = max(uAgxWhiteRelativeExposure, blackEv + DT_AGX_MIN_RANGE_EV);
            float rangeEv = max(DT_AGX_MIN_RANGE_EV, whiteEv - blackEv);
            return clamp((log2(max(relativeValue, 0.0)) - blackEv) / rangeEv, 0.0, 1.0);
        }

        float agxSigmoid(float value, float power) {
            return value / pow(1.0 + pow(value, power), 1.0 / power);
        }

        float agxScaledSigmoid(
            float value,
            float scale,
            float slope,
            float power,
            float transitionX,
            float transitionY
        ) {
            return scale * agxSigmoid(slope * (value - transitionX) / scale, power) + transitionY;
        }

        float agxScale(
            float limitX,
            float limitY,
            float transitionX,
            float transitionY,
            float slope,
            float power
        ) {
            float projectedRise = slope * max(DT_AGX_EPSILON, limitX - transitionX);
            float actualRise = max(DT_AGX_EPSILON, limitY - transitionY);
            float base = max(
                DT_AGX_EPSILON,
                pow(actualRise, -power) - pow(projectedRise, -power)
            );
            return min(1000000000.0, pow(base, -1.0 / power));
        }

        float agxFallbackToe(
            float value,
            float targetBlack,
            float coefficient,
            float power
        ) {
            return value < 0.0
                ? targetBlack
                : targetBlack + max(0.0, coefficient * pow(value, power));
        }

        float agxFallbackShoulder(
            float value,
            float targetWhite,
            float coefficient,
            float power
        ) {
            return value >= 1.0
                ? targetWhite
                : targetWhite - max(0.0, coefficient * pow(1.0 - value, power));
        }

        float agxCurve(float value) {
            float blackEv = min(uAgxBlackRelativeExposure, uAgxWhiteRelativeExposure - DT_AGX_MIN_RANGE_EV);
            float whiteEv = max(uAgxWhiteRelativeExposure, blackEv + DT_AGX_MIN_RANGE_EV);
            float rangeEv = max(DT_AGX_MIN_RANGE_EV, whiteEv - blackEv);
            float pivotX = clamp(-blackEv / rangeEv, DT_AGX_EPSILON, 1.0 - DT_AGX_EPSILON);
            float pivotY = DT_AGX_PIVOT_Y;
            float slope = DT_AGX_SLOPE * (rangeEv / DT_AGX_DEFAULT_RANGE_EV);
            float targetBlack = 0.0;
            float targetWhite = 1.0;

            float toePower = max(0.01, uAgxToe);
            float toeTransitionX = pivotX;
            float toeTransitionY = pivotY;
            float toeScale = -agxScale(
                1.0,
                1.0 - targetBlack,
                1.0 - toeTransitionX,
                1.0 - toeTransitionY,
                slope,
                toePower
            );
            float toeLengthX = max(DT_AGX_EPSILON, toeTransitionX);
            float toeDyTransitionToLimit = max(DT_AGX_EPSILON, toeTransitionY - targetBlack);
            bool needConvexToe = toeDyTransitionToLimit / toeLengthX > slope;
            float toeFallbackPower = slope * toeLengthX / toeDyTransitionToLimit;
            float toeFallbackCoefficient = toeDyTransitionToLimit / pow(toeLengthX, toeFallbackPower);

            float intercept = toeTransitionY - slope * toeTransitionX;

            float shoulderPower = max(0.01, uAgxShoulder);
            float shoulderTransitionX = pivotX;
            float shoulderTransitionY = pivotY;
            float shoulderScale = agxScale(
                1.0,
                targetWhite,
                shoulderTransitionX,
                shoulderTransitionY,
                slope,
                shoulderPower
            );
            float shoulderLengthX = max(DT_AGX_EPSILON, 1.0 - shoulderTransitionX);
            float shoulderDyTransitionToLimit = max(DT_AGX_EPSILON, targetWhite - shoulderTransitionY);
            bool needConcaveShoulder = shoulderDyTransitionToLimit / shoulderLengthX > slope;
            float shoulderFallbackPower = slope * shoulderLengthX / shoulderDyTransitionToLimit;
            float shoulderFallbackCoefficient =
                shoulderDyTransitionToLimit / pow(shoulderLengthX, shoulderFallbackPower);

            float result;
            if (value < toeTransitionX) {
                result = needConvexToe
                    ? agxFallbackToe(value, targetBlack, toeFallbackCoefficient, toeFallbackPower)
                    : agxScaledSigmoid(
                        value,
                        toeScale,
                        slope,
                        toePower,
                        toeTransitionX,
                        toeTransitionY
                    );
            } else if (value <= shoulderTransitionX) {
                result = slope * value + intercept;
            } else {
                result = needConcaveShoulder
                    ? agxFallbackShoulder(
                        value,
                        targetWhite,
                        shoulderFallbackCoefficient,
                        shoulderFallbackPower
                    )
                    : agxScaledSigmoid(
                        value,
                        shoulderScale,
                        slope,
                        shoulderPower,
                        shoulderTransitionX,
                        shoulderTransitionY
                    );
            }
            return clamp(result, targetBlack, targetWhite);
        }

        vec3 agxRgbToHsv(vec3 color) {
            vec4 k = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
            vec4 p = mix(vec4(color.bg, k.wz), vec4(color.gb, k.xy), step(color.b, color.g));
            vec4 q = mix(vec4(p.xyw, color.r), vec4(color.r, p.yzx), step(p.x, color.r));
            float d = q.x - min(q.w, q.y);
            float e = 0.0000000001;
            return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
        }

        vec3 agxHsvToRgb(vec3 hsv) {
            vec4 k = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
            vec3 p = abs(fract(hsv.xxx + k.xyz) * 6.0 - k.www);
            return hsv.z * mix(k.xxx, clamp(p - k.xxx, 0.0, 1.0), hsv.y);
        }

        float agxLerpHue(float originalHue, float processedHue, float mixRatio) {
            float shortestDistance = processedHue - originalHue - round(processedHue - originalHue);
            float mixedHue = (1.0 - mixRatio) * shortestDistance + originalHue;
            return mixedHue - floor(mixedHue);
        }

        vec3 agxToneMapping(vec3 color) {
            vec3 hsvBefore = agxRgbToHsv(color);
            vec3 transformed = vec3(
                agxCurve(agxLogEncode(color.r)),
                agxCurve(agxLogEncode(color.g)),
                agxCurve(agxLogEncode(color.b))
            );
            transformed = pow(max(transformed, vec3(0.0)), vec3(DT_AGX_CURVE_GAMMA));

            vec3 hsvAfter = agxRgbToHsv(transformed);
            hsvAfter.x = agxLerpHue(hsvBefore.x, hsvAfter.x, DT_AGX_HUE_MIX);
            return agxHsvToRgb(hsvAfter);
        }

        vec3 applyEngineTone(vec3 color) {
            vec3 baseRgb = agxCompressIntoGamut(agxSanitize(color));
            vec3 renderingRgb = agxBaseToRendering(baseRgb);
            vec3 tonedRenderingRgb = agxToneMapping(renderingRgb);
            vec3 baseOut = agxRenderingToBase(tonedRenderingRgb);
            return uOutputTransform * baseOut;
        }
    """.trimIndent()

    private val SPECTRAL_FILM_COMBINED_FUNCTIONS = """
        vec3 linearToProPhoto(vec3 color) {
            vec3 clamped = max(color, vec3(0.0));
            vec3 isHigh = step(vec3(0.001953125), clamped);
            vec3 lowPart = 16.0 * clamped;
            vec3 highPart = pow(clamped, vec3(1.0 / 1.8));
            return mix(lowPart, highPart, isHigh);
        }

        vec3 proPhotoToLinear(vec3 color) {
            vec3 clamped = clamp(color, 0.0, 1.0);
            vec3 isHigh = step(vec3(0.03125), clamped);
            vec3 lowPart = clamped / 16.0;
            vec3 highPart = pow(clamped, vec3(1.8));
            return mix(lowPart, highPart, isHigh);
        }

        vec3 applySpectralFilm(vec3 color) {
            if (uSpectralFilmSize <= 1) {
                return color;
            }
            vec3 normalizedColor = color / 2.88;
            vec3 encodedColor = linearToProPhoto(normalizedColor);
            vec3 lutCoord = clamp(encodedColor, 0.0, 1.0);
            vec3 lutResult = texture(uSpectralFilmTexture, lutCoord).rgb;
            return proPhotoToLinear(lutResult);
        }

        vec3 applyEngineTone(vec3 color) {
            return uOutputTransform * applySpectralFilm(color);
        }
    """.trimIndent()

    private val DARKTABLE_SIGMOID_COMBINED_FUNCTIONS = """
        const float DT_SIGMOID_WHITE_TARGET = 1.0;
        const float DT_SIGMOID_PAPER_EXPOSURE = 0.354355423;
        const float DT_SIGMOID_FILM_FOG = 0.00142637086;
        const float DT_SIGMOID_FILM_POWER = 1.5;
        const float DT_SIGMOID_PAPER_POWER = 1.0;
        const float DT_SIGMOID_HUE_PRESERVATION = 1.0;

        vec3 desaturateNegativeValues(vec3 color) {
            float pixelAverage = max((color.r + color.g + color.b) / 3.0, 0.0);
            float minValue = min(color.r, min(color.g, color.b));
            float saturationFactor =
                minValue < 0.0 ? -pixelAverage / (minValue - pixelAverage) : 1.0;
            return vec3(pixelAverage) + saturationFactor * (color - vec3(pixelAverage));
        }

        float darktableSigmoidScalar(float value) {
            float clampedValue = max(value, 0.0);
            float filmResponse = pow(DT_SIGMOID_FILM_FOG + clampedValue, DT_SIGMOID_FILM_POWER);
            float paperResponse = DT_SIGMOID_WHITE_TARGET *
                pow(filmResponse / (DT_SIGMOID_PAPER_EXPOSURE + filmResponse), DT_SIGMOID_PAPER_POWER);
            return clamp(paperResponse, 0.0, DT_SIGMOID_WHITE_TARGET);
        }

        vec3 darktableSigmoidCurve(vec3 color) {
            return vec3(
                darktableSigmoidScalar(color.r),
                darktableSigmoidScalar(color.g),
                darktableSigmoidScalar(color.b)
            );
        }

        ivec3 sigmoidChannelOrder(vec3 color) {
            if (color.r >= color.g) {
                if (color.g > color.b) {
                    return ivec3(2, 1, 0);
                } else if (color.b > color.r) {
                    return ivec3(1, 0, 2);
                } else if (color.b > color.g) {
                    return ivec3(1, 2, 0);
                }
                return ivec3(2, 1, 0);
            }
            if (color.r >= color.b) {
                return ivec3(2, 0, 1);
            } else if (color.b > color.g) {
                return ivec3(0, 1, 2);
            }
            return ivec3(0, 2, 1);
        }

        float channelValue(vec3 color, int index) {
            if (index == 0) return color.r;
            if (index == 1) return color.g;
            return color.b;
        }

        vec3 withChannelValue(vec3 color, int index, float value) {
            if (index == 0) {
                color.r = value;
            } else if (index == 1) {
                color.g = value;
            } else {
                color.b = value;
            }
            return color;
        }

        vec3 preserveSigmoidHueAndEnergy(vec3 inputColor, vec3 perChannel) {
            ivec3 order = sigmoidChannelOrder(inputColor);
            float inputMin = channelValue(inputColor, order.x);
            float inputMid = channelValue(inputColor, order.y);
            float inputMax = channelValue(inputColor, order.z);
            float perMin = channelValue(perChannel, order.x);
            float perMid = channelValue(perChannel, order.y);
            float perMax = channelValue(perChannel, order.z);

            float chroma = inputMax - inputMin;
            float midScale = chroma != 0.0 ? (inputMid - inputMin) / chroma : 0.0;
            float fullHueCorrection = perMin + (perMax - perMin) * midScale;
            float naiveHueMid = mix(perMid, fullHueCorrection, DT_SIGMOID_HUE_PRESERVATION);
            float perChannelEnergy = perChannel.r + perChannel.g + perChannel.b;
            float naiveHueEnergy = perMin + naiveHueMid + perMax;
            float inputMinPlusMid = inputMin + inputMid;
            float blendFactor = inputMinPlusMid != 0.0 ? 2.0 * inputMin / inputMinPlusMid : 0.0;
            float energyTarget = blendFactor * perChannelEnergy + (1.0 - blendFactor) * naiveHueEnergy;

            float outMin;
            float outMid;
            float outMax;
            if (naiveHueMid <= perMid) {
                float correctedMid =
                    ((1.0 - DT_SIGMOID_HUE_PRESERVATION) * perMid +
                        DT_SIGMOID_HUE_PRESERVATION *
                        (midScale * perMax + (1.0 - midScale) * (energyTarget - perMax))) /
                    (1.0 + DT_SIGMOID_HUE_PRESERVATION * (1.0 - midScale));
                outMin = energyTarget - perMax - correctedMid;
                outMid = correctedMid;
                outMax = perMax;
            } else {
                float correctedMid =
                    ((1.0 - DT_SIGMOID_HUE_PRESERVATION) * perMid +
                        DT_SIGMOID_HUE_PRESERVATION *
                        (perMin * (1.0 - midScale) + midScale * (energyTarget - perMin))) /
                    (1.0 + DT_SIGMOID_HUE_PRESERVATION * midScale);
                outMin = perMin;
                outMid = correctedMid;
                outMax = energyTarget - perMin - correctedMid;
            }

            vec3 result = vec3(0.0);
            result = withChannelValue(result, order.x, outMin);
            result = withChannelValue(result, order.y, outMid);
            result = withChannelValue(result, order.z, outMax);
            return result;
        }

        vec3 applyDarktableSigmoid(vec3 color) {
            vec3 positiveColor = desaturateNegativeValues(color);
            vec3 perChannel = darktableSigmoidCurve(positiveColor);
            return preserveSigmoidHueAndEnergy(positiveColor, perChannel);
        }

        vec3 applyEngineTone(vec3 color) {
            return uOutputTransform * applyDarktableSigmoid(color);
        }
    """.trimIndent()

    private val DARKTABLE_FILMIC_COMBINED_FUNCTIONS = """
        const float DT_FILMIC_NORM_MIN = 0.0000152587890625;
        const float DT_FILMIC_GREY_SOURCE = 0.1845;
        const float DT_FILMIC_OUTPUT_POWER = 3.614815775;
        const float DT_FILMIC_DISPLAY_BLACK = 0.0001517634;
        const float DT_FILMIC_DISPLAY_WHITE = 1.0;
        const float DT_FILMIC_Y_1931_TO_2006 = 1.05785528;
        const float DT_FILMIC_YRG_D65_R = 0.21902143;
        const float DT_FILMIC_YRG_D65_G = 0.54371398;
        const float DT_FILMIC_MAX_CHROMA = 1.0e20;
        const vec3 DT_FILMIC_BT2020_TO_LMS_L = vec3(0.4067763460, 0.6178051991, 0.0458445893);
        const vec3 DT_FILMIC_BT2020_TO_LMS_M = vec3(0.0677498629, 0.7489671634, 0.1001665160);
        const vec3 DT_FILMIC_BT2020_TO_LMS_S = vec3(0.0221408642, -0.0153252587, 0.5876294574);
        const vec3 DT_FILMIC_LMS_TO_BT2020_R = vec3(2.8380181184, -2.3373915374, 0.1770173235);
        const vec3 DT_FILMIC_LMS_TO_BT2020_G = vec3(-0.2415770666, 1.5294941187, -0.2418685622);
        const vec3 DT_FILMIC_LMS_TO_BT2020_B = vec3(-0.1132319053, 0.1279577808, 1.6887750778);
        const vec3 DT_FILMIC_SRGB_TO_LMS_L = vec3(0.2986531876, 0.7060763220, 0.0656966248);
        const vec3 DT_FILMIC_SRGB_TO_LMS_M = vec3(0.0959000021, 0.7198304285, 0.1011531117);
        const vec3 DT_FILMIC_SRGB_TO_LMS_S = vec3(0.0224644230, 0.0449176289, 0.5270630110);
        const vec3 DT_FILMIC_LMS_TO_SRGB_R = vec3(4.8627131007, -4.7893329888, 0.3130405567);
        const vec3 DT_FILMIC_LMS_TO_SRGB_G = vec3(-0.6262137162, 2.0228185813, -0.3101607577);
        const vec3 DT_FILMIC_LMS_TO_SRGB_B = vec3(-0.1538905312, 0.0317407724, 1.9103966448);
        const vec3 DT_FILMIC_LMS_TO_FILMLIGHT_R = vec3(1.08771930, -0.66666667, 0.02061856);
        const vec3 DT_FILMIC_LMS_TO_FILMLIGHT_G = vec3(-0.08771930, 1.66666667, -0.05154639);
        const vec3 DT_FILMIC_LMS_TO_FILMLIGHT_B = vec3(0.0, 0.0, 1.03092784);
        const vec3 DT_FILMIC_FILMLIGHT_TO_LMS_L = vec3(0.95, 0.38, 0.0);
        const vec3 DT_FILMIC_FILMLIGHT_TO_LMS_M = vec3(0.05, 0.62, 0.03);
        const vec3 DT_FILMIC_FILMLIGHT_TO_LMS_S = vec3(0.0, 0.0, 0.97);
        float darktableFilmicLogEncode(float value) {
            float safeValue = max(value, DT_FILMIC_NORM_MIN);
            return clamp(
                (log2(safeValue / DT_FILMIC_GREY_SOURCE) - uFilmicBlackRelativeExposure) /
                    max(uFilmicDynamicRange, 0.2),
                0.0,
                1.0
            );
        }

        float darktableFilmicSpline(float value) {
            if (value < uFilmicLatitudeMin) {
                return uFilmicM1.x + value * (
                    uFilmicM2.x + value * (
                        uFilmicM3.x + value * (
                            uFilmicM4.x + value * uFilmicM5.x
                        )
                    )
                );
            }
            if (value > uFilmicLatitudeMax) {
                return uFilmicM1.y + value * (
                    uFilmicM2.y + value * (
                        uFilmicM3.y + value * (
                            uFilmicM4.y + value * uFilmicM5.y
                        )
                    )
                );
            }
            return uFilmicM1.z + value * uFilmicM2.z;
        }

        float darktableFilmicRgbScalar(float value) {
            float encoded = darktableFilmicLogEncode(value);
            float curved = clamp(darktableFilmicSpline(encoded), 0.0, DT_FILMIC_DISPLAY_WHITE);
            return pow(max(curved, 0.0), DT_FILMIC_OUTPUT_POWER);
        }

        float darktableFilmicNormScalar(float value) {
            float encoded = darktableFilmicLogEncode(value);
            float curved = clamp(
                darktableFilmicSpline(encoded),
                DT_FILMIC_DISPLAY_BLACK,
                DT_FILMIC_DISPLAY_WHITE
            );
            return pow(max(curved, 0.0), DT_FILMIC_OUTPUT_POWER);
        }

        vec3 darktableFilmicRgbTone(vec3 color) {
            vec3 positiveColor = max(color, vec3(DT_FILMIC_NORM_MIN));
            return vec3(
                darktableFilmicRgbScalar(positiveColor.r),
                darktableFilmicRgbScalar(positiveColor.g),
                darktableFilmicRgbScalar(positiveColor.b)
            );
        }

        vec3 darktableFilmicMaxRgbTone(vec3 color) {
            vec3 positiveColor = max(color, vec3(0.0));
            float maxRgb = max(positiveColor.r, max(positiveColor.g, positiveColor.b));
            float ratioNorm = max(maxRgb, uFilmicInputMin);
            float toneNorm = clamp(maxRgb, uFilmicInputMin, uFilmicInputMax);
            vec3 ratios = positiveColor / ratioNorm;
            return ratios * darktableFilmicNormScalar(toneNorm);
        }

        vec3 applyDarktableFilmic(vec3 color) {
            vec3 naiveRgb = darktableFilmicRgbTone(color);
            vec3 maxRgb = darktableFilmicMaxRgbTone(color);
            return 0.5 * naiveRgb + 0.5 * maxRgb;
        }

        vec3 darktableFilmicBt2020ToLms(vec3 color) {
            return vec3(
                dot(DT_FILMIC_BT2020_TO_LMS_L, color),
                dot(DT_FILMIC_BT2020_TO_LMS_M, color),
                dot(DT_FILMIC_BT2020_TO_LMS_S, color)
            );
        }

        vec3 darktableFilmicLmsToBt2020(vec3 lms) {
            return vec3(
                dot(DT_FILMIC_LMS_TO_BT2020_R, lms),
                dot(DT_FILMIC_LMS_TO_BT2020_G, lms),
                dot(DT_FILMIC_LMS_TO_BT2020_B, lms)
            );
        }

        vec3 darktableFilmicSrgbToLms(vec3 color) {
            return vec3(
                dot(DT_FILMIC_SRGB_TO_LMS_L, color),
                dot(DT_FILMIC_SRGB_TO_LMS_M, color),
                dot(DT_FILMIC_SRGB_TO_LMS_S, color)
            );
        }

        vec3 darktableFilmicLmsToSrgb(vec3 lms) {
            return vec3(
                dot(DT_FILMIC_LMS_TO_SRGB_R, lms),
                dot(DT_FILMIC_LMS_TO_SRGB_G, lms),
                dot(DT_FILMIC_LMS_TO_SRGB_B, lms)
            );
        }

        vec3 darktableFilmicProfileRgbToLms(vec3 color, bool useSrgb) {
            return useSrgb ? darktableFilmicSrgbToLms(color) : darktableFilmicBt2020ToLms(color);
        }

        vec3 darktableFilmicLmsToProfileRgb(vec3 lms, bool useSrgb) {
            return useSrgb ? darktableFilmicLmsToSrgb(lms) : darktableFilmicLmsToBt2020(lms);
        }

        vec3 darktableFilmicLmsToFilmlight(vec3 lms) {
            return vec3(
                dot(DT_FILMIC_LMS_TO_FILMLIGHT_R, lms),
                dot(DT_FILMIC_LMS_TO_FILMLIGHT_G, lms),
                dot(DT_FILMIC_LMS_TO_FILMLIGHT_B, lms)
            );
        }

        vec3 darktableFilmicFilmlightToLms(vec3 rgb) {
            return vec3(
                dot(DT_FILMIC_FILMLIGHT_TO_LMS_L, rgb),
                dot(DT_FILMIC_FILMLIGHT_TO_LMS_M, rgb),
                dot(DT_FILMIC_FILMLIGHT_TO_LMS_S, rgb)
            );
        }

        vec3 darktableFilmicLmsToYrg(vec3 lms) {
            float y = 0.68990272 * lms.x + 0.34832189 * lms.y;
            float sumLms = lms.x + lms.y + lms.z;
            vec3 normalizedLms = abs(sumLms) > 1e-8 ? lms / sumLms : vec3(0.0);
            vec3 filmlightRgb = darktableFilmicLmsToFilmlight(normalizedLms);
            return vec3(y, filmlightRgb.r, filmlightRgb.g);
        }

        vec3 darktableFilmicYrgToLms(vec3 yrg) {
            vec3 filmlightRgb = vec3(yrg.y, yrg.z, 1.0 - yrg.y - yrg.z);
            vec3 normalizedLms = darktableFilmicFilmlightToLms(filmlightRgb);
            float denom = 0.68990272 * normalizedLms.x + 0.34832189 * normalizedLms.y;
            float scale = abs(denom) > 1e-8 ? yrg.x / denom : 0.0;
            return normalizedLms * scale;
        }

        vec4 darktableFilmicYrgToYch(vec3 yrg) {
            float r = yrg.y - DT_FILMIC_YRG_D65_R;
            float g = yrg.z - DT_FILMIC_YRG_D65_G;
            float chroma = length(vec2(r, g));
            float cosH = chroma > 0.0 ? r / chroma : 1.0;
            float sinH = chroma > 0.0 ? g / chroma : 0.0;
            return vec4(yrg.x, chroma, cosH, sinH);
        }

        vec3 darktableFilmicYchToYrg(vec4 ych) {
            return vec3(
                ych.x,
                ych.y * ych.z + DT_FILMIC_YRG_D65_R,
                ych.y * ych.w + DT_FILMIC_YRG_D65_G
            );
        }

        vec4 darktableFilmicProfileRgbToYch(vec3 color, bool useSrgb) {
            return darktableFilmicYrgToYch(
                darktableFilmicLmsToYrg(darktableFilmicProfileRgbToLms(color, useSrgb))
            );
        }

        vec3 darktableFilmicYchToProfileRgb(vec4 ych, bool useSrgb) {
            vec3 lms = darktableFilmicYrgToLms(darktableFilmicYchToYrg(ych));
            return darktableFilmicLmsToProfileRgb(lms, useSrgb);
        }

        vec4 darktableFilmicDesaturateV4(vec4 ychOriginal, vec4 ychFinal, float saturation) {
            float chromaOriginal = ychOriginal.y * ychOriginal.x;
            float chromaFinal = ychFinal.y * ychFinal.x;
            float deltaChroma = saturation * (chromaOriginal - chromaFinal);

            bool filmicBrightens = ychFinal.x > ychOriginal.x;
            bool filmicResat = chromaOriginal < chromaFinal;
            bool filmicDesat = chromaOriginal > chromaFinal;
            bool userResat = saturation > 0.0;
            bool userDesat = saturation < 0.0;

            if (filmicBrightens && filmicResat) {
                chromaFinal = 0.5 * (chromaOriginal + chromaFinal);
            } else if ((userResat && filmicDesat) || userDesat) {
                chromaFinal += deltaChroma;
            }

            ychFinal.y = max(chromaFinal / max(ychFinal.x, 1e-8), 0.0);
            return ychFinal;
        }

        vec4 darktableFilmicGamutCheckYrg(vec4 ych) {
            vec3 yrg = darktableFilmicYchToYrg(ych);
            float maxChroma = max(ych.y, 0.0);
            float cosH = ych.z;
            float sinH = ych.w;

            if (yrg.y < 0.0 && abs(cosH) > 1e-8) {
                maxChroma = min(-DT_FILMIC_YRG_D65_R / cosH, maxChroma);
            }
            if (yrg.z < 0.0 && abs(sinH) > 1e-8) {
                maxChroma = min(-DT_FILMIC_YRG_D65_G / sinH, maxChroma);
            }
            if (yrg.y + yrg.z > 1.0 && abs(cosH + sinH) > 1e-8) {
                maxChroma = min((1.0 - DT_FILMIC_YRG_D65_R - DT_FILMIC_YRG_D65_G) / (cosH + sinH), maxChroma);
            }

            ych.y = max(maxChroma, 0.0);
            return ych;
        }

        float darktableFilmicClipChromaWhiteRaw(vec3 coeffs, float targetWhite, float y, float cosH, float sinH) {
            float denominatorYCoeff =
                coeffs.x * (0.979381443298969 * cosH + 0.391752577319588 * sinH) +
                coeffs.y * (0.0206185567010309 * cosH + 0.608247422680412 * sinH) -
                coeffs.z * (cosH + sinH);
            float denominatorTargetTerm =
                targetWhite * (0.68285981628866 * cosH + 0.482137060515464 * sinH);

            if (abs(denominatorYCoeff) <= 1e-8) {
                return DT_FILMIC_MAX_CHROMA;
            }

            float yAsymptote = denominatorTargetTerm / denominatorYCoeff;
            if (y <= yAsymptote) {
                return DT_FILMIC_MAX_CHROMA;
            }

            float denominator = y * denominatorYCoeff - denominatorTargetTerm;
            if (abs(denominator) <= 1e-8) {
                return DT_FILMIC_MAX_CHROMA;
            }

            float numerator = -0.427506877216495 *
                (y * (coeffs.x + 0.856492345150334 * coeffs.y + 0.554995960637719 * coeffs.z) -
                    0.988237752433297 * targetWhite);
            float maxChroma = numerator / denominator;
            return maxChroma >= 0.0 ? maxChroma : DT_FILMIC_MAX_CHROMA;
        }

        float darktableFilmicClipChromaWhite(vec3 coeffs, float targetWhite, float y, float cosH, float sinH) {
            const float eps = 0.001;
            float maxY = DT_FILMIC_Y_1931_TO_2006 * targetWhite;
            float deltaY = max(maxY - y, 0.0);
            float maxChroma;
            if (deltaY < eps) {
                maxChroma = deltaY / max(eps * maxY, 1e-8) *
                    darktableFilmicClipChromaWhiteRaw(coeffs, targetWhite, (1.0 - eps) * maxY, cosH, sinH);
            } else {
                maxChroma = darktableFilmicClipChromaWhiteRaw(coeffs, targetWhite, y, cosH, sinH);
            }
            return maxChroma >= 0.0 ? maxChroma : DT_FILMIC_MAX_CHROMA;
        }

        float darktableFilmicClipChromaBlack(vec3 coeffs, float cosH, float sinH) {
            float denominator =
                coeffs.x * (0.979381443298969 * cosH + 0.391752577319588 * sinH) +
                coeffs.y * (0.0206185567010309 * cosH + 0.608247422680412 * sinH) -
                coeffs.z * (cosH + sinH);
            if (abs(denominator) <= 1e-8) {
                return DT_FILMIC_MAX_CHROMA;
            }

            float numerator = -0.427506877216495 *
                (coeffs.x + 0.856492345150334 * coeffs.y + 0.554995960637719 * coeffs.z);
            float maxChroma = numerator / denominator;
            return maxChroma >= 0.0 ? maxChroma : DT_FILMIC_MAX_CHROMA;
        }

        float darktableFilmicClipChroma(
            vec3 rowR,
            vec3 rowG,
            vec3 rowB,
            float targetWhite,
            float y,
            float cosH,
            float sinH,
            float chroma
        ) {
            float chromaWhite = min(
                min(
                    darktableFilmicClipChromaWhite(rowR, targetWhite, y, cosH, sinH),
                    darktableFilmicClipChromaWhite(rowG, targetWhite, y, cosH, sinH)
                ),
                darktableFilmicClipChromaWhite(rowB, targetWhite, y, cosH, sinH)
            );
            float chromaBlack = min(
                min(
                    darktableFilmicClipChromaBlack(rowR, cosH, sinH),
                    darktableFilmicClipChromaBlack(rowG, cosH, sinH)
                ),
                darktableFilmicClipChromaBlack(rowB, cosH, sinH)
            );
            return max(min(min(chroma, chromaWhite), chromaBlack), 0.0);
        }

        vec3 darktableFilmicGamutCheckRgb(vec4 ychIn, bool useSrgb) {
            vec3 rgbBrightened = darktableFilmicYchToProfileRgb(ychIn, useSrgb);
            float minPixel = min(rgbBrightened.r, min(rgbBrightened.g, rgbBrightened.b));
            float blackOffset = max(-minPixel, 0.0);
            rgbBrightened += vec3(blackOffset);

            vec4 ychBrightened = darktableFilmicProfileRgbToYch(rgbBrightened, useSrgb);
            float y = clamp(
                0.5 * (ychIn.x + ychBrightened.x),
                DT_FILMIC_Y_1931_TO_2006 * DT_FILMIC_DISPLAY_BLACK,
                DT_FILMIC_Y_1931_TO_2006 * DT_FILMIC_DISPLAY_WHITE
            );

            vec3 rowR = useSrgb ? DT_FILMIC_LMS_TO_SRGB_R : DT_FILMIC_LMS_TO_BT2020_R;
            vec3 rowG = useSrgb ? DT_FILMIC_LMS_TO_SRGB_G : DT_FILMIC_LMS_TO_BT2020_G;
            vec3 rowB = useSrgb ? DT_FILMIC_LMS_TO_SRGB_B : DT_FILMIC_LMS_TO_BT2020_B;
            float newChroma = darktableFilmicClipChroma(
                rowR,
                rowG,
                rowB,
                DT_FILMIC_DISPLAY_WHITE,
                y,
                ychIn.z,
                ychIn.w,
                ychIn.y
            );

            return clamp(
                darktableFilmicYchToProfileRgb(vec4(y, newChroma, ychIn.z, ychIn.w), useSrgb),
                0.0,
                DT_FILMIC_DISPLAY_WHITE
            );
        }

        vec3 darktableFilmicGamutMapV5(vec3 originalColor, vec3 tonedColor) {
            vec4 ychOriginal = darktableFilmicProfileRgbToYch(originalColor, false);
            vec4 ychFinal = darktableFilmicProfileRgbToYch(tonedColor, false);

            ychFinal.y = min(ychOriginal.y, ychFinal.y);
            ychFinal.z = ychOriginal.z;
            ychFinal.w = ychOriginal.w;
            ychFinal.x = clamp(
                ychFinal.x,
                DT_FILMIC_Y_1931_TO_2006 * DT_FILMIC_DISPLAY_BLACK,
                DT_FILMIC_Y_1931_TO_2006 * DT_FILMIC_DISPLAY_WHITE
            );
            ychFinal = darktableFilmicDesaturateV4(ychOriginal, ychFinal, 0.0);
            ychFinal = darktableFilmicGamutCheckYrg(ychFinal);

            vec3 srgb = darktableFilmicGamutCheckRgb(ychFinal, true);
            return darktableFilmicLmsToBt2020(darktableFilmicSrgbToLms(srgb));
        }

        vec3 applyEngineTone(vec3 color) {
            vec3 toned = applyDarktableFilmic(color);
            return uOutputTransform * darktableFilmicGamutMapV5(color, toned);
        }
    """.trimIndent()

    /**
     * Dedicated Sharpening Shader
     * Lightweight UnSharp Mask inspired by darktable's default sharpen preset.
     */
    val SHARPEN_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;
        
        in vec2 vTexCoord;
        out vec4 fragColor;
        
        uniform sampler2D uInputTexture;
        uniform vec2 uTexelSize;
        uniform float uSharpening;
        uniform float uRadius;
        uniform float uThreshold;

        float luminance(vec3 color) {
            return dot(color, vec3(0.2126, 0.7152, 0.0722));
        }
        
        void main() {
            vec3 center = texture(uInputTexture, vTexCoord).rgb;
            if (uSharpening <= 0.0) {
                fragColor = vec4(center, 1.0);
                return;
            }

            float r = max(uRadius, 0.001);
            float sigma = max(r * 0.5, 0.001);
            float twoSigma2 = 2.0 * sigma * sigma;
            vec3 blur = vec3(0.0);
            float weightSum = 0.0;

            for (int y = -2; y <= 2; y++) {
                for (int x = -2; x <= 2; x++) {
                    vec2 offset = vec2(float(x), float(y));
                    float dist2 = dot(offset, offset);
                    float weight = exp(-dist2 / twoSigma2);
                    blur += texture(uInputTexture, vTexCoord + offset * uTexelSize * r).rgb * weight;
                    weightSum += weight;
                }
            }
            blur /= max(weightSum, 1e-5);

            float centerLuma = luminance(center);
            float blurLuma = luminance(blur);
            float delta = centerLuma - blurLuma;
            float detail = sign(delta) * max(abs(delta) - uThreshold, 0.0);
            vec3 result = center + center * (detail / max(centerLuma, 1e-5)) * uSharpening;

            fragColor = vec4(clamp(result, 0.0, 1.0), 1.0);
        }
    """.trimIndent()

    /**
     * HDR Reference Shader
     *
     * RAW 线性输入已经按传感器白点归一化，直接输出会让拍到白点的灯光仍然只有
     * SDR reference white (= 1.0)，gainmap 没有高光余量可写。这里只按原始亮度比例
     * 从普通高光开始逐步扩展到 scene-linear HDR headroom，保留白云等扩散高光的局部层次。
     */
    val HDR_REFERENCE_FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform float uHighlightStart;
        uniform float uWhitePointSceneLuma;

        float luminance(vec3 color) {
            return max(dot(color, vec3(0.2126, 0.7152, 0.0722)), 1e-5);
        }

        void main() {
            vec3 color = max(texture(uInputTexture, vTexCoord).rgb, vec3(0.0));
            float luma = luminance(color);
            float highlight = smoothstep(uHighlightStart, 1.0, luma);
            float whitePoint = max(uWhitePointSceneLuma, 1.0);
            float lift = mix(1.0, whitePoint, highlight);
            float targetLuma = max(luma, min(luma * lift, whitePoint));
            color *= targetLuma / luma;
            fragColor = vec4(max(color, vec3(0.0)), 1.0);
        }
    """.trimIndent()

    /**
     * 绘制顺序索引
     */
    val DRAW_ORDER = shortArrayOf(
        0, 1, 2,  // 第一个三角形
        1, 3, 2   // 第二个三角形
    )
}
