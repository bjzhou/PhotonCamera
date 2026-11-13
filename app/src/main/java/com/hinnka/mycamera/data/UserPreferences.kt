package com.hinnka.mycamera.data

import androidx.datastore.preferences.core.MutablePreferences
import androidx.datastore.preferences.core.Preferences
import com.hinnka.mycamera.data.PreferenceKeys as K
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.emptyPreferences
import androidx.datastore.preferences.core.floatPreferencesKey
import androidx.datastore.preferences.core.intPreferencesKey
import androidx.datastore.preferences.core.longPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.CustomCaptureSettings
import com.hinnka.mycamera.camera.CustomFocalLengthValue
import com.hinnka.mycamera.camera.CustomVendorKeySettings
import com.hinnka.mycamera.camera.GridStyle
import com.hinnka.mycamera.camera.IszLensConfig
import com.hinnka.mycamera.camera.IszRawDngMetadataCorrections
import com.hinnka.mycamera.camera.MeteringMode
import com.hinnka.mycamera.camera.MultiFrameConfig
import com.hinnka.mycamera.camera.NoiseReductionLevel
import com.hinnka.mycamera.camera.VendorCaptureSettingsByLens
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.gallery.PhotoSavePath
import com.hinnka.mycamera.model.AppAppearance
import com.hinnka.mycamera.model.CameraPreset
import com.hinnka.mycamera.model.EffectParams
import com.hinnka.mycamera.model.LutSelectorMode
import com.hinnka.mycamera.processor.MgcRawMaxMode
import com.hinnka.mycamera.raw.CanonPictureStyle
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.raw.HncsFilmCurveMode
import com.hinnka.mycamera.raw.HncsProfileManager
import com.hinnka.mycamera.raw.HncsRenderIntent
import com.hinnka.mycamera.raw.LumixPhotoStyle
import com.hinnka.mycamera.raw.RawColorCalibrationMode
import com.hinnka.mycamera.raw.RawDenoiseDefaults
import com.hinnka.mycamera.raw.RawNoiseProfileManager
import com.hinnka.mycamera.raw.RawOutputUpscaleMode
import com.hinnka.mycamera.raw.RawProcessingPreferences
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawSceneExposureMath
import com.hinnka.mycamera.raw.RawSharpeningDefaults
import com.hinnka.mycamera.raw.RawToneMappingParameters
import com.hinnka.mycamera.raw.SpectralFilmTuning
import com.hinnka.mycamera.screencapture.PhantomPipCrop
import com.hinnka.mycamera.stabilization.DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD
import com.hinnka.mycamera.stabilization.DEFAULT_VIDEO_STABILIZATION_STRENGTH
import com.hinnka.mycamera.stabilization.ExternalLensStabilizationConfig
import com.hinnka.mycamera.stabilization.normalizeStabilizationLookahead
import com.hinnka.mycamera.stabilization.normalizeStabilizationStrength
import com.hinnka.mycamera.video.CaptureMode
import com.hinnka.mycamera.video.VIDEO_AUDIO_INPUT_AUTO
import com.hinnka.mycamera.video.VideoAspectRatio
import com.hinnka.mycamera.video.VideoBitratePreset
import com.hinnka.mycamera.video.VideoFpsPreset
import com.hinnka.mycamera.video.VideoLogLutMode
import com.hinnka.mycamera.video.VideoLogProfile
import com.hinnka.mycamera.video.VideoRecordingPath
import com.hinnka.mycamera.video.VideoResolutionPreset
import com.hinnka.mycamera.video.VideoStabilizationMode
import com.hinnka.mycamera.video.VideoInputMode
import com.hinnka.mycamera.video.VideoPipelineSettings
import kotlin.properties.ReadOnlyProperty
import kotlin.properties.ReadWriteProperty
import kotlin.reflect.KProperty

/**
 * 用户偏好设置。
 *
 * 每个实例对应 DataStore 的一份快照，同一实例上读取的所有字段彼此一致。
 * 每个设置项只需在这里用一行委托声明（key、默认值、编码方式）：
 *
 * ```
 * var keepScreenOn by bool("keep_screen_on", false)
 * ```
 *
 * 读取：任何使用点直接 `prefs.keepScreenOn`（`UserPreferencesRepository.current` / `flow` / Compose `preferenceValue`）。
 * 写入：`repository.update { keepScreenOn = true }`，同一个 block 内的多个赋值在一次事务中原子写入。
 * 在 `update {}`（或 [edited]）之外给字段赋值会直接报错。
 */
