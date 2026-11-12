package com.hinnka.mycamera.lut

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.stabilization.STABILIZATION_ROW_COUNT
import com.hinnka.mycamera.utils.PLog

/** Applies only MGC's rolling-strip geometry to the RGB output of [PreviewYuvRenderer]. */
internal class MgcEisRenderer(private val tag: String, private val timing: VideoRenderTiming? = null) {
    data class Frame(val timestampNs: Long, val textureId: Int)
    data class OutputTarget(val textureId: Int, val framebufferId: Int, val width: Int, val height: Int)

    private val mesh = MgcEisMesh()
    // Match native kOutputCropZoom = 1 / (1 - 2 * 0.05) even for a dropped pose.
    private val droppedFrameHomographies = FloatArray(STABILIZATION_ROW_COUNT * 9).also { values ->
        repeat(STABILIZATION_ROW_COUNT) { row ->
            val offset = row * 9
            values[offset] = 1f
            values[offset + 4] = 1f
            values[offset + 8] = 0.9f
        }
    }
    private var programId = 0
    private var positionLocation = -1
    private var textureCoordinateLocation = -1
    private var sourceSamplerLocation = -1
    private var outputTextureId = 0
    private var outputFramebufferId = 0
    private var width = 0
    private var height = 0

    fun render(
        textureId: Int,
        width: Int,
        height: Int,
        timestampNs: Long,
        rowHomographies: FloatArray?,
        target: OutputTarget? = null,
    ): Frame? {
        if (textureId == 0 || width <= 0 || height <= 0 || !ensureProgram()) return null
        if (target == null && !ensureTarget(width, height)) return null
        val destination = target ?: OutputTarget(outputTextureId, outputFramebufferId, width, height)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, destination.framebufferId)
        GLES30.glViewport(0, 0, destination.width, destination.height)
        // Keep elapsed-time queries inside the output FBO; CPU totals include target switches.
        timing.gpu("geometry.draw") {
            GLES30.glDisable(GLES30.GL_BLEND)
            GLES30.glClearColor(0f, 0f, 0f, 1f)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(programId)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
            GLES30.glUniform1i(sourceSamplerLocation, 0)
            mesh.draw(
                positionLocation = positionLocation,
                textureCoordinateLocation = textureCoordinateLocation,
                rowHomographies = rowHomographies ?: droppedFrameHomographies,
            )
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        return Frame(timestampNs, destination.textureId)
    }

    fun resetAfterContextLoss() {
        programId = 0
        positionLocation = -1
        textureCoordinateLocation = -1
        sourceSamplerLocation = -1
        outputTextureId = 0
        outputFramebufferId = 0
        width = 0
        height = 0
        mesh.resetAfterContextLoss()
    }

    fun release() {
        releaseTarget()
        if (programId != 0) GLES30.glDeleteProgram(programId)
        mesh.release()
        resetAfterContextLoss()
    }

    private fun releaseTarget() {
        if (outputTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
        if (outputFramebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(outputFramebufferId), 0)
        outputTextureId = 0
        outputFramebufferId = 0
        width = 0
        height = 0
    }

    private fun ensureProgram(): Boolean {
        if (programId != 0) return true
        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, VERTEX_SHADER)
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, FRAGMENT_SHADER)
        if (vertexShader == 0 || fragmentShader == 0) {
            if (vertexShader != 0) GLES30.glDeleteShader(vertexShader)
            if (fragmentShader != 0) GLES30.glDeleteShader(fragmentShader)
            return false
        }
        programId = GlUtils.linkProgram(vertexShader, fragmentShader)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (programId == 0) return false
        positionLocation = GLES30.glGetAttribLocation(programId, "aPosition")
        textureCoordinateLocation = GLES30.glGetAttribLocation(programId, "aTexCoord")
        sourceSamplerLocation = GLES30.glGetUniformLocation(programId, "uCameraTexture")
        mesh.initialize()
        return true
    }

    private fun ensureTarget(requestedWidth: Int, requestedHeight: Int): Boolean {
        if (outputTextureId != 0 && width == requestedWidth && height == requestedHeight) return true
        releaseTarget()
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        outputTextureId = textures[0]
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, outputTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA8, requestedWidth, requestedHeight,
            0, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null,
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        outputFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, outputTextureId, 0,
        )
        val complete = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) == GLES30.GL_FRAMEBUFFER_COMPLETE
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        if (outputTextureId == 0 || !complete) {
            PLog.e(tag, "Cannot allocate MGC geometry output ${requestedWidth}x$requestedHeight")
            release()
            return false
        }
        width = requestedWidth
        height = requestedHeight
        return true
    }

    private companion object {
        val VERTEX_SHADER = """
            #version 300 es
            in vec4 aPosition;
            in vec2 aTexCoord;
            out vec2 vTexCoord;
            void main() {
                gl_Position = aPosition;
                vTexCoord = aTexCoord;
            }
        """.trimIndent()

        val FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform highp sampler2D uCameraTexture;
            in vec2 vTexCoord;
            out vec4 fragColor;
            void main() {
                // Mesh V starts at the top camera row; RGB framebuffer row zero is at V=1.
                fragColor = texture(uCameraTexture, vec2(vTexCoord.x, 1.0 - vTexCoord.y));
            }
        """.trimIndent()
    }
}
