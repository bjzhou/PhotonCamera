package com.hinnka.mycamera.lut

import java.nio.FloatBuffer

/**
 * 3D LUT 配置数据类
 * 
 * @param size LUT 尺寸 (如 17, 32, 64)，表示每个维度的采样点数
 * @param data RGB 数据数组，大小为 size^3 * 3
 * @param title LUT 名称（可选）
 */
data class LutConfig(
    val size: Int,
    val data: FloatArray,
    val title: String = ""
) {
    /**
     * 获取用于 OpenGL 纹理上传的 FloatBuffer
     */
    fun toFloatBuffer(): FloatBuffer {
        return FloatBuffer.wrap(data)
    }
    
    /**
     * 获取用于 OpenGL 纹理上传的 ByteBuffer (GL_RGB8 格式)
     * 将浮点数据转换为 0-255 的字节数据
     */
    fun toByteBuffer(): java.nio.ByteBuffer {
        val byteData = ByteArray(data.size)
        for (i in data.indices) {
            // 将 0.0-1.0 的浮点值转换为 0-255 的字节值
            byteData[i] = (data[i].coerceIn(0f, 1f) * 255f).toInt().toByte()
        }
        val buffer = java.nio.ByteBuffer.allocateDirect(byteData.size)
            .order(java.nio.ByteOrder.nativeOrder())
        buffer.put(byteData)
        buffer.position(0)
        return buffer
    }
    
    /**
     * 验证 LUT 数据是否有效
     */
    fun isValid(): Boolean {
        val expectedSize = size * size * size * 3
        return size > 0 && data.size == expectedSize
    }
    
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false
        
        other as LutConfig
        
        if (size != other.size) return false
        if (!data.contentEquals(other.data)) return false
        if (title != other.title) return false
        
        return true
    }
    
    override fun hashCode(): Int {
        var result = size
        result = 31 * result + data.contentHashCode()
        result = 31 * result + title.hashCode()
        return result
    }
}

/**
 * LUT 强度预设
 */
enum class LutIntensity(val value: Float, val displayName: String) {
    NONE(0f, "关闭"),
    LOW(0.33f, "低"),
    MEDIUM(0.66f, "中"),
    FULL(1.0f, "高");
    
    companion object {
        fun fromValue(value: Float): LutIntensity {
            return entries.minByOrNull { kotlin.math.abs(it.value - value) } ?: FULL
        }
    }
}

/**
 * LUT 信息（用于列表展示）
 */
data class LutInfo(
    val id: String,
    val name: String,
    val fileName: String,
    val isBuiltIn: Boolean = true
)
