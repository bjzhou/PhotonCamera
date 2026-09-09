package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog
import kotlin.math.exp
import kotlin.math.roundToInt

internal data class HighlightDiffusionOutput(val textureId: Int, val framebufferId: Int)

/**
 * Context-local Bloom and Halation shared by preview, recording and photo export.
 * Order: display-encoded color -> Halation -> Bloom -> film grain.
 * Fixed reference defaults: Bloom size 70/source 40/softness 50;
 * Halation size 25/source 20/hardness 20/grain 50/destination 100/hue 0/shift 0.
 * Float working maps avoid quantizing weak highlights before peak normalization.
 */
internal class HighlightDiffusionGl(private val logTag: String) {
    private class Program(val source: String) {
        var id = 0
        private val locations = mutableMapOf<String, Int>()
        fun location(name: String) = locations.getOrPut(name) { GLES30.glGetUniformLocation(id, name) }
        fun reset() { id = 0; locations.clear() }
    }

    private class Target(val floating: Boolean) {
        var texture = 0
        var framebuffer = 0
        var width = 0
        var height = 0
        fun reset() { texture = 0; framebuffer = 0; width = 0; height = 0 }
        fun release() {
            if (texture != 0) GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
            if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
            reset()
        }
    }

    private class Effect(val halation: Boolean, val edge: Int, sigma: Double) {
        val work = Target(true)
        val ping = Target(true)
        val map = Target(!halation)
        val output = Target(false)
        val reductions = mutableListOf<Target>()
        val center: Float
        val pairs: FloatArray
        init {
            val radius = (3.0 * sigma).toInt()
            val weights = DoubleArray(radius + 1) { exp(-it.toDouble() * it / (2.0 * sigma * sigma)) }
            val total = weights[0] + 2.0 * weights.drop(1).sum()
            center = (weights[0] / total).toFloat()
            pairs = FloatArray(((radius + 1) / 2) * 2)
            for (i in 1..radius step 2) {
                val a = weights[i] / total
                val b = if (i + 1 <= radius) weights[i + 1] / total else 0.0
                val index = (i - 1) / 2 * 2
                pairs[index] = (i + b / (a + b)).toFloat()
                pairs[index + 1] = (a + b).toFloat()
            }
        }
        fun targets() = listOf(work, ping, map, output) + reductions
    }

    private val extract = Program(HighlightDiffusionShaders.EXTRACT)
    private val blur = Program(HighlightDiffusionShaders.BLUR)
    private val reduce = Program(HighlightDiffusionShaders.REDUCE)
    private val normalize = Program(HighlightDiffusionShaders.NORMALIZE)
    private val composite = Program(HighlightDiffusionShaders.COMPOSITE)
    private val programs = listOf(extract, blur, reduce, normalize, composite)
    private val halationEffect = Effect(true, 512, 5.0)
    private val bloomEffect = Effect(false, 256, 17.5)

    fun renderToTexture(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        bloom: Float,
        halation: Float,
        drawQuad: (Int) -> Unit,
    ): HighlightDiffusionOutput? {
        if (bloom <= 0.001f && halation <= 0.001f) return null
        return try {
            checkGl("upstream")
            ensurePrograms()
            var source = sourceTextureId
            var output: Target? = null
            if (halation > 0.001f) {
                output = render(halationEffect, source, width, height, halation.coerceIn(0f, 1f), drawQuad)
                source = output.texture
            }
            if (bloom > 0.001f) {
                output = render(bloomEffect, source, width, height, bloom.coerceIn(0f, 1f), drawQuad)
            }
            output?.let { HighlightDiffusionOutput(it.texture, it.framebuffer) }
        } catch (failure: IllegalStateException) {
            PLog.e(logTag, "Highlight diffusion failed: ${failure.message}")
            null
        } finally {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            GLES30.glUseProgram(0)
        }
    }

