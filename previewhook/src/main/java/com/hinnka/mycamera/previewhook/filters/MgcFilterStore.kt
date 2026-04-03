package com.hinnka.mycamera.previewhook.filters

import android.content.Context
import android.net.Uri
import android.os.Environment
import android.provider.OpenableColumns
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutConverter
import com.hinnka.mycamera.lut.LutCurve
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.LutParser
import com.hinnka.mycamera.lut.XmpLutParser
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.previewhook.api.MgcVfeLutRuntime
import com.hinnka.mycamera.previewhook.generated.BuiltInLutCatalog
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.utils.PLog
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.Base64
import java.util.Locale
import java.util.UUID

class MgcFilterStore(private val context: Context) {
    companion object {
        private const val TAG = "MgcFilterStore"
        private const val PREFS_NAME = "mgc_filter_management"
        private const val KEY_SELECTED_FILTER_ID = "selected_filter_id"
        private const val KEY_FILTER_ORDER = "filter_order"
        private const val KEY_CATEGORY_ORDER = "category_order"
        private const val KEY_RECIPE_PREFIX = "recipe_"
        private const val CUSTOM_LUT_DIR = "custom_luts"
        private const val CUSTOM_LUT_CONFIG = "custom_luts.json"
        private const val CATEGORY_OVERRIDES_CONFIG = "category_overrides.json"
        private const val PUBLIC_ROOT_DIR = "MGC"
        private const val PUBLIC_LUT_DIR = "luts"
        private const val PUBLIC_IMPORT_DIR = "import"

        @JvmStatic
        fun restoreSavedSelection(context: Context): Boolean {
            return MgcFilterStore(context).restoreSavedSelection()
        }
    }

    enum class Source {
        BUILT_IN,
        CUSTOM,
        PUBLIC,
    }

    data class FilterItem(
        val info: LutInfo,
        val source: Source,
        val file: File? = null,
        val builtInEntry: BuiltInLutCatalog.Entry? = null,
    ) {
        val canRename: Boolean
            get() = source == Source.CUSTOM

        val canDelete: Boolean
            get() = source == Source.CUSTOM
    }

    data class ScreenState(
        val items: List<FilterItem>,
        val selectedFilterId: String?,
        val statusMessage: String? = null,
    )

    data class ImportResult(
        val importedCount: Int,
        val skippedCount: Int,
    )

    private val prefs by lazy(LazyThreadSafetyMode.NONE) {
        context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
    }

    private val customLutDir: File
        get() = File(context.filesDir, CUSTOM_LUT_DIR).apply { mkdirs() }

    private val customConfigFile: File
        get() = File(context.filesDir, CUSTOM_LUT_CONFIG)

    private val categoryOverridesFile: File
        get() = File(context.filesDir, CATEGORY_OVERRIDES_CONFIG)

    private val publicRootDir: File
        get() = File(Environment.getExternalStorageDirectory(), PUBLIC_ROOT_DIR)

    private val publicLutDir: File
        get() = File(publicRootDir, PUBLIC_LUT_DIR)

    private val publicImportDir: File
        get() = File(publicRootDir, PUBLIC_IMPORT_DIR)

    fun loadState(statusMessage: String? = null): ScreenState {
        val items = loadItems()
        val selectedId = prefs.getString(KEY_SELECTED_FILTER_ID, null)
            ?.takeIf { selected -> items.any { it.info.id == selected } }

        return ScreenState(
            items = items,
            selectedFilterId = selectedId,
            statusMessage = statusMessage,
        )
    }

    fun loadItems(): List<FilterItem> {
        val builtIns = loadBuiltInItems()
        val customs = loadCustomItems()
        val publics = loadPublicItems()
        val all = (builtIns + customs + publics).map { item ->
            val override = readCategoryOverrides()[item.info.id]
            if (override == null) {
                item
            } else {
                item.copy(info = item.info.copy(category = override))
            }
        }
        return sortItems(all)
    }

    fun getCategoryOrder(): List<String> = readStringList(KEY_CATEGORY_ORDER)

    fun saveCategoryOrder(order: List<String>) {
        writeStringList(KEY_CATEGORY_ORDER, order)
    }

