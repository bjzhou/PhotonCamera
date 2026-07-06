package com.hinnka.mycamera.data

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.floatPreferencesKey
import androidx.datastore.preferences.core.intPreferencesKey
import androidx.datastore.preferences.core.longPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.CustomFocalLengthValue
import com.hinnka.mycamera.camera.IszLensConfig
import com.hinnka.mycamera.camera.MultiFrameConfig
import com.hinnka.mycamera.camera.MeteringMode
import com.hinnka.mycamera.camera.VendorCaptureSettings
import com.hinnka.mycamera.camera.VendorCaptureSettingsByLens
import com.hinnka.mycamera.gallery.PhotoSavePath
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawProcessingPreferences
import com.hinnka.mycamera.raw.RawToneMappingParameters
import com.hinnka.mycamera.raw.SpectralFilmTuning
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.raw.RawProfile
import com.hinnka.mycamera.screencapture.PhantomPipCrop
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import com.hinnka.mycamera.utils.DeviceUtil
import com.hinnka.mycamera.video.CaptureMode
import com.hinnka.mycamera.video.QuickShotResolutionPreset
import com.hinnka.mycamera.video.VideoAspectRatio
import com.hinnka.mycamera.video.VIDEO_AUDIO_INPUT_AUTO
import com.hinnka.mycamera.video.VideoBitratePreset
import com.hinnka.mycamera.video.VideoFpsPreset
import com.hinnka.mycamera.video.VideoLogProfile
import com.hinnka.mycamera.video.VideoRecordingPath
import com.hinnka.mycamera.video.VideoResolutionPreset
import com.hinnka.mycamera.model.EffectParams
import com.hinnka.mycamera.model.CameraPreset
import com.hinnka.mycamera.model.LutSelectorMode
import org.json.JSONObject

/**
 * DataStore 扩展属性
 */
private val Context.dataStore: DataStore<Preferences> by preferencesDataStore(name = "user_preferences")

private fun sanitizeTonemapMode(mode: String): String {
    return when (mode) {
        "FAST", "HIGH_QUALITY" -> "SYSTEM_DEFAULT"
        "REC709" -> "SRGB"
        "SYSTEM_DEFAULT", "SRGB" -> mode
        else -> "SYSTEM_DEFAULT"
    }
}

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

enum class AiFocusTargetMode {
    OFF,
    AUTO,
    PERSON,
    FACE,
    ANIMAL,
    BIRD,
    VEHICLE,
    AIRPLANE
}

/**
 * 用户偏好设置数据类
 */
data class UserPreferences(
    val captureMode: CaptureMode = CaptureMode.PHOTO,
    val aspectRatio: String = "RATIO_4_3",
    val topSheetAspectRatios: List<AspectRatio> = AspectRatio.defaultTopSheetRatios,
    val customAspectRatios: List<AspectRatio> = emptyList(),
    val lutId: String? = null,  // 默认为 null，由 CameraViewModel 根据配置文件设置
    val jpgBaselineLutId: String? = null,
    val rawBaselineLutId: String? = null,
    val rawBaselineLutConfigured: Boolean = false,
    val phantomBaselineLutId: String? = null,
    val rawDcpId: String? = null,
    val rawDcpIdsByLens: Map<String, String?> = emptyMap(),
    val rawRenderingEngine: RawRenderingEngine = RawRenderingEngine.AdobeCurve,
    val rawToneMappingParameters: RawToneMappingParameters = RawToneMappingParameters.DEFAULT,
    val rawNlmNoiseFactor: Float = 0f,
    val rawExposureCompensation: Float = 0f,
    val rawAutoExposure: Boolean = true,
    val rawHighlightsAdjustment: Float = 0f,
    val rawShadowsAdjustment: Float = 0f,
    val rawMinShutterSpeedNs: Long = 0L,
    val rawDROEnabled: Boolean = false,
    val rawBlackPointCorrection: Float = 0f,
    val rawWhitePointCorrection: Float = 0f,
    val rawAutoWhiteBalanceEstimate: Boolean = false,
    val rawLensShadingCorrectionEnabled: Boolean = true,
    val rawBlackLevelModes: Map<String, String> = emptyMap(),
    val rawCustomBlackLevels: Map<String, Float> = emptyMap(),
    val rawWhiteLevelModes: Map<String, String> = emptyMap(),
    val rawCfaCorrectionModes: Map<String, String> = emptyMap(),
    val exportDngWithRawExport: Boolean = false,
    val frameId: String? = null,
    val showHistogram: Boolean = true,
    val showGrid: Boolean = false,  // 网格线显示
    val showLevelIndicator: Boolean = false,  // 水平仪显示
    val focusPeakingEnabled: Boolean = true,  // 手动对焦峰值显示
    val aiFocusTargetMode: AiFocusTargetMode = AiFocusTargetMode.OFF,
    val aiFocusScoreThreshold: Float = 0.5f,
    val shutterSoundEnabled: Boolean = true,  // 快门声音
    val vibrationEnabled: Boolean = true,  // 拍摄震动
    val keepScreenOn: Boolean = false,  // 屏幕常亮
    val windowScreenBrightness: Float? = null,  // Activity 窗口屏幕亮度，null 表示使用系统默认
    val volumeKeyAction: VolumeKeyAction = VolumeKeyAction.CAPTURE,  // 音量键操作
    val autoSaveAfterCapture: Boolean = true,  // 自动保存
    val photoSavePath: PhotoSavePath = PhotoSavePath.DCIM_PHOTON,
    val photoSaveTreeUri: String? = null,
    val nrLevel: Int = 5,  // 降噪等级：0=Off, 1=Fast, 2=High Quality, 3=ZSL, 4=Minimal, 5=Auto
    val edgeLevel: Int = 1, // 锐化等级：0=Off, 1=Fast, 2=High Quality, 3=Real-time
    val vendorCaptureSettingsByLens: VendorCaptureSettingsByLens = VendorCaptureSettingsByLens.Empty,
    val useRaw: Boolean = false,                // 使用 RAW 格式拍摄
    val meteringMode: MeteringMode = MeteringMode.SYSTEM_DEFAULT, // 测光模式
    val sharpening: Float = 0f,              // 0.0 ~ 1.0 锐化强度
    val noiseReduction: Float = 0f,         // 0.0 ~ 1.0 降噪强度
    val chromaNoiseReduction: Float = 0f,   // 0.0 ~ 1.0 减少杂色强度
    // 摄像头方向校正：Map<CameraId, 旋转偏移角度(0/90/180/270)>
    val cameraOrientationOffsets: Map<String, Int> = emptyMap(),
    // 排序顺序
    val filterOrder: List<String> = emptyList(),  // 滤镜排序（ID列表）
    val frameOrder: List<String> = emptyList(),    // 边框排序（ID列表）
    val categoryOrder: List<String> = emptyList(), // 分类排序
    val lutSelectorMode: LutSelectorMode = LutSelectorMode.Style,
    val defaultFocalLength: Float = 0f, // 默认焦段 (mm)，0表示不设置
    val zoomDisplayMode: String = "FOCAL_LENGTH",
    val useMFNR: Boolean = false, // 是否使用多帧降噪
    val useHdrComposition: Boolean = false, // 是否使用 HDR 包围曝光合成
    val multiFrameCount: Int = MultiFrameConfig.DEFAULT_FRAME_COUNT, // 多帧降噪帧数
    val useMultipleExposure: Boolean = false, // 是否启用多重曝光
    val multipleExposureCount: Int = 2, // 多重曝光张数
    val useMFSR: Boolean = false, // 是否启用 RAW 多帧超分
    val superResolutionScale: Float = 1.5f, // RAW 多帧超分倍率
    val photoQuality: Int = 95, // 照片质量: 90, 95, 100
    val useHeicExport: Boolean = false, // 是否优先使用 HEIC 导出
    val useLivePhoto: Boolean = false, // 是否启用 Live Photo (Motion Photo)
    val enableDevelopAnimation: Boolean = false, // 是否启用拍摄后的显影动画
    val backgroundImage: String = "camera_bg", // 背景图资源名或文件路径
    val useGpuAcceleration: Boolean = DeviceUtil.defaultGpuAcceleration, // 多帧合成是否使用 GPU 加速
    val droMode: String = "OFF", // DRO 模式
    val tonemapMode: String = "SYSTEM_DEFAULT", // 色调映射模式
    val naturalLightEnabled: Boolean = false, // 是否启用自然光影
    val naturalLightWarningShown: Boolean = false, // 是否已提示自然光影兼容性风险
    val fixTonemapPreview: Boolean = false, // 修复部分设备自定义色调映射预览异常
    val fixTonemapCapture: Boolean = false, // 修复部分设备自定义色调映射拍摄异常
    val applyUltraHDR: Boolean = false, // 是否应用 Ultra HDR 策略
    val colorSpace: ColorSpace = ColorSpace.SRGB,
    val logCurve: TransferCurve = TransferCurve.SRGB,
    val rawLuts: Map<String, String> = mapOf(TransferCurve.SRGB.name to RawProfile.STANDARD_SRGB.rawLut),
    val useP010: Boolean = false,
    val useHlg10: Boolean = false,
    val hlgHardwareCompatibilityEnabled: Boolean = false,
    val useP3ColorSpace: Boolean = false,
    val quickShotResolution: QuickShotResolutionPreset = QuickShotResolutionPreset.FHD_1080P,
    val videoResolution: VideoResolutionPreset = VideoResolutionPreset.FHD_1080P,
    val videoFps: VideoFpsPreset = VideoFpsPreset.FPS_30,
    val videoAspectRatio: VideoAspectRatio = VideoAspectRatio.RATIO_16_9,
    val videoLogProfile: VideoLogProfile = VideoLogProfile.OFF,
    val videoBitrate: VideoBitratePreset = VideoBitratePreset.P1,
    val videoAudioInputId: String = VIDEO_AUDIO_INPUT_AUTO,
    val videoRecordingPath: VideoRecordingPath = VideoRecordingPath.DCIM_PHOTON,
    val videoRecordingTreeUri: String? = null,
    val videoStabilizationMode: com.hinnka.mycamera.video.VideoStabilizationMode = com.hinnka.mycamera.video.VideoStabilizationMode.OIS,
    val videoTorchEnabled: Boolean = false,
    val videoCodec: com.hinnka.mycamera.video.VideoCodec = com.hinnka.mycamera.video.VideoCodec.H264,
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
    val useHdrScreenMode: Boolean = true,
    val defaultVirtualAperture: Float = 0f, // 默认虚化光圈，0表示关闭
    val customFocalLengths: List<Float> = emptyList(), // 自定义焦段/倍率，正数为35mm等效焦段，负数为精确倍率
    val customLensIds: List<String> = emptyList(), // 自定义镜头 ID，逗号分隔存储
    val lensIdBlacklist: List<String> = emptyList(), // 主动探测黑名单镜头 ID，逗号分隔存储
    val iszLensConfigs: List<IszLensConfig> = emptyList(), // 用户新增的 ISZ 虚拟镜头
    val preferredMainCameraId: String? = null, // 用户选择的主摄 ID
    val enableLogicalMultiCameraDiscovery: Boolean = false, // 是否自动探测逻辑多摄物理镜头绑定
    val logicalCameraBindingWhitelist: List<String> = emptyList(), // 强制启用的逻辑/物理镜头绑定，格式 logical/physical
    val hiddenFocalLengths: List<Float> = emptyList(), // 隐藏的焦段 (35mm等效)
    val referencePhotoUrl: String? = null,
    val deleteExported: Boolean = true,
    val rawSpectralFilmStock: String? = null,
    val rawSpectralFilmPrint: String? = null,
    val rawSpectralFilmTuningsByStock: Map<String, SpectralFilmTuning> = emptyMap(),
    val activeEffectParamsJson: String = "",
    val customPresetsJson: String = "",
    val activePresetId: String? = null,
    val deletedBuiltInIds: String = ""
) {
    val activeEffectParams: EffectParams
        get() = EffectParams.fromJson(activeEffectParamsJson)

    val customPresets: List<CameraPreset>
        get() = CameraPreset.listFromJson(customPresetsJson)

    fun rawDcpIdForLens(lensId: String?): String? {
        val normalizedLensId = lensId?.takeIf { it.isNotBlank() } ?: return rawDcpId
        return if (rawDcpIdsByLens.containsKey(normalizedLensId)) {
            rawDcpIdsByLens[normalizedLensId]
        } else {
            rawDcpId
        }
    }

    fun hasRawDcpLensOverride(lensId: String?): Boolean {
        val normalizedLensId = lensId?.takeIf { it.isNotBlank() } ?: return false
        return rawDcpIdsByLens.containsKey(normalizedLensId)
    }
}

