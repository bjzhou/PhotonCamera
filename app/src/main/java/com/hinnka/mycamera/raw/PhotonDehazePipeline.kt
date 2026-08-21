package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.util.Half
import com.hinnka.mycamera.processor.PhotonDehazeTuning
import com.hinnka.mycamera.utils.DirectBufferAllocator
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * Standalone low-frequency dehaze pipeline.
 *
 * The source is linear profile/working RGB. An 8x8 box reduction establishes the same
 * low-frequency boundary used by MGC ProcessLowFrequency, CPU histogram analysis constructs the
 * DehazeAndDha curve, and a separate full-resolution pass applies one chromaticity-preserving gain
 * to all RGB channels. Tone mapping, gamma, color styling, denoise and sharpening are not part of
 * this class.
 */
internal class PhotonDehazePipeline(
    private val quad: RawFullscreenQuad,
) {
    data class Output(
        val textureId: Int,
        val curve: PhotonDehazeCurveParameters,
    )

    private var downsampleProgram = 0
    private var applyProgram = 0
    private var lowFrequencyTextureId = 0
    private var lowFrequencyFramebufferId = 0
    private var lowFrequencyWidth = 0
    private var lowFrequencyHeight = 0
    private var readbackBuffer: ByteBuffer? = null
    private var readbackBufferSize = 0

    fun initialize(): Boolean = getOrCreateDownsampleProgram() != 0 && getOrCreateApplyProgram() != 0

    fun render(
        sourceTextureId: Int,
        targetFramebufferId: Int,
        targetTextureId: Int,
        width: Int,
        height: Int,
        tuning: PhotonDehazeTuning,
    ): Output? {
        val normalizedTuning = tuning.normalized()
        require(normalizedTuning.isActive) { "Photon dehaze render requested while disabled" }
        require(sourceTextureId != 0 && targetFramebufferId != 0 && targetTextureId != 0) {
            "Photon dehaze requires valid source and destination resources"
        }
        require(sourceTextureId != targetTextureId) {
            "Photon dehaze requires a linear RGB ping-pong destination"
        }
        require(width > 0 && height > 0) { "Invalid Photon dehaze dimensions" }
        if (!initialize()) return null

        val lowWidth = (width + DOWNSAMPLE_FACTOR - 1) / DOWNSAMPLE_FACTOR
        val lowHeight = (height + DOWNSAMPLE_FACTOR - 1) / DOWNSAMPLE_FACTOR
        setupLowFrequencyFramebuffer(lowWidth, lowHeight)
        renderLowFrequencyBox(sourceTextureId, width, height, lowWidth, lowHeight)
        val curve = readHistogramAndEstimate(lowWidth, lowHeight, normalizedTuning) ?: return null
        renderCurve(
            sourceTextureId = sourceTextureId,
            targetFramebufferId = targetFramebufferId,
            width = width,
            height = height,
            curve = curve,
        )
        PLog.i(
            TAG,
            "Photon dehaze applied size=${width}x$height low=${lowWidth}x$lowHeight " +
                "samples=${curve.sampledPixelCount} " +
                "hazePoints=${curve.hazePointLow},${curve.hazePointHigh} " +
                "highlightScale=${curve.highlightScale} " +
                "detectedHighlightScale=${curve.detectedHighlightScale} " +
                "strength=${normalizedTuning.strength} " +
                "dynamicHighlightStrength=${normalizedTuning.dynamicHighlightStrength}",
        )
        return Output(targetTextureId, curve)
    }

    fun release() {
        if (downsampleProgram != 0) {
            GLES30.glDeleteProgram(downsampleProgram)
            downsampleProgram = 0
        }
        if (applyProgram != 0) {
            GLES30.glDeleteProgram(applyProgram)
            applyProgram = 0
        }
        if (lowFrequencyTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(lowFrequencyTextureId), 0)
            lowFrequencyTextureId = 0
        }
        if (lowFrequencyFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(lowFrequencyFramebufferId), 0)
            lowFrequencyFramebufferId = 0
        }
        lowFrequencyWidth = 0
        lowFrequencyHeight = 0
        readbackBuffer?.let(DirectBufferAllocator::freeNative)
        readbackBuffer = null
        readbackBufferSize = 0
    }

    private fun setupLowFrequencyFramebuffer(width: Int, height: Int) {
        if (lowFrequencyFramebufferId != 0 &&
            lowFrequencyTextureId != 0 &&
            lowFrequencyWidth == width &&
            lowFrequencyHeight == height
        ) {
            return
        }
        if (lowFrequencyTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(lowFrequencyTextureId), 0)
        }
        if (lowFrequencyFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(lowFrequencyFramebufferId), 0)
        }
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        lowFrequencyTextureId = textures[0]
        check(lowFrequencyTextureId != 0) { "Unable to allocate Photon dehaze texture" }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, lowFrequencyTextureId)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        lowFrequencyFramebufferId = framebuffers[0]
        check(lowFrequencyFramebufferId != 0) { "Unable to allocate Photon dehaze framebuffer" }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, lowFrequencyFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            lowFrequencyTextureId,
            0,
        )
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        check(status == GLES30.GL_FRAMEBUFFER_COMPLETE) {
            "Photon dehaze framebuffer incomplete: 0x${status.toString(16)}"
        }
        lowFrequencyWidth = width
        lowFrequencyHeight = height
        requireNoGlError("setup low-frequency framebuffer")
    }

    private fun renderLowFrequencyBox(
        sourceTextureId: Int,
        sourceWidth: Int,
        sourceHeight: Int,
        outputWidth: Int,
        outputHeight: Int,
    ) {
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, lowFrequencyFramebufferId)
        GLES30.glUseProgram(downsampleProgram)
        GLES30.glViewport(0, 0, outputWidth, outputHeight)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(downsampleProgram, "uLinearRgb"),
            0,
        )
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(downsampleProgram, "uSourceSize"),
            sourceWidth,
            sourceHeight,
        )
        quad.bindIdentityTextureMatrix(downsampleProgram)
        quad.draw(downsampleProgram)
        requireNoGlError("low-frequency box reduction")
    }

    private fun readHistogramAndEstimate(
        width: Int,
        height: Int,
        tuning: PhotonDehazeTuning,
    ): PhotonDehazeCurveParameters? {
        val byteCountLong = width.toLong() * height.toLong() * 4L * Short.SIZE_BYTES
        if (byteCountLong <= 0L || byteCountLong > Int.MAX_VALUE) return null
        val byteCount = byteCountLong.toInt()
        val buffer = obtainReadbackBuffer(byteCount)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, lowFrequencyFramebufferId)
        GLES30.glReadBuffer(GLES30.GL_COLOR_ATTACHMENT0)
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 8)
        buffer.clear()
        buffer.limit(byteCount)
        GLES30.glReadPixels(
            0,
            0,
            width,
            height,
            GLES30.GL_RGBA,
            GLES30.GL_HALF_FLOAT,
            buffer,
        )
        requireNoGlError("low-frequency readback")
        val half = buffer.order(ByteOrder.nativeOrder()).asShortBuffer()
        val histogram = PhotonDehazeHistogram()
        val pixelCount = width * height
        for (pixel in 0 until pixelCount) {
            val offset = pixel * 4
            histogram.addLinearRgb(
                Half.toFloat(half.get(offset)),
                Half.toFloat(half.get(offset + 1)),
                Half.toFloat(half.get(offset + 2)),
            )
        }
        return histogram.estimateCurve(tuning)
    }

    private fun renderCurve(
        sourceTextureId: Int,
        targetFramebufferId: Int,
        width: Int,
        height: Int,
        curve: PhotonDehazeCurveParameters,
    ) {
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFramebufferId)
        GLES30.glUseProgram(applyProgram)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(applyProgram, "uLinearRgb"), 0)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(applyProgram, "uHazePointLow"),
            curve.hazePointLow,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(applyProgram, "uHazePointHigh"),
            curve.hazePointHigh,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(applyProgram, "uHighlightScale"),
            curve.highlightScale,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(applyProgram, "uQuadraticCoefficient"),
            curve.quadraticCoefficient,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(applyProgram, "uLinearSlope"),
            curve.linearSlope,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(applyProgram, "uShoulderValue"),
            curve.shoulderValue,
        )
        quad.bindIdentityTextureMatrix(applyProgram)
        quad.draw(applyProgram)
        requireNoGlError("full-resolution curve application")
    }

    private fun obtainReadbackBuffer(requiredBytes: Int): ByteBuffer {
        readbackBuffer?.takeIf { readbackBufferSize >= requiredBytes }?.let { current ->
            current.clear()
            current.limit(requiredBytes)
            return current
        }
        readbackBuffer?.let(DirectBufferAllocator::freeNative)
        val allocated = DirectBufferAllocator.allocateNative(requiredBytes.toLong())
            ?.order(ByteOrder.nativeOrder())
            ?: throw OutOfMemoryError("Unable to allocate Photon dehaze readback")
        readbackBuffer = allocated
        readbackBufferSize = requiredBytes
        return allocated
    }

    private fun getOrCreateDownsampleProgram(): Int {
        if (downsampleProgram == 0) {
            downsampleProgram = quad.createProgram(DOWNSAMPLE_FRAGMENT_SHADER, "photonDehazeBox")
        }
        return downsampleProgram
    }

    private fun getOrCreateApplyProgram(): Int {
        if (applyProgram == 0) {
            applyProgram = quad.createProgram(APPLY_FRAGMENT_SHADER, "photonDehazeCurve")
        }
        return applyProgram
    }

    private fun requireNoGlError(operation: String) {
        val errors = buildList {
            var error = GLES30.glGetError()
            while (error != GLES30.GL_NO_ERROR) {
                add("0x${error.toString(16)}")
                error = GLES30.glGetError()
            }
        }
        check(errors.isEmpty()) { "Photon dehaze $operation failed: ${errors.joinToString()}" }
    }

    companion object {
        private const val TAG = "PhotonDehazePipeline"
        const val DOWNSAMPLE_FACTOR = 8

        val DOWNSAMPLE_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uLinearRgb;
            uniform ivec2 uSourceSize;

            void main() {
                ivec2 outputPosition = ivec2(gl_FragCoord.xy);
                ivec2 sourceBase = outputPosition * $DOWNSAMPLE_FACTOR;
                vec3 sum = vec3(0.0);
                float count = 0.0;
                for (int y = 0; y < $DOWNSAMPLE_FACTOR; ++y) {
                    for (int x = 0; x < $DOWNSAMPLE_FACTOR; ++x) {
                        ivec2 position = sourceBase + ivec2(x, y);
                        if (position.x < uSourceSize.x && position.y < uSourceSize.y) {
                            sum += texelFetch(uLinearRgb, position, 0).rgb;
                            count += 1.0;
                        }
                    }
                }
                fragColor = vec4(sum / max(count, 1.0), 1.0);
            }
        """.trimIndent()

        val APPLY_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;

            in vec2 vTexCoord;
            out vec4 fragColor;

            uniform sampler2D uLinearRgb;
            uniform float uHazePointLow;
            uniform float uHazePointHigh;
            uniform float uHighlightScale;
            uniform float uQuadraticCoefficient;
            uniform float uLinearSlope;
            uniform float uShoulderValue;

            void main() {
                vec3 rgb = clamp(texture(uLinearRgb, vTexCoord).rgb, vec3(0.0), vec3(1.0));
                float luminance = (rgb.r + rgb.g + rgb.b) * (1.0 / 3.0);
                float scaled = min(luminance * uHighlightScale, 1.0);
                float mapped;
                if (scaled < uHazePointHigh) {
                    float distance = max(scaled - uHazePointLow, 0.0);
                    mapped = distance * distance * uQuadraticCoefficient;
                } else {
                    mapped = uShoulderValue + (scaled - uHazePointHigh) * uLinearSlope;
                }
                float gain = clamp(mapped, 0.0, 1.0) / max(luminance, 1e-6);
                fragColor = vec4(clamp(rgb * gain, vec3(0.0), vec3(1.0)), 1.0);
            }
        """.trimIndent()
    }
}