class UserPreferences internal constructor(
    internal val raw: Preferences = emptyPreferences(),
    private val writable: Boolean = false,
) {
    constructor() : this(emptyPreferences(), false)

    private val cache = HashMap<String, Any?>()

    @Suppress("UNCHECKED_CAST")
    internal fun <T> cached(name: String, compute: () -> T): T = synchronized(cache) {
        if (cache.containsKey(name)) cache[name] as T else compute().also { cache[name] = it }
    }

    internal fun mutablePreferences(): MutablePreferences {
        val preferences = raw
        check(writable && preferences is MutablePreferences) {
            "UserPreferences 只能在 UserPreferencesRepository.update {} 或 edited {} 中修改"
        }
        invalidate()
        return preferences
    }

    internal fun invalidate() = synchronized(cache) { cache.clear() }

    /** 在内存中得到修改后的副本（不落盘），用于"假如改成这样"的计算。 */
    fun edited(block: UserPreferences.() -> Unit): UserPreferences {
        val preferences = raw.toMutablePreferences()
        UserPreferences(preferences, writable = true).block()
        return UserPreferences(preferences.toPreferences())
    }

    override fun equals(other: Any?): Boolean = other is UserPreferences && other.raw == raw

    override fun hashCode(): Int = raw.hashCode()

    override fun toString(): String = "UserPreferences($raw)"

    var captureMode by enum("capture_mode", CaptureMode.PHOTO)
    var aspectRatio by string("aspect_ratio", "RATIO_4_3")
    var videoLutId by nullableString("video_lut_id")
    var rawBaselineLutId by nullableString("raw_baseline_lut_id")
    var rawDcpId by nullableString("raw_dcp_id")
    var rawExposureCompensation by float("raw_exposure_compensation", 0f, normalize = { it.coerceIn(-4f, 4f) })
    var rawHighlightsAdjustment by float("raw_highlights_adjustment", 0f, normalize = { it.coerceIn(-1f, 1f) })
    var rawShadowsAdjustment by float("raw_shadows_adjustment", 0f, normalize = { it.coerceIn(-1f, 1f) })
    var rawDROEnabled by bool("raw_dro_enabled", false)
    var rawBlackPointCorrection by float("raw_black_point_correction", 0f, normalize = { it.coerceIn(-1f, 1f) })
    var rawWhitePointCorrection by float("raw_white_point_correction", 0f, normalize = { it.coerceIn(-1f, 1f) })
    var frameId by nullableString("frame_id")
    var phantomFrameId by nullableString("phantom_frame_id")
    var shutterSoundFileName by nullableString("shutter_sound_file_name")
    var burstSoundFileName by nullableString("burst_sound_file_name")
    var zoomDisplayMode by string("zoom_display_mode", "FOCAL_LENGTH")
    var useMultipleExposure by bool("use_multiple_exposure", false)  // 是否启用多重曝光
    var rawDigitalZoomResamplingEnabled by bool("raw_digital_zoom_resampling_enabled", false)
    var useLivePhoto by bool("use_live_photo", false)  // 是否启用 Live Photo (Motion Photo)
    var developAnimationStyle by enum("develop_animation_style", DevelopAnimationStyle.FILM)
    var backgroundImage by string("background_image", "camera_bg")  // 背景图资源名或文件路径
    var captureButtonColor by int("capture_button_color", 0xFFFFFFFF.toInt())
    var colorSpace by enum("color_space", ColorSpace.SRGB)
    var videoAspectRatio by enum("video_aspect_ratio", VideoAspectRatio.RATIO_16_9)
    var videoLogLutMode by enum("video_log_lut_mode", VideoLogLutMode.MONITOR_ONLY)
    var videoBitrate by enum("video_bitrate", VideoBitratePreset.P1)
    var oppoSuperStabilizationEnabled by bool("oppo_super_stabilization_enabled", false)
    var photoPreviewStabilizationEnabled by bool("photo_preview_stabilization_enabled", false)
    var videoCodec by enum("video_codec", com.hinnka.mycamera.video.VideoCodec.H264)
    var ultraHdrGainMapEnabled by bool("auto_enable_hdr_for_hdr_capture", false)
    var phantomMode by bool("phantom_mode", false)
    var widgetTheme by enum("widget_theme", WidgetTheme.FOLLOW_SYSTEM)
    var referencePhotoUrl by nullableString("reference_photo_url")
    var rawSpectralFilmStock by nullableString("raw_spectral_film_stock")
    var rawSpectralFilmPrint by nullableString("raw_spectral_film_print")
    var rawFotufilmDocument by nullableString("raw_fotufilm_document")
    var activeEffectParamsJson by string("active_effect_params_json", "")
    var customPresetsJson by string("custom_presets_json", "")
    var activePresetId by nullableString("active_preset_id")
    var deletedBuiltInIds by string("deleted_built_in_ids", "")
    var showLevelIndicator by bool("show_level_indicator", false)  // 水平仪显示
    var focusPeakingEnabled by bool("focus_peaking_enabled", true)  // 手动对焦峰值显示
    var showHistogram by bool("show_histogram", true)
    var showGrid by bool("show_grid", false)  // 网格线显示
    var eyeFocusEnabled by bool("eye_focus_enabled", false)  // MediaPipe 人眼对焦
    var shutterSoundEnabled by bool("shutter_sound_enabled", true)  // 快门声音
    var vibrationEnabled by bool("vibration_enabled", true)  // 拍摄震动
    var keepScreenOn by bool("keep_screen_on", false)  // 屏幕常亮
    var volumeKeyAction by enum("volume_key_action", VolumeKeyAction.CAPTURE)  // 音量键操作
    var autoSaveAfterCapture by bool("auto_save_after_capture", true)  // 自动保存
    var retainCaptureSettings by bool("retain_capture_settings", false)  // 保留拍摄参数；关闭时须同时清除 customCaptureSettings
    var edgeLevel by int("edge_level", 1)  // 锐化等级：0=Off, 1=Fast, 2=High Quality, 3=Real-time
    var videoEdgeLevel by int("video_edge_level", 1)
    var rawLensShadingCorrectionEnabled by bool("raw_lens_shading_correction_enabled", true)
    var rawMinShutterSpeedNs by long("raw_min_shutter_speed_ns", 0L)
    var exportDngWithRawExport by bool("export_dng_with_raw_export", false)
    var defaultFocalLength by float("default_focal_length", 0f)  // 默认焦段 (mm)，0表示不设置
    var multipleExposureCount by int("multiple_exposure_count", 2, normalize = { it.coerceIn(2, 9) })  // 多重曝光张数
    var photoQuality by int("photo_quality", 95)  // 照片质量: 90, 95, 100
    var enableDevelopAnimation by bool("enable_develop_animation", false)  // 是否启用拍摄后的显影动画
    var colorPaletteEnabled by bool("color_palette_enabled", false)
    var autoRotateEnabled by bool("auto_rotate_enabled", true)  // App 内界面元素是否跟随设备方向自适应旋转
    var applyUltraHDR by bool("apply_ultra_hdr", false)  // 是否应用 Ultra HDR 策略
    var useP010 by bool("use_p010", false)
    var useP3ColorSpace by bool("use_p3_color_space", false)
    var videoAudioInputId by string("video_audio_input_id", VIDEO_AUDIO_INPUT_AUTO)
    var videoTorchEnabled by bool("video_torch_enabled", false)
    var videoLensLockEnabled by bool("video_lens_lock_enabled", false)
    var videoWhiteBalanceLockEnabled by bool("video_white_balance_lock_enabled", false)
    var phantomButtonHidden by bool("phantom_button_hidden", false)
    var launchCameraOnPhantomMode by bool("launch_camera_on_phantom_mode", false)
    var phantomPipPreview by bool("phantom_pip_preview", false)
    var mirrorFrontCamera by bool("mirror_front_camera", true)
    var saveLocation by bool("save_location", false)
    var phantomSaveAsNew by bool("phantom_save_as_new", false)
    var defaultVirtualAperture by float("default_virtual_aperture", 0f)  // 默认虚化光圈，0表示关闭
    var useHdrScreenMode by bool("use_hdr_screen_mode", true)
    var deleteExported by bool("delete_exported", true)
    var showAestheticScores by bool("show_aesthetic_scores", false)
    var enableLogicalMultiCameraDiscovery by bool("enable_logical_multi_camera_discovery", false)  // 是否自动探测逻辑多摄物理镜头绑定

    // ---------------------------------------------------------------------------------------
    // 以下字段涉及多个 key、旧版本 key、解析或写入归一化，用 stored(read, write) 声明读写逻辑。

    var customAspectRatios: List<AspectRatio> by stored({ p -> parseCustomAspectRatios(p[K.CUSTOM_ASPECT_RATIOS]) }) { p, v ->
        p[K.CUSTOM_ASPECT_RATIOS] = AspectRatio.sanitizeCustomRatios(v).joinToString(",") { it.name }
    }
    var topSheetAspectRatios: List<AspectRatio> by stored({ p ->
        parseTopSheetAspectRatios(p[K.TOP_SHEET_ASPECT_RATIOS], AspectRatio.entries + customAspectRatios)
    }) { p, v ->
        p[K.TOP_SHEET_ASPECT_RATIOS] = AspectRatio.sanitizeTopSheetRatios(v).joinToString(",") { it.name }
    }
    /** 不提供默认值，由 CameraViewModel 根据配置文件设置。写入后需调用 PhotonLookContract.notifyLookChanged。 */
    var lutId: String? by stored({ p -> p[K.LUT_ID_KEY] ?: p[K.LEGACY_PHANTOM_LUT_ID_KEY] }) { p, v ->
        p.put(K.LUT_ID_KEY, v)
        p.remove(K.LEGACY_PHANTOM_LUT_ID_KEY)
    }
    var separateVideoLutEnabled by bool("separate_video_lut_enabled", false)
    var rawBaselineLutConfigured: Boolean by stored({ p ->
        p[K.RAW_BASELINE_LUT_CONFIGURED_KEY] ?: p.contains(K.RAW_BASELINE_LUT_ID_KEY)
    }) { p, v -> p[K.RAW_BASELINE_LUT_CONFIGURED_KEY] = v }
    var rawDcpIdsByLens: Map<String, String?> by stored({ p -> parseNullableStringMap(p[K.RAW_DCP_IDS_BY_LENS_KEY]) }) { p, v ->
        p.put(K.RAW_DCP_IDS_BY_LENS_KEY, CameraPreset.normalizeRawDcpIdsByLens(v).takeIf { it.isNotEmpty() }?.let(::serializeNullableStringMap))
    }
    var rawNoiseProfileId: String by stored({ p ->
        p[K.RAW_NOISE_PROFILE_ID_KEY]?.takeIf { it.isNotBlank() } ?: RawNoiseProfileManager.DEFAULT_PROFILE_ID
    }) { p, v -> p[K.RAW_NOISE_PROFILE_ID_KEY] = v.takeIf { it.isNotBlank() } ?: RawNoiseProfileManager.DEFAULT_PROFILE_ID }
    var rawNoiseProfileIdsByLens: Map<String, String> by stored({ p ->
        normalizeNoiseProfileIdsByLens(parseNullableStringMap(p[K.RAW_NOISE_PROFILE_IDS_BY_LENS_KEY]))
    }) { p, v ->
        p.put(
            K.RAW_NOISE_PROFILE_IDS_BY_LENS_KEY,
            normalizeNoiseProfileIdsByLens(v).toSortedMap().takeIf { it.isNotEmpty() }?.let(::serializeNullableStringMap),
        )
    }
    val rawHncsProfileId: String? get() = HncsProfileManager.DEFAULT_PROFILE_ID
    val rawHncsRenderIntent: HncsRenderIntent get() = HncsRenderIntent.Standard
    var rawHncsFilmCurveMode: HncsFilmCurveMode by stored({ p ->
        HncsFilmCurveMode.fromPersistedValue(p[K.RAW_HNCS_FILM_CURVE_MODE_KEY])
    }) { p, v -> p[K.RAW_HNCS_FILM_CURVE_MODE_KEY] = v.persistedValue }
    var rawRenderingEngine: RawRenderingEngine by stored({ p ->
        RawRenderingEngine.fromPersistedName(p[K.RAW_COLOR_ENGINE_KEY])
    }) { p, v -> p[K.RAW_COLOR_ENGINE_KEY] = v.name }
    var rawToneMappingParameters: RawToneMappingParameters by stored({ p ->
        RawToneMappingParameters(
            agxBlackRelativeExposure = p[K.RAW_AGX_BLACK_RELATIVE_EXPOSURE_KEY]
                ?: RawToneMappingParameters.AGX_BLACK_RELATIVE_EXPOSURE_DEFAULT,
            agxWhiteRelativeExposure = p[K.RAW_AGX_WHITE_RELATIVE_EXPOSURE_KEY]
                ?: RawToneMappingParameters.AGX_WHITE_RELATIVE_EXPOSURE_DEFAULT,
            agxToe = p[K.RAW_AGX_TOE_KEY] ?: RawToneMappingParameters.AGX_TOE_DEFAULT,
            agxShoulder = p[K.RAW_AGX_SHOULDER_KEY] ?: RawToneMappingParameters.AGX_SHOULDER_DEFAULT,
            filmicBlackRelativeExposure = p[K.RAW_FILMIC_BLACK_RELATIVE_EXPOSURE_KEY]
                ?: RawToneMappingParameters.FILMIC_BLACK_RELATIVE_EXPOSURE_DEFAULT,
            filmicWhiteRelativeExposure = p[K.RAW_FILMIC_WHITE_RELATIVE_EXPOSURE_KEY]
                ?: RawToneMappingParameters.FILMIC_WHITE_RELATIVE_EXPOSURE_DEFAULT,
            useProfileToneMap = p[K.RAW_PROFILE_TONE_MAP_KEY] ?: true,
            useOppoMasterToneMap = p[K.RAW_OPPO_MASTER_TONE_MAP_KEY] ?: false,
            // Capture development has one supported adaptive-exposure path: HDRNet.
            // Photo-level metadata may still disable it for an imported DNG.
            lumixPhotoStyle = LumixPhotoStyle.fromPersistedValue(p[K.RAW_LUMIX_PHOTO_STYLE_KEY]),
            canonPictureStyle = CanonPictureStyle.fromPersistedValue(p[K.RAW_CANON_PICTURE_STYLE_KEY]),
            canonExposureCompensationEv = p[K.RAW_CANON_EXPOSURE_COMPENSATION_KEY]
                ?: RawToneMappingParameters.CANON_EXPOSURE_COMPENSATION_DEFAULT,
            lumixColorMatchingEnabled = p[K.RAW_LUMIX_COLOR_MATCHING_KEY] ?: true,
            hncsColorMatchingEnabled = p[K.RAW_HNCS_COLOR_MATCHING_KEY] ?: true,
            canonUseR5ColorMatrix = p[K.RAW_CANON_USE_R5_COLOR_MATRIX_KEY] ?: false,
            leicaUseM9ColorMatrix = p[K.RAW_LEICA_USE_M9_COLOR_MATRIX_KEY] ?: false,
            usePhotonHdr = true
        ).normalized()
    }) { p, value ->
        val v = value.withPhotonHdr(true)
        p[K.RAW_AGX_BLACK_RELATIVE_EXPOSURE_KEY] = v.agxBlackRelativeExposure
        p[K.RAW_AGX_WHITE_RELATIVE_EXPOSURE_KEY] = v.agxWhiteRelativeExposure
        p[K.RAW_AGX_TOE_KEY] = v.agxToe
        p[K.RAW_AGX_SHOULDER_KEY] = v.agxShoulder
        p[K.RAW_FILMIC_BLACK_RELATIVE_EXPOSURE_KEY] = v.filmicBlackRelativeExposure
        p[K.RAW_FILMIC_WHITE_RELATIVE_EXPOSURE_KEY] = v.filmicWhiteRelativeExposure
        p[K.RAW_PROFILE_TONE_MAP_KEY] = v.useProfileToneMap
        p[K.RAW_OPPO_MASTER_TONE_MAP_KEY] = v.useOppoMasterToneMap
        p[K.RAW_LUMIX_PHOTO_STYLE_KEY] = v.lumixPhotoStyle.assetName
        p[K.RAW_CANON_PICTURE_STYLE_KEY] = v.canonPictureStyle.persistedValue
        p[K.RAW_CANON_EXPOSURE_COMPENSATION_KEY] = v.canonExposureCompensationEv
        p[K.RAW_LUMIX_COLOR_MATCHING_KEY] = v.lumixColorMatchingEnabled
        p[K.RAW_HNCS_COLOR_MATCHING_KEY] = v.hncsColorMatchingEnabled
        p[K.RAW_CANON_USE_R5_COLOR_MATRIX_KEY] = v.canonUseR5ColorMatrix
        p[K.RAW_LEICA_USE_M9_COLOR_MATRIX_KEY] = v.leicaUseM9ColorMatrix
    }
    val rawAutoExposure: Boolean get() = false
    /** 以下五项按 cameraId 存储 DNG 元数据校正。 */
    var rawBlackLevelModes: Map<String, String> by stored({ p -> parseMapString(p[K.RAW_BLACK_LEVEL_MODES_KEY]) }) { p, v ->
        p[K.RAW_BLACK_LEVEL_MODES_KEY] = serializeMapString(v)
    }
    var rawCustomBlackLevels: Map<String, Float> by stored({ p -> parseMapFloat(p[K.RAW_CUSTOM_BLACK_LEVELS_KEY]) }) { p, v ->
        p[K.RAW_CUSTOM_BLACK_LEVELS_KEY] = serializeMapFloat(v)
    }
    var rawWhiteLevelModes: Map<String, String> by stored({ p -> parseMapString(p[K.RAW_WHITE_LEVEL_MODES_KEY]) }) { p, v ->
        p[K.RAW_WHITE_LEVEL_MODES_KEY] = serializeMapString(v)
    }
    var rawCustomWhiteLevels: Map<String, Float> by stored({ p -> parseMapFloat(p[K.RAW_CUSTOM_WHITE_LEVELS_KEY]) }) { p, v ->
        p[K.RAW_CUSTOM_WHITE_LEVELS_KEY] = serializeMapFloat(v)
    }
    var rawCfaCorrectionModes: Map<String, String> by stored({ p -> parseMapString(p[K.RAW_CFA_CORRECTION_MODES_KEY]) }) { p, v ->
        p[K.RAW_CFA_CORRECTION_MODES_KEY] = serializeMapString(v)
    }
    var rawMaxSharpening: Float by stored({ p ->
        RawSharpeningDefaults.normalize(p[K.RAW_MAX_SHARPENING_KEY] ?: RawSharpeningDefaults.DEFAULT_STRENGTH)
    }) { p, v -> p[K.RAW_MAX_SHARPENING_KEY] = RawSharpeningDefaults.normalize(v) }
    var rawMaxNoiseReduction: Float by stored({ p ->
        RawDenoiseDefaults.normalize(p[K.RAW_MAX_NOISE_REDUCTION_KEY] ?: RawDenoiseDefaults.RAW_MAX_LUMA_STRENGTH)
    }) { p, v -> p[K.RAW_MAX_NOISE_REDUCTION_KEY] = RawDenoiseDefaults.normalize(v) }
    var rawMaxChromaNoiseReduction: Float by stored({ p ->
        RawDenoiseDefaults.normalize(p[K.RAW_MAX_CHROMA_NOISE_REDUCTION_KEY] ?: RawDenoiseDefaults.RAW_MAX_CHROMA_STRENGTH)
    }) { p, v -> p[K.RAW_MAX_CHROMA_NOISE_REDUCTION_KEY] = RawDenoiseDefaults.normalize(v) }
    var gridStyle: GridStyle by stored({ p -> GridStyle.fromPersistedName(p[K.GRID_STYLE]) }) { p, v -> p[K.GRID_STYLE] = v.name }
    /** Activity 窗口屏幕亮度，null 表示使用系统默认。 */
    var windowScreenBrightness: Float? by stored({ p -> p[K.WINDOW_SCREEN_BRIGHTNESS]?.coerceIn(0f, 1f) }) { p, v ->
        p.put(K.WINDOW_SCREEN_BRIGHTNESS, v?.coerceIn(0f, 1f))
    }
    var photoSavePath: PhotoSavePath by stored({ p -> PhotoSavePath.fromPersistedName(p[K.PHOTO_SAVE_PATH]) }) { p, v ->
        p[K.PHOTO_SAVE_PATH] = v.name
    }
    /** 仅在 [photoSavePath] 为 EXTERNAL_TREE 时有意义。 */
    var photoSaveTreeUri: String? by stored({ p -> p[K.PHOTO_SAVE_TREE_URI]?.takeIf { it.isNotBlank() } }) { p, v ->
        p.put(K.PHOTO_SAVE_TREE_URI, v?.takeIf { it.isNotBlank() })
    }
    var vendorCaptureSettingsByLens: VendorCaptureSettingsByLens by stored({ p ->
        VendorCaptureSettingsByLens.deserialize(p[K.VENDOR_CAPTURE_SETTINGS])
    }) { p, v -> p.put(K.VENDOR_CAPTURE_SETTINGS, v.takeIf { it.isEnabled }?.serialize()) }
    var customVendorKeySettings: CustomVendorKeySettings by stored({ p ->
        CustomVendorKeySettings.deserialize(p[K.CUSTOM_VENDOR_KEY_SETTINGS])
    }) { p, v -> p.put(K.CUSTOM_VENDOR_KEY_SETTINGS, v.takeIf { it.isEnabled }?.serialize()) }
    var meteringMode: MeteringMode by stored({ p ->
        MeteringMode.valueOf(p[K.METERING_MODE] ?: MeteringMode.SYSTEM_DEFAULT.name)
    }) { p, v -> p[K.METERING_MODE] = v.name }
    /** 摄像头方向校正：Map<CameraId, 旋转偏移角度(90/180/270)>，0 度不存储。 */
    var cameraOrientationOffsets: Map<String, Int> by stored({ p ->
        parseCameraOrientationOffsets(p[K.CAMERA_ORIENTATION_OFFSETS])
    }) { p, v -> p[K.CAMERA_ORIENTATION_OFFSETS] = serializeCameraOrientationOffsets(v.filterValues { it != 0 }) }
    /** 滤镜排序（ID 列表）。 */
    var filterOrder: List<String> by stored({ p -> p[K.FILTER_ORDER]?.split(",")?.filter { it.isNotEmpty() } ?: emptyList() }) { p, v ->
        p[K.FILTER_ORDER] = v.joinToString(",")
    }
    /** 边框排序（ID 列表）。 */
    var frameOrder: List<String> by stored({ p -> p[K.FRAME_ORDER]?.split(",")?.filter { it.isNotEmpty() } ?: emptyList() }) { p, v ->
        p[K.FRAME_ORDER] = v.joinToString(",")
    }
    /** 已保存的分类及排序，允许空分类。 */
    var categoryOrder: List<String> by stored({ p -> readCategoryOrder(p) }) { p, v ->
        p[K.CATEGORY_ORDER_JSON] = serializeCategoryOrder(v)
        p.remove(K.CATEGORY_ORDER)
    }
    var lutSelectorMode: LutSelectorMode by stored({ p ->
        runCatching { LutSelectorMode.valueOf(p[K.LUT_SELECTOR_MODE] ?: LutSelectorMode.Style.name) }
            .getOrDefault(LutSelectorMode.Style)
    }) { p, v -> p[K.LUT_SELECTOR_MODE] = v.name }

    // 拍摄模式：RAW / JPG MAX / RAW MAX（含旧版本 key 推导）
    private val storedUseRaw: Boolean by derived { p -> p[K.USE_RAW] ?: false }
    private val hasCurrentMaxPreferences: Boolean by derived { p -> p.contains(K.USE_JPG_MAX) || p.contains(K.USE_RAW_MAX) }
    private val legacyMultiFrameEnabled: Boolean by derived { p ->
        p[K.LEGACY_USE_MULTI_FRAME] == true || p[K.LEGACY_USE_SUPER_RESOLUTION] == true
    }
    /** YUV 多帧降噪。RAW/HDR+ 与 YUV 降噪属于不同拍摄模式，专业模式下保留该偏好以便回到 PHOTO 时恢复。 */
    var useJpgMax: Boolean by stored({ p ->
        if (hasCurrentMaxPreferences) {
            p[K.USE_JPG_MAX] ?: false
        } else {
            !storedUseRaw && (legacyMultiFrameEnabled || p[K.LEGACY_USE_HDR_COMPOSITION] == true)
        }
    }) { p, v -> p[K.USE_JPG_MAX] = v }
    /** HDR+：RAW 多帧融合。 */
    var useRawMax: Boolean by stored({ p ->
        val requested = if (hasCurrentMaxPreferences) p[K.USE_RAW_MAX] ?: false else storedUseRaw && legacyMultiFrameEnabled
        requested || storedUseRaw
    }) { p, v -> p[K.USE_RAW_MAX] = v }
    /** 实际是否走 YUV 多帧：JPGmax 已启用，且不是 RAW、多重曝光。 */
    val effectiveUseJpgMax: Boolean
        get() = useJpgMax && !useRaw && !useMultipleExposure
    /** 使用 RAW 格式拍摄。读取结果综合 [useRawMax]/[useJpgMax]；写入只记录 RAW 开关本身。 */
    var useRaw: Boolean
        get() = when {
            useRawMax -> true
            useJpgMax -> false
            else -> storedUseRaw
        }
        set(value) {
            mutablePreferences()[K.USE_RAW] = value
        }
    /** 多帧降噪固定不启用包围曝光。 */
    val useJpgMaxHdrComposition: Boolean get() = false
    var jpgMultiFrameDenoiseFrameCount: Int by stored({ p ->
        p[K.JPG_MULTI_FRAME_DENOISE_FRAME_COUNT]?.let(MultiFrameConfig::normalizeDenoiseFrameCount)
            ?: MultiFrameConfig.DEFAULT_DENOISE_FRAME_COUNT
    }) { p, v -> p[K.JPG_MULTI_FRAME_DENOISE_FRAME_COUNT] = MultiFrameConfig.normalizeDenoiseFrameCount(v) }
    var jpgMultiFrameDenoiseOutputScale: Float by stored({ p ->
        p[K.JPG_MULTI_FRAME_DENOISE_OUTPUT_SCALE]?.let {
            MultiFrameConfig.normalizeOutputScale(outputScale = it, fallback = MultiFrameConfig.DEFAULT_SUPER_RESOLUTION_SCALE)
        } ?: MultiFrameConfig.DEFAULT_SUPER_RESOLUTION_SCALE
    }) { p, v ->
        p[K.JPG_MULTI_FRAME_DENOISE_OUTPUT_SCALE] =
            MultiFrameConfig.normalizeOutputScale(outputScale = v, fallback = MultiFrameConfig.DEFAULT_SUPER_RESOLUTION_SCALE)
    }
    /** 切换到不支持包围曝光的模式时同时关闭包围曝光。 */
    var hdrPlusMergeMode: MgcRawMaxMode by stored({ p ->
        MgcRawMaxMode.entries.firstOrNull { it.name == p[K.HDR_PLUS_MERGE_MODE] } ?: MgcRawMaxMode.DEFAULT
    }) { p, v ->
        p[K.HDR_PLUS_MERGE_MODE] = v.name
        if (!v.supportsBracketExposure) p[K.HDR_PLUS_BRACKET_EXPOSURE_ENABLED] = false
    }
    /** 写入时按当前合成模式约束，并按新状态重新归一化帧数。 */
    var hdrPlusBracketExposureEnabled: Boolean by stored({ p ->
        hdrPlusMergeMode.supportsBracketExposure &&
            (p[K.HDR_PLUS_BRACKET_EXPOSURE_ENABLED] ?: MultiFrameConfig.DEFAULT_HDR_PLUS_BRACKET_EXPOSURE)
    }) { p, v ->
        val enabled = v && hdrPlusMergeMode.supportsBracketExposure
        p[K.HDR_PLUS_BRACKET_EXPOSURE_ENABLED] = enabled
        p[K.HDR_PLUS_FRAME_COUNT] = MultiFrameConfig.normalizeHdrPlusFrameCount(
            p[K.HDR_PLUS_FRAME_COUNT] ?: MultiFrameConfig.DEFAULT_HDR_PLUS_FRAME_COUNT,
            bracketExposureEnabled = enabled,
        )
    }
    var hdrPlusFrameCount: Int by stored({ p ->
        p[K.HDR_PLUS_FRAME_COUNT]?.let {
            MultiFrameConfig.normalizeHdrPlusFrameCount(it, bracketExposureEnabled = hdrPlusBracketExposureEnabled)
        } ?: MultiFrameConfig.DEFAULT_HDR_PLUS_FRAME_COUNT
    }) { p, v ->
        p[K.HDR_PLUS_FRAME_COUNT] =
            MultiFrameConfig.normalizeHdrPlusFrameCount(v, bracketExposureEnabled = hdrPlusBracketExposureEnabled)
    }
    var hdrPlusLongFrameExposureEv: Float by stored({ p ->
        MultiFrameConfig.normalizeLongFrameExposureEv(
            p[K.HDR_PLUS_LONG_FRAME_EXPOSURE_EV] ?: MultiFrameConfig.LONG_FRAME_EXPOSURE_EV.toFloat(),
        )
    }) { p, v -> p[K.HDR_PLUS_LONG_FRAME_EXPOSURE_EV] = MultiFrameConfig.normalizeLongFrameExposureEv(v) }
    var hdrPlusShortFrameExposureEv: Float by stored({ p ->
        MultiFrameConfig.normalizeShortFrameExposureEv(
            p[K.HDR_PLUS_SHORT_FRAME_EXPOSURE_EV] ?: MultiFrameConfig.DEFAULT_SHORT_FRAME_EXPOSURE_EV,
        )
    }) { p, v -> p[K.HDR_PLUS_SHORT_FRAME_EXPOSURE_EV] = MultiFrameConfig.normalizeShortFrameExposureEv(v) }
    var mlAeMaxHdrRatio: Float by stored({ p ->
        RawSceneExposureMath.normalizeConfiguredMaxHdrRatio(
            p[K.ML_AE_MAX_HDR_RATIO] ?: RawSceneExposureMath.FAST_MOMENTS_MAX_HDR_RATIO,
        )
    }) { p, v -> p[K.ML_AE_MAX_HDR_RATIO] = RawSceneExposureMath.normalizeConfiguredMaxHdrRatio(v) }
    /** RAWmax 输出放大算法。RAISR 自带放大倍率，选中时把输出倍率锁定到该倍率。 */
    var rawOutputUpscaleMode: RawOutputUpscaleMode by stored({ p ->
        RawOutputUpscaleMode.fromName(p[K.RAW_OUTPUT_UPSCALE_MODE])
    }) { p, v ->
        p[K.RAW_OUTPUT_UPSCALE_MODE] = v.name
        v.pinnedOutputScale?.let { p[K.RAW_MAX_OUTPUT_SCALE] = it }
    }
    /** RAWmax 输出倍率。 */
    var rawMaxOutputScale: Float by stored({ p ->
        rawOutputUpscaleMode.resolveOutputScale(
            (p[K.RAW_MAX_OUTPUT_SCALE] ?: p[K.LEGACY_RAW_SUPER_RESOLUTION_SCALE])?.let {
                MultiFrameConfig.normalizeOutputScale(outputScale = it, fallback = MultiFrameConfig.DEFAULT_SUPER_RESOLUTION_SCALE)
            } ?: MultiFrameConfig.DEFAULT_SUPER_RESOLUTION_SCALE
        )
    }) { p, v -> p[K.RAW_MAX_OUTPUT_SCALE] = rawOutputUpscaleMode.resolveOutputScale(v) }
    /** RAW 色彩标定矩阵来源。 */
    var rawColorCalibrationMode: RawColorCalibrationMode by stored({ p ->
        RawColorCalibrationMode.fromName(p[K.RAW_COLOR_CALIBRATION_MODE])
    }) { p, v -> p[K.RAW_COLOR_CALIBRATION_MODE] = v.name }
    /** 是否优先使用 HEIC 导出，开启时关闭 JPEG 4:4:4。 */
    var useHeicExport: Boolean by stored({ p -> p[K.USE_HEIC_EXPORT] ?: false }) { p, v ->
        p[K.USE_HEIC_EXPORT] = v
        if (v) p[K.USE_JPEG_444_EXPORT] = false
    }
    /** 是否使用 JPEG 4:4:4 色度采样导出（与 HEIC 互斥）。 */
    var useJpeg444Export: Boolean by stored({ p -> (p[K.USE_JPEG_444_EXPORT] ?: false) && !useHeicExport }) { p, v ->
        p[K.USE_JPEG_444_EXPORT] = v
        if (v) p[K.USE_HEIC_EXPORT] = false
    }
    var accentColor: Int by stored({ p ->
        AppAppearance.opaqueAccent(p[K.ACCENT_COLOR] ?: AppAppearance.DEFAULT_ACCENT_COLOR)
    }) { p, v -> p[K.ACCENT_COLOR] = AppAppearance.opaqueAccent(v) }
    var captureButtonStyle: CaptureButtonStyle by stored({ p ->
        CaptureButtonStyle.fromPersistedName(p[K.CAPTURE_BUTTON_STYLE])
    }) { p, v -> p[K.CAPTURE_BUTTON_STYLE] = v.name }
    var captureButtonImagePath: String? by stored({ p -> p[K.CAPTURE_BUTTON_IMAGE_PATH]?.takeIf { it.isNotBlank() } }) { p, v ->
        p.put(K.CAPTURE_BUTTON_IMAGE_PATH, v)
    }
    /** DRO 模式（预设携带，拍摄时用于曝光补偿与处理）。 */
    var droMode: String by stored({ p ->
        p[K.DRO_MODE] ?: if (p[K.RAW_DRO_ENABLED_KEY] == true) "DR100" else "OFF"
    }) { p, v ->
        val mode = RawProcessingPreferences.DROMode.fromPersistedName(v)
        p[K.DRO_MODE] = mode.name
        p[K.RAW_DRO_ENABLED_KEY] = mode.isEnabled
    }
    var logCurve: TransferCurve by stored({ p ->
        TransferCurve.fromPersistedName(p[K.LOG_CURVE] ?: TransferCurve.SRGB.name)
    }) { p, v -> p[K.LOG_CURVE] = v.name }
    /** 按 Log 曲线名存储的 RAW 还原 LUT（未保存的曲线返回默认值）。写入时只保存有变化的条目。 */
    var rawLuts: Map<String, String> by stored({ p -> parseRawLuts(p) }) { p, v ->
        val current = parseRawLuts(p)
        v.forEach { (curve, lut) -> if (current[curve] != lut) p[stringPreferencesKey("${curve}_raw_lut")] = lut }
    }
    var videoResolution: VideoResolutionPreset by stored({ p ->
        VideoResolutionPreset.entries.firstOrNull { it.name == p[K.VIDEO_RESOLUTION] } ?: VideoResolutionPreset.FHD_1080P
    }) { p, v -> p[K.VIDEO_RESOLUTION] = v.name }
    var videoFps: VideoFpsPreset by stored({ p ->
        VideoFpsPreset.entries.firstOrNull { it.name == p[K.VIDEO_FPS] } ?: VideoFpsPreset.FPS_30
    }) { p, v -> p[K.VIDEO_FPS] = v.name }
    var videoLogProfile: VideoLogProfile by stored({ p -> VideoLogProfile.fromPersistedName(p[K.VIDEO_LOG_PROFILE]) }) { p, v ->
        p[K.VIDEO_LOG_PROFILE] = v.name
    }
    var videoRecordingPath: VideoRecordingPath by stored({ p ->
        VideoRecordingPath.fromPersistedName(p[K.VIDEO_RECORDING_PATH])
    }) { p, v -> p[K.VIDEO_RECORDING_PATH] = v.name }
    /** 仅在 [videoRecordingPath] 为 EXTERNAL_TREE 时有意义。 */
    var videoRecordingTreeUri: String? by stored({ p -> p[K.VIDEO_RECORDING_TREE_URI]?.takeIf { it.isNotBlank() } }) { p, v ->
        p.put(K.VIDEO_RECORDING_TREE_URI, v?.takeIf { it.isNotBlank() })
    }
    var videoStabilizationMode: VideoStabilizationMode by stored({ p ->
        if (p[K.VIDEO_ENHANCED_STABILIZATION_ENABLED] == true) {
            VideoStabilizationMode.ENHANCED
        } else {
            VideoStabilizationMode.entries.firstOrNull { it.name == p[K.VIDEO_STABILIZATION_MODE] }
                ?: VideoStabilizationMode.OIS
        }
    }) { p, v ->
        p[K.VIDEO_STABILIZATION_MODE] = v.name
        p.remove(K.VIDEO_ENHANCED_STABILIZATION_ENABLED)
    }
    var videoInputMode by enum("video_input_mode", VideoInputMode.OES)
    val effectiveVideoInputMode: VideoInputMode
        get() = videoInputMode.withStabilization(videoStabilizationMode)
    val effectiveVideoNrLevel: Int
        get() = effectiveVideoInputMode.resolveNoiseReduction(videoNrLevel)
    val effectiveOppoSuperStabilizationEnabled: Boolean
        get() = effectiveVideoInputMode.allowsOppoSuperStabilization() && oppoSuperStabilizationEnabled
    val videoPipelineSettings: VideoPipelineSettings
        get() = VideoPipelineSettings(
            videoInputMode, videoStabilizationMode, videoNrLevel, videoEdgeLevel,
            oppoSuperStabilizationEnabled,
        )
    var videoEnhancedStabilizationStrength: Float by stored({ p ->
        normalizeStabilizationStrength(p[K.VIDEO_ENHANCED_STABILIZATION_STRENGTH] ?: DEFAULT_VIDEO_STABILIZATION_STRENGTH)
    }) { p, v -> p[K.VIDEO_ENHANCED_STABILIZATION_STRENGTH] = normalizeStabilizationStrength(v) }
    var videoEnhancedStabilizationLookahead: Int by stored({ p ->
        normalizeStabilizationLookahead(p[K.VIDEO_ENHANCED_STABILIZATION_LOOKAHEAD] ?: DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD)
    }) { p, v -> p[K.VIDEO_ENHANCED_STABILIZATION_LOOKAHEAD] = normalizeStabilizationLookahead(v) }
    var externalLensStabilizationConfig: ExternalLensStabilizationConfig by stored({ p ->
        ExternalLensStabilizationConfig(
            physicalCameraId = p[K.EXTERNAL_LENS_STABILIZATION_CAMERA_ID].orEmpty(),
            magnification = p[K.EXTERNAL_LENS_STABILIZATION_MAGNIFICATION]
                ?: ExternalLensStabilizationConfig.Disabled.magnification,
        ).normalized()
    }) { p, value ->
        val v = value.normalized()
        if (v.isEnabled) {
            p[K.EXTERNAL_LENS_STABILIZATION_CAMERA_ID] = v.physicalCameraId
            p[K.EXTERNAL_LENS_STABILIZATION_MAGNIFICATION] = v.magnification
        } else {
            p.remove(K.EXTERNAL_LENS_STABILIZATION_CAMERA_ID)
            p.remove(K.EXTERNAL_LENS_STABILIZATION_MAGNIFICATION)
        }
    }
    var phantomPipCrop: PhantomPipCrop by stored({ p ->
        PhantomPipCrop(
            left = p[K.PHANTOM_PIP_CROP_LEFT] ?: 0f,
            top = p[K.PHANTOM_PIP_CROP_TOP] ?: 0f,
            right = p[K.PHANTOM_PIP_CROP_RIGHT] ?: 1f,
            bottom = p[K.PHANTOM_PIP_CROP_BOTTOM] ?: 1f
        ).normalized()
    }) { p, value ->
        val v = value.normalized()
        p[K.PHANTOM_PIP_CROP_LEFT] = v.left
        p[K.PHANTOM_PIP_CROP_TOP] = v.top
        p[K.PHANTOM_PIP_CROP_RIGHT] = v.right
        p[K.PHANTOM_PIP_CROP_BOTTOM] = v.bottom
    }
    /** 自定义焦段/倍率，正数为 35mm 等效焦段，负数为精确倍率。 */
    var customFocalLengths: List<Float> by stored({ p ->
        p[K.CUSTOM_FOCAL_LENGTHS]?.split(",")?.filter { it.isNotEmpty() }
            ?.mapNotNull { CustomFocalLengthValue.parsePersisted(it) }
            ?: listOf(35f, 50f, 85f, 200f)
    }) { p, v -> p[K.CUSTOM_FOCAL_LENGTHS] = v.joinToString(",") { CustomFocalLengthValue.serialize(it) } }
    /** 自定义镜头 ID。 */
    var customLensIds: List<String> by stored({ p -> parseLensIds(p[K.CUSTOM_LENS_IDS]) }) { p, v ->
        p[K.CUSTOM_LENS_IDS] = normalizeLensIds(v).joinToString(",")
    }
    /** 所有发现来源共用的镜头 ID 黑名单。 */
    var lensIdBlacklist: List<String> by stored({ p -> parseLensIds(p[K.LENS_ID_BLACKLIST]) }) { p, v ->
        p[K.LENS_ID_BLACKLIST] = normalizeLensIds(v).joinToString(",")
    }
    /** 用户新增的 ISZ 虚拟镜头。 */
    var iszLensConfigs: List<IszLensConfig> by stored({ p -> IszLensConfig.deserializeList(p[K.ISZ_LENS_CONFIGS]) }) { p, v ->
        val sanitized = v.filter { it.baseCameraId.isNotBlank() && it.iszZoomRatio >= 1f }.distinctBy { it.virtualCameraId }
        p.put(K.ISZ_LENS_CONFIGS, sanitized.takeIf { it.isNotEmpty() }?.let(IszLensConfig::serializeList))
    }
    /** 用户选择的主摄 ID。 */
    var preferredMainCameraId: String? by stored({ p -> p[K.PREFERRED_MAIN_CAMERA_ID]?.takeIf { it.isNotBlank() } }) { p, v ->
        p.put(K.PREFERRED_MAIN_CAMERA_ID, v?.trim()?.takeIf { it.isNotEmpty() })
    }
    /** 用户选择的微距镜头 ID。 */
    var preferredMacroCameraId: String? by stored({ p -> p[K.PREFERRED_MACRO_CAMERA_ID]?.takeIf { it.isNotBlank() } }) { p, v ->
        p.put(K.PREFERRED_MACRO_CAMERA_ID, v?.trim()?.takeIf { it.isNotEmpty() })
    }
    /** 强制启用的逻辑/物理镜头绑定，格式 logical/physical。 */
    var logicalCameraBindingWhitelist: List<String> by stored({ p ->
        parseLogicalCameraBindingWhitelist(p[K.LOGICAL_CAMERA_BINDING_WHITELIST])
    }) { p, v -> p[K.LOGICAL_CAMERA_BINDING_WHITELIST] = normalizeLogicalCameraBindingWhitelist(v).joinToString(",") }
    /** 隐藏的焦段（35mm 等效）。 */
    var hiddenFocalLengths: List<Float> by stored({ p ->
        p[K.HIDDEN_FOCAL_LENGTHS]?.split(",")?.filter { it.isNotEmpty() }?.mapNotNull { it.toFloatOrNull() } ?: emptyList()
    }) { p, v -> p[K.HIDDEN_FOCAL_LENGTHS] = v.joinToString(",") }
    var rawSpectralFilmTuningsByStock: Map<String, SpectralFilmTuning> by stored({ p ->
        parseSpectralFilmTunings(p[K.RAW_SPECTRAL_FILM_TUNINGS_BY_STOCK_KEY])
    }) { p, v -> p[K.RAW_SPECTRAL_FILM_TUNINGS_BY_STOCK_KEY] = serializeSpectralFilmTunings(v.mapValues { it.value.normalized() }) }

    var customCaptureSettings by json(
        "custom_capture_settings_v1",
        decode = CustomCaptureSettings::fromJson,
        encode = CustomCaptureSettings::toJson,
    )
    /** 降噪等级：0=Off, 1=Fast, 2=High Quality, 3=ZSL, 4=Minimal。 */
    var nrLevel by int("nr_level", NoiseReductionLevel.DEFAULT, normalize = NoiseReductionLevel::normalize)
    var videoNrLevel by int("video_nr_level", NoiseReductionLevel.DEFAULT, normalize = NoiseReductionLevel::normalize)

    var activeEffectParams: EffectParams by stored({ EffectParams.fromJson(activeEffectParamsJson) }) { _, v ->
        activeEffectParamsJson = v.toJson()
    }

    var customPresets: List<CameraPreset> by stored({ CameraPreset.listFromJson(customPresetsJson) }) { _, v ->
        customPresetsJson = CameraPreset.listToJson(v)
    }

    /** 一次写入某个镜头的全部 DNG 元数据校正，保证它们对应同一个 cameraId。 */
    fun putRawDngMetadataCorrections(cameraId: String, corrections: IszRawDngMetadataCorrections) {
        if (cameraId.isBlank()) return
        rawBlackLevelModes = rawBlackLevelModes + (cameraId to corrections.blackLevelMode)
        rawCustomBlackLevels = rawCustomBlackLevels + (cameraId to corrections.customBlackLevel)
        rawWhiteLevelModes = rawWhiteLevelModes + (cameraId to corrections.whiteLevelMode)
        rawCustomWhiteLevels = rawCustomWhiteLevels + (cameraId to corrections.customWhiteLevel)
        rawCfaCorrectionModes = rawCfaCorrectionModes + (cameraId to corrections.cfaCorrectionMode)
    }

    fun removeRawDngMetadataCorrections(cameraId: String) {
        if (cameraId.isBlank()) return
        rawBlackLevelModes = rawBlackLevelModes - cameraId
        rawCustomBlackLevels = rawCustomBlackLevels - cameraId
        rawWhiteLevelModes = rawWhiteLevelModes - cameraId
        rawCustomWhiteLevels = rawCustomWhiteLevels - cameraId
        rawCfaCorrectionModes = rawCfaCorrectionModes - cameraId
    }

    fun rawDcpIdForLens(lensId: String?): String? = resolveRawDcpIdForLens(rawDcpId, rawDcpIdsByLens, lensId)

    fun hasRawDcpLensOverride(lensId: String?): Boolean {
        val normalizedLensId = lensId?.takeIf { it.isNotBlank() } ?: return false
        return rawDcpIdsByLens.containsKey(normalizedLensId)
    }

    fun rawNoiseProfileIdForLens(lensId: String?): String {
        val normalizedLensId = lensId?.takeIf { it.isNotBlank() }
            ?: return rawNoiseProfileId
        return rawNoiseProfileIdsByLens[normalizedLensId] ?: rawNoiseProfileId
    }

    companion object {
        fun resolveRawDcpIdForLens(
            rawDcpId: String?,
            rawDcpIdsByLens: Map<String, String?>,
            lensId: String?,
        ): String? {
            val normalizedLensId = lensId?.takeIf { it.isNotBlank() } ?: return rawDcpId
            return if (rawDcpIdsByLens.containsKey(normalizedLensId)) rawDcpIdsByLens[normalizedLensId] else rawDcpId
        }
    }
}