    fun saveFilterOrder(order: List<String>) {
        writeStringList(KEY_FILTER_ORDER, order)
    }

    fun getSelectedFilterId(): String? = prefs.getString(KEY_SELECTED_FILTER_ID, null)

    fun selectFilter(filterId: String?): Boolean {
        if (filterId == null || filterId == "none") {
            prefs.edit().putString(KEY_SELECTED_FILTER_ID, "none").apply()
            MgcVfeLutRuntime.clearActiveLutConfig()
            MgcVfeLutRuntime.clearActiveRecipeParams()
            return true
        }

        val item = loadItems().firstOrNull { it.info.id == filterId } ?: return false
        val lutConfig = loadLutConfig(item) ?: return false

        prefs.edit().putString(KEY_SELECTED_FILTER_ID, item.info.id).apply()
        MgcVfeLutRuntime.setActiveLutConfig(lutConfig)
        MgcVfeLutRuntime.setActiveRecipeParamsDirect(loadColorRecipeParams(item.info.id))
        PLog.i(TAG, "selected filter=${item.info.id}")
        return true
    }

    fun restoreSavedSelection(): Boolean {
        return selectFilter(prefs.getString(KEY_SELECTED_FILTER_ID, "none"))
    }

    fun importLut(
        uri: Uri,
        displayName: String? = null,
        category: String? = null,
        colorSpace: ColorSpace = ColorSpace.SRGB,
        curve: LutCurve = LutCurve.SRGB,
    ): String? {
        val sourceName = displayName ?: getFileName(uri) ?: "lut_${System.currentTimeMillis()}"
        val lutId = "custom_${UUID.randomUUID()}"
        val plutFileName = "$lutId.plut"
        val plutFile = File(customLutDir, plutFileName)

        return runCatching {
            context.contentResolver.openInputStream(uri)?.use { inputStream ->
                FileOutputStream(plutFile).use { outputStream ->
                    val success = when {
                        sourceName.endsWith(".plut", ignoreCase = true) -> {
                            inputStream.copyTo(outputStream)
                            true
                        }
                        sourceName.endsWith(".xmp", ignoreCase = true) -> {
                            XmpLutParser.parse(inputStream, outputStream, colorSpace = colorSpace, curve = curve)
                        }
                        sourceName.endsWith(".png", ignoreCase = true) -> {
                            LutConverter.convertPngToplut(inputStream, outputStream, colorSpace = colorSpace, curve = curve)
                        }
                        else -> {
                            LutConverter.convertCubeToplut(inputStream, outputStream, colorSpace = colorSpace, curve = curve)
                        }
                    }
                    check(success) { "Failed to convert LUT: $sourceName" }
                }
            } ?: return null

            saveLutToConfig(lutId, sourceName.substringBeforeLast('.'), plutFileName, category.orEmpty())
            if (!category.isNullOrEmpty()) {
                updateLutCategory(lutId, category)
            }
            lutId
        }.onFailure {
            plutFile.delete()
            PLog.e(TAG, "Failed to import LUT from uri=$uri", it)
        }.getOrNull()
    }

    fun importFromInbox(): ImportResult {
        val inbox = publicImportDir
        if (!inbox.isDirectory) {
            return ImportResult(importedCount = 0, skippedCount = 0)
        }

        var imported = 0
        var skipped = 0
        inbox.listFiles()
            ?.filter { it.isFile }
            ?.sortedBy { it.name.lowercase(Locale.US) }
            ?.forEach { source ->
                val importedId = importLutFromFile(source)
                if (importedId == null) skipped += 1 else imported += 1
            }
        return ImportResult(importedCount = imported, skippedCount = skipped)
    }

