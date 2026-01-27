package com.hinnka.mycamera.data

import android.content.Context
import android.net.Uri
import android.util.Log
import com.hinnka.mycamera.lut.LutConverter
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.XmpLutParser
import com.hinnka.mycamera.utils.PLog
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.util.UUID

/**
 * 自定义导入管理器
 *
 * 管理用户导入的自定义 LUT 和边框样式
 */
class CustomImportManager(private val context: Context) {

    companion object {
        private const val TAG = "CustomImportManager"

        // 自定义LUT目录
        private const val CUSTOM_LUT_DIR = "custom_luts"

        // 自定义边框目录
        private const val CUSTOM_FRAME_DIR = "custom_frames"

        // 配置文件
        private const val CUSTOM_LUT_CONFIG = "custom_luts.json"
        private const val CUSTOM_FRAME_CONFIG = "custom_frames.json"
        private const val CATEGORY_OVERRIDES_CONFIG = "category_overrides.json"

        // 自定义字体目录
        private const val CUSTOM_FONT_DIR = "custom_fonts"
    }

    /**
     * 获取分类重定向/重写映射
     */
    fun getCategoryOverrides(): Map<String, String> {
        return try {
            val file = File(context.filesDir, CATEGORY_OVERRIDES_CONFIG)
            if (!file.exists()) return emptyMap()
            val json = JSONObject(file.readText())
            val map = mutableMapOf<String, String>()
            json.keys().forEach { key ->
                map[key] = json.getString(key)
            }
            map
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to get category overrides", e)
            emptyMap()
        }
    }

    private val customLutDir: File
        get() = File(context.filesDir, CUSTOM_LUT_DIR).apply { mkdirs() }

    private val customFrameDir: File
        get() = File(context.filesDir, CUSTOM_FRAME_DIR).apply { mkdirs() }

    private val customFontDir: File
        get() = File(context.filesDir, CUSTOM_FONT_DIR).apply { mkdirs() }

    /**
     * 导入 LUT 文件 (.cube)
     *
     * @param uri 选择的 .cube 文件 URI
     * @param displayName 用户自定义的显示名称（可选）
     * @param category 分类名称（可选）
     * @return 导入成功的 LUT ID，失败返回 null
     */
    fun importLut(uri: Uri, displayName: String? = null, category: String? = null): String? {
        return try {
            val fileName = getFileName(uri) ?: "lut_${System.currentTimeMillis()}.cube"
            val lutId = "custom_${UUID.randomUUID()}"
            val plutFileName = "$lutId.plut"
            val plutFile = File(customLutDir, plutFileName)

            // 读取 .cube 文件并转换为 .plut
            context.contentResolver.openInputStream(uri)?.use { inputStream ->
                FileOutputStream(plutFile).use { outputStream ->
                    val success = if (fileName.endsWith(".xmp")) {
                        XmpLutParser.parse(inputStream, outputStream)
                    } else LutConverter.convertCubeToplut(inputStream, outputStream)

                    if (!success) {
                        plutFile.delete()
                        return null
                    }
                }
            } ?: return null

            // 生成显示名称
            val name = displayName ?: fileName.substringBeforeLast('.')

            // 保存到配置文件
            saveLutToConfig(lutId, name, plutFileName, category)

            // 如果有分类，也同步到 overrides (保持一致性)
            if (!category.isNullOrEmpty()) {
                updateLutCategory(lutId, category)
            }

            PLog.d(TAG, "LUT imported successfully: $lutId ($name)")
            lutId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to import LUT", e)
            null
        }
    }

    /**
     * 复制 LUT
     *
     * @param lut 要复制的 LUT 信息
     * @param copyName 复制后的显示名称
     * @return 复制成功的 LUT ID，失败返回 null
     */
    fun copyLut(lut: LutInfo, copyName: String): String? {
        return try {
            val lutId = "custom_${UUID.randomUUID()}"
            val plutFileName = "$lutId.plut"
            val plutFile = File(customLutDir, plutFileName)

            if (lut.isBuiltIn) {
                // 如果是内置 LUT，从 assets 复制到 custom 目录
                context.assets.open(lut.fileName).use { inputStream ->
                    FileOutputStream(plutFile).use { outputStream ->
                        inputStream.copyTo(outputStream)
                    }
                }
            } else {
                // 如果是自定义 LUT，直接从文件复制
                val originalFile = File(lut.fileName)
                if (originalFile.exists()) {
                    originalFile.inputStream().use { inputStream ->
                        FileOutputStream(plutFile).use { outputStream ->
                            inputStream.copyTo(outputStream)
                        }
                    }
                } else {
                    PLog.e(TAG, "Copy failed: original file not found: ${lut.fileName}")
                    return null
                }
            }

            // 保存到配置文件
            saveLutToConfig(lutId, copyName, plutFileName)

            // 如果原 LUT 有分类，也同步分类
            if (lut.category.isNotEmpty()) {
                updateLutCategory(lutId, lut.category)
            }

            PLog.d(TAG, "LUT copied successfully: $lutId ($copyName)")
            lutId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to copy LUT", e)
            null
        }
    }

