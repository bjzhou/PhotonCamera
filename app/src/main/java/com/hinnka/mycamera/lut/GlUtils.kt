package com.hinnka.mycamera.lut

import android.opengl.GLES11Ext
import android.opengl.GLES30
import android.util.Log
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer

/**
 * OpenGL ES 工具函数
 */
object GlUtils {
    
    private const val TAG = "GlUtils"
    
    /**
     * 编译着色器
     * 
     * @param type 着色器类型 (GLES30.GL_VERTEX_SHADER 或 GLES30.GL_FRAGMENT_SHADER)
     * @param source 着色器源代码
     * @return 着色器 ID，失败返回 0
     */
    fun compileShader(type: Int, source: String): Int {
        val shader = GLES30.glCreateShader(type)
        if (shader == 0) {
            Log.e(TAG, "Failed to create shader")
            return 0
        }
        
        GLES30.glShaderSource(shader, source)
        GLES30.glCompileShader(shader)
        
        val compileStatus = IntArray(1)
        GLES30.glGetShaderiv(shader, GLES30.GL_COMPILE_STATUS, compileStatus, 0)
        
        if (compileStatus[0] == 0) {
            val errorLog = GLES30.glGetShaderInfoLog(shader)
            Log.e(TAG, "Shader compilation failed: $errorLog")
            GLES30.glDeleteShader(shader)
            return 0
        }
        
        return shader
    }
    
    /**
     * 链接着色器程序
     * 
     * @param vertexShader 顶点着色器 ID
     * @param fragmentShader 片元着色器 ID
     * @return 程序 ID，失败返回 0
     */
    fun linkProgram(vertexShader: Int, fragmentShader: Int): Int {
        val program = GLES30.glCreateProgram()
        if (program == 0) {
            Log.e(TAG, "Failed to create program")
            return 0
        }
        
        GLES30.glAttachShader(program, vertexShader)
        GLES30.glAttachShader(program, fragmentShader)
        GLES30.glLinkProgram(program)
        
        val linkStatus = IntArray(1)
        GLES30.glGetProgramiv(program, GLES30.GL_LINK_STATUS, linkStatus, 0)
        
        if (linkStatus[0] == 0) {
            val errorLog = GLES30.glGetProgramInfoLog(program)
            Log.e(TAG, "Program linking failed: $errorLog")
            GLES30.glDeleteProgram(program)
            return 0
        }
        
        return program
    }
    
    /**
     * 创建 3D LUT 纹理
     * 
     * @param lutConfig LUT 配置
     * @return 纹理 ID
     */
    fun create3DTexture(lutConfig: LutConfig): Int {
        val textureIds = IntArray(1)
        GLES30.glGenTextures(1, textureIds, 0)
        val textureId = textureIds[0]
        
        if (textureId == 0) {
            Log.e(TAG, "Failed to generate 3D texture")
            return 0
        }
        
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, textureId)
        
        // 设置纹理参数
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)
        
        // 上传 LUT 数据 - 使用 GL_RGB8 格式，比 GL_RGB16F 更高效
        // 对于移动设备，8 位精度已经足够
        val buffer = lutConfig.toByteBuffer()
        GLES30.glTexImage3D(
            GLES30.GL_TEXTURE_3D,
            0,
            GLES30.GL_RGB8,  // 使用 8 位格式，更高效
            lutConfig.size,
            lutConfig.size,
            lutConfig.size,
            0,
            GLES30.GL_RGB,
            GLES30.GL_UNSIGNED_BYTE,
            buffer
        )
        
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, 0)
        
        checkGlError("create3DTexture")
        Log.d(TAG, "Created 3D LUT texture: size=${lutConfig.size}, id=$textureId")
        
        return textureId
    }
    
    /**
     * 创建 OES 外部纹理（用于相机预览）
     * 
     * @return 纹理 ID
     */
    fun createOESTexture(): Int {
        val textureIds = IntArray(1)
        GLES30.glGenTextures(1, textureIds, 0)
        val textureId = textureIds[0]
        
        if (textureId == 0) {
            Log.e(TAG, "Failed to generate OES texture")
            return 0
        }
        
        GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, textureId)
        
        // 设置纹理参数
        GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        
        GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, 0)
        
        checkGlError("createOESTexture")
        
        return textureId
    }
    
    /**
     * 创建顶点缓冲对象 (VBO)
     * 
     * @param data 顶点数据
     * @return VBO ID
     */
    fun createBuffer(data: FloatArray): Int {
        val bufferIds = IntArray(1)
        GLES30.glGenBuffers(1, bufferIds, 0)
        val bufferId = bufferIds[0]
        
        val buffer = createFloatBuffer(data)
        
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, bufferId)
        GLES30.glBufferData(
            GLES30.GL_ARRAY_BUFFER,
            data.size * 4,
            buffer,
            GLES30.GL_STATIC_DRAW
        )
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        
        return bufferId
    }
    
    /**
     * 创建 FloatBuffer
     */
    fun createFloatBuffer(data: FloatArray): FloatBuffer {
        val buffer = ByteBuffer.allocateDirect(data.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
        buffer.put(data)
        buffer.position(0)
        return buffer
    }
    
    /**
     * 删除纹理
     */
    fun deleteTexture(textureId: Int) {
        if (textureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
        }
    }
    
    /**
     * 删除程序
     */
    fun deleteProgram(programId: Int) {
        if (programId != 0) {
            GLES30.glDeleteProgram(programId)
        }
    }
    
    /**
     * 检查 OpenGL 错误
     */
    fun checkGlError(tag: String) {
        var error: Int
        while (GLES30.glGetError().also { error = it } != GLES30.GL_NO_ERROR) {
            Log.e(TAG, "$tag: glError $error")
        }
    }
}
