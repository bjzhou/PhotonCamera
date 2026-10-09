package com.hinnka.mycamera.raw

import android.opengl.GLES30
import java.nio.ByteBuffer
import java.nio.ByteOrder

internal object CanonToneShader {
    val DEFINITION = RawEngineToneShaderDefinition(
        engineUniforms = """
            uniform highp sampler2D uCanonRecipeTables;
            uniform ivec4 uCanonWords[90];
            ${CanonIccShader.UNIFORMS}
        """.trimIndent(),
        engineFunctions = """
            ${CanonIccShader.FUNCTIONS}

            int canonWord(int index) { return uCanonWords[index / 4][index % 4]; }
            int canonLookup(int index) {
                return int(texelFetch(uCanonRecipeTables, ivec2(index % 1024, index / 1024), 0).r);
            }
            int canonChromaWord(int i) { return canonWord(0x122 + i); }
            int canonChromaSector(int code, int first, int second) {
                int quadrant = (code >> 5) & 3;
                int u = quadrant < 2 ? ~first : first;
                int v = quadrant == 1 || quadrant == 2 ? ~second : second;
                int angle = code & 63;
                int a = angle > 31 ? 64 - angle : angle;
                int b = angle > 31 ? angle - 32 : 32 - angle;
                int value = a * u + b * v;
                int mode = (code >> 8) & 7;
                int result = value;
                if (mode == 0) result = (value * 3) >> 6;
                else if (mode == 1) result = value >> 4;
                else if (mode == 2) result = (value * 3) >> 5;
                else if (mode == 3) result = value >> 3;
                else if (mode == 4) result = (value * 3) >> 4;
                else if (mode == 5) result = (((value * 3) >> 1) + value * 3) >> 4;
                else if (mode == 6) result = value >> 1;
                return clamp(result, 0, 1023);
            }
            int canonChromaRadialScale(int value, int code) {
                int mode = (code >> 11) & 7;
                int result = value * 8;
                if (mode == 0) result = (value * 3) >> 2;
                else if (mode == 1) result = value;
                else if (mode == 2) result = (value >> 2) + value;
                else if (mode == 3) result = (value * 3) >> 1;
                else if (mode == 4) result = value * 2;
                else if (mode == 5) result = value * 3;
                else if (mode == 6) result = ((value * 3) >> 1) + value * 3;
                return min(1023, result);
            }
            int canonChromaShift(int value, int amount) {
                return amount < 0 ? value >> (-amount & 31) : value << (amount & 31);
            }
            ivec2 canonCorrectChroma(int u, int v, int colorLuma) {
                // R5's six recipes enable only region 0 and diagonal gains;
                // CanonR5ChromaMath.validate checks this before uploading the block.
                int li = colorLuma >> 4;
                int delta = li - canonChromaWord(8);
                int threshold = canonChromaWord(3) & 2047;
                if (canonChromaWord(4) != 0) {
                    threshold = min(2047, delta < 0 ?
                        ((canonChromaWord(5) * li) >> 7) + threshold :
                        ((canonChromaWord(6) * clamp(delta, 0, 1023)) >> 7) + canonChromaWord(7));
                }
                int sectorA = canonChromaSector(canonChromaWord(21), u >> 4, v >> 4);
                int sectorB = canonChromaSector(canonChromaWord(22), u >> 4, v >> 4);
                int sectorWeight = (canonChromaWord(21) & 128) != 0 ? max(sectorA, sectorB) : min(sectorA, sectorB);
                int ru = clamp(canonChromaShift(u, canonChromaWord(25) - 4), -1024, 1023);
                int rv = clamp(canonChromaShift(v, canonChromaWord(25) - 4), -1024, 1023);
                ru = ru < 0 ? ~ru : ru;
                rv = rv < 0 ? ~rv : rv;
                int radius = max(ru + rv * 2, rv + ru * 2);
                int innerWeight = canonChromaRadialScale(clamp(radius - threshold * 2, 0, 2047), canonChromaWord(23));
                int outerWeight = canonChromaRadialScale(clamp((canonChromaWord(24) & 2047) * 2 - radius, 0, 2047), canonChromaWord(24));
                int light = clamp(canonChromaShift(colorLuma, canonChromaWord(28) - 4), 0, 1023);
                int lower = min(clamp(light * 2 - (canonChromaWord(26) & 2047), 0, 1023) << ((canonChromaWord(26) >> 11) & 3), 1023);
                int upper = min(clamp((canonChromaWord(27) & 2047) - light * 2, 0, 1023) << ((canonChromaWord(27) >> 11) & 3), 1023);
                int weight = min(min(sectorWeight, min(innerWeight, outerWeight)), min(lower, upper));
                int gainU = (canonChromaWord(49) * weight) >> 7;
                int gainV = (canonChromaWord(59) * weight) >> 7;
                return clamp(ivec2(u + ((u * gainU) >> 10), v + ((v * gainV) >> 10)), ivec2(-16384), ivec2(16383)) * 2;
            }
            int canonY(int value) {
                int inputCode = value * canonWord(2) / canonWord(3);
                inputCode = clamp(min(inputCode, 131071), 0, canonWord(0x68));
                return canonLookup(inputCode);
            }
            int canonC(int value, int monoOffset) {
                int code = clamp(value, -131071, 131071);
                if (canonWord(0xf) == 1) code += monoOffset;
                if (code < 0) return 2 * canonLookup(131072) - canonLookup(131072 - code);
                return canonLookup(131072 + min(code, canonWord(0x86)));
            }
            int canonWeightIndex(int value, int limit) {
                return min(value * canonWord(0x76) * 4 / 4096, limit);
            }
            ivec3 canonRecipe(ivec3 rgb) {
                int blue = rgb.b; int green = rgb.g; int red = rgb.r;
                int scale = canonWord(2); int divisor = canonWord(3);
                int preLimit = canonWord(0x84);
                int b = min(blue * 2 * scale / divisor, preLimit);
                int g = min(green * 2 * scale / divisor, preLimit);
                int r = min(red * 2 * scale / divisor, preLimit);
                int ri = canonWeightIndex(r, canonWord(0x70));
                int gi = canonWeightIndex(g, canonWord(0x72));
                int bi = canonWeightIndex(b, canonWord(0x74));
                int li = clamp((gi + bi * 2 + ri) / 128, 0, 1023);
                int di = (gi - ri) / 32;
                int dj = clamp((gi - bi) / 32, 0, 1023);
                b = min(b, canonWord(0x6e));
                g = min(g, canonWord(0x6c));
                r = min(r, canonWord(0x6a));

                // Original 0x027990 supplies the fourth plane from this same input RGB.
                int auxiliary = (red * 0x4c8 + green * 0x964 + blue * 0x1d4) / 4096;
                int initialU = (blue * 0x800 - green * 0x54c - red * 0x2b3) / 4096;
                int initialV = (red * 0x800 - green * 0x6b2 - blue * 0x14d) / 4096;
                int reconstructedB = (auxiliary * 0xfff + 0x800 + initialU * 0x1c56) / 4096 * 2;
                int reconstructedG = (auxiliary * 0x1002 - initialV * 0xb6d - initialU * 0x584 + 0x800) / 4096 * 2;
                int reconstructedR = ((initialV * 0xb37 + auxiliary * 0x800 - initialU) * 2 + 0x800) / 4096 * 2;
                int y = clamp((canonY(reconstructedR) * canonWord(0x2a) +
                               canonY(reconstructedG) * canonWord(0x2b) +
                               canonY(reconstructedB) * canonWord(0x2c) + 0x800) / 4096, 0, 65535);

                int firstDifference = clamp((canonWord(0x12) * (b - g) + canonWord(0x10) * (r - g)) / 1024, -131072, 131072);
                int secondDifference = clamp((canonWord(0x1a) * (b - g) + canonWord(0x18) * (r - g)) / 1024, -131072, 131072);
                int differenceBase = di >= 0 ? 329728 : 327680;
                int weight = min(canonLookup(328704 + li), canonLookup(differenceBase + min(abs(di), 1023)));
                weight = min(weight, canonLookup(330752 + dj));
                int firstGain = canonWord(firstDifference > 0 ? 0x25 : 0x26);
                int secondGain = canonWord(secondDifference > 0 ? 0x23 : 0x24);
                int firstOffset = min((weight * firstDifference / 1024) * firstGain / 128, canonWord(0x88));
                int secondOffset = min((weight * secondDifference / 1024) * secondGain / 128, canonWord(0x88));
                int base = (canonWord(0x1d) * g + canonWord(0x1e) * b + canonWord(0x1c) * r) / 1024;
                int colorFirst = base + firstOffset;
                int colorThird = base + secondOffset;
                int colorSecond = ((base * 9 - colorThird) * 0x600 - colorFirst * 0x1000) / 0x2000;
                int c1 = canonC(colorFirst, canonWord(0x2d));
                int c2 = canonC(colorSecond, canonWord(0x2e));
                int c3 = canonC(colorThird, canonWord(0x2f));
                int d1 = clamp((c3 * 0x800 - c2 * 0x550 - c1 * 0x2b0) / 4096, -32768, 32767);
                int d2 = clamp((c1 * 0x800 - c2 * 0x6b0 - c3 * 0x150) / 4096, -32768, 32767);
                int dominant = abs(d1) < abs(d2) ? d2 : d1;
                int gain = canonLookup(262144 + dominant + 32768);
                int first = gain * d1 / 256;
                int second = gain * d2 / 256;
                int coeff1 = canonWord(0x21) + (second <= 0 ? canonWord(0x1f) : 0);
                int coeff2 = canonWord(0x22) + (first <= 0 ? canonWord(0x20) : 0);
                int mixedFirst = clamp(first + coeff1 * second / 8192, -32768, 32767);
                int mixedSecond = clamp(second + coeff2 * first / 8192, -32768, 32767);
                int colorWeighted = (canonWord(0x163) << 16 >> 16) * c1 +
                    (canonWord(0x163) >> 16) * c2 + (canonWord(0x164) << 16 >> 16) * c3;
                int colorLuma = (colorWeighted + ((colorWeighted >> 31) & 63)) >> 8;
                ivec2 uv = canonCorrectChroma(mixedFirst >> 1, mixedSecond >> 1, colorLuma);
                return ivec3((y >> 2) * 4, uv);
            }
            ivec3 canonYuvToRgb(ivec3 yuv) {
                // CDppRecipedYUV2RGBProc 0x206090, ordinary path.
                int y = yuv.x; int u = yuv.y; int v = yuv.z;
                return clamp(ivec3(
                    ((v * 0xb37 + y * 0x800 - u) * 2 + 0x800) / 4096,
                    (y * 0x1002 - v * 0xb6d - u * 0x584 + 0x800) / 4096,
                    (y * 0xfff + u * 0x1c56 + 0x800) / 4096
                ), ivec3(0), ivec3(65535));
            }
            vec3 applyEngineTone(vec3 color) {
                // Original default 0x20302 levels are 14-bit with white code 16383.
                // WB, PGTM and exposure have already been applied by the shared pipeline.
                ivec3 inputCode = ivec3(clamp(color * 16383.0, 0.0, 65535.0));
                vec3 encoded = vec3(canonYuvToRgb(canonRecipe(inputCode))) / 65535.0;
                if (canonWord(0xf) == 1) {
                    return mix(encoded / 12.92, pow((encoded + 0.055) / 1.055, vec3(2.4)),
                               step(vec3(0.04045), encoded));
                }
                return canonIccToLinearSrgb(encoded);
            }
        """.trimIndent(),
    )
}

