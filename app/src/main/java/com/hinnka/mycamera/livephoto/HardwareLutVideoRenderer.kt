package com.hinnka.mycamera.livephoto

import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLExt
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.view.Surface
import com.hinnka.mycamera.lut.GlUtils.compileShader
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.Shaders
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer

/**
 * 视频帧渲染引擎 (重构版)
 *
 * 专门负责将纹理(GL_TEXTURE_2D)渲染到 MediaCodec 的 InputSurface。
 * 此版本不再处理 LUT 和色彩配方，而是直接接受已经处理好的 FBO 纹理。
 */
class HardwareLutVideoRenderer(
    private val width: Int,
    private val height: Int,
    lutConfig: LutConfig?, // 保留参数以兼容现有调用
    colorRecipeParams: ColorRecipeParams? // 保留参数
) {
    companion object {
        private const val TAG = "HardwareLutVideoRenderer"
    }

    // EGL
    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE

    // OpenGL
    private var shaderProgram: Int = 0
    private var vertexBuffer: FloatBuffer? = null
    private var texCoordBuffer: FloatBuffer? = null
    private var indexBuffer: ShortBuffer? = null

    // Cached locations
    private var uMVPMatrixLoc = -1
    private var uSTMatrixLoc = -1
    private var uCameraTextureLoc = -1
    private var aPositionLoc = -1
    private var aTexCoordLoc = -1

    // 空实现，不再需要
    fun updateConfig(lutConfig: LutConfig?, colorRecipeParams: ColorRecipeParams?) {
        // no-op
    }

    /**
     * 初始化 EGL 环境并绑定到输出 Surface
     * @param sharedContext 共享上下文
     */
    fun initialize(surface: Surface, sharedContext: EGLContext = EGL14.EGL_NO_CONTEXT) {
        eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
        EGL14.eglInitialize(eglDisplay, IntArray(2), 0, IntArray(2), 1)

        val configAttribs = intArrayOf(
            EGL14.EGL_RED_SIZE, 8,
            EGL14.EGL_GREEN_SIZE, 8,
            EGL14.EGL_BLUE_SIZE, 8,
            EGL14.EGL_ALPHA_SIZE, 8,
            EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
            0x3142, 1, // EGL_RECORDABLE_ANDROID
            EGL14.EGL_NONE
        )
        val configs = arrayOfNulls<EGLConfig>(1)
        val numConfigs = IntArray(1)
        if (!EGL14.eglChooseConfig(eglDisplay, configAttribs, 0, configs, 0, 1, numConfigs, 0)) {
            PLog.e(TAG, "eglChooseConfig failed")
            return
        }

        eglContext = EGL14.eglCreateContext(
            eglDisplay, configs[0], sharedContext,
            intArrayOf(EGL14.EGL_CONTEXT_CLIENT_VERSION, 3, EGL14.EGL_NONE), 0
        )

        eglSurface = EGL14.eglCreateWindowSurface(
            eglDisplay, configs[0], surface,
            intArrayOf(EGL14.EGL_NONE), 0
        )

        makeCurrent()
        initGL()
        PLog.d(TAG, "EGL initialized for Texture Copy")
    }

    private fun makeCurrent() {
        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)
    }

    private fun initGL() {
        // 使用 COPY_2D Shader
        val vs = compileShader(GLES30.GL_VERTEX_SHADER, Shaders.VERTEX_SHADER)
        val fs = compileShader(GLES30.GL_FRAGMENT_SHADER, Shaders.FRAGMENT_SHADER_COPY_2D)

        shaderProgram = GLES30.glCreateProgram().apply {
            GLES30.glAttachShader(this, vs)
            GLES30.glAttachShader(this, fs)
            GLES30.glLinkProgram(this)
        }

        uMVPMatrixLoc = GLES30.glGetUniformLocation(shaderProgram, "uMVPMatrix")
        uSTMatrixLoc = GLES30.glGetUniformLocation(shaderProgram, "uSTMatrix")
        uCameraTextureLoc = GLES30.glGetUniformLocation(shaderProgram, "uCameraTexture")
        aPositionLoc = GLES30.glGetAttribLocation(shaderProgram, "aPosition")
        aTexCoordLoc = GLES30.glGetAttribLocation(shaderProgram, "aTexCoord")

        // 准备定点数据
        vertexBuffer = ByteBuffer.allocateDirect(Shaders.FULL_QUAD_VERTICES.size * 4).run {
            order(ByteOrder.nativeOrder()).asFloatBuffer().put(Shaders.FULL_QUAD_VERTICES).apply { position(0) }
        }
        texCoordBuffer = ByteBuffer.allocateDirect(Shaders.TEXTURE_COORDS.size * 4).run {
            order(ByteOrder.nativeOrder()).asFloatBuffer().put(Shaders.TEXTURE_COORDS).apply { position(0) }
        }
        indexBuffer = ByteBuffer.allocateDirect(Shaders.DRAW_ORDER.size * 2).run {
            order(ByteOrder.nativeOrder()).asShortBuffer().put(Shaders.DRAW_ORDER).apply { position(0) }
        }
    }

    /**
     * 渲染一帧
     * @param textureId 2D 纹理 ID (GL_TEXTURE_2D)
     */
    fun renderFrame(textureId: Int, stMatrix: FloatArray, timestampUs: Long) {
        val oldDisplay = EGL14.eglGetCurrentDisplay()
        val oldDrawSurface = EGL14.eglGetCurrentSurface(EGL14.EGL_DRAW)
        val oldReadSurface = EGL14.eglGetCurrentSurface(EGL14.EGL_READ)
        val oldContext = EGL14.eglGetCurrentContext()

        makeCurrent()

        GLES30.glViewport(0, 0, width, height)
        GLES30.glClearColor(0.0f, 0.0f, 0.0f, 1.0f)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glUseProgram(shaderProgram)

        // 传入矩阵
        // 因为我们直接拷贝 FBO，stMatrix 可能需要重置为 Identity，或者根据 FBO 坐标系调整
        // FBO 纹理通常是标准坐标 (0,0)-(1,1) 上下可能翻转
        // 这里暂时传递 stMatrix，如果 FBO 自带变换则可能需要 Identity
        if (uSTMatrixLoc != -1) GLES30.glUniformMatrix4fv(uSTMatrixLoc, 1, false, stMatrix, 0)

        val mvp = FloatArray(16)
        android.opengl.Matrix.setIdentityM(mvp, 0)
        if (uMVPMatrixLoc != -1) GLES30.glUniformMatrix4fv(uMVPMatrixLoc, 1, false, mvp, 0)

        // 绑定 2D 纹理
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        if (uCameraTextureLoc != -1) GLES30.glUniform1i(uCameraTextureLoc, 0)

        // 绘制
        if (aPositionLoc != -1) {
            GLES30.glEnableVertexAttribArray(aPositionLoc)
            GLES30.glVertexAttribPointer(aPositionLoc, 2, GLES30.GL_FLOAT, false, 0, vertexBuffer)
        }
        if (aTexCoordLoc != -1) {
            GLES30.glEnableVertexAttribArray(aTexCoordLoc)
            GLES30.glVertexAttribPointer(aTexCoordLoc, 2, GLES30.GL_FLOAT, false, 0, texCoordBuffer)
        }

        GLES30.glDrawElements(GLES30.GL_TRIANGLES, 6, GLES30.GL_UNSIGNED_SHORT, indexBuffer)

        if (aPositionLoc != -1) GLES30.glDisableVertexAttribArray(aPositionLoc)
        if (aTexCoordLoc != -1) GLES30.glDisableVertexAttribArray(aTexCoordLoc)

        EGLExt.eglPresentationTimeANDROID(eglDisplay, eglSurface, timestampUs * 1000)
        EGL14.eglSwapBuffers(eglDisplay, eglSurface)

        EGL14.eglMakeCurrent(oldDisplay, oldDrawSurface, oldReadSurface, oldContext)
    }

    fun release() {
        if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglMakeCurrent(eglDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)
            EGL14.eglDestroySurface(eglDisplay, eglSurface)
            EGL14.eglDestroyContext(eglDisplay, eglContext)
            EGL14.eglTerminate(eglDisplay)
        }
        shaderProgram = 0
    }
}
