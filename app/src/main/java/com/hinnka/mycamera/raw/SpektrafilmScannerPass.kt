package com.hinnka.mycamera.raw

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog
import kotlin.math.exp
import kotlin.math.roundToInt

/** Scanner optics in linear output RGB, after scan/gamut mapping and before the app's RAW finish. */
internal class SpektrafilmScannerPass(private val quad: RawFullscreenQuad) {
    private var program = 0
    private var sourceSampler = 0
    private val developed = Target()
    private val horizontal = Target()

    fun render(input: RawEngineTonePass.Input, algorithm: SpektrafilmToneAlgorithm): RawEngineTonePass.Output? {
        val tuning = requireNotNull(input.spectralFilmLut).tuning
        val lens = Kernel.fromSigma(tuning.scannerLensBlur)
        val unsharp = if (tuning.scannerUnsharpAmount > 0f) Kernel.fromSigma(tuning.scannerUnsharpSigma) else null
        val support = (lens?.radius ?: 0) + (unsharp?.radius ?: 0)
        if (support == 0) return algorithm.render(input)

        if (program == 0) program = quad.createProgram(FRAGMENT_SHADER, "spektrafilmScanner")
        if (program == 0) return null
        val workWidth = minOf(input.width, WORK_EDGE)
        val workHeight = minOf(input.height, WORK_EDGE)
        val coreWidth = if (input.width == workWidth) workWidth else workWidth - 2 * support
        val coreHeight = if (input.height == workHeight) workHeight else workHeight - 2 * support
        val work = Rect(0, 0, workWidth, workHeight)
        val last = unsharp ?: checkNotNull(lens)
        val unsharpAmount = if (unsharp != null) tuning.scannerUnsharpAmount else 0f

        try {
            if (!ensureSourceSampler() || !developed.ensure(workWidth, workHeight) ||
                !horizontal.ensure(workWidth, workHeight)
            ) return null
            val workInput = input.copy(targetFramebufferId = developed.framebuffer, targetTextureId = developed.texture)
            GLES30.glDisable(GLES30.GL_BLEND)
            // The aligned window needs exact source texels. Nearest sampling avoids mixing an
            // adjacent texel when the window's interpolated UV rounds off the texel center.
            GLES30.glBindSampler(0, sourceSampler)
            for (top in 0 until input.height step coreHeight) {
                val workTop = (top - support).coerceIn(0, input.height - workHeight)
                for (left in 0 until input.width step coreWidth) {
                    val workLeft = (left - support).coerceIn(0, input.width - workWidth)
                    val core = Rect(left, top, minOf(coreWidth, input.width - left), minOf(coreHeight, input.height - top))
                    if (algorithm.render(workInput, workLeft, workTop, workWidth, workHeight) == null) return null
                    if (lens != null && unsharp != null) {
                        if (!filter(developed.texture, horizontal.framebuffer, work, lens, vertical = false)) return null
                        if (!filter(horizontal.texture, developed.framebuffer, work, lens, vertical = true)) return null
                    }
                    if (!filter(developed.texture, horizontal.framebuffer, work, last, vertical = false)) return null
                    if (!filter(
                            source = horizontal.texture,
                            targetFramebuffer = input.targetFramebufferId,
                            target = core,
                            kernel = last,
                            vertical = true,
                            coordinateOffsetX = -workLeft,
                            coordinateOffsetY = -workTop,
                            original = developed.texture,
                            unsharpAmount = unsharpAmount,
                        )
                    ) return null
                }
            }
        } finally {
            GLES30.glBindSampler(0, 0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        }
        return RawEngineTonePass.Output(input.targetTextureId, input.width, input.height)
    }

    fun release() {
        if (program != 0) GLES30.glDeleteProgram(program)
        program = 0
        if (sourceSampler != 0) GLES30.glDeleteSamplers(1, intArrayOf(sourceSampler), 0)
        sourceSampler = 0
        developed.release()
        horizontal.release()
    }

    private fun ensureSourceSampler(): Boolean {
        if (sourceSampler != 0) return true
        val sampler = IntArray(1).also { GLES30.glGenSamplers(1, it, 0) }[0]
        GLES30.glSamplerParameteri(sampler, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glSamplerParameteri(sampler, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glSamplerParameteri(sampler, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glSamplerParameteri(sampler, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        val error = GLES30.glGetError()
        if (sampler == 0 || error != GLES30.GL_NO_ERROR) {
            if (sampler != 0) GLES30.glDeleteSamplers(1, intArrayOf(sampler), 0)
            PLog.e(TAG, "Scanner source sampler allocation failed: error=$error")
            return false
        }
        sourceSampler = sampler
        return true
    }

    private fun filter(
        source: Int,
        targetFramebuffer: Int,
        target: Rect,
        kernel: Kernel,
        vertical: Boolean,
        coordinateOffsetX: Int = 0,
        coordinateOffsetY: Int = 0,
        original: Int = source,
        unsharpAmount: Float = 0f,
    ): Boolean {
        GLES30.glUseProgram(program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFramebuffer)
        GLES30.glViewport(target.x, target.y, target.width, target.height)
        bindTexture("uSource", 0, source)
        bindTexture("uOriginal", 1, original)
        GLES30.glUniform2i(uniform("uSourceOffset"), coordinateOffsetX, coordinateOffsetY)
        GLES30.glUniform2i(uniform("uAxis"), if (vertical) 0 else 1, if (vertical) 1 else 0)
        GLES30.glUniform1i(uniform("uRadius"), kernel.radius)
        GLES30.glUniform1fv(uniform("uWeights[0]"), kernel.weights.size, kernel.weights, 0)
        GLES30.glUniform1f(uniform("uUnsharpAmount"), unsharpAmount)
        quad.draw(program)
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "Scanner filter failed: vertical=$vertical radius=${kernel.radius} " +
                "size=${target.width}x${target.height} RGBA16F error=$error")
            return false
        }
        return true
    }

    private fun bindTexture(name: String, unit: Int, texture: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glUniform1i(uniform(name), unit)
    }

    private fun uniform(name: String) = GLES30.glGetUniformLocation(program, name)

    private data class Rect(val x: Int, val y: Int, val width: Int, val height: Int)

    private class Kernel(val weights: FloatArray) {
        val radius: Int get() = weights.lastIndex

        companion object {
            fun fromSigma(sigma: Float): Kernel? {
                val radius = radius(sigma)
                if (radius == 0) return null
                val samples = DoubleArray(radius + 1) { offset ->
                    val deviation = offset / sigma.toDouble()
                    exp(-0.5 * deviation * deviation)
                }
                val normalization = 2.0 * samples.sum() - samples[0]
                return Kernel(FloatArray(samples.size) { (samples[it] / normalization).toFloat() })
            }
        }
    }

    private class Target {
        var texture = 0
            private set
        var framebuffer = 0
            private set
        private var width = 0
        private var height = 0

        fun ensure(width: Int, height: Int): Boolean {
            if (texture != 0 && this.width == width && this.height == height) return true
            release()
            val limit = IntArray(1)
            GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, limit, 0)
            require(width in 1..limit[0] && height in 1..limit[0]) { "Invalid scanner target ${width}x$height, limit=${limit[0]}" }
            texture = IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
            framebuffer = IntArray(1).also { GLES30.glGenFramebuffers(1, it, 0) }[0]
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, width, height)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, texture, 0,
            )
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            val error = GLES30.glGetError()
            if (texture == 0 || framebuffer == 0 || status != GLES30.GL_FRAMEBUFFER_COMPLETE || error != GLES30.GL_NO_ERROR) {
                PLog.e(TAG, "Scanner RGBA16F target allocation failed: size=${width}x$height status=$status error=$error")
                release()
                return false
            }
            this.width = width
            this.height = height
            return true
        }

        fun release() {
            if (texture != 0) GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
            if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
            texture = 0
            framebuffer = 0
            width = 0
            height = 0
        }
    }