    fun copyLut(lut: LutInfo, copyName: String): String? {
        val source = loadItems().firstOrNull { it.info.id == lut.id } ?: return null
        val lutId = "custom_${UUID.randomUUID()}"
        val plutFileName = "$lutId.plut"
        val targetFile = File(customLutDir, plutFileName)

        return runCatching {
            when (source.source) {
                Source.BUILT_IN -> {
                    val entry = source.builtInEntry ?: error("Missing built-in entry for ${lut.id}")
                    val bytes = decodeBuiltInPayload(entry)
                    writePlutFile(targetFile, entry, bytes)
                }
                Source.CUSTOM, Source.PUBLIC -> {
                    val input = source.file ?: error("Missing source file for ${lut.id}")
                    input.inputStream().use { ins ->
                        targetFile.outputStream().use { outs -> ins.copyTo(outs) }
                    }
                }
            }
            saveLutToConfig(lutId, copyName, plutFileName, lut.category)
            if (lut.category.isNotEmpty()) {
                updateLutCategory(lutId, lut.category)
            }
            val sourceRecipe = loadColorRecipeParams(lut.id)
            saveColorRecipeParams(lutId, sourceRecipe)
            insertCopiedFilterAfter(lut.id, lutId)
            lutId
        }.onFailure {
            targetFile.delete()
            PLog.e(TAG, "Failed to copy LUT ${lut.id}", it)
        }.getOrNull()
    }

    fun renameCustomFilter(filterId: String, newName: String): Boolean {
        val trimmedName = newName.trim()
        if (trimmedName.isEmpty()) return false

        val config = readCustomConfig()
        var updated = false
        for (index in 0 until config.length()) {
            val item = config.optJSONObject(index) ?: continue
            if (item.optString("id") == filterId) {
                item.put("name", JSONObject().apply {
                    put("en", trimmedName)
                    put("zh", trimmedName)
                })
                updated = true
                break
            }
        }
        if (!updated) return false

        writeCustomConfig(config)
        return true
    }

    fun updateLutCategory(lutId: String, newCategory: String): Boolean {
        return runCatching {
            val overrides = JSONObject()
            readCategoryOverrides().forEach { (id, category) ->
                overrides.put(id, category)
            }
            overrides.put(lutId, newCategory)
            categoryOverridesFile.writeText(overrides.toString())

            val config = readCustomConfig()
            for (index in 0 until config.length()) {
                val item = config.optJSONObject(index) ?: continue
                if (item.optString("id") == lutId) {
                    item.put("category", newCategory)
                }
            }
            writeCustomConfig(config)
            true
        }.getOrElse {
            PLog.e(TAG, "Failed to update category for $lutId", it)
            false
        }
    }

    fun deleteCustomFilter(filterId: String): Boolean {
        val customItems = loadCustomItems()
        val target = customItems.firstOrNull { it.info.id == filterId } ?: return false
        val config = readCustomConfig()
        val updated = JSONArray()
        for (index in 0 until config.length()) {
            val item = config.optJSONObject(index) ?: continue
            if (item.optString("id") != filterId) {
                updated.put(item)
            }
        }
        writeCustomConfig(updated)
        target.file?.delete()
        removeCategoryOverride(filterId)
        prefs.edit().remove("$KEY_RECIPE_PREFIX$filterId").apply()
        saveFilterOrder(readStringList(KEY_FILTER_ORDER).filter { it != filterId })

        if (prefs.getString(KEY_SELECTED_FILTER_ID, null) == filterId) {
            selectFilter("none")
        }
        return true
    }

