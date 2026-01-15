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
    val lutIntensity: Float = 1.0f,
    val frameId: String? = null,
    val showAppBranding: Boolean = true,
    val showHistogram: Boolean = true,
    val showGrid: Boolean = false,  // 网格线显示
    val showLevelIndicator: Boolean = false,  // 水平仪显示
    val shutterSoundEnabled: Boolean = true,  // 快门声音
    val vibrationEnabled: Boolean = true,  // 拍摄震动
    val volumeKeyCapture: Boolean = false,  // 音量键拍摄
    val autoSaveAfterCapture: Boolean = true  // 自动保存
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
        private val LUT_INTENSITY_KEY = floatPreferencesKey("lut_intensity")
        private val FRAME_ID_KEY = stringPreferencesKey("frame_id")
        private val SHOW_APP_BRANDING_KEY = booleanPreferencesKey("show_app_branding")
        private val SHOW_HISTOGRAM = booleanPreferencesKey("show_histogram")
        private val SHOW_GRID = booleanPreferencesKey("show_grid")
        private val SHOW_LEVEL_INDICATOR = booleanPreferencesKey("show_level_indicator")
        private val SHUTTER_SOUND_ENABLED = booleanPreferencesKey("shutter_sound_enabled")
        private val VIBRATION_ENABLED = booleanPreferencesKey("vibration_enabled")
        private val VOLUME_KEY_CAPTURE = booleanPreferencesKey("volume_key_capture")
        private val AUTO_SAVE_AFTER_CAPTURE = booleanPreferencesKey("auto_save_after_capture")
    }
    
    /**
     * 用户偏好设置 Flow
     */
    val userPreferences: Flow<UserPreferences> = context.dataStore.data
        .map { preferences ->
            UserPreferences(
                aspectRatio = preferences[ASPECT_RATIO_KEY] ?: "RATIO_4_3",
                lutId = preferences[LUT_ID_KEY],  // 不提供默认值，由 CameraViewModel 处理
                lutIntensity = preferences[LUT_INTENSITY_KEY] ?: 1.0f,
                frameId = preferences[FRAME_ID_KEY],
                showAppBranding = preferences[SHOW_APP_BRANDING_KEY] ?: true,
                showHistogram = preferences[SHOW_HISTOGRAM] ?: true,
                showGrid = preferences[SHOW_GRID] ?: false,
                showLevelIndicator = preferences[SHOW_LEVEL_INDICATOR] ?: false,
                shutterSoundEnabled = preferences[SHUTTER_SOUND_ENABLED] ?: true,
                vibrationEnabled = preferences[VIBRATION_ENABLED] ?: true,
                volumeKeyCapture = preferences[VOLUME_KEY_CAPTURE] ?: false,
                autoSaveAfterCapture = preferences[AUTO_SAVE_AFTER_CAPTURE] ?: true
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
    suspend fun saveLutConfig(lutId: String?, intensity: Float) {
        context.dataStore.edit { preferences ->
            if (lutId != null) {
                preferences[LUT_ID_KEY] = lutId
            } else {
                preferences.remove(LUT_ID_KEY)
            }
            preferences[LUT_INTENSITY_KEY] = intensity
        }
    }
    
    /**
     * 保存 LUT 强度
     */
    suspend fun saveLutIntensity(intensity: Float) {
        context.dataStore.edit { preferences ->
            preferences[LUT_INTENSITY_KEY] = intensity
        }
    }
    
    /**
     * 保存边框配置
     */
    suspend fun saveFrameConfig(frameId: String?, showAppBranding: Boolean) {
        context.dataStore.edit { preferences ->
            if (frameId != null) {
                preferences[FRAME_ID_KEY] = frameId
            } else {
                preferences.remove(FRAME_ID_KEY)
            }
            preferences[SHOW_APP_BRANDING_KEY] = showAppBranding
        }
    }
    
    /**
     * 保存是否显示 App 品牌
     */
    suspend fun saveShowAppBranding(show: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[SHOW_APP_BRANDING_KEY] = show
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
}