data class PreferenceUpdateValue<T>(val value: T)

data class CameraFeaturePreferencesUpdate(
    val lutId: PreferenceUpdateValue<String?>? = null,
    val effects: PreferenceUpdateValue<EffectParams>? = null,
    val aspectRatio: PreferenceUpdateValue<String>? = null,
    val useRaw: PreferenceUpdateValue<Boolean>? = null,
    val useMFNR: PreferenceUpdateValue<Boolean>? = null,
    val useHdrComposition: PreferenceUpdateValue<Boolean>? = null,
    val useMFSR: PreferenceUpdateValue<Boolean>? = null,
    val useMultipleExposure: PreferenceUpdateValue<Boolean>? = null,
    val frameId: PreferenceUpdateValue<String?>? = null,
    val rawDcpId: PreferenceUpdateValue<String?>? = null,
    val rawDcpIdsByLens: PreferenceUpdateValue<Map<String, String?>>? = null,
    val rawRenderingEngine: PreferenceUpdateValue<RawRenderingEngine>? = null,
    val rawToneMappingParameters: PreferenceUpdateValue<RawToneMappingParameters>? = null,
    val rawSpectralFilmStock: PreferenceUpdateValue<String?>? = null,
    val rawSpectralFilmPrint: PreferenceUpdateValue<String?>? = null,
    val droMode: PreferenceUpdateValue<String>? = null,
    val jpgBaselineLutId: PreferenceUpdateValue<String?>? = null,
    val rawBaselineLutId: PreferenceUpdateValue<String?>? = null,
    val phantomBaselineLutId: PreferenceUpdateValue<String?>? = null,
    val activePresetId: PreferenceUpdateValue<String?>? = null
)

/**
 * 用户偏好设置仓库
 * 使用 DataStore 持久化保存用户选择的配置
 */
class UserPreferencesRepository(private val context: Context) {

