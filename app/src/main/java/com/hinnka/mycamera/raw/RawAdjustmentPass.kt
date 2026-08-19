package com.hinnka.mycamera.raw

import android.opengl.GLES30
import com.hinnka.mycamera.lut.ShadowsHighlightsShader
import com.hinnka.mycamera.utils.PLog
import kotlin.math.max

/** Applies the optional linear-domain shadows/highlights and black/white adjustments. */
internal class RawAdjustmentPass(
    private val quad: RawFullscreenQuad,
) {
    data class Input(
        val textureId: Int,
        val targetFramebufferId: Int,
        val targetTextureId: Int,
        val width: Int,
        val height: Int,
        val highlights: Float,
        val shadows: Float,
        val blacks: Float,
        val whites: Float,
    )

    data class Output(
        val textureId: Int,
        val width: Int,
        val height: Int,
    )

    private var program = 0
    private var loggedUniformLocations = false

    fun render(input: Input): Output? {
        val activeProgram = getOrCreateProgram()
        if (activeProgram == 0) {
            PLog.e(TAG, "Unable to create RAW adjustment program")
            return null
        }

        GLES30.glUseProgram(activeProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.targetFramebufferId)
        GLES30.glViewport(0, 0, input.width, input.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, input.textureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uInputTexture"),
            0,
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(activeProgram, "uTexelSize"),
            1f / max(1, input.width),
            1f / max(1, input.height),
        )

        val highlightsLocation = GLES30.glGetUniformLocation(activeProgram, "uHighlights")
        val shadowsLocation = GLES30.glGetUniformLocation(activeProgram, "uShadows")
        ShadowsHighlightsShader.bindUniformLocations(
            highlightsLocation = highlightsLocation,
            shadowsLocation = shadowsLocation,
            highlights = input.highlights,
            shadows = input.shadows,
        )
        if (!loggedUniformLocations) {
            loggedUniformLocations = true
            PLog.d(
                TAG,
                "RAW Shadows/Highlights uniforms: uHighlightsLoc=$highlightsLocation " +
                    "uShadowsLoc=$shadowsLocation",
            )
        }
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uBlacks"),
            input.blacks.coerceIn(-1f, 1f),
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uWhites"),
            input.whites.coerceIn(-1f, 1f),
        )
        quad.bindIdentityTextureMatrix(activeProgram)
        quad.draw(activeProgram)
        RawGlesProgram.logErrors("RawAdjustmentPass.render")
        return Output(input.targetTextureId, input.width, input.height)
    }

    fun release() {
        if (program != 0) {
            GLES30.glDeleteProgram(program)
            program = 0
        }
    }

    private fun getOrCreateProgram(): Int {
        if (program == 0) {
            program = quad.createProgram(FRAGMENT_SHADER, "rawAdjustment")
        }
        return program
    }

    companion object {
        private const val TAG = "RawAdjustmentPass"

        val FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uInputTexture;
            uniform vec2 uTexelSize;
            uniform float uHighlights;
            uniform float uShadows;
            uniform float uBlacks;
            uniform float uWhites;

            vec3 sampleToneSource(vec2 uv) {
                return texture(uInputTexture, clamp(uv, vec2(0.0), vec2(1.0))).rgb;
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
                if (abs(blacks) < 0.001 && abs(whites) < 0.001) return color;

                vec3 positiveColor = max(color, vec3(0.0));
                float luma = dot(positiveColor, BW_LUMA);
                float adjustedLuma = applyInputLevelsToLuma(luma, blacks, whites);
                if (luma <= BW_EPSILON) return vec3(adjustedLuma);
                return color * (adjustedLuma / luma);
            }

            void main() {
                vec3 color = texture(uInputTexture, vTexCoord).rgb;
                color = applyShadowsHighlights(color, vTexCoord);
                color = applyBlackWhiteLevels(color);
                fragColor = vec4(color, 1.0);
            }
        """.trimIndent()
    }
}