    fun loadColorRecipeParams(lutId: String): ColorRecipeParams {
        val raw = prefs.getString("$KEY_RECIPE_PREFIX$lutId", null) ?: return ColorRecipeParams.DEFAULT
        return runCatching {
            val json = JSONObject(raw)
            ColorRecipeParams(
                exposure = json.optDouble("exposure", 0.0).toFloat(),
                contrast = json.optDouble("contrast", 1.0).toFloat(),
                saturation = json.optDouble("saturation", 1.0).toFloat(),
                temperature = json.optDouble("temperature", 0.0).toFloat(),
                tint = json.optDouble("tint", 0.0).toFloat(),
                fade = json.optDouble("fade", 0.0).toFloat(),
                color = json.optDouble("color", 0.0).toFloat(),
                highlights = json.optDouble("highlights", 0.0).toFloat(),
                shadows = json.optDouble("shadows", 0.0).toFloat(),
                toneToe = json.optDouble("toneToe", 0.0).toFloat(),
                toneShoulder = json.optDouble("toneShoulder", 0.0).toFloat(),
                tonePivot = json.optDouble("tonePivot", 0.0).toFloat(),
                paletteX = json.optDouble("paletteX", 0.5).toFloat(),
                paletteY = json.optDouble("paletteY", 0.5).toFloat(),
                paletteDensity = json.optDouble("paletteDensity", 1.0).toFloat(),
                filmGrain = json.optDouble("filmGrain", 0.0).toFloat(),
                vignette = json.optDouble("vignette", 0.0).toFloat(),
                bleachBypass = json.optDouble("bleachBypass", 0.0).toFloat(),
                halation = json.optDouble("halation", 0.0).toFloat(),
                chromaticAberration = json.optDouble("chromaticAberration", 0.0).toFloat(),
                noise = json.optDouble("noise", 0.0).toFloat(),
                lowRes = json.optDouble("lowRes", 0.0).toFloat(),
                skinHue = json.optDouble("skinHue", 0.0).toFloat(),
                skinChroma = json.optDouble("skinChroma", 0.0).toFloat(),
                skinLightness = json.optDouble("skinLightness", 0.0).toFloat(),
                redHue = json.optDouble("redHue", 0.0).toFloat(),
                redChroma = json.optDouble("redChroma", 0.0).toFloat(),
                redLightness = json.optDouble("redLightness", 0.0).toFloat(),
                orangeHue = json.optDouble("orangeHue", 0.0).toFloat(),
                orangeChroma = json.optDouble("orangeChroma", 0.0).toFloat(),
                orangeLightness = json.optDouble("orangeLightness", 0.0).toFloat(),
                yellowHue = json.optDouble("yellowHue", 0.0).toFloat(),
                yellowChroma = json.optDouble("yellowChroma", 0.0).toFloat(),
                yellowLightness = json.optDouble("yellowLightness", 0.0).toFloat(),
                greenHue = json.optDouble("greenHue", 0.0).toFloat(),
                greenChroma = json.optDouble("greenChroma", 0.0).toFloat(),
                greenLightness = json.optDouble("greenLightness", 0.0).toFloat(),
                cyanHue = json.optDouble("cyanHue", 0.0).toFloat(),
                cyanChroma = json.optDouble("cyanChroma", 0.0).toFloat(),
                cyanLightness = json.optDouble("cyanLightness", 0.0).toFloat(),
                blueHue = json.optDouble("blueHue", 0.0).toFloat(),
                blueChroma = json.optDouble("blueChroma", 0.0).toFloat(),
                blueLightness = json.optDouble("blueLightness", 0.0).toFloat(),
                purpleHue = json.optDouble("purpleHue", 0.0).toFloat(),
                purpleChroma = json.optDouble("purpleChroma", 0.0).toFloat(),
                purpleLightness = json.optDouble("purpleLightness", 0.0).toFloat(),
                magentaHue = json.optDouble("magentaHue", 0.0).toFloat(),
                magentaChroma = json.optDouble("magentaChroma", 0.0).toFloat(),
                magentaLightness = json.optDouble("magentaLightness", 0.0).toFloat(),
                lutIntensity = json.optDouble("lutIntensity", 1.0).toFloat(),
                remarks = json.optString("remarks", ""),
            )
        }.getOrElse {
            PLog.e(TAG, "Failed to parse recipe for $lutId", it)
            ColorRecipeParams.DEFAULT
        }
    }

