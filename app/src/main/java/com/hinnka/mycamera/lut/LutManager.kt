package com.hinnka.mycamera.lut

import android.content.Context
import android.util.LruCache
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.floatPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import com.hinnka.mycamera.data.CustomImportManager
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.flow.map

/**
 * DataStore 扩展属性
 */
private val Context.colorRecipeDataStore: DataStore<Preferences> by preferencesDataStore(name = "color_recipe_preferences")

/**
 * LUT 管理器
 *
 * 负责 LUT 的加载、缓存和管理，以及色彩配方的持久化
 */
class LutManager(private val context: Context) {

    companion object {
        private const val TAG = "LutManager"

        // LUT 缓存大小（最多缓存 5 个 LUT）
        private const val CACHE_SIZE = 5

        // 内置 LUT 目录
        private const val BUILT_IN_LUT_FOLDER = "luts"

        // 色彩配方 DataStore Key（每个 LUT ID 存一条 JSON）
        private fun recipeKey(lutId: String) = stringPreferencesKey("${lutId}_recipe")

        // 旧版逐字段 Key（仅用于迁移读取，新数据不再写入）
        private val legacyFieldNames = listOf(
            "exposure", "contrast", "saturation", "temperature", "tint", "fade", "color",
            "highlights", "shadows", "toneToe", "toneShoulder", "tonePivot",
            "paletteX", "paletteY", "paletteDensity",
            "filmGrain", "vignette", "bleachBypass", "halation", "chromaticAberration",
            "noise", "lowRes",
            "skinHue", "skinChroma", "skinLightness",
            "redHue", "redChroma", "redLightness",
            "orangeHue", "orangeChroma", "orangeLightness",
            "yellowHue", "yellowChroma", "yellowLightness",
            "greenHue", "greenChroma", "greenLightness",
            "cyanHue", "cyanChroma", "cyanLightness",
            "blueHue", "blueChroma", "blueLightness",
            "purpleHue", "purpleChroma", "purpleLightness",
            "magentaHue", "magentaChroma", "magentaLightness",
            "lutIntensity"
        )

        private fun readLegacyParams(preferences: Preferences, lutId: String): ColorRecipeParams {
            fun f(name: String, default: Float = 0f) =
                preferences[floatPreferencesKey("${lutId}_$name")] ?: default
            fun s(name: String) =
                preferences[stringPreferencesKey("${lutId}_$name")] ?: ""
            return ColorRecipeParams(
                exposure = f("exposure"),
                contrast = f("contrast", 1f),
                saturation = f("saturation", 1f),
                temperature = f("temperature"),
                tint = f("tint"),
                fade = f("fade"),
                color = f("color"),
                highlights = f("highlights"),
                shadows = f("shadows"),
                toneToe = f("toneToe"),
                toneShoulder = f("toneShoulder"),
                tonePivot = f("tonePivot"),
                paletteX = f("paletteX", 0.5f),
                paletteY = f("paletteY", 0.5f),
                paletteDensity = f("paletteDensity", 1f),
                filmGrain = f("filmGrain"),
                vignette = f("vignette"),
                bleachBypass = f("bleachBypass"),
                halation = f("halation"),
                chromaticAberration = f("chromaticAberration"),
                noise = f("noise"),
                lowRes = f("lowRes"),
                skinHue = f("skinHue"),
                skinChroma = f("skinChroma"),
                skinLightness = f("skinLightness"),
                redHue = f("redHue"),
                redChroma = f("redChroma"),
                redLightness = f("redLightness"),
                orangeHue = f("orangeHue"),
                orangeChroma = f("orangeChroma"),
                orangeLightness = f("orangeLightness"),
                yellowHue = f("yellowHue"),
                yellowChroma = f("yellowChroma"),
                yellowLightness = f("yellowLightness"),
                greenHue = f("greenHue"),
                greenChroma = f("greenChroma"),
                greenLightness = f("greenLightness"),
                cyanHue = f("cyanHue"),
                cyanChroma = f("cyanChroma"),
                cyanLightness = f("cyanLightness"),
                blueHue = f("blueHue"),
                blueChroma = f("blueChroma"),
                blueLightness = f("blueLightness"),
                purpleHue = f("purpleHue"),
                purpleChroma = f("purpleChroma"),
                purpleLightness = f("purpleLightness"),
                magentaHue = f("magentaHue"),
                magentaChroma = f("magentaChroma"),
                magentaLightness = f("magentaLightness"),
                lutIntensity = f("lutIntensity", 1f),
                remarks = s("remarks"),
            )
        }

        private fun androidx.datastore.preferences.core.MutablePreferences.removeLegacyKeys(lutId: String) {
            legacyFieldNames.forEach { name -> remove(floatPreferencesKey("${lutId}_$name")) }
            remove(stringPreferencesKey("${lutId}_remarks"))
        }
    }

    // LUT 缓存
    private val lutCache = LruCache<String, LutConfig>(CACHE_SIZE)

    // 可用 LUT 列表
    private var availableLuts: List<LutInfo> = emptyList()

    // 自定义导入管理器
    private val customImportManager = CustomImportManager(context)

    /**
     * 获取指定 LUT 的色彩配方参数 Flow
     */
    fun getColorRecipeParams(lutId: String): Flow<ColorRecipeParams> {
        return context.colorRecipeDataStore.data.map { preferences ->
            val json = preferences[recipeKey(lutId)]
            if (json != null) ColorRecipeParams.fromJson(json)
            else readLegacyParams(preferences, lutId)
        }
    }

