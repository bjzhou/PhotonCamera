package com.hinnka.mycamera.data

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.floatPreferencesKey
import androidx.datastore.preferences.core.intPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map

/**
 * DataStore 扩展属性
 */
private val Context.dataStore: DataStore<Preferences> by preferencesDataStore(name = "user_preferences")

enum class VolumeKeyAction {
    NONE,
    CAPTURE,
    EXPOSURE_COMPENSATION,
    ZOOM
}

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
    val volumeKeyAction: VolumeKeyAction = VolumeKeyAction.CAPTURE,  // 音量键操作
    val autoSaveAfterCapture: Boolean = true,  // 自动保存
    val nrLevel: Int = 1,  // 降噪等级：0=Off, 1=Fast, 2=High Quality, 3=Real-time
    val edgeLevel: Int = 1, // 锐化等级：0=Off, 1=Fast, 2=High Quality, 3=Real-time
    val useRaw: Boolean = false,                // 使用 RAW 格式拍摄
    val sharpening: Float = 0f,              // 0.0 ~ 1.0 锐化强度
    val noiseReduction: Float = 0f,         // 0.0 ~ 1.0 降噪强度
    val chromaNoiseReduction: Float = 0f,   // 0.0 ~ 1.0 减少杂色强度
    // 摄像头方向校正：Map<CameraId, 旋转偏移角度(0/90/180/270)>
    val cameraOrientationOffsets: Map<String, Int> = emptyMap(),
    // 排序顺序
    val filterOrder: List<String> = emptyList(),  // 滤镜排序（ID列表）
    val frameOrder: List<String> = emptyList(),    // 边框排序（ID列表）
    val categoryOrder: List<String> = emptyList(), // 分类排序
    val defaultFocalLength: Float = 0f, // 默认焦段 (mm)，0表示不设置
    val useMultiFrame: Boolean = false, // 是否使用多帧合成
    val multiFrameCount: Int = 8 // 多帧合成帧数
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
        private val VOLUME_KEY_ACTION = stringPreferencesKey("volume_key_action")
        private val AUTO_SAVE_AFTER_CAPTURE = booleanPreferencesKey("auto_save_after_capture")
        private val NR_LEVEL = intPreferencesKey("nr_level")
        private val EDGE_LEVEL = intPreferencesKey("edge_level")
        private val USE_RAW = booleanPreferencesKey("use_raw")

        // 软件处理参数 Keys
        private val SHARPENING = floatPreferencesKey("sharpening")
        private val NOISE_REDUCTION = floatPreferencesKey("noise_reduction")
        private val CHROMA_NOISE_REDUCTION = floatPreferencesKey("chroma_noise_reduction")

        // 排序 Keys
        private val FILTER_ORDER = stringPreferencesKey("filter_order")
        private val FRAME_ORDER = stringPreferencesKey("frame_order")
        private val CATEGORY_ORDER = stringPreferencesKey("category_order")

        // 摄像头方向偏移 Key
        private val CAMERA_ORIENTATION_OFFSETS = stringPreferencesKey("camera_orientation_offsets")

        // 默认焦段 Key
        private val DEFAULT_FOCAL_LENGTH = floatPreferencesKey("default_focal_length")

        // 多帧合成 Key
        private val USE_MULTI_FRAME = booleanPreferencesKey("use_multi_frame")
        private val MULTI_FRAME_COUNT = intPreferencesKey("multi_frame_count")
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
                volumeKeyAction = VolumeKeyAction.valueOf(
                    preferences[VOLUME_KEY_ACTION] ?: VolumeKeyAction.CAPTURE.name
                ),
                autoSaveAfterCapture = preferences[AUTO_SAVE_AFTER_CAPTURE] ?: true,
                nrLevel = preferences[NR_LEVEL] ?: 1,
                edgeLevel = preferences[EDGE_LEVEL] ?: 1,
                useRaw = preferences[USE_RAW] ?: false,
                // 软件处理参数
                sharpening = preferences[SHARPENING] ?: 0f,
                noiseReduction = preferences[NOISE_REDUCTION] ?: 0f,
                chromaNoiseReduction = preferences[CHROMA_NOISE_REDUCTION] ?: 0f,
                // 摄像头方向偏移
                cameraOrientationOffsets = parseCameraOrientationOffsets(preferences[CAMERA_ORIENTATION_OFFSETS]),
                // 排序
                filterOrder = preferences[FILTER_ORDER]?.split(",")?.filter { it.isNotEmpty() } ?: emptyList(),
                frameOrder = preferences[FRAME_ORDER]?.split(",")?.filter { it.isNotEmpty() } ?: emptyList(),
                categoryOrder = preferences[CATEGORY_ORDER]?.split(",")?.filter { it.isNotEmpty() } ?: emptyList(),
                defaultFocalLength = preferences[DEFAULT_FOCAL_LENGTH] ?: 0f,
                useMultiFrame = preferences[USE_MULTI_FRAME] ?: false,
                multiFrameCount = preferences[MULTI_FRAME_COUNT] ?: 8
            )
        }

    /**
     * 解析摄像头方向偏移字符串
     * 格式：cameraId1:offset1,cameraId2:offset2
     */
    private fun parseCameraOrientationOffsets(value: String?): Map<String, Int> {
        if (value.isNullOrEmpty()) return emptyMap()
        return value.split(",")
            .mapNotNull { entry ->
                val parts = entry.split(":")
                if (parts.size == 2) {
                    val cameraId = parts[0]
                    val offset = parts[1].toIntOrNull()
                    if (offset != null && offset in listOf(0, 90, 180, 270)) {
                        cameraId to offset
                    } else null
                } else null
            }
            .toMap()
    }

    /**
     * 序列化摄像头方向偏移为字符串
     */
    private fun serializeCameraOrientationOffsets(offsets: Map<String, Int>): String {
        return offsets.entries
            .filter { it.value in listOf(0, 90, 180, 270) }
            .joinToString(",") { "${it.key}:${it.value}" }
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
     * 保存音量键操作
     */
    suspend fun saveVolumeKeyAction(action: VolumeKeyAction) {
        context.dataStore.edit { preferences ->
            preferences[VOLUME_KEY_ACTION] = action.name
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
     * 保存降噪等级
     */
    suspend fun saveNRLevel(level: Int) {
        context.dataStore.edit { preferences ->
            preferences[NR_LEVEL] = level
        }
    }

    /**
     * 保存锐化等级
     */
    suspend fun saveEdgeLevel(level: Int) {
        context.dataStore.edit { preferences ->
            preferences[EDGE_LEVEL] = level
        }
    }

    /**
     * 保存是否使用 RAW 格式
     */
    @Suppress("MemberVisibilityCanBePrivate")
    suspend fun saveUseRaw(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[USE_RAW] = enabled
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

    /**
     * 保存滤镜排序顺序
     */
    suspend fun saveFilterOrder(order: List<String>) {
        context.dataStore.edit { preferences ->
            preferences[FILTER_ORDER] = order.joinToString(",")
        }
    }

    /**
     * 保存边框排序顺序
     */
    suspend fun saveFrameOrder(order: List<String>) {
        context.dataStore.edit { preferences ->
            preferences[FRAME_ORDER] = order.joinToString(",")
        }
    }

    /**
     * 保存分类排序顺序
     */
    suspend fun saveCategoryOrder(order: List<String>) {
        context.dataStore.edit { preferences ->
            preferences[CATEGORY_ORDER] = order.joinToString(",")
        }
    }

    /**
     * 保存摄像头方向偏移
     * @param cameraId 摄像头 ID
     * @param offset 旋转偏移角度 (0, 90, 180, 270)
     */
    suspend fun saveCameraOrientationOffset(cameraId: String, offset: Int) {
        require(offset in listOf(0, 90, 180, 270)) { "Offset must be 0, 90, 180, or 270" }

        context.dataStore.edit { preferences ->
            val current = parseCameraOrientationOffsets(preferences[CAMERA_ORIENTATION_OFFSETS])
            val updated = current.toMutableMap()

            if (offset == 0) {
                // 0度偏移相当于无偏移，删除这个条目
                updated.remove(cameraId)
            } else {
                updated[cameraId] = offset
            }

            preferences[CAMERA_ORIENTATION_OFFSETS] = serializeCameraOrientationOffsets(updated)
        }
    }

    /**
     * 获取摄像头方向偏移
     * @param cameraId 摄像头 ID
     * @return 旋转偏移角度，如果没有设置则返回 0
     */
    fun getCameraOrientationOffset(cameraId: String, preferences: UserPreferences): Int {
        return preferences.cameraOrientationOffsets[cameraId] ?: 0
    }

    /**
     * 保存默认焦段
     */
    suspend fun saveDefaultFocalLength(focalLength: Float) {
        context.dataStore.edit { preferences ->
            preferences[DEFAULT_FOCAL_LENGTH] = focalLength
        }
    }

    /**
     * 保存是否使用多帧合成
     */
    suspend fun saveUseMultiFrame(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[USE_MULTI_FRAME] = enabled
        }
    }

    /**
     * 保存多帧合成帧数
     */
    suspend fun saveMultiFrameCount(count: Int) {
        context.dataStore.edit { preferences ->
            preferences[MULTI_FRAME_COUNT] = count
        }
    }
}
