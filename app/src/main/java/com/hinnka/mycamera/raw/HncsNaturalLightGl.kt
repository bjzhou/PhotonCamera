package com.hinnka.mycamera.raw

import android.content.Context
import android.opengl.GLES30
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * GL resources shared by the live and bitmap Natural Light preview paths.
 *
 * A viewfinder/JPEG preview is already in linear sRGB after its input stage, so it cannot
 * truthfully enter the camera-domain HNCS color-map branch. Both HNCS selections therefore use
 * the HNCS CCM working-space conversion and the selected Phocus FilmCurve here. The camera-domain
 * LUT remains exclusive to the RAW renderer, where the sensor matrix, white balance and profile
 * metadata are available.
 */
internal class HncsNaturalLightGl(context: Context) {
    private val profileManager = HncsProfileManager(context.applicationContext)
    private val renderPlans = mutableMapOf<HncsFilmCurveMode, HncsRenderPlan>()
    private var curveTextureId = 0
    private var curveTextureKey: String? = null

    fun bindCombinedResources(
        program: Int,
        filmCurveMode: HncsFilmCurveMode,
    ) {
        val renderPlan = renderPlans.getOrPut(filmCurveMode) {
            profileManager.createCcmRenderPlan(filmCurveMode)
        }
        ensureCurveTexture(renderPlan)

        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uHncsColorMapTexture"),
            COLOR_MAP_TEXTURE_UNIT,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uHncsCurveTexture"),
            CURVE_TEXTURE_UNIT,
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + COLOR_MAP_TEXTURE_UNIT)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, curveTextureId)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + CURVE_TEXTURE_UNIT)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, curveTextureId)

        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uHncsColorMapEnabled"),
            0,
        )
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(program, "uHncsColorMapSize"),
            1,
            1,
        )
        GLES30.glUniform3f(
            GLES30.glGetUniformLocation(program, "uHncsColorMapGrid"),
            0f,
            0f,
            1f,
        )
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uHncsRgbToYcc"),
            1,
            false,
            RawToneMappingGl.transposeMatrix3x3(renderPlan.rgbToYccMatrix),
            0,
        )
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uHncsYccToRgb"),
            1,
            false,
            RawToneMappingGl.transposeMatrix3x3(renderPlan.yccToRgbMatrix),
            0,
        )
        GLES30.glUniform2fv(
            GLES30.glGetUniformLocation(program, "uHncsGrayThresholds"),
            1,
            renderPlan.colorCorrection.grayThresholds,
            0,
        )
        GLES30.glUniform4fv(
            GLES30.glGetUniformLocation(program, "uHncsLowLightDesaturation"),
            1,
            renderPlan.colorCorrection.lowLightDesaturation,
            0,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uHncsFilmCurveGain"),
            renderPlan.filmCurveGain,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uHncsGammaFilterEnabled"),
            if (renderPlan.gamma.filterEnabled) 1 else 0,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uHncsGamma"),
            renderPlan.gamma.gamma,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uHncsHdrMaxGain"),
            renderPlan.gamma.hdrMaxGain,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uHncsHdrRgbLimit"),
            renderPlan.gamma.hdrRgbLimit,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uHncsDiagnosticStage"),
            0,
        )
    }

    fun resetAfterContextLoss() {
        curveTextureId = 0
        curveTextureKey = null
    }

    fun release() {
        if (curveTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(curveTextureId), 0)
            curveTextureId = 0
        }
        curveTextureKey = null
    }

    private fun ensureCurveTexture(renderPlan: HncsRenderPlan) {
        val textureKey =
            "${renderPlan.filmCurveAssetPath}|${renderPlan.filmCurveAssetSha256}"
        if (curveTextureId != 0 && curveTextureKey == textureKey) return

        if (curveTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            curveTextureId = textures[0]
        }
        val values = renderPlan.filmCurveTexture
        require(
            values.size ==
                HncsProfileManager.CURVE_TEXTURE_EDGE *
                HncsProfileManager.CURVE_TEXTURE_EDGE *
                RGBA_CHANNEL_COUNT
        ) {
            "Invalid HNCS FilmCurve texture payload: ${values.size}"
        }
        val buffer = ByteBuffer.allocateDirect(values.size * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(values)
                position(0)
            }

        // Never upload on GL_TEXTURE0: callers keep their per-frame image source there.
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + CURVE_TEXTURE_UNIT)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, curveTextureId)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MIN_FILTER,
            GLES30.GL_NEAREST,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MAG_FILTER,
            GLES30.GL_NEAREST,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE,
        )
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGBA16F,
            HncsProfileManager.CURVE_TEXTURE_EDGE,
            HncsProfileManager.CURVE_TEXTURE_EDGE,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            buffer,
        )
        curveTextureKey = textureKey
    }

    private companion object {
        const val COLOR_MAP_TEXTURE_UNIT = 2
        const val CURVE_TEXTURE_UNIT = 3
        const val RGBA_CHANNEL_COUNT = 4
    }
}

/**
 * Fused equivalent of the RAW HNCS output-linear and sRGB passes for preview-sized images.
 *
 * Keeping this as one pass avoids another full-resolution RGBA16F viewfinder buffer while
 * preserving the same Gamma 2.2 decode, HNCS-to-output matrix and sRGB display encoding.
 */
internal object HncsNaturalLightOutputPassShaders {
    val FRAGMENT_SHADER = """
        #version 300 es
        precision highp float;

        in vec2 vTexCoord;
        out vec4 fragColor;

        uniform sampler2D uInputTexture;
        uniform mat3 uHncsToLinearOutput;
        uniform float uBlacks;
        uniform float uWhites;

        const vec3 BW_LUMA = vec3(0.2126, 0.7152, 0.0722);
        const float BW_EPSILON = 0.000001;

        vec3 gamma22Eotf(vec3 value) {
            return pow(max(value, vec3(0.0)), vec3(2.2));
        }

        float blackInputLevel(float blacks) {
            float value = clamp(blacks, -1.0, 1.0);
            return value < 0.0 ? -value * 0.18 : -value * 0.12;
        }

        float whiteInputLevel(float whites) {
            float value = clamp(whites, -1.0, 1.0);
            return value > 0.0 ? mix(1.0, 0.72, value) : mix(1.0, 1.55, -value);
        }

        vec3 applyBlackWhiteLevels(vec3 color) {
            float blacks = clamp(uBlacks, -1.0, 1.0);
            float whites = clamp(uWhites, -1.0, 1.0);
            if (abs(blacks) < 0.001 && abs(whites) < 0.001) {
                return color;
            }
            float blackLevel = blackInputLevel(blacks);
            float whiteLevel = max(whiteInputLevel(whites), blackLevel + 0.05);
            vec3 positiveColor = max(color, vec3(0.0));
            float luma = dot(positiveColor, BW_LUMA);
            float adjustedLuma =
                max((luma - blackLevel) / max(whiteLevel - blackLevel, BW_EPSILON), 0.0);
            if (luma <= BW_EPSILON) {
                return vec3(adjustedLuma);
            }
            return color * (adjustedLuma / luma);
        }

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

        void main() {
            vec4 sampleValue = texture(uInputTexture, vTexCoord);
            vec3 linearOutput = uHncsToLinearOutput * gamma22Eotf(sampleValue.rgb);
            linearOutput = applyBlackWhiteLevels(linearOutput);
            fragColor = vec4(linearToSrgb(linearOutput), sampleValue.a);
        }
    """.trimIndent()
}