// ------------------------------------------------------------------------------------------------
// 字段委托

/** 单 key 字段：读取时解码，写入时编码；写入 null 删除 key。 */
private class KeyField<S, T>(
    private val key: Preferences.Key<S>,
    private val default: T,
    private val decode: (S) -> T,
    private val encode: (T & Any) -> S,
) : ReadWriteProperty<UserPreferences, T> {
    override fun getValue(thisRef: UserPreferences, property: KProperty<*>): T =
        thisRef.raw[key]?.let(decode) ?: default

    override fun setValue(thisRef: UserPreferences, property: KProperty<*>, value: T) {
        val preferences = thisRef.mutablePreferences()
        if (value == null) preferences.remove(key) else preferences[key] = encode(value)
    }
}

/** 由一个或多个 key 计算出的只读字段，同一实例内只计算一次。 */
private class DerivedField<T>(
    private val read: UserPreferences.(Preferences) -> T,
) : ReadOnlyProperty<UserPreferences, T> {
    override fun getValue(thisRef: UserPreferences, property: KProperty<*>): T =
        thisRef.cached(property.name) { thisRef.read(thisRef.raw) }
}

/** 由一个或多个 key 读写的字段：读取结果同一实例内只计算一次，写入后失效。 */
private class StoredField<T>(
    private val read: UserPreferences.(Preferences) -> T,
    private val write: UserPreferences.(MutablePreferences, T) -> Unit,
) : ReadWriteProperty<UserPreferences, T> {
    override fun getValue(thisRef: UserPreferences, property: KProperty<*>): T =
        thisRef.cached(property.name) { thisRef.read(thisRef.raw) }

    override fun setValue(thisRef: UserPreferences, property: KProperty<*>, value: T) {
        thisRef.write(thisRef.mutablePreferences(), value)
        thisRef.invalidate()
    }
}

