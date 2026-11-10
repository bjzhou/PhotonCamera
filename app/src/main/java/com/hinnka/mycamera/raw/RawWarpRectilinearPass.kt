package com.hinnka.mycamera.raw

import android.opengl.GLES30

/**
 * Applies one DNG WarpRectilinear record ([DngWarpRectilinear.RECORD_SIZE] floats) with the DNG
 * bicubic sampling contract. Each RGB plane is resampled with its own geometry, which is how
 * lateral chromatic aberration is corrected; alpha follows the reference (green) plane.
 */
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
        val radial = FloatArray(DngWarpRectilinear.PLANES * 4)
        val tangential = FloatArray(DngWarpRectilinear.PLANES * 2)
        for (plane in 0 until DngWarpRectilinear.PLANES) {
            val offset = plane * DngWarpRectilinear.PLANE_COEFFICIENTS
            for (index in 0 until 4) radial[plane * 4 + index] = input.parameters[offset + index]
            tangential[plane * 2] = input.parameters[offset + 4]
            tangential[plane * 2 + 1] = input.parameters[offset + 5]
        }
        GLES30.glUniform4fv(
            GLES30.glGetUniformLocation(activeProgram, "uRadial"),
            DngWarpRectilinear.PLANES,
            radial,
            0,
        )
        GLES30.glUniform2fv(
            GLES30.glGetUniformLocation(activeProgram, "uTangential"),
            DngWarpRectilinear.PLANES,
            tangential,
            0,
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(activeProgram, "uCenter"),
            input.parameters[DngWarpRectilinear.CENTER_OFFSET],
            input.parameters[DngWarpRectilinear.CENTER_OFFSET + 1],
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uSharedGeometry"),
            if (DngWarpRectilinear.planesShareGeometry(input.parameters)) 1 else 0,
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
        private const val PARAMETER_COUNT = DngWarpRectilinear.RECORD_SIZE

        val FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp sampler2D;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uSourceTexture;
            uniform vec2 uImageSize;
            uniform vec4 uRadial[3];
            uniform vec2 uTangential[3];
            uniform vec2 uCenter;
            uniform int uSharedGeometry;

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

            vec2 sourcePixelForPlane(int plane, vec2 centerPx, float normRadius, vec2 normalized) {
                vec4 radial = uRadial[plane];
                vec2 tangential = uTangential[plane];
                float r2 = min(dot(normalized, normalized), 1.0);
                float ratio = radial.x + radial.y * r2 +
                    radial.z * r2 * r2 + radial.w * r2 * r2 * r2;
                float dh = normalized.x;
                float dv = normalized.y;
                vec2 tangent = vec2(
                    tangential.y * (r2 + 2.0 * dh * dh) + 2.0 * tangential.x * dh * dv,
                    tangential.x * (r2 + 2.0 * dv * dv) + 2.0 * tangential.y * dh * dv
                );
                return centerPx + normRadius * (normalized * ratio + tangent);
            }

            void main() {
                vec2 centerPx = uCenter * uImageSize;
                vec2 dstPx = gl_FragCoord.xy - vec2(0.5);
                vec2 farthest = max(centerPx, uImageSize - centerPx);
                float normRadius = max(length(farthest), 1.0);
                vec2 normalized = (dstPx - centerPx) / normRadius;
                vec4 green = sampleDngBicubic(sourcePixelForPlane(1, centerPx, normRadius, normalized));
                if (uSharedGeometry != 0) {
                    fragColor = green;
                    return;
                }
                float red = sampleDngBicubic(sourcePixelForPlane(0, centerPx, normRadius, normalized)).r;
                float blue = sampleDngBicubic(sourcePixelForPlane(2, centerPx, normRadius, normalized)).b;
                fragColor = vec4(red, green.g, blue, green.a);
            }
        """.trimIndent()
    }
}
