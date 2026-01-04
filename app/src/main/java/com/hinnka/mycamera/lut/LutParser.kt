package com.hinnka.mycamera.lut

import android.content.Context
import android.util.Log
import org.json.JSONObject
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
     * 列出 Assets 中可用的 LUT 文件（从 config.json 读取）
     */
    fun listAvailableLuts(context: Context, folder: String = "luts"): List<LutInfo> {
        return try {
            // 读取 config.json
            val configPath = "$folder/config.json"
            val configJson = context.assets.open(configPath).use { 
                it.bufferedReader().readText()
            }
            
            val jsonObject = JSONObject(configJson)
            val lutsArray = jsonObject.getJSONArray("luts")
            
            // 按配置文件中的顺序读取 LUT
            val lutList = mutableListOf<LutInfo>()
            for (i in 0 until lutsArray.length()) {
                val lutObj = lutsArray.getJSONObject(i)
                val id = lutObj.getString("id")
                val path = lutObj.getString("path")
                val nameObj = lutObj.getJSONObject("name")
                
                // 读取多语言名称
                val nameMap = mutableMapOf<String, String>()
                nameObj.keys().forEach { lang ->
                    nameMap[lang] = nameObj.getString(lang)
                }
                
                lutList.add(
                    LutInfo(
                        id = id,
                        nameMap = nameMap,
                        fileName = "$folder/$path",
                        isBuiltIn = true,
                        isDefault = (i == 0) // 第一个作为默认
                    )
                )
            }
            
            Log.d(TAG, "Loaded ${lutList.size} LUTs from config.json")
            lutList
        } catch (e: Exception) {
            Log.e(TAG, "Failed to load LUT config", e)
            emptyList()
        }
    }
}
