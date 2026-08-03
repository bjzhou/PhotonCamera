package com.hinnka.mycamera.processor

import android.graphics.Bitmap
import android.graphics.ColorSpace
import android.opengl.EGL14
import android.opengl.GLES30
import android.opengl.GLUtils
import android.os.SystemClock
import com.hinnka.mycamera.lut.GlUtils
import com.hinnka.mycamera.lut.Shaders
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog

class OglBokehProcessor {
    companion object {
        private const val TAG = "OglBokehProcessor"
        private const val MAX_BOKEH_RENDER_EDGE = 2560
    }

    private var uDepthMatrixLoc: Int = 0
    private var compactHighlightProgramId = 0
    private var bokehProgramId = 0
    private var bokehCompositeProgramId = 0
    private var jbuUpsampleProgramId = 0
    private var depthSharpenProgramId = 0
    private var vertexBufferId = 0
    private var texCoordBufferId = 0
    private var indexBufferId = 0

    private var eglDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface = EGL14.EGL_NO_SURFACE

    fun applyBokeh(
        originalImage: Bitmap,
        lowResDepthMap: Bitmap,
        focusX: Float,
        focusY: Float,
        aperture: Float
    ): Bitmap? {
        val startedAtMs = SystemClock.elapsedRealtime()
        try {
            val halfFloatOutput = originalImage.config == Bitmap.Config.RGBA_F16
            val linearInput = originalImage.colorSpace?.id ==
                ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB).id
            val (bokehWidth, bokehHeight) = resolveBokehRenderSize(
                originalImage.width,
                originalImage.height,
            )
            PLog.d(
                TAG,
                "Bokeh working resolution: ${bokehWidth}x${bokehHeight}, output=${originalImage.width}x${originalImage.height}"
            )
            initEGL(originalImage.width, originalImage.height)
            initGL()

            val inputTex = createTexture(originalImage, mipmap = true)
            val lowResDepthTex = createTexture(lowResDepthMap, filterNearest = false, mipmap = false)
            val renderStartedAtMs = SystemClock.elapsedRealtime()

            val fbo = IntArray(1)
            GLES30.glGenFramebuffers(1, fbo, 0)
            
            val highResDepthTex = IntArray(1)
            val refinedDepthTex = IntArray(1)

            // Step 1: JBU Upsample (Generate High-Res Refined Depth)
            GLES30.glGenTextures(1, highResDepthTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, highResDepthTex[0])
            GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_R8, bokehWidth, bokehHeight, 0, GLES30.GL_RED, GLES30.GL_UNSIGNED_BYTE, null)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, fbo[0])
            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, highResDepthTex[0], 0)
            requireFramebufferComplete("depth upsample")
            GLES30.glViewport(0, 0, bokehWidth, bokehHeight)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(jbuUpsampleProgramId)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, lowResDepthTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(jbuUpsampleProgramId, "uLowResDepth"), 0)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(jbuUpsampleProgramId, "uHighResGuide"), 1)

            GLES30.glUniform2f(GLES30.glGetUniformLocation(jbuUpsampleProgramId, "uLowResTexelSize"), 1.0f / lowResDepthMap.width, 1.0f / lowResDepthMap.height)

            drawQuad(jbuUpsampleProgramId)

            // Step 2: Depth Edge Sharpening
            GLES30.glGenTextures(1, refinedDepthTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, refinedDepthTex[0])
            GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_R8, bokehWidth, bokehHeight, 0, GLES30.GL_RED, GLES30.GL_UNSIGNED_BYTE, null)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, refinedDepthTex[0], 0)
            requireFramebufferComplete("depth sharpen")
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(depthSharpenProgramId)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, highResDepthTex[0])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(depthSharpenProgramId, "uDepthTexture"), 0)
            GLES30.glUniform2f(GLES30.glGetUniformLocation(depthSharpenProgramId, "uTexelSize"), 1.0f / bokehWidth, 1.0f / bokehHeight)

            drawQuad(depthSharpenProgramId)

            val finalDepthTex = refinedDepthTex[0]
            val focusDepth = sampleDepth(lowResDepthMap, focusX, focusY)
            val maxBlurRadius = originalImage.width.toFloat() / 45.0f
            val identity = FloatArray(16)
            android.opengl.Matrix.setIdentityM(identity, 0)

            // Step 3: Classify only compact, isolated highlights. This prevents
            // large bright regions from entering the inferred-radiance bokeh path.
            val compactHighlightTex = IntArray(1)
            GLES30.glGenTextures(1, compactHighlightTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, compactHighlightTex[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                if (halfFloatOutput) GLES30.GL_RGBA16F else GLES30.GL_RGBA8,
                bokehWidth,
                bokehHeight,
                0,
                GLES30.GL_RGBA,
                if (halfFloatOutput) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE,
                null
            )
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                compactHighlightTex[0],
                0
            )
            requireFramebufferComplete("compact bokeh highlight")
            GLES30.glViewport(0, 0, bokehWidth, bokehHeight)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(compactHighlightProgramId)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTex)
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(compactHighlightProgramId, "uInputTexture"),
                0
            )
            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, finalDepthTex)
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(compactHighlightProgramId, "uDepthTexture"),
                1
            )
            GLES30.glUniformMatrix4fv(
                GLES30.glGetUniformLocation(compactHighlightProgramId, "uDepthMatrix"),
                1,
                false,
                identity,
                0
            )
            GLES30.glUniform1f(
                GLES30.glGetUniformLocation(compactHighlightProgramId, "uMaxBlurRadius"),
                maxBlurRadius
            )
            GLES30.glUniform1f(
                GLES30.glGetUniformLocation(compactHighlightProgramId, "uAperture"),
                aperture
            )
            GLES30.glUniform1f(
                GLES30.glGetUniformLocation(compactHighlightProgramId, "uFocusDepth"),
                focusDepth
            )
            GLES30.glUniform2f(
                GLES30.glGetUniformLocation(compactHighlightProgramId, "uTexelSize"),
                1.0f / originalImage.width,
                1.0f / originalImage.height
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(compactHighlightProgramId, "uLinearInput"),
                if (linearInput) 1 else 0
            )
            drawQuad(compactHighlightProgramId)

            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, compactHighlightTex[0])
            GLES30.glGenerateMipmap(GLES30.GL_TEXTURE_2D)
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_MIN_FILTER,
                GLES30.GL_LINEAR_MIPMAP_LINEAR
            )

            // Step 4: Render the expensive PSF at a bounded working resolution.
            val bokehTex = IntArray(1)
            GLES30.glGenTextures(1, bokehTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, bokehTex[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                if (halfFloatOutput) GLES30.GL_RGBA16F else GLES30.GL_RGBA8,
                bokehWidth,
                bokehHeight,
                0,
                GLES30.GL_RGBA,
                if (halfFloatOutput) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE,
                null
            )
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, bokehTex[0], 0)
            requireFramebufferComplete("PSF bokeh")
            GLES30.glViewport(0, 0, bokehWidth, bokehHeight)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(bokehProgramId)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bokehProgramId, "uInputTexture"), 0)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, finalDepthTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bokehProgramId, "uDepthTexture"), 1)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, compactHighlightTex[0])
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(bokehProgramId, "uHighlightTexture"),
                2
            )

            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehProgramId, "uMaxBlurRadius"), maxBlurRadius)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehProgramId, "uAperture"), aperture)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehProgramId, "uFocusDepth"), focusDepth)
            GLES30.glUniform2f(GLES30.glGetUniformLocation(bokehProgramId, "uTexelSize"), 1.0f / originalImage.width, 1.0f / originalImage.height)
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(bokehProgramId, "uLinearInput"),
                if (linearInput) 1 else 0
            )

            GLES30.glUniformMatrix4fv(GLES30.glGetUniformLocation(bokehProgramId, "uDepthMatrix"), 1, false, identity, 0)

            drawQuad(bokehProgramId)

            // Step 5: Resolve at full resolution. In-focus detail is sampled directly
            // from the original image, while defocused regions use the PSF texture.
            val outputTex = IntArray(1)
            GLES30.glGenTextures(1, outputTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, outputTex[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                if (halfFloatOutput) GLES30.GL_RGBA16F else GLES30.GL_RGBA8,
                originalImage.width,
                originalImage.height,
                0,
                GLES30.GL_RGBA,
                if (halfFloatOutput) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE,
                null
            )
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                outputTex[0],
                0
            )
            requireFramebufferComplete("full-resolution bokeh composite")
            GLES30.glViewport(0, 0, originalImage.width, originalImage.height)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(bokehCompositeProgramId)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bokehCompositeProgramId, "uOriginalTexture"), 0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, bokehTex[0])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bokehCompositeProgramId, "uBokehTexture"), 1)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, finalDepthTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bokehCompositeProgramId, "uDepthTexture"), 2)
            GLES30.glUniformMatrix4fv(
                GLES30.glGetUniformLocation(bokehCompositeProgramId, "uDepthMatrix"),
                1,
                false,
                identity,
                0
            )
            GLES30.glUniform1f(
                GLES30.glGetUniformLocation(bokehCompositeProgramId, "uMaxBlurRadius"),
                maxBlurRadius
            )
            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehCompositeProgramId, "uAperture"), aperture)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehCompositeProgramId, "uFocusDepth"), focusDepth)

            drawQuad(bokehCompositeProgramId)
            GLES30.glFinish()
            val renderFinishedAtMs = SystemClock.elapsedRealtime()

            // Read back to Bitmap
            val resultBitmap = Bitmap.createBitmap(originalImage.width, originalImage.height,
                if (halfFloatOutput) Bitmap.Config.RGBA_F16 else Bitmap.Config.ARGB_8888,
                false,
                originalImage.colorSpace ?: ColorSpace.get(ColorSpace.Named.SRGB))
            val bytesPerPixel = if (halfFloatOutput) 8L else 4L
            val bufferByteCount = originalImage.width.toLong() * originalImage.height.toLong() * bytesPerPixel
            val buffer = LargeDirectBuffer.allocate(bufferByteCount, "OGL bokeh readback") ?: return null
            try {
                GLES30.glReadPixels(
                    0,
                    0,
                    originalImage.width,
                    originalImage.height,
                    GLES30.GL_RGBA,
                    if (halfFloatOutput) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE,
                    buffer
                )
                resultBitmap.copyPixelsFromBuffer(buffer)
            } finally {
                LargeDirectBuffer.free(buffer)
            }
            val readbackFinishedAtMs = SystemClock.elapsedRealtime()

            // Clean up
            GLES30.glDeleteTextures(1, intArrayOf(inputTex), 0)
            GLES30.glDeleteTextures(1, intArrayOf(lowResDepthTex), 0)
            GLES30.glDeleteTextures(1, highResDepthTex, 0)
            GLES30.glDeleteTextures(1, refinedDepthTex, 0)
            GLES30.glDeleteTextures(1, compactHighlightTex, 0)
            GLES30.glDeleteTextures(1, bokehTex, 0)
            GLES30.glDeleteTextures(1, outputTex, 0)
            GLES30.glDeleteFramebuffers(1, fbo, 0)

            PLog.d(
                TAG,
                "Bokeh completed: total=${readbackFinishedAtMs - startedAtMs}ms, " +
                    "setupUpload=${renderStartedAtMs - startedAtMs}ms, " +
                    "render=${renderFinishedAtMs - renderStartedAtMs}ms, " +
                    "readback=${readbackFinishedAtMs - renderFinishedAtMs}ms, " +
                    "working=${bokehWidth}x${bokehHeight}, output=${originalImage.width}x${originalImage.height}"
            )
            return resultBitmap
        } catch (e: Exception) {
            PLog.e(TAG, "Error applying OGL Bokeh: ${e.message}")
            return null
        } finally {
            releaseGL()
        }
    }

    private fun sampleDepth(depthMap: Bitmap, x: Float, y: Float): Float {
        val px = (x * (depthMap.width - 1)).toInt().coerceIn(0, depthMap.width - 1)
        val py = (y * (depthMap.height - 1)).toInt().coerceIn(0, depthMap.height - 1)
        val radius = maxOf((minOf(depthMap.width, depthMap.height) * 0.045f).toInt(), 3)
        val samples = ArrayList<Float>((radius * 2 + 1) * (radius * 2 + 1))

        val xStart = maxOf(px - radius, 0)
        val xEnd = minOf(px + radius, depthMap.width - 1)
        val yStart = maxOf(py - radius, 0)
        val yEnd = minOf(py + radius, depthMap.height - 1)
        for (sampleY in yStart..yEnd) {
            for (sampleX in xStart..xEnd) {
                val color = depthMap.getPixel(sampleX, sampleY)
                samples.add(((color shr 16) and 0xFF) / 255.0f)
            }
        }

        if (samples.isEmpty()) return 0.5f
        samples.sort()
        return samples[samples.size / 2]
    }

    private fun resolveBokehRenderSize(width: Int, height: Int): Pair<Int, Int> {
        val maxEdge = maxOf(width, height)
        if (maxEdge <= MAX_BOKEH_RENDER_EDGE) return width to height
        return if (width >= height) {
            MAX_BOKEH_RENDER_EDGE to
                (height.toLong() * MAX_BOKEH_RENDER_EDGE / width).toInt().coerceAtLeast(1)
        } else {
            (width.toLong() * MAX_BOKEH_RENDER_EDGE / height).toInt().coerceAtLeast(1) to
                MAX_BOKEH_RENDER_EDGE
        }
    }

    private fun requireFramebufferComplete(label: String) {
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        check(status == GLES30.GL_FRAMEBUFFER_COMPLETE) {
            "$label framebuffer incomplete: 0x${status.toString(16)}"
        }
    }

    private fun createTexture(bitmap: Bitmap, filterNearest: Boolean = false, mipmap: Boolean = false): Int {
        val tex = IntArray(1)
        GLES30.glGenTextures(1, tex, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, tex[0])
        val minFilter = if (filterNearest) GLES30.GL_NEAREST else if (mipmap) GLES30.GL_LINEAR_MIPMAP_LINEAR else GLES30.GL_LINEAR
        val magFilter = if (filterNearest) GLES30.GL_NEAREST else GLES30.GL_LINEAR
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, minFilter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, magFilter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        if (bitmap.config == Bitmap.Config.RGBA_F16) {
            val buffer = LargeDirectBuffer.allocate(bitmap.byteCount.toLong(), "OGL bokeh RGBA_F16 upload")
                ?: throw IllegalStateException("Unable to allocate RGBA_F16 upload buffer")
            try {
                bitmap.copyPixelsToBuffer(buffer)
                buffer.position(0)
                GLES30.glTexImage2D(
                    GLES30.GL_TEXTURE_2D,
                    0,
                    GLES30.GL_RGBA16F,
                    bitmap.width,
                    bitmap.height,
                    0,
                    GLES30.GL_RGBA,
                    GLES30.GL_HALF_FLOAT,
                    buffer
                )
            } finally {
                LargeDirectBuffer.free(buffer)
            }
        } else {
            GLUtils.texImage2D(GLES30.GL_TEXTURE_2D, 0, bitmap, 0)
        }
        if (mipmap) {
            GLES30.glGenerateMipmap(GLES30.GL_TEXTURE_2D)
        }
        return tex[0]
    }

    private fun initEGL(width: Int, height: Int) {
        eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
        val version = IntArray(2)
        EGL14.eglInitialize(eglDisplay, version, 0, version, 1)

        val configAttribs = intArrayOf(
            EGL14.EGL_RED_SIZE, 8,
            EGL14.EGL_GREEN_SIZE, 8,
            EGL14.EGL_BLUE_SIZE, 8,
            EGL14.EGL_ALPHA_SIZE, 8,
            EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
            EGL14.EGL_SURFACE_TYPE, EGL14.EGL_PBUFFER_BIT,
            EGL14.EGL_NONE
        )
        val configs = arrayOfNulls<android.opengl.EGLConfig>(1)
        val numConfigs = IntArray(1)
        EGL14.eglChooseConfig(eglDisplay, configAttribs, 0, configs, 0, 1, numConfigs, 0)
        val config = configs[0]

        val contextAttribs = intArrayOf(
            EGL14.EGL_CONTEXT_CLIENT_VERSION, 3,
            EGL14.EGL_NONE
        )
        eglContext = EGL14.eglCreateContext(eglDisplay, config, EGL14.EGL_NO_CONTEXT, contextAttribs, 0)

        val surfaceAttribs = intArrayOf(
            EGL14.EGL_WIDTH, width,
            EGL14.EGL_HEIGHT, height,
            EGL14.EGL_NONE
        )
        eglSurface = EGL14.eglCreatePbufferSurface(eglDisplay, config, surfaceAttribs, 0)
        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)
    }

    private fun initGL() {
        val vs = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.SIMPLE_VERTEX_SHADER)
        check(vs != 0) { "Bokeh vertex shader compilation failed" }
        try {
            compactHighlightProgramId = createProgram(
                vs,
                Shaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER,
                "compact bokeh highlight"
            )
            bokehProgramId = createProgram(vs, Shaders.PSF_SPLAT_FRAGMENT_SHADER, "PSF bokeh")
            bokehCompositeProgramId = createProgram(
                vs,
                Shaders.BOKEH_COMPOSITE_FRAGMENT_SHADER,
                "bokeh composite",
            )
            jbuUpsampleProgramId = createProgram(vs, Shaders.JBU_UPSAMPLE_FRAGMENT_SHADER, "depth upsample")
            depthSharpenProgramId = createProgram(vs, Shaders.DEPTH_SHARPEN_FRAGMENT_SHADER, "depth sharpen")
        } finally {
            GLES30.glDeleteShader(vs)
        }

        vertexBufferId = GlUtils.createBuffer(Shaders.FULL_QUAD_VERTICES)
        texCoordBufferId = GlUtils.createBuffer(Shaders.TEXTURE_COORDS)

        val indexBuffer = java.nio.ByteBuffer.allocateDirect(Shaders.DRAW_ORDER.size * 2)
            .order(java.nio.ByteOrder.nativeOrder())
            .asShortBuffer()
        indexBuffer.put(Shaders.DRAW_ORDER)
        indexBuffer.position(0)
        val ids = IntArray(1)
        GLES30.glGenBuffers(1, ids, 0)
        indexBufferId = ids[0]
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glBufferData(GLES30.GL_ELEMENT_ARRAY_BUFFER, Shaders.DRAW_ORDER.size * 2, indexBuffer, GLES30.GL_STATIC_DRAW)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
    }

    private fun createProgram(vertexShader: Int, fragmentSource: String, label: String): Int {
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource)
        check(fragmentShader != 0) { "$label fragment shader compilation failed" }
        return try {
            GlUtils.linkProgram(vertexShader, fragmentShader).also { program ->
                check(program != 0) { "$label program linking failed" }
            }
        } finally {
            GLES30.glDeleteShader(fragmentShader)
        }
    }

    private fun drawQuad(program: Int) {
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, vertexBufferId)
        val posLoc = GLES30.glGetAttribLocation(program, "aPosition")
        GLES30.glEnableVertexAttribArray(posLoc)
        GLES30.glVertexAttribPointer(posLoc, 2, GLES30.GL_FLOAT, false, 0, 0)

        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, texCoordBufferId)
        val texLoc = GLES30.glGetAttribLocation(program, "aTexCoord")
        GLES30.glEnableVertexAttribArray(texLoc)
        GLES30.glVertexAttribPointer(texLoc, 2, GLES30.GL_FLOAT, false, 0, 0)

        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glDrawElements(GLES30.GL_TRIANGLES, 6, GLES30.GL_UNSIGNED_SHORT, 0)

        GLES30.glDisableVertexAttribArray(posLoc)
        GLES30.glDisableVertexAttribArray(texLoc)
    }

    private fun releaseGL() {
        if (compactHighlightProgramId != 0) GLES30.glDeleteProgram(compactHighlightProgramId)
        if (bokehProgramId != 0) GLES30.glDeleteProgram(bokehProgramId)
        if (bokehCompositeProgramId != 0) GLES30.glDeleteProgram(bokehCompositeProgramId)
        if (jbuUpsampleProgramId != 0) GLES30.glDeleteProgram(jbuUpsampleProgramId)
        if (depthSharpenProgramId != 0) GLES30.glDeleteProgram(depthSharpenProgramId)
        if (vertexBufferId != 0) GLES30.glDeleteBuffers(1, intArrayOf(vertexBufferId), 0)
        if (texCoordBufferId != 0) GLES30.glDeleteBuffers(1, intArrayOf(texCoordBufferId), 0)
        if (indexBufferId != 0) GLES30.glDeleteBuffers(1, intArrayOf(indexBufferId), 0)

        if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglMakeCurrent(eglDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)
            EGL14.eglDestroySurface(eglDisplay, eglSurface)
            EGL14.eglDestroyContext(eglDisplay, eglContext)
            EGL14.eglTerminate(eglDisplay)
        }
        eglDisplay = EGL14.EGL_NO_DISPLAY
        eglContext = EGL14.EGL_NO_CONTEXT
        eglSurface = EGL14.EGL_NO_SURFACE
        compactHighlightProgramId = 0
        bokehProgramId = 0
        bokehCompositeProgramId = 0
        jbuUpsampleProgramId = 0
        depthSharpenProgramId = 0
        vertexBufferId = 0
        texCoordBufferId = 0
        indexBufferId = 0
    }
}
