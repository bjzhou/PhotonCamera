package com.hinnka.mycamera.lut

import android.media.Image
import android.opengl.EGL14
import android.opengl.EGL15
import android.opengl.EGLSync
import android.opengl.GLES11Ext
import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.stabilization.MgcEisNativeBridge
import com.hinnka.mycamera.stabilization.STABILIZATION_ROW_COUNT
import com.hinnka.mycamera.stabilization.StabilizationFrame
import com.hinnka.mycamera.utils.PLog

/**
 * MGC's production image path: Camera2 HardwareBuffer -> EGLImage -> external texture -> mesh.
 *
 * This mirrors the original jxg renderer. The caller retains ownership of [StabilizationFrame]'s
 * Image and closes it after a successful draw; a null result leaves it available for the explicit
 * CPU YUV fallback on devices that cannot import the buffer into EGL.
 */
internal class MgcEisHardwareBufferRenderer(private val tag: String) {
    data class Frame(val timestampNs: Long, val textureId: Int)

    private val mesh = MgcEisMesh()
    // Native output matrices pass through convertPixelHomographyToClip then
    // applyCropZoomToClipHomography(kOutputCropZoom), where:
    //   kLookaheadCropMargin = 0.05
    //   kOutputCropZoom      = 1.0 / (1.0 - 2.0 * 0.05) ≈ 1.1111
    // applyCropZoomToClipHomography divides the W row (h20, h21, h22) by zoom.
    // A Dropped frame must use the same crop so that the viewport does not jump
    // between 1.0x and 1.111x on every stabilization gap.
    private val droppedFrameHomographies = FloatArray(STABILIZATION_ROW_COUNT * 9).also { values ->
        val h22 = 1.0f - 2.0f * 0.05f  // = 1.0f / kOutputCropZoom = 0.9f
        repeat(STABILIZATION_ROW_COUNT) { row ->
            val offset = row * 9
            values[offset] = 1f      // h00
            values[offset + 4] = 1f  // h11
            values[offset + 8] = h22 // h22: W-row crop zoom
        }
    }

    private var programId = 0
    private var positionLocation = -1
    private var textureCoordinateLocation = -1
    private var sourceSamplerLocation = -1
    private var sourceTextureId = 0
    private var outputTextureId = 0
    private var outputFramebufferId = 0
    private var width = 0
    private var height = 0
    private var loggedImportFailure = false
    private var loggedZeroCopy = false