    companion object {
        private const val TAG = "SpektrafilmScanner"
        private const val WORK_EDGE = 768
        private const val MAX_RADIUS = 24

        fun support(tuning: SpectralFilmTuning): Int = radius(tuning.scannerLensBlur) +
            if (tuning.scannerUnsharpAmount > 0f) radius(tuning.scannerUnsharpSigma) else 0

        // Upstream's 3-sigma FIR footprint gives a finite apron across RAW tile and window boundaries.
        private fun radius(sigma: Float): Int = (3f * sigma).roundToInt().also { require(it in 0..MAX_RADIUS) }

        internal val FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            precision highp sampler2D;

            out vec4 fragColor;
            uniform sampler2D uSource;
            uniform sampler2D uOriginal;
            uniform ivec2 uSourceOffset;
            uniform ivec2 uAxis;
            uniform int uRadius;
            uniform float uWeights[${MAX_RADIUS + 1}];
            uniform float uUnsharpAmount;

            int reflectPixel(int index, int size) {
                if (index >= 0 && index < size) return index;
                int period = 2 * size;
                int wrapped = (index < 0 ? -index - 1 : index) % period;
                return min(wrapped, period - 1 - wrapped);
            }

            vec3 sampleReflected(ivec2 pixel, ivec2 size) {
                ivec2 position = ivec2(reflectPixel(pixel.x, size.x), reflectPixel(pixel.y, size.y));
                return texelFetch(uSource, position, 0).rgb;
            }

            void main() {
                ivec2 pixel = ivec2(gl_FragCoord.xy) + uSourceOffset;
                ivec2 size = textureSize(uSource, 0);
                vec3 filtered = texelFetch(uSource, pixel, 0).rgb * uWeights[0];
                for (int tap = 1; tap <= uRadius; ++tap) {
                    ivec2 offset = tap * uAxis;
                    filtered += uWeights[tap] * (sampleReflected(pixel - offset, size) +
                                                  sampleReflected(pixel + offset, size));
                }
                if (uUnsharpAmount > 0.0) {
                    vec3 original = texelFetch(uOriginal, pixel, 0).rgb;
                    filtered = original + uUnsharpAmount * (original - filtered);
                }
                fragColor = vec4(filtered, 1.0);
            }
        """.trimIndent()
    }
}
