package com.hinnka.mycamera.data

import android.content.Context
import android.net.Uri
import com.hinnka.mycamera.lut.LutConverter
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.XmpLutParser
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.utils.PLog
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.util.Locale
import java.util.UUID

class CustomImportManager(private val context: Context) {

    companion object {
        private const val TAG = "CustomImportManager"
        private const val CUSTOM_LUT_DIR = "custom_luts"
        private const val CUSTOM_LUT_CONFIG = "custom_luts.json"
        private const val CATEGORY_OVERRIDES_CONFIG = "category_overrides.json"
        private const val FAVORITE_OVERRIDES_CONFIG = "favorite_overrides.json"
        private const val BUILT_IN_LUT_CATEGORY_INITIALIZED_CONFIG = "built_in_lut_categories_initialized.json"
    }

    private fun sanitizeCustomLutCategory(category: String?): String {
        val trimmedCategory = category?.trim().orEmpty()
        if (trimmedCategory.isEmpty()) return ""
        val reservedCategoryNames = setOf("内置", "未分类", "built_in", "uncategorized")
        return if (trimmedCategory in reservedCategoryNames) "" else trimmedCategory
    }

    private fun isCustomLutId(lutId: String): Boolean = lutId.startsWith("custom_")

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

    fun initializeBuiltInLutCategoriesIfNeeded(luts: List<LutInfo>) {
        try {
            val categorizedLuts = luts
                .filter { it.isBuiltIn && it.category.isNotEmpty() }
                .associate { it.id to it.category }
            if (categorizedLuts.isEmpty()) return

            val initializedFile = File(context.filesDir, BUILT_IN_LUT_CATEGORY_INITIALIZED_CONFIG)
            val initializedJson = if (initializedFile.exists()) {
                JSONObject(initializedFile.readText())
            } else {
                JSONObject()
            }

            val overridesFile = File(context.filesDir, CATEGORY_OVERRIDES_CONFIG)
            val overridesJson = if (overridesFile.exists()) {
                JSONObject(overridesFile.readText())
            } else {
                JSONObject()
            }

            var updatedCount = 0
            categorizedLuts.forEach { (id, category) ->
                if (!initializedJson.optBoolean(id, false)) {
                    overridesJson.put(id, category)
                    initializedJson.put(id, true)
                    updatedCount++
                }
            }

            if (updatedCount > 0) {
                overridesFile.writeText(overridesJson.toString())
                initializedFile.writeText(initializedJson.toString())
            }
            PLog.d(TAG, "Built-in LUT categories initialized: $updatedCount")
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to initialize built-in LUT categories", e)
        }
    }

    fun getFavoriteOverrides(): Map<String, Boolean> {
        return try {
            val file = File(context.filesDir, FAVORITE_OVERRIDES_CONFIG)
            if (!file.exists()) return emptyMap()
            val json = JSONObject(file.readText())
            val map = mutableMapOf<String, Boolean>()
            json.keys().forEach { key ->
                map[key] = json.optBoolean(key, false)
            }
            map
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to get favorite overrides", e)
            emptyMap()
        }
    }

    private val customLutDir: File
        get() = File(context.filesDir, CUSTOM_LUT_DIR).apply { mkdirs() }

    fun importLut(uri: Uri, displayName: String? = null, category: String? = null, colorSpace: ColorSpace = ColorSpace.SRGB, curve: TransferCurve = TransferCurve.SRGB): String? {
        return try {
            val fileName = getFileName(uri) ?: "lut_${System.currentTimeMillis()}.cube"
            val lutId = "custom_${UUID.randomUUID()}"
            val plutFileName = "$lutId.plut"
            val plutFile = File(customLutDir, plutFileName)

            openInputStream(uri)?.use { inputStream ->
                FileOutputStream(plutFile).use { outputStream ->
                    val success = when {
                        fileName.endsWith(".xmp", ignoreCase = true) ->
                            XmpLutParser.parse(inputStream, outputStream, colorSpace = colorSpace, curve = curve)
                        fileName.endsWith(".png", ignoreCase = true) ->
                            LutConverter.convertPngToplut(inputStream, outputStream, colorSpace = colorSpace, curve = curve)
                        fileName.endsWith(".plut", ignoreCase = true) ->
                            LutConverter.importPlutStrippingRecipe(inputStream, outputStream)
                        else ->
                            LutConverter.convertCubeToplut(inputStream, outputStream, colorSpace = colorSpace, curve = curve)
                    }

                    if (!success) {
                        plutFile.delete()
                        return null
                    }
                }
            } ?: return null

            val name = displayName ?: fileName.substringBeforeLast('.')
            val sanitizedCategory = sanitizeCustomLutCategory(category)

            saveLutToConfig(lutId, name, plutFileName, sanitizedCategory)

            if (sanitizedCategory.isNotEmpty()) {
                updateLutCategory(lutId, sanitizedCategory)
            }

            PLog.d(TAG, "LUT imported successfully: $lutId ($name)")
            lutId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to import LUT", e)
            null
        }
    }