    fun saveColorRecipeParams(lutId: String, params: ColorRecipeParams) {
        val json = JSONObject().apply {
            put("exposure", params.exposure)
            put("contrast", params.contrast)
            put("saturation", params.saturation)
            put("temperature", params.temperature)
            put("tint", params.tint)
            put("fade", params.fade)
            put("color", params.color)
            put("highlights", params.highlights)
            put("shadows", params.shadows)
            put("toneToe", params.toneToe)
            put("toneShoulder", params.toneShoulder)
            put("tonePivot", params.tonePivot)
            put("paletteX", params.paletteX)
            put("paletteY", params.paletteY)
            put("paletteDensity", params.paletteDensity)
            put("filmGrain", params.filmGrain)
            put("vignette", params.vignette)
            put("bleachBypass", params.bleachBypass)
            put("halation", params.halation)
            put("chromaticAberration", params.chromaticAberration)
            put("noise", params.noise)
            put("lowRes", params.lowRes)
            put("skinHue", params.skinHue)
            put("skinChroma", params.skinChroma)
            put("skinLightness", params.skinLightness)
            put("redHue", params.redHue)
            put("redChroma", params.redChroma)
            put("redLightness", params.redLightness)
            put("orangeHue", params.orangeHue)
            put("orangeChroma", params.orangeChroma)
            put("orangeLightness", params.orangeLightness)
            put("yellowHue", params.yellowHue)
            put("yellowChroma", params.yellowChroma)
            put("yellowLightness", params.yellowLightness)
            put("greenHue", params.greenHue)
            put("greenChroma", params.greenChroma)
            put("greenLightness", params.greenLightness)
            put("cyanHue", params.cyanHue)
            put("cyanChroma", params.cyanChroma)
            put("cyanLightness", params.cyanLightness)
            put("blueHue", params.blueHue)
            put("blueChroma", params.blueChroma)
            put("blueLightness", params.blueLightness)
            put("purpleHue", params.purpleHue)
            put("purpleChroma", params.purpleChroma)
            put("purpleLightness", params.purpleLightness)
            put("magentaHue", params.magentaHue)
            put("magentaChroma", params.magentaChroma)
            put("magentaLightness", params.magentaLightness)
            put("lutIntensity", params.lutIntensity)
            put("remarks", params.remarks)
        }
        prefs.edit().putString("$KEY_RECIPE_PREFIX$lutId", json.toString()).apply()

        if (getSelectedFilterId() == lutId) {
            MgcVfeLutRuntime.setActiveRecipeParamsDirect(params)
        }
    }

    fun getLutCubeString(lutId: String): String? {
        val item = loadItems().firstOrNull { it.info.id == lutId } ?: return null
        val lutConfig = loadLutConfig(item) ?: return null
        val floatBuffer = lutConfig.toFloatBuffer()
        val floatArray = FloatArray(floatBuffer.capacity())
        floatBuffer.position(0)
        floatBuffer.get(floatArray)
        return exportToCubeString(floatArray, lutConfig.size, item.info.getName())
    }

    private fun loadBuiltInItems(): List<FilterItem> {
        return BuiltInLutCatalog.entries.map { entry ->
            FilterItem(
                info = LutInfo(
                    id = entry.id,
                    nameMap = mapOf("en" to entry.nameEn, "zh" to entry.nameZh),
                    fileName = entry.path,
                    isBuiltIn = true,
                    isDefault = entry.isDefault,
                    isVip = entry.isVip,
                    category = entry.category,
                ),
                source = Source.BUILT_IN,
                builtInEntry = entry,
            )
        }
    }

    private fun loadCustomItems(): List<FilterItem> {
        val config = readCustomConfig()
        val items = mutableListOf<FilterItem>()
        for (index in 0 until config.length()) {
            val item = config.optJSONObject(index) ?: continue
            val id = item.optString("id")
            val fileName = item.optString("fileName")
            if (id.isBlank() || fileName.isBlank()) continue

            val file = File(customLutDir, fileName)
            if (!file.isFile) continue

            val nameObject = item.optJSONObject("name")
            val nameMap = if (nameObject != null) {
                buildMap {
                    nameObject.keys().forEach { lang ->
                        put(lang, nameObject.optString(lang))
                    }
                }
            } else {
                mapOf(
                    "en" to item.optString("displayName", id),
                    "zh" to item.optString("displayName", id),
                )
            }
            items += FilterItem(
                info = LutInfo(
                    id = id,
                    nameMap = nameMap,
                    fileName = file.absolutePath,
                    isBuiltIn = false,
                    category = item.optString("category", ""),
                ),
                source = Source.CUSTOM,
                file = file,
            )
        }
        return items
    }