/** 以字符串（JSON 等）存储的可空字段，同一实例内只解码一次；写入 null 删除 key。 */
private class JsonField<T : Any>(
    private val key: Preferences.Key<String>,
    private val decode: (String?) -> T?,
    private val encode: (T) -> String,
) : ReadWriteProperty<UserPreferences, T?> {
    override fun getValue(thisRef: UserPreferences, property: KProperty<*>): T? =
        thisRef.cached(property.name) { decode(thisRef.raw[key]) }

    override fun setValue(thisRef: UserPreferences, property: KProperty<*>, value: T?) {
        val preferences = thisRef.mutablePreferences()
        if (value == null) preferences.remove(key) else preferences[key] = encode(value)
    }
}

private fun bool(key: String, default: Boolean): ReadWriteProperty<UserPreferences, Boolean> =
    KeyField(booleanPreferencesKey(key), default, { it }, { it })

private fun int(key: String, default: Int, normalize: (Int) -> Int = { it }): ReadWriteProperty<UserPreferences, Int> =
    KeyField(intPreferencesKey(key), default, normalize, normalize)

private fun long(key: String, default: Long): ReadWriteProperty<UserPreferences, Long> =
    KeyField(longPreferencesKey(key), default, { it }, { it })

private fun float(key: String, default: Float, normalize: (Float) -> Float = { it }): ReadWriteProperty<UserPreferences, Float> =
    KeyField(floatPreferencesKey(key), default, normalize, normalize)

