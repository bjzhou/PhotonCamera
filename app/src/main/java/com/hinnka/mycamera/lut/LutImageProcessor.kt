package com.hinnka.mycamera.lut

import android.graphics.Bitmap
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.util.Log
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.withContext
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer
import java.util.concurrent.Executors

/**
 * LUT 图片处理器
 * 
 * 使用 EGL 离屏渲染对静态图片应用 3D LUT
 * 所有 GPU 操作在独立单线程完成，确保 EGL 上下文线程安全
 */
class LutImageProcessor {
    
    // 单线程调度器，确保所有 EGL 操作在同一线程
    private val glDispatcher = Executors.newSingleThreadExecutor { r ->
        Thread(r, "LutImageProcessor-GL").apply { isDaemon = true }
    }.asCoroutineDispatcher()
    
    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE
    
    private var shaderProgram = 0
    private var imageTextureId = 0
    private var lutTextureId = 0
    private var framebufferId = 0
    private var outputTextureId = 0
    
    private var vertexBuffer: FloatBuffer? = null
    private var texCoordBuffer: FloatBuffer? = null
    private var indexBuffer: ShortBuffer? = null
    
    private var isInitialized = false
    
    // Uniform 位置
    private var uImageTextureLoc = 0
    private var uLutTextureLoc = 0
    private var uLutSizeLoc = 0
    private var uLutIntensityLoc = 0
    private var uLutEnabledLoc = 0
    private var uMVPMatrixLoc = 0
    
    /**
     * 初始化 EGL 环境
     */
    fun initialize(): Boolean {
        if (isInitialized) return true
        
        try {
            // 获取 EGL Display
            eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
            if (eglDisplay == EGL14.EGL_NO_DISPLAY) {
                Log.e(TAG, "Unable to get EGL display")
                return false
            }
            
            // 初始化 EGL
            val version = IntArray(2)
            if (!EGL14.eglInitialize(eglDisplay, version, 0, version, 1)) {
                Log.e(TAG, "Unable to initialize EGL")
                return false
            }
            
            // 配置属性
            val configAttribs = intArrayOf(
                EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
                EGL14.EGL_RED_SIZE, 8,
                EGL14.EGL_GREEN_SIZE, 8,
                EGL14.EGL_BLUE_SIZE, 8,
                EGL14.EGL_ALPHA_SIZE, 8,
                EGL14.EGL_SURFACE_TYPE, EGL14.EGL_PBUFFER_BIT,
                EGL14.EGL_NONE
            )
            
            val configs = arrayOfNulls<EGLConfig>(1)
            val numConfigs = IntArray(1)
            if (!EGL14.eglChooseConfig(eglDisplay, configAttribs, 0, configs, 0, 1, numConfigs, 0)) {
                Log.e(TAG, "Unable to choose EGL config")
                return false
            }
            
            val config = configs[0] ?: return false
            
            // 创建 EGL Context
            val contextAttribs = intArrayOf(
                EGL14.EGL_CONTEXT_CLIENT_VERSION, 3,
                EGL14.EGL_NONE
            )
            eglContext = EGL14.eglCreateContext(eglDisplay, config, EGL14.EGL_NO_CONTEXT, contextAttribs, 0)
            if (eglContext == EGL14.EGL_NO_CONTEXT) {
                Log.e(TAG, "Unable to create EGL context")
                return false
            }
            
            // 创建 PBuffer Surface（1x1 占位，实际使用 FBO）
            val surfaceAttribs = intArrayOf(
                EGL14.EGL_WIDTH, 1,
                EGL14.EGL_HEIGHT, 1,
                EGL14.EGL_NONE
            )
            eglSurface = EGL14.eglCreatePbufferSurface(eglDisplay, config, surfaceAttribs, 0)
            if (eglSurface == EGL14.EGL_NO_SURFACE) {
                Log.e(TAG, "Unable to create EGL surface")
                return false
            }
            
            // 激活上下文
            if (!EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
                Log.e(TAG, "Unable to make EGL current")
                return false
            }
            
            // 初始化 shader 和缓冲区
            initShaderProgram()
            initBuffers()
            
            isInitialized = true
            Log.d(TAG, "LutImageProcessor initialized")
            return true
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to initialize", e)
            return false
        }
    }
    
    /**
     * 应用 LUT 到 Bitmap
     */
    suspend fun applyLut(
        bitmap: Bitmap,
        lutConfig: LutConfig?,
        intensity: Float
    ): Bitmap = withContext(glDispatcher) {
        if (!isInitialized) {
            if (!initialize()) {
                return@withContext bitmap
            }
        }
        
        // 确保上下文激活
        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)
        
        val width = bitmap.width
        val height = bitmap.height
        
        // 创建/更新帧缓冲
        setupFramebuffer(width, height)
        
        // 上传图片纹理
        uploadImageTexture(bitmap)
        
        // 上传 LUT 纹理
        if (lutConfig != null) {
            uploadLutTexture(lutConfig)
        }
        
        // 绑定帧缓冲
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
        GLES30.glViewport(0, 0, width, height)
        