    /**
     * 初始化，扫描可用的 LUT 文件（包括内置和自定义）
     */
    fun initialize() {
        // 加载内置滤镜并强制把初始分类设为空（用户不想要内置分类标签）
        val builtInLuts = LutParser.listAvailableLuts(context, BUILT_IN_LUT_FOLDER).map {
            it.copy(category = "")
        }
        val customLuts = customImportManager.getCustomLuts()
        val categoryOverrides = customImportManager.getCategoryOverrides()

        // 合并列表
        val allLuts = customLuts + builtInLuts

        // 应用分类重写 (用户手动创建的分类会通过这里恢复)
        availableLuts = allLuts.map { lut ->
            val overriddenCategory = categoryOverrides[lut.id]
            if (overriddenCategory != null) {
                lut.copy(category = overriddenCategory)
            } else {
                lut
            }
        }

        PLog.d(TAG, "Found ${availableLuts.size} LUT files (${customLuts.size} custom, ${builtInLuts.size} built-in)")
    }

    /**
     * 获取可用的 LUT 列表（自定义 LUT 在前）
     */
    fun getAvailableLuts(): List<LutInfo> = availableLuts

    /**
     * 通过 ID 获取 LUT 信息
     */
    fun getLutInfo(id: String): LutInfo? {
        return availableLuts.find { it.id == id }
    }

    /**
     * 加载 LUT 配置
     *
     * @param id LUT ID
     * @return LUT 配置，如果加载失败返回 null
     */
    fun loadLut(id: String): LutConfig? {
        // 先从缓存查找
        lutCache.get(id)?.let {
            //PLog.d(TAG, "LUT loaded from cache: $id")
            return it
        }

        // 查找 LUT 信息
        val lutInfo = getLutInfo(id) ?: run {
            PLog.w(TAG, "LUT not found: $id")
            return null
        }

        // 从文件加载
        return try {
            val lutConfig = if (lutInfo.isBuiltIn) {
                if (lutInfo.fileName.isBlank()) {
                    return null
                }
                // 内置 LUT 从 assets 加载
                LutParser.parseFromAssets(context, lutInfo.fileName)
            } else {
                // 自定义 LUT 从文件系统加载
                java.io.File(lutInfo.fileName).inputStream().use { inputStream ->
                    LutParser.parse(inputStream, lutInfo.getName())
                }
            }

            if (lutConfig.isValid()) {
                // 添加到缓存
                lutCache.put(id, lutConfig)
//                PLog.d(TAG, "LUT loaded: $id, size: ${lutConfig.size}")
                lutConfig
            } else {
                PLog.e(TAG, "Invalid LUT data: $id")
                null
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to load LUT: $id", e)
            null
        }
    }

    /**
     * 清除缓存中的特定 LUT
     */
    fun evictLut(id: String) {
        lutCache.remove(id)
    }

    /**
     * 清除所有缓存
     */
    fun clearCache() {
        lutCache.evictAll()
        PLog.d(TAG, "LUT cache cleared")
    }

    /**
     * 获取缓存状态信息
     */
    fun getCacheInfo(): String {
        return "LUT Cache: ${lutCache.size()}/${CACHE_SIZE}, hits=${lutCache.hitCount()}, misses=${lutCache.missCount()}"
    }

    // ========== 色彩配方持久化方法 ==========

    /**
     * 保存指定 LUT 的色彩配方参数
     *
     * @param lutId LUT ID
     * @param params 色彩配方参数
     */
    suspend fun saveColorRecipeParams(lutId: String, params: ColorRecipeParams) {
        context.colorRecipeDataStore.edit { preferences ->
            preferences[recipeKey(lutId)] = params.toJson()
            preferences.removeLegacyKeys(lutId)
        }
//        PLog.d(TAG, "Color recipe params saved for LUT [$lutId]: $params")
    }

    /**
     * 加载指定 LUT 的色彩配方参数（一次性读取）
     *
     * @param lutId LUT ID
     * @return 色彩配方参数，如果未设置则返回默认值
     */
    suspend fun loadColorRecipeParams(lutId: String): ColorRecipeParams {
        return context.colorRecipeDataStore.data.map { preferences ->
            val json = preferences[recipeKey(lutId)]
            if (json != null) ColorRecipeParams.fromJson(json)
            else readLegacyParams(preferences, lutId)
        }.firstOrNull() ?: ColorRecipeParams.DEFAULT
    }

    /**
     * 重置指定 LUT 的色彩配方参数为默认值
     *
     * @param lutId LUT ID
     */
    suspend fun resetColorRecipeParams(lutId: String) {
        saveColorRecipeParams(lutId, ColorRecipeParams.DEFAULT)
        PLog.d(TAG, "Color recipe params reset to default for LUT [$lutId]")
    }

    /**
     * 删除指定 LUT 的色彩配方参数
     *
     * @param lutId LUT ID
     */
    suspend fun deleteColorRecipeParams(lutId: String) {
        context.colorRecipeDataStore.edit { preferences ->
            preferences.remove(recipeKey(lutId))
            preferences.removeLegacyKeys(lutId)
        }
        PLog.d(TAG, "Color recipe params deleted for LUT [$lutId]")
    }
}