    /**
     * 导入边框样式文件
     *
     * @param uri 选择的边框配置文件 URI (JSON)
     * @return 导入成功的边框 ID，失败返回 null
     */
    fun importFrame(uri: Uri): String? {
        return try {
            val frameId = "custom_${UUID.randomUUID()}"
            val frameConfigFile = File(customFrameDir, "$frameId.json")

            // 复制配置文件
            context.contentResolver.openInputStream(uri)?.use { inputStream ->
                FileOutputStream(frameConfigFile).use { outputStream ->
                    inputStream.copyTo(outputStream)
                }
            } ?: return null

            // 验证并解析配置
            val configJson = frameConfigFile.readText()
            val frameConfig = JSONObject(configJson)

            // 提取边框名称
            val nameObj = frameConfig.getJSONObject("name")
            val nameMap = mutableMapOf<String, String>()
            nameObj.keys().forEach { lang ->
                nameMap[lang] = nameObj.getString(lang)
            }

            // 保存到配置文件
            saveFrameToConfig(frameId, nameMap, "$frameId.json")

            PLog.d(TAG, "Frame imported successfully: $frameId")
            frameId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to import frame", e)
            null
        }
    }

    /**
     * 导入图片边框样式
     *
     * @param uri 选择的图片文件 URI (PNG/WebP with transparency)
     * @param displayName 用户自定义的显示名称（可选）
     * @return 导入成功的边框 ID，失败返回 null
     */
    fun importImageFrame(uri: Uri, displayName: String? = null): String? {
        return try {
            val fileName = getFileName(uri) ?: "frame_${System.currentTimeMillis()}.png"
            val frameId = "custom_${UUID.randomUUID()}"
            val imageFileName = "${frameId}_image.png"
            val imageFile = File(customFrameDir, imageFileName)
            val frameConfigFile = File(customFrameDir, "$frameId.json")

            // 复制图片文件
            context.contentResolver.openInputStream(uri)?.use { inputStream ->
                FileOutputStream(imageFile).use { outputStream ->
                    inputStream.copyTo(outputStream)
                }
            } ?: return null

            // 生成显示名称
            val name = displayName ?: fileName.substringBeforeLast('.')

            // 创建边框配置 JSON
            val frameConfig = JSONObject().apply {
                put("id", frameId)
                put("name", JSONObject().apply {
                    put("en", name)
                    put("zh", name)
                })
                put("version", 1)
                put("layout", JSONObject().apply {
                    put("position", "IMAGE")
                    put("imagePath", imageFile.absolutePath)
                })
                put("elements", JSONArray())
            }

            // 保存配置文件
            frameConfigFile.writeText(frameConfig.toString())

            // 保存到配置索引
            val nameMap = mapOf("en" to name, "zh" to name)
            saveFrameToConfig(frameId, nameMap, "$frameId.json")

            PLog.d(TAG, "Image frame imported successfully: $frameId ($name)")
            frameId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to import image frame", e)
            null
        }
    }

    /**
     * 导入字体文件
     */
    fun importFont(uri: Uri): String? {
        return try {
            val fileName = getFileName(uri) ?: "font_${UUID.randomUUID()}.ttf"
            val fontFile = File(customFontDir, fileName)

            context.contentResolver.openInputStream(uri)?.use { inputStream ->
                fontFile.outputStream().use { outputStream ->
                    inputStream.copyTo(outputStream)
                }
            } ?: return null

            fontFile.absolutePath
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to import font", e)
            null
        }
    }

