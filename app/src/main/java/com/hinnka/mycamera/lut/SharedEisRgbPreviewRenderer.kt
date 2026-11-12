package com.hinnka.mycamera.lut

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesHardwareBufferImage
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Copies a shared neutral RGB frame into a preview-owned, size-bounded texture. */
internal class SharedEisRgbPreviewRenderer(private val tag: String) {
    private val timing = VideoRenderTiming.create("shared-preview")
    private var program = 0
    private var positionLocation = -1
    private var uvLocation = -1
    private var samplerLocation = -1
    private var quadBuffer = 0
    private var sourceTexture = 0
    private var texture = 0
    private var framebuffer = 0
    private var width = 0
    private var height = 0

    /** Borrows [frame]; callers close it only after this method completes GPU sampling. */
    fun render(frame: SharedEisRgbFrame): Int {
        timing?.beginFrame()
        try {
            return copyFrame(frame)
        } finally {
            timing?.endFrame()
        }
    }

    private fun copyFrame(frame: SharedEisRgbFrame): Int {
        timing.cpu("producer.wait") { frame.ready.await() }
        val size = cameraPreviewTextureSize(frame.width, frame.height)
        ensure(size.width, size.height)
        val handle = timing.cpu("rgb.import") { GlesHardwareBufferImage.create(frame.buffer) }
        check(handle != 0L) { "Cannot import shared EIS RGB frame" }
        try {
            timing.gpu("copy.draw") {
                GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
                check(GlesHardwareBufferImage.bind2D(handle, sourceTexture)) { "Cannot bind shared EIS RGB frame" }
                GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
                GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
                GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
                GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
                GLES30.glViewport(0, 0, width, height)
                GLES30.glDisable(GLES30.GL_BLEND)
                GLES30.glUseProgram(program)
                GLES30.glUniform1i(samplerLocation, 0)
                GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, quadBuffer)
                GLES30.glEnableVertexAttribArray(positionLocation)
                GLES30.glVertexAttribPointer(positionLocation, 2, GLES30.GL_FLOAT, false, 16, 0)
                GLES30.glEnableVertexAttribArray(uvLocation)
                GLES30.glVertexAttribPointer(uvLocation, 2, GLES30.GL_FLOAT, false, 16, 8)
                GLES30.glDrawArrays(GLES30.GL_TRIANGLE_STRIP, 0, 4)
            }
            timing.cpu("copy.wait") { GlSamplingFence.insert().use { it.await() } }
            GLES30.glDisableVertexAttribArray(positionLocation)
            GLES30.glDisableVertexAttribArray(uvLocation)
            GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
            return texture
        } finally {
            GlesHardwareBufferImage.destroy(handle)
        }
    }

    private fun ensure(targetWidth: Int, targetHeight: Int) {
        if (program == 0) {
            val vs = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, VERTEX_SHADER)
            val fs = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, FRAGMENT_SHADER)
            try {
                check(vs != 0 && fs != 0) { "Cannot compile shared RGB preview shader" }
                program = GlUtils.linkProgram(vs, fs)
                check(program != 0) { "Cannot link shared RGB preview shader" }
            } finally {
                if (vs != 0) GLES30.glDeleteShader(vs)
                if (fs != 0) GLES30.glDeleteShader(fs)
            }
            positionLocation = GLES30.glGetAttribLocation(program, "aPosition")
            uvLocation = GLES30.glGetAttribLocation(program, "aTexCoord")
            samplerLocation = GLES30.glGetUniformLocation(program, "uInput")
            val ids = IntArray(1)
            GLES30.glGenBuffers(1, ids, 0)
            quadBuffer = ids[0]
            val quad = ByteBuffer.allocateDirect(QUAD.size * 4).order(ByteOrder.nativeOrder())
                .asFloatBuffer().put(QUAD).also { it.position(0) }
            GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, quadBuffer)
            GLES30.glBufferData(GLES30.GL_ARRAY_BUFFER, QUAD.size * 4, quad, GLES30.GL_STATIC_DRAW)
            GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
            GLES30.glGenTextures(1, ids, 0)
            sourceTexture = ids[0]
        }
        if (texture != 0 && width == targetWidth && height == targetHeight) return
        releaseTarget()
        val ids = IntArray(1)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glGenTextures(1, ids, 0)
        texture = ids[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA8, targetWidth, targetHeight)
        GLES30.glGenFramebuffers(1, ids, 0)
        framebuffer = ids[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, texture, 0,
        )
        check(GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) == GLES30.GL_FRAMEBUFFER_COMPLETE)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        width = targetWidth
        height = targetHeight
        PLog.i(tag, "Shared EIS RGB preview configured: ${width}x$height (source bounded to 1920x1080)")
    }

    private fun releaseTarget() {
        if (texture != 0) GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
        if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
        texture = 0
        framebuffer = 0
    }

    fun release() {
        timing?.closeGl()
        releaseTarget()
        if (sourceTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(sourceTexture), 0)
        if (quadBuffer != 0) GLES30.glDeleteBuffers(1, intArrayOf(quadBuffer), 0)
        if (program != 0) GLES30.glDeleteProgram(program)
        resetAfterContextLoss()
    }

    fun resetAfterContextLoss() {
        timing?.resetAfterContextLoss()
        program = 0
        quadBuffer = 0
        sourceTexture = 0
        texture = 0
        framebuffer = 0
        width = 0
        height = 0
    }

    private companion object {
        val QUAD = floatArrayOf(-1f, -1f, 0f, 0f, 1f, -1f, 1f, 0f, -1f, 1f, 0f, 1f, 1f, 1f, 1f, 1f)
        val VERTEX_SHADER = """
            #version 300 es
            in vec4 aPosition;
            in vec2 aTexCoord;
            out vec2 vTexCoord;
            void main() { gl_Position = aPosition; vTexCoord = aTexCoord; }
        """.trimIndent()
        val FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform highp sampler2D uInput;
            in vec2 vTexCoord;
            out vec4 fragColor;
            void main() { fragColor = texture(uInput, vTexCoord); }
        """.trimIndent()
    }
}