    companion object {
        // DataStore Keys
        private val CAPTURE_MODE = stringPreferencesKey("capture_mode")
        private val ASPECT_RATIO_KEY = stringPreferencesKey("aspect_ratio")
        private val TOP_SHEET_ASPECT_RATIOS = stringPreferencesKey("top_sheet_aspect_ratios")
        private val CUSTOM_ASPECT_RATIOS = stringPreferencesKey("custom_aspect_ratios")
        private val LUT_ID_KEY = stringPreferencesKey("lut_id")
        private val LEGACY_PHANTOM_LUT_ID_KEY = stringPreferencesKey("phantom_lut_id")
        private val JPG_BASELINE_LUT_ID_KEY = stringPreferencesKey("jpg_baseline_lut_id")
        private val RAW_BASELINE_LUT_ID_KEY = stringPreferencesKey("raw_baseline_lut_id")
        private val RAW_BASELINE_LUT_CONFIGURED_KEY = booleanPreferencesKey("raw_baseline_lut_configured")
        private val RAW_DCP_ID_KEY = stringPreferencesKey("raw_dcp_id")
        private val RAW_DCP_IDS_BY_LENS_KEY = stringPreferencesKey("raw_dcp_ids_by_lens")
        private val RAW_COLOR_ENGINE_KEY = stringPreferencesKey("raw_color_engine")
        private val RAW_AGX_BLACK_RELATIVE_EXPOSURE_KEY = floatPreferencesKey("raw_agx_black_relative_exposure")
        private val RAW_AGX_WHITE_RELATIVE_EXPOSURE_KEY = floatPreferencesKey("raw_agx_white_relative_exposure")
        private val RAW_AGX_TOE_KEY = floatPreferencesKey("raw_agx_toe")
        private val RAW_AGX_SHOULDER_KEY = floatPreferencesKey("raw_agx_shoulder")
        private val RAW_FILMIC_BLACK_RELATIVE_EXPOSURE_KEY = floatPreferencesKey("raw_filmic_black_relative_exposure")
        private val RAW_FILMIC_WHITE_RELATIVE_EXPOSURE_KEY = floatPreferencesKey("raw_filmic_white_relative_exposure")
        private val RAW_GOOGLE_PIXEL_TONE_MAP_KEY = booleanPreferencesKey("raw_google_pixel_tone_map")
        private val RAW_OPPO_MASTER_TONE_MAP_KEY = booleanPreferencesKey("raw_oppo_master_tone_map")
        private val RAW_NLM_NOISE_FACTOR_KEY = floatPreferencesKey("raw_nlm_noise_factor")
        private val RAW_EXPOSURE_COMPENSATION_KEY = floatPreferencesKey("raw_exposure_compensation")
        private val RAW_AUTO_EXPOSURE_KEY = booleanPreferencesKey("raw_auto_exposure")
        private val RAW_HIGHLIGHTS_ADJUSTMENT_KEY = floatPreferencesKey("raw_highlights_adjustment")
        private val RAW_SHADOWS_ADJUSTMENT_KEY = floatPreferencesKey("raw_shadows_adjustment")
        private val RAW_MIN_SHUTTER_SPEED_NS_KEY = longPreferencesKey("raw_min_shutter_speed_ns")
        private val RAW_DRO_ENABLED_KEY = booleanPreferencesKey("raw_dro_enabled")
        private val RAW_BLACK_POINT_CORRECTION_KEY = floatPreferencesKey("raw_black_point_correction")
        private val RAW_WHITE_POINT_CORRECTION_KEY = floatPreferencesKey("raw_white_point_correction")
        private val RAW_AUTO_WHITE_BALANCE_ESTIMATE_KEY = booleanPreferencesKey("raw_auto_white_balance_estimate")
        private val RAW_SPECTRAL_FILM_TUNINGS_BY_STOCK_KEY = stringPreferencesKey("raw_spectral_film_tunings_by_stock")
        private val RAW_BLACK_LEVEL_MODES_KEY = stringPreferencesKey("raw_black_level_modes")
        private val RAW_CUSTOM_BLACK_LEVELS_KEY = stringPreferencesKey("raw_custom_black_levels")
        private val RAW_WHITE_LEVEL_MODES_KEY = stringPreferencesKey("raw_white_level_modes")
        private val RAW_CFA_CORRECTION_MODES_KEY = stringPreferencesKey("raw_cfa_correction_modes")
        private val EXPORT_DNG_WITH_RAW_EXPORT_KEY = booleanPreferencesKey("export_dng_with_raw_export")
        private val PHANTOM_BASELINE_LUT_ID_KEY = stringPreferencesKey("phantom_baseline_lut_id")
        private val FRAME_ID_KEY = stringPreferencesKey("frame_id")
        private val SHOW_HISTOGRAM = booleanPreferencesKey("show_histogram")
        private val SHOW_GRID = booleanPreferencesKey("show_grid")
        private val SHOW_LEVEL_INDICATOR = booleanPreferencesKey("show_level_indicator")
        private val FOCUS_PEAKING_ENABLED = booleanPreferencesKey("focus_peaking_enabled")
        private val AI_FOCUS_TARGET_MODE = stringPreferencesKey("ai_focus_target_mode")
        private val AI_FOCUS_SCORE_THRESHOLD = floatPreferencesKey("ai_focus_score_threshold")
        private val SHUTTER_SOUND_ENABLED = booleanPreferencesKey("shutter_sound_enabled")
        private val VIBRATION_ENABLED = booleanPreferencesKey("vibration_enabled")
        private val KEEP_SCREEN_ON = booleanPreferencesKey("keep_screen_on")
        private val WINDOW_SCREEN_BRIGHTNESS = floatPreferencesKey("window_screen_brightness")
        private val VOLUME_KEY_ACTION = stringPreferencesKey("volume_key_action")
        private val AUTO_SAVE_AFTER_CAPTURE = booleanPreferencesKey("auto_save_after_capture")
        private val PHOTO_SAVE_PATH = stringPreferencesKey("photo_save_path")
        private val PHOTO_SAVE_TREE_URI = stringPreferencesKey("photo_save_tree_uri")
        private val NR_LEVEL = intPreferencesKey("nr_level")
        private val EDGE_LEVEL = intPreferencesKey("edge_level")
        private val VENDOR_CAPTURE_SETTINGS = stringPreferencesKey("vendor_capture_settings")
        private val USE_RAW = booleanPreferencesKey("use_raw")
        private val RAW_LENS_SHADING_CORRECTION_ENABLED = booleanPreferencesKey("raw_lens_shading_correction_enabled")
        private val METERING_MODE = stringPreferencesKey("metering_mode")

        // 软件处理参数 Keys
        private val SHARPENING = floatPreferencesKey("sharpening")
        private val NOISE_REDUCTION = floatPreferencesKey("noise_reduction")
        private val CHROMA_NOISE_REDUCTION = floatPreferencesKey("chroma_noise_reduction")

        // 排序 Keys
        private val FILTER_ORDER = stringPreferencesKey("filter_order")
        private val FRAME_ORDER = stringPreferencesKey("frame_order")
        private val CATEGORY_ORDER = stringPreferencesKey("category_order")
        private val LUT_SELECTOR_MODE = stringPreferencesKey("lut_selector_mode")

        // 摄像头方向偏移 Key
        private val CAMERA_ORIENTATION_OFFSETS = stringPreferencesKey("camera_orientation_offsets")

        // 默认焦段 Key
        private val DEFAULT_FOCAL_LENGTH = floatPreferencesKey("default_focal_length")
        private val ZOOM_DISPLAY_MODE = stringPreferencesKey("zoom_display_mode")

        // 多帧合成 Key
        private val USE_MULTI_FRAME = booleanPreferencesKey("use_multi_frame")
        private val USE_HDR_COMPOSITION = booleanPreferencesKey("use_hdr_composition")
        private val MULTI_FRAME_COUNT = intPreferencesKey("multi_frame_count")
        private val USE_MULTIPLE_EXPOSURE = booleanPreferencesKey("use_multiple_exposure")
        private val MULTIPLE_EXPOSURE_COUNT = intPreferencesKey("multiple_exposure_count")
        private val USE_SUPER_RESOLUTION = booleanPreferencesKey("use_super_resolution")
        private val RAW_SUPER_RESOLUTION_SCALE = floatPreferencesKey("raw_super_resolution_scale")
        private val PHOTO_QUALITY = intPreferencesKey("photo_quality")
        private val USE_HEIC_EXPORT = booleanPreferencesKey("use_heic_export")
        private val USE_LIVE_PHOTO = booleanPreferencesKey("use_live_photo")
        private val ENABLE_DEVELOP_ANIMATION = booleanPreferencesKey("enable_develop_animation")
        private val BACKGROUND_IMAGE = stringPreferencesKey("background_image")
        private val USE_GPU_ACCELERATION = booleanPreferencesKey("use_gpu_acceleration")
        private val DRO_MODE = stringPreferencesKey("dro_mode")
        private val TONEMAP_MODE = stringPreferencesKey("tonemap_mode")
        private val NATURAL_LIGHT_ENABLED = booleanPreferencesKey("natural_light_enabled")
        private val NATURAL_LIGHT_WARNING_SHOWN = booleanPreferencesKey("natural_light_warning_shown")
        private val FIX_TONEMAP_PREVIEW = booleanPreferencesKey("fix_tonemap_preview")
        private val FIX_TONEMAP_CAPTURE = booleanPreferencesKey("fix_tonemap_capture")
        private val APPLY_ULTRA_HDR = booleanPreferencesKey("apply_ultra_hdr")
        private val COLOR_SPACE = stringPreferencesKey("color_space")
        private val LOG_CURVE = stringPreferencesKey("log_curve")
        private val USE_P010 = booleanPreferencesKey("use_p010")
        private val USE_HLG10 = booleanPreferencesKey("use_hlg10")
        private val HLG_HARDWARE_COMPATIBILITY_ENABLED = booleanPreferencesKey("hlg_hardware_compatibility_enabled")
        private val USE_P3_COLOR_SPACE = booleanPreferencesKey("use_p3_color_space")
        private val QUICK_SHOT_RESOLUTION = stringPreferencesKey("quick_shot_resolution")
        private val VIDEO_RESOLUTION = stringPreferencesKey("video_resolution")
        private val VIDEO_FPS = stringPreferencesKey("video_fps")
        private val VIDEO_ASPECT_RATIO = stringPreferencesKey("video_aspect_ratio")
        private val VIDEO_LOG_PROFILE = stringPreferencesKey("video_log_profile")
        private val VIDEO_BITRATE = stringPreferencesKey("video_bitrate")
        private val VIDEO_AUDIO_INPUT_ID = stringPreferencesKey("video_audio_input_id")
        private val VIDEO_RECORDING_PATH = stringPreferencesKey("video_recording_path")
        private val VIDEO_RECORDING_TREE_URI = stringPreferencesKey("video_recording_tree_uri")
        private val VIDEO_STABILIZATION_MODE = stringPreferencesKey("video_stabilization_mode")
        private val VIDEO_TORCH_ENABLED = booleanPreferencesKey("video_torch_enabled")
        private val VIDEO_CODEC = stringPreferencesKey("video_codec")
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
        private val CUSTOM_FOCAL_LENGTHS = stringPreferencesKey("custom_focal_lengths")
        private val CUSTOM_LENS_IDS = stringPreferencesKey("custom_lens_ids")
        private val LENS_ID_BLACKLIST = stringPreferencesKey("lens_id_blacklist")
        private val ISZ_LENS_CONFIGS = stringPreferencesKey("isz_lens_configs")
        private val PREFERRED_MAIN_CAMERA_ID = stringPreferencesKey("preferred_main_camera_id")
        private val ENABLE_LOGICAL_MULTI_CAMERA_DISCOVERY = booleanPreferencesKey("enable_logical_multi_camera_discovery")
        private val LOGICAL_CAMERA_BINDING_WHITELIST = stringPreferencesKey("logical_camera_binding_whitelist")
        private val HIDDEN_FOCAL_LENGTHS = stringPreferencesKey("hidden_focal_lengths")
        private val USE_HDR_SCREEN_MODE = booleanPreferencesKey("use_hdr_screen_mode")
        private val REFERENCE_PHOTO_URL = stringPreferencesKey("reference_photo_url")
        private val DELETE_EXPORTED = booleanPreferencesKey("delete_exported")
        private val RAW_SPECTRAL_FILM_STOCK_KEY = stringPreferencesKey("raw_spectral_film_stock")
        private val RAW_SPECTRAL_FILM_PRINT_KEY = stringPreferencesKey("raw_spectral_film_print")
        private val ACTIVE_EFFECT_PARAMS_JSON = stringPreferencesKey("active_effect_params_json")
        private val CUSTOM_PRESETS_JSON = stringPreferencesKey("custom_presets_json")
        private val ACTIVE_PRESET_ID = stringPreferencesKey("active_preset_id")
        private val DELETED_BUILT_IN_IDS = stringPreferencesKey("deleted_built_in_ids")
        private val CAMERA_STARTUP_DEFAULTS_RESTORED_V1 =
            booleanPreferencesKey("camera_startup_defaults_restored_v1")
    }

