package com.hinnka.mycamera.lut

import android.graphics.Bitmap
import android.graphics.SurfaceTexture
import android.opengl.EGL14
import android.opengl.GLES11Ext
import android.opengl.GLES30
import android.opengl.GLSurfaceView
import android.opengl.Matrix
import android.util.Log
import android.view.Surface
import com.hinnka.mycamera.livephoto.LivePhotoRecorder
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.ShortBuffer
import javax.microedition.khronos.egl.EGLConfig
import javax.microedition.khronos.opengles.GL10

/**
 * LUT 渲染器
 * 
 * 实现 GLSurfaceView.Renderer 接口，负责：
 * 1. 从相机 SurfaceTexture 获取帧
 * 2. 应用 3D LUT 颜色变换
 * 3. 渲染到屏幕
 */
class LutRenderer : GLSurfaceView.Renderer {

    companion object {
        private const val TAG = "LutRenderer"

        // 属性位置
        private const val POSITION_COMPONENT_COUNT = 2
        private const val TEXTURE_COORD_COMPONENT_COUNT = 2
        private const val BYTES_PER_FLOAT = 4
        private const val BYTES_PER_SHORT = 2
    }

    // 着色器程序 ID
    private var programId: Int = 0

    // 纹理 ID
    private var cameraTextureId: Int = 0
    private var lutTextureId: Int = 0

    // 缓冲区
    private var vertexBufferId: Int = 0
    private var texCoordBufferId: Int = 0
    private var indexBufferId: Int = 0
    private var pboId: Int = 0

    // FBO 相关
    private var fboId: Int = 0
    private var fboTextureId: Int = 0

    // Copy Shader (FBO -> Screen)
    private var copyProgramId: Int = 0
    private var uCopyTextureLoc: Int = 0
    private var uCopyMVPMatrixLoc: Int = 0
    private var uCopySTMatrixLoc: Int = 0
    private var aCopyPositionLoc: Int = 0
    private var aCopyTexCoordLoc: Int = 0

    // Uniform 位置
    private var uMVPMatrixLocation: Int = 0
    private var uSTMatrixLocation: Int = 0
    private var uCameraTextureLocation: Int = 0
    private var uLutTextureLocation: Int = 0
    private var uLutSizeLocation: Int = 0
    private var uLutIntensityLocation: Int = 0
    private var uLutEnabledLocation: Int = 0

    // 色彩配方 Uniform 位置
    private var uColorRecipeEnabledLocation: Int = 0
    private var uExposureLocation: Int = 0
    private var uContrastLocation: Int = 0
    private var uSaturationLocation: Int = 0
    private var uTemperatureLocation: Int = 0
    private var uTintLocation: Int = 0
    private var uFadeLocation: Int = 0
    private var uVibranceLocation: Int = 0
    private var uHighlightsLocation: Int = 0
    private var uShadowsLocation: Int = 0
    private var uFilmGrainLocation: Int = 0
    private var uVignetteLocation: Int = 0
    private var uBleachBypassLocation: Int = 0

    // Attribute 位置
    private var aPositionLocation: Int = 0
    private var aTexCoordLocation: Int = 0

    // SurfaceTexture 变换矩阵
    private val stMatrix = FloatArray(16)

    // MVP 变换矩阵（用于 center crop）
    private val mvpMatrix = FloatArray(16)

    // 相机 SurfaceTexture
    private var surfaceTexture: SurfaceTexture? = null
    private var frameAvailable = false
    private val frameSyncObject = Object()

    // 标记 Surface 是否已创建（GL 上下文是否可用）
    private var surfaceReady = false

    // 待处理的 LUT 配置（Surface 创建前设置的 LUT）
    private var pendingLutConfig: LutConfig? = null

    // LUT 配置
    private var currentLutConfig: LutConfig? = null
    private var lutSize: Float = 32f

    // LUT 强度 (0.0 - 1.0)
    @Volatile
    var lutIntensity: Float = 1.0f

    // LUT 是否启用
    @Volatile
    var lutEnabled: Boolean = false

    // 色彩配方参数
    @Volatile
    var colorRecipeEnabled: Boolean = false

    @Volatile
    var exposure: Float = 0f // -2.0 ~ +2.0

    @Volatile
    var contrast: Float = 1f // 0.5 ~ 1.5

    @Volatile
    var saturation: Float = 1f // 0.0 ~ 2.0

