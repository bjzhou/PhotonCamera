package com.hinnka.mycamera.raw

import android.opengl.GLES30

/** Applies one DNG WarpRectilinear opcode with the DNG bicubic sampling contract. */
internal class RawWarpRectilinearPass(
    private val quad: RawFullscreenQuad,
) {
    data class Input(
        val textureId: Int,
        val targetFramebufferId: Int,
        val targetTextureId: Int,
        val width: Int,
        val height: Int,
        val parameters: FloatArray,
    )

    data class Output(val textureId: Int, val width: Int, val height: Int)

    private var program = 0
    val isReady: Boolean get() = program != 0

    fun initialize(): Boolean = getOrCreateProgram() != 0

    fun render(input: Input): Output? {
        if (input.parameters.size != PARAMETER_COUNT) return null
        val activeProgram = getOrCreateProgram()
        if (activeProgram == 0) return null
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.targetFramebufferId)
        GLES30.glViewport(0, 0, input.width, input.height)
        GLES30.glUseProgram(activeProgram)
        quad.bindIdentityTextureMatrix(activeProgram)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, input.textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uSourceTexture"), 0)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(activeProgram, "uImageSize"),
            input.width.toFloat(),
            input.height.toFloat(),
        )
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(activeProgram, "uRadial"),
            input.parameters[0],
            input.parameters[1],
            input.parameters[2],
            input.parameters[3],
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(activeProgram, "uTangential"),
            input.parameters[4],
            input.parameters[5],
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(activeProgram, "uCenter"),
            input.parameters[6],
            input.parameters[7],
        )
        quad.draw(activeProgram)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        RawGlesProgram.logErrors("RawWarpRectilinearPass.render")
        return Output(input.targetTextureId, input.width, input.height)
    }

    fun release() {
        if (program != 0) {
            GLES30.glDeleteProgram(program)
            program = 0
        }
    }

    private fun getOrCreateProgram(): Int {
        if (program == 0) program = quad.createProgram(FRAGMENT_SHADER, "warpRectilinear")
        return program
    }

    companion object {
        private const val PARAMETER_COUNT = 8

        val FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uSourceTexture;
            uniform vec2 uImageSize;
            uniform vec4 uRadial;
            uniform vec2 uTangential;
            uniform vec2 uCenter;

            float bicubicWeight(float x) {
                const float A = -0.75;
                x = abs(x);
                if (x >= 2.0) return 0.0;
                if (x >= 1.0) return ((A * x - 5.0 * A) * x + 8.0 * A) * x - 4.0 * A;
                return ((A + 2.0) * x - (A + 3.0)) * x * x + 1.0;
            }

            vec4 sampleDngBicubic(vec2 sourcePixel) {
                ivec2 imageMax = ivec2(uImageSize) - ivec2(1);
                sourcePixel = clamp(sourcePixel, vec2(0.0), uImageSize - vec2(1.0));
                vec2 base = floor(sourcePixel);
                vec2 fraction = floor((sourcePixel - base) * 32.0) * (1.0 / 32.0);
                vec4 total = vec4(0.0);
                float totalWeight = 0.0;
                for (int y = -1; y <= 2; ++y) {
                    float wy = bicubicWeight(float(y) - fraction.y);
                    for (int x = -1; x <= 2; ++x) {
                        float weight = bicubicWeight(float(x) - fraction.x) * wy;
                        ivec2 pixel = clamp(ivec2(base) + ivec2(x, y), ivec2(0), imageMax);
                        total += texelFetch(uSourceTexture, pixel, 0) * weight;
                        totalWeight += weight;
                    }
                }
                return total / max(totalWeight, 1e-8);
            }

            void main() {
                vec2 centerPx = uCenter * uImageSize;
                vec2 dstPx = gl_FragCoord.xy - vec2(0.5);
                vec2 diff = dstPx - centerPx;
                vec2 farthest = max(centerPx, uImageSize - centerPx);
                float normRadius = max(length(farthest), 1.0);
                vec2 normalized = diff / normRadius;
                float r2 = min(dot(normalized, normalized), 1.0);
                float ratio = uRadial.x + uRadial.y * r2 +
                    uRadial.z * r2 * r2 + uRadial.w * r2 * r2 * r2;
                float dh = normalized.x;
                float dv = normalized.y;
                vec2 tangent = vec2(
                    uTangential.y * (r2 + 2.0 * dh * dh) + 2.0 * uTangential.x * dh * dv,
                    uTangential.x * (r2 + 2.0 * dv * dv) + 2.0 * uTangential.y * dh * dv
                );
                vec2 srcPx = centerPx + normRadius * (normalized * ratio + tangent);
                fragColor = sampleDngBicubic(srcPx);
            }
        """.trimIndent()
    }
}