    private fun loadPublicItems(): List<FilterItem> {
        val directory = publicLutDir
        if (!directory.isDirectory) return emptyList()
        return directory.listFiles()
            ?.asSequence()
            ?.filter { it.isFile && isSupportedImportFile(it.name) }
            ?.sortedWith(compareBy<File> { it.nameWithoutExtension.lowercase(Locale.US) }.thenBy { it.name.lowercase(Locale.US) })
            ?.map { file ->
                FilterItem(
                    info = LutInfo(
                        id = "public:${file.absolutePath}",
                        nameMap = mapOf("en" to file.nameWithoutExtension, "zh" to file.nameWithoutExtension),
                        fileName = file.absolutePath,
                        isBuiltIn = false,
                        category = "",
                    ),
                    source = Source.PUBLIC,
                    file = file,
                )
            }
            ?.toList()
            ?: emptyList()
    }

    private fun sortItems(items: List<FilterItem>): List<FilterItem> {
        val order = readStringList(KEY_FILTER_ORDER)
        return items.sortedWith(
            compareBy<FilterItem> { item ->
                val index = order.indexOf(item.info.id)
                if (index == -1) Int.MAX_VALUE else index
            }.thenBy { item ->
                when (item.source) {
                    Source.BUILT_IN -> 0
                    Source.CUSTOM -> 1
                    Source.PUBLIC -> 2
                }
            }.thenBy { item ->
                item.info.getName().lowercase(Locale.getDefault())
            }
        )
    }

    private fun loadLutConfig(item: FilterItem): LutConfig? {
        return try {
            when (item.source) {
                Source.BUILT_IN -> {
                    val entry = item.builtInEntry ?: return null
                    val payload = decodeBuiltInPayload(entry)
                    LutConfig(
                        size = entry.size,
                        byteBuffer = ByteBuffer.allocateDirect(payload.size)
                            .order(ByteOrder.nativeOrder())
                            .put(payload)
                            .apply { position(0) },
                        title = item.info.getName(),
                        configDataType = entry.configDataType,
                        curve = LutCurve.entries.getOrElse(entry.curveOrdinal) { LutCurve.SRGB },
                        colorSpace = ColorSpace.entries.getOrElse(entry.colorSpaceOrdinal) { ColorSpace.SRGB },
                    )
                }
                Source.CUSTOM, Source.PUBLIC -> {
                    val file = item.file ?: return null
                    file.inputStream().use { input -> LutParser.parse(input, item.info.getName()) }
                }
            }
        } catch (t: Throwable) {
            PLog.e(TAG, "failed to load LUT config id=${item.info.id}", t)
            null
        }
    }

    private fun decodeBuiltInPayload(entry: BuiltInLutCatalog.Entry): ByteArray {
        return if (entry.payloadBase64.isEmpty()) {
            ByteArray(0)
        } else {
            Base64.getDecoder().decode(entry.payloadBase64)
        }
    }

    private fun writePlutFile(file: File, entry: BuiltInLutCatalog.Entry, payload: ByteArray) {
        val buffer = ByteBuffer.allocate(24 + payload.size).order(ByteOrder.LITTLE_ENDIAN)
        buffer.putInt(0x54554C50)
        buffer.putInt(3)
        buffer.putInt(entry.size)
        buffer.putInt(entry.configDataType)
        buffer.putInt(entry.curveOrdinal)
        buffer.putInt(entry.colorSpaceOrdinal)
        buffer.put(payload)
        file.writeBytes(buffer.array())
    }

    private fun saveLutToConfig(lutId: String, name: String, fileName: String, category: String) {
        val config = readCustomConfig()
        config.put(
            JSONObject().apply {
                put("id", lutId)
                put("name", JSONObject().apply {
                    put("en", name)
                    put("zh", name)
                })
                put("fileName", fileName)
                put("category", category)
            }
        )
        writeCustomConfig(config)
    }

    private fun importLutFromFile(file: File): String? {
        if (!isSupportedImportFile(file.name)) return null
        val lutId = "custom_${UUID.randomUUID()}"
        val plutFileName = "$lutId.plut"
        val targetFile = File(customLutDir, plutFileName)
        return runCatching {
            file.inputStream().use { input ->
                FileOutputStream(targetFile).use { output ->
                    val success = when {
                        file.extension.equals("plut", ignoreCase = true) -> {
                            input.copyTo(output)
                            true
                        }
                        file.extension.equals("xmp", ignoreCase = true) -> {
                            XmpLutParser.parse(input, output)
                        }
                        file.extension.equals("png", ignoreCase = true) -> {
                            LutConverter.convertPngToplut(input, output)
                        }
                        else -> {
                            LutConverter.convertCubeToplut(input, output)
                        }
                    }
                    check(success) { "Failed to import ${file.absolutePath}" }
                }
            }
            saveLutToConfig(lutId, file.nameWithoutExtension, plutFileName, "")
            lutId
        }.onFailure {
            targetFile.delete()
        }.getOrNull()
    }

