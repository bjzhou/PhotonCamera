package com.hinnka.mycamera.raw

import android.opengl.GLES30
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * NEP1 YC1 per-pixel chain (docs/om-system-nep1-rendering.md): CMX -> 6-axis CHM -> RGB gamma ->
 * RGB->YCbCr -> natural vision -> luma gamma -> chroma suppression. Integer stages follow the
 * DC13 simulation used by OM Workspace for NEP1 RAW files.
 */
internal object OmSystemToneShader {
    val DEFINITION = RawEngineToneShaderDefinition(
        engineUniforms = """
            uniform highp sampler2D uOmTables;
            uniform highp float uOmSceneToSensorGain;
            uniform highp ivec3 uOmCameraMatrix[3];
            uniform highp ivec3 uOmChmSaturation[2];
            uniform highp ivec3 uOmChmHue[2];
            uniform highp ivec2 uOmChromaGain;
            uniform highp ivec4 uOmChromaSuppression;
            uniform highp int uOmNvEnable;
            uniform highp ivec4 uOmNvHue[12];
            uniform highp ivec4 uOmNvSaturation[12];
            uniform highp ivec4 uOmNvLuma[12];
            uniform highp ivec4 uOmNvOffset[12];
        """.trimIndent(),
        engineFunctions = """
            const int OM_TONE_ROW = ${OmSystemProfile.TONE_CURVE_ROW};
            const int OM_LUMA_ROW = ${OmSystemProfile.LUMA_GAMMA_ROW};
            const int OM_NV_ROW = ${OmSystemProfile.NATURAL_VISION_FIRST_ROW};
            const int OM_NV_SLOPE_X = ${OmSystemProfile.NATURAL_VISION_SLOPE_X};
            const float OM_HUE_TURN = 32768.0;
            const float OM_TWO_PI = 6.283185307179586;

            int omTable(int x, int row) {
                return int(texelFetch(uOmTables, ivec2(x, row), 0).r);
            }

            // CYC::SetRGBGammaTable: 256 knots every 64 codes of the 14-bit input.
            int omToneCurve(int value) {
                int magnitude = min(abs(value), 16383);
                int knot = magnitude >> 6;
                int low = omTable(knot, OM_TONE_ROW);
                int curve = knot >= 255 ? low :
                    low + (((omTable(knot + 1, OM_TONE_ROW) - low) * (magnitude & 63) + 32) >> 6);
                curve = min(curve, 4095);
                return value < 0 ? -curve : curve;
            }

            // CYC::SetYGammaTable: 256 knots expanded to 1024 entries.
            int omLumaGamma(int luma) {
                int knot = luma >> 2;
                int low = omTable(knot, OM_LUMA_ROW);
                if (knot >= 255) return low;
                return low + ((2 + (luma & 3) * (omTable(knot + 1, OM_LUMA_ROW) - low)) >> 2);
            }

            // CYC::ChromaGammaRGB sector matrix; components are R, G, B / Ye, Cy, Mg.
            ivec3 omChroma(ivec3 c) {
                int r = c.r; int g = c.g; int b = c.b;
                ivec3 s1 = uOmChmSaturation[0]; ivec3 s2 = uOmChmSaturation[1];
                ivec3 h1 = uOmChmHue[0]; ivec3 h2 = uOmChmHue[1];
                ivec3 d;
                if (r < b) {
                    if (g < b) {
                        if (r < g) {
                            d = ivec3(-(b - g) * h1.b,
                                      (b - g) * h1.b + (g - r) * (h2.g + s2.g),
                                      (b - g) * s1.b + (g - r) * (s2.g - h2.g));
                        } else {
                            d = ivec3(-(b - r) * h1.b + (r - g) * (s2.b - h2.b),
                                      (b - r) * h1.b,
                                      (b - r) * s1.b + (r - g) * (h2.b + s2.b));
                        }
                    } else {
                        d = ivec3((g - b) * h1.g,
                                  (g - b) * s1.g + (b - r) * (h2.g + s2.g),
                                  -(g - b) * h1.g + (b - r) * (s2.g - h2.g));
                    }
                } else if (r < g) {
                    d = ivec3((g - r) * h1.g + (r - b) * (h2.r + s2.r),
                              (g - r) * s1.g + (r - b) * (s2.r - h2.r),
                              -(g - r) * h1.g);
                } else if (g < b) {
                    d = ivec3((r - b) * s1.r + (b - g) * (s2.b - h2.b),
                              -(r - b) * h1.r,
                              (r - b) * h1.r + (b - g) * (h2.b + s2.b));
                } else {
                    d = ivec3((r - g) * s1.r + (g - b) * (h2.r + s2.r),
                              -(r - g) * h1.r + (g - b) * (s2.r - h2.r),
                              (r - g) * h1.r);
                }
                return clamp((c * 128 + d + 64) >> 7, ivec3(-32767), ivec3(32767));
            }

            int omNvPosition(int delta, ivec4 range) {
                return min((delta * range.z * 256 + (1 << (range.w + 7))) >> (range.w + 8), 256);
            }

            int omNvWeight(int kindRow, int area, int position) {
                if (position > 256) return 63;
                int segment = position >= 240 ? 15 : position >> 4;
                int x = area * 16 + segment;
                int base = omTable(x, kindRow);
                int slope = omTable(OM_NV_SLOPE_X + x, kindRow);
                return clamp(base + (((position - segment * 16) * slope + 8) >> 4), -63, 63);
            }

            int omNvProduct(int value) {
                if (value <= -4065) return -64;
                if (value >= 4000) return 63;
                return (value + 32) >> 6;
            }

            // CNV::NV on 10-bit YCbCr; returns Y in 10 bits and Cb/Cr in 8 bits.
            ivec3 omNaturalVision(int luma, int cb, int cr) {
                int hue = int(floor(atan(float(cr), float(cb)) * (OM_HUE_TURN / OM_TWO_PI) + 0.5));
                if (hue < 0) hue += 32768;
                if (hue >= 32768) hue -= 32768;
                int saturation = int(floor(length(vec2(float(cb), float(cr))) + 0.5));
                int hueDelta = 0;
                int saturationDelta = 0;
                int lumaDelta = 0;
                for (int group = 0; group < 2; ++group) {
                    int rowBase = OM_NV_ROW + group * 7;
                    for (int index = 0; index < 6; ++index) {
                        int area = group * 6 + index;
                        if (((uOmNvEnable >> area) & 1) == 0) continue;
                        ivec4 hueRange = uOmNvHue[area];
                        ivec4 saturationRange = uOmNvSaturation[area];
                        ivec4 lumaRange = uOmNvLuma[area];
                        int relativeHue = hue - hueRange.x;
                        if (relativeHue < 0) relativeHue += 32768;
                        if (relativeHue > hueRange.y) continue;
                        int relativeSaturation = saturation - saturationRange.x;
                        if (relativeSaturation < 0 || relativeSaturation > saturationRange.y) continue;
                        int lumaPosition = 258;
                        if (lumaRange.x != 0 || lumaRange.y != 0) {
                            int relativeLuma = luma - lumaRange.x;
                            if (relativeLuma < 0 || relativeLuma > lumaRange.y) continue;
                            lumaPosition = omNvPosition(relativeLuma, lumaRange);
                        }
                        int huePosition = omNvPosition(relativeHue, hueRange);
                        int saturationPosition = omNvPosition(relativeSaturation, saturationRange);
                        ivec4 offset = uOmNvOffset[area];
                        int lumaWeight = omNvWeight(rowBase + 5, index, lumaPosition);
                        int groupHue = (omNvProduct(omNvProduct(
                            omNvWeight(rowBase, index, huePosition) *
                            omNvWeight(rowBase + 2, index, saturationPosition)) * lumaWeight) * offset.x + 32) >> 6;
                        int groupSaturation = (omNvProduct(omNvProduct(
                            omNvWeight(rowBase + 1, index, huePosition) *
                            omNvWeight(rowBase + 3, index, saturationPosition)) * lumaWeight) * offset.y + 32) >> 6;
                        int shiftedHuePosition = max(omNvPosition(relativeHue + groupHue, hueRange), 0);
                        int groupLuma = (omNvProduct(omNvProduct(
                            omNvWeight(rowBase + 6, index, shiftedHuePosition) *
                            omNvWeight(rowBase + 4, index, saturationPosition)) * lumaWeight) * offset.z + 32) >> 6;
                        hueDelta += groupHue;
                        saturationDelta += groupSaturation;
                        lumaDelta += groupLuma;
                        break;
                    }
                }
                int correctedHue = hue + hueDelta;
                if (correctedHue < 0) correctedHue += 32768;
                if (correctedHue >= 32768) correctedHue -= 32768;
                int correctedSaturation = clamp(saturation + saturationDelta, 0, 1023);
                float angle = float(correctedHue) * (OM_TWO_PI / OM_HUE_TURN);
                ivec2 chroma = clamp(ivec2(floor(float(correctedSaturation) *
                    vec2(cos(angle), sin(angle)) * 0.25 + 0.5)), ivec2(-128), ivec2(127));
                return ivec3(clamp(luma + lumaDelta, 0, 1023), chroma);
            }

            // CYC::SuppressC level table (KEGn below YC1_Y, KEG2 above), 8-bit max(Y, R, G, B).
            int omChromaSuppression(int luma, ivec3 rgb) {
                ivec3 rgb8 = min(abs(rgb) >> 4, ivec3(255));
                int level = min(max(max(luma >> 2, rgb8.r), max(rgb8.g, rgb8.b)), 255);
                ivec4 p = uOmChromaSuppression;
                int value = level < p.z ? (level - p.y) * p.x : (level - p.z) * p.w;
                int amount = value >= 4096 ? 256 : (value > 15 ? value >> 4 : 0);
                return (256 - amount) >> 1;
            }

            vec3 applyEngineTone(vec3 color) {
                // Input: white-balanced OM-1 Mark II camera RGB in the DNG scene reference, after
                // shared PGTM/BaselineExposure. The tone curve's domain is OM sensor saturation.
                vec3 sensor = color * uOmSceneToSensorGain;
                ivec3 camera = ivec3(floor(clamp(sensor, 0.0, 1.0) * 16384.0));
                ivec3 linearRgb = clamp((ivec3(
                    uOmCameraMatrix[0].x * camera.r + uOmCameraMatrix[0].y * camera.g + uOmCameraMatrix[0].z * camera.b,
                    uOmCameraMatrix[1].x * camera.r + uOmCameraMatrix[1].y * camera.g + uOmCameraMatrix[1].z * camera.b,
                    uOmCameraMatrix[2].x * camera.r + uOmCameraMatrix[2].y * camera.g + uOmCameraMatrix[2].z * camera.b
                ) + 64) >> 7, ivec3(-32767), ivec3(32767));
                ivec3 chroma = omChroma(linearRgb);
                ivec3 rgb = ivec3(omToneCurve(chroma.r), omToneCurve(chroma.g), omToneCurve(chroma.b));

                int lumaSum = 153 * rgb.r + 301 * rgb.g + 58 * rgb.b;
                int luma10 = clamp((lumaSum + 1024) >> 11, 0, 1023);
                int luma12 = (lumaSum + 256) >> 9;
                int cb10 = clamp(((rgb.b - luma12) * uOmChromaGain.x + 512) >> 10, -512, 511);
                int cr10 = clamp(((rgb.r - luma12) * uOmChromaGain.y + 512) >> 10, -512, 511);
                ivec3 ycc = omNaturalVision(luma10, cb10, cr10);
                int gammaLuma = omLumaGamma(ycc.x);
                int suppression = omChromaSuppression(gammaLuma, rgb);

                // Enhancer output: unit colour differences (Cb = B - Y, Cr = R - Y) in display RGB.
                float y = float(gammaLuma) / 1023.0;
                vec2 difference = vec2(ycc.yz * suppression) / 32768.0;
                float red = y + difference.y;
                float blue = y + difference.x;
                float green = (y - (153.0 / 512.0) * red - (58.0 / 512.0) * blue) * (512.0 / 301.0);
                vec3 encodedSrgb = clamp(vec3(red, green, blue), 0.0, 1.0);
                // Shared adjustments require linear sRGB and the output pass encodes once.
                bvec3 high = greaterThan(encodedSrgb, vec3(0.04045));
                vec3 low = encodedSrgb / 12.92;
                vec3 upper = pow((encodedSrgb + 0.055) / 1.055, vec3(2.4));
                return vec3(high.r ? upper.r : low.r, high.g ? upper.g : low.g,
                            high.b ? upper.b : low.b);
            }
        """.trimIndent(),
    )
}

