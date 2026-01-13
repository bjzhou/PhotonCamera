package com.hinnka.mycamera.data

import android.content.Context
import android.net.Uri
import android.util.Log
import com.hinnka.mycamera.lut.LutConverter
import com.hinnka.mycamera.lut.LutInfo
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
    }

    private val customLutDir: File
        get() = File(context.filesDir, CUSTOM_LUT_DIR).apply { mkdirs() }

    private val customFrameDir: File
        get() = File(context.filesDir, CUSTOM_FRAME_DIR).apply { mkdirs() }

    /**
     * 导入 LUT 文件 (.cube)
     *
     * @param uri 选择的 .cube 文件 URI
     * @param displayName 用户自定义的显示名称（可选）
     * @return 导入成功的 LUT ID，失败返回 null
     */
    fun importLut(uri: Uri, displayName: String? = null): String? {
        return try {
            val fileName = getFileName(uri) ?: "lut_${System.currentTimeMillis()}.cube"
            val lutId = "custom_${UUID.randomUUID()}"
            val plutFileName = "$lutId.plut"
            val plutFile = File(customLutDir, plutFileName)

            // 读取 .cube 文件并转换为 .plut
            context.contentResolver.openInputStream(uri)?.use { inputStream ->
                FileOutputStream(plutFile).use { outputStream ->
                    val success = LutConverter.convertCubeToplut(inputStream, outputStream)

                    if (!success) {
                        plutFile.delete()
                        return null
                    }
                }
            } ?: return null

            // 生成显示名称
            val name = displayName ?: fileName.substringBeforeLast('.')

            // 保存到配置文件
            saveLutToConfig(lutId, name, plutFileName)

            Log.d(TAG, "LUT imported successfully: $lutId ($name)")
            lutId
        } catch (e: Exception) {
            Log.e(TAG, "Failed to import LUT", e)
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

            Log.d(TAG, "Frame imported successfully: $frameId")
            frameId
        } catch (e: Exception) {
            Log.e(TAG, "Failed to import frame", e)
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
                        isVip = false
                    )
                )
            }

            lutList
        } catch (e: Exception) {
            Log.e(TAG, "Failed to load custom LUTs", e)
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

                frameList.add(
                    com.hinnka.mycamera.frame.FrameInfo(
                        id = id,
                        nameMap = nameMap,
                        previewResId = 0,
                        isBuiltIn = false
                    )
                )
            }

            frameList
        } catch (e: Exception) {
            Log.e(TAG, "Failed to load custom frames", e)
            emptyList()
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
            Log.e(TAG, "Failed to delete custom LUT", e)
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
            Log.e(TAG, "Failed to delete custom frame", e)
            false
        }
    }

    /**
     * 保存 LUT 到配置文件
     */
    private fun saveLutToConfig(lutId: String, name: String, fileName: String) {
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
