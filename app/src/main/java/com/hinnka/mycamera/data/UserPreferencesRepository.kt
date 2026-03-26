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
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.raw.LogCurve
import com.hinnka.mycamera.raw.RawProfile
import com.hinnka.mycamera.screencapture.PhantomPipCrop
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import com.hinnka.mycamera.utils.DeviceUtil

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

enum class WidgetTheme {
    FOLLOW_SYSTEM,
    LIGHT,
    DARK
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
    val nrLevel: Int = 5,  // 降噪等级：0=Off, 1=Fast, 2=High Quality, 3=ZSL, 4=Minimal, 5=Auto
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
    val useMFNR: Boolean = false, // 是否使用多帧降噪
    val multiFrameCount: Int = 8, // 多帧降噪帧数
    val useMultipleExposure: Boolean = false, // 是否启用多重曝光
    val multipleExposureCount: Int = 2, // 多重曝光张数
    val useMFSR: Boolean = false, // 是否启用 RAW 多帧超分
    val superResolutionScale: Float = 1.5f, // RAW 多帧超分倍率
    val photoQuality: Int = 95, // 照片质量: 90, 95, 100
    val useLivePhoto: Boolean = false, // 是否启用 Live Photo (Motion Photo)
    val enableDevelopAnimation: Boolean = false, // 是否启用拍摄后的显影动画
    val backgroundImage: String = "camera_bg", // 背景图资源名或文件路径
    val useGpuAcceleration: Boolean = DeviceUtil.defaultGpuAcceleration, // 多帧合成是否使用 GPU 加速
    val droMode: String = "OFF", // DRO 模式
    val applyUltraHDR: Boolean = false, // 是否应用 Ultra HDR 策略
    val colorSpace: ColorSpace = ColorSpace.BT2020, // 默认 F-Gamut
    val logCurve: LogCurve = LogCurve.FLOG2, // 默认 F-Log2
    val rawLuts: Map<String, String> = mapOf(LogCurve.FLOG2.name to RawProfile.FUJI_PROVIA.rawLut),
    val useP010: Boolean = false,
    val useHlg10: Boolean = false,
    val useP3ColorSpace: Boolean = false,
    val autoEnableHdr: Boolean = false,
    val phantomMode: Boolean = false,
    val phantomButtonHidden: Boolean = false,
    val launchCameraOnPhantomMode: Boolean = false,
    val phantomPipPreview: Boolean = false,
    val phantomPipCrop: PhantomPipCrop = PhantomPipCrop(),
    val mirrorFrontCamera: Boolean = true,
    val widgetTheme: WidgetTheme = WidgetTheme.FOLLOW_SYSTEM,
    val saveLocation: Boolean = false,
    val openAIApiKey: String? = null,
    val openAIBaseUrl: String? = null,
    val openAIModel: String? = null,
    val useBuiltInAiService: Boolean = false,
    val phantomSaveAsNew: Boolean = false,
    val defaultVirtualAperture: Float = 0f // 默认虚化光圈，0表示关闭
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
        private val USE_MULTIPLE_EXPOSURE = booleanPreferencesKey("use_multiple_exposure")
        private val MULTIPLE_EXPOSURE_COUNT = intPreferencesKey("multiple_exposure_count")
        private val USE_SUPER_RESOLUTION = booleanPreferencesKey("use_super_resolution")
        private val RAW_SUPER_RESOLUTION_SCALE = floatPreferencesKey("raw_super_resolution_scale")
        private val PHOTO_QUALITY = intPreferencesKey("photo_quality")
        private val USE_LIVE_PHOTO = booleanPreferencesKey("use_live_photo")
        private val ENABLE_DEVELOP_ANIMATION = booleanPreferencesKey("enable_develop_animation")
        private val BACKGROUND_IMAGE = stringPreferencesKey("background_image")
        private val USE_GPU_ACCELERATION = booleanPreferencesKey("use_gpu_acceleration")
        private val DRO_MODE = stringPreferencesKey("dro_mode")
        private val APPLY_ULTRA_HDR = booleanPreferencesKey("apply_ultra_hdr")
        private val COLOR_SPACE = stringPreferencesKey("color_space")
        private val LOG_CURVE = stringPreferencesKey("log_curve")
        private val USE_P010 = booleanPreferencesKey("use_p010")
        private val USE_HLG10 = booleanPreferencesKey("use_hlg10")
        private val USE_P3_COLOR_SPACE = booleanPreferencesKey("use_p3_color_space")
        private val AUTO_ENABLE_HDR_FOR_HDR_CAPTURE = booleanPreferencesKey("auto_enable_hdr_for_hdr_capture")
        private val PHANTOM_MODE = booleanPreferencesKey("phantom_mode")
        private val PHANTOM_BUTTON_HIDDEN = booleanPreferencesKey("phantom_button_hidden")
        private val LAUNCH_CAMERA_ON_PHANTOM_MODE = booleanPreferencesKey("launch_camera_on_phantom_mode")
        private val PHANTOM_PIP_PREVIEW = booleanPreferencesKey("phantom_pip_preview")
        private val PHANTOM_PIP_CROP_LEFT = floatPreferencesKey("phantom_pip_crop_left")
        private val PHANTOM_PIP_CROP_TOP = floatPreferencesKey("phantom_pip_crop_top")
        private val PHANTOM_PIP_CROP_RIGHT = floatPreferencesKey("phantom_pip_crop_right")
        private val PHANTOM_PIP_CROP_BOTTOM = floatPreferencesKey("phantom_pip_crop_bottom")
        private val MIRROR_FRONT_CAMERA = booleanPreferencesKey("mirror_front_camera")
        private val WIDGET_THEME = stringPreferencesKey("widget_theme")
        private val SAVE_LOCATION = booleanPreferencesKey("save_location")
        private val OPENAI_API_KEY = stringPreferencesKey("openai_api_key")
        private val OPENAI_BASE_URL = stringPreferencesKey("openai_base_url")
        private val OPENAI_MODEL = stringPreferencesKey("openai_model")
        private val USE_BUILT_IN_AI_SERVICE = booleanPreferencesKey("use_built_in_ai_service")
        private val PHANTOM_SAVE_AS_NEW = booleanPreferencesKey("phantom_save_as_new")
        private val DEFAULT_VIRTUAL_APERTURE = floatPreferencesKey("default_virtual_aperture")
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
                nrLevel = preferences[NR_LEVEL] ?: 5,
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
                useMFNR = preferences[USE_MULTI_FRAME] ?: false,
                multiFrameCount = preferences[MULTI_FRAME_COUNT] ?: 8,
                useMultipleExposure = preferences[USE_MULTIPLE_EXPOSURE] ?: false,
                multipleExposureCount = preferences[MULTIPLE_EXPOSURE_COUNT] ?: 2,
                useMFSR = preferences[USE_SUPER_RESOLUTION] ?: false,
                superResolutionScale = preferences[RAW_SUPER_RESOLUTION_SCALE] ?: 1.5f,
                photoQuality = preferences[PHOTO_QUALITY] ?: 95,
                useLivePhoto = preferences[USE_LIVE_PHOTO] ?: false,
                enableDevelopAnimation = preferences[ENABLE_DEVELOP_ANIMATION] ?: false,
                backgroundImage = preferences[BACKGROUND_IMAGE] ?: "camera_bg",
                useGpuAcceleration = preferences[USE_GPU_ACCELERATION] ?: DeviceUtil.defaultGpuAcceleration,
                droMode = preferences[DRO_MODE] ?: "OFF",
                applyUltraHDR = preferences[APPLY_ULTRA_HDR] ?: false,
                colorSpace = ColorSpace.valueOf(preferences[COLOR_SPACE] ?: ColorSpace.BT2020.name),
                logCurve = LogCurve.valueOf(preferences[LOG_CURVE] ?: LogCurve.FLOG2.name),
                rawLuts = parseRawLuts(preferences),
                useP010 = preferences[USE_P010] ?: false,
                useHlg10 = preferences[USE_HLG10] ?: false,
                useP3ColorSpace = preferences[USE_P3_COLOR_SPACE] ?: false,
                autoEnableHdr = preferences[AUTO_ENABLE_HDR_FOR_HDR_CAPTURE] ?: false,
                phantomMode = preferences[PHANTOM_MODE] ?: false,
                phantomButtonHidden = preferences[PHANTOM_BUTTON_HIDDEN] ?: false,
                launchCameraOnPhantomMode = preferences[LAUNCH_CAMERA_ON_PHANTOM_MODE] ?: false,
                phantomPipPreview = preferences[PHANTOM_PIP_PREVIEW] ?: false,
                phantomPipCrop = PhantomPipCrop(
                    left = preferences[PHANTOM_PIP_CROP_LEFT] ?: 0f,
                    top = preferences[PHANTOM_PIP_CROP_TOP] ?: 0f,
                    right = preferences[PHANTOM_PIP_CROP_RIGHT] ?: 1f,
                    bottom = preferences[PHANTOM_PIP_CROP_BOTTOM] ?: 1f
                ).normalized(),
                mirrorFrontCamera = preferences[MIRROR_FRONT_CAMERA] ?: true,
                widgetTheme = WidgetTheme.valueOf(preferences[WIDGET_THEME] ?: WidgetTheme.FOLLOW_SYSTEM.name),
                saveLocation = preferences[SAVE_LOCATION] ?: false,
                openAIApiKey = preferences[OPENAI_API_KEY],
                openAIBaseUrl = preferences[OPENAI_BASE_URL],
                openAIModel = preferences[OPENAI_MODEL],
                useBuiltInAiService = preferences[USE_BUILT_IN_AI_SERVICE] ?: false,
                phantomSaveAsNew = preferences[PHANTOM_SAVE_AS_NEW] ?: false,
                defaultVirtualAperture = preferences[DEFAULT_VIRTUAL_APERTURE] ?: 0f
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