    private fun render(
        effect: Effect, source: Int, width: Int, height: Int, strength: Float, drawQuad: (Int) -> Unit,
    ): Target {
        val scale = minOf(1.0, effect.edge.toDouble() / maxOf(width, height))
        val w = (width * scale).roundToInt().coerceAtLeast(1)
        val h = (height * scale).roundToInt().coerceAtLeast(1)
        ensureTarget(effect.work, w, h)
        ensureTarget(effect.ping, w, h)
        ensureTarget(effect.map, w, h)
        ensureTarget(effect.output, width, height)
        check(source != effect.output.texture) { "Source aliases diffusion output" }
        pass(extract, effect.work, source, drawQuad) {
            GLES30.glUniform1f(extract.location("uThreshold"), if (effect.halation) 0.794f else 0.598f)
            GLES30.glUniform1i(extract.location("uHalation"), if (effect.halation) 1 else 0)
        }
        fun blurPass(target: Target, input: Int, dx: Float, dy: Float) {
            pass(blur, target, input, drawQuad) {
                GLES30.glUniform2f(blur.location("uStep"), dx, dy)
                GLES30.glUniform1f(blur.location("uCenter"), effect.center)
                GLES30.glUniform1i(blur.location("uPairCount"), effect.pairs.size / 2)
                GLES30.glUniform2fv(blur.location("uPairs[0]"), effect.pairs.size / 2, effect.pairs, 0)
            }
        }
        blurPass(effect.ping, effect.work.texture, 1f / w, 0f)
        blurPass(effect.work, effect.ping.texture, 0f, 1f / h)
        var peak = effect.work
        var level = 0
        while (peak.width > 1 || peak.height > 1) {
            if (level == effect.reductions.size) effect.reductions.add(Target(true))
            val next = effect.reductions[level++]
            ensureTarget(next, (peak.width + 1) / 2, (peak.height + 1) / 2)
            pass(reduce, next, peak.texture, drawQuad)
            peak = next
        }
        pass(normalize, effect.map, effect.work.texture, drawQuad) {
            bind(normalize, "uPeak", 1, peak.texture)
            GLES30.glUniform1i(normalize.location("uHalation"), if (effect.halation) 1 else 0)
        }
        pass(composite, effect.output, source, drawQuad) {
            bind(composite, "uMap", 1, effect.map.texture)
            GLES30.glUniform1i(composite.location("uHalation"), if (effect.halation) 1 else 0)
            GLES30.glUniform1f(composite.location("uStrength"), strength)
        }
        return effect.output
    }

    private fun pass(program: Program, target: Target, input: Int, drawQuad: (Int) -> Unit, uniforms: () -> Unit = {}) {
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, target.framebuffer)
        GLES30.glViewport(0, 0, target.width, target.height)
        GLES30.glUseProgram(program.id)
        bind(program, "uInput", 0, input)
        uniforms()
        drawQuad(program.id)
        checkGl("draw program=${program.id} target=${target.width}x${target.height}")
    }

    private fun bind(program: Program, name: String, unit: Int, texture: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glUniform1i(program.location(name), unit)
    }

    private fun ensurePrograms() {
        for (program in programs) {
            if (program.id != 0) continue
            val vertex = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.SIMPLE_VERTEX_SHADER)
            val fragment = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, program.source)
            if (vertex != 0 && fragment != 0) program.id = GlUtils.linkProgram(vertex, fragment)
            if (vertex != 0) GLES30.glDeleteShader(vertex)
            if (fragment != 0) GLES30.glDeleteShader(fragment)
            check(program.id != 0) { "Shader compile/link failed (${programs.indexOf(program)})" }
        }
    }

    private fun ensureTarget(target: Target, width: Int, height: Int) {
        if (target.texture != 0 && target.width == width && target.height == height) return
        val limit = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, limit, 0)
        check(width in 1..limit[0] && height in 1..limit[0]) { "Invalid target ${width}x$height, limit=${limit[0]}" }
        target.release()
        try {
            val ids = IntArray(1)
            GLES30.glGenTextures(1, ids, 0)
            target.texture = ids[0]
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, target.texture)
            val format = if (target.floating) GLES30.GL_RGBA16F else GLES30.GL_RGBA8
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, format, width, height)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glGenFramebuffers(1, ids, 0)
            target.framebuffer = ids[0]
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, target.framebuffer)
            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, target.texture, 0)
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            checkGl("allocation ${width}x$height format=$format")
            check(status == GLES30.GL_FRAMEBUFFER_COMPLETE) { "Framebuffer status=$status format=$format" }
            target.width = width
            target.height = height
        } catch (failure: IllegalStateException) {
            target.release()
            throw failure
        }
    }

    private fun checkGl(stage: String) {
        val error = GLES30.glGetError()
        check(error == GLES30.GL_NO_ERROR) { "$stage glError=$error" }
    }

    fun release() {
        programs.forEach { GlUtils.deleteProgram(it.id); it.reset() }
        listOf(halationEffect, bloomEffect).forEach { effect -> effect.targets().forEach { it.release() } }
    }

    fun resetAfterContextLoss() {
        programs.forEach { it.reset() }
        listOf(halationEffect, bloomEffect).forEach { effect -> effect.targets().forEach { it.reset() } }
    }
}