private fun string(key: String, default: String): ReadWriteProperty<UserPreferences, String> =
    KeyField(stringPreferencesKey(key), default, { it }, { it })

private fun nullableString(key: String): ReadWriteProperty<UserPreferences, String?> =
    KeyField(stringPreferencesKey(key), null, { it }, { it })

/** 以枚举名存储；存储值无法识别时回退到 [default]。 */
private inline fun <reified E : Enum<E>> enum(key: String, default: E): ReadWriteProperty<UserPreferences, E> =
    KeyField(stringPreferencesKey(key), default, { stored -> enumValues<E>().firstOrNull { it.name == stored } ?: default }, { it.name })

private fun <T : Any> json(key: String, decode: (String?) -> T?, encode: (T) -> String): ReadWriteProperty<UserPreferences, T?> =
    JsonField(stringPreferencesKey(key), decode, encode)

private fun <T> stored(
    read: UserPreferences.(Preferences) -> T,
    write: UserPreferences.(MutablePreferences, T) -> Unit,
): ReadWriteProperty<UserPreferences, T> = StoredField(read, write)

/** 值为 null 时删除 key。 */
private fun <T> MutablePreferences.put(key: Preferences.Key<T>, value: T?) {
    if (value == null) remove(key) else this[key] = value
}

private fun normalizeLensIds(lensIds: List<String>): List<String> =
    lensIds.map { it.trim() }.filter { it.isNotEmpty() }.distinct()

