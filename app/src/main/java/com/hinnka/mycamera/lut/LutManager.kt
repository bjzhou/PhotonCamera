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
        private fun skinHueKey(lutId: String) = floatPreferencesKey("${lutId}_skinHue")
        private fun skinChromaKey(lutId: String) = floatPreferencesKey("${lutId}_skinChroma")
        private fun skinLightnessKey(lutId: String) = floatPreferencesKey("${lutId}_skinLightness")
        private fun redHueKey(lutId: String) = floatPreferencesKey("${lutId}_redHue")
        private fun redChromaKey(lutId: String) = floatPreferencesKey("${lutId}_redChroma")
        private fun redLightnessKey(lutId: String) = floatPreferencesKey("${lutId}_redLightness")
        private fun orangeHueKey(lutId: String) = floatPreferencesKey("${lutId}_orangeHue")
        private fun orangeChromaKey(lutId: String) = floatPreferencesKey("${lutId}_orangeChroma")
        private fun orangeLightnessKey(lutId: String) = floatPreferencesKey("${lutId}_orangeLightness")
        private fun yellowHueKey(lutId: String) = floatPreferencesKey("${lutId}_yellowHue")
        private fun yellowChromaKey(lutId: String) = floatPreferencesKey("${lutId}_yellowChroma")
        private fun yellowLightnessKey(lutId: String) = floatPreferencesKey("${lutId}_yellowLightness")
        private fun greenHueKey(lutId: String) = floatPreferencesKey("${lutId}_greenHue")
        private fun greenChromaKey(lutId: String) = floatPreferencesKey("${lutId}_greenChroma")
        private fun greenLightnessKey(lutId: String) = floatPreferencesKey("${lutId}_greenLightness")
        private fun cyanHueKey(lutId: String) = floatPreferencesKey("${lutId}_cyanHue")
        private fun cyanChromaKey(lutId: String) = floatPreferencesKey("${lutId}_cyanChroma")
        private fun cyanLightnessKey(lutId: String) = floatPreferencesKey("${lutId}_cyanLightness")
        private fun blueHueKey(lutId: String) = floatPreferencesKey("${lutId}_blueHue")
        private fun blueChromaKey(lutId: String) = floatPreferencesKey("${lutId}_blueChroma")
        private fun blueLightnessKey(lutId: String) = floatPreferencesKey("${lutId}_blueLightness")
        private fun purpleHueKey(lutId: String) = floatPreferencesKey("${lutId}_purpleHue")
        private fun purpleChromaKey(lutId: String) = floatPreferencesKey("${lutId}_purpleChroma")
        private fun purpleLightnessKey(lutId: String) = floatPreferencesKey("${lutId}_purpleLightness")
        private fun magentaHueKey(lutId: String) = floatPreferencesKey("${lutId}_magentaHue")
        private fun magentaChromaKey(lutId: String) = floatPreferencesKey("${lutId}_magentaChroma")
        private fun magentaLightnessKey(lutId: String) = floatPreferencesKey("${lutId}_magentaLightness")
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
                skinHue = preferences[skinHueKey(lutId)] ?: 0f,
                skinChroma = preferences[skinChromaKey(lutId)] ?: 0f,
                skinLightness = preferences[skinLightnessKey(lutId)] ?: 0f,
                redHue = preferences[redHueKey(lutId)] ?: 0f,
                redChroma = preferences[redChromaKey(lutId)] ?: 0f,
                redLightness = preferences[redLightnessKey(lutId)] ?: 0f,
                orangeHue = preferences[orangeHueKey(lutId)] ?: 0f,
                orangeChroma = preferences[orangeChromaKey(lutId)] ?: 0f,
                orangeLightness = preferences[orangeLightnessKey(lutId)] ?: 0f,
                yellowHue = preferences[yellowHueKey(lutId)] ?: 0f,
                yellowChroma = preferences[yellowChromaKey(lutId)] ?: 0f,
                yellowLightness = preferences[yellowLightnessKey(lutId)] ?: 0f,
                greenHue = preferences[greenHueKey(lutId)] ?: 0f,
                greenChroma = preferences[greenChromaKey(lutId)] ?: 0f,
                greenLightness = preferences[greenLightnessKey(lutId)] ?: 0f,
                cyanHue = preferences[cyanHueKey(lutId)] ?: 0f,
                cyanChroma = preferences[cyanChromaKey(lutId)] ?: 0f,
                cyanLightness = preferences[cyanLightnessKey(lutId)] ?: 0f,
                blueHue = preferences[blueHueKey(lutId)] ?: 0f,
                blueChroma = preferences[blueChromaKey(lutId)] ?: 0f,
                blueLightness = preferences[blueLightnessKey(lutId)] ?: 0f,
                purpleHue = preferences[purpleHueKey(lutId)] ?: 0f,
                purpleChroma = preferences[purpleChromaKey(lutId)] ?: 0f,
                purpleLightness = preferences[purpleLightnessKey(lutId)] ?: 0f,
                magentaHue = preferences[magentaHueKey(lutId)] ?: 0f,
                magentaChroma = preferences[magentaChromaKey(lutId)] ?: 0f,
                magentaLightness = preferences[magentaLightnessKey(lutId)] ?: 0f,
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
            preferences[skinHueKey(lutId)] = params.skinHue
            preferences[skinChromaKey(lutId)] = params.skinChroma
            preferences[skinLightnessKey(lutId)] = params.skinLightness
            preferences[redHueKey(lutId)] = params.redHue
            preferences[redChromaKey(lutId)] = params.redChroma
            preferences[redLightnessKey(lutId)] = params.redLightness
            preferences[orangeHueKey(lutId)] = params.orangeHue
            preferences[orangeChromaKey(lutId)] = params.orangeChroma
            preferences[orangeLightnessKey(lutId)] = params.orangeLightness
            preferences[yellowHueKey(lutId)] = params.yellowHue
            preferences[yellowChromaKey(lutId)] = params.yellowChroma
            preferences[yellowLightnessKey(lutId)] = params.yellowLightness
            preferences[greenHueKey(lutId)] = params.greenHue
            preferences[greenChromaKey(lutId)] = params.greenChroma
            preferences[greenLightnessKey(lutId)] = params.greenLightness
            preferences[cyanHueKey(lutId)] = params.cyanHue
            preferences[cyanChromaKey(lutId)] = params.cyanChroma
            preferences[cyanLightnessKey(lutId)] = params.cyanLightness
            preferences[blueHueKey(lutId)] = params.blueHue
            preferences[blueChromaKey(lutId)] = params.blueChroma
            preferences[blueLightnessKey(lutId)] = params.blueLightness
            preferences[purpleHueKey(lutId)] = params.purpleHue
            preferences[purpleChromaKey(lutId)] = params.purpleChroma
            preferences[purpleLightnessKey(lutId)] = params.purpleLightness
            preferences[magentaHueKey(lutId)] = params.magentaHue
            preferences[magentaChromaKey(lutId)] = params.magentaChroma
            preferences[magentaLightnessKey(lutId)] = params.magentaLightness
            preferences[lutIntensityKey(lutId)] = params.lutIntensity
            preferences[remarksKey(lutId)] = params.remarks
        }