    /**
     * Attempts the zero-copy path without closing the source image. The image must remain open
     * until this function returns because the EGLImage is created from its HardwareBuffer.
     */
    fun render(frame: StabilizationFrame): Frame? {
        val width = frame.image.width
        val height = frame.image.height
        if (width <= 0 || height <= 0) return null
        val source = frame.image.image
        val hardwareBuffer = try {
            source.hardwareBuffer
        } catch (error: IllegalStateException) {
            PLog.w(tag, "MGC cannot access HardwareBuffer ts=${frame.timestampNs}: ${error.message}")
            return null
        } ?: return null
        if (!ensure(width, height)) return null

        val imageHandle = MgcEisNativeBridge.createHardwareBufferImage(hardwareBuffer)
        if (imageHandle == 0L) {
            if (!loggedImportFailure) {
                loggedImportFailure = true
                PLog.w(tag, "MGC EGLImage import unavailable; using CPU YUV fallback")
            }
            return null
        }

        return try {
            if (!MgcEisNativeBridge.bindHardwareBufferImage(imageHandle, sourceTextureId)) {
                PLog.w(tag, "MGC EGLImage bind failed ts=${frame.timestampNs}")
                return null
            }
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
            GLES30.glViewport(0, 0, source.width, source.height)
            GLES30.glClearColor(0f, 0f, 0f, 1f)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(programId)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, sourceTextureId)
            GLES30.glUniform1i(sourceSamplerLocation, 0)
            mesh.draw(
                positionLocation = positionLocation,
                textureCoordinateLocation = textureCoordinateLocation,
                rowHomographies = frame.transform?.rowHomographies ?: droppedFrameHomographies,
            )
            // The camera owns this HardwareBuffer and may recycle it as soon as Image.close()
            // returns.  A GL draw only enqueues sampling work, so a memory barrier alone cannot
            // protect that lifetime.  MGC's jwn/jxg renderers insert and wait on an EGL fence at
            // this exact hand-off before releasing their input EGLImage/HardwareBuffer.
            awaitSourceSampling()
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES31.glMemoryBarrier(
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
            )
            GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, 0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            if (!loggedZeroCopy) {
                loggedZeroCopy = true
                PLog.i(tag, "MGC HardwareBuffer EGLImage renderer active")
            }
            Frame(frame.timestampNs, outputTextureId)
        } catch (error: RuntimeException) {
            PLog.w(tag, "MGC EGLImage draw failed ts=${frame.timestampNs}: ${error.message}")
            null
        } finally {
            MgcEisNativeBridge.destroyHardwareBufferImage(imageHandle)
        }
    }

    /**
     * Completes the submitted external-texture sampling before its Camera2 buffer is returned to
     * ImageReader.  The normal path is the same EGL fence hand-off used by MGC.  If this context
     * cannot create a fence, glFinish is the only safe fallback: returning the buffer early would
     * let a later camera frame overwrite pixels while this draw still reads them.
     */
    private fun awaitSourceSampling() {
        val display = EGL14.eglGetCurrentDisplay()
        if (display == EGL14.EGL_NO_DISPLAY) {
            GLES30.glFinish()
            return
        }
        val fence: EGLSync = EGL15.eglCreateSync(
            display,
            EGL15.EGL_SYNC_FENCE,
            longArrayOf(EGL14.EGL_NONE.toLong()),
            0,
        )
        if (fence == EGL15.EGL_NO_SYNC) {
            GLES30.glFinish()
            return
        }
        try {
            val waitResult = EGL15.eglClientWaitSync(
                display,
                fence,
                EGL15.EGL_SYNC_FLUSH_COMMANDS_BIT,
                EGL15.EGL_FOREVER,
            )
            if (waitResult != EGL15.EGL_CONDITION_SATISFIED) {
                PLog.w(tag, "MGC EGL fence wait failed result=$waitResult; forcing GL completion")
                GLES30.glFinish()
            }
        } finally {
            EGL15.eglDestroySync(display, fence)
        }
    }

    fun resetAfterContextLoss() {
        programId = 0
        positionLocation = -1
        textureCoordinateLocation = -1
        sourceSamplerLocation = -1
        sourceTextureId = 0
        outputTextureId = 0
        outputFramebufferId = 0
        width = 0
        height = 0
        mesh.resetAfterContextLoss()
    }

    fun release() {
        val textures = intArrayOf(sourceTextureId, outputTextureId)
            .filter { it != 0 }
            .toIntArray()
        if (textures.isNotEmpty()) GLES30.glDeleteTextures(textures.size, textures, 0)
        if (outputFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(outputFramebufferId), 0)
        }
        if (programId != 0) GLES30.glDeleteProgram(programId)
        mesh.release()
        resetAfterContextLoss()
    }

    private fun ensure(requestedWidth: Int, requestedHeight: Int): Boolean {
        if (programId != 0 && width == requestedWidth && height == requestedHeight) return true
        release()
        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, VERTEX_SHADER)
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, FRAGMENT_SHADER)
        programId = GlUtils.linkProgram(vertexShader, fragmentShader)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (programId == 0) return false
        positionLocation = GLES30.glGetAttribLocation(programId, "aPosition")
        textureCoordinateLocation = GLES30.glGetAttribLocation(programId, "aTexCoord")
        sourceSamplerLocation = GLES30.glGetUniformLocation(programId, "uCameraTexture")
        mesh.initialize()
        sourceTextureId = GlUtils.createOESTexture()
        outputTextureId = createTexture(requestedWidth, requestedHeight)
        if (sourceTextureId == 0 || outputTextureId == 0 ||
            !createOutputTarget(outputTextureId)
        ) {
            release()
            return false
        }
        width = requestedWidth
        height = requestedHeight
        return true
    }

    private fun createTexture(textureWidth: Int, textureHeight: Int): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, ids[0])
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGBA8,
            textureWidth,
            textureHeight,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_UNSIGNED_BYTE,
            null,
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        return ids[0]
    }

    private fun createOutputTarget(textureId: Int): Boolean {
        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        outputFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            textureId,
            0,
        )
        val complete = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) ==
            GLES30.GL_FRAMEBUFFER_COMPLETE
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        if (!complete) PLog.e(tag, "Cannot allocate MGC HardwareBuffer output ${width}x$height")
        return complete
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
            #extension GL_OES_EGL_image_external_essl3 : require
            precision highp float;
            uniform samplerExternalOES uCameraTexture;
            in vec2 vTexCoord;
            out vec4 fragColor;
            void main() {
                fragColor = texture(uCameraTexture, vTexCoord);
            }
        """.trimIndent()
    }
}
