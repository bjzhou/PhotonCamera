package com.hinnka.mycamera.lut

import android.content.Context
import android.util.LruCache
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.floatPreferencesKey
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

        // 色彩配方 DataStore Key 生成函数（每个 LUT ID 独立）
        private fun exposureKey(lutId: String) = floatPreferencesKey("${lutId}_exposure")
        private fun contrastKey(lutId: String) = floatPreferencesKey("${lutId}_contrast")
        private fun saturationKey(lutId: String) = floatPreferencesKey("${lutId}_saturation")
        private fun temperatureKey(lutId: String) = floatPreferencesKey("${lutId}_temperature")
        private fun tintKey(lutId: String) = floatPreferencesKey("${lutId}_tint")
        private fun fadeKey(lutId: String) = floatPreferencesKey("${lutId}_fade")
        private fun colorKey(lutId: String) = floatPreferencesKey("${lutId}_color")
        private fun highlightsKey(lutId: String) = floatPreferencesKey("${lutId}_highlights")
        private fun shadowsKey(lutId: String) = floatPreferencesKey("${lutId}_shadows")
        private fun filmGrainKey(lutId: String) = floatPreferencesKey("${lutId}_filmGrain")
        private fun vignetteKey(lutId: String) = floatPreferencesKey("${lutId}_vignette")
        private fun bleachBypassKey(lutId: String) = floatPreferencesKey("${lutId}_bleachBypass")
        private fun halationKey(lutId: String) = floatPreferencesKey("${lutId}_halation")
        private fun chromaticAberrationKey(lutId: String) = floatPreferencesKey("${lutId}_chromaticAberration")
        private fun noiseKey(lutId: String) = floatPreferencesKey("${lutId}_noise")
        private fun lowResKey(lutId: String) = floatPreferencesKey("${lutId}_lowRes")
        private fun lutIntensityKey(lutId: String) = floatPreferencesKey("${lutId}_lutIntensity")
        private fun remarksKey(lutId: String) =
            androidx.datastore.preferences.core.stringPreferencesKey("${lutId}_remarks")
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
            ColorRecipeParams(
                exposure = preferences[exposureKey(lutId)] ?: 0f,
                contrast = preferences[contrastKey(lutId)] ?: 1f,
                saturation = preferences[saturationKey(lutId)] ?: 1f,
                temperature = preferences[temperatureKey(lutId)] ?: 0f,
                tint = preferences[tintKey(lutId)] ?: 0f,
                fade = preferences[fadeKey(lutId)] ?: 0f,
                color = preferences[colorKey(lutId)] ?: 0f,
                highlights = preferences[highlightsKey(lutId)] ?: 0f,
                shadows = preferences[shadowsKey(lutId)] ?: 0f,
                filmGrain = preferences[filmGrainKey(lutId)] ?: 0f,
                vignette = preferences[vignetteKey(lutId)] ?: 0f,
                bleachBypass = preferences[bleachBypassKey(lutId)] ?: 0f,
                halation = preferences[halationKey(lutId)] ?: 0f,
                chromaticAberration = preferences[chromaticAberrationKey(lutId)] ?: 0f,
                noise = preferences[noiseKey(lutId)] ?: 0f,
                lowRes = preferences[lowResKey(lutId)] ?: 0f,
                lutIntensity = preferences[lutIntensityKey(lutId)] ?: 1f,
                remarks = preferences[remarksKey(lutId)] ?: ""
            )
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
            preferences[exposureKey(lutId)] = params.exposure
            preferences[contrastKey(lutId)] = params.contrast
            preferences[saturationKey(lutId)] = params.saturation
            preferences[temperatureKey(lutId)] = params.temperature
            preferences[tintKey(lutId)] = params.tint
            preferences[fadeKey(lutId)] = params.fade
            preferences[colorKey(lutId)] = params.color
            preferences[highlightsKey(lutId)] = params.highlights
            preferences[shadowsKey(lutId)] = params.shadows
            preferences[filmGrainKey(lutId)] = params.filmGrain
            preferences[vignetteKey(lutId)] = params.vignette
            preferences[bleachBypassKey(lutId)] = params.bleachBypass
            preferences[halationKey(lutId)] = params.halation
            preferences[chromaticAberrationKey(lutId)] = params.chromaticAberration
            preferences[noiseKey(lutId)] = params.noise
            preferences[lowResKey(lutId)] = params.lowRes
            preferences[lutIntensityKey(lutId)] = params.lutIntensity
            preferences[remarksKey(lutId)] = params.remarks
        }
        PLog.d(TAG, "Color recipe params saved for LUT [$lutId]: $params")
    }

    /**
     * 加载指定 LUT 的色彩配方参数（同步方法）
     *
     * @param lutId LUT ID
     * @return 色彩配方参数，如果未设置则返回默认值
     */
    suspend fun loadColorRecipeParams(lutId: String): ColorRecipeParams {
        return context.colorRecipeDataStore.data.map { preferences ->
            ColorRecipeParams(
                exposure = preferences[exposureKey(lutId)] ?: 0f,
                contrast = preferences[contrastKey(lutId)] ?: 1f,
                saturation = preferences[saturationKey(lutId)] ?: 1f,
                temperature = preferences[temperatureKey(lutId)] ?: 0f,
                tint = preferences[tintKey(lutId)] ?: 0f,
                fade = preferences[fadeKey(lutId)] ?: 0f,
                color = preferences[colorKey(lutId)] ?: 0f,
                highlights = preferences[highlightsKey(lutId)] ?: 0f,
                shadows = preferences[shadowsKey(lutId)] ?: 0f,
                filmGrain = preferences[filmGrainKey(lutId)] ?: 0f,
                vignette = preferences[vignetteKey(lutId)] ?: 0f,
                bleachBypass = preferences[bleachBypassKey(lutId)] ?: 0f,
                halation = preferences[halationKey(lutId)] ?: 0f,
                chromaticAberration = preferences[chromaticAberrationKey(lutId)] ?: 0f,
                noise = preferences[noiseKey(lutId)] ?: 0f,
                lowRes = preferences[lowResKey(lutId)] ?: 0f,
                lutIntensity = preferences[lutIntensityKey(lutId)] ?: 1f,
                remarks = preferences[remarksKey(lutId)] ?: ""
            )
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
            preferences.remove(exposureKey(lutId))
            preferences.remove(contrastKey(lutId))
            preferences.remove(saturationKey(lutId))
            preferences.remove(temperatureKey(lutId))
            preferences.remove(tintKey(lutId))
            preferences.remove(fadeKey(lutId))
            preferences.remove(colorKey(lutId))
            preferences.remove(highlightsKey(lutId))
            preferences.remove(shadowsKey(lutId))
            preferences.remove(filmGrainKey(lutId))
            preferences.remove(vignetteKey(lutId))
            preferences.remove(bleachBypassKey(lutId))
            preferences.remove(halationKey(lutId))
            preferences.remove(chromaticAberrationKey(lutId))
            preferences.remove(noiseKey(lutId))
            preferences.remove(lowResKey(lutId))
            preferences.remove(lutIntensityKey(lutId))
            preferences.remove(remarksKey(lutId))
        }
        PLog.d(TAG, "Color recipe params deleted for LUT [$lutId]")
    }
}