internal class CanonToneAlgorithm(quad: RawFullscreenQuad) :
    RawRenderingEngineToneAlgorithm(quad, CanonToneShader.DEFINITION) {
    private var tableTexture = 0
    private var uploadedPlan: CanonRenderPlan? = null
    private var iccResources: CanonIccGlResources? = null

    override fun bindEngineResources(program: Int, input: RawEngineColorResources) {
        super.bindEngineResources(program, input)
        val plan = requireNotNull(input.canonRenderPlan) { "Canon requires an EOS R5 render plan" }
        if (uploadedPlan !== plan) upload(plan)
        // 2 and 4 belong to public HDR; 7 belongs to PGTM in this same program.
        requireNotNull(iccResources).bind(program, 8)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + 11)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, tableTexture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uCanonRecipeTables"), 11)
        GLES30.glUniform4iv(GLES30.glGetUniformLocation(program, "uCanonWords[0]"), 90, plan.kernelWords, 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        RawGlesProgram.logErrors("CanonToneAlgorithm.bindEngineResources")
    }

    private fun upload(plan: CanonRenderPlan) {
        releaseEngineResources()
        val limit = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_IMAGE_UNITS, limit, 0)
        check(limit[0] > 11) { "Canon rendering requires texture units 0 through 11" }
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, limit, 0)
        check(maxOf(CanonProfile.ATLAS_WIDTH, CanonProfile.ATLAS_HEIGHT) <= limit[0]) {
            "Canon recipe atlas exceeds the device texture size limit"
        }
        val previousAlignment = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_UNPACK_ALIGNMENT, previousAlignment, 0)
        try {
            val id = IntArray(1)
            GLES30.glGenTextures(1, id, 0)
            tableTexture = id[0]
            check(tableTexture != 0) { "Unable to allocate Canon recipe texture" }
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + 11)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, tableTexture)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
            val data = ByteBuffer.allocateDirect(plan.lookupAtlas.size * 4).order(ByteOrder.nativeOrder()).asFloatBuffer()
            data.put(plan.lookupAtlas).position(0)
            GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_R32F,
                CanonProfile.ATLAS_WIDTH, CanonProfile.ATLAS_HEIGHT, 0, GLES30.GL_RED, GLES30.GL_FLOAT, data)
            check(GLES30.glGetError() == GLES30.GL_NO_ERROR) { "Canon recipe texture upload failed" }
            iccResources = CanonIccGlResources(plan.icc)
            uploadedPlan = plan
        } catch (error: Throwable) {
            releaseEngineResources()
            throw error
        } finally {
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, previousAlignment[0])
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        }
    }

    override fun releaseEngineResources() {
        if (tableTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(tableTexture), 0)
        tableTexture = 0
        iccResources?.release()
        iccResources = null
        uploadedPlan = null
    }
}