//        PLog.d(TAG, "Color recipe params saved for LUT [$lutId]: $params")
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
                skinHue = preferences[skinHueKey(lutId)] ?: 0f,
                skinChroma = preferences[skinChromaKey(lutId)] ?: 0f,
                skinLightness = preferences[skinLightnessKey(lutId)] ?: 0f,
                redHue = preferences[redHueKey(lutId)] ?: 0f,
                redChroma = preferences[redChromaKey(lutId)] ?: 0f,
                redLightness = preferences[redLightnessKey(lutId)] ?: 0f,
                orangeHue = preferences[orangeHueKey(lutId)] ?: 0f,
                orangeChroma = preferences[orangeChromaKey(lutId)] ?: 0f,
                orangeLightness = preferences[orangeLightnessKey(lutId)] ?: 0f,
                yellowHue = preferences[yellowHueKey(lutId)] ?: 0f,
                yellowChroma = preferences[yellowChromaKey(lutId)] ?: 0f,
                yellowLightness = preferences[yellowLightnessKey(lutId)] ?: 0f,
                greenHue = preferences[greenHueKey(lutId)] ?: 0f,
                greenChroma = preferences[greenChromaKey(lutId)] ?: 0f,
                greenLightness = preferences[greenLightnessKey(lutId)] ?: 0f,
                cyanHue = preferences[cyanHueKey(lutId)] ?: 0f,
                cyanChroma = preferences[cyanChromaKey(lutId)] ?: 0f,
                cyanLightness = preferences[cyanLightnessKey(lutId)] ?: 0f,
                blueHue = preferences[blueHueKey(lutId)] ?: 0f,
                blueChroma = preferences[blueChromaKey(lutId)] ?: 0f,
                blueLightness = preferences[blueLightnessKey(lutId)] ?: 0f,
                purpleHue = preferences[purpleHueKey(lutId)] ?: 0f,
                purpleChroma = preferences[purpleChromaKey(lutId)] ?: 0f,
                purpleLightness = preferences[purpleLightnessKey(lutId)] ?: 0f,
                magentaHue = preferences[magentaHueKey(lutId)] ?: 0f,
                magentaChroma = preferences[magentaChromaKey(lutId)] ?: 0f,
                magentaLightness = preferences[magentaLightnessKey(lutId)] ?: 0f,
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
            preferences.remove(skinHueKey(lutId))
            preferences.remove(skinChromaKey(lutId))
            preferences.remove(skinLightnessKey(lutId))
            preferences.remove(redHueKey(lutId))
            preferences.remove(redChromaKey(lutId))
            preferences.remove(redLightnessKey(lutId))
            preferences.remove(orangeHueKey(lutId))
            preferences.remove(orangeChromaKey(lutId))
            preferences.remove(orangeLightnessKey(lutId))
            preferences.remove(yellowHueKey(lutId))
            preferences.remove(yellowChromaKey(lutId))
            preferences.remove(yellowLightnessKey(lutId))
            preferences.remove(greenHueKey(lutId))
            preferences.remove(greenChromaKey(lutId))
            preferences.remove(greenLightnessKey(lutId))
            preferences.remove(cyanHueKey(lutId))
            preferences.remove(cyanChromaKey(lutId))
            preferences.remove(cyanLightnessKey(lutId))
            preferences.remove(blueHueKey(lutId))
            preferences.remove(blueChromaKey(lutId))
            preferences.remove(blueLightnessKey(lutId))
            preferences.remove(purpleHueKey(lutId))
            preferences.remove(purpleChromaKey(lutId))
            preferences.remove(purpleLightnessKey(lutId))
            preferences.remove(magentaHueKey(lutId))
            preferences.remove(magentaChromaKey(lutId))
            preferences.remove(magentaLightnessKey(lutId))
            preferences.remove(lutIntensityKey(lutId))
            preferences.remove(remarksKey(lutId))
        }
        PLog.d(TAG, "Color recipe params deleted for LUT [$lutId]")
    }
}