    private fun insertCopiedFilterAfter(sourceId: String, newId: String) {
        val currentOrder = readStringList(KEY_FILTER_ORDER).toMutableList()
        if (currentOrder.isEmpty()) {
            val allIds = loadItems().map { it.info.id }.toMutableList()
            val index = allIds.indexOf(sourceId)
            if (index == -1) allIds.add(newId) else allIds.add(index + 1, newId)
            saveFilterOrder(allIds)
            return
        }
        val index = currentOrder.indexOf(sourceId)
        if (index == -1) currentOrder.add(newId) else currentOrder.add(index + 1, newId)
        saveFilterOrder(currentOrder)
    }

    private fun readStringList(key: String): List<String> {
        val raw = prefs.getString(key, null) ?: return emptyList()
        return runCatching {
            val json = JSONArray(raw)
            buildList {
                for (index in 0 until json.length()) {
                    add(json.getString(index))
                }
            }
        }.getOrDefault(emptyList())
    }

    private fun writeStringList(key: String, values: List<String>) {
        prefs.edit().putString(key, JSONArray(values).toString()).apply()
    }

    private fun readCategoryOverrides(): Map<String, String> {
        return runCatching {
            if (!categoryOverridesFile.exists()) return emptyMap()
            val json = JSONObject(categoryOverridesFile.readText())
            buildMap {
                json.keys().forEach { key ->
                    put(key, json.optString(key, ""))
                }
            }
        }.getOrElse {
            PLog.e(TAG, "Failed to read category overrides", it)
            emptyMap()
        }
    }

    private fun removeCategoryOverride(lutId: String) {
        val current = readCategoryOverrides().toMutableMap()
        if (current.remove(lutId) == null) return
        val json = JSONObject()
        current.forEach { (id, category) -> json.put(id, category) }
        categoryOverridesFile.writeText(json.toString())
    }

    private fun readCustomConfig(): JSONArray {
        return runCatching {
            if (!customConfigFile.exists()) return JSONArray()
            JSONArray(customConfigFile.readText())
        }.getOrElse {
            PLog.e(TAG, "Failed to read custom LUT config", it)
            JSONArray()
        }
    }

    private fun writeCustomConfig(array: JSONArray) {
        customConfigFile.writeText(array.toString())
    }

    private fun getFileName(uri: Uri): String? {
        val cursor = context.contentResolver.query(uri, arrayOf(OpenableColumns.DISPLAY_NAME), null, null, null)
        cursor?.use {
            if (it.moveToFirst()) {
                return it.getString(0)
            }
        }
        return uri.lastPathSegment?.substringAfterLast('/')
    }

    private fun isSupportedImportFile(name: String): Boolean {
        return name.endsWith(".cube", ignoreCase = true) ||
            name.endsWith(".png", ignoreCase = true) ||
            name.endsWith(".xmp", ignoreCase = true) ||
            name.endsWith(".plut", ignoreCase = true)
    }

    private fun exportToCubeString(lutData: FloatArray, size: Int, title: String): String {
        val sb = StringBuilder()
        sb.append("TITLE \"").append(title).append("\"\n")
        sb.append("LUT_3D_SIZE ").append(size).append('\n')
        sb.append("DOMAIN_MIN 0.0 0.0 0.0\n")
        sb.append("DOMAIN_MAX 1.0 1.0 1.0\n")
        var index = 0
        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 0 until size) {
                    val rVal = lutData[index++]
                    val gVal = lutData[index++]
                    val bVal = lutData[index++]
                    sb.append(
                        String.format(
                            Locale.US,
                            "%.6f %.6f %.6f\n",
                            rVal,
                            gVal,
                            bVal,
                        )
                    )
                }
            }
        }
        return sb.toString()
    }
}
