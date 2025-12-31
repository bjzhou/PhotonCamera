package com.hinnka.mycamera.lut

import android.graphics.SurfaceTexture
import android.opengl.GLES11Ext
import android.opengl.GLES30
import android.opengl.GLSurfaceView
import android.opengl.Matrix
import android.util.Log
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
    
    // Uniform 位置
    private var uSTMatrixLocation: Int = 0
    private var uCameraTextureLocation: Int = 0
    private var uLutTextureLocation: Int = 0
    private var uLutSizeLocation: Int = 0
    private var uLutIntensityLocation: Int = 0
    private var uLutEnabledLocation: Int = 0
    
    // Attribute 位置
    private var aPositionLocation: Int = 0
    private var aTexCoordLocation: Int = 0
    
    // SurfaceTexture 变换矩阵
    private val stMatrix = FloatArray(16)
    
    // 相机 SurfaceTexture
    private var surfaceTexture: SurfaceTexture? = null
    private var frameAvailable = false
    private val frameSyncObject = Object()
    
    // LUT 配置
    private var currentLutConfig: LutConfig? = null
    private var lutSize: Float = 32f
    
    // LUT 强度 (0.0 - 1.0)
    @Volatile
    var lutIntensity: Float = 1.0f
    
    // LUT 是否启用
    @Volatile
    var lutEnabled: Boolean = false
    
    // 渲染尺寸
    private var viewportWidth: Int = 0
    private var viewportHeight: Int = 0
    
    // 预览尺寸
    private var previewWidth: Int = 1920
    private var previewHeight: Int = 1080
    
    // 回调
    var onSurfaceTextureAvailable: ((SurfaceTexture) -> Unit)? = null
    var onRequestRender: (() -> Unit)? = null
    
    /**
     * Surface 创建时调用
     */
    override fun onSurfaceCreated(gl: GL10?, config: EGLConfig?) {
        Log.d(TAG, "onSurfaceCreated")
        
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
        
        // 通知调用者 SurfaceTexture 已准备好
        surfaceTexture?.let { onSurfaceTextureAvailable?.invoke(it) }
        
        GlUtils.checkGlError("onSurfaceCreated")
    }
    
    /**
     * Surface 尺寸变化时调用
     */
    override fun onSurfaceChanged(gl: GL10?, width: Int, height: Int) {
        Log.d(TAG, "onSurfaceChanged: ${width}x${height}")
        
        viewportWidth = width
        viewportHeight = height
        
        GLES30.glViewport(0, 0, width, height)
        
        GlUtils.checkGlError("onSurfaceChanged")
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
        
        // 设置其他 Uniforms
        GLES30.glUniformMatrix4fv(uSTMatrixLocation, 1, false, stMatrix, 0)
        GLES30.glUniform1f(uLutSizeLocation, lutSize)
        GLES30.glUniform1f(uLutIntensityLocation, lutIntensity)
        GLES30.glUniform1i(uLutEnabledLocation, if (lutEnabled && lutTextureId != 0) 1 else 0)
        
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
        
        GlUtils.checkGlError("onDrawFrame")
    }
    
    /**
     * 初始化着色器程序
     */
    private fun initShaderProgram() {
        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.VERTEX_SHADER)
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, Shaders.FRAGMENT_SHADER_LUT)
        
        if (vertexShader == 0 || fragmentShader == 0) {
            Log.e(TAG, "Failed to compile shaders")
            return
        }
        
        programId = GlUtils.linkProgram(vertexShader, fragmentShader)
        
        // 着色器已链接到程序，可以删除
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        
        if (programId == 0) {
            Log.e(TAG, "Failed to link program")
            return
        }
        
        // 获取 Uniform 位置
        uSTMatrixLocation = GLES30.glGetUniformLocation(programId, "uSTMatrix")
        uCameraTextureLocation = GLES30.glGetUniformLocation(programId, "uCameraTexture")
        uLutTextureLocation = GLES30.glGetUniformLocation(programId, "uLutTexture")
        uLutSizeLocation = GLES30.glGetUniformLocation(programId, "uLutSize")
        uLutIntensityLocation = GLES30.glGetUniformLocation(programId, "uLutIntensity")
        uLutEnabledLocation = GLES30.glGetUniformLocation(programId, "uLutEnabled")
        
        // 获取 Attribute 位置
        aPositionLocation = GLES30.glGetAttribLocation(programId, "aPosition")
        aTexCoordLocation = GLES30.glGetAttribLocation(programId, "aTexCoord")
        
//        Log.d(TAG, "Shader program created: $programId")
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
            Log.d(TAG, "LUT set: ${lutConfig.title}, size: ${lutConfig.size}")
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
        
        // 删除程序
        GlUtils.deleteProgram(programId)
        programId = 0
        
        // 释放 SurfaceTexture
        surfaceTexture?.release()
        surfaceTexture = null
    }
}
