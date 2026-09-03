package com.hinnka.mycamera.raw

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog

/**
 * GPU-only adaptive unsharp mask for the final encoded RAW texture.
 *
 * The blur follows Phocus' separable 9-tap luminance USM structure. Adjacent Gaussian taps are
 * combined through bilinear sampling, reducing each direction from nine texture reads to five.
 */
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

    private var verticalBlurProgram = 0
    private var adaptiveUsmProgram = 0
    private var verticalBlurTextureId = 0
    private var verticalBlurFramebufferId = 0
    private var verticalBlurWidth = 0
    private var verticalBlurHeight = 0

    fun initialize(): Boolean =
        getOrCreateVerticalBlurProgram() != 0 && getOrCreateAdaptiveUsmProgram() != 0

    fun render(input: Input): Output? {
        val activeUsmProgram = getOrCreateAdaptiveUsmProgram()
        if (activeUsmProgram == 0) {
            PLog.e(TAG, "Unable to create RAW adaptive USM program")
            return null
        }
        val strength = input.strength.coerceIn(
            0f,
            RawSharpeningDefaults.MAX_ALGORITHM_STRENGTH,
        )
        if (strength <= 0f) {
            renderAdaptiveUsm(
                input = input,
                activeProgram = activeUsmProgram,
                blurredLumaTextureId = input.textureId,
                strength = 0f,
            )
            return Output(input.targetTextureId, input.width, input.height)
        }

        val activeVerticalProgram = getOrCreateVerticalBlurProgram()
        if (activeVerticalProgram == 0 || !ensureVerticalBlurTarget(input.width, input.height)) {
            PLog.e(TAG, "Unable to prepare RAW vertical luminance blur")
            return null
        }
        renderVerticalBlur(input, activeVerticalProgram)
        renderAdaptiveUsm(
            input = input,
            activeProgram = activeUsmProgram,
            blurredLumaTextureId = verticalBlurTextureId,
            strength = strength,
        )
        PLog.d(
            TAG,
            "RAW sharpen submitted path=GLES_SEPARABLE_ADAPTIVE_USM " +
                "size=${input.width}x${input.height} strength=$strength cpuReadback=false",
        )
        return Output(input.targetTextureId, input.width, input.height)
    }

    fun release() {
        if (verticalBlurProgram != 0) {
            GLES30.glDeleteProgram(verticalBlurProgram)
            verticalBlurProgram = 0
        }
        if (adaptiveUsmProgram != 0) {
            GLES30.glDeleteProgram(adaptiveUsmProgram)
            adaptiveUsmProgram = 0
        }
        releaseVerticalBlurTarget()
    }

    private fun renderVerticalBlur(input: Input, activeProgram: Int) {
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(activeProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, verticalBlurFramebufferId)
        GLES30.glViewport(0, 0, input.width, input.height)
        bindLinearClampTexture(input.textureId, 0)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uInputTexture"), 0)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(activeProgram, "uTexelSize"),
            1f / input.width.coerceAtLeast(1),
            1f / input.height.coerceAtLeast(1),
        )
        quad.bindIdentityTextureMatrix(activeProgram)
        quad.draw(activeProgram)
        RawGlesProgram.logErrors("RawSharpenPass.verticalBlur")
    }

    private fun renderAdaptiveUsm(
        input: Input,
        activeProgram: Int,
        blurredLumaTextureId: Int,
        strength: Float,
    ) {
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(activeProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.targetFramebufferId)
        GLES30.glViewport(0, 0, input.width, input.height)
        bindLinearClampTexture(input.textureId, 0)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uInputTexture"), 0)
        bindLinearClampTexture(blurredLumaTextureId, 1)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uVerticalBlurTexture"),
            1,
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(activeProgram, "uTexelSize"),
            1f / input.width.coerceAtLeast(1),
            1f / input.height.coerceAtLeast(1),
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uSharpening"),
            strength,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uNoiseLimit"),
            DEFAULT_NOISE_LIMIT,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uDarkLimit"),
            DEFAULT_DARK_LIMIT,
        )
        quad.bindIdentityTextureMatrix(activeProgram)
        quad.draw(activeProgram)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        RawGlesProgram.logErrors("RawSharpenPass.adaptiveUsm")
    }

    private fun bindLinearClampTexture(textureId: Int, textureUnit: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + textureUnit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MIN_FILTER,
            GLES30.GL_LINEAR,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MAG_FILTER,
            GLES30.GL_LINEAR,
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
    }

    private fun ensureVerticalBlurTarget(width: Int, height: Int): Boolean {
        if (verticalBlurWidth == width && verticalBlurHeight == height &&
            verticalBlurTextureId != 0 && verticalBlurFramebufferId != 0
        ) {
            return true
        }
        releaseVerticalBlurTarget()

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        verticalBlurTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, verticalBlurTextureId)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_R16F, width, height)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MIN_FILTER,
            GLES30.GL_LINEAR,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MAG_FILTER,
            GLES30.GL_LINEAR,
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

        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        verticalBlurFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, verticalBlurFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            verticalBlurTextureId,
            0,
        )
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            PLog.e(
                TAG,
                "RAW vertical blur framebuffer incomplete: status=0x${status.toString(16)} " +
                    "size=${width}x$height format=R16F",
            )
            releaseVerticalBlurTarget()
            return false
        }
        verticalBlurWidth = width
        verticalBlurHeight = height
        PLog.d(
            TAG,
            "RAW sharpen scratch ready fbo=$verticalBlurFramebufferId " +
                "texture=$verticalBlurTextureId size=${width}x$height format=R16F",
        )
        RawGlesProgram.logErrors("RawSharpenPass.ensureVerticalBlurTarget")
        return true
    }

    private fun releaseVerticalBlurTarget() {
        if (verticalBlurTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(verticalBlurTextureId), 0)
            verticalBlurTextureId = 0
        }
        if (verticalBlurFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(verticalBlurFramebufferId), 0)
            verticalBlurFramebufferId = 0
        }
        verticalBlurWidth = 0
        verticalBlurHeight = 0
    }

    private fun getOrCreateVerticalBlurProgram(): Int {
        if (verticalBlurProgram == 0) {
            verticalBlurProgram = quad.createProgram(
                VERTICAL_BLUR_FRAGMENT_SHADER,
                "rawSharpenVerticalBlur",
            )
        }
        return verticalBlurProgram
    }

    private fun getOrCreateAdaptiveUsmProgram(): Int {
        if (adaptiveUsmProgram == 0) {
            adaptiveUsmProgram = quad.createProgram(
                ADAPTIVE_USM_FRAGMENT_SHADER,
                "rawSharpenAdaptiveUsm",
            )
        }
        return adaptiveUsmProgram
    }

    companion object {
        private const val TAG = "RawSharpenPass"
        const val DEFAULT_RADIUS = 2.0f
        const val DEFAULT_THRESHOLD = 0.005f
        const val DEFAULT_NOISE_LIMIT = DEFAULT_THRESHOLD + 128f / 16384f
        const val DEFAULT_DARK_LIMIT = 0.08f

        val VERTICAL_BLUR_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;

            in vec2 vTexCoord;
            layout(location = 0) out float blurredLuma;

            uniform sampler2D uInputTexture;
            uniform vec2 uTexelSize;

            const vec3 YCC_LUMA = vec3(0.299, 0.587, 0.114);
            const float WEIGHT_CENTER = 0.2041637;
            const float WEIGHT_PAIR_12 = 0.3040053;
            const float WEIGHT_PAIR_34 = 0.0939128;
            const float OFFSET_PAIR_12 = 1.4073334;
            const float OFFSET_PAIR_34 = 3.2942149;

            float lumaAt(vec2 coordinate) {
                return dot(texture(uInputTexture, coordinate).rgb, YCC_LUMA);
            }

            void main() {
                vec2 axis = vec2(0.0, uTexelSize.y);
                blurredLuma = lumaAt(vTexCoord) * WEIGHT_CENTER;
                blurredLuma +=
                    (lumaAt(vTexCoord - axis * OFFSET_PAIR_12) +
                     lumaAt(vTexCoord + axis * OFFSET_PAIR_12)) * WEIGHT_PAIR_12;
                blurredLuma +=
                    (lumaAt(vTexCoord - axis * OFFSET_PAIR_34) +
                     lumaAt(vTexCoord + axis * OFFSET_PAIR_34)) * WEIGHT_PAIR_34;
            }
        """.trimIndent()

        val ADAPTIVE_USM_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uInputTexture;
            uniform sampler2D uVerticalBlurTexture;
            uniform vec2 uTexelSize;
            uniform float uSharpening;
            uniform float uNoiseLimit;
            uniform float uDarkLimit;

            const vec3 YCC_LUMA = vec3(0.299, 0.587, 0.114);
            const float SHARPEN_VALUE_RANGE = 16384.0;
            const float MIN_NOISE_RANGE = 128.0 / SHARPEN_VALUE_RANGE;
            const float WEIGHT_CENTER = 0.2041637;
            const float WEIGHT_PAIR_12 = 0.3040053;
            const float WEIGHT_PAIR_34 = 0.0939128;
            const float OFFSET_PAIR_12 = 1.4073334;
            const float OFFSET_PAIR_34 = 3.2942149;

            float verticalBlurAt(vec2 coordinate) {
                return texture(uVerticalBlurTexture, coordinate).r;
            }

            float horizontalBlur(vec2 coordinate) {
                vec2 axis = vec2(uTexelSize.x, 0.0);
                float value = verticalBlurAt(coordinate) * WEIGHT_CENTER;
                value +=
                    (verticalBlurAt(coordinate - axis * OFFSET_PAIR_12) +
                     verticalBlurAt(coordinate + axis * OFFSET_PAIR_12)) * WEIGHT_PAIR_12;
                value +=
                    (verticalBlurAt(coordinate - axis * OFFSET_PAIR_34) +
                     verticalBlurAt(coordinate + axis * OFFSET_PAIR_34)) * WEIGHT_PAIR_34;
                return value;
            }

            float noiseGate(float absoluteDetail) {
                float noiseRange = max(uNoiseLimit * 0.25, MIN_NOISE_RANGE);
                float transitionStart = max(uNoiseLimit - noiseRange, 0.0);
                return clamp((absoluteDetail - transitionStart) / noiseRange, 0.0, 1.0);
            }

            void main() {
                vec4 center = texture(uInputTexture, vTexCoord);
                if (uSharpening <= 0.0) {
                    fragColor = center;
                    return;
                }

                float centerLuma = dot(center.rgb, YCC_LUMA);
                float detail = centerLuma - horizontalBlur(vTexCoord);
                float darkGate = smoothstep(0.0, max(uDarkLimit, 1e-5), centerLuma);
                float factor = uSharpening * noiseGate(abs(detail)) * darkGate;
                vec3 result = center.rgb + vec3(detail * factor);
                fragColor = vec4(clamp(result, 0.0, 1.0), center.a);
            }
        """.trimIndent()
    }
}