    fun copyLut(lut: LutInfo, copyName: String): String? {
        return try {
            val lutId = "custom_${UUID.randomUUID()}"
            val plutFileName = "$lutId.plut"
            val plutFile = File(customLutDir, plutFileName)

            if (lut.isBuiltIn) {
                context.assets.open(lut.fileName).use { inputStream ->
                    FileOutputStream(plutFile).use { outputStream ->
                        inputStream.copyTo(outputStream)
                    }
                }
            } else {
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

            saveLutToConfig(lutId, copyName, plutFileName)

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
                        category = lutObj.optString("category", ""),
                        isFavorite = lutObj.optBoolean("isFavorite", false)
                    )
                )
            }
            lutList
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to load custom LUTs", e)
            emptyList()
        }
    }

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

    fun updateLutCategory(lutId: String, newCategory: String): Boolean {
        return try {
            val sanitizedCategory = if (isCustomLutId(lutId)) {
                sanitizeCustomLutCategory(newCategory)
            } else {
                newCategory.trim()
            }

            val overridesFile = File(context.filesDir, CATEGORY_OVERRIDES_CONFIG)
            val overridesJson = if (overridesFile.exists()) {
                JSONObject(overridesFile.readText())
            } else {
                JSONObject()
            }
            overridesJson.put(lutId, sanitizedCategory)
            overridesFile.writeText(overridesJson.toString())

            val configFile = File(context.filesDir, CUSTOM_LUT_CONFIG)
            if (configFile.exists()) {
                val configJson = configFile.readText()
                val jsonArray = JSONArray(configJson)
                val newArray = JSONArray()
                var updated = false
                for (i in 0 until jsonArray.length()) {
                    val lutObj = jsonArray.getJSONObject(i)
                    if (lutObj.getString("id") == lutId) {
                        lutObj.put("category", sanitizedCategory)
                        updated = true
                    }
                    newArray.put(lutObj)
                }
                if (updated) {
                    configFile.writeText(newArray.toString())
                }
            }

            PLog.d(TAG, "LUT category updated: $lutId -> $sanitizedCategory")
            true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to update LUT category", e)
            false
        }
    }

    fun updateLutFavorite(lutId: String, isFavorite: Boolean): Boolean {
        return try {
            val overridesFile = File(context.filesDir, FAVORITE_OVERRIDES_CONFIG)
            val overridesJson = if (overridesFile.exists()) {
                JSONObject(overridesFile.readText())
            } else {
                JSONObject()
            }
            overridesJson.put(lutId, isFavorite)
            overridesFile.writeText(overridesJson.toString())

            val configFile = File(context.filesDir, CUSTOM_LUT_CONFIG)
            if (configFile.exists()) {
                val configJson = configFile.readText()
                val jsonArray = JSONArray(configJson)
                val newArray = JSONArray()
                var updated = false
                for (i in 0 until jsonArray.length()) {
                    val lutObj = jsonArray.getJSONObject(i)
                    if (lutObj.getString("id") == lutId) {
                        lutObj.put("isFavorite", isFavorite)
                        updated = true
                    }
                    newArray.put(lutObj)
                }
                if (updated) {
                    configFile.writeText(newArray.toString())
                }
            }

            PLog.d(TAG, "LUT favorite updated: $lutId -> $isFavorite")
            true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to update LUT favorite", e)
            false
        }
    }

    fun deleteCustomLut(lutId: String): Boolean {
        return try {
            val configFile = File(context.filesDir, CUSTOM_LUT_CONFIG)
            if (!configFile.exists()) {
                return false
            }

            val configJson = configFile.readText()
            val jsonArray = JSONArray(configJson)
            val newArray = JSONArray()

            var deleted = false
            var fileNameToDelete: String? = null

            for (i in 0 until jsonArray.length()) {
                val lutObj = jsonArray.getJSONObject(i)
                val id = lutObj.getString("id")
                if (id == lutId) {
                    fileNameToDelete = lutObj.getString("fileName")
                    deleted = true
                } else {
                    newArray.put(lutObj)
                }
            }

            if (deleted) {
                configFile.writeText(newArray.toString())
                fileNameToDelete?.let { fileName ->
                    val file = File(customLutDir, fileName)
                    if (file.exists()) {
                        file.delete()
                    }
                }

                val overridesFile = File(context.filesDir, CATEGORY_OVERRIDES_CONFIG)
                if (overridesFile.exists()) {
                    val json = JSONObject(overridesFile.readText())
                    json.remove(lutId)
                    overridesFile.writeText(json.toString())
                }

                val favFile = File(context.filesDir, FAVORITE_OVERRIDES_CONFIG)
                if (favFile.exists()) {
                    val json = JSONObject(favFile.readText())
                    json.remove(lutId)
                    favFile.writeText(json.toString())
                }

                PLog.d(TAG, "LUT deleted: $lutId")
            }

            deleted
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to delete custom LUT", e)
            false
        }
    }

    private fun saveLutToConfig(lutId: String, name: String, fileName: String, category: String = "") {
        try {
            val configFile = File(context.filesDir, CUSTOM_LUT_CONFIG)
            val jsonArray = if (configFile.exists()) {
                JSONArray(configFile.readText())
            } else {
                JSONArray()
            }

            val nameObj = JSONObject().apply {
                put("en", name)
                put("zh", name)
            }

            val lutObj = JSONObject().apply {
                put("id", lutId)
                put("name", nameObj)
                put("fileName", fileName)
                put("category", category)
                put("isFavorite", false)
            }

            jsonArray.put(lutObj)
            configFile.writeText(jsonArray.toString())
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save LUT to config", e)
        }
    }

    private fun getFileName(uri: Uri): String? {
        var result: String? = null
        if (uri.scheme == "content") {
            val cursor = context.contentResolver.query(uri, null, null, null, null)
            cursor?.use {
                if (it.moveToFirst()) {
                    val index = it.getColumnIndex(android.provider.OpenableColumns.DISPLAY_NAME)
                    if (index != -1) {
                        result = it.getString(index)
                    }
                }
            }
        }
        if (result == null) {
            result = uri.path
            val cut = result?.lastIndexOf('/') ?: -1
            if (cut != -1) {
                result = result?.substring(cut + 1)
            }
        }
        return result
    }

    private fun openInputStream(uri: Uri): java.io.InputStream? {
        return try {
            context.contentResolver.openInputStream(uri)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to open input stream for $uri", e)
            null
        }
    }
}