    @Volatile
    var temperature: Float = 0f // -1.0 ~ +1.0

    @Volatile
    var tint: Float = 0f // -1.0 ~ +1.0

    @Volatile
    var fade: Float = 0f // 0.0 ~ 1.0

    @Volatile
    var vibrance: Float = 1f // 0.0 ~ 2.0

    @Volatile
    var highlights: Float = 0f // -1.0 ~ +1.0

    @Volatile
    var shadows: Float = 0f // -1.0 ~ +1.0

    @Volatile
    var filmGrain: Float = 0f // 0.0 ~ 1.0

    @Volatile
    var vignette: Float = 0f // -1.0 ~ +1.0

    @Volatile
    var bleachBypass: Float = 0f // 0.0 ~ 1.0

    // 渲染尺寸
    private var viewportWidth: Int = 0
    private var viewportHeight: Int = 0

    // 预览尺寸
    private var previewWidth: Int = 1920
    private var previewHeight: Int = 1080
    private var sensorOrientation: Int = 0
    private var calibrationOffset: Int = 0

    // 回调
    var onSurfaceTextureAvailable: ((SurfaceTexture) -> Unit)? = null
    var onRequestRender: (() -> Unit)? = null
    var onPreviewFrameCaptured: ((Bitmap) -> Unit)? = null

    // Live Photo 录制器
    var livePhotoRecorder: LivePhotoRecorder? = null

    // 预览帧捕获标志
    private var shouldCapturePreview = false
    private val captureSize = 128 // 预览图尺寸

    /**
     * Surface 创建时调用
     */
    override fun onSurfaceCreated(gl: GL10?, config: EGLConfig?) {
        PLog.d(TAG, "onSurfaceCreated")

        // 设置清屏颜色
        GLES30.glClearColor(0f, 0f, 0f, 1f)

        // 创建着色器程序
        initShaderProgram()

        // 创建顶点缓冲
        initBuffers()

        // 创建相机纹理
        cameraTextureId = GlUtils.createOESTexture()

        // 创建 SurfaceTexture
        surfaceTexture = SurfaceTexture(cameraTextureId).apply {
            setDefaultBufferSize(previewWidth, previewHeight)
            setOnFrameAvailableListener {
                // 先设置标志（需要同步）
                synchronized(frameSyncObject) {
                    frameAvailable = true
                }
                // 在 synchronized 块外调用回调，避免潜在死锁
                onRequestRender?.invoke()
            }
        }

        // 初始化变换矩阵
        Matrix.setIdentityM(stMatrix, 0)

        // 标记 Surface 已创建
        surfaceReady = true

        // 如果有待处理的 LUT 配置，现在处理它
        pendingLutConfig?.let { config ->
            pendingLutConfig = null
            setLutInternal(config)
        }

        // 通知调用者 SurfaceTexture 已准备好
        surfaceTexture?.let { onSurfaceTextureAvailable?.invoke(it) }

        // 通知调用者 SurfaceTexture 已准备好
        surfaceTexture?.let { onSurfaceTextureAvailable?.invoke(it) }

        GlUtils.checkGlError("onSurfaceCreated")
    }

    /**
     * Surface 尺寸变化时调用
     */
    override fun onSurfaceChanged(gl: GL10?, width: Int, height: Int) {
        PLog.d(TAG, "onSurfaceChanged: ${width}x${height}")

        viewportWidth = width
        viewportHeight = height

        GLES30.glViewport(0, 0, width, height)

        // 初始化 FBO
        initFbo(width, height)

        // 更新 MVP 矩阵以处理 center crop
        updateMVPMatrix()

        GlUtils.checkGlError("onSurfaceChanged")
    }

