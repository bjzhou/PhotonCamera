package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs

internal data class FilmGrainOutput(
    val textureId: Int,
    val framebufferId: Int,
)

/** Owns one context-local output target for the optional final film-grain pass. */
internal class FilmGrainGl(
    private val logTag: String,
) {
    private var programId = 0
    private var inputLocation = -1
    private var amountLocation = -1
    private var frameSeedLocation = -1
    private var pixelScaleLocation = -1
    private var outputTextureId = 0
    private var outputFramebufferId = 0
    private var outputWidth = 0
    private var outputHeight = 0

    fun prepare(): Boolean = ensureProgram()

    fun renderToTexture(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        amount: Float,
        frameSeed: Float,
        drawQuad: (Int) -> Unit,
    ): FilmGrainOutput? {
        if (abs(amount) <= ENABLE_EPSILON) return null
        if (!ensureProgram() || !ensureOutput(width, height)) return null
        if (!drawToFramebuffer(
                targetFramebufferId = outputFramebufferId,
                sourceTextureId = sourceTextureId,
                width = width,
                height = height,
                amount = amount,
                frameSeed = frameSeed,
                drawQuad = drawQuad,
            )
        ) {
            return null
        }
        return FilmGrainOutput(outputTextureId, outputFramebufferId)
    }

    fun drawToFramebuffer(
        targetFramebufferId: Int,
        sourceTextureId: Int,
        width: Int,
        height: Int,
        amount: Float,
        frameSeed: Float,
        drawQuad: (Int) -> Unit,
    ): Boolean {
        if (abs(amount) <= ENABLE_EPSILON) return false
        if (!ensureProgram()) return false
        val upstreamError = GLES30.glGetError()
        if (upstreamError != GLES30.GL_NO_ERROR) {
            PLog.e(logTag, "Film grain skipped after upstream glError $upstreamError")
            return false
        }

        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFramebufferId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(programId)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTextureId)
        GLES30.glUniform1i(inputLocation, 0)
        GLES30.glUniform1f(amountLocation, amount.coerceIn(0f, 1f))
        GLES30.glUniform1f(frameSeedLocation, frameSeed)
        GLES30.glUniform1f(pixelScaleLocation, FilmGrainShaders.pixelScale(width, height))
        drawQuad(programId)
        val error = GLES30.glGetError()
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glUseProgram(0)
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(logTag, "Film grain pass failed: glError=$error")
            return false
        }
        return true
    }

    fun resetAfterContextLoss() {
        programId = 0
        inputLocation = -1
        amountLocation = -1
        frameSeedLocation = -1
        pixelScaleLocation = -1
        outputTextureId = 0
        outputFramebufferId = 0
        outputWidth = 0
        outputHeight = 0
    }

    fun release() {
        GlUtils.deleteProgram(programId)
        programId = 0
        releaseOutput()
    }

    private fun ensureProgram(): Boolean {
        if (programId != 0) return true
        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.SIMPLE_VERTEX_SHADER)
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, FilmGrainShaders.FRAGMENT)
        if (vertexShader == 0 || fragmentShader == 0) {
            if (vertexShader != 0) GLES30.glDeleteShader(vertexShader)
            if (fragmentShader != 0) GLES30.glDeleteShader(fragmentShader)
            PLog.e(logTag, "Failed to compile film grain shaders")
            return false
        }
        programId = GlUtils.linkProgram(vertexShader, fragmentShader)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (programId == 0) {
            PLog.e(logTag, "Failed to link film grain program")
            return false
        }
        inputLocation = GLES30.glGetUniformLocation(programId, "uInputTexture")
        amountLocation = GLES30.glGetUniformLocation(programId, "uAmount")
        frameSeedLocation = GLES30.glGetUniformLocation(programId, "uFrameSeed")
        pixelScaleLocation = GLES30.glGetUniformLocation(programId, "uPixelScale")
        return true
    }

    private fun ensureOutput(width: Int, height: Int): Boolean {
        if (
            outputTextureId != 0 &&
            outputFramebufferId != 0 &&
            outputWidth == width &&
            outputHeight == height
        ) {
            return true
        }
        val maxTextureSize = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
        if (width <= 0 || height <= 0 || width > maxTextureSize[0] || height > maxTextureSize[0]) {
            PLog.e(logTag, "Film grain target ${width}x$height exceeds GL_MAX_TEXTURE_SIZE=${maxTextureSize[0]}")
            return false
        }

        releaseOutput()
        val texture = IntArray(1)
        GLES30.glGenTextures(1, texture, 0)
        outputTextureId = texture[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, outputTextureId)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA8, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        val framebuffer = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffer, 0)
        outputFramebufferId = framebuffer[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            outputTextureId,
            0,
        )
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        val error = GLES30.glGetError()
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE || error != GLES30.GL_NO_ERROR) {
            PLog.e(logTag, "Film grain framebuffer incomplete: status=$status glError=$error")
            releaseOutput()
            return false
        }
        outputWidth = width
        outputHeight = height
        return true
    }

    private fun releaseOutput() {
        if (outputFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(outputFramebufferId), 0)
            outputFramebufferId = 0
        }
        if (outputTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
            outputTextureId = 0
        }
        outputWidth = 0
        outputHeight = 0
    }

    private companion object {
        const val ENABLE_EPSILON = 0.001f
    }
}