        // 绘制
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glUseProgram(shaderProgram)
        
        // 设置纹理 uniform
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, imageTextureId)
        GLES30.glUniform1i(uImageTextureLoc, 0)
        
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lutTextureId)
        GLES30.glUniform1i(uLutTextureLoc, 1)
        
        // 设置 LUT 参数
        GLES30.glUniform1f(uLutSizeLoc, lutConfig?.size?.toFloat() ?: 0f)
        GLES30.glUniform1f(uLutIntensityLoc, if (lutConfig != null) intensity else 0f)
        GLES30.glUniform1i(uLutEnabledLoc, if (lutConfig != null) 1 else 0)
        
        // 设置 MVP 矩阵（单位矩阵）
        val mvpMatrix = FloatArray(16)
        android.opengl.Matrix.setIdentityM(mvpMatrix, 0)
        GLES30.glUniformMatrix4fv(uMVPMatrixLoc, 1, false, mvpMatrix, 0)
        
        // 绘制四边形
        val positionHandle = GLES30.glGetAttribLocation(shaderProgram, "aPosition")
        val texCoordHandle = GLES30.glGetAttribLocation(shaderProgram, "aTexCoord")
        
        GLES30.glEnableVertexAttribArray(positionHandle)
        GLES30.glEnableVertexAttribArray(texCoordHandle)
        
        vertexBuffer?.position(0)
        GLES30.glVertexAttribPointer(positionHandle, 2, GLES30.GL_FLOAT, false, 0, vertexBuffer)
        
        texCoordBuffer?.position(0)
        GLES30.glVertexAttribPointer(texCoordHandle, 2, GLES30.GL_FLOAT, false, 0, texCoordBuffer)
        
        indexBuffer?.position(0)
        GLES30.glDrawElements(GLES30.GL_TRIANGLES, 6, GLES30.GL_UNSIGNED_SHORT, indexBuffer)
        
        GLES30.glDisableVertexAttribArray(positionHandle)
        GLES30.glDisableVertexAttribArray(texCoordHandle)
        
        // 读取像素
        val buffer = ByteBuffer.allocateDirect(width * height * 4)
        buffer.order(ByteOrder.nativeOrder())
        GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, buffer)
        buffer.position(0)
        
        // 创建临时 Bitmap
        val tempBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        tempBitmap.copyPixelsFromBuffer(buffer)
        
        // 翻转 Y 轴（glReadPixels 从左下角开始读取，需要翻转）
        val matrix = android.graphics.Matrix()
        matrix.preScale(1f, -1f)
        val outputBitmap = Bitmap.createBitmap(tempBitmap, 0, 0, width, height, matrix, true)
        tempBitmap.recycle()
        
        // 解绑帧缓冲
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        
        outputBitmap
    }
    
    private fun setupFramebuffer(width: Int, height: Int) {
        // 删除旧的帧缓冲
        if (framebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(framebufferId), 0)
            GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
        }
        
        // 创建输出纹理
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        outputTextureId = textures[0]
        
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, outputTextureId)
        GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA, width, height, 0,
            GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        
        // 创建帧缓冲
        val fbos = IntArray(1)
        GLES30.glGenFramebuffers(1, fbos, 0)
        framebufferId = fbos[0]
        
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
        GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, outputTextureId, 0)
        
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            Log.e(TAG, "Framebuffer not complete: $status")
        }
        
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }
    
    private fun uploadImageTexture(bitmap: Bitmap) {
        if (imageTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            imageTextureId = textures[0]
        }
        
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, imageTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        
        android.opengl.GLUtils.texImage2D(GLES30.GL_TEXTURE_2D, 0, bitmap, 0)
    }
    
    private fun uploadLutTexture(lutConfig: LutConfig) {
        if (lutTextureId == 0) {
            val textures = IntArray(1)
            GLES30.glGenTextures(1, textures, 0)
            lutTextureId = textures[0]
        }
        
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lutTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)
        
        val buffer = lutConfig.toByteBuffer()
        GLES30.glTexImage3D(
            GLES30.GL_TEXTURE_3D, 0, GLES30.GL_RGB8,
            lutConfig.size, lutConfig.size, lutConfig.size,
            0, GLES30.GL_RGB, GLES30.GL_UNSIGNED_BYTE, buffer
        )
    }
    
    private fun initShaderProgram() {
        val vertexShader = compileShader(GLES30.GL_VERTEX_SHADER, IMAGE_VERTEX_SHADER)
        val fragmentShader = compileShader(GLES30.GL_FRAGMENT_SHADER, IMAGE_FRAGMENT_SHADER_LUT)
        
        shaderProgram = GLES30.glCreateProgram()
        GLES30.glAttachShader(shaderProgram, vertexShader)
        GLES30.glAttachShader(shaderProgram, fragmentShader)
        GLES30.glLinkProgram(shaderProgram)
        
        // 获取 uniform 位置
        uImageTextureLoc = GLES30.glGetUniformLocation(shaderProgram, "uImageTexture")
        uLutTextureLoc = GLES30.glGetUniformLocation(shaderProgram, "uLutTexture")
        uLutSizeLoc = GLES30.glGetUniformLocation(shaderProgram, "uLutSize")
        uLutIntensityLoc = GLES30.glGetUniformLocation(shaderProgram, "uLutIntensity")
        uLutEnabledLoc = GLES30.glGetUniformLocation(shaderProgram, "uLutEnabled")
        uMVPMatrixLoc = GLES30.glGetUniformLocation(shaderProgram, "uMVPMatrix")
    }
    
    private fun compileShader(type: Int, source: String): Int {
        val shader = GLES30.glCreateShader(type)
        GLES30.glShaderSource(shader, source)
        GLES30.glCompileShader(shader)
        
        val compiled = IntArray(1)
        GLES30.glGetShaderiv(shader, GLES30.GL_COMPILE_STATUS, compiled, 0)
        if (compiled[0] == 0) {
            val error = GLES30.glGetShaderInfoLog(shader)
            Log.e(TAG, "Shader compilation failed: $error")
            GLES30.glDeleteShader(shader)
            return 0
        }
        return shader
    }
    
    private fun initBuffers() {
        // 顶点缓冲
        vertexBuffer = ByteBuffer.allocateDirect(Shaders.FULL_QUAD_VERTICES.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .put(Shaders.FULL_QUAD_VERTICES)
        vertexBuffer?.position(0)
        
        // 纹理坐标缓冲（Y 轴翻转）
        // Android Bitmap 坐标系从左上角开始，OpenGL 纹理坐标从左下角开始
        // 需要翻转 Y 坐标来补偿这个差异
        val flippedTexCoords = floatArrayOf(
            // U, V (Y 轴翻转：原来的 V 变成 1.0 - V)
            0.0f, 1.0f,  // 左下 -> 对应 Bitmap 左上
            1.0f, 1.0f,  // 右下 -> 对应 Bitmap 右上
            0.0f, 0.0f,  // 左上 -> 对应 Bitmap 左下
            1.0f, 0.0f   // 右上 -> 对应 Bitmap 右下
        )
        texCoordBuffer = ByteBuffer.allocateDirect(flippedTexCoords.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .put(flippedTexCoords)
        texCoordBuffer?.position(0)
        
        // 索引缓冲
        indexBuffer = ByteBuffer.allocateDirect(Shaders.DRAW_ORDER.size * 2)
            .order(ByteOrder.nativeOrder())
            .asShortBuffer()
            .put(Shaders.DRAW_ORDER)
        indexBuffer?.position(0)
    }
    
    /**
     * 释放资源
     */
    fun release() {
        if (!isInitialized) return
        
        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)
        
        if (shaderProgram != 0) {
            GLES30.glDeleteProgram(shaderProgram)
        }
        if (imageTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(imageTextureId), 0)
        }
        if (lutTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(lutTextureId), 0)
        }
        if (framebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(framebufferId), 0)
        }
        if (outputTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
        }
        
        EGL14.eglMakeCurrent(eglDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)
        EGL14.eglDestroySurface(eglDisplay, eglSurface)
        EGL14.eglDestroyContext(eglDisplay, eglContext)
        EGL14.eglTerminate(eglDisplay)
        
        isInitialized = false
        Log.d(TAG, "LutImageProcessor released")
    }
    
    companion object {
        private const val TAG = "LutImageProcessor"
        
        // 2D 图片版本的顶点着色器
        private val IMAGE_VERTEX_SHADER = """
            #version 300 es
            
            in vec4 aPosition;
            in vec2 aTexCoord;
            
            out vec2 vTexCoord;
            
            uniform mat4 uMVPMatrix;
            
            void main() {
                gl_Position = uMVPMatrix * aPosition;
                vTexCoord = aTexCoord;
            }
        """.trimIndent()
        
        // 2D 图片版本的片元着色器（带 LUT）
        private val IMAGE_FRAGMENT_SHADER_LUT = """
            #version 300 es
            
            precision mediump float;
            
            in vec2 vTexCoord;
            out vec4 fragColor;
            
            uniform sampler2D uImageTexture;
            uniform mediump sampler3D uLutTexture;
            uniform float uLutSize;
            uniform float uLutIntensity;
            uniform bool uLutEnabled;
            
            void main() {
                vec4 originalColor = texture(uImageTexture, vTexCoord);
                
                if (!uLutEnabled || uLutIntensity <= 0.0) {
                    fragColor = originalColor;
                    return;
                }
                
                // 3D LUT 查找
                float scale = (uLutSize - 1.0) / uLutSize;
                float offset = 1.0 / (2.0 * uLutSize);
                vec3 lutCoord = originalColor.rgb * scale + offset;
                vec4 lutColor = texture(uLutTexture, lutCoord);
                
                vec3 finalColor = mix(originalColor.rgb, lutColor.rgb, uLutIntensity);
                fragColor = vec4(finalColor, originalColor.a);
            }
        """.trimIndent()
    }
}
