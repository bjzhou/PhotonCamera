package com.hinnka.mycamera.raw

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * Phocus HNCS color-correction and selectable FilmCurve path.
 *
 * The camera matrix is applied by the linear RAW pass. The exact 65,536-entry
 * B, C, and E curves come from the original Phocus CGradationManager.
 */
internal object HncsToneShader {
    val HNCS_COMBINED_UNIFORMS = """
        uniform sampler2D uHncsColorMapTexture;
        uniform sampler2D uHncsCurveTexture;
        uniform int uHncsColorMapEnabled;
        uniform ivec2 uHncsColorMapSize;
        uniform vec3 uHncsColorMapGrid;
        uniform mat3 uHncsRgbToYcc;
        uniform mat3 uHncsYccToRgb;
        uniform vec2 uHncsGrayThresholds;
        uniform vec4 uHncsLowLightDesaturation;
        uniform float uHncsFilmCurveGain;
        uniform int uHncsGammaFilterEnabled;
        uniform float uHncsGamma;
        uniform float uHncsHdrMaxGain;
        uniform float uHncsHdrRgbLimit;
        uniform int uHncsDiagnosticStage;
    """.trimIndent()
    val HNCS_COMBINED_FUNCTIONS = """
        const float HNCS_EPSILON = 0.000001;
        const float HNCS_CURVE_SAMPLE_COUNT = 65536.0;
        const vec2 HNCS_CURVE_TEXTURE_DIMENSIONS = vec2(256.0, 256.0);

        vec2 hncsFetchColorMap(ivec2 point) {
            return texelFetch(uHncsColorMapTexture, point, 0).rg;
        }

        vec2 hncsSampleColorMap(vec2 grid) {
            vec2 maximum = vec2(uHncsColorMapSize - ivec2(1));
            grid = clamp(grid, vec2(0.0), maximum);
            ivec2 lower = ivec2(floor(grid));
            vec2 fraction = fract(grid);
            lower = clamp(
                lower,
                ivec2(0),
                uHncsColorMapSize - ivec2(2)
            );
            ivec2 upper = lower + ivec2(1);
            vec2 row0 = mix(
                hncsFetchColorMap(ivec2(lower.x, lower.y)),
                hncsFetchColorMap(ivec2(upper.x, lower.y)),
                fraction.x
            );
            vec2 row1 = mix(
                hncsFetchColorMap(ivec2(lower.x, upper.y)),
                hncsFetchColorMap(ivec2(upper.x, upper.y)),
                fraction.x
            );
            return mix(row0, row1, fraction.y);
        }

        float hncsColorMapWeight(vec3 source, float luma) {
            float grayWeight = 1.0;
            float grayRange = uHncsGrayThresholds.y - uHncsGrayThresholds.x;
            float average = (source.r + source.g + source.b) / 3.0;
            if (grayRange > HNCS_EPSILON && abs(average) > HNCS_EPSILON) {
                vec3 distanceFromAverage = abs(source - vec3(average));
                float relativeDistance =
                    max(distanceFromAverage.r, max(distanceFromAverage.g, distanceFromAverage.b)) /
                    abs(average);
                grayWeight = clamp(
                    (relativeDistance - uHncsGrayThresholds.x) / grayRange,
                    0.0,
                    1.0
                );
            }

            float luma16 = luma * 65535.0;
            if (luma16 < uHncsLowLightDesaturation.x) {
                float lowLightWeight =
                    uHncsLowLightDesaturation.y * luma16 * luma16 +
                    uHncsLowLightDesaturation.z * luma16 +
                    uHncsLowLightDesaturation.w;
                grayWeight = min(grayWeight, lowLightWeight);
            }
            return clamp(grayWeight, 0.0, 1.0);
        }

        vec3 hncsApplyCameraColorMap(vec3 color) {
            if (uHncsColorMapEnabled == 0 ||
                uHncsColorMapSize.x < 2 ||
                uHncsColorMapSize.y < 2) {
                return color;
            }
            // ColorCorrectAll clamps camera-domain input before its input matrix.
            // This pass receives the already transformed HNCS value, so applying
            // a second [0,1] clamp here would incorrectly destroy matrix overrange.
            vec3 source = color;
            vec3 ycc = uHncsRgbToYcc * source;
            if (!(ycc.x > HNCS_EPSILON)) {
                return source;
            }
            vec2 position =
                uHncsColorMapGrid.z * ycc.yz / ycc.x -
                uHncsColorMapGrid.xy;
            vec2 mapped = hncsSampleColorMap(position);
            float colorMapWeight = hncsColorMapWeight(source, ycc.x);
            vec2 normalizedChroma =
                mapped * ycc.x * colorMapWeight / uHncsColorMapGrid.z;
            return uHncsYccToRgb * vec3(ycc.x, normalizedChroma);
        }

        float hncsSampleFilmCurve(float value) {
            // Match Phocus filmCurveShader: keep the 65,536-entry index in highp
            // floating point and sample at normalized texel centers. A mediump
            // fragment integer cannot represent 65,535/65,536 on every GLES
            // driver and collapses the lookup to the zero sample.
            float sampleIndex = clamp(
                floor(value * HNCS_CURVE_SAMPLE_COUNT),
                0.0,
                HNCS_CURVE_SAMPLE_COUNT - 1.0
            );
            vec2 coordinate = vec2(
                0.5 + floor(mod(sampleIndex, HNCS_CURVE_TEXTURE_DIMENSIONS.x)),
                0.5 + floor(sampleIndex / HNCS_CURVE_TEXTURE_DIMENSIONS.x)
            ) / HNCS_CURVE_TEXTURE_DIMENSIONS;
            return texture(
                uHncsCurveTexture,
                coordinate
            ).r;
        }

        vec3 hncsApplyFilmCurve(vec3 color) {
            float gain = max(uHncsFilmCurveGain, HNCS_EPSILON);
            vec3 source = max(color, vec3(0.0)) / gain;
            return vec3(
                hncsSampleFilmCurve(source.r),
                hncsSampleFilmCurve(source.g),
                hncsSampleFilmCurve(source.b)
            );
        }

        vec3 hncsGammaEncode(vec3 color) {
            return pow(
                max(color * uHncsHdrMaxGain, vec3(0.0)),
                vec3(1.0 / uHncsGamma)
            ) / uHncsHdrRgbLimit;
        }

        vec3 applyEngineTone(vec3 color) {
            if (uHncsDiagnosticStage == 1) {
                return color;
            }
            color = hncsApplyCameraColorMap(color);
            if (uHncsDiagnosticStage == 2) {
                return color;
            }
            color = hncsApplyFilmCurve(color);
            if (uHncsDiagnosticStage == 3) {
                return color;
            }
            if (uHncsGammaFilterEnabled != 0) {
                color = hncsGammaEncode(color);
            }
            if (uHncsDiagnosticStage == 4) {
                return color;
            }
            return color;
        }
    """.trimIndent()

