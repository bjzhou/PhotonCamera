package com.hinnka.mycamera.data

import android.content.Context
import android.net.Uri
import android.provider.OpenableColumns
import com.hinnka.mycamera.R
import com.hinnka.mycamera.lut.LutConverter
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.frame.FrameElement
import com.hinnka.mycamera.frame.FrameTemplate
import com.hinnka.mycamera.frame.FrameTemplateParser
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.XmpLutParser
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.raw.DcpInfo
import com.hinnka.mycamera.raw.RawNoiseProfileInfo
import com.hinnka.mycamera.processor.CalibratedRawNoiseProfile
import com.hinnka.mycamera.utils.PLog
import org.json.JSONArray
import org.json.JSONObject
import java.io.ByteArrayInputStream
import java.io.File
import java.io.FileOutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.Locale
import java.util.UUID

private const val PRESET_PLUT_MAGIC = 0x54554C50
private const val PRESET_PLUT_MAX_VERSION = 4
private const val PRESET_PLUT_MAX_DIMENSION = 65

internal fun isStructurallyValidPresetPlut(bytes: ByteArray): Boolean {
    return runCatching {
        if (bytes.size < 16) return false
        val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
        if (buffer.int != PRESET_PLUT_MAGIC) return false
        val version = buffer.int
        if (version !in 1..PRESET_PLUT_MAX_VERSION) return false
        val dimension = buffer.int
        if (dimension !in 2..PRESET_PLUT_MAX_DIMENSION) return false
        val dataType = buffer.int
        if (dataType !in 0..1) return false
        if (version >= 2) buffer.int
        if (version >= 3) buffer.int

        val bytesPerComponent = if (dataType == 1) 2L else 1L
        val payloadBytes = dimension.toLong() * dimension * dimension * 3L * bytesPerComponent
        val payloadEnd = buffer.position().toLong() + payloadBytes
        if (payloadEnd > bytes.size) return false
        if (version < 4) return payloadEnd == bytes.size.toLong()
        if (payloadEnd == bytes.size.toLong()) return true
        if (payloadEnd + Int.SIZE_BYTES > bytes.size) return false

        buffer.position(payloadEnd.toInt())
        val recipeBytes = buffer.int
        recipeBytes >= 0 && payloadEnd + Int.SIZE_BYTES + recipeBytes == bytes.size.toLong()
    }.getOrDefault(false)
}

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
        private const val CUSTOM_DCP_DIR = "custom_dcps"
        private const val CUSTOM_RAW_NOISE_PROFILE_DIR = "custom_raw_noise_profiles"

        // 配置文件
        private const val CUSTOM_LUT_CONFIG = "custom_luts.json"
        private const val CUSTOM_FRAME_CONFIG = "custom_frames.json"
        private const val CUSTOM_DCP_CONFIG = "custom_dcps.json"
        private const val CUSTOM_RAW_NOISE_PROFILE_CONFIG = "custom_raw_noise_profiles.json"
        private const val MAX_RAW_NOISE_PROFILE_CHARS = 1024 * 1024
        private const val CATEGORY_OVERRIDES_CONFIG = "category_overrides.json"
        private const val FAVORITE_OVERRIDES_CONFIG = "favorite_overrides.json"
        private const val BUILT_IN_LUT_CATEGORY_INITIALIZED_CONFIG = "built_in_lut_categories_initialized.json"

        // 自定义字体目录
        private const val CUSTOM_FONT_DIR = "custom_fonts"

        // 自定义 Logo 目录
        private const val CUSTOM_LOGO_DIR = "custom_logos"

        private val EXTERNAL_LUT_IMPORT_EXTENSIONS = setOf("cube", "png", "xmp", "plut")
        private const val ZIP_IMPORT_EXTENSION = "zip"

        fun resolveDisplayFileName(context: Context, uri: Uri): String? {
            if (uri.scheme == "file") {
                return uri.lastPathSegment
            }

            val displayName = try {
                context.contentResolver.query(
                    uri,
                    arrayOf(OpenableColumns.DISPLAY_NAME),
                    null,
                    null,
                    null
                )?.use { cursor ->
                    val nameIndex = cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                    if (nameIndex >= 0 && cursor.moveToFirst()) {
                        cursor.getString(nameIndex)
                    } else {
                        null
                    }
                }
            } catch (e: Exception) {
                PLog.w(TAG, "Failed to resolve display file name for $uri", e)
                null
            }

            return displayName?.takeIf { it.isNotBlank() } ?: uri.lastPathSegment
        }

        fun isExternalLutImportFileName(fileName: String?): Boolean {
            val extension = fileName?.substringAfterLast('.', missingDelimiterValue = "")
                ?.lowercase(Locale.US)
                ?: return false
            return extension in EXTERNAL_LUT_IMPORT_EXTENSIONS || extension == ZIP_IMPORT_EXTENSION
        }

        fun isCubeImportFileName(fileName: String?): Boolean {
            return fileName?.substringAfterLast('.', missingDelimiterValue = "")
                ?.lowercase(Locale.US) == "cube"
        }

        fun isZipImportFileName(fileName: String?): Boolean {
            return fileName?.substringAfterLast('.', missingDelimiterValue = "")
                ?.lowercase(Locale.US) == ZIP_IMPORT_EXTENSION
        }
    }

    private fun sanitizeCustomLutCategory(category: String?): String {
        val trimmedCategory = category?.trim().orEmpty()
        if (trimmedCategory.isEmpty()) return ""

        val reservedCategoryNames = setOf(
            context.getString(R.string.built_in),
            context.getString(R.string.uncategorized)
        )
        return if (trimmedCategory in reservedCategoryNames) "" else trimmedCategory
    }

    private fun isCustomLutId(lutId: String): Boolean = lutId.startsWith("custom_")

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

    /**
     * 获取收藏重写映射。
     */
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

    private val customFrameDir: File
        get() = File(context.filesDir, CUSTOM_FRAME_DIR).apply { mkdirs() }

    private val customDcpDir: File
        get() = File(context.filesDir, CUSTOM_DCP_DIR).apply { mkdirs() }

    private val customRawNoiseProfileDir: File
        get() = File(context.filesDir, CUSTOM_RAW_NOISE_PROFILE_DIR).apply { mkdirs() }

    private val customFontDir: File
        get() = File(context.filesDir, CUSTOM_FONT_DIR).apply { mkdirs() }

    private val customLogoDir: File
        get() = File(context.filesDir, CUSTOM_LOGO_DIR).apply { mkdirs() }

    /**
     * 导入 LUT 文件 (.cube)
     *
     * @param uri 选择的 .cube 文件 URI
     * @param displayName 用户自定义的显示名称（可选）
     * @param category 分类名称（可选）
     * @param curve 输入曲线类型（可选）
     * @return 导入成功的 LUT ID，失败返回 null
     */
    fun importLut(uri: Uri, displayName: String? = null, category: String? = null, colorSpace: ColorSpace = ColorSpace.SRGB, curve: TransferCurve = TransferCurve.SRGB): String? {
        return try {
            val fileName = getFileName(uri) ?: "lut_${System.currentTimeMillis()}.cube"
            val lutId = "custom_${UUID.randomUUID()}"
            val plutFileName = "$lutId.plut"
            val plutFile = File(customLutDir, plutFileName)

            // 读取 .cube / .png / .xmp / .plut 文件并转换（或复制）为内部 .plut (v3)
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

            var parsedName: String? = null
            if (fileName.endsWith(".xmp", ignoreCase = true) && displayName.isNullOrBlank()) {
                openInputStream(uri)?.use { inputStream ->
                    parsedName = XmpLutParser.parseName(inputStream)
                }
            }

            // 生成显示名称
            val name = displayName?.takeIf { it.isNotBlank() } ?: parsedName ?: fileName.substringBeforeLast('.')
            val sanitizedCategory = sanitizeCustomLutCategory(category)

            // 保存到配置文件
            saveLutToConfig(lutId, name, plutFileName, sanitizedCategory)

            // 如果有分类，也同步到 overrides (保持一致性)
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

    /**
     * 从预设包导入应用原生 .plut，并保留资源的名称与分类元数据。
     */
    internal fun importPresetLut(
        bytes: ByteArray,
        nameMap: Map<String, String>,
        category: String,
        isFavorite: Boolean,
    ): String? {
        val lutId = "custom_${UUID.randomUUID()}"
        val plutFileName = "$lutId.plut"
        val plutFile = File(customLutDir, plutFileName)
        return try {
            require(isStructurallyValidPresetPlut(bytes)) { "Invalid LUT data in preset package" }
            val success = ByteArrayInputStream(bytes).use { input ->
                FileOutputStream(plutFile).use { output ->
                    LutConverter.importPlutStrippingRecipe(input, output)
                }
            }
            if (!success) {
                plutFile.delete()
                return null
            }

            val resolvedNameMap = nameMap
                .filter { (language, name) -> language.isNotBlank() && name.isNotBlank() }
                .ifEmpty { mapOf("en" to lutId) }
            saveLutToConfig(
                lutId = lutId,
                nameMap = resolvedNameMap,
                fileName = plutFileName,
                category = sanitizeCustomLutCategory(category),
                isFavorite = isFavorite,
            )
            lutId
        } catch (e: Exception) {
            plutFile.delete()
            PLog.e(TAG, "Failed to import LUT from preset package", e)
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

            val importedJson = openInputStream(uri)?.use { inputStream ->
                inputStream.bufferedReader(Charsets.UTF_8).use { it.readText() }
            } ?: return null

            val importedTemplate = FrameTemplateParser.parseTemplate(importedJson)
            val templateToSave = importedTemplate.copy(id = frameId)
            val validationErrors = FrameTemplateParser.validateTemplate(templateToSave)
            if (validationErrors.isNotEmpty()) {
                PLog.e(TAG, "Failed to import frame, invalid fields: $validationErrors")
                return null
            }

            frameConfigFile.writeText(FrameTemplateParser.serializeTemplate(templateToSave))

            // 保存到配置文件
            saveFrameToConfig(frameId, templateToSave.nameMap, "$frameId.json")

            PLog.d(TAG, "Frame imported successfully: $frameId source=${importedTemplate.id}")
            frameId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to import frame", e)
            null
        }
    }

    /**
     * 复制边框样式。
     *
     * 内置边框会从 assets 读取模板，自定义边框会从私有目录读取模板。若模板引用了私有目录内的图片边框资源，
     * 会一并复制图片文件并把 imagePath 改为副本路径。
     */
    fun copyFrame(frame: com.hinnka.mycamera.frame.FrameInfo, copyName: String): String? {
        return try {
            val frameId = "custom_${UUID.randomUUID()}"
            val sourceTemplate = if (frame.isBuiltIn) {
                FrameTemplateParser.parseFromAssets(context, frame.path)
            } else {
                FrameTemplateParser.parseFromFile(frame.path)
            } ?: return null

            val copiedLayout = sourceTemplate.layout.imagePath?.let { imagePath ->
                copyCustomFrameImageIfNeeded(imagePath, frameId)
            }?.let { copiedImagePath ->
                sourceTemplate.layout.copy(imagePath = copiedImagePath)
            } ?: sourceTemplate.layout

            val copiedTemplate = sourceTemplate.copy(
                id = frameId,
                nameMap = mapOf("en" to copyName, "zh" to copyName),
                layout = copiedLayout
            )

            val validationErrors = FrameTemplateParser.validateTemplate(copiedTemplate)
            if (validationErrors.isNotEmpty()) {
                PLog.e(TAG, "Copy frame failed, invalid fields: $validationErrors")
                return null
            }

            val frameConfigFile = File(customFrameDir, "$frameId.json")
            frameConfigFile.writeText(FrameTemplateParser.serializeTemplate(copiedTemplate))
            saveFrameToConfig(frameId, copiedTemplate.nameMap, frameConfigFile.name)

            PLog.d(TAG, "Frame copied successfully: $frameId ($copyName)")
            frameId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to copy frame", e)
            null
        }
    }

    fun exportFrameJson(frame: com.hinnka.mycamera.frame.FrameInfo): ByteArray? {
        return try {
            val json = if (frame.isBuiltIn) {
                context.assets.open(frame.path).use { input ->
                    input.bufferedReader().use { it.readText() }
                }
            } else {
                File(frame.path).takeIf { it.exists() }?.readText() ?: return null
            }
            json.toByteArray(Charsets.UTF_8)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to export frame JSON: ${frame.id}", e)
            null
        }
    }

    private fun copyCustomFrameImageIfNeeded(imagePath: String, frameId: String): String? {
        val sourceFile = File(imagePath)
        if (!sourceFile.exists() || sourceFile.parentFile != customFrameDir) {
            return imagePath
        }

        val extension = sourceFile.extension.takeIf { it.isNotBlank() } ?: "png"
        val imageFileName = "${frameId}_image.${extension.lowercase(Locale.US)}"
        val copiedFile = File(customFrameDir, imageFileName)
        sourceFile.inputStream().use { input ->
            copiedFile.outputStream().use { output ->
                input.copyTo(output)
            }
        }
        return copiedFile.absolutePath
    }

    fun importDcp(uri: Uri, displayName: String? = null): String? {
        return try {
            val fileName = getFileName(uri) ?: "profile_${System.currentTimeMillis()}.dcp"
            val dcpId = "custom_dcp_${UUID.randomUUID()}"
            val normalizedFileName = "$dcpId.dcp"
            val dcpFile = File(customDcpDir, normalizedFileName)

            openInputStream(uri)?.use { inputStream ->
                FileOutputStream(dcpFile).use { outputStream ->
                    inputStream.copyTo(outputStream)
                }
            } ?: return null

            val name = displayName ?: fileName.substringBeforeLast('.')
            saveDcpToConfig(dcpId, name, normalizedFileName)
            PLog.d(TAG, "DCP imported successfully: $dcpId ($name)")
            dcpId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to import DCP", e)
            null
        }
    }

    /** 从预设包导入原始 DCP 文件，并保留预设包中的显示名称。 */
    internal fun importPresetDcp(
        bytes: ByteArray,
        nameMap: Map<String, String>,
    ): String? {
        val dcpId = "custom_dcp_${UUID.randomUUID()}"
        val normalizedFileName = "$dcpId.dcp"
        val dcpFile = File(customDcpDir, normalizedFileName)
        return try {
            require(bytes.isNotEmpty()) { "DCP data is empty" }
            FileOutputStream(dcpFile).use { it.write(bytes) }
            val resolvedNameMap = nameMap
                .filter { (language, name) -> language.isNotBlank() && name.isNotBlank() }
                .ifEmpty { mapOf("en" to dcpId, "zh" to dcpId) }
            saveDcpToConfig(dcpId, resolvedNameMap, normalizedFileName)
            dcpId
        } catch (e: Exception) {
            dcpFile.delete()
            PLog.e(TAG, "Failed to import DCP from preset package", e)
            null
        }
    }

    fun importRawNoiseProfile(uri: Uri, displayName: String? = null): String? {
        var profileFile: File? = null
        return try {
            val fileName = getFileName(uri) ?: return null
            if (!fileName.endsWith(".c", ignoreCase = true)) return null
            val source = openInputStream(uri)?.bufferedReader(Charsets.UTF_8)?.use { reader ->
                val text = StringBuilder()
                val chunk = CharArray(8192)
                while (true) {
                    val count = reader.read(chunk)
                    if (count < 0) break
                    require(text.length + count <= MAX_RAW_NOISE_PROFILE_CHARS) {
                        "RAW noise profile exceeds the import size limit"
                    }
                    text.append(chunk, 0, count)
                }
                text.toString()
            } ?: return null
            val profileId = "custom_raw_noise_${UUID.randomUUID()}"
            CalibratedRawNoiseProfile.parseGcamC(profileId, source)

            val normalizedFileName = "$profileId.c"
            val destination = File(customRawNoiseProfileDir, normalizedFileName)
            profileFile = destination
            FileOutputStream(destination).bufferedWriter(Charsets.UTF_8).use { writer ->
                writer.write(source)
            }
            val name = displayName ?: fileName.substringBeforeLast('.')
            saveRawNoiseProfileToConfig(profileId, name, normalizedFileName)
            PLog.d(TAG, "RAW noise profile imported successfully: $profileId ($name)")
            profileId
        } catch (e: Exception) {
            profileFile?.delete()
            PLog.e(TAG, "Failed to import RAW noise profile", e)
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
            val extension = fileName.substringAfterLast('.', "png")
            val imageFileName = "${frameId}_image.$extension"
            val imageFile = File(customFrameDir, imageFileName)
            val frameConfigFile = File(customFrameDir, "$frameId.json")

            // 复制图片文件
            openInputStream(uri)?.use { inputStream ->
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
     * 为边框编辑器导入图片资源并复制到私有目录。
     */
    fun importEditorFrameImage(uri: Uri, frameIdHint: String? = null): String? {
        return try {
            val fileName = getFileName(uri) ?: "frame_${System.currentTimeMillis()}.png"
            val extension = fileName.substringAfterLast('.', "png")
            val imageFileName = (frameIdHint ?: "frame_${UUID.randomUUID()}") + "_image.$extension"
            val imageFile = File(customFrameDir, imageFileName)

            openInputStream(uri)?.use { inputStream ->
                imageFile.outputStream().use { outputStream ->
                    inputStream.copyTo(outputStream)
                }
            } ?: return null

            imageFile.absolutePath
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to import frame editor image", e)
            null
        }
    }

    /**
     * 保存或覆盖自定义边框模板。
     *
     * @param template 待保存模板
     * @param overwriteFrameId 若传入则覆盖该自定义边框，否则创建新的自定义边框
     * @return 实际保存的边框 ID
     */
    fun saveFrameTemplate(template: FrameTemplate, overwriteFrameId: String? = null): String? {
        return try {
            val frameId = overwriteFrameId ?: template.id.takeIf { it.startsWith("custom_") } ?: "custom_${UUID.randomUUID()}"
            val templateToSave = template.copy(id = frameId)
            val validationErrors = FrameTemplateParser.validateTemplate(templateToSave)
            if (validationErrors.isNotEmpty()) {
                PLog.e(TAG, "Failed to save frame template, invalid fields: $validationErrors")
                return null
            }

            val frameConfigFile = File(customFrameDir, "$frameId.json")
            frameConfigFile.writeText(FrameTemplateParser.serializeTemplate(templateToSave))
            upsertFrameConfig(frameId, templateToSave.nameMap, frameConfigFile.name)

            PLog.d(TAG, "Frame template saved: $frameId overwrite=$overwriteFrameId")
            frameId
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save frame template", e)
            null
        }
    }

    /**
     * 导入预设包中的边框模板，并将包内图片、字体和 Logo 复制到对应私有目录。
     */
    internal fun importPresetFrame(
        template: FrameTemplate,
        assets: Map<String, PresetPackageFrameAsset>,
    ): String? {
        val frameId = "custom_${UUID.randomUUID()}"
        val createdFiles = mutableListOf<File>()
        val installedPaths = mutableMapOf<String, String>()

        fun installAsset(reference: String, kind: String): String {
            require(reference.startsWith(PRESET_PACKAGE_FRAME_RESOURCE_PREFIX)) {
                "Invalid preset frame resource reference"
            }
            val cacheKey = "$kind:$reference"
            installedPaths[cacheKey]?.let { return it }
            val asset = requireNotNull(assets[reference]) {
                "Missing preset frame resource: $reference"
            }
            require(asset.bytes.isNotEmpty()) { "Preset frame resource is empty" }
            val extension = asset.fileName.substringAfterLast('.', missingDelimiterValue = "")
                .lowercase(Locale.US)
                .filter { it.isLetterOrDigit() }
                .take(10)
                .ifBlank {
                    when (kind) {
                        "font" -> "ttf"
                        else -> "png"
                    }
                }
            val destination = when (kind) {
                "image" -> File(customFrameDir, "${frameId}_image.$extension")
                "font" -> File(customFontDir, "${frameId}_font_${UUID.randomUUID()}.$extension")
                "logo" -> File(customLogoDir, "${frameId}_logo_${UUID.randomUUID()}.$extension")
                else -> error("Unsupported preset frame resource kind: $kind")
            }
            destination.outputStream().use { it.write(asset.bytes) }
            createdFiles += destination
            return destination.absolutePath.also { installedPaths[cacheKey] = it }
        }

        fun resolveOptionalAsset(source: String?, kind: String): String? {
            source ?: return null
            return if (source.startsWith(PRESET_PACKAGE_FRAME_RESOURCE_PREFIX)) {
                installAsset(source, kind)
            } else {
                require(!source.startsWith("/") && !source.startsWith("content://")) {
                    "Preset frame contains an external resource reference"
                }
                source
            }
        }

        fun resolveElements(elements: List<FrameElement>): List<FrameElement> {
            return elements.map { element ->
                when (element) {
                    is FrameElement.Text -> element.copy(
                        fontFamily = resolveOptionalAsset(element.fontFamily, "font")
                    )

                    is FrameElement.Logo -> element.copy(
                        overrideSource = resolveOptionalAsset(element.overrideSource, "logo")
                    )

                    else -> element
                }
            }
        }

        return try {
            val resolvedImagePath = template.layout.imagePath?.let { source ->
                require(source.startsWith(PRESET_PACKAGE_FRAME_RESOURCE_PREFIX)) {
                    "Preset frame image is not bundled"
                }
                installAsset(source, "image")
            }
            val resolvedTemplate = template.copy(
                id = frameId,
                layout = template.layout.copy(imagePath = resolvedImagePath),
                elements = resolveElements(template.elements),
                elementsTop = template.elementsTop?.let(::resolveElements),
            )
            saveFrameTemplate(resolvedTemplate)
                ?: error("Failed to save preset frame template")
        } catch (e: Exception) {
            runCatching { deleteCustomFrame(frameId) }
            File(customFrameDir, "$frameId.json").delete()
            createdFiles.asReversed().forEach { it.delete() }
            PLog.e(TAG, "Failed to import frame from preset package", e)
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

            openInputStream(uri)?.use { inputStream ->
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
     * 导入 Logo 文件
     */
    fun importLogo(uri: Uri): String? {
        return try {
            val fileName = getFileName(uri) ?: "logo_${UUID.randomUUID()}.png"
            val logoFile = File(customLogoDir, fileName)

            openInputStream(uri)?.use { inputStream ->
                logoFile.outputStream().use { outputStream ->
                    inputStream.copyTo(outputStream)
                }
            } ?: return null

            logoFile.absolutePath
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to import logo", e)
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
                        isBuiltIn = false,
                        isEditable = true
                    )
                )
            }

            frameList
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to load custom frames", e)
            emptyList()
        }
    }

    fun getCustomDcps(): List<DcpInfo> {
        return try {
            val configFile = File(context.filesDir, CUSTOM_DCP_CONFIG)
            if (!configFile.exists()) return emptyList()

            val jsonArray = JSONArray(configFile.readText())
            buildList {
                for (index in 0 until jsonArray.length()) {
                    val dcpObject = jsonArray.getJSONObject(index)
                    val id = dcpObject.getString("id")
                    val nameObject = dcpObject.getJSONObject("name")
                    val fileName = dcpObject.getString("fileName")
                    val file = File(customDcpDir, fileName)
                    if (!file.exists()) continue

                    val nameMap = mutableMapOf<String, String>()
                    nameObject.keys().forEach { lang ->
                        nameMap[lang] = nameObject.getString(lang)
                    }

                    add(
                        DcpInfo(
                            id = id,
                            nameMap = nameMap,
                            filePath = file.absolutePath,
                            isBuiltIn = false
                        )
                    )
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to load custom DCPs", e)
            emptyList()
        }
    }

    fun getCustomRawNoiseProfiles(): List<RawNoiseProfileInfo> {
        return try {
            val configFile = File(context.filesDir, CUSTOM_RAW_NOISE_PROFILE_CONFIG)
            if (!configFile.exists()) return emptyList()
            val jsonArray = JSONArray(configFile.readText())
            buildList {
                for (index in 0 until jsonArray.length()) {
                    val profileObject = jsonArray.getJSONObject(index)
                    val id = profileObject.getString("id")
                    val fileName = profileObject.getString("fileName")
                    val file = File(customRawNoiseProfileDir, fileName)
                    if (!file.exists()) continue
                    val nameObject = profileObject.getJSONObject("name")
                    val nameMap = buildMap {
                        nameObject.keys().forEach { language ->
                            put(language, nameObject.getString(language))
                        }
                    }
                    add(
                        RawNoiseProfileInfo(
                            id = id,
                            nameMap = nameMap,
                            filePath = file.absolutePath,
                            isBuiltIn = false,
                        ),
                    )
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to load custom RAW noise profiles", e)
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
            val sanitizedCategory = if (isCustomLutId(lutId)) {
                sanitizeCustomLutCategory(newCategory)
            } else {
                newCategory.trim()
            }

            // 1. 同步到分类重写文件 (核心：支持内置)
            val overridesFile = File(context.filesDir, CATEGORY_OVERRIDES_CONFIG)
            val overridesJson = if (overridesFile.exists()) {
                JSONObject(overridesFile.readText())
            } else {
                JSONObject()
            }
            overridesJson.put(lutId, sanitizedCategory)
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

    /**
     * 更新 LUT 收藏状态（支持内置和自定义）。
     */
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
                    val frameFile = File(customFrameDir, it)
                    val ownedAssetPaths = runCatching {
                        val template = FrameTemplateParser.parseFromFile(frameFile.absolutePath)
                            ?: return@runCatching emptyList()
                        buildList {
                            template.layout.imagePath?.let(::add)
                            (template.elements + template.elementsTop.orEmpty()).forEach { element ->
                                when (element) {
                                    is FrameElement.Text -> element.fontFamily?.let(::add)
                                    is FrameElement.Logo -> element.overrideSource?.let(::add)
                                    else -> Unit
                                }
                            }
                        }.filter { path ->
                            val assetFile = File(path)
                            val parent = assetFile.parentFile
                            assetFile.name.startsWith("${frameId}_") && parent != null &&
                                parent in setOf(customFrameDir, customFontDir, customLogoDir)
                        }
                    }.getOrDefault(emptyList())
                    frameFile.delete()
                    ownedAssetPaths.forEach { path ->
                        val imageFile = File(path)
                        if (imageFile.exists()) imageFile.delete()
                    }
                }
            }

            true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to delete custom frame", e)
            false
        }
    }

    /**
     * 删除自定义 DCP
     */
    fun deleteCustomDcp(dcpId: String): Boolean {
        return try {
            val configFile = File(context.filesDir, CUSTOM_DCP_CONFIG)
            if (!configFile.exists()) {
                return false
            }

            val jsonArray = JSONArray(configFile.readText())
            val newArray = JSONArray()

            var fileName: String? = null
            for (i in 0 until jsonArray.length()) {
                val dcpObj = jsonArray.getJSONObject(i)
                if (dcpObj.getString("id") == dcpId) {
                    fileName = dcpObj.getString("fileName")
                } else {
                    newArray.put(dcpObj)
                }
            }

            if (fileName == null) {
                return false
            }

            configFile.writeText(newArray.toString())
            File(customDcpDir, fileName).delete()
            true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to delete custom DCP", e)
            false
        }
    }

    fun deleteCustomRawNoiseProfile(profileId: String): Boolean {
        return try {
            val configFile = File(context.filesDir, CUSTOM_RAW_NOISE_PROFILE_CONFIG)
            if (!configFile.exists()) return false
            val jsonArray = JSONArray(configFile.readText())
            val updated = JSONArray()
            var fileName: String? = null
            for (index in 0 until jsonArray.length()) {
                val item = jsonArray.getJSONObject(index)
                if (item.getString("id") == profileId) {
                    fileName = item.getString("fileName")
                } else {
                    updated.put(item)
                }
            }
            val resolvedFileName = fileName ?: return false
            configFile.writeText(updated.toString())
            File(customRawNoiseProfileDir, resolvedFileName).delete()
            true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to delete custom RAW noise profile", e)
            false
        }
    }

    /**
     * 保存 LUT 到配置文件
     */
    private fun saveLutToConfig(lutId: String, name: String, fileName: String, category: String? = null) {
        saveLutToConfig(
            lutId = lutId,
            nameMap = mapOf("en" to name, "zh" to name),
            fileName = fileName,
            category = category,
            isFavorite = false,
        )
    }

    private fun saveLutToConfig(
        lutId: String,
        nameMap: Map<String, String>,
        fileName: String,
        category: String? = null,
        isFavorite: Boolean = false,
    ) {
        val configFile = File(context.filesDir, CUSTOM_LUT_CONFIG)

        val jsonArray = if (configFile.exists()) {
            JSONArray(configFile.readText())
        } else {
            JSONArray()
        }

        val lutObj = JSONObject().apply {
            put("id", lutId)
            put("name", JSONObject().apply {
                nameMap.toSortedMap().forEach { (language, name) ->
                    put(language, name)
                }
            })
            put("fileName", fileName)
            if (!category.isNullOrEmpty()) {
                put("category", category)
            }
            if (isFavorite) {
                put("isFavorite", true)
            }
        }

        jsonArray.put(lutObj)
        configFile.writeText(jsonArray.toString())
    }

    private fun saveDcpToConfig(dcpId: String, name: String, fileName: String) {
        saveDcpToConfig(
            dcpId = dcpId,
            nameMap = mapOf("en" to name, "zh" to name),
            fileName = fileName,
        )
    }

    private fun saveDcpToConfig(
        dcpId: String,
        nameMap: Map<String, String>,
        fileName: String,
    ) {
        val configFile = File(context.filesDir, CUSTOM_DCP_CONFIG)
        val jsonArray = if (configFile.exists()) JSONArray(configFile.readText()) else JSONArray()
        jsonArray.put(
            JSONObject().apply {
                put("id", dcpId)
                put("name", JSONObject().apply {
                    nameMap.toSortedMap().forEach { (language, name) ->
                        put(language, name)
                    }
                })
                put("fileName", fileName)
            }
        )
        configFile.writeText(jsonArray.toString())
    }

    private fun saveRawNoiseProfileToConfig(profileId: String, name: String, fileName: String) {
        val configFile = File(context.filesDir, CUSTOM_RAW_NOISE_PROFILE_CONFIG)
        val jsonArray = if (configFile.exists()) JSONArray(configFile.readText()) else JSONArray()
        jsonArray.put(
            JSONObject().apply {
                put("id", profileId)
                put("name", JSONObject().apply {
                    put("en", name)
                    put("zh", name)
                })
                put("fileName", fileName)
            },
        )
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

        jsonArray.put(JSONObject().apply {
            put("id", frameId)
            put("name", JSONObject().apply {
                nameMap.forEach { (lang, name) ->
                    put(lang, name)
                }
            })
            put("fileName", fileName)
        })
        configFile.writeText(jsonArray.toString())
    }

    private fun upsertFrameConfig(frameId: String, nameMap: Map<String, String>, fileName: String) {
        val configFile = File(context.filesDir, CUSTOM_FRAME_CONFIG)
        val existing = if (configFile.exists()) JSONArray(configFile.readText()) else JSONArray()
        val newArray = JSONArray()
        var updated = false

        for (i in 0 until existing.length()) {
            val frameObj = existing.getJSONObject(i)
            if (frameObj.getString("id") == frameId) {
                newArray.put(createFrameConfigObject(frameId, nameMap, fileName))
                updated = true
            } else {
                newArray.put(frameObj)
            }
        }

        if (!updated) {
            newArray.put(createFrameConfigObject(frameId, nameMap, fileName))
        }

        configFile.writeText(newArray.toString())
    }

    private fun createFrameConfigObject(frameId: String, nameMap: Map<String, String>, fileName: String): JSONObject {
        val frameObj = JSONObject().apply {
            put("id", frameId)
            put("name", JSONObject().apply {
                nameMap.forEach { (lang, name) ->
                    put(lang, name)
                }
            })
            put("fileName", fileName)
        }
        return frameObj
    }

    /**
     * 从 URI 获取文件名
     */
    private fun getFileName(uri: Uri): String? {
        return resolveDisplayFileName(context, uri)
    }

    private fun openInputStream(uri: Uri): java.io.InputStream? {
        return try {
            if (uri.scheme == "file") {
                val path = uri.path ?: return null
                java.io.FileInputStream(path)
            } else {
                context.contentResolver.openInputStream(uri)
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to open input stream for $uri", e)
            null
        }
    }
}
