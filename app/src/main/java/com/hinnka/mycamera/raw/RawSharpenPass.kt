package com.hinnka.mycamera.raw

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog

/** Runs the legacy linear unsharp-mask fallback. */
internal class RawSharpenPass(
    private val quad: RawFullscreenQuad,
) {
    data class Input(
        val textureId: Int,
        val targetFramebufferId: Int,
        val targetTextureId: Int,
        val width: Int,
        val height: Int,
        val strength: Float,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    private var program = 0

    fun initialize(): Boolean = getOrCreateProgram() != 0

    fun render(input: Input): Output? {
        val activeProgram = getOrCreateProgram()
        if (activeProgram == 0) {
            PLog.e(TAG, "Unable to create RAW sharpen program")
            return null
        }
        GLES30.glUseProgram(activeProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.targetFramebufferId)
        GLES30.glViewport(0, 0, input.width, input.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, input.textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(activeProgram, "uTexelSize"),
            1f / input.width.coerceAtLeast(1),
            1f / input.height.coerceAtLeast(1),
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uSharpening"),
            input.strength.coerceIn(0f, RawSharpeningDefaults.MAX_ALGORITHM_STRENGTH),
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(activeProgram, "uRadius"), DEFAULT_RADIUS)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uThreshold"),
            DEFAULT_THRESHOLD,
        )
        quad.bindIdentityTextureMatrix(activeProgram)
        quad.draw(activeProgram)
        RawGlesProgram.logErrors("RawSharpenPass.render")
        return Output(input.targetTextureId, input.width, input.height)
    }

    fun release() {
        if (program != 0) {
            GLES30.glDeleteProgram(program)
            program = 0
        }
    }

    private fun getOrCreateProgram(): Int {
        if (program == 0) program = quad.createProgram(FRAGMENT_SHADER, "rawSharpen")
        return program
    }

    companion object {
        private const val TAG = "RawSharpenPass"
        const val DEFAULT_RADIUS = 2.0f
        const val DEFAULT_THRESHOLD = 0.005f

        val FRAGMENT_SHADER = """
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
    }
}