    val DEFINITION = RawEngineToneShaderDefinition(
        engineUniforms = HNCS_COMBINED_UNIFORMS,
        engineFunctions = HNCS_COMBINED_FUNCTIONS,
        includeAdobeProfilePipeline = false,
    )
}

internal class HncsToneAlgorithm(quad: RawFullscreenQuad) :
    RawRenderingEngineToneAlgorithm(quad, HncsToneShader.DEFINITION) {
    private var colorMapTextureId = 0
    private var curveTextureId = 0
    private var colorMapTextureKey: String? = null
    private var curveTextureKey: String? = null

    override fun bindEngineResources(program: Int, input: RawEngineTonePass.Input) {
        super.bindEngineResources(program, input)
        val renderPlan = requireNotNull(input.hncsRenderPlan) {
            "HNCS engine requires a validated render plan"
        }
        ensureTextures(renderPlan)
        val colorMap = renderPlan.colorMap?.takeIf {
            input.colorEngine.usesHncsColorMap && it.isValid && colorMapTextureId != 0
        }
        require(!input.colorEngine.usesHncsColorMap || colorMap != null) {
            "HNCS LUT branch requires an uploaded, validated color map"
        }
        require(curveTextureId != 0) { "HNCS film curve texture was not uploaded" }

        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uHncsColorMapTexture"), 2)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uHncsCurveTexture"), 3)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        GLES30.glBindTexture(
            GLES30.GL_TEXTURE_2D,
            if (colorMap != null) colorMapTextureId else curveTextureId,
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, curveTextureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uHncsColorMapEnabled"),
            if (colorMap != null) 1 else 0,
        )
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(program, "uHncsColorMapSize"),
            colorMap?.width ?: 1,
            colorMap?.height ?: 1,
        )
        GLES30.glUniform3f(
            GLES30.glGetUniformLocation(program, "uHncsColorMapGrid"),
            colorMap?.cbStart ?: 0f,
            colorMap?.crStart ?: 0f,
            colorMap?.divFactor ?: 1f,
        )
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uHncsRgbToYcc"),
            1,
            false,
            transpose3x3(renderPlan.rgbToYccMatrix),
            0,
        )
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uHncsYccToRgb"),
            1,
            false,
            transpose3x3(renderPlan.yccToRgbMatrix),
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
        RawGlesProgram.logErrors("HncsToneAlgorithm.bindEngineResources")
    }

    override fun releaseEngineResources() {
        if (colorMapTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(colorMapTextureId), 0)
            colorMapTextureId = 0
        }
        if (curveTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(curveTextureId), 0)
            curveTextureId = 0
        }
        colorMapTextureKey = null
        curveTextureKey = null
    }

    private fun ensureTextures(renderPlan: HncsRenderPlan) {
        val filmCurveKey = "${renderPlan.filmCurveAssetPath}|${renderPlan.filmCurveAssetSha256}"
        var uploaded = false
        if (curveTextureKey != filmCurveKey || curveTextureId == 0) {
            curveTextureId = uploadRgbaTexture(
                existingTextureId = curveTextureId,
                width = HncsProfileManager.CURVE_TEXTURE_EDGE,
                height = HncsProfileManager.CURVE_TEXTURE_EDGE,
                values = renderPlan.filmCurveTexture,
            )
            curveTextureKey = filmCurveKey
            uploaded = true
        }
        renderPlan.colorMap?.takeIf(HncsColorMap::isValid)?.let { colorMap ->
            if (colorMapTextureKey != renderPlan.sourceKey || colorMapTextureId == 0) {
                val rgba = FloatArray(colorMap.width * colorMap.height * 4)
                var sourceIndex = 0
                var targetIndex = 0
                while (sourceIndex < colorMap.values.size) {
                    rgba[targetIndex++] = colorMap.values[sourceIndex++]
                    rgba[targetIndex++] = colorMap.values[sourceIndex++]
                    rgba[targetIndex++] = 0f
                    rgba[targetIndex++] = 1f
                }
                colorMapTextureId = uploadRgbaTexture(
                    existingTextureId = colorMapTextureId,
                    width = colorMap.width,
                    height = colorMap.height,
                    values = rgba,
                )
                colorMapTextureKey = renderPlan.sourceKey
                uploaded = true
            }
        }
        if (uploaded) {
            PLog.d(
                TAG,
                "HNCS resources uploaded: profile=${renderPlan.profileId} " +
                    "map=${renderPlan.colorMap?.let { "${it.width}x${it.height}" } ?: "none"} " +
                    "curves=${HncsProfileManager.CURVE_SAMPLE_COUNT}",
            )
        }
    }

    private fun uploadRgbaTexture(
        existingTextureId: Int,
        width: Int,
        height: Int,
        values: FloatArray,
    ): Int {
        require(width > 0 && height > 0 && values.size == width * height * 4) {
            "Invalid HNCS RGBA texture payload: ${width}x$height values=${values.size}"
        }
        val textureId = existingTextureId.takeIf { it != 0 }
            ?: IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
        val buffer = ByteBuffer.allocateDirect(values.size * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(values)
                position(0)
            }
        // Avoid inheriting GL_TEXTURE0 from the image-input binding.
        GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGBA16F,
            width,
            height,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            buffer,
        )
        return textureId
    }

    private fun transpose3x3(matrix: FloatArray): FloatArray {
        require(matrix.size == 9) { "Expected a 3x3 matrix" }
        return floatArrayOf(
            matrix[0], matrix[3], matrix[6],
            matrix[1], matrix[4], matrix[7],
            matrix[2], matrix[5], matrix[8],
        )
    }

    private companion object {
        const val TAG = "HncsToneAlgorithm"
    }
}
