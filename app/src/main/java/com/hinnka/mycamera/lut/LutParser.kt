package com.hinnka.mycamera.lut

import android.content.Context
import android.util.Log
import java.io.InputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * 3D LUT 解析器，支持 .cube (文本) 和 .plut (二进制) 格式
 */
object LutParser {
    private const val TAG = "LutParser"
    private const val MAGIC_PLUT = 0x54554C50 // 'PLUT' in Little Endian

    /**
     * 解析 LUT 文件（自动识别格式）
     */
    fun parse(inputStream: InputStream, title: String = ""): LutConfig {
        val stream = if (inputStream.markSupported()) inputStream else inputStream.buffered()
        
        // 先读取前 4 个字节判断是否为二进制格式
        val header = ByteArray(4)
        stream.mark(16)
        val read = stream.read(header)
        stream.reset()

        if (read == 4) {
            val magic = ByteBuffer.wrap(header).order(ByteOrder.LITTLE_ENDIAN).int
            if (magic == MAGIC_PLUT) {
                return parseBinary(stream, title)
            }
        }

        // 默认回退到文本解析
        return CubeLutParser.parse(stream)
    }

    /**
     * 解析二进制 .plut 格式
     */
    private fun parseBinary(inputStream: InputStream, title: String): LutConfig {
        val fullData = inputStream.readBytes()
        val buffer = ByteBuffer.wrap(fullData).order(ByteOrder.LITTLE_ENDIAN)

        val magic = buffer.int // Skip magic
        val version = buffer.int
        val size = buffer.int
        val dataType = buffer.int

        val expectedSize = size * size * size * 3
        
        //dataType 0 = UINT8, 1 = FLOAT32 (未来扩展)
        if (dataType == 0) {
            val directBuffer = ByteBuffer.allocateDirect(expectedSize)
                .order(ByteOrder.nativeOrder())
            
            // 将数据拷贝到 DirectByteBuffer 以便 OpenGL 使用
            val data = ByteArray(expectedSize)
            buffer.get(data)
            directBuffer.put(data)
            directBuffer.position(0)

            return LutConfig(
                size = size,
                byteBuffer = directBuffer,
                title = title
            )
        } else {
            // 未来可以支持 Float32
            throw UnsupportedOperationException("Unsupported data type: $dataType")
        }
    }

    /**
     * 从 Assets 文件夹解析 LUT 文件
     */
    fun parseFromAssets(context: Context, fileName: String): LutConfig {
        return context.assets.open(fileName).use { inputStream ->
            parse(inputStream, fileName.substringAfterLast('/').substringBeforeLast('.'))
        }
    }

    /**
     * 列出 Assets 中可用的 LUT 文件（优先展示 .plut）
     */
    fun listAvailableLuts(context: Context, folder: String = "luts"): List<LutInfo> {
        return try {
            val files = context.assets.list(folder) ?: emptyArray()
            
            // 获取所有不带后缀的文件名（基准 ID）
            val baseNames = files.map { it.substringBeforeLast('.') }.distinct()
            
            baseNames.map { baseName ->
                // 优先检查是否有 .plut，没有则用 .cube
                val hasPlut = files.contains("$baseName.plut")
                val fileName = if (hasPlut) "$baseName.plut" else "$baseName.cube"
                
                LutInfo(
                    id = baseName,
                    name = baseName.replace("_", " "),
                    fileName = "$folder/$fileName",
                    isBuiltIn = true
                )
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to list LUT files", e)
            emptyList()
        }
    }
}
