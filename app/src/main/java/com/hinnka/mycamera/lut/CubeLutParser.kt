package com.hinnka.mycamera.lut

import android.content.Context
import android.util.Log
import java.io.BufferedReader
import java.io.InputStream
import java.io.InputStreamReader

/**
 * Adobe .cube LUT 文件解析器
 * 
 * 支持 3D LUT 的 .cube 文件格式解析
 * 参考: https://wwwimages2.adobe.com/content/dam/acom/en/products/speedgrade/cc/pdfs/cube-lut-specification-1.0.pdf
 */
object CubeLutParser {
    
    private const val TAG = "CubeLutParser"
    
    // .cube 文件关键字
    private const val KEYWORD_TITLE = "TITLE"
    private const val KEYWORD_LUT_3D_SIZE = "LUT_3D_SIZE"
    private const val KEYWORD_DOMAIN_MIN = "DOMAIN_MIN"
    private const val KEYWORD_DOMAIN_MAX = "DOMAIN_MAX"
    
    /**
     * 从 InputStream 解析 .cube 文件
     */
    fun parse(inputStream: InputStream): LutConfig {
        val reader = BufferedReader(InputStreamReader(inputStream))
        
        var title = ""
        var size = 0
        var domainMin = floatArrayOf(0f, 0f, 0f)
        var domainMax = floatArrayOf(1f, 1f, 1f)
        val dataList = mutableListOf<Float>()
        
        reader.useLines { lines ->
            for (line in lines) {
                val trimmedLine = line.trim()
                
                // 跳过空行和注释
                if (trimmedLine.isEmpty() || trimmedLine.startsWith("#")) {
                    continue
                }
                
                when {
                    // 解析标题
                    trimmedLine.startsWith(KEYWORD_TITLE) -> {
                        title = extractQuotedString(trimmedLine)
                    }
                    
                    // 解析 LUT 尺寸
                    trimmedLine.startsWith(KEYWORD_LUT_3D_SIZE) -> {
                        size = trimmedLine.substringAfter(KEYWORD_LUT_3D_SIZE).trim().toIntOrNull() ?: 0
                    }
                    
                    // 解析域最小值
                    trimmedLine.startsWith(KEYWORD_DOMAIN_MIN) -> {
                        domainMin = parseFloatTriple(trimmedLine.substringAfter(KEYWORD_DOMAIN_MIN))
                            ?: floatArrayOf(0f, 0f, 0f)
                    }
                    
                    // 解析域最大值
                    trimmedLine.startsWith(KEYWORD_DOMAIN_MAX) -> {
                        domainMax = parseFloatTriple(trimmedLine.substringAfter(KEYWORD_DOMAIN_MAX))
                            ?: floatArrayOf(1f, 1f, 1f)
                    }
                    
                    // 解析 RGB 数据行
                    else -> {
                        val values = parseFloatTriple(trimmedLine)
                        if (values != null) {
                            // 标准化到 [0, 1] 范围（如果需要）
                            val normalizedR = normalizeValue(values[0], domainMin[0], domainMax[0])
                            val normalizedG = normalizeValue(values[1], domainMin[1], domainMax[1])
                            val normalizedB = normalizeValue(values[2], domainMin[2], domainMax[2])
                            
                            dataList.add(normalizedR)
                            dataList.add(normalizedG)
                            dataList.add(normalizedB)
                        }
                    }
                }
            }
        }
        
        if (size == 0) {
            throw IllegalArgumentException("Invalid .cube file: LUT_3D_SIZE not specified")
        }
        
        val expectedDataSize = size * size * size * 3
        if (dataList.size != expectedDataSize) {
            Log.w(TAG, "Data size mismatch: expected $expectedDataSize, got ${dataList.size}")
        }
        
        return LutConfig(
            size = size,
            data = dataList.toFloatArray(),
            title = title
        )
    }
    
    /**
     * 从 Assets 文件夹解析 .cube 文件
     */
    fun parseFromAssets(context: Context, fileName: String): LutConfig {
        return context.assets.open(fileName).use { inputStream ->
            parse(inputStream)
        }
    }
    
    /**
     * 从 Assets 的 luts 子目录解析 .cube 文件
     */
    fun parseFromLutsFolder(context: Context, fileName: String): LutConfig {
        val path = if (fileName.startsWith("luts/")) fileName else "luts/$fileName"
        return parseFromAssets(context, path)
    }
    
    /**
     * 列出 Assets 中可用的 LUT 文件
     */
    fun listAvailableLuts(context: Context, folder: String = "luts"): List<LutInfo> {
        return try {
            val files = context.assets.list(folder) ?: emptyArray()
            files.filter { it.endsWith(".cube", ignoreCase = true) }
                .map { fileName ->
                    LutInfo(
                        id = fileName.substringBeforeLast("."),
                        name = fileName.substringBeforeLast(".").replace("_", " "),
                        fileName = "$folder/$fileName",
                        isBuiltIn = true
                    )
                }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to list LUT files", e)
            emptyList()
        }
    }
    
    /**
     * 提取引号中的字符串
     */
    private fun extractQuotedString(line: String): String {
        val start = line.indexOf('"')
        val end = line.lastIndexOf('"')
        return if (start >= 0 && end > start) {
            line.substring(start + 1, end)
        } else {
            line.substringAfter(' ').trim()
        }
    }
    
    /**
     * 解析包含三个浮点数的行
     */
    private fun parseFloatTriple(line: String): FloatArray? {
        val parts = line.trim().split(Regex("\\s+"))
        if (parts.size < 3) return null
        
        return try {
            floatArrayOf(
                parts[0].toFloat(),
                parts[1].toFloat(),
                parts[2].toFloat()
            )
        } catch (e: NumberFormatException) {
            null
        }
    }
    
    /**
     * 将值标准化到 [0, 1] 范围
     */
    private fun normalizeValue(value: Float, min: Float, max: Float): Float {
        return if (min == 0f && max == 1f) {
            value.coerceIn(0f, 1f)
        } else {
            ((value - min) / (max - min)).coerceIn(0f, 1f)
        }
    }
}