    private fun initFbo(width: Int, height: Int) {
        if (fboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(fboId), 0)
            fboId = 0
        }
        if (fboTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(fboTextureId), 0)
            fboTextureId = 0
        }

        val ids = IntArray(1)
        GLES30.glGenFramebuffers(1, ids, 0)
        fboId = ids[0]

        GLES30.glGenTextures(1, ids, 0)
        fboTextureId = ids[0]

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, fboTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA, width, height,
            0, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, fboId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, fboTextureId, 0
        )

        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            PLog.e(TAG, "FBO init failed: $status")
        }

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    /**
     * 绘制帧
     */
    override fun onDrawFrame(gl: GL10?) {
        // 更新 SurfaceTexture
        synchronized(frameSyncObject) {
            if (frameAvailable) {
                surfaceTexture?.updateTexImage()
                surfaceTexture?.getTransformMatrix(stMatrix)
                frameAvailable = false
            }
        }

        if (fboId != 0 && fboTextureId != 0) {
            // 1. 渲染到 FBO (OES -> FBO, 应用 LUT)
            drawInternal(fboId, viewportWidth, viewportHeight)

            // FBO 纹理已经是正向的，所以传给 Recorder 时使用 Identity 矩阵
            val identity = FloatArray(16)
            Matrix.setIdentityM(identity, 0)

            // 2. 为 Live Photo 提供预览帧 (使用 FBO 纹理, GL_TEXTURE_2D)
            livePhotoRecorder?.onPreviewFrame(
                textureId = fboTextureId,
                transformMatrix = identity,
                width = viewportWidth,
                height = viewportHeight,
                timestampNs = surfaceTexture?.timestamp ?: 0L,
                lutConfig = currentLutConfig,
                params = getCurrentRecipeParams(),
                sharedContext = EGL14.eglGetCurrentContext()
            )

            // 3. 将 FBO 绘制到屏幕
            drawFboToScreen(0, viewportWidth, viewportHeight)
        } else {
            // FBO 未就绪，直接渲染到屏幕 (Fallback)
            drawInternal(0, viewportWidth, viewportHeight)
        }
    }

    /**
     * 将 FBO 纹理绘制到屏幕 (Copy Shader)
     */
    private fun drawFboToScreen(fboId: Int, width: Int, height: Int) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, fboId)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glUseProgram(copyProgramId)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, fboTextureId)
        GLES30.glUniform1i(uCopyTextureLoc, 0)

        // FBO 纹理已经是正向的 (经过 stMatrix/MVP 处理后)，所以这里可能不需要再变换
        // 或者需要 Identity
        val identity = FloatArray(16)
        Matrix.setIdentityM(identity, 0)
        GLES30.glUniformMatrix4fv(uCopyMVPMatrixLoc, 1, false, identity, 0)

        // stMatrix 也设为 Identity，因为 FBO 纹理坐标是标准的
        GLES30.glUniformMatrix4fv(uCopySTMatrixLoc, 1, false, identity, 0)

        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, vertexBufferId)
        GLES30.glEnableVertexAttribArray(aCopyPositionLoc)
        GLES30.glVertexAttribPointer(aCopyPositionLoc, POSITION_COMPONENT_COUNT, GLES30.GL_FLOAT, false, 0, 0)

        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, texCoordBufferId)
        GLES30.glEnableVertexAttribArray(aCopyTexCoordLoc)
        GLES30.glVertexAttribPointer(aCopyTexCoordLoc, TEXTURE_COORD_COMPONENT_COUNT, GLES30.GL_FLOAT, false, 0, 0)

        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glDrawElements(GLES30.GL_TRIANGLES, Shaders.DRAW_ORDER.size, GLES30.GL_UNSIGNED_SHORT, 0)

        GLES30.glDisableVertexAttribArray(aCopyPositionLoc)
        GLES30.glDisableVertexAttribArray(aCopyTexCoordLoc)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)

        // 捕获预览帧 (如果需要)
        if (fboId == 0 && shouldCapturePreview) {
            shouldCapturePreview = false
            capturePreviewFrameInternal()
        }
    }

    /**
     * 内部绘图逻辑，支持渲染到 FBO 或屏幕
     */
    private fun drawInternal(fboId: Int, width: Int, height: Int) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, fboId)
        GLES30.glViewport(0, 0, width, height)

        // 清屏
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        // 使用着色器程序
        GLES30.glUseProgram(programId)

        // 绑定相机纹理
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, cameraTextureId)
        GLES30.glUniform1i(uCameraTextureLocation, 0)

        // 绑定 LUT 纹理到 Unit 1
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        if (lutEnabled && lutTextureId != 0) {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lutTextureId)
        } else {
            // 如果未启用 LUT，也可以解绑，或者绑定一个默认的空纹理
            // 这里我们只是确保 Unit 1 不会处于未知状态
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, 0)
        }
        // 始终设置 uLutTexture 指向 Unit 1
        // 即使 lutEnabled 为 false，Shader 内部可能不会采样它，但 Uniform 的值必须有效
        GLES30.glUniform1i(uLutTextureLocation, 1)

        // 设置 MVP 矩阵（用于 center crop）
        GLES30.glUniformMatrix4fv(uMVPMatrixLocation, 1, false, mvpMatrix, 0)

        // 设置其他 Uniforms
        GLES30.glUniformMatrix4fv(uSTMatrixLocation, 1, false, stMatrix, 0)
        GLES30.glUniform1f(uLutSizeLocation, lutSize)
        GLES30.glUniform1f(uLutIntensityLocation, lutIntensity)
        GLES30.glUniform1i(uLutEnabledLocation, if (lutEnabled && lutTextureId != 0) 1 else 0)

        // 设置色彩配方 Uniforms
        GLES30.glUniform1i(uColorRecipeEnabledLocation, if (colorRecipeEnabled) 1 else 0)
        if (colorRecipeEnabled) {
            GLES30.glUniform1f(uExposureLocation, exposure)
            GLES30.glUniform1f(uContrastLocation, contrast)
            GLES30.glUniform1f(uSaturationLocation, saturation)
            GLES30.glUniform1f(uTemperatureLocation, temperature)
            GLES30.glUniform1f(uTintLocation, tint)
            GLES30.glUniform1f(uFadeLocation, fade)
            GLES30.glUniform1f(uVibranceLocation, vibrance)
            GLES30.glUniform1f(uHighlightsLocation, highlights)
            GLES30.glUniform1f(uShadowsLocation, shadows)
            GLES30.glUniform1f(uFilmGrainLocation, filmGrain)
            GLES30.glUniform1f(uVignetteLocation, vignette)
            GLES30.glUniform1f(uBleachBypassLocation, bleachBypass)
        }

        // 绑定顶点缓冲
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, vertexBufferId)
        GLES30.glEnableVertexAttribArray(aPositionLocation)
        GLES30.glVertexAttribPointer(
            aPositionLocation,
            POSITION_COMPONENT_COUNT,
            GLES30.GL_FLOAT,
            false,
            0,
            0
        )

        // 绑定纹理坐标缓冲
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, texCoordBufferId)
        GLES30.glEnableVertexAttribArray(aTexCoordLocation)
        GLES30.glVertexAttribPointer(
            aTexCoordLocation,
            TEXTURE_COORD_COMPONENT_COUNT,
            GLES30.GL_FLOAT,
            false,
            0,
            0
        )

        // 绘制
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glDrawElements(
            GLES30.GL_TRIANGLES,
            Shaders.DRAW_ORDER.size,
            GLES30.GL_UNSIGNED_SHORT,
            0
        )

        // 清理状态
        GLES30.glDisableVertexAttribArray(aPositionLocation)
        GLES30.glDisableVertexAttribArray(aTexCoordLocation)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)

        // 捕获预览帧（如果需要）
        if (fboId == 0 && shouldCapturePreview) {
            shouldCapturePreview = false
            capturePreviewFrameInternal()
        }

        GlUtils.checkGlError("onDrawFrame")
    }

    /**
     * 初始化着色器程序
     */
    private fun initShaderProgram() {
        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.VERTEX_SHADER)
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, Shaders.FRAGMENT_SHADER_COLOR_RECIPE)

        if (vertexShader == 0 || fragmentShader == 0) {
            PLog.e(TAG, "Failed to compile shaders")
            return
        }

        programId = GlUtils.linkProgram(vertexShader, fragmentShader)

        // 着色器已链接到程序，可以删除
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)

        if (programId == 0) {
            PLog.e(TAG, "Failed to link program")
            return
        }

        // 获取 Uniform 位置
        uMVPMatrixLocation = GLES30.glGetUniformLocation(programId, "uMVPMatrix")
        uSTMatrixLocation = GLES30.glGetUniformLocation(programId, "uSTMatrix")
        uCameraTextureLocation = GLES30.glGetUniformLocation(programId, "uCameraTexture")
        uLutTextureLocation = GLES30.glGetUniformLocation(programId, "uLutTexture")
        uLutSizeLocation = GLES30.glGetUniformLocation(programId, "uLutSize")
        uLutIntensityLocation = GLES30.glGetUniformLocation(programId, "uLutIntensity")
        uLutEnabledLocation = GLES30.glGetUniformLocation(programId, "uLutEnabled")

        // 获取色彩配方 Uniform 位置
        uColorRecipeEnabledLocation = GLES30.glGetUniformLocation(programId, "uColorRecipeEnabled")
        uExposureLocation = GLES30.glGetUniformLocation(programId, "uExposure")
        uContrastLocation = GLES30.glGetUniformLocation(programId, "uContrast")
        uSaturationLocation = GLES30.glGetUniformLocation(programId, "uSaturation")
        uTemperatureLocation = GLES30.glGetUniformLocation(programId, "uTemperature")
        uTintLocation = GLES30.glGetUniformLocation(programId, "uTint")
        uFadeLocation = GLES30.glGetUniformLocation(programId, "uFade")
        uVibranceLocation = GLES30.glGetUniformLocation(programId, "uVibrance")
        uHighlightsLocation = GLES30.glGetUniformLocation(programId, "uHighlights")
        uShadowsLocation = GLES30.glGetUniformLocation(programId, "uShadows")
        uFilmGrainLocation = GLES30.glGetUniformLocation(programId, "uFilmGrain")
        uVignetteLocation = GLES30.glGetUniformLocation(programId, "uVignette")
        // ... existing initShaderProgram code ...
        uBleachBypassLocation = GLES30.glGetUniformLocation(programId, "uBleachBypass")

        // Attribute 位置
        aPositionLocation = GLES30.glGetAttribLocation(programId, "aPosition")
        aTexCoordLocation = GLES30.glGetAttribLocation(programId, "aTexCoord")

        // === 初始化 Copy Shader (用于 FBO 上屏) ===
        val copyVs = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.VERTEX_SHADER)
        val copyFs = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, Shaders.FRAGMENT_SHADER_COPY_2D)
        copyProgramId = GlUtils.linkProgram(copyVs, copyFs)
        GLES30.glDeleteShader(copyVs)
        GLES30.glDeleteShader(copyFs)

        if (copyProgramId == 0) {
            PLog.e(TAG, "Failed to link copy program")
        } else {
            uCopyTextureLoc = GLES30.glGetUniformLocation(copyProgramId, "uCameraTexture")
            uCopyMVPMatrixLoc = GLES30.glGetUniformLocation(copyProgramId, "uMVPMatrix")
            uCopySTMatrixLoc = GLES30.glGetUniformLocation(copyProgramId, "uSTMatrix")
            aCopyPositionLoc = GLES30.glGetAttribLocation(copyProgramId, "aPosition")
            aCopyTexCoordLoc = GLES30.glGetAttribLocation(copyProgramId, "aTexCoord")
        }