private fun normalizeNoiseProfileIdsByLens(profileIdsByLens: Map<String, String?>): Map<String, String> =
    profileIdsByLens.mapNotNull { (lensId, profileId) ->
        val normalizedLensId = lensId.takeIf { it.isNotBlank() }
        val normalizedProfileId = profileId?.takeIf { it.isNotBlank() }
        if (normalizedLensId != null && normalizedProfileId != null) normalizedLensId to normalizedProfileId else null
    }.toMap()

private fun <T> derived(read: UserPreferences.(Preferences) -> T): ReadOnlyProperty<UserPreferences, T> = DerivedField(read)

// ------------------------------------------------------------------------------------------------
// 多 key 字段与旧版本兼容读取使用的 key。key 字符串是持久化数据的一部分，不可修改。

internal object PreferenceKeys {
    val TOP_SHEET_ASPECT_RATIOS = stringPreferencesKey("top_sheet_aspect_ratios")
    val CUSTOM_ASPECT_RATIOS = stringPreferencesKey("custom_aspect_ratios")
    val LUT_ID_KEY = stringPreferencesKey("lut_id")
    val LEGACY_PHANTOM_LUT_ID_KEY = stringPreferencesKey("phantom_lut_id")
    val RAW_BASELINE_LUT_ID_KEY = stringPreferencesKey("raw_baseline_lut_id")
    val RAW_BASELINE_LUT_CONFIGURED_KEY = booleanPreferencesKey("raw_baseline_lut_configured")
    val RAW_DCP_IDS_BY_LENS_KEY = stringPreferencesKey("raw_dcp_ids_by_lens")
    val RAW_NOISE_PROFILE_ID_KEY = stringPreferencesKey("raw_noise_profile_id")
    val RAW_NOISE_PROFILE_IDS_BY_LENS_KEY = stringPreferencesKey("raw_noise_profile_ids_by_lens")
    val RAW_HNCS_FILM_CURVE_MODE_KEY = stringPreferencesKey("raw_hncs_film_curve_mode")
    val RAW_COLOR_ENGINE_KEY = stringPreferencesKey("raw_color_engine")
    val RAW_AGX_BLACK_RELATIVE_EXPOSURE_KEY = floatPreferencesKey("raw_agx_black_relative_exposure")
    val RAW_AGX_WHITE_RELATIVE_EXPOSURE_KEY = floatPreferencesKey("raw_agx_white_relative_exposure")
    val RAW_AGX_TOE_KEY = floatPreferencesKey("raw_agx_toe")
    val RAW_AGX_SHOULDER_KEY = floatPreferencesKey("raw_agx_shoulder")
    val RAW_FILMIC_BLACK_RELATIVE_EXPOSURE_KEY = floatPreferencesKey("raw_filmic_black_relative_exposure")
    val RAW_FILMIC_WHITE_RELATIVE_EXPOSURE_KEY = floatPreferencesKey("raw_filmic_white_relative_exposure")
    val RAW_PROFILE_TONE_MAP_KEY = booleanPreferencesKey("raw_profile_tone_map")
    val RAW_OPPO_MASTER_TONE_MAP_KEY = booleanPreferencesKey("raw_oppo_master_tone_map")
    val RAW_LUMIX_PHOTO_STYLE_KEY = stringPreferencesKey("raw_lumix_photo_style")
    val RAW_CANON_PICTURE_STYLE_KEY = stringPreferencesKey("raw_canon_picture_style")
    val RAW_CANON_EXPOSURE_COMPENSATION_KEY = floatPreferencesKey("raw_canon_exposure_compensation_ev")
    val RAW_LUMIX_COLOR_MATCHING_KEY = booleanPreferencesKey("raw_lumix_color_matching_enabled")
    val RAW_HNCS_COLOR_MATCHING_KEY = booleanPreferencesKey("raw_hncs_color_matching_enabled")
    val RAW_CANON_USE_R5_COLOR_MATRIX_KEY = booleanPreferencesKey("raw_canon_use_r5_color_matrix")
    val RAW_LEICA_USE_M9_COLOR_MATRIX_KEY = booleanPreferencesKey("raw_leica_use_m9_color_matrix")
    val RAW_DRO_ENABLED_KEY = booleanPreferencesKey("raw_dro_enabled")
    val RAW_SPECTRAL_FILM_TUNINGS_BY_STOCK_KEY = stringPreferencesKey("raw_spectral_film_tunings_by_stock")
    val RAW_BLACK_LEVEL_MODES_KEY = stringPreferencesKey("raw_black_level_modes")
    val RAW_CUSTOM_BLACK_LEVELS_KEY = stringPreferencesKey("raw_custom_black_levels")
    val RAW_WHITE_LEVEL_MODES_KEY = stringPreferencesKey("raw_white_level_modes")
    val RAW_CUSTOM_WHITE_LEVELS_KEY = stringPreferencesKey("raw_custom_white_levels")
    val RAW_CFA_CORRECTION_MODES_KEY = stringPreferencesKey("raw_cfa_correction_modes")
    val RAW_MAX_SHARPENING_KEY = floatPreferencesKey("raw_max_sharpening")
    val RAW_MAX_NOISE_REDUCTION_KEY = floatPreferencesKey("raw_max_noise_reduction")
    val RAW_MAX_CHROMA_NOISE_REDUCTION_KEY = floatPreferencesKey("raw_max_chroma_noise_reduction")
    val GRID_STYLE = stringPreferencesKey("grid_style")
    val WINDOW_SCREEN_BRIGHTNESS = floatPreferencesKey("window_screen_brightness")
    val PHOTO_SAVE_PATH = stringPreferencesKey("photo_save_path")
    val PHOTO_SAVE_TREE_URI = stringPreferencesKey("photo_save_tree_uri")
    val VENDOR_CAPTURE_SETTINGS = stringPreferencesKey("vendor_capture_settings")
    val CUSTOM_VENDOR_KEY_SETTINGS = stringPreferencesKey("custom_vendor_key_settings")
    val USE_RAW = booleanPreferencesKey("use_raw")
    val METERING_MODE = stringPreferencesKey("metering_mode")
    val FILTER_ORDER = stringPreferencesKey("filter_order")
    val FRAME_ORDER = stringPreferencesKey("frame_order")
    val CATEGORY_ORDER = stringPreferencesKey("category_order")
    val CATEGORY_ORDER_JSON = stringPreferencesKey("category_order_json")
    val LUT_SELECTOR_MODE = stringPreferencesKey("lut_selector_mode")
    val CAMERA_ORIENTATION_OFFSETS = stringPreferencesKey("camera_orientation_offsets")
    val USE_JPG_MAX = booleanPreferencesKey("use_jpg_max")
    val USE_RAW_MAX = booleanPreferencesKey("use_raw_max")
    val LEGACY_USE_MULTI_FRAME = booleanPreferencesKey("use_multi_frame")
    val LEGACY_USE_HDR_COMPOSITION = booleanPreferencesKey("use_hdr_composition")
    val JPG_MULTI_FRAME_DENOISE_FRAME_COUNT = intPreferencesKey("jpg_multi_frame_denoise_frame_count")
    val JPG_MULTI_FRAME_DENOISE_OUTPUT_SCALE = floatPreferencesKey("jpg_multi_frame_denoise_output_scale")
    val HDR_PLUS_FRAME_COUNT = intPreferencesKey("hdr_plus_frame_count")
    val HDR_PLUS_MERGE_MODE = stringPreferencesKey("hdr_plus_merge_mode")
    val HDR_PLUS_BRACKET_EXPOSURE_ENABLED = booleanPreferencesKey("hdr_plus_bracket_exposure_enabled")
    val HDR_PLUS_LONG_FRAME_EXPOSURE_EV = floatPreferencesKey("hdr_plus_long_frame_exposure_ev")
    val HDR_PLUS_SHORT_FRAME_EXPOSURE_EV = floatPreferencesKey("hdr_plus_short_frame_exposure_ev")
    val ML_AE_MAX_HDR_RATIO = floatPreferencesKey("ml_ae_max_hdr_ratio")
    val LEGACY_USE_SUPER_RESOLUTION = booleanPreferencesKey("use_super_resolution")
    val RAW_MAX_OUTPUT_SCALE = floatPreferencesKey("raw_max_output_scale")
    val RAW_OUTPUT_UPSCALE_MODE = stringPreferencesKey("raw_output_upscale_mode")
    val RAW_COLOR_CALIBRATION_MODE = stringPreferencesKey("raw_color_calibration_mode")
    val LEGACY_RAW_SUPER_RESOLUTION_SCALE = floatPreferencesKey("raw_super_resolution_scale")
    val USE_HEIC_EXPORT = booleanPreferencesKey("use_heic_export")
    val USE_JPEG_444_EXPORT = booleanPreferencesKey("use_jpeg_444_export")
    val CAPTURE_BUTTON_STYLE = stringPreferencesKey("capture_button_style")
    val ACCENT_COLOR = intPreferencesKey("ui_accent_color")
    val CAPTURE_BUTTON_IMAGE_PATH = stringPreferencesKey("capture_button_image_path")
    val DRO_MODE = stringPreferencesKey("dro_mode")
    val COLOR_SPACE = stringPreferencesKey("color_space")
    val LOG_CURVE = stringPreferencesKey("log_curve")
    val VIDEO_RESOLUTION = stringPreferencesKey("video_resolution")
    val VIDEO_FPS = stringPreferencesKey("video_fps")
    val VIDEO_LOG_PROFILE = stringPreferencesKey("video_log_profile")
    val VIDEO_BITRATE = stringPreferencesKey("video_bitrate")
    val VIDEO_RECORDING_PATH = stringPreferencesKey("video_recording_path")
    val VIDEO_RECORDING_TREE_URI = stringPreferencesKey("video_recording_tree_uri")
    val VIDEO_STABILIZATION_MODE = stringPreferencesKey("video_stabilization_mode")
    val VIDEO_ENHANCED_STABILIZATION_ENABLED = booleanPreferencesKey("video_enhanced_stabilization_enabled")
    val VIDEO_ENHANCED_STABILIZATION_STRENGTH = floatPreferencesKey("video_enhanced_stabilization_strength")
    val VIDEO_ENHANCED_STABILIZATION_LOOKAHEAD = intPreferencesKey("video_enhanced_stabilization_lookahead")
    val EXTERNAL_LENS_STABILIZATION_CAMERA_ID = stringPreferencesKey("external_lens_stabilization_camera_id")
    val EXTERNAL_LENS_STABILIZATION_MAGNIFICATION = floatPreferencesKey("external_lens_stabilization_magnification")
    val PHANTOM_PIP_CROP_LEFT = floatPreferencesKey("phantom_pip_crop_left")
    val PHANTOM_PIP_CROP_TOP = floatPreferencesKey("phantom_pip_crop_top")
    val PHANTOM_PIP_CROP_RIGHT = floatPreferencesKey("phantom_pip_crop_right")
    val PHANTOM_PIP_CROP_BOTTOM = floatPreferencesKey("phantom_pip_crop_bottom")
    val CUSTOM_FOCAL_LENGTHS = stringPreferencesKey("custom_focal_lengths")
    val CUSTOM_LENS_IDS = stringPreferencesKey("custom_lens_ids")
    val LENS_ID_BLACKLIST = stringPreferencesKey("lens_id_blacklist")
    val ISZ_LENS_CONFIGS = stringPreferencesKey("isz_lens_configs")
    val PREFERRED_MAIN_CAMERA_ID = stringPreferencesKey("preferred_main_camera_id")
    val PREFERRED_MACRO_CAMERA_ID = stringPreferencesKey("preferred_macro_camera_id")
    val LOGICAL_CAMERA_BINDING_WHITELIST = stringPreferencesKey("logical_camera_binding_whitelist")
    val HIDDEN_FOCAL_LENGTHS = stringPreferencesKey("hidden_focal_lengths")
}