    /**
     * 用户偏好设置 Flow
     */
    val userPreferences: Flow<UserPreferences> = context.dataStore.data
        .map { preferences ->
            val customAspectRatios = parseCustomAspectRatios(preferences[CUSTOM_ASPECT_RATIOS])
            val availableAspectRatios = AspectRatio.entries + customAspectRatios
            val rawBaselineLutConfigured = preferences[RAW_BASELINE_LUT_CONFIGURED_KEY]
                ?: preferences.contains(RAW_BASELINE_LUT_ID_KEY)
            UserPreferences(
                captureMode = CaptureMode.valueOf(preferences[CAPTURE_MODE] ?: CaptureMode.PHOTO.name),
                aspectRatio = preferences[ASPECT_RATIO_KEY] ?: "RATIO_4_3",
                topSheetAspectRatios = parseTopSheetAspectRatios(
                    preferences[TOP_SHEET_ASPECT_RATIOS],
                    availableAspectRatios
                ),
                customAspectRatios = customAspectRatios,
                lutId = preferences[LUT_ID_KEY]
                    ?: preferences[LEGACY_PHANTOM_LUT_ID_KEY],  // 不提供默认值，由 CameraViewModel 处理
                jpgBaselineLutId = preferences[JPG_BASELINE_LUT_ID_KEY],
                rawBaselineLutId = preferences[RAW_BASELINE_LUT_ID_KEY],
                rawBaselineLutConfigured = rawBaselineLutConfigured,
                rawDcpId = preferences[RAW_DCP_ID_KEY],
                rawDcpIdsByLens = parseNullableStringMap(preferences[RAW_DCP_IDS_BY_LENS_KEY]),
                rawRenderingEngine = RawRenderingEngine.fromPersistedName(preferences[RAW_COLOR_ENGINE_KEY]),
                rawToneMappingParameters = RawToneMappingParameters(
                    agxBlackRelativeExposure = preferences[RAW_AGX_BLACK_RELATIVE_EXPOSURE_KEY]
                        ?: RawToneMappingParameters.AGX_BLACK_RELATIVE_EXPOSURE_DEFAULT,
                    agxWhiteRelativeExposure = preferences[RAW_AGX_WHITE_RELATIVE_EXPOSURE_KEY]
                        ?: RawToneMappingParameters.AGX_WHITE_RELATIVE_EXPOSURE_DEFAULT,
                    agxToe = preferences[RAW_AGX_TOE_KEY] ?: RawToneMappingParameters.AGX_TOE_DEFAULT,
                    agxShoulder = preferences[RAW_AGX_SHOULDER_KEY] ?: RawToneMappingParameters.AGX_SHOULDER_DEFAULT,
                    filmicBlackRelativeExposure = preferences[RAW_FILMIC_BLACK_RELATIVE_EXPOSURE_KEY]
                        ?: RawToneMappingParameters.FILMIC_BLACK_RELATIVE_EXPOSURE_DEFAULT,
                    filmicWhiteRelativeExposure = preferences[RAW_FILMIC_WHITE_RELATIVE_EXPOSURE_KEY]
                        ?: RawToneMappingParameters.FILMIC_WHITE_RELATIVE_EXPOSURE_DEFAULT,
                    useGooglePixelToneMap = preferences[RAW_GOOGLE_PIXEL_TONE_MAP_KEY] ?: false,
                    useOppoMasterToneMap = preferences[RAW_OPPO_MASTER_TONE_MAP_KEY] ?: false
                ).normalized(),
                rawNlmNoiseFactor = preferences[RAW_NLM_NOISE_FACTOR_KEY] ?: 0f,
                rawExposureCompensation = preferences[RAW_EXPOSURE_COMPENSATION_KEY] ?: 0f,
                rawAutoExposure = preferences[RAW_AUTO_EXPOSURE_KEY] ?: true,
                rawHighlightsAdjustment = preferences[RAW_HIGHLIGHTS_ADJUSTMENT_KEY] ?: 0f,
                rawShadowsAdjustment = preferences[RAW_SHADOWS_ADJUSTMENT_KEY] ?: 0f,
                rawMinShutterSpeedNs = preferences[RAW_MIN_SHUTTER_SPEED_NS_KEY] ?: 0L,
                rawDROEnabled = preferences[RAW_DRO_ENABLED_KEY] ?: false,
                rawBlackPointCorrection = preferences[RAW_BLACK_POINT_CORRECTION_KEY] ?: 0f,
                rawWhitePointCorrection = preferences[RAW_WHITE_POINT_CORRECTION_KEY] ?: 0f,
                rawAutoWhiteBalanceEstimate = preferences[RAW_AUTO_WHITE_BALANCE_ESTIMATE_KEY] ?: false,
                rawLensShadingCorrectionEnabled = preferences[RAW_LENS_SHADING_CORRECTION_ENABLED] ?: true,
                rawBlackLevelModes = parseMapString(preferences[RAW_BLACK_LEVEL_MODES_KEY]),
                rawCustomBlackLevels = parseMapFloat(preferences[RAW_CUSTOM_BLACK_LEVELS_KEY]),
                rawWhiteLevelModes = parseMapString(preferences[RAW_WHITE_LEVEL_MODES_KEY]),
                rawCfaCorrectionModes = parseMapString(preferences[RAW_CFA_CORRECTION_MODES_KEY]),
                exportDngWithRawExport = preferences[EXPORT_DNG_WITH_RAW_EXPORT_KEY] ?: false,
                phantomBaselineLutId = preferences[PHANTOM_BASELINE_LUT_ID_KEY],
                frameId = preferences[FRAME_ID_KEY],
                showHistogram = preferences[SHOW_HISTOGRAM] ?: true,
                showGrid = preferences[SHOW_GRID] ?: false,
                showLevelIndicator = preferences[SHOW_LEVEL_INDICATOR] ?: false,
                focusPeakingEnabled = preferences[FOCUS_PEAKING_ENABLED] ?: true,
                aiFocusTargetMode = runCatching {
                    AiFocusTargetMode.valueOf(preferences[AI_FOCUS_TARGET_MODE] ?: AiFocusTargetMode.OFF.name)
                }.getOrDefault(AiFocusTargetMode.OFF),
                aiFocusScoreThreshold = (preferences[AI_FOCUS_SCORE_THRESHOLD] ?: 0.5f).coerceIn(0.05f, 0.95f),
                shutterSoundEnabled = preferences[SHUTTER_SOUND_ENABLED] ?: true,
                vibrationEnabled = preferences[VIBRATION_ENABLED] ?: true,
                keepScreenOn = preferences[KEEP_SCREEN_ON] ?: false,
                windowScreenBrightness = preferences[WINDOW_SCREEN_BRIGHTNESS]?.coerceIn(0f, 1f),
                volumeKeyAction = VolumeKeyAction.valueOf(
                    preferences[VOLUME_KEY_ACTION] ?: VolumeKeyAction.CAPTURE.name
                ),
                autoSaveAfterCapture = preferences[AUTO_SAVE_AFTER_CAPTURE] ?: true,
                photoSavePath = PhotoSavePath.fromPersistedName(preferences[PHOTO_SAVE_PATH]),
                photoSaveTreeUri = preferences[PHOTO_SAVE_TREE_URI]?.takeIf { it.isNotBlank() },
                nrLevel = preferences[NR_LEVEL] ?: 5,
                edgeLevel = preferences[EDGE_LEVEL] ?: 1,
                vendorCaptureSettingsByLens = VendorCaptureSettingsByLens.deserialize(
                    preferences[VENDOR_CAPTURE_SETTINGS]
                ),
                useRaw = preferences[USE_RAW] ?: false,
                meteringMode = MeteringMode.valueOf(
                    preferences[METERING_MODE] ?: MeteringMode.SYSTEM_DEFAULT.name
                ),
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
                lutSelectorMode = runCatching {
                    LutSelectorMode.valueOf(preferences[LUT_SELECTOR_MODE] ?: LutSelectorMode.Style.name)
                }.getOrDefault(LutSelectorMode.Style),
                defaultFocalLength = preferences[DEFAULT_FOCAL_LENGTH] ?: 0f,
                zoomDisplayMode = preferences[ZOOM_DISPLAY_MODE] ?: "FOCAL_LENGTH",
                useMFNR = preferences[USE_MULTI_FRAME] ?: false,
                useHdrComposition = preferences[USE_HDR_COMPOSITION] ?: false,
                multiFrameCount = preferences[MULTI_FRAME_COUNT]
                    ?.coerceIn(MultiFrameConfig.MIN_FRAME_COUNT, MultiFrameConfig.MAX_FRAME_COUNT)
                    ?: MultiFrameConfig.DEFAULT_FRAME_COUNT,
                useMultipleExposure = preferences[USE_MULTIPLE_EXPOSURE] ?: false,
                multipleExposureCount = preferences[MULTIPLE_EXPOSURE_COUNT] ?: 2,
                useMFSR = preferences[USE_SUPER_RESOLUTION] ?: false,
                superResolutionScale = preferences[RAW_SUPER_RESOLUTION_SCALE] ?: 1.5f,
                photoQuality = preferences[PHOTO_QUALITY] ?: 95,
                useHeicExport = preferences[USE_HEIC_EXPORT] ?: false,
                useLivePhoto = preferences[USE_LIVE_PHOTO] ?: false,
                enableDevelopAnimation = preferences[ENABLE_DEVELOP_ANIMATION] ?: false,
                backgroundImage = preferences[BACKGROUND_IMAGE] ?: "camera_bg",
                useGpuAcceleration = preferences[USE_GPU_ACCELERATION] ?: DeviceUtil.defaultGpuAcceleration,
                droMode = preferences[DRO_MODE] ?: if (preferences[RAW_DRO_ENABLED_KEY] == true) "DR100" else "OFF",
                tonemapMode = sanitizeTonemapMode(preferences[TONEMAP_MODE] ?: "SYSTEM_DEFAULT"),
                naturalLightEnabled = preferences[NATURAL_LIGHT_ENABLED] ?: false,
                naturalLightWarningShown = preferences[NATURAL_LIGHT_WARNING_SHOWN] ?: false,
                fixTonemapPreview = preferences[FIX_TONEMAP_PREVIEW] ?: false,
                fixTonemapCapture = preferences[FIX_TONEMAP_CAPTURE] ?: false,
                applyUltraHDR = preferences[APPLY_ULTRA_HDR] ?: false,
                colorSpace = ColorSpace.valueOf(preferences[COLOR_SPACE] ?: ColorSpace.SRGB.name),
                logCurve = TransferCurve.fromPersistedName(preferences[LOG_CURVE] ?: TransferCurve.SRGB.name),
                rawLuts = parseRawLuts(preferences),
                useP010 = preferences[USE_P010] ?: false,
                useHlg10 = preferences[USE_HLG10] ?: false,
                hlgHardwareCompatibilityEnabled = preferences[HLG_HARDWARE_COMPATIBILITY_ENABLED] ?: false,
                useP3ColorSpace = preferences[USE_P3_COLOR_SPACE] ?: false,
                quickShotResolution = runCatching {
                    QuickShotResolutionPreset.valueOf(
                        preferences[QUICK_SHOT_RESOLUTION] ?: QuickShotResolutionPreset.FHD_1080P.name
                    )
                }.getOrDefault(QuickShotResolutionPreset.FHD_1080P),
                videoResolution = VideoResolutionPreset.valueOf(
                    preferences[VIDEO_RESOLUTION] ?: VideoResolutionPreset.FHD_1080P.name
                ),
                videoFps = VideoFpsPreset.valueOf(
                    preferences[VIDEO_FPS] ?: VideoFpsPreset.FPS_30.name
                ),
                videoAspectRatio = VideoAspectRatio.valueOf(
                    preferences[VIDEO_ASPECT_RATIO] ?: VideoAspectRatio.RATIO_16_9.name
                ),
                videoLogProfile = VideoLogProfile.valueOf(
                    preferences[VIDEO_LOG_PROFILE] ?: VideoLogProfile.OFF.name
                ),
                videoBitrate = VideoBitratePreset.valueOf(
                    preferences[VIDEO_BITRATE] ?: VideoBitratePreset.P1.name
                ),
                videoAudioInputId = preferences[VIDEO_AUDIO_INPUT_ID] ?: VIDEO_AUDIO_INPUT_AUTO,
                videoRecordingPath = VideoRecordingPath.fromPersistedName(preferences[VIDEO_RECORDING_PATH]),
                videoRecordingTreeUri = preferences[VIDEO_RECORDING_TREE_URI]?.takeIf { it.isNotBlank() },
                videoStabilizationMode = com.hinnka.mycamera.video.VideoStabilizationMode.valueOf(
                    preferences[VIDEO_STABILIZATION_MODE] ?: com.hinnka.mycamera.video.VideoStabilizationMode.OIS.name
                ),
                videoTorchEnabled = preferences[VIDEO_TORCH_ENABLED] ?: false,
                videoCodec = com.hinnka.mycamera.video.VideoCodec.valueOf(
                    preferences[VIDEO_CODEC] ?: com.hinnka.mycamera.video.VideoCodec.H264.name
                ),
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
                defaultVirtualAperture = preferences[DEFAULT_VIRTUAL_APERTURE] ?: 0f,
                customFocalLengths = preferences[CUSTOM_FOCAL_LENGTHS]
                    ?.split(",")?.filter { it.isNotEmpty() }
                    ?.mapNotNull { CustomFocalLengthValue.parsePersisted(it) }
                    ?: listOf(35f, 50f, 85f, 200f),
                customLensIds = parseLensIds(preferences[CUSTOM_LENS_IDS]),
                lensIdBlacklist = parseLensIds(preferences[LENS_ID_BLACKLIST]),
                iszLensConfigs = IszLensConfig.deserializeList(preferences[ISZ_LENS_CONFIGS]),
                preferredMainCameraId = preferences[PREFERRED_MAIN_CAMERA_ID]?.takeIf { it.isNotBlank() },
                enableLogicalMultiCameraDiscovery = preferences[ENABLE_LOGICAL_MULTI_CAMERA_DISCOVERY] ?: false,
                logicalCameraBindingWhitelist = parseLogicalCameraBindingWhitelist(
                    preferences[LOGICAL_CAMERA_BINDING_WHITELIST]
                ),
                hiddenFocalLengths = preferences[HIDDEN_FOCAL_LENGTHS]
                    ?.split(",")?.filter { it.isNotEmpty() }
                    ?.mapNotNull { it.toFloatOrNull() }
                    ?: emptyList(),
                useHdrScreenMode = preferences[USE_HDR_SCREEN_MODE] ?: true,
                referencePhotoUrl = preferences[REFERENCE_PHOTO_URL],
                deleteExported = preferences[DELETE_EXPORTED] ?: true,
                rawSpectralFilmStock = preferences[RAW_SPECTRAL_FILM_STOCK_KEY],
                rawSpectralFilmPrint = preferences[RAW_SPECTRAL_FILM_PRINT_KEY],
                rawSpectralFilmTuningsByStock = parseSpectralFilmTunings(preferences[RAW_SPECTRAL_FILM_TUNINGS_BY_STOCK_KEY]),
                activeEffectParamsJson = preferences[ACTIVE_EFFECT_PARAMS_JSON] ?: "",
                customPresetsJson = preferences[CUSTOM_PRESETS_JSON] ?: "",
                activePresetId = preferences[ACTIVE_PRESET_ID],
                deletedBuiltInIds = preferences[DELETED_BUILT_IN_IDS] ?: ""
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
                val separatorIndex = entry.lastIndexOf(":")
                if (separatorIndex <= 0 || separatorIndex == entry.lastIndex) return@mapNotNull null
                val cameraId = entry.substring(0, separatorIndex)
                val offset = entry.substring(separatorIndex + 1).toIntOrNull()
                if (offset != null && offset in listOf(0, 90, 180, 270)) {
                    cameraId to offset
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

    private fun parseMapString(value: String?): Map<String, String> {
        if (value.isNullOrEmpty()) return emptyMap()
        return value.split(",")
            .mapNotNull { entry ->
                val separatorIndex = entry.lastIndexOf(":")
                if (separatorIndex <= 0 || separatorIndex == entry.lastIndex) return@mapNotNull null
                entry.substring(0, separatorIndex) to entry.substring(separatorIndex + 1)
            }
            .toMap()
    }

    private fun serializeMapString(map: Map<String, String>): String {
        return map.entries.joinToString(",") { "${it.key}:${it.value}" }
    }

    private fun parseNullableStringMap(value: String?): Map<String, String?> {
        if (value.isNullOrEmpty()) return emptyMap()
        return runCatching {
            val root = JSONObject(value)
            buildMap {
                val keys = root.keys()
                while (keys.hasNext()) {
                    val key = keys.next()
                    if (key.isBlank()) continue
                    val rawValue = if (root.isNull(key)) null else root.optString(key)
                    put(key, rawValue?.takeIf { it.isNotBlank() })
                }
            }
        }.map { CameraPreset.normalizeRawDcpIdsByLens(it) }.getOrDefault(emptyMap())
    }

    private fun serializeNullableStringMap(map: Map<String, String?>): String {
        val root = JSONObject()
        CameraPreset.normalizeRawDcpIdsByLens(map).forEach { (key, value) ->
            root.put(key, value ?: JSONObject.NULL)
        }
        return root.toString()
    }

    private fun parseMapFloat(value: String?): Map<String, Float> {
        if (value.isNullOrEmpty()) return emptyMap()
        return value.split(",")
            .mapNotNull { entry ->
                val separatorIndex = entry.lastIndexOf(":")
                if (separatorIndex <= 0 || separatorIndex == entry.lastIndex) return@mapNotNull null
                val key = entry.substring(0, separatorIndex)
                val floatValue = entry.substring(separatorIndex + 1).toFloatOrNull()
                if (floatValue != null) key to floatValue else null
            }
            .toMap()
    }

    private fun serializeMapFloat(map: Map<String, Float>): String {
        return map.entries.joinToString(",") { "${it.key}:${it.value}" }
    }

    private fun parseSpectralFilmTunings(value: String?): Map<String, SpectralFilmTuning> {
        if (value.isNullOrEmpty()) return emptyMap()
        return value.split(",")
            .mapNotNull { entry ->
                val parts = entry.split(":")
                if (parts.size == 4) {
                    val c = parts[1].toFloatOrNull()
                    val m = parts[2].toFloatOrNull()
                    val y = parts[3].toFloatOrNull()
                    if (c != null && m != null && y != null) {
                        parts[0] to SpectralFilmTuning(c, m, y).normalized()
                    } else {
                        null
                    }
                } else {
                    null
                }
            }
            .toMap()
    }

    private fun serializeSpectralFilmTunings(map: Map<String, SpectralFilmTuning>): String {
        return map.entries.joinToString(",") { (stock, tuning) ->
            val t = tuning.normalized()
            "$stock:${t.cDensityGain}:${t.mDensityGain}:${t.yDensityGain}"
        }
    }

    private fun parseLensIds(value: String?): List<String> {
        if (value.isNullOrBlank()) return emptyList()
        return value.split(",")
            .map { it.trim() }
            .filter { it.isNotEmpty() }
            .distinct()
    }

    private fun parseLogicalCameraBindingWhitelist(value: String?): List<String> {
        if (value.isNullOrBlank()) return emptyList()
        return normalizeLogicalCameraBindingWhitelist(value.split(","))
    }

    private fun normalizeLogicalCameraBindingWhitelist(values: Iterable<String>): List<String> {
        val normalizedBindings = mutableListOf<Pair<String, String>>()
        values.forEach { value ->
            val parts = value.trim().split("/", limit = 2)
            if (parts.size != 2) return@forEach

            val logicalCameraId = parts[0].trim()
            val physicalCameraId = parts[1].trim()
            if (logicalCameraId.isEmpty() || physicalCameraId.isEmpty()) {
                return@forEach
            }

            val existingIndex = normalizedBindings.indexOfFirst { it.second == physicalCameraId }
            if (existingIndex >= 0) {
                normalizedBindings.removeAt(existingIndex)
            }
            normalizedBindings.add(logicalCameraId to physicalCameraId)
        }
        return normalizedBindings.map { (logicalCameraId, physicalCameraId) ->
            "$logicalCameraId/$physicalCameraId"
        }
    }

    private fun parseRawLuts(preferences: Preferences): Map<String, String> {
        val result = mutableMapOf<String, String>()
        TransferCurve.entries.forEach { entry ->
            val default = when (entry) {
                TransferCurve.FLOG2 -> "PROVIA.plut"
                TransferCurve.SRGB -> "none"
                TransferCurve.LINEAR -> "none"
                else -> "sRGB.plut"
            }
            val value = preferences[stringPreferencesKey("${entry.name}_raw_lut")] ?: default
            result[entry.name] = value
        }
        return result
    }

    private fun parseCustomAspectRatios(value: String?): List<AspectRatio> {
        if (value.isNullOrBlank()) {
            return emptyList()
        }
        return AspectRatio.sanitizeCustomRatios(
            value.split(",")
                .mapNotNull { name -> AspectRatio.valueOfOrNull(name) }
        )
    }

    private fun parseTopSheetAspectRatios(
        value: String?,
        availableAspectRatios: List<AspectRatio>
    ): List<AspectRatio> {
        if (value.isNullOrBlank()) {
            return AspectRatio.defaultTopSheetRatios
        }
        val availableByName = availableAspectRatios.associateBy { it.name }
        val ratios = value.split(",")
            .mapNotNull { name ->
                availableByName[name] ?: AspectRatio.valueOfOrNull(name)
            }
        return AspectRatio.sanitizeTopSheetRatios(ratios)
    }

    /**
     * 保存是否同时删除系统相册中的导出图选择
     */
    suspend fun saveDeleteExported(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[DELETE_EXPORTED] = enabled
        }
    }

    /**
     * 保存参考图 URL
     */
    suspend fun saveReferencePhotoUrl(url: String?) {
        context.dataStore.edit { preferences ->
            if (url != null) {
                preferences[REFERENCE_PHOTO_URL] = url
            } else {
                preferences.remove(REFERENCE_PHOTO_URL)
            }
        }
    }

    /**
     * 保存最近拍摄模式
     */
    suspend fun saveCaptureMode(captureMode: CaptureMode) {
        context.dataStore.edit { preferences ->
            preferences[CAPTURE_MODE] = captureMode.name
        }
    }

    /**
     * 保存画面比例
     */
    suspend fun saveAspectRatio(aspectRatio: String) {
        context.dataStore.edit { preferences ->
            preferences[ASPECT_RATIO_KEY] = aspectRatio
        }
    }

    suspend fun saveTopSheetAspectRatios(aspectRatios: List<AspectRatio>) {
        context.dataStore.edit { preferences ->
            preferences[TOP_SHEET_ASPECT_RATIOS] = AspectRatio.sanitizeTopSheetRatios(aspectRatios)
                .joinToString(",") { it.name }
        }
    }

    suspend fun saveCustomAspectRatios(aspectRatios: List<AspectRatio>) {
        context.dataStore.edit { preferences ->
            preferences[CUSTOM_ASPECT_RATIOS] = AspectRatio.sanitizeCustomRatios(aspectRatios)
                .joinToString(",") { it.name }
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
            preferences.remove(LEGACY_PHANTOM_LUT_ID_KEY)
        }
    }

    suspend fun saveBaselineLutConfig(
        target: BaselineColorCorrectionTarget,
        lutId: String?
    ) {
        val key = when (target) {
            BaselineColorCorrectionTarget.JPG -> JPG_BASELINE_LUT_ID_KEY
            BaselineColorCorrectionTarget.RAW -> RAW_BASELINE_LUT_ID_KEY
            BaselineColorCorrectionTarget.PHANTOM -> PHANTOM_BASELINE_LUT_ID_KEY
        }
        context.dataStore.edit { preferences ->
            if (lutId != null) {
                preferences[key] = lutId
            } else {
                preferences.remove(key)
            }
            if (target == BaselineColorCorrectionTarget.RAW) {
                preferences[RAW_BASELINE_LUT_CONFIGURED_KEY] = true
            }
        }
    }

    suspend fun saveRawDcpId(dcpId: String?) {
        context.dataStore.edit { preferences ->
            if (dcpId != null) {
                preferences[RAW_DCP_ID_KEY] = dcpId
            } else {
                preferences.remove(RAW_DCP_ID_KEY)
            }
        }
    }

    suspend fun saveRawDcpIdsByLens(rawDcpIdsByLens: Map<String, String?>) {
        context.dataStore.edit { preferences ->
            val normalized = CameraPreset.normalizeRawDcpIdsByLens(rawDcpIdsByLens)
            if (normalized.isEmpty()) {
                preferences.remove(RAW_DCP_IDS_BY_LENS_KEY)
            } else {
                preferences[RAW_DCP_IDS_BY_LENS_KEY] = serializeNullableStringMap(normalized)
            }
        }
    }

    suspend fun removeRawDcpReferences(dcpId: String) {
        context.dataStore.edit { preferences ->
            if (preferences[RAW_DCP_ID_KEY] == dcpId) {
                preferences.remove(RAW_DCP_ID_KEY)
            }
            val rawDcpIdsByLens = parseNullableStringMap(preferences[RAW_DCP_IDS_BY_LENS_KEY])
                .filterValues { it != dcpId }
            if (rawDcpIdsByLens.isEmpty()) {
                preferences.remove(RAW_DCP_IDS_BY_LENS_KEY)
            } else {
                preferences[RAW_DCP_IDS_BY_LENS_KEY] = serializeNullableStringMap(rawDcpIdsByLens)
            }
        }
    }

    suspend fun saveRawNlmNoiseFactor(value: Float) {
        context.dataStore.edit { preferences ->
            preferences[RAW_NLM_NOISE_FACTOR_KEY] = value
        }
    }

    suspend fun saveRawToneMappingParameters(value: RawToneMappingParameters) {
        val normalized = value.normalized()
        context.dataStore.edit { preferences ->
            preferences[RAW_AGX_BLACK_RELATIVE_EXPOSURE_KEY] = normalized.agxBlackRelativeExposure
            preferences[RAW_AGX_WHITE_RELATIVE_EXPOSURE_KEY] = normalized.agxWhiteRelativeExposure
            preferences[RAW_AGX_TOE_KEY] = normalized.agxToe
            preferences[RAW_AGX_SHOULDER_KEY] = normalized.agxShoulder
            preferences[RAW_FILMIC_BLACK_RELATIVE_EXPOSURE_KEY] = normalized.filmicBlackRelativeExposure
            preferences[RAW_FILMIC_WHITE_RELATIVE_EXPOSURE_KEY] = normalized.filmicWhiteRelativeExposure
            preferences[RAW_GOOGLE_PIXEL_TONE_MAP_KEY] = normalized.useGooglePixelToneMap
            preferences[RAW_OPPO_MASTER_TONE_MAP_KEY] = normalized.useOppoMasterToneMap
        }
    }

    suspend fun saveRawExposureCompensation(value: Float) {
        context.dataStore.edit { preferences ->
            preferences[RAW_EXPOSURE_COMPENSATION_KEY] = value
        }
    }

    suspend fun saveRawAutoExposure(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[RAW_AUTO_EXPOSURE_KEY] = enabled
        }
    }

    suspend fun restoreCameraStartupDefaultsOnce(): Boolean {
        var restored = false
        context.dataStore.edit { preferences ->
            if (preferences[CAMERA_STARTUP_DEFAULTS_RESTORED_V1] == true) {
                return@edit
            }
            preferences[TONEMAP_MODE] = "SYSTEM_DEFAULT"
            preferences[NATURAL_LIGHT_ENABLED] = false
            preferences[RAW_AUTO_EXPOSURE_KEY] = true
            preferences[CAMERA_STARTUP_DEFAULTS_RESTORED_V1] = true
            restored = true
        }
        return restored
    }

    suspend fun saveRawHighlightsAdjustment(value: Float) {
        context.dataStore.edit { preferences ->
            preferences[RAW_HIGHLIGHTS_ADJUSTMENT_KEY] = value
        }
    }

    suspend fun saveRawShadowsAdjustment(value: Float) {
        context.dataStore.edit { preferences ->
            preferences[RAW_SHADOWS_ADJUSTMENT_KEY] = value
        }
    }

    suspend fun saveRawMinShutterSpeedNs(value: Long) {
        context.dataStore.edit { preferences ->
            if (value > 0L) {
                preferences[RAW_MIN_SHUTTER_SPEED_NS_KEY] = value
            } else {
                preferences.remove(RAW_MIN_SHUTTER_SPEED_NS_KEY)
            }
        }
    }

    suspend fun updateRawDROEnabled(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[RAW_DRO_ENABLED_KEY] = enabled
        }
    }

