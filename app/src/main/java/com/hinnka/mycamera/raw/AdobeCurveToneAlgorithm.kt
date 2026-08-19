package com.hinnka.mycamera.raw

import android.opengl.GLES30

internal object AdobeCurveToneShader {
    val ADOBE_COMBINED_UNIFORMS = """
        uniform sampler2D uCurveTexture;
        uniform mat3 uOutputTransform;
        uniform float uCurveSize;
        uniform bool uCurveEnabled;
    """.trimIndent()
    val ADOBE_PROFILE_COMBINED_UNIFORMS = """
        uniform sampler3D uDcpHueSatTexture;
        uniform sampler3D uDcpLookTableTexture;
        uniform bool uDcpHueSatEnabled;
        uniform bool uDcpLookTableEnabled;
        uniform ivec3 uDcpHueSatDivisions;
        uniform ivec3 uDcpLookTableDivisions;
        uniform int uDcpHueSatEncoding;
        uniform int uDcpLookTableEncoding;
        ${RawEngineTonePass.PROFILE_EXPOSURE_COMBINED_UNIFORMS}
        uniform bool uProfileExposureRampEnabled;
        uniform float uProfileExposureRampSlope;
        uniform float uProfileExposureRampBlack;
        uniform float uProfileExposureRampRadius;
        uniform float uProfileExposureRampQScale;
        uniform bool uProfileExposureSupportOverrange;
        uniform bool uProfileExposureToneEnabled;
        uniform float uProfileExposureToneSlope;
        uniform float uProfileExposureToneA;
        uniform float uProfileExposureToneB;
        uniform float uProfileExposureToneC;
    """.trimIndent()
    val CURVE_COMBINED_FUNCTIONS = """
        float sampleBaseCurve(float value) {
            if (!uCurveEnabled || uCurveSize <= 1.0) {
                return value;
            }
            value = clamp(value, 0.0, 1.0);
            float coordX = value * ((uCurveSize - 1.0) / uCurveSize) + (0.5 / uCurveSize);
            return texture(uCurveTexture, vec2(coordX, 0.5)).r;
        }

        float sampleProfileToneCurve(float value) {
            value = clamp(value, 0.0, 1.0);
            return sampleBaseCurve(applyProfileExposureToneValue(value));
        }

        float sampleProfileToneCurveOverrange(float value) {
            if (!(value > 1.0)) {
                return sampleProfileToneCurve(max(value, 0.0));
            }
            const float dx = 0.001;
            float y1 = sampleProfileToneCurve(1.0);
            float slope = (y1 - sampleProfileToneCurve(1.0 - dx)) / dx;
            return y1 + slope * (value - 1.0);
        }

        void adobeRgbTone(inout float maxValue, inout float midValue, inout float minValue) {
            float oldMax = maxValue;
            float oldMid = midValue;
            float oldMin = minValue;
            maxValue = uProfileExposureSupportOverrange
                ? sampleProfileToneCurveOverrange(oldMax)
                : sampleProfileToneCurve(oldMax);
            minValue = uProfileExposureSupportOverrange
                ? sampleProfileToneCurveOverrange(oldMin)
                : sampleProfileToneCurve(oldMin);
            if (abs(oldMax - oldMin) < 1e-6) {
                midValue = minValue;
            } else {
                midValue = minValue + ((maxValue - minValue) * (oldMid - oldMin) / (oldMax - oldMin));
            }
        }

        vec3 applyAdobeCurve(vec3 color) {
            color = uProfileExposureSupportOverrange
                ? vec3(
                    encodeProfileOverrangeValue(color.r),
                    encodeProfileOverrangeValue(color.g),
                    encodeProfileOverrangeValue(color.b)
                )
                : clamp(color, vec3(0.0), vec3(1.0));
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
                    r = uProfileExposureSupportOverrange
                        ? sampleProfileToneCurveOverrange(r)
                        : sampleProfileToneCurve(r);
                    g = uProfileExposureSupportOverrange
                        ? sampleProfileToneCurveOverrange(g)
                        : sampleProfileToneCurve(g);
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

            vec3 toned = vec3(r, g, b);
            if (uProfileExposureSupportOverrange) {
                return vec3(
                    decodeProfileOverrangeValue(toned.r),
                    decodeProfileOverrangeValue(toned.g),
                    decodeProfileOverrangeValue(toned.b)
                );
            }
            return clamp(toned, vec3(0.0), vec3(1.0));
        }
    """.trimIndent()
    val ADOBE_PROFILE_COMBINED_FUNCTIONS = """
        float clampDcpTableCoordinate(float value) {
            return clamp(value, 0.0, 1.0);
        }

        float encodeProfileOverrangeValue(float value) {
            value = max(value, 0.0);
            return value * (256.0 + value) / (256.0 * (1.0 + value));
        }

        float decodeProfileOverrangeValue(float value) {
            value = max(value, 0.0);
            float discriminant = max(64.0 * value * value - 127.0 * value + 64.0, 0.0);
            return 16.0 * (8.0 * value - 8.0 + sqrt(discriminant));
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
            bool encodeOverrange = uProfileExposureSupportOverrange && divisions.z > 1;
            vec3 mapColor = max(color, vec3(0.0));
            if (encodeOverrange) {
                mapColor = vec3(
                    encodeProfileOverrangeValue(mapColor.r),
                    encodeProfileOverrangeValue(mapColor.g),
                    encodeProfileOverrangeValue(mapColor.b)
                );
            }
            vec3 hsv = rgbToDcpHsv(mapColor);
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

            vec3 mapped = dcpHsvToRgb(hsv);
            if (encodeOverrange) {
                mapped = vec3(
                    decodeProfileOverrangeValue(mapped.r),
                    decodeProfileOverrangeValue(mapped.g),
                    decodeProfileOverrangeValue(mapped.b)
                );
            }
            return mapped;
        }

        float applyProfileExposureRampValue(float value) {
            float black = uProfileExposureRampBlack;
            float radius = uProfileExposureRampRadius;
            if (value <= black - radius) {
                return 0.0;
            }
            if (value >= black + radius) {
                float ramped = max((value - black) * uProfileExposureRampSlope, 0.0);
                return uProfileExposureSupportOverrange ? ramped : min(ramped, 1.0);
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
            return ramped;
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
            } else {
                color = applyDcpLookTable(color);
                color = applyProfileExposureRamp(color);
            }
            return color;
        }
    """.trimIndent()
    val ADOBE_COMBINED_FUNCTIONS = """
        vec3 applyEngineTone(vec3 color) {
            color = applyAdobeCurve(color);
            return uOutputTransform * color;
        }
    """.trimIndent()