    /**
     * 获取所有自定义 LUT
     */
    fun getCustomLuts(): List<LutInfo> {
        return try {
            val configFile = File(context.filesDir, CUSTOM_LUT_CONFIG)
            if (!configFile.exists()) {
                return emptyList()
            }

            val configJson = configFile.readText()
            val jsonArray = JSONArray(configJson)

            val lutList = mutableListOf<LutInfo>()
            for (i in 0 until jsonArray.length()) {
                val lutObj = jsonArray.getJSONObject(i)
                val id = lutObj.getString("id")
                val nameObj = lutObj.getJSONObject("name")
                val fileName = lutObj.getString("fileName")

                // 检查文件是否存在
                val lutFile = File(customLutDir, fileName)
                if (!lutFile.exists()) {
                    continue
                }

                val nameMap = mutableMapOf<String, String>()
                nameObj.keys().forEach { lang ->
                    nameMap[lang] = nameObj.getString(lang)
                }

                lutList.add(
                    LutInfo(
                        id = id,
                        nameMap = nameMap,
                        fileName = lutFile.absolutePath,
                        isBuiltIn = false,
                        isDefault = false,
                        isVip = false,
                        category = lutObj.optString("category", "")
                    )
                )
            }

            lutList
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to load custom LUTs", e)
            emptyList()
        }
    }

    /**
     * 获取所有自定义边框
     */
    fun getCustomFrames(): List<com.hinnka.mycamera.frame.FrameInfo> {
        return try {
            val configFile = File(context.filesDir, CUSTOM_FRAME_CONFIG)
            if (!configFile.exists()) {
                return emptyList()
            }

            val configJson = configFile.readText()
            val jsonArray = JSONArray(configJson)

            val frameList = mutableListOf<com.hinnka.mycamera.frame.FrameInfo>()
            for (i in 0 until jsonArray.length()) {
                val frameObj = jsonArray.getJSONObject(i)
                val id = frameObj.getString("id")
                val nameObj = frameObj.getJSONObject("name")

                val nameMap = mutableMapOf<String, String>()
                nameObj.keys().forEach { lang ->
                    nameMap[lang] = nameObj.getString(lang)
                }

                val path = File(context.filesDir, CUSTOM_FRAME_DIR).resolve("$id.json").absolutePath

                frameList.add(
                    com.hinnka.mycamera.frame.FrameInfo(
                        id = id,
                        path = path,
                        nameMap = nameMap,
                        previewResId = 0,
                        isBuiltIn = false
                    )
                )
            }

            frameList
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to load custom frames", e)
            emptyList()
        }
    }

    /**
     * 更新自定义 LUT 名称
     */
    fun updateLutName(lutId: String, newName: String): Boolean {
        return try {
            val configFile = File(context.filesDir, CUSTOM_LUT_CONFIG)
            if (!configFile.exists()) {
                return false
            }

            val configJson = configFile.readText()
            val jsonArray = JSONArray(configJson)
            val newArray = JSONArray()

            var updated = false
            for (i in 0 until jsonArray.length()) {
                val lutObj = jsonArray.getJSONObject(i)
                if (lutObj.getString("id") == lutId) {
                    // 更新名称
                    lutObj.put("name", JSONObject().apply {
                        put("en", newName)
                        put("zh", newName)
                    })
                    updated = true
                }
                newArray.put(lutObj)
            }

            if (updated) {
                configFile.writeText(newArray.toString())
                PLog.d(TAG, "LUT name updated: $lutId -> $newName")
            }

            updated
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to update LUT name", e)
            false
        }
    }

    /**
     * 更新 LUT 分类（支持内置和自定义）
     */
    fun updateLutCategory(lutId: String, newCategory: String): Boolean {
        return try {
            // 1. 同步到分类重写文件 (核心：支持内置)
            val overridesFile = File(context.filesDir, CATEGORY_OVERRIDES_CONFIG)
            val overridesJson = if (overridesFile.exists()) {
                JSONObject(overridesFile.readText())
            } else {
                JSONObject()
            }
            overridesJson.put(lutId, newCategory)
            overridesFile.writeText(overridesJson.toString())

            // 2. 如果是自定义滤镜，也同步更新 custom_luts.json (保持一致性)
            val configFile = File(context.filesDir, CUSTOM_LUT_CONFIG)
            if (configFile.exists()) {
                val configJson = configFile.readText()
                val jsonArray = JSONArray(configJson)
                val newArray = JSONArray()
                var updated = false
                for (i in 0 until jsonArray.length()) {
                    val lutObj = jsonArray.getJSONObject(i)
                    if (lutObj.getString("id") == lutId) {
                        lutObj.put("category", newCategory)
                        updated = true
                    }
                    newArray.put(lutObj)
                }
                if (updated) {
                    configFile.writeText(newArray.toString())
                }
            }

            PLog.d(TAG, "LUT category updated: $lutId -> $newCategory")
            true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to update LUT category", e)
            false
        }
    }