internal class OmSystemToneAlgorithm(quad: RawFullscreenQuad) :
    RawRenderingEngineToneAlgorithm(quad, OmSystemToneShader.DEFINITION) {
    private var texture = 0
    private var uploadedTables: FloatArray? = null

    override fun bindEngineResources(program: Int, input: RawEngineColorResources) {
        super.bindEngineResources(program, input)
        val plan = requireNotNull(input.omSystemRenderPlan) { "OM System requires an NEP1 render plan" }
        ensureTexture(plan.tables)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + TEXTURE_UNIT)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        fun location(name: String) = GLES30.glGetUniformLocation(program, name)
        GLES30.glUniform1i(location("uOmTables"), TEXTURE_UNIT)
        GLES30.glUniform1f(location("uOmSceneToSensorGain"), plan.sceneToSensorGain)
        GLES30.glUniform3iv(location("uOmCameraMatrix[0]"), 3, plan.cameraMatrix, 0)
        GLES30.glUniform3iv(location("uOmChmSaturation[0]"), 2, plan.chromaSaturation, 0)
        GLES30.glUniform3iv(location("uOmChmHue[0]"), 2, plan.chromaHue, 0)
        GLES30.glUniform2i(location("uOmChromaGain"), plan.cbGain, plan.crGain)
        GLES30.glUniform4iv(location("uOmChromaSuppression"), 1, plan.chromaSuppression, 0)
        GLES30.glUniform1i(location("uOmNvEnable"), plan.naturalVisionEnableMask)
        val areas = OmSystemProfile.NATURAL_VISION_AREAS
        GLES30.glUniform4iv(location("uOmNvHue[0]"), areas, plan.naturalVisionHue, 0)
        GLES30.glUniform4iv(location("uOmNvSaturation[0]"), areas, plan.naturalVisionSaturation, 0)
        GLES30.glUniform4iv(location("uOmNvLuma[0]"), areas, plan.naturalVisionLuma, 0)
        GLES30.glUniform4iv(location("uOmNvOffset[0]"), areas, plan.naturalVisionOffset, 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        RawGlesProgram.logErrors("OmSystemToneAlgorithm.bindEngineResources")
    }

    private fun ensureTexture(tables: FloatArray) {
        if (texture != 0 && uploadedTables === tables) return
        require(tables.size == OmSystemProfile.TABLE_WIDTH * OmSystemProfile.TABLE_HEIGHT)
        releaseEngineResources()
        val limit = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_IMAGE_UNITS, limit, 0)
        check(limit[0] > TEXTURE_UNIT) { "OM System texture unit unavailable" }
        val unpackAlignment = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_UNPACK_ALIGNMENT, unpackAlignment, 0)
        try {
            val names = IntArray(1)
            GLES30.glGenTextures(1, names, 0)
            texture = names[0]
            check(texture != 0) { "Unable to allocate OM System table texture" }
            val buffer = ByteBuffer.allocateDirect(tables.size * Float.SIZE_BYTES)
                .order(ByteOrder.nativeOrder()).asFloatBuffer()
            buffer.put(tables).position(0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + TEXTURE_UNIT)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_R32F,
                OmSystemProfile.TABLE_WIDTH, OmSystemProfile.TABLE_HEIGHT)
            GLES30.glTexSubImage2D(GLES30.GL_TEXTURE_2D, 0, 0, 0,
                OmSystemProfile.TABLE_WIDTH, OmSystemProfile.TABLE_HEIGHT, GLES30.GL_RED, GLES30.GL_FLOAT, buffer)
            val error = GLES30.glGetError()
            check(error == GLES30.GL_NO_ERROR) { "OM System table upload failed: GL error=$error" }
            uploadedTables = tables
        } catch (error: Throwable) {
            releaseEngineResources()
            throw error
        } finally {
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, unpackAlignment[0])
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        }
    }

    override fun releaseEngineResources() {
        if (texture != 0) GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
        texture = 0
        uploadedTables = null
    }

    private companion object {
        // Engines are exclusive; PGTM uses 7 and HDR reference uses 2/4.
        const val TEXTURE_UNIT = 10
    }
}