    private fun parseRawLuts(preferences: Preferences): Map<String, String> {
        val result = mutableMapOf<String, String>()
        LogCurve.entries.forEach { entry ->
            val default = when (entry) {
                LogCurve.FLOG2 -> "PROVIA.plut"
                LogCurve.LINEAR -> "none"
                else -> "sRGB.plut"
            }
            val value = preferences[stringPreferencesKey("${entry.name}_raw_lut")] ?: default
            result[entry.name] = value
        }
        return result
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
    suspend fun setUseMFNR(enabled: Boolean) {
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

    /**
     * 保存是否使用多重曝光
     */
    suspend fun saveUseMultipleExposure(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[USE_MULTIPLE_EXPOSURE] = enabled
        }
    }

    /**
     * 保存多重曝光张数
     */
    suspend fun saveMultipleExposureCount(count: Int) {
        context.dataStore.edit { preferences ->
            preferences[MULTIPLE_EXPOSURE_COUNT] = count.coerceIn(2, 9)
        }
    }

    /**
     * 保存是否使用超分辨率
     */
    suspend fun saveUseMFSR(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[USE_SUPER_RESOLUTION] = enabled
        }
    }

    suspend fun saveSuperResolutionScale(scale: Float) {
        context.dataStore.edit { preferences ->
            preferences[RAW_SUPER_RESOLUTION_SCALE] = scale.coerceIn(1.0f, 2.0f)
        }
    }

