package com.hinnka.mycamera.processor

import android.graphics.Bitmap
import android.graphics.ColorSpace
import android.opengl.EGL14
import android.opengl.GLES30
import android.opengl.GLUtils
import com.hinnka.mycamera.lut.GlUtils
import com.hinnka.mycamera.lut.Shaders
import com.hinnka.mycamera.utils.PLog

class OglBokehProcessor {
    companion object {
        private const val TAG = "OglBokehProcessor"
    }

    private var uDepthMatrixLoc: Int = 0
    private var bokehProgramId = 0
    private var fgfCoeffProgramId = 0
    private var fgfApplyProgramId = 0
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
        try {
            initEGL(originalImage.width, originalImage.height)
            initGL()

            val inputTex = createTexture(originalImage, mipmap = true)
            val lowResDepthTex = createTexture(lowResDepthMap)

            // Step 1: FGF Coefficients (Run at low resolution)
            val lowResCoeffTex = IntArray(1)
            GLES30.glGenTextures(1, lowResCoeffTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, lowResCoeffTex[0])
            // Use RGB16F to store (a, b, mean_I)
            GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGB16F, lowResDepthMap.width, lowResDepthMap.height, 0, GLES30.GL_RGB, GLES30.GL_HALF_FLOAT, null)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

            val fbo = IntArray(1)
            GLES30.glGenFramebuffers(1, fbo, 0)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, fbo[0])
            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, lowResCoeffTex[0], 0)

            GLES30.glViewport(0, 0, lowResDepthMap.width, lowResDepthMap.height)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(fgfCoeffProgramId)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, lowResDepthTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(fgfCoeffProgramId, "uLowResDepth"), 0)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(fgfCoeffProgramId, "uLowResGuide"), 1)

            GLES30.glUniform2f(GLES30.glGetUniformLocation(fgfCoeffProgramId, "uTexelSize"), 1.0f / lowResDepthMap.width, 1.0f / lowResDepthMap.height)

            drawQuad(fgfCoeffProgramId)

            // Step 2: FGF Apply (Generate High-Res Refined Depth)
            val highResDepthTex = IntArray(1)
            GLES30.glGenTextures(1, highResDepthTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, highResDepthTex[0])
            GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_R8, originalImage.width, originalImage.height, 0, GLES30.GL_RED, GLES30.GL_UNSIGNED_BYTE, null)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, highResDepthTex[0], 0)
            GLES30.glViewport(0, 0, originalImage.width, originalImage.height)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(fgfApplyProgramId)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(fgfApplyProgramId, "uHighResGuide"), 0)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, lowResCoeffTex[0])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(fgfApplyProgramId, "uLowResCoeffs"), 1)
            
            // Pass the texel size of the low-res coefficient texture for guidance-aware upsampling
            GLES30.glUniform2f(GLES30.glGetUniformLocation(fgfApplyProgramId, "uLowResTexelSize"), 1.0f / lowResDepthMap.width, 1.0f / lowResDepthMap.height)

            drawQuad(fgfApplyProgramId)

            // Step 3: Apply Bokeh
            val outputTex = IntArray(1)
            GLES30.glGenTextures(1, outputTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, outputTex[0])
            GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA, originalImage.width, originalImage.height, 0, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, outputTex[0], 0)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(bokehProgramId)

            val focusDepth = sampleDepth(lowResDepthMap, focusX, focusY)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bokehProgramId, "uInputTexture"), 0)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, highResDepthTex[0])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bokehProgramId, "uDepthTexture"), 1)

            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehProgramId, "uMaxBlurRadius"), originalImage.width.toFloat() / 24.0f)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehProgramId, "uAperture"), aperture)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehProgramId, "uFocusDepth"), focusDepth)
            GLES30.glUniform2f(GLES30.glGetUniformLocation(bokehProgramId, "uTexelSize"), 1.0f / originalImage.width, 1.0f / originalImage.height)

            val identity = FloatArray(16)
            android.opengl.Matrix.setIdentityM(identity, 0)
            GLES30.glUniformMatrix4fv(GLES30.glGetUniformLocation(bokehProgramId, "uDepthMatrix"), 1, false, identity, 0)

            drawQuad(bokehProgramId)
            GLES30.glFinish()

            // Read back to Bitmap
            val resultBitmap = Bitmap.createBitmap(originalImage.width, originalImage.height,
                Bitmap.Config.ARGB_8888, false, originalImage.colorSpace ?: ColorSpace.get(ColorSpace.Named.SRGB))
            val buffer = java.nio.ByteBuffer.allocateDirect(originalImage.width * originalImage.height * 4)
            GLES30.glReadPixels(0, 0, originalImage.width, originalImage.height, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, buffer)
            resultBitmap.copyPixelsFromBuffer(buffer)

            // Clean up
            GLES30.glDeleteTextures(1, intArrayOf(inputTex), 0)
            GLES30.glDeleteTextures(1, intArrayOf(lowResDepthTex), 0)
            GLES30.glDeleteTextures(1, lowResCoeffTex, 0)
            GLES30.glDeleteTextures(1, highResDepthTex, 0)
            GLES30.glDeleteTextures(1, outputTex, 0)
            GLES30.glDeleteFramebuffers(1, fbo, 0)

            return resultBitmap
        } catch (e: Exception) {
            PLog.e(TAG, "Error applying OGL Bokeh: ${e.message}")
            return null
        } finally {
            releaseGL()
        }
    }

    private fun sampleDepth(depthMap: Bitmap, x: Float, y: Float): Float {
        val px = (x * depthMap.width).toInt().coerceIn(0, depthMap.width - 1)
        val py = (y * depthMap.height).toInt().coerceIn(0, depthMap.height - 1)
        val color = depthMap.getPixel(px, py)
        // Assume depth is in R channel
        return (color shr 16 and 0xFF) / 255.0f
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
        GLUtils.texImage2D(GLES30.GL_TEXTURE_2D, 0, bitmap, 0)
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
        val fs = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, Shaders.PSF_SPLAT_FRAGMENT_SHADER)
        bokehProgramId = GlUtils.linkProgram(vs, fs)

        val fgfCoeffFs = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, Shaders.FGF_COEFFS_FRAGMENT_SHADER)
        fgfCoeffProgramId = GlUtils.linkProgram(vs, fgfCoeffFs)

        val fgfApplyFs = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, Shaders.FGF_APPLY_FRAGMENT_SHADER)
        fgfApplyProgramId = GlUtils.linkProgram(vs, fgfApplyFs)

        GLES30.glDeleteShader(vs)
        GLES30.glDeleteShader(fs)
        GLES30.glDeleteShader(fgfCoeffFs)
        GLES30.glDeleteShader(fgfApplyFs)

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
        if (bokehProgramId != 0) GLES30.glDeleteProgram(bokehProgramId)
        if (fgfCoeffProgramId != 0) GLES30.glDeleteProgram(fgfCoeffProgramId)
        if (fgfApplyProgramId != 0) GLES30.glDeleteProgram(fgfApplyProgramId)
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
    }
}
