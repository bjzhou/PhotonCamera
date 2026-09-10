package com.hinnka.mycamera.lut

import android.opengl.GLES30

/** Adapts display-encoded diffusion passes to Media3's caller-owned output framebuffer. */
internal class VideoHighlightDiffusionGl(logTag: String) {
    private val diffusion = HighlightDiffusionGl(logTag)
    private val grain = FilmGrainGl(logTag)
    private var colorTexture = 0
    private var colorFramebuffer = 0
    private var colorWidth = 0
    private var colorHeight = 0
    private val drawFramebuffer = IntArray(1)
    private val readFramebuffer = IntArray(1)
    private val viewport = IntArray(4)

    /** Called only when Bloom or Halation is enabled. [drawColor] must defer film grain. */
    fun drawFrame(
        width: Int,
        height: Int,
        bloom: Float,
        halation: Float,
        filmGrain: Float,
        presentationTimeUs: Long,
        drawQuad: (Int) -> Unit,
        drawColor: () -> Unit,
    ) {
        GLES30.glGetIntegerv(GLES30.GL_DRAW_FRAMEBUFFER_BINDING, drawFramebuffer, 0)
        GLES30.glGetIntegerv(GLES30.GL_READ_FRAMEBUFFER_BINDING, readFramebuffer, 0)
        GLES30.glGetIntegerv(GLES30.GL_VIEWPORT, viewport, 0)
        try {
            ensureColorTarget(width, height)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, colorFramebuffer)
            GLES30.glViewport(0, 0, width, height)
            GLES30.glDisable(GLES30.GL_BLEND)
            drawColor()
            checkGl("video color pass")
            val output = checkNotNull(
                diffusion.renderToTexture(colorTexture, width, height, bloom, halation, drawQuad)
            ) { "Video highlight diffusion produced no output" }
            if (filmGrain > 0.001f) {
                check(grain.drawToFramebuffer(
                    targetFramebufferId = drawFramebuffer[0],
                    sourceTextureId = output.textureId,
                    width = width,
                    height = height,
                    amount = filmGrain,
                    frameSeed = FilmGrainShaders.videoFrameSeed(presentationTimeUs),
                    drawQuad = drawQuad,
                )) { "Video film grain pass failed" }
            } else {
                GLES30.glBindFramebuffer(GLES30.GL_READ_FRAMEBUFFER, output.framebufferId)
                GLES30.glBindFramebuffer(GLES30.GL_DRAW_FRAMEBUFFER, drawFramebuffer[0])
                GLES30.glBlitFramebuffer(
                    0, 0, width, height, 0, 0, width, height,
                    GLES30.GL_COLOR_BUFFER_BIT, GLES30.GL_NEAREST,
                )
                checkGl("video diffusion output")
            }
        } finally {
            // Media3 owns this framebuffer, including its lifetime and downstream texture consumers.
            GLES30.glBindFramebuffer(GLES30.GL_DRAW_FRAMEBUFFER, drawFramebuffer[0])
            GLES30.glBindFramebuffer(GLES30.GL_READ_FRAMEBUFFER, readFramebuffer[0])
            GLES30.glViewport(viewport[0], viewport[1], viewport[2], viewport[3])
        }
    }

    private fun ensureColorTarget(width: Int, height: Int) {
        if (colorTexture != 0 && width == colorWidth && height == colorHeight) return
        val limit = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, limit, 0)
        check(width in 1..limit[0] && height in 1..limit[0]) {
            "Video color target ${width}x$height exceeds texture limit ${limit[0]}"
        }
        releaseColorTarget()
        try {
            val ids = IntArray(1)
            GLES30.glGenTextures(1, ids, 0)
            colorTexture = ids[0]
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, colorTexture)
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA8, width, height)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glGenFramebuffers(1, ids, 0)
            colorFramebuffer = ids[0]
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, colorFramebuffer)
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, colorTexture, 0,
            )
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            checkGl("video RGBA8 color target allocation")
            check(status == GLES30.GL_FRAMEBUFFER_COMPLETE) { "Video color framebuffer status=$status" }
            colorWidth = width
            colorHeight = height
        } catch (failure: IllegalStateException) {
            releaseColorTarget()
            throw failure
        }
    }

    private fun checkGl(stage: String) {
        val error = GLES30.glGetError()
        check(error == GLES30.GL_NO_ERROR) { "$stage glError=$error" }
    }

    private fun releaseColorTarget() {
        if (colorFramebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(colorFramebuffer), 0)
        if (colorTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(colorTexture), 0)
        colorFramebuffer = 0
        colorTexture = 0
        colorWidth = 0
        colorHeight = 0
    }

    fun release() {
        diffusion.release()
        grain.release()
        releaseColorTarget()
    }
}