    /**
     * 保存照片质量
     */
    suspend fun savePhotoQuality(quality: Int) {
        context.dataStore.edit { preferences ->
            preferences[PHOTO_QUALITY] = quality
        }
    }

    /**
     * 保存是否启用 Live Photo
     */
    suspend fun saveUseLivePhoto(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[USE_LIVE_PHOTO] = enabled
        }
    }

    /**
     * 保存是否启用显影动画
     */
    suspend fun saveEnableDevelopAnimation(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[ENABLE_DEVELOP_ANIMATION] = enabled
        }
    }

    /**
     * 保存背景图
     */
    suspend fun saveBackgroundImage(image: String) {
        context.dataStore.edit { preferences ->
            preferences[BACKGROUND_IMAGE] = image
        }
    }

    /**
     * 保存是否启用 GPU 加速
     */
    suspend fun saveUseGpuAcceleration(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[USE_GPU_ACCELERATION] = enabled
        }
    }

    /**
     * 保存 DRO 模式
     */
    suspend fun saveDroMode(mode: String) {
        context.dataStore.edit { preferences ->
            preferences[DRO_MODE] = mode
        }
    }

    /**
     * 保存是否应用 Ultra HDR 策略
     */
    suspend fun saveApplyUltraHDR(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[APPLY_ULTRA_HDR] = enabled
        }
    }

    /**
     * 保存色彩空间
     */
    suspend fun saveColorSpace(colorSpace: ColorSpace) {
        context.dataStore.edit { preferences ->
            preferences[COLOR_SPACE] = colorSpace.name
        }
    }

    /**
     * 保存 Log 曲线
     */
    suspend fun saveLogCurve(logCurve: LogCurve) {
        context.dataStore.edit { preferences ->
            preferences[LOG_CURVE] = logCurve.name
        }
    }

    /**
     * 保存针对特定 Log 曲线的 RAW 还原 LUT
     */
    suspend fun saveRawLut(logCurve: LogCurve, lut: String) {
        context.dataStore.edit { preferences ->
            preferences[stringPreferencesKey("${logCurve.name}_raw_lut")] = lut
        }
    }

    suspend fun saveRawProfile(rawProfile: RawProfile) {
        context.dataStore.edit { preferences ->
            preferences[COLOR_SPACE] = rawProfile.colorSpace.name
            preferences[LOG_CURVE] = rawProfile.logCurve.name
            preferences[stringPreferencesKey("${rawProfile.logCurve.name}_raw_lut")] = rawProfile.rawLut
        }
    }

    /**
     * 保存是否启用 P010
     */
    suspend fun saveUseP010(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[USE_P010] = enabled
        }
    }

    suspend fun saveUseHlg10(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[USE_HLG10] = enabled
        }
    }

    /**
     * 保存是否启用 P3 色域
     */
    suspend fun saveUseP3ColorSpace(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[USE_P3_COLOR_SPACE] = enabled
        }
    }

    suspend fun saveAutoEnableHdrForHdrCapture(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[AUTO_ENABLE_HDR_FOR_HDR_CAPTURE] = enabled
        }
    }

    /**
     * 保存是否启用幻影模式
     */
    suspend fun savePhantomMode(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[PHANTOM_MODE] = enabled
        }
    }

    /**
     * 保存是否隐藏幻影模式悬浮按钮
     */
    suspend fun savePhantomButtonHidden(hidden: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[PHANTOM_BUTTON_HIDDEN] = hidden
        }
    }

    /**
     * 保存是否在启动幻影模式时启动系统相机
     */
    suspend fun saveLaunchCameraOnPhantomMode(launch: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[LAUNCH_CAMERA_ON_PHANTOM_MODE] = launch
        }
    }

    suspend fun savePhantomPipPreview(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[PHANTOM_PIP_PREVIEW] = enabled
        }
    }

    suspend fun savePhantomPipCrop(crop: PhantomPipCrop) {
        val normalized = crop.normalized()
        context.dataStore.edit { preferences ->
            preferences[PHANTOM_PIP_CROP_LEFT] = normalized.left
            preferences[PHANTOM_PIP_CROP_TOP] = normalized.top
            preferences[PHANTOM_PIP_CROP_RIGHT] = normalized.right
            preferences[PHANTOM_PIP_CROP_BOTTOM] = normalized.bottom
        }
    }

    /**
     * 保存是否启用自拍镜像
     */
    suspend fun saveMirrorFrontCamera(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[MIRROR_FRONT_CAMERA] = enabled
        }
    }

    /**
     * 保存 Widget 主题
     */
    suspend fun saveWidgetTheme(theme: WidgetTheme) {
        context.dataStore.edit { preferences ->
            preferences[WIDGET_THEME] = theme.name
        }
    }

    /**
     * 保存是否记录地理位置
     */
    suspend fun saveSaveLocation(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[SAVE_LOCATION] = enabled
        }
    }

    /**
     * 保存 OpenAI API Key
     */
    suspend fun saveOpenAIApiKey(key: String) {
        context.dataStore.edit { preferences ->
            preferences[OPENAI_API_KEY] = key
        }
    }

    /**
     * 保存 OpenAI Base URL
     */
    suspend fun saveOpenAIBaseUrl(url: String) {
        context.dataStore.edit { preferences ->
            preferences[OPENAI_BASE_URL] = url
        }
    }

    /**
     * 保存 OpenAI 选定模型
     */
    suspend fun saveOpenAIModel(model: String) {
        context.dataStore.edit { preferences ->
            preferences[OPENAI_MODEL] = model
        }
    }

    /**
     * 保存是否使用内置体验服务
     */
    suspend fun saveUseBuiltInAiService(use: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[USE_BUILT_IN_AI_SERVICE] = use
        }
    }

    /**
     * 保存幻影模式是否另存新图
     */
    suspend fun savePhantomSaveAsNew(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[PHANTOM_SAVE_AS_NEW] = enabled
        }
    }

    /**
     * 保存默认虚拟光圈
     */
    suspend fun saveDefaultVirtualAperture(aperture: Float) {
        context.dataStore.edit { preferences ->
            preferences[DEFAULT_VIRTUAL_APERTURE] = aperture
        }
    }
}
