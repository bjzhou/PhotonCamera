package com.hinnka.mycamera.livephoto

import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLExt
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.opengl.Matrix
import android.view.Surface
import com.hinnka.mycamera.lut.GlUtils
import com.hinnka.mycamera.lut.GlUtils.compileShader
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.Shaders
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.video.VideoEncoderColorConfig
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
    colorRecipeParams: ColorRecipeParams?, // 保留参数
    private val encoderColorConfig: VideoEncoderColorConfig = VideoEncoderColorConfig.sdrDisplay()
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
    private var horizontalMirrorTexCoordBuffer: FloatBuffer? = null
    private var verticalMirrorTexCoordBuffer: FloatBuffer? = null
    private var indexBuffer: ShortBuffer? = null

    // Cached locations
    private var uMVPMatrixLoc = -1
    private var uSTMatrixLoc = -1
    private var uCropRectLoc = -1
    private var uCameraTextureLoc = -1
    private var aPositionLoc = -1
    private var aTexCoordLoc = -1

    private var isInitialized = false

    private val fullCropRect = floatArrayOf(0f, 0f, 1f, 1f)
    private val identityMatrix = FloatArray(16).apply {
        Matrix.setIdentityM(this, 0)
    }

    // 空实现，不再需要
    fun updateConfig(lutConfig: LutConfig?, colorRecipeParams: ColorRecipeParams?) {
        // no-op
    }

    /**
     * 初始化 EGL 环境并绑定到输出 Surface
     * @param surface 目标 Surface (MediaCodec Input Surface)
     * @param sharedContext 共享上下文 (主渲染线程的 Context)
     * @param sharedDisplay 共享显示 (主渲染线程使用的 Display)
     */
    fun initialize(surface: Surface, sharedContext: EGLContext, sharedDisplay: EGLDisplay) {
        if (isInitialized) return
        PLog.d(TAG, "Initializing with sharedContext: $sharedContext, sharedDisplay: $sharedDisplay")
        
        // 必须使用相同的 EGLDisplay，否则 context sharing 可能失败
        eglDisplay = if (sharedDisplay != EGL14.EGL_NO_DISPLAY) sharedDisplay else EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
        
        // 检查 display 是否已初始化 (如果使用 sharedDisplay 通常已经初始化)
        val major = IntArray(1)
        val minor = IntArray(1)
        if (!EGL14.eglInitialize(eglDisplay, major, 0, minor, 0)) {
            PLog.e(TAG, "eglInitialize failed: 0x${Integer.toHexString(EGL14.eglGetError())}")
            return
        }

        val eglConfig = chooseRecordableConfig() ?: run {
            PLog.e(TAG, "Failed to choose EGL config for ${encoderColorConfig.debugName}")
            return
        }

        eglContext = EGL14.eglCreateContext(
            eglDisplay, eglConfig, sharedContext,
            intArrayOf(EGL14.EGL_CONTEXT_CLIENT_VERSION, 3, EGL14.EGL_NONE), 0
        )
        if (eglContext == EGL14.EGL_NO_CONTEXT) {
            val error = EGL14.eglGetError()
            PLog.e(TAG, "eglCreateContext failed: 0x${Integer.toHexString(error)}. Context sharing failed.")
            return
        }

        eglSurface = EGL14.eglCreateWindowSurface(
            eglDisplay, eglConfig, surface,
            intArrayOf(EGL14.EGL_NONE), 0
        )
        if (eglSurface == EGL14.EGL_NO_SURFACE) {
            PLog.e(TAG, "eglCreateWindowSurface failed: 0x${Integer.toHexString(EGL14.eglGetError())}")
            return
        }

        if (!makeCurrent()) {
            PLog.e(TAG, "Initial eglMakeCurrent failed")
            return
        }
        
        initGL()
        isInitialized = true
        PLog.d(
            TAG,
            "EGL initialized successfully. sharedDisplay=${sharedDisplay != EGL14.EGL_NO_DISPLAY}, " +
                "surfaceConfig=${encoderColorConfig.debugName}, prefer10Bit=${encoderColorConfig.prefer10BitInputSurface}"
        )
    }

    private fun chooseRecordableConfig(): EGLConfig? {
        if (encoderColorConfig.prefer10BitInputSurface) {
            chooseConfig(buildRecordableConfigAttribs(redSize = 10, greenSize = 10, blueSize = 10, alphaSize = 2))
                ?.also {
                    PLog.i(TAG, "Using 10-bit EGL config for ${encoderColorConfig.debugName}")
                    return it
                }
            PLog.w(TAG, "10-bit EGL config unavailable, falling back to 8-bit recordable surface")
        }
        return chooseConfig(buildRecordableConfigAttribs(redSize = 8, greenSize = 8, blueSize = 8, alphaSize = 8))
    }

    private fun chooseConfig(configAttribs: IntArray): EGLConfig? {
        val configs = arrayOfNulls<EGLConfig>(1)
        val numConfigs = IntArray(1)
        val success = EGL14.eglChooseConfig(
            eglDisplay,
            configAttribs,
            0,
            configs,
            0,
            1,
            numConfigs,
            0
        )
        if (!success || numConfigs[0] <= 0) {
            return null
        }
        return configs[0]
    }

    private fun buildRecordableConfigAttribs(
        redSize: Int,
        greenSize: Int,
        blueSize: Int,
        alphaSize: Int
    ): IntArray {
        return intArrayOf(
            EGL14.EGL_RED_SIZE, redSize,
            EGL14.EGL_GREEN_SIZE, greenSize,
            EGL14.EGL_BLUE_SIZE, blueSize,
            EGL14.EGL_ALPHA_SIZE, alphaSize,
            EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
            0x3142, 1, // EGL_RECORDABLE_ANDROID
            EGL14.EGL_NONE
        )
    }

    private fun makeCurrent(): Boolean {
        if (eglDisplay != EGL14.EGL_NO_DISPLAY && eglSurface != EGL14.EGL_NO_SURFACE && eglContext != EGL14.EGL_NO_CONTEXT) {
            if (!EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
                PLog.e(TAG, "eglMakeCurrent failed: 0x${Integer.toHexString(EGL14.eglGetError())}")
                return false
            }
            return true
        }
        return false
    }

    private fun initGL() {
        // 使用 COPY_2D Shader
        val vs = compileShader(GLES30.GL_VERTEX_SHADER, Shaders.VERTEX_SHADER)
        val fs = compileShader(GLES30.GL_FRAGMENT_SHADER, Shaders.FRAGMENT_SHADER_COPY_2D)
        if (vs == 0 || fs == 0) {
            PLog.e(TAG, "Failed to compile video copy shaders")
            return
        }

        shaderProgram = GlUtils.linkProgram(vs, fs)
        GLES30.glDeleteShader(vs)
        GLES30.glDeleteShader(fs)
        if (shaderProgram == 0) {
            PLog.e(TAG, "Failed to link video copy program")
            return
        }

        uMVPMatrixLoc = GLES30.glGetUniformLocation(shaderProgram, "uMVPMatrix")
        uSTMatrixLoc = GLES30.glGetUniformLocation(shaderProgram, "uSTMatrix")
        uCropRectLoc = GLES30.glGetUniformLocation(shaderProgram, "uCropRect")
        uCameraTextureLoc = GLES30.glGetUniformLocation(shaderProgram, "uCameraTexture")
        aPositionLoc = GLES30.glGetAttribLocation(shaderProgram, "aPosition")
        aTexCoordLoc = GLES30.glGetAttribLocation(shaderProgram, "aTexCoord")

        // 准备顶点数据
        vertexBuffer = ByteBuffer.allocateDirect(Shaders.FULL_QUAD_VERTICES.size * 4).run {
            order(ByteOrder.nativeOrder()).asFloatBuffer().put(Shaders.FULL_QUAD_VERTICES).apply { position(0) }
        }
        texCoordBuffer = ByteBuffer.allocateDirect(Shaders.TEXTURE_COORDS.size * 4).run {
            order(ByteOrder.nativeOrder()).asFloatBuffer().put(Shaders.TEXTURE_COORDS).apply { position(0) }
        }
        horizontalMirrorTexCoordBuffer = ByteBuffer.allocateDirect(HORIZONTAL_MIRROR_TEXTURE_COORDS.size * 4).run {
            order(ByteOrder.nativeOrder()).asFloatBuffer().put(HORIZONTAL_MIRROR_TEXTURE_COORDS).apply { position(0) }
        }
        verticalMirrorTexCoordBuffer = ByteBuffer.allocateDirect(VERTICAL_MIRROR_TEXTURE_COORDS.size * 4).run {
            order(ByteOrder.nativeOrder()).asFloatBuffer().put(VERTICAL_MIRROR_TEXTURE_COORDS).apply { position(0) }
        }
        indexBuffer = ByteBuffer.allocateDirect(Shaders.DRAW_ORDER.size * 2).run {
            order(ByteOrder.nativeOrder()).asShortBuffer().put(Shaders.DRAW_ORDER).apply { position(0) }
        }
    }

    /**
     * 渲染一帧
     * @param textureId 2D 纹理 ID (GL_TEXTURE_2D)
     */
    fun renderFrame(
        textureId: Int,
        stMatrix: FloatArray,
        timestampUs: Long,
        mirrorHorizontally: Boolean = false,
        mirrorVertically: Boolean = false
    ) {
        if (!isInitialized || textureId == 0 || shaderProgram == 0) return

        if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
            val currentContext = EGL14.eglGetCurrentContext()
            if (currentContext != eglContext) {
                if (!EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
                    PLog.e(TAG, "eglMakeCurrent failed before render: 0x${Integer.toHexString(EGL14.eglGetError())}")
                    return
                }
            }
        } else {
            return
        }

        GLES30.glViewport(0, 0, width, height)
        GLES30.glClearColor(0.0f, 0.0f, 0.0f, 1.0f)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glUseProgram(shaderProgram)

        // 录制链路复用 LutRenderer 的顶点着色器，因此必须显式提供完整纹理裁剪区域。
        if (uSTMatrixLoc != -1) GLES30.glUniformMatrix4fv(uSTMatrixLoc, 1, false, stMatrix, 0)
        if (uMVPMatrixLoc != -1) GLES30.glUniformMatrix4fv(uMVPMatrixLoc, 1, false, identityMatrix, 0)
        if (uCropRectLoc != -1) {
            GLES30.glUniform4f(
                uCropRectLoc,
                fullCropRect[0],
                fullCropRect[1],
                fullCropRect[2],
                fullCropRect[3]
            )
        }

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
            val textureCoordinates = when {
                mirrorHorizontally -> horizontalMirrorTexCoordBuffer
                mirrorVertically -> verticalMirrorTexCoordBuffer
                else -> texCoordBuffer
            }
            GLES30.glEnableVertexAttribArray(aTexCoordLoc)
            GLES30.glVertexAttribPointer(aTexCoordLoc, 2, GLES30.GL_FLOAT, false, 0, textureCoordinates)
        }

        indexBuffer?.let {
            it.position(0)
            GLES30.glDrawElements(GLES30.GL_TRIANGLES, 6, GLES30.GL_UNSIGNED_SHORT, it)
        }

        if (aPositionLoc != -1) GLES30.glDisableVertexAttribArray(aPositionLoc)
        if (aTexCoordLoc != -1) GLES30.glDisableVertexAttribArray(aTexCoordLoc)

        EGLExt.eglPresentationTimeANDROID(eglDisplay, eglSurface, timestampUs * 1000)
        if (!EGL14.eglSwapBuffers(eglDisplay, eglSurface)) {
            val error = EGL14.eglGetError()
            if (error != EGL14.EGL_SUCCESS) {
                PLog.e(TAG, "eglSwapBuffers failed: 0x${Integer.toHexString(error)}")
            }
        }
    }

    fun release() {
        if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglMakeCurrent(eglDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)
            EGL14.eglDestroySurface(eglDisplay, eglSurface)
            EGL14.eglDestroyContext(eglDisplay, eglContext)
        }
        eglDisplay = EGL14.EGL_NO_DISPLAY
        eglContext = EGL14.EGL_NO_CONTEXT
        eglSurface = EGL14.EGL_NO_SURFACE
        shaderProgram = 0
        isInitialized = false
    }

}

private val HORIZONTAL_MIRROR_TEXTURE_COORDS = floatArrayOf(
    1.0f, 0.0f,
    0.0f, 0.0f,
    1.0f, 1.0f,
    0.0f, 1.0f
)

private val VERTICAL_MIRROR_TEXTURE_COORDS = floatArrayOf(
    0.0f, 1.0f,
    1.0f, 1.0f,
    0.0f, 0.0f,
    1.0f, 0.0f
)