//        PLog.d(TAG, "Shader program created: $programId")
    }

    /**
     * 初始化顶点缓冲
     */
    private fun initBuffers() {
        // 顶点位置缓冲
        val vertexBuffer = GlUtils.createFloatBuffer(Shaders.FULL_QUAD_VERTICES)
        val vertexBufferIds = IntArray(1)
        GLES30.glGenBuffers(1, vertexBufferIds, 0)
        vertexBufferId = vertexBufferIds[0]
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, vertexBufferId)
        GLES30.glBufferData(
            GLES30.GL_ARRAY_BUFFER,
            Shaders.FULL_QUAD_VERTICES.size * BYTES_PER_FLOAT,
            vertexBuffer,
            GLES30.GL_STATIC_DRAW
        )

        // 纹理坐标缓冲
        val texCoordBuffer = GlUtils.createFloatBuffer(Shaders.TEXTURE_COORDS)
        val texCoordBufferIds = IntArray(1)
        GLES30.glGenBuffers(1, texCoordBufferIds, 0)
        texCoordBufferId = texCoordBufferIds[0]
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, texCoordBufferId)
        GLES30.glBufferData(
            GLES30.GL_ARRAY_BUFFER,
            Shaders.TEXTURE_COORDS.size * BYTES_PER_FLOAT,
            texCoordBuffer,
            GLES30.GL_STATIC_DRAW
        )

        // 索引缓冲
        val indexBuffer = ByteBuffer.allocateDirect(Shaders.DRAW_ORDER.size * BYTES_PER_SHORT)
            .order(ByteOrder.nativeOrder())
            .asShortBuffer()
            .put(Shaders.DRAW_ORDER)
        indexBuffer.position(0)

        val indexBufferIds = IntArray(1)
        GLES30.glGenBuffers(1, indexBufferIds, 0)
        indexBufferId = indexBufferIds[0]
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glBufferData(
            GLES30.GL_ELEMENT_ARRAY_BUFFER,
            Shaders.DRAW_ORDER.size * BYTES_PER_SHORT,
            indexBuffer,
            GLES30.GL_STATIC_DRAW
        )

        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
    }

    /**
     * 设置 LUT
     * 注意：需要在 GL 线程中调用
     */
    fun setLut(lutConfig: LutConfig?) {
        // 如果 Surface 尚未创建，保存配置稍后处理
        if (!surfaceReady) {
            pendingLutConfig = lutConfig
            return
        }

        setLutInternal(lutConfig)
    }

    /**
     * 内部方法：实际设置 LUT
     * 仅在 Surface 已创建后调用
     */
    private fun setLutInternal(lutConfig: LutConfig?) {
        // 删除旧的 LUT 纹理
        if (lutTextureId != 0) {
            GlUtils.deleteTexture(lutTextureId)
            lutTextureId = 0
        }

        currentLutConfig = lutConfig

        if (lutConfig != null && lutConfig.isValid()) {
            lutTextureId = GlUtils.create3DTexture(lutConfig)
            lutSize = lutConfig.size.toFloat()
            lutEnabled = true
//            PLog.d(TAG, "LUT set: ${lutConfig.title}, size: ${lutConfig.size}")
        } else {
            lutEnabled = false
        }
    }

    /**
     * 设置预览尺寸
     */
    fun setPreviewSize(width: Int, height: Int) {
        previewWidth = width
        previewHeight = height
        surfaceTexture?.setDefaultBufferSize(width, height)
        // 更新 MVP 矩阵以处理 center crop
        updateMVPMatrix()
    }

    /**
     * 设置传感器方向 (硬件属性)
     */
    fun setSensorOrientation(orientation: Int) {
        if (sensorOrientation != orientation) {
            sensorOrientation = orientation
            updateMVPMatrix()
        }
    }

    /**
     * 设置校正偏移 (用户设置)
     */
    fun setCalibrationOffset(offset: Int) {
        if (calibrationOffset != offset) {
            calibrationOffset = offset
            updateMVPMatrix()
        }
    }

    /**
     * 更新 MVP 矩阵以实现 center crop 效果
     * 
     * 当预览尺寸与显示区域比例不匹配时，放大画面并裁切超出部分
     */
    private fun updateMVPMatrix() {
        if (viewportWidth == 0 || viewportHeight == 0) {
            Matrix.setIdentityM(mvpMatrix, 0)
            return
        }

        // 计算最终显示方向（硬件方向 + 用户校正）
        // hardwareSensorOrientation 处理 stMatrix 带来的初步修正
        // stMatrix 通常已经将画面旋转到了 0 度（竖屏向上）
        // 我们只需要再应用用户的 calibrationOffset 进行微调
        val isSwapped = (sensorOrientation + calibrationOffset) % 180 != 0
        val previewAspect = if (isSwapped) {
            previewHeight.toFloat() / previewWidth.toFloat()
        } else {
            previewWidth.toFloat() / previewHeight.toFloat()
        }
        val viewAspect = viewportWidth.toFloat() / viewportHeight.toFloat()

        Matrix.setIdentityM(mvpMatrix, 0)

        // 应用用户的校正旋转
        // 注意：stMatrix 已经处理了 sensorOrientation，所以这里不重复旋转 sensorOrientation
        if (calibrationOffset != 0) {
            Matrix.rotateM(mvpMatrix, 0, (-calibrationOffset).toFloat(), 0f, 0f, 1f)
        }

        if (previewAspect != viewAspect) {
            val scaleX: Float
            val scaleY: Float

            if (viewAspect > previewAspect) {
                // 显示区域更宽，需要基于宽度缩放，裁切上下
                scaleX = 1f
                scaleY = viewAspect / previewAspect
            } else {
                // 显示区域更高，需要基于高度缩放，裁切左右
                scaleX = previewAspect / viewAspect
                scaleY = 1f
            }

            // 应用缩放
            Matrix.scaleM(mvpMatrix, 0, scaleX, scaleY, 1f)
        }

        PLog.d(
            TAG,
            "MVP matrix updated: viewport=${viewportWidth}x${viewportHeight}, preview=${previewWidth}x${previewHeight}"
        )
    }

    /**
     * 请求捕获预览帧
     * 会在下一帧渲染后捕获并通过回调返回
     */
    fun capturePreviewFrame() {
        shouldCapturePreview = true
    }

    /**
     * 内部方法：捕获当前帧为小尺寸 Bitmap
     * 必须在 GL 线程中调用
     */
    private fun capturePreviewFrameInternal() {
        try {
            // 计算缩放比例以保持宽高比
            val scale = captureSize.toFloat() / maxOf(viewportWidth, viewportHeight)
            val scaledWidth = (viewportWidth * scale).toInt()
            val scaledHeight = (viewportHeight * scale).toInt()

            // 使用 PBO 优化 glReadPixels
            if (pboId == 0) {
                val pbos = IntArray(1)
                GLES30.glGenBuffers(1, pbos, 0)
                pboId = pbos[0]
            }

            val pixelSize = viewportWidth * viewportHeight * 4
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, pboId)
            GLES30.glBufferData(GLES30.GL_PIXEL_PACK_BUFFER, pixelSize, null, GLES30.GL_STREAM_READ)

            GLES30.glReadPixels(
                0, 0, viewportWidth, viewportHeight,
                GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, 0
            )

            // 映射内存并读取
            val mappedBuffer = GLES30.glMapBufferRange(
                GLES30.GL_PIXEL_PACK_BUFFER,
                0,
                pixelSize,
                GLES30.GL_MAP_READ_BIT
            ) as? ByteBuffer

            if (mappedBuffer == null) {
                GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
                return
            }

            val fullBuffer = ByteBuffer.allocateDirect(pixelSize).order(ByteOrder.nativeOrder())
            fullBuffer.put(mappedBuffer)
            fullBuffer.position(0)

            GLES30.glUnmapBuffer(GLES30.GL_PIXEL_PACK_BUFFER)
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)

            // 创建原始大小的 Bitmap
            val fullBitmap = Bitmap.createBitmap(viewportWidth, viewportHeight, Bitmap.Config.ARGB_8888)
            fullBitmap.copyPixelsFromBuffer(fullBuffer)

            // 翻转 Y 轴（OpenGL 坐标系与 Android 不同）
            val matrix = android.graphics.Matrix()
            matrix.preScale(1f, -1f)
            val flippedBitmap = Bitmap.createBitmap(fullBitmap, 0, 0, viewportWidth, viewportHeight, matrix, false)
            fullBitmap.recycle()

            // 缩小到目标尺寸
            val scaledBitmap = Bitmap.createScaledBitmap(flippedBitmap, scaledWidth, scaledHeight, true)
            flippedBitmap.recycle()

            // 通过回调返回
            onPreviewFrameCaptured?.invoke(scaledBitmap)

        } catch (e: Exception) {
            PLog.e(TAG, "Failed to capture preview frame", e)
        }
    }

    /**
     * 获取 SurfaceTexture
     */
    fun getSurfaceTexture(): SurfaceTexture? = surfaceTexture

    /**
     * 释放资源
     */
    fun release() {
        // 删除纹理
        if (cameraTextureId != 0) {
            GlUtils.deleteTexture(cameraTextureId)
            cameraTextureId = 0
        }
        if (lutTextureId != 0) {
            GlUtils.deleteTexture(lutTextureId)
            lutTextureId = 0
        }

        // 删除缓冲
        if (vertexBufferId != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(vertexBufferId), 0)
            vertexBufferId = 0
        }
        if (texCoordBufferId != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(texCoordBufferId), 0)
            texCoordBufferId = 0
        }
        if (indexBufferId != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(indexBufferId), 0)
            indexBufferId = 0
        }
        if (pboId != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(pboId), 0)
            pboId = 0
        }

        // 删除程序
        GlUtils.deleteProgram(programId)
        programId = 0

        // 释放 SurfaceTexture
        surfaceTexture?.release()
        surfaceTexture = null

        // 重置状态
        surfaceReady = false
        pendingLutConfig = null
    }

    /**
     * 获取当前色彩配方参数对象
     */
    private fun getCurrentRecipeParams(): com.hinnka.mycamera.model.ColorRecipeParams {
        return com.hinnka.mycamera.model.ColorRecipeParams(
            lutIntensity = lutIntensity,
            exposure = exposure,
            contrast = contrast,
            saturation = saturation,
            temperature = temperature,
            tint = tint,
            color = vibrance,
            highlights = highlights,
            shadows = shadows,
            fade = fade,
            filmGrain = filmGrain,
            vignette = vignette,
            bleachBypass = bleachBypass
        )
    }
}
