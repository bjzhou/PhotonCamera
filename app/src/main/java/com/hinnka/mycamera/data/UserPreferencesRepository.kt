package com.hinnka.mycamera.data

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.floatPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map

/**
 * DataStore 扩展属性
 */
private val Context.dataStore: DataStore<Preferences> by preferencesDataStore(name = "user_preferences")

/**
 * 用户偏好设置数据类
 */
data class UserPreferences(
    val aspectRatio: String = "RATIO_4_3",
    val lutId: String? = null,  // 默认为 null，由 CameraViewModel 根据配置文件设置
    val frameId: String? = null,
    val showHistogram: Boolean = true,
    val showGrid: Boolean = false,  // 网格线显示
    val showLevelIndicator: Boolean = false,  // 水平仪显示
    val shutterSoundEnabled: Boolean = true,  // 快门声音
    val vibrationEnabled: Boolean = true,  // 拍摄震动
    val volumeKeyCapture: Boolean = false,  // 音量键拍摄
    val autoSaveAfterCapture: Boolean = true,  // 自动保存
    val useSoftwareProcessing: Boolean = true,  // 使用软件降噪/锐化（而非系统算法）
    // 软件处理参数（仅在 useSoftwareProcessing=true 时生效）
    val sharpening: Float = 0.3f,              // 0.0 ~ 1.0 锐化强度
    val noiseReduction: Float = 0.25f,         // 0.0 ~ 1.0 降噪强度
    val chromaNoiseReduction: Float = 0.25f    // 0.0 ~ 1.0 减少杂色强度
)

/**
 * 用户偏好设置仓库
 * 使用 DataStore 持久化保存用户选择的配置
 */
class UserPreferencesRepository(private val context: Context) {
    
    companion object {
        // DataStore Keys
        private val ASPECT_RATIO_KEY = stringPreferencesKey("aspect_ratio")
        private val LUT_ID_KEY = stringPreferencesKey("lut_id")
        private val FRAME_ID_KEY = stringPreferencesKey("frame_id")
        private val SHOW_HISTOGRAM = booleanPreferencesKey("show_histogram")
        private val SHOW_GRID = booleanPreferencesKey("show_grid")
        private val SHOW_LEVEL_INDICATOR = booleanPreferencesKey("show_level_indicator")
        private val SHUTTER_SOUND_ENABLED = booleanPreferencesKey("shutter_sound_enabled")
        private val VIBRATION_ENABLED = booleanPreferencesKey("vibration_enabled")
        private val VOLUME_KEY_CAPTURE = booleanPreferencesKey("volume_key_capture")
        private val AUTO_SAVE_AFTER_CAPTURE = booleanPreferencesKey("auto_save_after_capture")
        private val USE_SOFTWARE_PROCESSING = booleanPreferencesKey("use_software_processing")
        // 软件处理参数 Keys
        private val SHARPENING = floatPreferencesKey("sharpening")
        private val NOISE_REDUCTION = floatPreferencesKey("noise_reduction")
        private val CHROMA_NOISE_REDUCTION = floatPreferencesKey("chroma_noise_reduction")
    }
    
    /**
     * 用户偏好设置 Flow
     */
    val userPreferences: Flow<UserPreferences> = context.dataStore.data
        .map { preferences ->
            UserPreferences(
                aspectRatio = preferences[ASPECT_RATIO_KEY] ?: "RATIO_4_3",
                lutId = preferences[LUT_ID_KEY],  // 不提供默认值，由 CameraViewModel 处理
                frameId = preferences[FRAME_ID_KEY],
                showHistogram = preferences[SHOW_HISTOGRAM] ?: true,
                showGrid = preferences[SHOW_GRID] ?: false,
                showLevelIndicator = preferences[SHOW_LEVEL_INDICATOR] ?: false,
                shutterSoundEnabled = preferences[SHUTTER_SOUND_ENABLED] ?: true,
                vibrationEnabled = preferences[VIBRATION_ENABLED] ?: true,
                volumeKeyCapture = preferences[VOLUME_KEY_CAPTURE] ?: false,
                autoSaveAfterCapture = preferences[AUTO_SAVE_AFTER_CAPTURE] ?: true,
                useSoftwareProcessing = preferences[USE_SOFTWARE_PROCESSING] ?: true,
                // 软件处理参数
                sharpening = preferences[SHARPENING] ?: 0.3f,
                noiseReduction = preferences[NOISE_REDUCTION] ?: 0.25f,
                chromaNoiseReduction = preferences[CHROMA_NOISE_REDUCTION] ?: 0.25f
            )
        }
    
    /**
     * 保存画面比例
     */
    suspend fun saveAspectRatio(aspectRatio: String) {
        context.dataStore.edit { preferences ->
            preferences[ASPECT_RATIO_KEY] = aspectRatio
        }
    }

    /**
     * 保存 LUT 配置
     */
    suspend fun saveLutConfig(lutId: String?) {
        context.dataStore.edit { preferences ->
            if (lutId != null) {
                preferences[LUT_ID_KEY] = lutId
            } else {
                preferences.remove(LUT_ID_KEY)
            }
        }
    }
    
    /**
     * 保存边框配置
     */
    suspend fun saveFrameConfig(frameId: String?) {
        context.dataStore.edit { preferences ->
            if (frameId != null) {
                preferences[FRAME_ID_KEY] = frameId
            } else {
                preferences.remove(FRAME_ID_KEY)
            }
        }
    }

    /**
     * 保存是否显示直方图
     */
    suspend fun saveShowHistogram(show: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[SHOW_HISTOGRAM] = show
        }
    }

    /**
     * 保存是否显示网格线
     */
    suspend fun saveShowGrid(show: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[SHOW_GRID] = show
        }
    }
    
    /**
     * 保存是否显示水平仪
     */
    suspend fun saveShowLevelIndicator(show: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[SHOW_LEVEL_INDICATOR] = show
        }
    }
    
    /**
     * 保存是否启用快门声音
     */
    suspend fun saveShutterSoundEnabled(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[SHUTTER_SOUND_ENABLED] = enabled
        }
    }

    /**
     * 保存是否启用拍摄震动
     */
    suspend fun saveVibrationEnabled(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[VIBRATION_ENABLED] = enabled
        }
    }

    /**
     * 保存是否启用音量键拍摄
     */
    suspend fun saveVolumeKeyCapture(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[VOLUME_KEY_CAPTURE] = enabled
        }
    }
    
    /**
     * 保存是否拍摄后自动保存
     */
    suspend fun saveAutoSaveAfterCapture(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[AUTO_SAVE_AFTER_CAPTURE] = enabled
        }
    }

    /**
     * 保存是否使用软件降噪/锐化
     */
    suspend fun saveUseSoftwareProcessing(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[USE_SOFTWARE_PROCESSING] = enabled
        }
    }

    /**
     * 保存锐化强度
     */
    suspend fun saveSharpening(value: Float) {
        context.dataStore.edit { preferences ->
            preferences[SHARPENING] = value.coerceIn(0f, 1f)
        }
    }

    /**
     * 保存降噪强度
     */
    suspend fun saveNoiseReduction(value: Float) {
        context.dataStore.edit { preferences ->
            preferences[NOISE_REDUCTION] = value.coerceIn(0f, 1f)
        }
    }

    /**
     * 保存减少杂色强度
     */
    suspend fun saveChromaNoiseReduction(value: Float) {
        context.dataStore.edit { preferences ->
            preferences[CHROMA_NOISE_REDUCTION] = value.coerceIn(0f, 1f)
        }
    }
}
