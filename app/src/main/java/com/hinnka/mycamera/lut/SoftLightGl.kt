package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog
import kotlin.math.roundToInt

/**
 * Context-local Soft Light for video recording and export, using the preview shader sources.
 *
 * The blur runs on a fixed working long edge so the diffusion radius is a fraction of the
 * frame, independent of the encoded resolution. 480 matches the preview's quarter-resolution
 * blur of the 1080p-class video viewfinder stream.
 */
internal class SoftLightGl(private val logTag: String) {
    companion object {
        private const val WORKING_LONG_EDGE = 480
    }

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

    private val blurH = Program(Shaders.SOFT_LIGHT_PREVIEW_BLUR_H)
    private val blurV = Program(Shaders.HDF_PREVIEW_BLUR_V)
    private val composite = Program(Shaders.HDF_PREVIEW_COMPOSITE)
    private val programs = listOf(blurH, blurV, composite)
    private val ping = Target(true)
    private val pong = Target(true)
    private val output = Target(false)

    fun prepare(): Boolean = try {
        ensurePrograms()
        true
    } catch (failure: IllegalStateException) {
        PLog.e(logTag, "Soft light program unavailable: ${failure.message}")
        false
    }

    /** Returns the composited display-encoded frame, or null when disabled or on GL failure. */
    fun renderToTexture(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        strength: Float,
        drawQuad: (Int) -> Unit,
    ): HighlightDiffusionOutput? {
        if (strength <= 0.001f) return null
        return try {
            checkGl("upstream")
            ensurePrograms()
            val scale = WORKING_LONG_EDGE.toFloat() / maxOf(width, height).coerceAtLeast(1)
            val w = (width * scale).roundToInt().coerceAtLeast(1)
            val h = (height * scale).roundToInt().coerceAtLeast(1)
            ensureTarget(ping, w, h)
            ensureTarget(pong, w, h)
            ensureTarget(output, width, height)
            check(sourceTextureId != output.texture) { "Source aliases soft light output" }
            pass(blurH, ping, drawQuad) {
                bind(blurH, "uInputTexture", 0, sourceTextureId)
                GLES30.glUniform2f(blurH.location("uTexelSize"), 1f / w, 1f / h)
            }
            pass(blurV, pong, drawQuad) {
                bind(blurV, "uInputTexture", 0, ping.texture)
                GLES30.glUniform2f(blurV.location("uTexelSize"), 1f / w, 1f / h)
            }
            pass(composite, output, drawQuad) {
                bind(composite, "uOriginalTexture", 0, sourceTextureId)
                // The legacy HDF branch is disabled; bind a valid texture to its sampler.
                bind(composite, "uBloomTexture", 1, sourceTextureId)
                GLES30.glUniform1f(composite.location("uHalation"), 0f)
                bind(composite, "uSoftLightTexture", 2, pong.texture)
                GLES30.glUniform1f(composite.location("uSoftLight"), strength.coerceIn(0f, 1f))
            }
            HighlightDiffusionOutput(output.texture, output.framebuffer)
        } catch (failure: IllegalStateException) {
            PLog.e(logTag, "Soft light failed: ${failure.message}")
            null
        } finally {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            for (unit in 2 downTo 0) {
                GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            }
            GLES30.glUseProgram(0)
        }
    }

    private fun pass(program: Program, target: Target, drawQuad: (Int) -> Unit, uniforms: () -> Unit) {
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, target.framebuffer)
        GLES30.glViewport(0, 0, target.width, target.height)
        GLES30.glUseProgram(program.id)
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
        listOf(ping, pong, output).forEach { it.release() }
    }
}