    /**
     * 更新自定义边框名称
     */
    fun updateFrameName(frameId: String, newName: String): Boolean {
        return try {
            val configFile = File(context.filesDir, CUSTOM_FRAME_CONFIG)
            if (!configFile.exists()) {
                return false
            }

            val configJson = configFile.readText()
            val jsonArray = JSONArray(configJson)
            val newArray = JSONArray()

            var updated = false
            for (i in 0 until jsonArray.length()) {
                val frameObj = jsonArray.getJSONObject(i)
                if (frameObj.getString("id") == frameId) {
                    // 更新名称
                    frameObj.put("name", JSONObject().apply {
                        put("en", newName)
                        put("zh", newName)
                    })
                    updated = true
                }
                newArray.put(frameObj)
            }

            if (updated) {
                configFile.writeText(newArray.toString())
                PLog.d(TAG, "Frame name updated: $frameId -> $newName")
            }

            updated
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to update frame name", e)
            false
        }
    }

    /**
     * 删除自定义 LUT
     */
    fun deleteCustomLut(lutId: String): Boolean {
        return try {
            // 从配置文件中移除
            val configFile = File(context.filesDir, CUSTOM_LUT_CONFIG)
            if (configFile.exists()) {
                val configJson = configFile.readText()
                val jsonArray = JSONArray(configJson)
                val newArray = JSONArray()

                var fileName: String? = null
                for (i in 0 until jsonArray.length()) {
                    val lutObj = jsonArray.getJSONObject(i)
                    if (lutObj.getString("id") == lutId) {
                        fileName = lutObj.getString("fileName")
                    } else {
                        newArray.put(lutObj)
                    }
                }

                configFile.writeText(newArray.toString())

                // 删除文件
                fileName?.let {
                    File(customLutDir, it).delete()
                }
            }

            true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to delete custom LUT", e)
            false
        }
    }

    /**
     * 删除自定义边框
     */
    fun deleteCustomFrame(frameId: String): Boolean {
        return try {
            val configFile = File(context.filesDir, CUSTOM_FRAME_CONFIG)
            if (configFile.exists()) {
                val configJson = configFile.readText()
                val jsonArray = JSONArray(configJson)
                val newArray = JSONArray()

                var fileName: String? = null
                for (i in 0 until jsonArray.length()) {
                    val frameObj = jsonArray.getJSONObject(i)
                    if (frameObj.getString("id") == frameId) {
                        fileName = frameObj.getString("fileName")
                    } else {
                        newArray.put(frameObj)
                    }
                }

                configFile.writeText(newArray.toString())

                // 删除文件
                fileName?.let {
                    File(customFrameDir, it).delete()
                }
            }

            true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to delete custom frame", e)
            false
        }
    }

    /**
     * 保存 LUT 到配置文件
     */
    private fun saveLutToConfig(lutId: String, name: String, fileName: String, category: String? = null) {
        val configFile = File(context.filesDir, CUSTOM_LUT_CONFIG)

        val jsonArray = if (configFile.exists()) {
            JSONArray(configFile.readText())
        } else {
            JSONArray()
        }

        val lutObj = JSONObject().apply {
            put("id", lutId)
            put("name", JSONObject().apply {
                put("en", name)
                put("zh", name)
            })
            put("fileName", fileName)
            if (!category.isNullOrEmpty()) {
                put("category", category)
            }
        }

        jsonArray.put(lutObj)
        configFile.writeText(jsonArray.toString())
    }

    /**
     * 保存边框到配置文件
     */
    private fun saveFrameToConfig(frameId: String, nameMap: Map<String, String>, fileName: String) {
        val configFile = File(context.filesDir, CUSTOM_FRAME_CONFIG)

        val jsonArray = if (configFile.exists()) {
            JSONArray(configFile.readText())
        } else {
            JSONArray()
        }

        val frameObj = JSONObject().apply {
            put("id", frameId)
            put("name", JSONObject().apply {
                nameMap.forEach { (lang, name) ->
                    put(lang, name)
                }
            })
            put("fileName", fileName)
        }

        jsonArray.put(frameObj)
        configFile.writeText(jsonArray.toString())
    }

    /**
     * 从 URI 获取文件名
     */
    private fun getFileName(uri: Uri): String? {
        return try {
            context.contentResolver.query(uri, null, null, null, null)?.use { cursor ->
                val nameIndex = cursor.getColumnIndex(android.provider.OpenableColumns.DISPLAY_NAME)
                cursor.moveToFirst()
                cursor.getString(nameIndex)
            }
        } catch (e: Exception) {
            null
        }
    }
}
