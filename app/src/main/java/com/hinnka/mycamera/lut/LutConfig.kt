package com.hinnka.mycamera.lut

import com.hinnka.mycamera.model.ColorRecipeParams
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer

/**
 * 3D LUT 配置数据类
 * 
 * @param size LUT 尺寸 (如 17, 32, 64)，表示每个维度的采样点数
 * @param data RGB 数据数组，大小为 size^3 * 3 (可选，用于兼容旧格式)
 * @param byteBuffer 预先包装好的 RGB8 数据 (可选，用于最高效加载)
 * @param title LUT 名称（可选）
 */
data class LutConfig(
    val size: Int,
    val data: FloatArray? = null,
    val byteBuffer: ByteBuffer? = null,
    val title: String = "",
    val configDataType: Int = CONFIG_DATA_TYPE_UINT8,
    val curve: LutCurve = LutCurve.SRGB
) {
    companion object {
        const val CONFIG_DATA_TYPE_UINT8 = 0
        const val CONFIG_DATA_TYPE_UINT16 = 1
    }

    /**
     * 获取用于 OpenGL 纹理上传的 FloatBuffer
     * 注意：如果只有 byteBuffer，此操作可能较慢，建议优先使用 toByteBuffer() 上传 GL_RGB8 或 GL_RGB16F
     */
    fun toFloatBuffer(): FloatBuffer {
        if (data != null) {
            return FloatBuffer.wrap(data)
        }

        val buffer = byteBuffer ?: throw IllegalStateException("No data available in LutConfig")
        val fb = FloatBuffer.allocate(size * size * size * 3)
        buffer.position(0)

        if (configDataType == CONFIG_DATA_TYPE_UINT16) {
            val shortBuffer = buffer.asShortBuffer()
            while (shortBuffer.hasRemaining()) {
                fb.put((shortBuffer.get().toInt() and 0xFFFF) / 65535f)
            }
        } else {
            while (buffer.hasRemaining()) {
                fb.put((buffer.get().toInt() and 0xFF) / 255f)
            }
        }
        fb.position(0)
        return fb
    }

    /**
     * 获取用于 OpenGL 纹理上传的 ByteBuffer (格式取决于 configDataType)
     * 将浮点数据转换为字节数据，或者直接返回已有的 byteBuffer
     */
    fun toByteBuffer(): ByteBuffer {
        if (byteBuffer != null) {
            // Return a duplicate to verify thread safety (avoid position race conditions)
            return byteBuffer.duplicate().apply { position(0) }
        }

        val floatData = data ?: throw IllegalStateException("No data available in LutConfig")
        val buffer: ByteBuffer
        if (configDataType == CONFIG_DATA_TYPE_UINT16) {
            buffer = ByteBuffer.allocateDirect(floatData.size * 2)
                .order(ByteOrder.nativeOrder())
            val shortBuffer = buffer.asShortBuffer()
            for (f in floatData) {
                shortBuffer.put((f.coerceIn(0f, 1f) * 65535f + 0.5f).toInt().toShort())
            }
        } else {
            buffer = ByteBuffer.allocateDirect(floatData.size)
                .order(ByteOrder.nativeOrder())
            for (f in floatData) {
                buffer.put((f.coerceIn(0f, 1f) * 255f + 0.5f).toInt().toByte())
            }
        }
        buffer.position(0)
        return buffer
    }

    /**
     * 验证 LUT 数据是否有效
     */
    fun isValid(): Boolean {
        val count = size * size * size * 3
        val expectedCapacity = if (configDataType == CONFIG_DATA_TYPE_UINT16) count * 2 else count
        return size > 0 && (data?.size == count || byteBuffer?.capacity() == expectedCapacity)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as LutConfig

        if (size != other.size) return false
        if (data != null) {
            if (other.data == null || !data.contentEquals(other.data)) return false
        } else if (other.data != null) return false

        if (byteBuffer != other.byteBuffer) return false
        if (title != other.title) return false

        return true
    }

    override fun hashCode(): Int {
        var result = size
        result = 31 * result + (data?.contentHashCode() ?: 0)
        result = 31 * result + (byteBuffer?.hashCode() ?: 0)
        result = 31 * result + title.hashCode()
        return result
    }
}

/**
 * LUT 信息（用于列表展示）
 */
data class LutInfo(
    val id: String,
    val nameMap: Map<String, String>, // 多语言名称映射
    val fileName: String,
    val isBuiltIn: Boolean = true,
    val isDefault: Boolean = false, // 是否为默认 LUT
    val isVip: Boolean = false, // 是否为 VIP LUT
    val category: String = "", // 分类
) {
    /**
     * 获取显示名称（优先当前系统语言）
     */
    fun getName(locale: java.util.Locale = java.util.Locale.getDefault()): String {
        val language = if (locale.language == "zh") "zh" else "en"
        return nameMap[language] ?: nameMap["en"] ?: id
    }
}