    suspend fun saveRawBlackPointCorrection(value: Float) {
        context.dataStore.edit { preferences ->
            preferences[RAW_BLACK_POINT_CORRECTION_KEY] = value
        }
    }

    suspend fun saveRawWhitePointCorrection(value: Float) {
        context.dataStore.edit { preferences ->
            preferences[RAW_WHITE_POINT_CORRECTION_KEY] = value
        }
    }

    suspend fun saveRawAutoWhiteBalanceEstimate(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[RAW_AUTO_WHITE_BALANCE_ESTIMATE_KEY] = enabled
        }
    }

    suspend fun saveRawLensShadingCorrectionEnabled(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[RAW_LENS_SHADING_CORRECTION_ENABLED] = enabled
        }
    }

    suspend fun saveRawBlackLevelMode(cameraId: String, mode: String) {
        context.dataStore.edit { preferences ->
            val current = parseMapString(preferences[RAW_BLACK_LEVEL_MODES_KEY])
            val updated = current.toMutableMap()
            updated[cameraId] = mode
            preferences[RAW_BLACK_LEVEL_MODES_KEY] = serializeMapString(updated)
        }
    }

    suspend fun saveRawCustomBlackLevel(cameraId: String, value: Float) {
        context.dataStore.edit { preferences ->
            val current = parseMapFloat(preferences[RAW_CUSTOM_BLACK_LEVELS_KEY])
            val updated = current.toMutableMap()
            updated[cameraId] = value
            preferences[RAW_CUSTOM_BLACK_LEVELS_KEY] = serializeMapFloat(updated)
        }
    }

    suspend fun saveRawWhiteLevelMode(cameraId: String, mode: String) {
        context.dataStore.edit { preferences ->
            val current = parseMapString(preferences[RAW_WHITE_LEVEL_MODES_KEY])
            val updated = current.toMutableMap()
            updated[cameraId] = mode
            preferences[RAW_WHITE_LEVEL_MODES_KEY] = serializeMapString(updated)
        }
    }

    suspend fun saveRawCfaCorrectionMode(cameraId: String, mode: String) {
        context.dataStore.edit { preferences ->
            val current = parseMapString(preferences[RAW_CFA_CORRECTION_MODES_KEY])
            val updated = current.toMutableMap()
            updated[cameraId] = mode
            preferences[RAW_CFA_CORRECTION_MODES_KEY] = serializeMapString(updated)
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
     * 保存是否启用手动对焦峰值显示
     */
    suspend fun saveFocusPeakingEnabled(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[FOCUS_PEAKING_ENABLED] = enabled
        }
    }

    suspend fun saveAiFocusTargetMode(mode: AiFocusTargetMode) {
        context.dataStore.edit { preferences ->
            preferences[AI_FOCUS_TARGET_MODE] = mode.name
        }
    }

    suspend fun saveAiFocusScoreThreshold(value: Float) {
        context.dataStore.edit { preferences ->
            preferences[AI_FOCUS_SCORE_THRESHOLD] = value.coerceIn(0.05f, 0.95f)
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
     * 保存是否保持屏幕常亮
     */
    suspend fun saveKeepScreenOn(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[KEEP_SCREEN_ON] = enabled
        }
    }

    /**
     * 保存 Activity 窗口屏幕亮度，null 表示使用系统默认亮度
     */
    suspend fun saveWindowScreenBrightness(value: Float?) {
        context.dataStore.edit { preferences ->
            if (value == null) {
                preferences.remove(WINDOW_SCREEN_BRIGHTNESS)
            } else {
                preferences[WINDOW_SCREEN_BRIGHTNESS] = value.coerceIn(0f, 1f)
            }
        }
    }

    /**
     * 保存视频防抖模式
     */
    suspend fun saveVideoStabilizationMode(mode: com.hinnka.mycamera.video.VideoStabilizationMode) {
        context.dataStore.edit { preferences ->
            preferences[VIDEO_STABILIZATION_MODE] = mode.name
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

    suspend fun savePhotoSavePath(savePath: PhotoSavePath, treeUri: String? = null) {
        context.dataStore.edit { preferences ->
            preferences[PHOTO_SAVE_PATH] = savePath.name
            val normalizedTreeUri = treeUri?.takeIf { it.isNotBlank() }
            if (savePath == PhotoSavePath.EXTERNAL_TREE && normalizedTreeUri != null) {
                preferences[PHOTO_SAVE_TREE_URI] = normalizedTreeUri
            } else {
                preferences.remove(PHOTO_SAVE_TREE_URI)
            }
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

    suspend fun saveVendorCaptureSettingsForLens(lensId: String, settings: VendorCaptureSettings) {
        if (lensId.isBlank()) return
        context.dataStore.edit { preferences ->
            val currentSettings = VendorCaptureSettingsByLens.deserialize(preferences[VENDOR_CAPTURE_SETTINGS])
            val updatedSettings = currentSettings.withSettings(lensId, settings)
            if (updatedSettings.isEnabled) {
                preferences[VENDOR_CAPTURE_SETTINGS] = updatedSettings.serialize()
            } else {
                preferences.remove(VENDOR_CAPTURE_SETTINGS)
            }
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

    suspend fun saveMeteringMode(mode: MeteringMode) {
        context.dataStore.edit { preferences ->
            preferences[METERING_MODE] = mode.name
        }
    }

    suspend fun saveUseHdrScreenMode(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[USE_HDR_SCREEN_MODE] = enabled
        }
    }

    suspend fun saveExportDngWithRawExport(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[EXPORT_DNG_WITH_RAW_EXPORT_KEY] = enabled
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

    suspend fun saveLutSelectorMode(mode: LutSelectorMode) {
        context.dataStore.edit { preferences ->
            preferences[LUT_SELECTOR_MODE] = mode.name
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

    suspend fun saveZoomDisplayMode(mode: String) {
        context.dataStore.edit { preferences ->
            preferences[ZOOM_DISPLAY_MODE] = mode
        }
    }

    suspend fun saveCustomFocalLengths(focalLengths: List<Float>) {
        context.dataStore.edit { preferences ->
            preferences[CUSTOM_FOCAL_LENGTHS] = focalLengths.joinToString(",") {
                CustomFocalLengthValue.serialize(it)
            }
        }
    }

    suspend fun saveHiddenFocalLengths(focalLengths: List<Float>) {
        context.dataStore.edit { preferences ->
            preferences[HIDDEN_FOCAL_LENGTHS] = focalLengths.joinToString(",")
        }
    }

    suspend fun saveCustomLensIds(lensIds: List<String>) {
        context.dataStore.edit { preferences ->
            preferences[CUSTOM_LENS_IDS] = lensIds
                .map { it.trim() }
                .filter { it.isNotEmpty() }
                .distinct()
                .joinToString(",")
        }
    }

    suspend fun saveLensIdBlacklist(lensIds: List<String>) {
        context.dataStore.edit { preferences ->
            preferences[LENS_ID_BLACKLIST] = lensIds
                .map { it.trim() }
                .filter { it.isNotEmpty() }
                .distinct()
                .joinToString(",")
        }
    }

    suspend fun saveIszLensConfigs(configs: List<IszLensConfig>) {
        context.dataStore.edit { preferences ->
            val sanitizedConfigs = configs
                .filter { it.baseCameraId.isNotBlank() && it.iszZoomRatio >= 1f }
                .distinctBy { it.virtualCameraId }
            if (sanitizedConfigs.isEmpty()) {
                preferences.remove(ISZ_LENS_CONFIGS)
            } else {
                preferences[ISZ_LENS_CONFIGS] = IszLensConfig.serializeList(sanitizedConfigs)
            }
        }
    }

    suspend fun savePreferredMainCameraId(cameraId: String?) {
        context.dataStore.edit { preferences ->
            val normalizedCameraId = cameraId?.trim()?.takeIf { it.isNotEmpty() }
            if (normalizedCameraId == null) {
                preferences.remove(PREFERRED_MAIN_CAMERA_ID)
            } else {
                preferences[PREFERRED_MAIN_CAMERA_ID] = normalizedCameraId
            }
        }
    }

    suspend fun saveEnableLogicalMultiCameraDiscovery(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[ENABLE_LOGICAL_MULTI_CAMERA_DISCOVERY] = enabled
        }
    }

    suspend fun saveLogicalCameraBindingWhitelist(bindings: List<String>) {
        context.dataStore.edit { preferences ->
            preferences[LOGICAL_CAMERA_BINDING_WHITELIST] = normalizeLogicalCameraBindingWhitelist(bindings)
                .joinToString(",")
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
            preferences[MULTI_FRAME_COUNT] = count.coerceIn(
                MultiFrameConfig.MIN_FRAME_COUNT,
                MultiFrameConfig.MAX_FRAME_COUNT
            )
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

    suspend fun saveUseHeicExport(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[USE_HEIC_EXPORT] = enabled
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
     * 保存色调映射模式
     */
    suspend fun saveTonemapMode(mode: String) {
        context.dataStore.edit { preferences ->
            preferences[TONEMAP_MODE] = sanitizeTonemapMode(mode)
        }
    }

    /**
     * 保存是否启用自然光影
     */
    suspend fun saveNaturalLightEnabled(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[NATURAL_LIGHT_ENABLED] = enabled
        }
    }

    suspend fun saveNaturalLightWarningShown(shown: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[NATURAL_LIGHT_WARNING_SHOWN] = shown
        }
    }

    /**
     * 保存是否修复自定义色调映射预览异常
     */
    suspend fun saveFixTonemapPreview(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[FIX_TONEMAP_PREVIEW] = enabled
        }
    }

    /**
     * 保存是否修复自定义色调映射拍摄异常
     */
    suspend fun saveFixTonemapCapture(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[FIX_TONEMAP_CAPTURE] = enabled
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
    suspend fun saveLogCurve(logCurve: TransferCurve) {
        context.dataStore.edit { preferences ->
            preferences[LOG_CURVE] = logCurve.name
        }
    }

    /**
     * 保存针对特定 Log 曲线的 RAW 还原 LUT
     */
    suspend fun saveRawLut(logCurve: TransferCurve, lut: String) {
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

    suspend fun saveHlgHardwareCompatibilityEnabled(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[HLG_HARDWARE_COMPATIBILITY_ENABLED] = enabled
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

    suspend fun saveQuickShotResolution(resolution: QuickShotResolutionPreset) {
        context.dataStore.edit { preferences ->
            preferences[QUICK_SHOT_RESOLUTION] = resolution.name
        }
    }

    suspend fun saveVideoResolution(resolution: VideoResolutionPreset) {
        context.dataStore.edit { preferences ->
            preferences[VIDEO_RESOLUTION] = resolution.name
        }
    }

    suspend fun saveVideoFps(fps: VideoFpsPreset) {
        context.dataStore.edit { preferences ->
            preferences[VIDEO_FPS] = fps.name
        }
    }

    suspend fun saveVideoAspectRatio(aspectRatio: VideoAspectRatio) {
        context.dataStore.edit { preferences ->
            preferences[VIDEO_ASPECT_RATIO] = aspectRatio.name
        }
    }

    suspend fun saveVideoLogProfile(logProfile: VideoLogProfile) {
        context.dataStore.edit { preferences ->
            preferences[VIDEO_LOG_PROFILE] = logProfile.name
        }
    }

    suspend fun saveVideoBitrate(bitrate: VideoBitratePreset) {
        context.dataStore.edit { preferences ->
            preferences[VIDEO_BITRATE] = bitrate.name
        }
    }

    suspend fun saveVideoAudioInputId(audioInputId: String) {
        context.dataStore.edit { preferences ->
            preferences[VIDEO_AUDIO_INPUT_ID] = audioInputId
        }
    }

    suspend fun saveVideoRecordingPath(recordingPath: VideoRecordingPath, treeUri: String? = null) {
        context.dataStore.edit { preferences ->
            preferences[VIDEO_RECORDING_PATH] = recordingPath.name
            val normalizedTreeUri = treeUri?.takeIf { it.isNotBlank() }
            if (recordingPath == VideoRecordingPath.EXTERNAL_TREE && normalizedTreeUri != null) {
                preferences[VIDEO_RECORDING_TREE_URI] = normalizedTreeUri
            } else {
                preferences.remove(VIDEO_RECORDING_TREE_URI)
            }
        }
    }

    suspend fun saveVideoTorchEnabled(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[VIDEO_TORCH_ENABLED] = enabled
        }
    }

    suspend fun saveVideoCodec(codec: com.hinnka.mycamera.video.VideoCodec) {
        context.dataStore.edit { preferences ->
            preferences[VIDEO_CODEC] = codec.name
        }
    }

    suspend fun saveAutoEnableHdrForHdrCapture(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[AUTO_ENABLE_HDR_FOR_HDR_CAPTURE] = enabled
        }
    }

    suspend fun saveUseHdrComposition(enabled: Boolean) {
        context.dataStore.edit { preferences ->
            preferences[USE_HDR_COMPOSITION] = enabled
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

    suspend fun saveRawColorEngine(engine: RawRenderingEngine) {
        context.dataStore.edit { preferences ->
            preferences[RAW_COLOR_ENGINE_KEY] = engine.name
        }
    }

    suspend fun saveRawSpectralFilmStock(stock: String?) {
        context.dataStore.edit { preferences ->
            if (stock != null) {
                preferences[RAW_SPECTRAL_FILM_STOCK_KEY] = stock
            } else {
                preferences.remove(RAW_SPECTRAL_FILM_STOCK_KEY)
            }
        }
    }

    suspend fun saveRawSpectralFilmPrint(print: String?) {
        context.dataStore.edit { preferences ->
            if (print != null) {
                preferences[RAW_SPECTRAL_FILM_PRINT_KEY] = print
            } else {
                preferences.remove(RAW_SPECTRAL_FILM_PRINT_KEY)
            }
        }
    }

    suspend fun saveRawSpectralFilmTuning(filmStock: String, tuning: SpectralFilmTuning) {
        context.dataStore.edit { preferences ->
            val tunings = parseSpectralFilmTunings(preferences[RAW_SPECTRAL_FILM_TUNINGS_BY_STOCK_KEY]).toMutableMap()
            tunings[filmStock] = tuning.normalized()
            preferences[RAW_SPECTRAL_FILM_TUNINGS_BY_STOCK_KEY] = serializeSpectralFilmTunings(tunings)
        }
    }

    suspend fun saveActiveEffectParams(effects: EffectParams) {
        context.dataStore.edit { preferences ->
            preferences[ACTIVE_EFFECT_PARAMS_JSON] = effects.toJson()
        }
    }

    suspend fun saveCameraFeaturePreferences(update: CameraFeaturePreferencesUpdate) {
        context.dataStore.edit { preferences ->
            update.lutId?.let {
                if (it.value != null) {
                    preferences[LUT_ID_KEY] = it.value
                } else {
                    preferences.remove(LUT_ID_KEY)
                }
                preferences.remove(LEGACY_PHANTOM_LUT_ID_KEY)
            }
            update.effects?.let {
                preferences[ACTIVE_EFFECT_PARAMS_JSON] = it.value.toJson()
            }
            update.aspectRatio?.let {
                preferences[ASPECT_RATIO_KEY] = it.value
            }
            update.useRaw?.let {
                preferences[USE_RAW] = it.value
            }
            update.useMFNR?.let {
                preferences[USE_MULTI_FRAME] = it.value
            }
            update.useHdrComposition?.let {
                preferences[USE_HDR_COMPOSITION] = it.value
            }
            update.useMFSR?.let {
                preferences[USE_SUPER_RESOLUTION] = it.value
            }
            update.useMultipleExposure?.let {
                preferences[USE_MULTIPLE_EXPOSURE] = it.value
            }
            update.frameId?.let {
                if (it.value != null) {
                    preferences[FRAME_ID_KEY] = it.value
                } else {
                    preferences.remove(FRAME_ID_KEY)
                }
            }
            update.rawDcpId?.let {
                if (it.value != null) {
                    preferences[RAW_DCP_ID_KEY] = it.value
                } else {
                    preferences.remove(RAW_DCP_ID_KEY)
                }
            }
            update.rawDcpIdsByLens?.let {
                val normalized = CameraPreset.normalizeRawDcpIdsByLens(it.value)
                if (normalized.isEmpty()) {
                    preferences.remove(RAW_DCP_IDS_BY_LENS_KEY)
                } else {
                    preferences[RAW_DCP_IDS_BY_LENS_KEY] = serializeNullableStringMap(normalized)
                }
            }
            update.rawRenderingEngine?.let {
                preferences[RAW_COLOR_ENGINE_KEY] = it.value.name
            }
            update.rawToneMappingParameters?.let {
                val normalized = it.value.normalized()
                preferences[RAW_AGX_BLACK_RELATIVE_EXPOSURE_KEY] = normalized.agxBlackRelativeExposure
                preferences[RAW_AGX_WHITE_RELATIVE_EXPOSURE_KEY] = normalized.agxWhiteRelativeExposure
                preferences[RAW_AGX_TOE_KEY] = normalized.agxToe
                preferences[RAW_AGX_SHOULDER_KEY] = normalized.agxShoulder
                preferences[RAW_FILMIC_BLACK_RELATIVE_EXPOSURE_KEY] = normalized.filmicBlackRelativeExposure
                preferences[RAW_FILMIC_WHITE_RELATIVE_EXPOSURE_KEY] = normalized.filmicWhiteRelativeExposure
                preferences[RAW_GOOGLE_PIXEL_TONE_MAP_KEY] = normalized.useGooglePixelToneMap
                preferences[RAW_OPPO_MASTER_TONE_MAP_KEY] = normalized.useOppoMasterToneMap
            }
            update.rawSpectralFilmStock?.let {
                if (it.value != null) {
                    preferences[RAW_SPECTRAL_FILM_STOCK_KEY] = it.value
                } else {
                    preferences.remove(RAW_SPECTRAL_FILM_STOCK_KEY)
                }
            }
            update.rawSpectralFilmPrint?.let {
                if (it.value != null) {
                    preferences[RAW_SPECTRAL_FILM_PRINT_KEY] = it.value
                } else {
                    preferences.remove(RAW_SPECTRAL_FILM_PRINT_KEY)
                }
            }
            update.droMode?.let {
                val resolvedMode = RawProcessingPreferences.DROMode.fromPersistedName(it.value)
                preferences[DRO_MODE] = resolvedMode.name
                preferences[RAW_DRO_ENABLED_KEY] = resolvedMode.isEnabled
            }
            update.jpgBaselineLutId?.let {
                if (it.value != null) {
                    preferences[JPG_BASELINE_LUT_ID_KEY] = it.value
                } else {
                    preferences.remove(JPG_BASELINE_LUT_ID_KEY)
                }
            }
            update.rawBaselineLutId?.let {
                if (it.value != null) {
                    preferences[RAW_BASELINE_LUT_ID_KEY] = it.value
                } else {
                    preferences.remove(RAW_BASELINE_LUT_ID_KEY)
                }
                preferences[RAW_BASELINE_LUT_CONFIGURED_KEY] = true
            }
            update.phantomBaselineLutId?.let {
                if (it.value != null) {
                    preferences[PHANTOM_BASELINE_LUT_ID_KEY] = it.value
                } else {
                    preferences.remove(PHANTOM_BASELINE_LUT_ID_KEY)
                }
            }
            update.activePresetId?.let {
                if (it.value != null) {
                    preferences[ACTIVE_PRESET_ID] = it.value
                } else {
                    preferences.remove(ACTIVE_PRESET_ID)
                }
            }
        }
    }

    suspend fun saveCustomPresets(presets: List<CameraPreset>) {
        context.dataStore.edit { preferences ->
            preferences[CUSTOM_PRESETS_JSON] = CameraPreset.listToJson(presets)
        }
    }

    suspend fun saveActivePresetId(presetId: String?) {
        context.dataStore.edit { preferences ->
            if (presetId != null) {
                preferences[ACTIVE_PRESET_ID] = presetId
            } else {
                preferences.remove(ACTIVE_PRESET_ID)
            }
        }
    }

    suspend fun saveDeletedBuiltInIds(ids: String) {
        context.dataStore.edit { preferences ->
            preferences[DELETED_BUILT_IN_IDS] = ids
        }
    }
}