    val DEFINITION = RawEngineToneShaderDefinition(
        engineUniforms = ADOBE_COMBINED_UNIFORMS,
        engineFunctions = "$CURVE_COMBINED_FUNCTIONS\n$ADOBE_COMBINED_FUNCTIONS",
        profileUniforms = ADOBE_PROFILE_COMBINED_UNIFORMS,
        profileFunctions = ADOBE_PROFILE_COMBINED_FUNCTIONS,
        includeAdobeProfilePipeline = true,
    )
}

internal class AdobeCurveToneAlgorithm(
    quad: RawFullscreenQuad,
    private val dcpTextures: DcpTextureResources,
    private val curveTextures: RawCurveTextureResources,
) : RawRenderingEngineToneAlgorithm(quad, AdobeCurveToneShader.DEFINITION) {

    override fun bindEngineResources(program: Int, input: RawEngineTonePass.Input) {
        val hueSatMap = input.dcpRenderPlan?.hueSatMap?.takeIf {
            input.applyDcpHueSatMap && it.isValid
        }
        val lookTable = input.dcpRenderPlan?.lookTable?.takeIf { it.isValid }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        val hueSatTextureId = hueSatMap?.let(dcpTextures::ensureHueSatTexture)
        bindDcpTable(
            program = program,
            textureUnit = 2,
            textureUniform = "uDcpHueSatTexture",
            enabledUniform = "uDcpHueSatEnabled",
            divisionsUniform = "uDcpHueSatDivisions",
            encodingUniform = "uDcpHueSatEncoding",
            table = hueSatMap,
            textureId = hueSatTextureId,
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
        val lookTableTextureId = lookTable?.let(dcpTextures::ensureLookTableTexture)
        bindDcpTable(
            program = program,
            textureUnit = 3,
            textureUniform = "uDcpLookTableTexture",
            enabledUniform = "uDcpLookTableEnabled",
            divisionsUniform = "uDcpLookTableDivisions",
            encodingUniform = "uDcpLookTableEncoding",
            table = lookTable,
            textureId = lookTableTextureId,
        )
        RawProfileExposureGl.bindUniforms(program, input.profileExposure)
        curveTextures.bind(
            program = program,
            curve = input.dcpRenderPlan?.toneCurveLut ?: ACR3Curve.samples(),
        )
        RawGlesProgram.logErrors("AdobeCurveToneAlgorithm.bindEngineResources")
    }

    private fun bindDcpTable(
        program: Int,
        textureUnit: Int,
        textureUniform: String,
        enabledUniform: String,
        divisionsUniform: String,
        encodingUniform: String,
        table: DcpHueSatMap?,
        textureId: Int?,
    ) {
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, textureUniform), textureUnit)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, enabledUniform),
            if (table != null) 1 else 0,
        )
        GLES30.glUniform3i(
            GLES30.glGetUniformLocation(program, divisionsUniform),
            table?.hueDivisions ?: 1,
            table?.satDivisions ?: 1,
            table?.valueDivisions ?: 1,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, encodingUniform),
            table?.encoding ?: DcpHueSatMap.ENCODING_LINEAR,
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + textureUnit)
        GLES30.glBindTexture(
            GLES30.GL_TEXTURE_3D,
            textureId ?: dcpTextures.ensureDummyTexture(),
        )
    }
}
