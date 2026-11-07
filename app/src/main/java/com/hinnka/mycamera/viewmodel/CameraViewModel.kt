package com.hinnka.mycamera.viewmodel

import com.hinnka.mycamera.mgc.PhotonLookContract
import android.app.Application
import android.app.ActivityManager
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.ImageFormat
import android.graphics.SurfaceTexture
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CameraDevice
import android.hardware.camera2.CaptureResult
import android.net.Uri
import android.os.Build
import android.os.PowerManager
import android.os.SystemClock
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.camera.*
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.data.CaptureButtonStyle
import com.hinnka.mycamera.data.CaptureSoundRepository
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.DevelopAnimationStyle
import com.hinnka.mycamera.frame.FrameRenderer
import com.hinnka.mycamera.data.PresetPackageManager
import com.hinnka.mycamera.data.UserPreferences
import com.hinnka.mycamera.data.VolumeKeyAction
import com.hinnka.mycamera.frame.FrameEditorDraft
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.frame.FramePreviewFactory
import com.hinnka.mycamera.frame.FramePreviewSelection
import com.hinnka.mycamera.gallery.GalleryManager
import com.hinnka.mycamera.gallery.MediaMetadata
import com.hinnka.mycamera.gallery.PhotoSavePath
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.lut.BakedLutExporter
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutConverter
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.creator.LutGenerator
import com.hinnka.mycamera.lut.creator.OpenAIApiClient
import com.hinnka.mycamera.model.CameraPreset
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.LutSelectorMode
import com.hinnka.mycamera.model.RecipeParam
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.model.toEffectParams
import com.hinnka.mycamera.model.withoutIndependentEffects
import com.hinnka.mycamera.ml.DepthModelManager
import com.hinnka.mycamera.phantom.PhantomWidgetProvider
import com.hinnka.mycamera.preview.EyeFocusPreviewFrame
import com.hinnka.mycamera.preview.PortraitMaskSnapshot
import com.hinnka.mycamera.preview.PreviewEyeFocusProcessor
import com.hinnka.mycamera.processor.CaptureProcessingQueue
import com.hinnka.mycamera.processor.RawBurstFrameRole
import com.hinnka.mycamera.processor.MgcSpatialOutputMode
import com.hinnka.mycamera.processor.MgcMergeMethod
import com.hinnka.mycamera.processor.MgcRawMaxMode
import com.hinnka.mycamera.processor.RawmaxExposurePlanner
import com.hinnka.mycamera.processor.RawStackFrame
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.raw.DcpProfileParser
import com.hinnka.mycamera.raw.DcpInfo
import com.hinnka.mycamera.raw.RawEnginePreviewPlan
import com.hinnka.mycamera.raw.RawEnginePreviewResolver
import com.hinnka.mycamera.raw.RawEnginePreviewSettings
import com.hinnka.mycamera.raw.HncsFilmCurveMode
import com.hinnka.mycamera.raw.HncsRenderIntent
import com.hinnka.mycamera.raw.RawColorCalibrationMode
import com.hinnka.mycamera.raw.RawOutputUpscaleMode
import com.hinnka.mycamera.raw.HncsProfileManager
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.model.EffectParams
import com.hinnka.mycamera.raw.RawProcessingPreferences
import com.hinnka.mycamera.raw.RawSceneExposureMath
import com.hinnka.mycamera.raw.RawProfile
import com.hinnka.mycamera.raw.RawCfaCorrection
import com.hinnka.mycamera.raw.RawCaptureExposureCompensationMetadata
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import com.hinnka.mycamera.raw.RawDigitalZoomResampling
import com.hinnka.mycamera.raw.RawProfileToneMapMode
import com.hinnka.mycamera.raw.LumixPhotoStyle
import com.hinnka.mycamera.raw.CanonPictureStyle
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawDenoiseDefaults
import com.hinnka.mycamera.raw.RawSharpeningDefaults
import com.hinnka.mycamera.raw.RawToneMappingParameters
import com.hinnka.mycamera.raw.RawNoiseProfileInfo
import com.hinnka.mycamera.raw.RawNoiseProfileManager
import com.hinnka.mycamera.raw.RawWhiteLevelCorrection
import com.hinnka.mycamera.raw.SpectralFilmProfile
import com.hinnka.mycamera.raw.SpectralFilmSelection
import com.hinnka.mycamera.raw.SpectralFilmTuning
import com.hinnka.mycamera.raw.fotufilm.FotufilmDocument
import com.hinnka.mycamera.raw.fotufilm.FotufilmDocumentStorage
import com.hinnka.mycamera.screencapture.PhantomPipCrop
import com.hinnka.mycamera.stabilization.ExternalLensStabilizationConfig
import com.hinnka.mycamera.ui.camera.CameraGLSurfaceView
import com.hinnka.mycamera.ui.camera.ZoomDisplayMode
import com.hinnka.mycamera.utils.*
import com.hinnka.mycamera.video.CaptureMode
import com.hinnka.mycamera.video.VideoAudioInputManager
import com.hinnka.mycamera.video.VideoAudioInputOption
import com.hinnka.mycamera.video.VideoAspectRatio
import com.hinnka.mycamera.video.VideoBitratePreset
import com.hinnka.mycamera.video.VideoFpsPreset
import com.hinnka.mycamera.video.VideoLogProfile
import com.hinnka.mycamera.video.VideoLogLutMode
import com.hinnka.mycamera.video.VideoRecordingPath
import com.hinnka.mycamera.video.VideoResolutionPreset
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.first
import kotlin.math.roundToInt
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import java.io.File
import java.util.UUID
import kotlin.math.abs
import kotlin.math.hypot

data class MultipleExposureFrame(
    val index: Int,
    val file: File
)

private data class PendingRawStackFrame(
    val frame: RawStackFrame,
    val captureInfo: CaptureInfo,
    val captureResult: CaptureResult?,
)

private data class CaptureSettingsSnapshot(
    @Volatile var state: CameraState,
    val preferences: UserPreferences,
    val lutId: String,
    val frameId: String?,
    val recipe: ColorRecipeParams,
    val cameraId: String,
    val sensorOrientation: Int,
    val lensFacing: Int,
    val deviceRotation: Int,
    val blackBorderCrop: RawBlackBorderCrop,
    val portraitMask: PortraitMaskSnapshot?,
    val multipleExposure: Boolean,
    val photoId: String = UUID.randomUUID().toString(),
    val galleryRegistration: CompletableDeferred<Unit> = CompletableDeferred(),
    // Exposure matching needs the unfiltered source; UI placeholders need the displayed look.
    @Volatile var originalThumbnail: Bitmap? = null,
    @Volatile var displayThumbnail: Bitmap? = null,
    var livePhotoVideo: CompletableDeferred<Pair<File, Long>?>? = null,
    var captureId: Long = 0L,
    @Volatile var captureCompleted: Boolean = false,
    @Volatile var processingFinished: Boolean = false,
    @Volatile var savedPhotoId: String? = null,
)

/** The shutter preview remains visible until the matching final thumbnail has loaded. */
data class CapturedThumbnail(
    val captureId: Long,
    val photoId: String,
    val bitmap: Bitmap?,
    val savedPhotoId: String?,
    val processingFinished: Boolean,
    val finalThumbnailLoaded: Boolean = false,
)

data class MultipleExposureSessionState(
    val enabled: Boolean = false,
    val sessionId: String? = null,
    val targetCount: Int = 2,
    val capturedCount: Int = 0,
    val frames: List<MultipleExposureFrame> = emptyList(),
    val isProcessing: Boolean = false,
    val previewBitmap: Bitmap? = null
) {
    val isSessionActive: Boolean
        get() = sessionId != null

    val canFinish: Boolean
        get() = capturedCount >= 2 && !isProcessing
}

private fun resolvePreviewBaselineTarget(prefs: UserPreferences): BaselineColorCorrectionTarget? {
    return BaselineColorCorrectionTarget.RAW.takeIf {
        prefs.captureMode == CaptureMode.PHOTO && prefs.useRaw && !prefs.phantomMode
    }
}

private data class RawSpectralFilmSettings(
    val stock: String?,
    val print: String?,
    val tuning: SpectralFilmTuning
)

private fun resolveEffectiveRawAutoExposure(): Boolean = false

private fun rawProcessingMetadataProperties(
    userPrefs: UserPreferences?,
): Map<String, String> =
    RawDigitalZoomResampling.captureProperties(userPrefs?.rawDigitalZoomResamplingEnabled == true)

private fun resolveCaptureSharpening(
    isRawCapture: Boolean,
    userPrefs: UserPreferences?,
): Float = if (isRawCapture) {
    userPrefs?.rawMaxSharpening ?: RawSharpeningDefaults.DEFAULT_STRENGTH
} else {
    0f
}.let(RawSharpeningDefaults::normalize)

internal data class CaptureDenoiseStrengths(
    val editableLuma: Float,
    val editableChroma: Float,
    val bakedLuma: Float?,
    val bakedChroma: Float?,
)

/**
 * RAW captures take the RAWmax luma / chroma strengths from the settings. A merge bakes them into
 * its default denoise before the DNG is written, so its editable strengths start at 0; a single
 * frame has no default denoise, so the same strengths become its editable initial values and the
 * user-adjustment denoise applies them: MGC USER_ADJUSTMENT pass.
 */
internal fun resolveCaptureDenoiseStrengths(
    isRawCapture: Boolean,
    isMergedCapture: Boolean,
    userPrefs: UserPreferences?,
): CaptureDenoiseStrengths {
    if (!isRawCapture) return CaptureDenoiseStrengths(0f, 0f, null, null)
    val luma = RawDenoiseDefaults.normalize(
        userPrefs?.rawMaxNoiseReduction ?: RawDenoiseDefaults.RAW_MAX_LUMA_STRENGTH
    )
    val chroma = RawDenoiseDefaults.normalize(
        userPrefs?.rawMaxChromaNoiseReduction ?: RawDenoiseDefaults.RAW_MAX_CHROMA_STRENGTH
    )
    return if (isMergedCapture) {
        CaptureDenoiseStrengths(editableLuma = 0f, editableChroma = 0f, bakedLuma = luma, bakedChroma = chroma)
    } else {
        CaptureDenoiseStrengths(editableLuma = luma, editableChroma = chroma, bakedLuma = null, bakedChroma = null)
    }
}

private data class PresetMatchSnapshot(
    val lutId: String?,
    val colorRecipe: ColorRecipeParams,
    val effects: EffectParams,
    val captureMode: CaptureMode,
    val aspectRatio: String,
    val isProfessionalMode: Boolean,
    val ultraHdrGainMapEnabled: Boolean,
    val frameId: String?,
    val rawDcpId: String?,
    val rawDcpIdsByLens: Map<String, String?>,
    val rawHncsProfileId: String?,
    val rawHncsRenderIntent: HncsRenderIntent,
    val rawHncsFilmCurveMode: HncsFilmCurveMode,
    val rawRenderingEngine: RawRenderingEngine,
    val rawMaxSharpening: Float,
    val rawMaxNoiseReduction: Float,
    val rawMaxChromaNoiseReduction: Float,
    val rawExposureCompensation: Float,
    val rawHighlightsAdjustment: Float,
    val rawShadowsAdjustment: Float,
    val rawBlackPointCorrection: Float,
    val rawWhitePointCorrection: Float,
    val rawOppoMasterToneMap: Boolean,
    val rawLumixPhotoStyle: LumixPhotoStyle,
    val rawCanonPictureStyle: CanonPictureStyle,
    val rawCanonExposureCompensationEv: Float,
    val rawLumixColorMatchingEnabled: Boolean,
    val rawHncsColorMatchingEnabled: Boolean,
    val rawCanonUseR5ColorMatrix: Boolean,
    val rawLeicaUseM9ColorMatrix: Boolean,
    /** 仅含 AgX / Filmic 曲线参数，见 [RawToneMappingParameters.engineToneCurve]。 */
    val rawEngineToneCurve: RawToneMappingParameters,
    val rawSpectralFilmStock: String?,
    val rawSpectralFilmPrint: String?,
    val rawFotufilmDocument: FotufilmDocument?,
    val rawDROMode: String,
    val rawBaselineLutId: String?
) {
    fun matches(preset: com.hinnka.mycamera.model.CameraPreset): Boolean {
        val colorRecipeMatches = colorRecipe.withoutIndependentEffects()
            .isSameAs(preset.colorRecipe.withoutIndependentEffects())
        val presetLutId = CameraPreset.normalizeLutId(preset.lutId)
//        PLog.d("PresetMatchSnapshot", "colorRecipe=$colorRecipe ${preset.colorRecipe} colorRecipe match: $colorRecipeMatches")
        val sharedSettingsMatch = lutId == presetLutId &&
            colorRecipeMatches &&
            effects == preset.effects &&
            frameId == preset.frameId
        if (!sharedSettingsMatch) return false

        if (captureMode == CaptureMode.PHOTO && aspectRatio != preset.aspectRatio) {
            return false
        }
        if (!isProfessionalMode) return true

        return ultraHdrGainMapEnabled == preset.ultraHdrGainMapEnabled &&
            rawDcpId == preset.rawDcpId &&
            rawDcpIdsByLens == preset.rawDcpIdsByLens &&
            rawHncsFilmCurveMode == HncsFilmCurveMode.fromPersistedValue(
                preset.rawHncsFilmCurveMode
            ) &&
            rawRenderingEngine == RawRenderingEngine.fromPersistedName(preset.rawRenderingEngine) &&
            rawMaxSharpening == preset.rawMaxSharpening &&
            rawMaxNoiseReduction == preset.rawMaxNoiseReduction &&
            rawMaxChromaNoiseReduction == preset.rawMaxChromaNoiseReduction &&
            rawExposureCompensation == preset.rawExposureCompensation &&
            rawHighlightsAdjustment == preset.rawHighlightsAdjustment &&
            rawShadowsAdjustment == preset.rawShadowsAdjustment &&
            rawBlackPointCorrection == preset.rawBlackPointCorrection &&
            rawWhitePointCorrection == preset.rawWhitePointCorrection &&
            rawLumixPhotoStyle == LumixPhotoStyle.fromPersistedValue(preset.rawLumixPhotoStyle) &&
            rawCanonPictureStyle == CanonPictureStyle.fromPersistedValue(preset.rawCanonPictureStyle) &&
            rawCanonExposureCompensationEv == preset.rawCanonExposureCompensationEv &&
            rawLumixColorMatchingEnabled == preset.rawLumixColorMatchingEnabled &&
            rawHncsColorMatchingEnabled == preset.rawHncsColorMatchingEnabled &&
            rawCanonUseR5ColorMatrix == preset.rawCanonUseR5ColorMatrix &&
            rawLeicaUseM9ColorMatrix == preset.rawLeicaUseM9ColorMatrix &&
            rawOppoMasterToneMap == preset.rawOppoMasterToneMap &&
            rawEngineToneCurve == preset.rawEngineToneCurve() &&
            rawSpectralFilmStock == preset.rawSpectralFilmStock &&
            rawSpectralFilmPrint == preset.rawSpectralFilmPrint &&
            rawFotufilmDocument == FotufilmDocumentStorage.decode(preset.rawFotufilmDocument, "preset ${preset.id}") &&
            rawDROMode == preset.rawDROMode &&
            rawBaselineLutId == preset.rawBaselineLutId
    }

    fun mismatchSummary(preset: com.hinnka.mycamera.model.CameraPreset): String {
        val presetLutId = CameraPreset.normalizeLutId(preset.lutId)
        val presetRawRenderingEngine = RawRenderingEngine.fromPersistedName(preset.rawRenderingEngine)
        val differences = buildList {
            if (lutId != presetLutId) add("lutId current=$lutId preset=$presetLutId")
            if (
                !colorRecipe.withoutIndependentEffects()
                    .isSameAs(preset.colorRecipe.withoutIndependentEffects())
            ) {
                add("colorRecipe differs")
            }
            if (effects != preset.effects) add("effects current=$effects preset=${preset.effects}")
            if (frameId != preset.frameId) add("frameId current=$frameId preset=${preset.frameId}")
            if (captureMode == CaptureMode.PHOTO && aspectRatio != preset.aspectRatio) {
                add("aspectRatio current=$aspectRatio preset=${preset.aspectRatio}")
            }
            if (isProfessionalMode) {
                if (ultraHdrGainMapEnabled != preset.ultraHdrGainMapEnabled) {
                    add(
                        "ultraHdrGainMapEnabled current=$ultraHdrGainMapEnabled " +
                            "preset=${preset.ultraHdrGainMapEnabled}"
                    )
                }
                if (rawDcpId != preset.rawDcpId) add("rawDcpId current=$rawDcpId preset=${preset.rawDcpId}")
                if (rawDcpIdsByLens != preset.rawDcpIdsByLens) {
                    add("rawDcpIdsByLens current=$rawDcpIdsByLens preset=${preset.rawDcpIdsByLens}")
                }
                val presetHncsFilmCurveMode = HncsFilmCurveMode.fromPersistedValue(
                    preset.rawHncsFilmCurveMode
                )
                if (rawHncsFilmCurveMode != presetHncsFilmCurveMode) {
                    add(
                        "rawHncsFilmCurveMode current=$rawHncsFilmCurveMode " +
                            "preset=$presetHncsFilmCurveMode"
                    )
                }
                if (rawRenderingEngine != presetRawRenderingEngine) {
                    add("rawRenderingEngine current=$rawRenderingEngine preset=$presetRawRenderingEngine")
                }
                if (rawMaxSharpening != preset.rawMaxSharpening) {
                    add("rawMaxSharpening current=$rawMaxSharpening preset=${preset.rawMaxSharpening}")
                }
                if (rawMaxNoiseReduction != preset.rawMaxNoiseReduction) {
                    add(
                        "rawMaxNoiseReduction current=$rawMaxNoiseReduction " +
                            "preset=${preset.rawMaxNoiseReduction}"
                    )
                }
                if (rawMaxChromaNoiseReduction != preset.rawMaxChromaNoiseReduction) {
                    add(
                        "rawMaxChromaNoiseReduction current=$rawMaxChromaNoiseReduction " +
                            "preset=${preset.rawMaxChromaNoiseReduction}"
                    )
                }
                if (rawExposureCompensation != preset.rawExposureCompensation) {
                    add(
                        "rawExposureCompensation current=$rawExposureCompensation " +
                            "preset=${preset.rawExposureCompensation}"
                    )
                }
                if (rawHighlightsAdjustment != preset.rawHighlightsAdjustment) {
                    add(
                        "rawHighlightsAdjustment current=$rawHighlightsAdjustment " +
                            "preset=${preset.rawHighlightsAdjustment}"
                    )
                }
                if (rawShadowsAdjustment != preset.rawShadowsAdjustment) {
                    add(
                        "rawShadowsAdjustment current=$rawShadowsAdjustment " +
                            "preset=${preset.rawShadowsAdjustment}"
                    )
                }
                if (rawBlackPointCorrection != preset.rawBlackPointCorrection) {
                    add(
                        "rawBlackPointCorrection current=$rawBlackPointCorrection " +
                            "preset=${preset.rawBlackPointCorrection}"
                    )
                }
                if (rawWhitePointCorrection != preset.rawWhitePointCorrection) {
                    add(
                        "rawWhitePointCorrection current=$rawWhitePointCorrection " +
                            "preset=${preset.rawWhitePointCorrection}"
                    )
                }
                if (rawLumixPhotoStyle != LumixPhotoStyle.fromPersistedValue(preset.rawLumixPhotoStyle)) {
                    add("rawLumixPhotoStyle current=$rawLumixPhotoStyle preset=${preset.rawLumixPhotoStyle}")
                }
                if (rawCanonPictureStyle != CanonPictureStyle.fromPersistedValue(preset.rawCanonPictureStyle)) {
                    add("rawCanonPictureStyle current=$rawCanonPictureStyle preset=${preset.rawCanonPictureStyle}")
                }
                if (rawCanonExposureCompensationEv != preset.rawCanonExposureCompensationEv) {
                    add("rawCanonExposureCompensationEv current=$rawCanonExposureCompensationEv preset=${preset.rawCanonExposureCompensationEv}")
                }
                if (rawLumixColorMatchingEnabled != preset.rawLumixColorMatchingEnabled ||
                    rawHncsColorMatchingEnabled != preset.rawHncsColorMatchingEnabled
                ) {
                    add(
                        "rawColorMatching current=$rawLumixColorMatchingEnabled/$rawHncsColorMatchingEnabled " +
                            "preset=${preset.rawLumixColorMatchingEnabled}/${preset.rawHncsColorMatchingEnabled}"
                    )
                }
                if (rawCanonUseR5ColorMatrix != preset.rawCanonUseR5ColorMatrix) {
                    add(
                        "rawCanonUseR5ColorMatrix current=$rawCanonUseR5ColorMatrix " +
                            "preset=${preset.rawCanonUseR5ColorMatrix}"
                    )
                }
                if (rawLeicaUseM9ColorMatrix != preset.rawLeicaUseM9ColorMatrix) {
                    add(
                        "rawLeicaUseM9ColorMatrix current=$rawLeicaUseM9ColorMatrix " +
                            "preset=${preset.rawLeicaUseM9ColorMatrix}"
                    )
                }
                if (rawOppoMasterToneMap != preset.rawOppoMasterToneMap) {
                    add(
                        "rawOppoMasterToneMap current=$rawOppoMasterToneMap " +
                            "preset=${preset.rawOppoMasterToneMap}"
                    )
                }
                if (rawEngineToneCurve != preset.rawEngineToneCurve()) {
                    add("rawEngineToneCurve current=$rawEngineToneCurve preset=${preset.rawEngineToneCurve()}")
                }
                if (rawSpectralFilmStock != preset.rawSpectralFilmStock) {
                    add("rawSpectralFilmStock current=$rawSpectralFilmStock preset=${preset.rawSpectralFilmStock}")
                }
                if (rawSpectralFilmPrint != preset.rawSpectralFilmPrint) {
                    add("rawSpectralFilmPrint current=$rawSpectralFilmPrint preset=${preset.rawSpectralFilmPrint}")
                }
                val presetFotufilmDocument =
                    FotufilmDocumentStorage.decode(preset.rawFotufilmDocument, "preset ${preset.id}")
                if (rawFotufilmDocument != presetFotufilmDocument) {
                    add("rawFotufilmDocument current=$rawFotufilmDocument preset=$presetFotufilmDocument")
                }
                if (rawDROMode != preset.rawDROMode) {
                    add("rawDROMode current=$rawDROMode preset=${preset.rawDROMode}")
                }
                if (rawBaselineLutId != preset.rawBaselineLutId) {
                    add("rawBaselineLutId current=$rawBaselineLutId preset=${preset.rawBaselineLutId}")
                }
            }
        }
        return differences.joinToString("; ").ifEmpty { "unknown" }
    }
}

private data class ActivePresetMatchState(
    val prefs: UserPreferences,
    val presets: List<com.hinnka.mycamera.model.CameraPreset>,
    val aspectRatio: String,
    val lutId: String,
    val recipe: ColorRecipeParams,
    val effects: EffectParams
)

private data class SettingValue<T>(val value: T)

internal fun resolveMultiFrameOutputScale(
    useJpgMax: Boolean,
    useRawMax: Boolean,
    rawMaxOutputScale: Float,
    jpgMultiFrameDenoiseOutputScale: Float = MultiFrameConfig.DEFAULT_SUPER_RESOLUTION_SCALE,
): Float? = when {
    useRawMax -> MultiFrameConfig.normalizeOutputScale(
        outputScale = rawMaxOutputScale,
        fallback = MultiFrameConfig.DEFAULT_SUPER_RESOLUTION_SCALE,
    )
    useJpgMax -> MultiFrameConfig.normalizeOutputScale(jpgMultiFrameDenoiseOutputScale)
    else -> null
}

internal fun resolveLutIdForCaptureMode(
    photoLutId: String?,
    videoLutId: String?,
    separateVideoLutEnabled: Boolean,
    captureMode: CaptureMode,
    defaultLutId: String?,
): String? {
    val persistedLutId = if (captureMode == CaptureMode.VIDEO && separateVideoLutEnabled) {
        videoLutId ?: photoLutId
    } else {
        photoLutId
    }
    return persistedLutId ?: defaultLutId
}

private data class CameraFeatureUpdate(
    val captureMode: SettingValue<CaptureMode>? = null,
    val lutId: SettingValue<String?>? = null,
    val colorRecipe: SettingValue<ColorRecipeParams>? = null,
    val effects: SettingValue<EffectParams>? = null,
    val aspectRatio: SettingValue<AspectRatio>? = null,
    val useRaw: SettingValue<Boolean>? = null,
    val useJpgMax: SettingValue<Boolean>? = null,
    val useRawMax: SettingValue<Boolean>? = null,
    val ultraHdrGainMapEnabled: SettingValue<Boolean>? = null,
    val frameId: SettingValue<String?>? = null,
    val rawDcpId: SettingValue<String?>? = null,
    val rawDcpIdsByLens: SettingValue<Map<String, String?>>? = null,
    val rawHncsProfileId: SettingValue<String?>? = null,
    val rawHncsRenderIntent: SettingValue<HncsRenderIntent>? = null,
    val rawHncsFilmCurveMode: SettingValue<HncsFilmCurveMode>? = null,
    val rawRenderingEngine: SettingValue<RawRenderingEngine>? = null,
    val rawMaxSharpening: SettingValue<Float>? = null,
    val rawMaxNoiseReduction: SettingValue<Float>? = null,
    val rawMaxChromaNoiseReduction: SettingValue<Float>? = null,
    val rawExposureCompensation: SettingValue<Float>? = null,
    val rawHighlightsAdjustment: SettingValue<Float>? = null,
    val rawShadowsAdjustment: SettingValue<Float>? = null,
    val rawBlackPointCorrection: SettingValue<Float>? = null,
    val rawWhitePointCorrection: SettingValue<Float>? = null,
    val rawProfileToneMapMode: SettingValue<RawProfileToneMapMode>? = null,
    val rawOppoMasterToneMap: SettingValue<Boolean>? = null,
    val rawLumixPhotoStyle: SettingValue<LumixPhotoStyle>? = null,
    val rawCanonPictureStyle: SettingValue<CanonPictureStyle>? = null,
    val rawCanonExposureCompensationEv: SettingValue<Float>? = null,
    val rawLumixColorMatchingEnabled: SettingValue<Boolean>? = null,
    val rawHncsColorMatchingEnabled: SettingValue<Boolean>? = null,
    val rawCanonUseR5ColorMatrix: SettingValue<Boolean>? = null,
    val rawLeicaUseM9ColorMatrix: SettingValue<Boolean>? = null,
    /** 仅消费 AgX / Filmic 曲线参数。 */
    val rawEngineToneCurve: SettingValue<RawToneMappingParameters>? = null,
    val rawSpectralFilmStock: SettingValue<String?>? = null,
    val rawSpectralFilmPrint: SettingValue<String?>? = null,
    val rawFotufilmDocument: SettingValue<FotufilmDocument?>? = null,
    val droMode: SettingValue<String>? = null,
    val rawBaselineLutId: SettingValue<String?>? = null,
    val activePresetId: SettingValue<String?>? = null,
    val useMultipleExposure: SettingValue<Boolean>? = null
)

/**
 * 相机 ViewModel
 * 使用 Camera2Controller 支持隐藏摄像头
 */
@OptIn(ExperimentalCoroutinesApi::class)
class CameraViewModel(application: Application) : AndroidViewModel(application) {

    companion object {
        private const val TAG = "CameraViewModel"
        private const val HDR_BRACKET_FRAME_COUNT = 3
        private const val HDR_BRACKET_ZERO_INDEX = 0
        private const val HDR_BRACKET_LOW_INDEX = 2
        private const val FIRST_PREVIEW_PREWARM_GRACE_MS = 1_000L
        private const val MIN_PREWARM_MEMORY_CLASS_MB = 384
        private const val EYE_FOCUS_MOVE_THRESHOLD = 0.035f
        private const val EYE_FOCUS_MAX_AF_TRIGGER_FPS = 15L
        private const val EYE_FOCUS_MIN_TRIGGER_INTERVAL_MS =
            (1_000L + EYE_FOCUS_MAX_AF_TRIGGER_FPS - 1L) / EYE_FOCUS_MAX_AF_TRIGGER_FPS
        private const val EYE_FOCUS_REFRESH_INTERVAL_MS = 1_800L
        private const val EYE_FOCUS_RETRY_INTERVAL_MS = 1_200L
        private const val PORTRAIT_MASK_MAX_AGE_NS = 1_000_000_000L
    }

    private data class HdrBracketFrame(
        val image: SafeImage,
        val captureResult: CaptureResult?,
        val originalIndex: Int,
        val timestamp: Long
    )

    private data class HdrBracketFrameOrder(
        val images: List<SafeImage>,
        val captureResults: List<CaptureResult?>
    )

    private val cameraController = Camera2Controller(application)

    // 内容仓库（单例，与 GalleryViewModel 共享）
    private val contentRepository = ContentRepository.getInstance(application)
    private val presetPackageManager = PresetPackageManager(application, contentRepository)

    private val userPreferencesRepository = contentRepository.userPreferencesRepository
    private val previewEyeFocusProcessor = PreviewEyeFocusProcessor(application)

    // 计费管理器
    private val billingManager = com.hinnka.mycamera.billing.BillingManagerImpl(application)
    val isPurchased = billingManager.isPurchased

    // 快门音效播放器
    private val shutterSoundPlayer = ShutterSoundPlayer(application)
    private val captureSoundRepository = CaptureSoundRepository(application, userPreferencesRepository)
    private val _captureSoundImporting = MutableStateFlow(false)
    val captureSoundImporting = _captureSoundImporting.asStateFlow()
    private val _captureSoundErrors = MutableSharedFlow<Int>(extraBufferCapacity = 1)
    val captureSoundErrors = _captureSoundErrors.asSharedFlow()

    // 震动辅助类
    private val vibrationHelper = VibrationHelper(application)
    private val videoAudioInputManager = VideoAudioInputManager(application)

    private val locationManager = LocationManager(application)
    private var locationTrackingForeground = false

    val state: StateFlow<CameraState> = cameraController.state
    val livePhotoRecorder get() = cameraController.livePhotoRecorder
    val realtimeStabilizationCoordinator get() = cameraController.realtimeStabilizationCoordinator
    val isAlgorithmicStabilizationSupported: Boolean
        get() = cameraController.realtimeStabilizationCoordinator.isGyroscopeAvailable

    // 照片保存完成事件
    private val _imageSavedEvent = MutableSharedFlow<String?>()
    val imageSavedEvent: SharedFlow<String?> = _imageSavedEvent.asSharedFlow()

    // Shutter completion is independent of image delivery and the render/save queue.
    private val _captureCompletedEvent = MutableSharedFlow<MediaMetadata>()
    val captureCompletedEvent = _captureCompletedEvent.asSharedFlow()

    private val _isInitialized = MutableStateFlow(false)
    val isInitialized = _isInitialized.asStateFlow()

    private val _canStartShutterAnimation = MutableStateFlow(false)
    val canStartShutterAnimation = _canStartShutterAnimation.asStateFlow()

    // LUT 相关状态
    var currentLutConfig: LutConfig? by mutableStateOf(null)
        private set

    var currentBaselineLutConfig: LutConfig? by mutableStateOf(null)
        private set

    private val _currentEnginePreviewPlan = MutableStateFlow<RawEnginePreviewPlan?>(null)
    val currentEnginePreviewPlan = _currentEnginePreviewPlan.asStateFlow()

    var currentLutId = MutableStateFlow("standard")
        private set

    @OptIn(ExperimentalCoroutinesApi::class)
    val currentRecipeParams: StateFlow<ColorRecipeParams> = currentLutId.flatMapLatest { id ->
        contentRepository.lutManager.getColorRecipeParams(id)
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.Eagerly,
        initialValue = ColorRecipeParams.DEFAULT
    )

    val currentEffectParams: StateFlow<EffectParams> = currentRecipeParams
        .map { it.toEffectParams() }
        .stateIn(viewModelScope, SharingStarted.Eagerly, EffectParams.DEFAULT)

    // 合并内置预设与用户自定义预设
    val allPresets: StateFlow<List<com.hinnka.mycamera.model.CameraPreset>> = userPreferencesRepository.userPreferences
        .map { prefs ->
            val deletedIds = prefs.deletedBuiltInIds.split(",").filter { it.isNotEmpty() }.toSet()
            val builtInsById = com.hinnka.mycamera.model.CameraPreset.BUILT_IN_PRESETS.associateBy { it.id }
            val orderedPresets = prefs.customPresets
                .filter { it.id !in deletedIds }
                .map { saved ->
                    builtInsById[saved.id]?.let { builtin ->
                        builtin.copy(
                            name = saved.name,
                            lutId = saved.lutId,
                            colorRecipe = saved.colorRecipe,
                            effects = saved.effects,
                            aspectRatio = saved.aspectRatio,
                            ultraHdrGainMapEnabled = saved.ultraHdrGainMapEnabled,
                            frameId = saved.frameId,
                            rawDcpId = saved.rawDcpId,
                            rawDcpIdsByLens = saved.rawDcpIdsByLens,
                            rawHncsProfileId = saved.rawHncsProfileId,
                            rawHncsRenderIntent = saved.rawHncsRenderIntent,
                            rawHncsFilmCurveMode = saved.rawHncsFilmCurveMode,
                            rawRenderingEngine = saved.rawRenderingEngine,
                            rawMaxSharpening = saved.rawMaxSharpening,
                            rawMaxNoiseReduction = saved.rawMaxNoiseReduction,
                            rawMaxChromaNoiseReduction = saved.rawMaxChromaNoiseReduction,
                            rawExposureCompensation = saved.rawExposureCompensation,
                            rawHighlightsAdjustment = saved.rawHighlightsAdjustment,
                            rawShadowsAdjustment = saved.rawShadowsAdjustment,
                            rawBlackPointCorrection = saved.rawBlackPointCorrection,
                            rawWhitePointCorrection = saved.rawWhitePointCorrection,
                            rawOppoMasterToneMap = saved.rawOppoMasterToneMap,
                            rawLumixPhotoStyle = saved.rawLumixPhotoStyle,
                            rawCanonPictureStyle = saved.rawCanonPictureStyle,
                            rawCanonExposureCompensationEv = saved.rawCanonExposureCompensationEv,
                            rawLumixColorMatchingEnabled = saved.rawLumixColorMatchingEnabled,
                            rawHncsColorMatchingEnabled = saved.rawHncsColorMatchingEnabled,
                            rawCanonUseR5ColorMatrix = saved.rawCanonUseR5ColorMatrix,
                            rawLeicaUseM9ColorMatrix = saved.rawLeicaUseM9ColorMatrix,
                            rawAgxBlackRelativeExposure = saved.rawAgxBlackRelativeExposure,
                            rawAgxWhiteRelativeExposure = saved.rawAgxWhiteRelativeExposure,
                            rawAgxToe = saved.rawAgxToe,
                            rawAgxShoulder = saved.rawAgxShoulder,
                            rawFilmicBlackRelativeExposure = saved.rawFilmicBlackRelativeExposure,
                            rawFilmicWhiteRelativeExposure = saved.rawFilmicWhiteRelativeExposure,
                            rawSpectralFilmStock = saved.rawSpectralFilmStock,
                            rawSpectralFilmPrint = saved.rawSpectralFilmPrint,
                            rawFotufilmDocument = saved.rawFotufilmDocument,
                            rawDROMode = saved.rawDROMode,
                            rawBaselineLutId = saved.rawBaselineLutId
                        )
                    } ?: saved
                }
            val orderedIds = orderedPresets.map { it.id }.toSet()
            val missingBuiltIns = com.hinnka.mycamera.model.CameraPreset.BUILT_IN_PRESETS
                .filter { it.id !in deletedIds && it.id !in orderedIds }
            val visibleBuiltInIds = com.hinnka.mycamera.model.CameraPreset.BUILT_IN_PRESETS
                .filter { it.id !in deletedIds }
                .map { it.id }
                .toSet()
            val hasCompleteSavedBuiltInOrder = visibleBuiltInIds.isNotEmpty() &&
                visibleBuiltInIds.all { builtInId -> orderedPresets.any { it.id == builtInId } }

            if (hasCompleteSavedBuiltInOrder) {
                orderedPresets + missingBuiltIns
            } else {
                val overridesById = orderedPresets.associateBy { it.id }
                val builtInsWithOverrides = com.hinnka.mycamera.model.CameraPreset.BUILT_IN_PRESETS
                    .filter { it.id !in deletedIds }
                    .map { builtin -> overridesById[builtin.id] ?: builtin }
                val customs = orderedPresets.filter { it.id !in visibleBuiltInIds }
                builtInsWithOverrides + customs
            }
        }
        .stateIn(viewModelScope, SharingStarted.Eagerly, com.hinnka.mycamera.model.CameraPreset.BUILT_IN_PRESETS)

    private val activePresetMatchState: StateFlow<ActivePresetMatchState?> = combine(
        combine(
            userPreferencesRepository.userPreferences,
            allPresets,
            isInitialized
        ) { prefs, presets, initialized ->
            if (initialized) prefs to presets else null
        },
        state.map { it.aspectRatio.name }.distinctUntilChanged(),
        currentLutId.flatMapLatest { lutId ->
            contentRepository.lutManager.getColorRecipeParams(lutId).map { recipe ->
                lutId to recipe
            }
        }
    ) { inputs, aspectRatio, (lutId, recipe) ->
        inputs?.let { (prefs, presets) ->
            ActivePresetMatchState(
                prefs = prefs,
                presets = presets,
                aspectRatio = aspectRatio,
                lutId = lutId,
                recipe = recipe,
                effects = recipe.toEffectParams()
            )
        }
    }.stateIn(viewModelScope, SharingStarted.Eagerly, null)

    private val presetApplyInProgress = MutableStateFlow(false)

    /**
     * Whether the settings currently in use differ from the selected preset.
     * Selection and matching are deliberately independent: editing a setting keeps the preset
     * selected and only marks it as modified.
     */
    val isActivePresetModified: StateFlow<Boolean> = combine(
        activePresetMatchState,
        presetApplyInProgress
    ) { matchState, applyingPreset ->
        if (applyingPreset) {
            false
        } else {
            val presetId = matchState?.prefs?.activePresetId ?: return@combine false
            val preset = matchState.presets.firstOrNull { it.id == presetId }
                ?: return@combine false
            !matchState.toPresetMatchSnapshot().matches(preset)
        }
    }
        .distinctUntilChanged()
        .stateIn(viewModelScope, SharingStarted.Eagerly, false)

    var draftPreset: com.hinnka.mycamera.model.CameraPreset? = null

    private val presetApplyMutex = Mutex()
    private val presetMutationMutex = Mutex()
    private var presetApplyGeneration = 0L
    private var lutLoadJob: Job? = null
    private var lutLoadGeneration = 0L
    private var shootingModeSwitchJob: Job? = null

    fun prepareCurrentSettingsPresetDraft(name: String): com.hinnka.mycamera.model.CameraPreset {
        return createPresetFromCurrentSettings(
            id = UUID.randomUUID().toString(),
            name = name,
            isBuiltIn = false
        ).also {
            draftPreset = it
        }
    }

    private fun createPresetFromCurrentSettings(
        id: String,
        name: String,
        isBuiltIn: Boolean
    ): com.hinnka.mycamera.model.CameraPreset {
        return com.hinnka.mycamera.model.CameraPreset(
            id = id,
            name = name,
            lutId = CameraPreset.normalizeLutId(currentLutId.value),
            colorRecipe = currentRecipeParams.value.withoutIndependentEffects(),
            effects = currentRecipeParams.value.toEffectParams(),
            aspectRatio = state.value.aspectRatio.name,
            ultraHdrGainMapEnabled = userPreferencesRepository.current.ultraHdrGainMapEnabled,
            frameId = currentFrameId,
            rawDcpId = userPreferencesRepository.current.rawDcpId,
            rawDcpIdsByLens = userPreferences.value.rawDcpIdsByLens,
            rawHncsProfileId = userPreferencesRepository.current.rawHncsProfileId,
            rawHncsRenderIntent = userPreferencesRepository.current.rawHncsRenderIntent.assetValue,
            rawHncsFilmCurveMode = userPreferencesRepository.current.rawHncsFilmCurveMode.persistedValue,
            rawRenderingEngine = userPreferencesRepository.current.rawRenderingEngine.name,
            rawMaxSharpening = userPreferences.value.rawMaxSharpening,
            rawMaxNoiseReduction = userPreferences.value.rawMaxNoiseReduction,
            rawMaxChromaNoiseReduction = userPreferences.value.rawMaxChromaNoiseReduction,
            rawExposureCompensation = userPreferences.value.rawExposureCompensation,
            rawHighlightsAdjustment = userPreferences.value.rawHighlightsAdjustment,
            rawShadowsAdjustment = userPreferences.value.rawShadowsAdjustment,
            rawBlackPointCorrection = userPreferences.value.rawBlackPointCorrection,
            rawWhitePointCorrection = userPreferences.value.rawWhitePointCorrection,
            rawOppoMasterToneMap = userPreferencesRepository.current.rawToneMappingParameters.useOppoMasterToneMap,
            rawLumixPhotoStyle = userPreferencesRepository.current.rawToneMappingParameters.lumixPhotoStyle.assetName,
            rawCanonPictureStyle = userPreferencesRepository.current.rawToneMappingParameters.canonPictureStyle.persistedValue,
            rawCanonExposureCompensationEv = userPreferencesRepository.current.rawToneMappingParameters.canonExposureCompensationEv,
            rawLumixColorMatchingEnabled = userPreferencesRepository.current.rawToneMappingParameters.lumixColorMatchingEnabled,
            rawHncsColorMatchingEnabled = userPreferencesRepository.current.rawToneMappingParameters.hncsColorMatchingEnabled,
            rawCanonUseR5ColorMatrix = userPreferencesRepository.current.rawToneMappingParameters.canonUseR5ColorMatrix,
            rawLeicaUseM9ColorMatrix = userPreferencesRepository.current.rawToneMappingParameters.leicaUseM9ColorMatrix,
            rawAgxBlackRelativeExposure = userPreferencesRepository.current.rawToneMappingParameters.agxBlackRelativeExposure,
            rawAgxWhiteRelativeExposure = userPreferencesRepository.current.rawToneMappingParameters.agxWhiteRelativeExposure,
            rawAgxToe = userPreferencesRepository.current.rawToneMappingParameters.agxToe,
            rawAgxShoulder = userPreferencesRepository.current.rawToneMappingParameters.agxShoulder,
            rawFilmicBlackRelativeExposure = userPreferencesRepository.current.rawToneMappingParameters.filmicBlackRelativeExposure,
            rawFilmicWhiteRelativeExposure = userPreferencesRepository.current.rawToneMappingParameters.filmicWhiteRelativeExposure,
            rawSpectralFilmStock = userPreferencesRepository.current.rawSpectralFilmStock,
            rawSpectralFilmPrint = userPreferencesRepository.current.rawSpectralFilmPrint,
            rawFotufilmDocument = FotufilmDocumentStorage.encode(rawFotufilmDocument.value),
            rawDROMode = userPreferencesRepository.current.droMode,
            rawBaselineLutId = userPreferencesRepository.current.rawBaselineLutId,
            isBuiltIn = isBuiltIn
        )
    }

    fun getMergedRecipeParams(recipe: ColorRecipeParams = currentRecipeParams.value): ColorRecipeParams {
        return recipe
    }

    fun applyPreset(preset: com.hinnka.mycamera.model.CameraPreset?) {
        val applyGeneration = ++presetApplyGeneration
        presetApplyInProgress.value = true
        viewModelScope.launch {
            var applied = false
            try {
                presetApplyMutex.withLock {
                    if (presetApplyGeneration != applyGeneration) {
                        return@withLock
                    }
                    val currentState = state.value
                    val includePhotoSettings = currentState.captureMode == CaptureMode.PHOTO
                    val includeProfessionalSettings = includePhotoSettings &&
                        userPreferencesRepository.current.useRaw && currentState.isRawSupported
                    PLog.d(
                        TAG,
                        "Applying preset id=${preset?.id}, captureMode=${currentState.captureMode}, " +
                            "professional=$includeProfessionalSettings, frameId=${preset?.frameId}"
                    )
                    applyCameraFeatureUpdate(
                        preset.toCameraFeatureUpdate(
                            includePhotoSettings = includePhotoSettings,
                            includeProfessionalSettings = includeProfessionalSettings
                        ).copy(activePresetId = SettingValue(preset?.id))
                    )
                    applied = true
                }

                if (applied && presetApplyGeneration == applyGeneration) {
                    activePresetMatchState.filterNotNull().first { matchState ->
                        matchState.prefs.activePresetId == preset?.id &&
                            (preset == null || matchState.toPresetMatchSnapshot().matches(preset))
                    }
                }
            } finally {
                if (presetApplyGeneration == applyGeneration) {
                    presetApplyInProgress.value = false
                }
            }
        }
    }

    private fun com.hinnka.mycamera.model.CameraPreset?.toCameraFeatureUpdate(
        includePhotoSettings: Boolean,
        includeProfessionalSettings: Boolean
    ): CameraFeatureUpdate {
        val ratio = if (includePhotoSettings) {
            try {
                AspectRatio.valueOf(this?.aspectRatio ?: AspectRatio.RATIO_4_3.name)
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to apply preset aspectRatio: ${this?.aspectRatio}", e)
                AspectRatio.RATIO_4_3
            }
        } else {
            null
        }
        val sharedUpdate = CameraFeatureUpdate(
            lutId = SettingValue(CameraPreset.normalizeLutId(this?.lutId)),
            colorRecipe = SettingValue(this?.colorRecipe ?: ColorRecipeParams.DEFAULT),
            effects = SettingValue(this?.effects ?: EffectParams.DEFAULT),
            aspectRatio = ratio?.let(::SettingValue),
            frameId = SettingValue(this?.frameId)
        )
        if (!includeProfessionalSettings) return sharedUpdate

        return sharedUpdate.copy(
            ultraHdrGainMapEnabled = SettingValue(this?.ultraHdrGainMapEnabled ?: false),
            rawDcpId = SettingValue(this?.rawDcpId),
            rawDcpIdsByLens = SettingValue(this?.rawDcpIdsByLens ?: emptyMap()),
            rawHncsProfileId = SettingValue(HncsProfileManager.DEFAULT_PROFILE_ID),
            rawHncsRenderIntent = SettingValue(HncsRenderIntent.Standard),
            rawHncsFilmCurveMode = SettingValue(
                HncsFilmCurveMode.fromPersistedValue(this?.rawHncsFilmCurveMode)
            ),
            rawRenderingEngine = SettingValue(
                RawRenderingEngine.fromPersistedName(this?.rawRenderingEngine)
            ),
            rawMaxSharpening = SettingValue(
                this?.rawMaxSharpening ?: RawSharpeningDefaults.DEFAULT_STRENGTH
            ),
            rawMaxNoiseReduction = SettingValue(
                this?.rawMaxNoiseReduction ?: RawDenoiseDefaults.RAW_MAX_LUMA_STRENGTH
            ),
            rawMaxChromaNoiseReduction = SettingValue(
                this?.rawMaxChromaNoiseReduction
                    ?: RawDenoiseDefaults.RAW_MAX_CHROMA_STRENGTH
            ),
            rawExposureCompensation = SettingValue(this?.rawExposureCompensation ?: 0f),
            rawHighlightsAdjustment = SettingValue(this?.rawHighlightsAdjustment ?: 0f),
            rawShadowsAdjustment = SettingValue(this?.rawShadowsAdjustment ?: 0f),
            rawBlackPointCorrection = SettingValue(this?.rawBlackPointCorrection ?: 0f),
            rawWhitePointCorrection = SettingValue(this?.rawWhitePointCorrection ?: 0f),
            rawOppoMasterToneMap = SettingValue(this?.rawOppoMasterToneMap ?: false),
            rawLumixPhotoStyle = SettingValue(LumixPhotoStyle.fromPersistedValue(this?.rawLumixPhotoStyle)),
            rawCanonPictureStyle = SettingValue(CanonPictureStyle.fromPersistedValue(this?.rawCanonPictureStyle)),
            rawCanonExposureCompensationEv = SettingValue(this?.rawCanonExposureCompensationEv
                ?: RawToneMappingParameters.CANON_EXPOSURE_COMPENSATION_DEFAULT),
            rawLumixColorMatchingEnabled = SettingValue(this?.rawLumixColorMatchingEnabled ?: true),
            rawHncsColorMatchingEnabled = SettingValue(this?.rawHncsColorMatchingEnabled ?: true),
            rawCanonUseR5ColorMatrix = SettingValue(this?.rawCanonUseR5ColorMatrix ?: false),
            rawLeicaUseM9ColorMatrix = SettingValue(this?.rawLeicaUseM9ColorMatrix ?: false),
            rawEngineToneCurve = SettingValue(
                this?.rawEngineToneCurve() ?: RawToneMappingParameters.DEFAULT
            ),
            rawSpectralFilmStock = SettingValue(this?.rawSpectralFilmStock),
            rawSpectralFilmPrint = SettingValue(this?.rawSpectralFilmPrint),
            rawFotufilmDocument = SettingValue(
                FotufilmDocumentStorage.decode(this?.rawFotufilmDocument, "preset ${this?.id}")
            ),
            droMode = SettingValue(
                this?.rawDROMode ?: RawProcessingPreferences.DROMode.OFF.name
            ),
            rawBaselineLutId = SettingValue(this?.rawBaselineLutId)
        )
    }

    private suspend fun applyCameraFeatureUpdate(
        update: CameraFeatureUpdate,
        reconfigureCameraIfNeeded: Boolean = true,
    ) {
        val prefs = userPreferencesRepository.userPreferences.first()
        var desiredUseRaw = prefs.useRaw
        var desiredUseJpgMax = prefs.useJpgMax
        var desiredUseRawMax = prefs.useRawMax
        var desiredUseMultipleExposure = prefs.useMultipleExposure
        var desiredRawRenderingEngine = prefs.rawRenderingEngine

        update.useRaw?.let { desiredUseRaw = it.value }
        update.useJpgMax?.let { desiredUseJpgMax = it.value }
        update.useRawMax?.let { desiredUseRawMax = it.value }
        update.useMultipleExposure?.let { desiredUseMultipleExposure = it.value }
        update.rawRenderingEngine?.let { desiredRawRenderingEngine = it.value }

        if (update.useRaw?.value == true) {
            desiredUseMultipleExposure = false
            desiredUseRawMax = true
        } else if (update.useRaw?.value == false) {
            desiredUseRawMax = false
        }
        if (update.useJpgMax?.value == true) {
            desiredUseRaw = false
            desiredUseMultipleExposure = false
            desiredUseRawMax = false
        }
        if (update.useRawMax?.value == true) {
            desiredUseRaw = true
            desiredUseMultipleExposure = false
        }
        if (update.useMultipleExposure?.value == true) {
            desiredUseRaw = false
            desiredUseJpgMax = false
            desiredUseRawMax = false
        }
        // 专业模式与 HDR+ 是同一个拍摄能力，不再保留可独立关闭的状态。
        desiredUseRawMax = desiredUseRaw
        val activeUseJpgMax = desiredUseJpgMax && !desiredUseRaw
        if (activeUseJpgMax && prefs.useLivePhoto) {
            cameraController.setUseLivePhoto(false)
            userPreferencesRepository.update { useLivePhoto = false }
        }
        val desiredMultiFrameOutputScale = resolveMultiFrameOutputScale(
            useJpgMax = activeUseJpgMax,
            useRawMax = desiredUseRawMax,
            rawMaxOutputScale = prefs.rawMaxOutputScale,
            jpgMultiFrameDenoiseOutputScale = prefs.jpgMultiFrameDenoiseOutputScale,
        )
        val currentState = state.value
        val targetCaptureMode = update.captureMode?.value ?: currentState.captureMode
        val captureModeWillChange = targetCaptureMode != currentState.captureMode
        val persistLutInVideoSlot = currentState.captureMode == CaptureMode.VIDEO &&
            prefs.separateVideoLutEnabled && update.lutId != null
        val targetAspectRatio = update.aspectRatio?.value
        val needsCameraReopen =
            targetAspectRatio != null && targetAspectRatio != currentState.aspectRatio ||
                desiredUseRaw != prefs.useRaw ||
                desiredMultiFrameOutputScale != currentState.multiFrameOutputScale

        update.colorRecipe?.let {
            val recipeLutId = if (update.lutId != null) {
                update.lutId.value ?: "none"
            } else {
                currentLutId.value
            }
            val recipeWithEffects = update.effects?.value?.applyTo(it.value) ?: it.value
            contentRepository.lutManager.saveColorRecipeParams(recipeLutId, recipeWithEffects)
        }

        update.lutId?.let {
            setLut(it.value, persist = false)
        }

        update.aspectRatio?.let {
            cameraController.setAspectRatio(it.value)
        }

        if (desiredUseMultipleExposure != prefs.useMultipleExposure) {
            if (!desiredUseMultipleExposure) {
                cancelMultipleExposureSession()
            }
            multipleExposureState = multipleExposureState.copy(enabled = desiredUseMultipleExposure)
        }
        if (update.useMultipleExposure != null || desiredUseMultipleExposure != prefs.useMultipleExposure) {
            cameraController.setUseMultipleExposure(desiredUseMultipleExposure)
        }

        if (update.useRaw != null || desiredUseRaw != prefs.useRaw) {
            cameraController.setUseRaw(
                enabled = desiredUseRaw,
                // This transaction already performs the required reopen below. Avoid a
                // duplicate restart, but still let same-value calls repair a stale output.
                reconfigureCaptureOutputIfNeeded =
                    reconfigureCameraIfNeeded &&
                        !needsCameraReopen &&
                        !captureModeWillChange
            )
        }
        if (update.useJpgMax != null || update.useRawMax != null ||
            desiredMultiFrameOutputScale != currentState.multiFrameOutputScale
        ) {
            cameraController.setMultiFrameOutputScale(desiredMultiFrameOutputScale)
        }

        if (captureModeWillChange) {
            cameraController.setCaptureMode(targetCaptureMode)
            if (targetCaptureMode == CaptureMode.VIDEO) {
                // Photo mode disables the active Log profile without clearing the saved selection.
                cameraController.setVideoLogProfile(prefs.videoLogProfile)
            }
            resolveLutIdForMode(prefs, targetCaptureMode)?.let(::applyLut)
            currentSurfaceTexture = null
            cameraController.closeCamera()
        }

        update.frameId?.let {
            currentFrameId = it.value
        }

        if (update.rawDcpId != null || update.rawDcpIdsByLens != null) {
            prewarmRawDcp(
                UserPreferences.resolveRawDcpIdForLens(
                    rawDcpId = update.rawDcpId?.value ?: prefs.rawDcpId,
                    rawDcpIdsByLens = update.rawDcpIdsByLens?.value ?: prefs.rawDcpIdsByLens,
                    lensId = currentState.currentCameraId,
                )
            )
        }

        val rawToneMappingUpdate = if (
            update.rawProfileToneMapMode != null ||
            update.rawOppoMasterToneMap != null || update.rawLumixPhotoStyle != null ||
            update.rawCanonPictureStyle != null || update.rawCanonExposureCompensationEv != null ||
            update.rawLumixColorMatchingEnabled != null || update.rawHncsColorMatchingEnabled != null ||
            update.rawCanonUseR5ColorMatrix != null ||
            update.rawLeicaUseM9ColorMatrix != null || update.rawEngineToneCurve != null
        ) {
            var toneMappingParameters = prefs.rawToneMappingParameters
            update.rawProfileToneMapMode?.let {
                toneMappingParameters = toneMappingParameters.withProfileToneMapMode(it.value)
            }
            update.rawOppoMasterToneMap?.let {
                toneMappingParameters = toneMappingParameters.withOppoMasterToneMap(it.value)
            }
            update.rawLumixPhotoStyle?.let {
                toneMappingParameters = toneMappingParameters.copy(lumixPhotoStyle = it.value)
            }
            update.rawCanonPictureStyle?.let {
                toneMappingParameters = toneMappingParameters.copy(canonPictureStyle = it.value)
            }
            update.rawCanonExposureCompensationEv?.let {
                toneMappingParameters = toneMappingParameters.copy(canonExposureCompensationEv = it.value)
            }
            update.rawLumixColorMatchingEnabled?.let {
                toneMappingParameters = toneMappingParameters.copy(lumixColorMatchingEnabled = it.value)
            }
            update.rawHncsColorMatchingEnabled?.let {
                toneMappingParameters = toneMappingParameters.copy(hncsColorMatchingEnabled = it.value)
            }
            update.rawCanonUseR5ColorMatrix?.let {
                toneMappingParameters = toneMappingParameters.copy(canonUseR5ColorMatrix = it.value)
            }
            update.rawLeicaUseM9ColorMatrix?.let {
                toneMappingParameters = toneMappingParameters.copy(leicaUseM9ColorMatrix = it.value)
            }
            update.rawEngineToneCurve?.let {
                toneMappingParameters = toneMappingParameters.withEngineToneCurveFrom(it.value)
            }
            toneMappingParameters
        } else {
            null
        }

        userPreferencesRepository.update {
            update.captureMode?.let { captureMode = it.value }
            if (!persistLutInVideoSlot) update.lutId?.let { lutId = it.value }
            update.effects?.let { activeEffectParams = it.value }
            update.aspectRatio?.let { aspectRatio = it.value.name }
            if (update.useRaw != null || desiredUseRaw != prefs.useRaw) useRaw = desiredUseRaw
            if (update.useJpgMax != null || desiredUseJpgMax != prefs.useJpgMax) useJpgMax = desiredUseJpgMax
            if (update.useRawMax != null || desiredUseRawMax != prefs.useRawMax) useRawMax = desiredUseRawMax
            update.ultraHdrGainMapEnabled?.let { ultraHdrGainMapEnabled = it.value }
            if (update.useMultipleExposure != null || desiredUseMultipleExposure != prefs.useMultipleExposure) {
                useMultipleExposure = desiredUseMultipleExposure
            }
            update.frameId?.let { frameId = it.value }
            update.rawDcpId?.let { rawDcpId = it.value }
            update.rawDcpIdsByLens?.let { rawDcpIdsByLens = it.value }
            update.rawHncsFilmCurveMode?.let { rawHncsFilmCurveMode = it.value }
            if (update.rawRenderingEngine != null || desiredRawRenderingEngine != prefs.rawRenderingEngine) {
                rawRenderingEngine = desiredRawRenderingEngine
            }
            rawToneMappingUpdate?.let { rawToneMappingParameters = it }
            update.rawMaxSharpening?.let { rawMaxSharpening = it.value }
            update.rawMaxNoiseReduction?.let { rawMaxNoiseReduction = it.value }
            update.rawMaxChromaNoiseReduction?.let { rawMaxChromaNoiseReduction = it.value }
            update.rawExposureCompensation?.let { rawExposureCompensation = it.value }
            update.rawHighlightsAdjustment?.let { rawHighlightsAdjustment = it.value }
            update.rawShadowsAdjustment?.let { rawShadowsAdjustment = it.value }
            update.rawBlackPointCorrection?.let { rawBlackPointCorrection = it.value }
            update.rawWhitePointCorrection?.let { rawWhitePointCorrection = it.value }
            update.rawSpectralFilmStock?.let { rawSpectralFilmStock = it.value }
            update.rawSpectralFilmPrint?.let { rawSpectralFilmPrint = it.value }
            update.rawFotufilmDocument?.let { rawFotufilmDocument = FotufilmDocumentStorage.encode(it.value) }
            update.droMode?.let { droMode = it.value }
            update.rawBaselineLutId?.let {
                rawBaselineLutId = it.value
                rawBaselineLutConfigured = true
            }
            update.activePresetId?.let { activePresetId = it.value }
        }
        if (persistLutInVideoSlot) {
            userPreferencesRepository.update { videoLutId = update.lutId.value ?: "none" }
        }

        if (reconfigureCameraIfNeeded && needsCameraReopen && !captureModeWillChange) {
            reopenCamera()
        }
    }

    private fun resolveCaptureRawRenderingEngine(userPrefs: UserPreferences?): RawRenderingEngine {
        return userPrefs?.rawRenderingEngine ?: RawRenderingEngine.AdobeCurve
    }

    private fun resolveCaptureRawToneMappingParameters(
        userPrefs: UserPreferences?
    ): RawToneMappingParameters {
        val base = userPrefs?.rawToneMappingParameters ?: RawToneMappingParameters.DEFAULT
        return base.withPhotonHdr(true)
    }

    fun savePreset(preset: com.hinnka.mycamera.model.CameraPreset) {
        viewModelScope.launch {
            val resolvedPreset = presetMutationMutex.withLock {
                val normalizedPreset = preset.normalizedForPersistence()
                val currentList = userPreferencesRepository.userPreferences
                    .first()
                    .customPresets
                    .toMutableList()
                val index = currentList.indexOfFirst { it.id == normalizedPreset.id }
                if (index >= 0) {
                    currentList[index] = normalizedPreset
                } else {
                    currentList.add(normalizedPreset)
                }
                userPreferencesRepository.update { customPresets = currentList }
                normalizedPreset
            }
            applyPreset(resolvedPreset)
        }
    }

    fun resetActivePreset() {
        val presetId = userPreferencesRepository.current.activePresetId ?: return
        val preset = allPresets.value.firstOrNull { it.id == presetId } ?: return
        applyPreset(preset)
    }

    fun saveCurrentSettingsToActivePreset() {
        val presetId = userPreferencesRepository.current.activePresetId ?: return
        val preset = allPresets.value.firstOrNull { it.id == presetId } ?: return
        savePreset(
            createPresetFromCurrentSettings(
                id = preset.id,
                name = preset.name,
                isBuiltIn = preset.isBuiltIn
            )
        )
    }

    suspend fun exportPresetPackage(
        preset: com.hinnka.mycamera.model.CameraPreset,
        displayName: String,
    ): ByteArray? = withContext(Dispatchers.IO) {
        presetPackageManager.exportPreset(preset, displayName)
    }

    suspend fun importPresetPackage(uri: Uri): Boolean = presetMutationMutex.withLock {
        withContext(NonCancellable) transaction@{
            val imported = withContext(Dispatchers.IO) {
                presetPackageManager.importPreset(uri)
            } ?: return@transaction false

            try {
                val currentPresets = userPreferencesRepository.userPreferences.first().customPresets
                userPreferencesRepository.update { customPresets = currentPresets + imported.preset }
            } catch (e: Exception) {
                withContext(Dispatchers.IO) {
                    presetPackageManager.rollbackImport(imported)
                    runCatching { contentRepository.refreshCustomContent() }
                }
                PLog.e(TAG, "Failed to persist imported preset: $uri", e)
                return@transaction false
            }

            withContext(Dispatchers.IO) {
                runCatching { contentRepository.refreshCustomContent() }
                    .onFailure { PLog.e(TAG, "Failed to refresh imported preset resources", it) }
            }
            true
        }
    }

    fun deletePreset(presetId: String) {
        viewModelScope.launch {
            presetMutationMutex.withLock {
                val currentList = userPreferencesRepository.userPreferences
                    .first()
                    .customPresets
                    .toMutableList()
                currentList.removeAll { it.id == presetId }
                userPreferencesRepository.update { customPresets = currentList }

                // 如果删除的是内置预设，将其加入 deletedBuiltInIds
                val isBuiltIn = com.hinnka.mycamera.model.CameraPreset.BUILT_IN_PRESETS.any { it.id == presetId }
                if (isBuiltIn) {
                    val currentDeleted = userPreferencesRepository.userPreferences.first().deletedBuiltInIds
                    val deletedList = currentDeleted.split(",").filter { it.isNotEmpty() }.toMutableList()
                    if (presetId !in deletedList) {
                        deletedList.add(presetId)
                        userPreferencesRepository.update { deletedBuiltInIds = deletedList.joinToString(",") }
                    }
                }

                if (userPreferencesRepository.current.activePresetId == presetId) {
                    userPreferencesRepository.update { activePresetId = null }
                }
            }
        }
    }

    fun resetToDefaultPresets() {
        viewModelScope.launch {
            presetMutationMutex.withLock {
                userPreferencesRepository.update { deletedBuiltInIds = "" }
                val currentList = userPreferencesRepository.userPreferences
                    .first()
                    .customPresets
                    .toMutableList()
                currentList.removeAll { it.isBuiltIn || it.id.startsWith("builtin_") }
                userPreferencesRepository.update { customPresets = currentList }
            }
        }
    }

    fun savePresetOrder(presets: List<com.hinnka.mycamera.model.CameraPreset>) {
        viewModelScope.launch {
            presetMutationMutex.withLock {
                val latestPresets = userPreferencesRepository.userPreferences.first().customPresets
                val latestById = latestPresets.associateBy { it.id }
                val orderedIds = presets.map { it.id }.toSet()
                val orderedPresets = presets.map { preset -> latestById[preset.id] ?: preset }
                val concurrentlyAddedPresets = latestPresets.filter { it.id !in orderedIds }
                userPreferencesRepository.update { customPresets = orderedPresets + concurrentlyAddedPresets }
            }
        }
    }

    private fun ActivePresetMatchState.toPresetMatchSnapshot(): PresetMatchSnapshot {
        return PresetMatchSnapshot(
            lutId = CameraPreset.normalizeLutId(lutId),
            colorRecipe = recipe,
            effects = effects,
            captureMode = prefs.captureMode,
            aspectRatio = aspectRatio,
            isProfessionalMode = prefs.captureMode == CaptureMode.PHOTO &&
                prefs.useRaw && prefs.useRawMax,
            ultraHdrGainMapEnabled = prefs.ultraHdrGainMapEnabled,
            frameId = prefs.frameId,
            rawDcpId = prefs.rawDcpId,
            rawDcpIdsByLens = prefs.rawDcpIdsByLens,
            rawHncsProfileId = prefs.rawHncsProfileId,
            rawHncsRenderIntent = prefs.rawHncsRenderIntent,
            rawHncsFilmCurveMode = prefs.rawHncsFilmCurveMode,
            rawRenderingEngine = prefs.rawRenderingEngine,
            rawMaxSharpening = prefs.rawMaxSharpening,
            rawMaxNoiseReduction = prefs.rawMaxNoiseReduction,
            rawMaxChromaNoiseReduction = prefs.rawMaxChromaNoiseReduction,
            rawExposureCompensation = prefs.rawExposureCompensation,
            rawHighlightsAdjustment = prefs.rawHighlightsAdjustment,
            rawShadowsAdjustment = prefs.rawShadowsAdjustment,
            rawBlackPointCorrection = prefs.rawBlackPointCorrection,
            rawWhitePointCorrection = prefs.rawWhitePointCorrection,
            rawOppoMasterToneMap = prefs.rawToneMappingParameters.useOppoMasterToneMap,
            rawLumixPhotoStyle = prefs.rawToneMappingParameters.lumixPhotoStyle,
            rawCanonPictureStyle = prefs.rawToneMappingParameters.canonPictureStyle,
            rawCanonExposureCompensationEv = prefs.rawToneMappingParameters.canonExposureCompensationEv,
            rawLumixColorMatchingEnabled = prefs.rawToneMappingParameters.lumixColorMatchingEnabled,
            rawHncsColorMatchingEnabled = prefs.rawToneMappingParameters.hncsColorMatchingEnabled,
            rawCanonUseR5ColorMatrix = prefs.rawToneMappingParameters.canonUseR5ColorMatrix,
            rawLeicaUseM9ColorMatrix = prefs.rawToneMappingParameters.leicaUseM9ColorMatrix,
            rawEngineToneCurve = prefs.rawToneMappingParameters.engineToneCurve(),
            rawSpectralFilmStock = prefs.rawSpectralFilmStock,
            rawSpectralFilmPrint = prefs.rawSpectralFilmPrint,
            rawFotufilmDocument = FotufilmDocumentStorage.decode(prefs.rawFotufilmDocument, "preferences"),
            rawDROMode = prefs.droMode,
            rawBaselineLutId = prefs.rawBaselineLutId
        )
    }

    @OptIn(ExperimentalCoroutinesApi::class)
    val currentBaselineRecipeParams: StateFlow<ColorRecipeParams> =
        userPreferencesRepository.userPreferences.flatMapLatest { prefs ->
            val target = resolvePreviewBaselineTarget(prefs)
            val lutId = prefs.rawBaselineLutId.takeIf { target != null }
            if (target == null || lutId == null) {
                flowOf(ColorRecipeParams.DEFAULT)
            } else {
                contentRepository.lutManager.getColorRecipeParams(lutId, target)
            }
        }.stateIn(
            scope = viewModelScope,
            started = SharingStarted.Eagerly,
            initialValue = ColorRecipeParams.DEFAULT
        )

    var availableLutList: List<LutInfo> by mutableStateOf(emptyList())
        private set

    val selectableLutList: List<LutInfo>
        get() {
            val profile = state.value.videoConfig.logProfile
            return if (state.value.captureMode == CaptureMode.VIDEO && profile.isEnabled) {
                availableLutList.filter {
                    it.id == "none" || profile.matchesLut(it.inputCurve, it.inputColorSpace)
                }
            } else availableLutList
        }

    // LUT 预览图缓存（lutId -> 预览Bitmap）
    var previewThumbnail by mutableStateOf<Bitmap?>(null)

    // 是否正在生成预览
    private var isGeneratingPreviews = false

    // 边框相关状态
    var currentFrameId: String? by mutableStateOf(null)
        private set

    var availableFrameList: List<FrameInfo> by mutableStateOf(emptyList())
        private set

    var zoomRatioByMain by mutableFloatStateOf(1f)
    var isZooming by mutableStateOf(false)
    val globalMinZoom: Float
        get() = state.value.availableCameras.filter { it.lensType != LensType.FRONT }.minOfOrNull { it.minZoom * it.displayIntrinsicZoomRatio } ?: 1f
    val globalMaxZoom: Float
        get() = state.value.availableCameras.filter { it.lensType != LensType.FRONT }.maxOfOrNull { it.maxZoom * it.displayIntrinsicZoomRatio } ?: 20f

    // 付费弹窗状态
    var showPaymentDialog by mutableStateOf(false)

    var isExpanded by mutableStateOf(false)

    private var startupPrewarmJob: Job? = null
    private var startupPrewarmAttempted = false

    val availablePhotoAspectRatios: StateFlow<List<AspectRatio>> = userPreferencesRepository.userPreferences
        .map { AspectRatio.entries + it.customAspectRatios }
        .stateIn(viewModelScope, SharingStarted.Eagerly, AspectRatio.entries)
    val rawFotufilmDocument: StateFlow<FotufilmDocument?> = userPreferencesRepository.userPreferences
        .map { it.rawFotufilmDocument }
        .distinctUntilChanged()
        .map { FotufilmDocumentStorage.decode(it, "preferences") }
        .stateIn(viewModelScope, SharingStarted.Eagerly, null)
    val rawSpectralFilmSelection: StateFlow<SpectralFilmSelection?> = userPreferencesRepository.userPreferences
        .map { prefs ->
            prefs.rawSpectralFilmStock?.let { stock ->
                SpectralFilmSelection(
                    id = stock,
                    tuning = prefs.rawSpectralFilmTuningsByStock[stock] ?: SpectralFilmTuning.DEFAULT
                )
            }
        }
        .stateIn(viewModelScope, SharingStarted.Eagerly, null)

    val zoomDisplayMode: StateFlow<ZoomDisplayMode> = userPreferencesRepository.userPreferences
        .map { ZoomDisplayMode.fromPersistedName(it.zoomDisplayMode) }
        .stateIn(viewModelScope, SharingStarted.Eagerly, ZoomDisplayMode.FOCAL_LENGTH)
    val userPreferences: StateFlow<UserPreferences> = userPreferencesRepository.userPreferences
        .stateIn(viewModelScope, SharingStarted.Eagerly, UserPreferences())
    val rawBlackLevelMode: StateFlow<String> = combine(
        state.map { it.currentCameraId }.distinctUntilChanged(),
        userPreferencesRepository.userPreferences
    ) { cameraId, prefs ->
        prefs.rawBlackLevelModes[cameraId] ?: "Default"
    }.stateIn(viewModelScope, SharingStarted.Eagerly, "Default")
    val rawCustomBlackLevel: StateFlow<Float> = combine(
        state.map { it.currentCameraId }.distinctUntilChanged(),
        userPreferencesRepository.userPreferences
    ) { cameraId, prefs ->
        prefs.rawCustomBlackLevels[cameraId] ?: 0f
    }.stateIn(viewModelScope, SharingStarted.Eagerly, 0f)
    val rawWhiteLevelMode: StateFlow<String> = combine(
        state.map { it.currentCameraId }.distinctUntilChanged(),
        userPreferencesRepository.userPreferences
    ) { cameraId, prefs ->
        prefs.rawWhiteLevelModes[cameraId] ?: RawWhiteLevelCorrection.MODE_DEFAULT
    }.stateIn(viewModelScope, SharingStarted.Eagerly, RawWhiteLevelCorrection.MODE_DEFAULT)
    val rawCustomWhiteLevel: StateFlow<Float> = combine(
        state.map { it.currentCameraId }.distinctUntilChanged(),
        userPreferencesRepository.userPreferences
    ) { cameraId, prefs ->
        prefs.rawCustomWhiteLevels[cameraId] ?: 0f
    }.stateIn(viewModelScope, SharingStarted.Eagerly, 0f)
    val rawCfaCorrectionMode: StateFlow<String> = combine(
        state.map { it.currentCameraId }.distinctUntilChanged(),
        userPreferencesRepository.userPreferences
    ) { cameraId, prefs ->
        prefs.rawCfaCorrectionModes[cameraId] ?: RawCfaCorrection.MODE_DEFAULT
    }.stateIn(viewModelScope, SharingStarted.Eagerly, RawCfaCorrection.MODE_DEFAULT)
    var availableDcps: List<DcpInfo> by mutableStateOf(emptyList())
        private set
    var availableRawNoiseProfiles: List<RawNoiseProfileInfo> by mutableStateOf(emptyList())
        private set
    val jpgMultiFrameDenoiseOutputScale: StateFlow<Float> = userPreferencesRepository.userPreferences
        .map { MultiFrameConfig.normalizeOutputScale(it.jpgMultiFrameDenoiseOutputScale) }
        .stateIn(
            viewModelScope,
            SharingStarted.Eagerly,
            MultiFrameConfig.DEFAULT_SUPER_RESOLUTION_SCALE,
        )
    val rawMaxOutputScale: StateFlow<Float> = userPreferencesRepository.userPreferences
        .map {
            MultiFrameConfig.normalizeOutputScale(
                outputScale = it.rawMaxOutputScale,
                fallback = MultiFrameConfig.DEFAULT_SUPER_RESOLUTION_SCALE,
            )
        }
        .stateIn(
            viewModelScope,
            SharingStarted.Eagerly,
            MultiFrameConfig.DEFAULT_SUPER_RESOLUTION_SCALE,
        )

    val rawLut: StateFlow<String> = userPreferencesRepository.userPreferences
        .map { prefs ->
            prefs.rawLuts[prefs.logCurve.name] ?: RawProfile.defaultLutFor(prefs.colorSpace, prefs.logCurve)
        }
        .stateIn(viewModelScope, SharingStarted.Eagerly, RawProfile.default.rawLut)
    val rawProfile: StateFlow<RawProfile> = userPreferencesRepository.userPreferences
        .map { prefs ->
            RawProfile.fromComponents(
                colorSpace = prefs.colorSpace,
                logCurve = prefs.logCurve,
                rawLut = prefs.rawLuts[prefs.logCurve.name]
            )
        }
        .stateIn(viewModelScope, SharingStarted.Eagerly, RawProfile.default)

    val videoAudioInputOptions: StateFlow<List<VideoAudioInputOption>> = videoAudioInputManager.availableInputs

    val widgetTheme = userPreferencesRepository.userPreferences.map { it.widgetTheme }
        .stateIn(viewModelScope, SharingStarted.Eagerly, com.hinnka.mycamera.data.WidgetTheme.FOLLOW_SYSTEM)

    // 动态获取可用的 AI 模型列表 (UI 层按需触发刷新)
    private val _availableOpenAIModels = MutableStateFlow<List<String>>(emptyList())
    val availableOpenAIModels = _availableOpenAIModels.asStateFlow()

    private val _isFetchingAIModels = MutableStateFlow(false)
    val isFetchingAIModels = _isFetchingAIModels.asStateFlow()

    /** 在 ViewModel 生命周期内订阅设置中的一个字段（含当前值），用于把设置同步到副作用组件。 */
    private fun <T> syncPreference(select: (UserPreferences) -> T, apply: (T) -> Unit) {
        viewModelScope.launch { userPreferencesRepository.flow(select).collect { apply(it) } }
    }

    private val isShutterSoundEnabled: Boolean
        get() = userPreferencesRepository.current.shutterSoundEnabled
    private val isVibrationEnabled: Boolean
        get() = userPreferencesRepository.current.vibrationEnabled

    var glSurfaceView by mutableStateOf<CameraGLSurfaceView?>(null)
    var isEyeFocusBusy by mutableStateOf(false)
        private set
    var isEyeFocusRuntimeAvailable by mutableStateOf(true)
        private set
    private var lastEyeFocusTriggerPoint: Pair<Float, Float>? = null
    private var lastEyeFocusTriggerElapsedMs = 0L
    @Volatile
    private var latestPortraitMask: PortraitMaskSnapshot? = null

    // 保存当前的 SurfaceTexture 以便切换摄像头时重用
    private var currentSurfaceTexture: SurfaceTexture? = null
    private var cameraOpenInFlight = false
    private var cameraReopenJob: Job? = null
    private var cameraErrorRecoveryJob: Job? = null

    // 用于处理音量键连续按下的时间戳，防止抖动和过快响应
    private var lastVolumeKeyEventTime = 0L
    private val VOLUME_KEY_DEBOUNCE_TIME = 200L // 毫秒

    private var hasAppliedDefaultFocalLength = false

    val captureProcessingState = CaptureProcessingQueue.state
    private val _capturedThumbnail = MutableStateFlow<CapturedThumbnail?>(null)
    val capturedThumbnail = _capturedThumbnail.asStateFlow()
    private val pendingCaptureSettings = java.util.concurrent.ConcurrentHashMap<Long, CaptureSettingsSnapshot>()
    private var multipleExposureMetadata: MediaMetadata? = null
    var multipleExposureState by mutableStateOf(MultipleExposureSessionState())
        private set

    private var burstSettings: CaptureSettingsSnapshot? = null
    private var livePhotoIndicatorJob: Job? = null
    private var burstPhotoId: String? = null
    var burstImageCount by mutableStateOf(0)
        private set

    var showGhostPermissions by mutableStateOf(false)

    var showEnhancedStabilizationUnavailableDialog by mutableStateOf(false)
        private set

    init {
        viewModelScope.launch {
            userPreferencesRepository.flow { it.saveLocation }.collect { applyLocationTracking(it) }
        }
        cameraController.onEnhancedStabilizationUnavailable = { fallback ->
            viewModelScope.launch(Dispatchers.Main.immediate) {
                showEnhancedStabilizationUnavailableDialog = true
                when (fallback) {
                    is EnhancedStabilizationFallback.Video -> {
                        val resolvedConfig = cameraController.state.value.videoConfig
                        userPreferencesRepository.update {
                            videoStabilizationMode = fallback.mode
                            videoResolution = resolvedConfig.resolution
                            videoFps = resolvedConfig.fps
                        }
                    }

                    EnhancedStabilizationFallback.PhotoPreview -> {
                        userPreferencesRepository.update { photoPreviewStabilizationEnabled = false }
                    }
                }
            }
        }
        previewEyeFocusProcessor.onBusyStateChanged = { busy ->
            viewModelScope.launch(Dispatchers.Main.immediate) {
                isEyeFocusBusy = busy
                glSurfaceView?.setEyeFocusBusy(busy)
            }
        }
        previewEyeFocusProcessor.onFrameProcessed = { timing ->
            viewModelScope.launch(Dispatchers.Main.immediate) {
                glSurfaceView?.updateEyeFocusTiming(timing)
            }
        }
        previewEyeFocusProcessor.onEyeTarget = { target ->
            viewModelScope.launch(Dispatchers.Main.immediate) {
                handleEyeFocusTarget(target)
            }
        }
        previewEyeFocusProcessor.onPortraitMask = { mask ->
            latestPortraitMask = mask.copy(
                confidence = mask.confidence.copyOf(),
                cameraId = cameraController.getCurrentCameraId(),
                sensorOrientationDegrees = cameraController.getSensorOrientation(),
                isFrontFacing = cameraController.getLensFacing() ==
                    CameraCharacteristics.LENS_FACING_FRONT,
                previewToCaptureRotationDegrees = Math.floorMod(
                    capturePreviewThumbnailRotation().roundToInt(),
                    360,
                ),
            )
        }
        previewEyeFocusProcessor.onTargetLost = {
            viewModelScope.launch(Dispatchers.Main.immediate) {
                resetEyeFocusTracking(cancelCameraFocus = true, reason = "target_lost")
            }
        }
        previewEyeFocusProcessor.onInitializationError = { error ->
            viewModelScope.launch(Dispatchers.Main.immediate) {
                isEyeFocusRuntimeAvailable = false
                resetEyeFocusTracking(cancelCameraFocus = true, reason = "initialization_failed")
                userPreferencesRepository.update { eyeFocusEnabled = false }
                PLog.e(TAG, "Human eye autofocus is unavailable", error)
            }
        }
        previewEyeFocusProcessor.onError = { error ->
            PLog.e(TAG, "Human eye autofocus inference failed", error)
        }
        viewModelScope.launch {
            userPreferencesRepository.flow { it.eyeFocusEnabled }.collect { enabled ->
                if (enabled && isEyeFocusRuntimeAvailable) {
                    previewEyeFocusProcessor.prewarm()
                } else if (!enabled) {
                    previewEyeFocusProcessor.resetTracking()
                    resetEyeFocusTracking(cancelCameraFocus = true, reason = "disabled")
                }
            }
        }
        cameraController.initialize()
        viewModelScope.launch {
            cameraController.state.collect { cameraState ->
                if (cameraState.isPreviewActive) {
                    cameraOpenInFlight = false
                }
                if (
                    cameraState.focusPointSource == FocusPointSource.EYE &&
                    (
                        !cameraState.isPreviewActive ||
                            !cameraState.isAutoFocus ||
                            cameraState.isHyperfocalFocusEnabled
                    )
                ) {
                    previewEyeFocusProcessor.resetTracking()
                    resetEyeFocusTracking(cancelCameraFocus = true, reason = "camera_state_changed")
                }
            }
        }
        cameraController.onImageCaptured = { image, captureInfo, _, _, _ ->
            val photoId = burstPhotoId
            val settings = burstSettings
            if (photoId == null || settings == null) {
                image.close()
            } else {
                burstImageCount++
                CaptureProcessingQueue.enqueue(listOf(image)) {
                    val context = getApplication<Application>()
                    if (GalleryManager.loadMetadata(context, photoId) == null) {
                        prepareBurst(context, photoId, image, captureInfo, settings)
                    }
                    withContext(Dispatchers.IO) {
                        GalleryManager.saveBurstPhoto(
                            context, photoId, image, settings.preferences.autoSaveAfterCapture,
                            contentRepository.photoProcessor, settings.preferences.photoQuality,
                        )
                    }
                    _imageSavedEvent.emit(photoId)
                }
            }
        }
        cameraController.onPhotoCaptureCompleted = { id, captureInfo ->
            pendingCaptureSettings[id]?.let { settings ->
                viewModelScope.launch {
                    try {
                        val metadata = buildPhotoMetadata(
                            width = captureInfo.imageWidth,
                            height = captureInfo.imageHeight,
                            captureInfo = captureInfo,
                            settings = settings,
                        )
                        if (!settings.multipleExposure && !settings.processingFinished) {
                            GalleryManager.registerProcessingPhoto(
                                getApplication(), settings.photoId, metadata, settings.displayThumbnail
                            )
                        }
                        settings.captureCompleted = true
                        publishCapturedThumbnail(settings)
                        settings.galleryRegistration.complete(Unit)
                        _captureCompletedEvent.emit(metadata)
                    } catch (e: Exception) {
                        settings.galleryRegistration.completeExceptionally(e)
                        PLog.e(TAG, "Failed to register captured photo ${settings.photoId}", e)
                    }
                }.invokeOnCompletion { error ->
                    // A queued capture must also finish if the camera owner is cleared before registration starts.
                    if (error != null) settings.galleryRegistration.completeExceptionally(error)
                }
            }
        }
        cameraController.onPhotoCaptureReady = { photo ->
            val settings = pendingCaptureSettings.remove(photo.id)
            if (settings == null) {
                photo.frames.forEach { it.image.close() }
            } else {
                val shotSettings = settings
                shotSettings.state = photo.state
                if (photo.state.useLivePhoto) {
                    val first = photo.frames.first()
                    shotSettings.livePhotoVideo = CompletableDeferred<Pair<File, Long>?>().also { deferred ->
                        cameraController.recordLivePhotoVideo(
                            first.image.timestamp / 1000,
                            first.captureInfo.livePhotoVideoStartTimestampUs,
                        ) { file, timestamp ->
                            deferred.complete(if (file.name == "error") null else file to timestamp)
                        }
                    }
                }
                CaptureProcessingQueue.enqueue(photo.frames.map { it.image }) {
                    try {
                        shotSettings.galleryRegistration.await()
                        processCapturedPhoto(photo, shotSettings)
                    } finally {
                        GalleryManager.finishProcessingPhoto(
                            getApplication(), shotSettings.photoId, shotSettings.savedPhotoId != null
                        )
                        // A failed photo preparation must not orphan its already-recorded video.
                        withContext(Dispatchers.IO) {
                            shotSettings.livePhotoVideo?.await()?.first?.delete()
                        }
                        shotSettings.processingFinished = true
                        publishCapturedThumbnail(shotSettings)
                    }
                }
            }
        }
        cameraController.onPhotoCaptureFailed = { id ->
            pendingCaptureSettings.remove(id)?.let { settings ->
                settings.processingFinished = true
                publishCapturedThumbnail(settings)
                viewModelScope.launch {
                    GalleryManager.finishProcessingPhoto(getApplication(), settings.photoId, false)
                }
            }
        }
        cameraController.onVideoSaved = { uri ->
            if (uri != null) {
                viewModelScope.launch {
                    val mediaId = GalleryManager.recordVideoCapture(getApplication(), uri)
                    if (mediaId != null) {
                        _imageSavedEvent.emit(mediaId)
                    }
                }
            }
        }

        cameraController.onCameraError = { code, message, canRetry ->
            // 只记录错误日志，不在这里重试打开相机
            // 相机恢复应该由 CameraScreen 的 ON_RESUME 生命周期事件处理
            // 这样可以避免在相机被其他应用占用时的无限重试循环
            PLog.d(TAG, "onCameraError: code=$code, message=$message, canRetry=$canRetry")
            cameraOpenInFlight = false
            scheduleCameraListRefreshAfterError(code)
            resetExposureCompensationForCameraRestart()
            burstImageCount = 0
        }

        // 关闭快门声音时立即停止正在播放的连拍声
        syncPreference({ it.shutterSoundEnabled }) { enabled -> if (!enabled) shutterSoundPlayer.stopBurst() }
        syncPreference({ it.multipleExposureCount }) { count ->
            multipleExposureState = multipleExposureState.copy(targetCount = count)
        }
        // 设置项 -> 相机控制器
        syncPreference({ it.mirrorFrontCamera }, cameraController::setMirrorFrontCameraEnabled)
        syncPreference({ it.showGrid }, cameraController::setShowGrid)
        syncPreference({ it.nrLevel }) { level ->
            if (cameraController.state.value.nrLevel != level) cameraController.setNRLevel(level)
        }
        syncPreference({ it.edgeLevel }, cameraController::setEdgeLevel)
        viewModelScope.launch {
            userPreferencesRepository.flow { it.videoNrLevel to it.videoEdgeLevel }
                .collect { (nr, edge) -> cameraController.setVideoImageQualitySettings(nr, edge) }
        }
        syncPreference({ it.rawMinShutterSpeedNs }) { value ->
            if (cameraController.state.value.rawMinShutterSpeedNs != value) {
                cameraController.setRawMinShutterSpeedNs(value)
            }
        }
        syncPreference({ it.applyUltraHDR }, cameraController::setApplyUltraHDR)
        syncPreference({ it.useP010 }, cameraController::setUseP010)
        syncPreference({ it.useP3ColorSpace }, cameraController::setUseP3ColorSpace)
        syncPreference({ it.videoAudioInputId }, cameraController::setVideoAudioInputId)
        syncPreference({ it.videoTorchEnabled }, cameraController::setVideoTorchEnabled)
        syncPreference({ it.videoLensLockEnabled }, cameraController::setVideoLensLockEnabled)
        syncPreference({ it.videoWhiteBalanceLockEnabled }, cameraController::setVideoWhiteBalanceLockEnabled)

        // 监听快门声音文件和软件处理设置
        viewModelScope.launch {
            var firstPreferencesLogged = false
            val preferenceCollectStart = SystemClock.elapsedRealtime()
            userPreferencesRepository.userPreferences.collect {
                if (!firstPreferencesLogged) {
                    firstPreferencesLogged = true

                    StartupTrace.mark(
                        "CameraViewModel.userPreferences first collect",
                        "costMs=${SystemClock.elapsedRealtime() - preferenceCollectStart}"
                    )
                }
                shutterSoundPlayer.configure(
                    it.shutterSoundFileName,
                    it.burstSoundFileName,
                )
                val currentCameraState = cameraController.state.value
                if (currentCameraState.vendorCaptureSettingsByLens != it.vendorCaptureSettingsByLens) {
                    cameraController.setVendorCaptureSettingsByLens(it.vendorCaptureSettingsByLens)
                }
                if (currentCameraState.customVendorKeySettings != it.customVendorKeySettings) {
                    cameraController.setCustomVendorKeySettings(it.customVendorKeySettings)
                }
                // 同步 RAW 设置到相机控制器
                if (currentCameraState.rawCfaCorrectionModes != it.rawCfaCorrectionModes) {
                    cameraController.setRawCfaCorrectionModes(it.rawCfaCorrectionModes)
                }
                val multipleExposureEnabled = it.useMultipleExposure
                val effectiveUseRaw = it.useRaw && !multipleExposureEnabled
                val effectiveUseJpgMax =
                    it.useJpgMax && !effectiveUseRaw && !multipleExposureEnabled
                val effectiveUseRawMax =
                    it.useRawMax && effectiveUseRaw && !multipleExposureEnabled
                val effectiveMultiFrameOutputScale = resolveMultiFrameOutputScale(
                    useJpgMax = effectiveUseJpgMax,
                    useRawMax = effectiveUseRawMax,
                    rawMaxOutputScale = it.rawMaxOutputScale,
                    jpgMultiFrameDenoiseOutputScale = it.jpgMultiFrameDenoiseOutputScale,
                )
                val effectiveRawRenderingEngine = resolveCaptureRawRenderingEngine(it)
                if (effectiveRawRenderingEngine != it.rawRenderingEngine) {
                    viewModelScope.launch {
                        userPreferencesRepository.update { rawRenderingEngine = effectiveRawRenderingEngine }
                    }
                }
                if (currentCameraState.useMultipleExposure != multipleExposureEnabled) {
                    cameraController.setUseMultipleExposure(multipleExposureEnabled)
                }
                if (currentCameraState.useRaw != effectiveUseRaw) {
                    cameraController.setUseRaw(effectiveUseRaw)
                }
                if (currentCameraState.multiFrameOutputScale != effectiveMultiFrameOutputScale) {
                    cameraController.setMultiFrameOutputScale(effectiveMultiFrameOutputScale)
                }
                if (
                    currentCameraState.jpgMultiFrameDenoiseFrameCount !=
                    it.jpgMultiFrameDenoiseFrameCount
                ) {
                    cameraController.setJpgMultiFrameDenoiseFrameCount(
                        it.jpgMultiFrameDenoiseFrameCount
                    )
                }
                if (currentCameraState.hdrPlusMergeMode != it.hdrPlusMergeMode) {
                    cameraController.setHdrPlusMergeMode(it.hdrPlusMergeMode)
                }
                if (currentCameraState.hdrPlusFrameCount != it.hdrPlusFrameCount) {
                    cameraController.setHdrPlusFrameCount(it.hdrPlusFrameCount)
                }
                if (currentCameraState.useJpgMaxHdrComposition != it.useJpgMaxHdrComposition) {
                    cameraController.setUseJpgMaxHdrComposition(it.useJpgMaxHdrComposition)
                }
                if (
                    currentCameraState.hdrPlusBracketExposureEnabled !=
                    it.hdrPlusBracketExposureEnabled
                ) {
                    cameraController.setHdrPlusBracketExposureEnabled(
                        it.hdrPlusBracketExposureEnabled
                    )
                }
                if (currentCameraState.hdrPlusLongFrameExposureEv != it.hdrPlusLongFrameExposureEv) {
                    cameraController.setHdrPlusLongFrameExposureEv(it.hdrPlusLongFrameExposureEv)
                }
                if (currentCameraState.hdrPlusShortFrameExposureEv != it.hdrPlusShortFrameExposureEv) {
                    cameraController.setHdrPlusShortFrameExposureEv(it.hdrPlusShortFrameExposureEv)
                }
                if (multipleExposureEnabled && (it.useRaw || it.useJpgMax || it.useRawMax)) {
                    viewModelScope.launch {
                        userPreferencesRepository.update {
                            useRaw = false
                            useJpgMax = false
                            useRawMax = false
                        }
                    }
                }
                if (it.useLivePhoto && effectiveUseJpgMax) {
                    viewModelScope.launch {
                        userPreferencesRepository.update { useLivePhoto = false }
                    }
                }
                if (cameraController.state.value.meteringMode != it.meteringMode) {
                    cameraController.setMeteringMode(it.meteringMode)
                }
                cameraController.setCaptureMode(it.captureMode)
                cameraController.setVideoResolution(it.videoResolution)
                cameraController.setVideoFps(it.videoFps)
                cameraController.setVideoAspectRatio(it.videoAspectRatio)
                cameraController.setVideoLogProfile(it.videoLogProfile)
                cameraController.setVideoLogLutMode(it.videoLogLutMode)
                cameraController.setVideoBitrate(it.videoBitrate)
                cameraController.setVideoRecordingPath(it.videoRecordingPath, it.videoRecordingTreeUri)
                cameraController.setVideoStabilizationMode(it.videoStabilizationMode)
                cameraController.setOppoSuperStabilizationEnabled(
                    it.oppoSuperStabilizationEnabled
                )
                cameraController.setVideoEnhancedStabilizationStrength(
                    it.videoEnhancedStabilizationStrength
                )
                cameraController.setVideoEnhancedStabilizationLookahead(
                    it.videoEnhancedStabilizationLookahead
                )
                cameraController.setExternalLensStabilizationConfig(
                    it.externalLensStabilizationConfig
                )
                cameraController.setPhotoPreviewStabilizationEnabled(
                    it.photoPreviewStabilizationEnabled
                )
                cameraController.setVideoCodec(it.videoCodec)
                multipleExposureState = multipleExposureState.copy(enabled = it.useMultipleExposure)
                // 同步 Live Photo 设置到相机控制器
                cameraController.setUseLivePhoto(shouldEnableLivePhoto(it))
            }
        }

        cameraController.onLivePhotoVideoCaptured = { file, timestamp ->
            // Global listener still available for other UI needs if any
        }

        // 设置快门音效和震动回调
        cameraController.onPlayShutterSound = {
            if (isShutterSoundEnabled) {
                shutterSoundPlayer.play()
            }
            if (isVibrationEnabled) {
                vibrationHelper.vibrate()
            }
        }

        // 订阅 ContentRepository 的 StateFlow，结合用户自定义排序
        viewModelScope.launch {
            contentRepository.availableLuts.combine(
                userPreferencesRepository.userPreferences.map { it.filterOrder }
            ) { luts, order ->
                if (order.isEmpty()) {
                    luts
                } else {
                    val orderMap = order.withIndex().associate { it.value to it.index }
                    luts.sortedBy { orderMap[it.id] ?: Int.MAX_VALUE }
                }
            }.collect { sortedLuts ->
                availableLutList = sortedLuts
            }
        }

        viewModelScope.launch {
            contentRepository.availableDcps.collect { dcps ->
                availableDcps = dcps.sortedBy { it.getName() }
            }
        }

        viewModelScope.launch {
            contentRepository.availableRawNoiseProfiles.collect { profiles ->
                availableRawNoiseProfiles = profiles
            }
        }

        viewModelScope.launch {
            contentRepository.availableFrames.combine(
                userPreferencesRepository.userPreferences.map { it.frameOrder }
            ) { frames, order ->
                if (order.isEmpty()) {
                    frames
                } else {
                    val orderMap = order.withIndex().associate { it.value to it.index }
                    frames.sortedBy { orderMap[it.id] ?: Int.MAX_VALUE }
                }
            }.collect { sortedFrames ->
                availableFrameList = sortedFrames
            }
        }

        viewModelScope.launch {
            userPreferencesRepository.userPreferences.collectLatest { prefs ->
                currentBaselineLutConfig = withContext(Dispatchers.IO) {
                    resolvePreviewBaselineLut(prefs)
                }
            }
        }

        viewModelScope.launch {
            userPreferencesRepository.userPreferences.combine(contentRepository.availableDcps) { prefs, dcps ->
                if (resolvePreviewBaselineTarget(prefs) == null) null else {
                    val film = resolveRawSpectralFilmSettings(prefs)
                    RawEnginePreviewSettings(
                        engine = prefs.rawRenderingEngine,
                        dcp = dcps.firstOrNull { it.id == prefs.rawDcpId }
                            ?.takeIf { prefs.rawRenderingEngine == RawRenderingEngine.AdobeCurve },
                        exposureEv = prefs.rawExposureCompensation,
                        tone = prefs.rawToneMappingParameters,
                        hncsFilmCurve = prefs.rawHncsFilmCurveMode,
                        filmStock = requireNotNull(film.stock), filmPrint = requireNotNull(film.print), filmTuning = film.tuning,
                        fotufilmDocument = resolveRawFotufilmDocument(prefs)
                            ?.takeIf { prefs.rawRenderingEngine == RawRenderingEngine.Fotufilm },
                    )
                }
            }.distinctUntilChanged().collectLatest { selection ->
                _currentEnginePreviewPlan.value = null
                cameraController.setEnginePreviewMetadataEnabled(false)
                if (selection == null) return@collectLatest
                try {
                    val resolver = withContext(Dispatchers.IO) {
                        RawEnginePreviewResolver(getApplication(), selection)
                    }
                    if (!resolver.needsCameraMetadata) {
                        _currentEnginePreviewPlan.value = withContext(Dispatchers.Default) { resolver.resolve(null) }
                        PLog.d(TAG, "Engine preview ${selection.engine}: scene-linear sRGB -> ${selection.engine.workingColorSpace} -> sRGB")
                    } else {
                        cameraController.setEnginePreviewMetadataEnabled(true)
                        var lastFailure: String? = null
                        var loggedDomain = false
                        // StateFlow conflates frames while resolving; collectLatest could starve
                        // CCT table generation if new AWB values arrive faster than it finishes.
                        cameraController.enginePreviewSource
                            .map { if (selection.engine.isLumix) it else it?.copy(iso = 100) }
                            .distinctUntilChanged().collect { source ->
                                val result = withContext(Dispatchers.Default) { runCatching { resolver.resolve(source) } }
                                val plan = result.getOrNull()
                                if (source?.cameraId == cameraController.enginePreviewSource.value?.cameraId) {
                                    _currentEnginePreviewPlan.value = plan
                                } else {
                                    _currentEnginePreviewPlan.value = null
                                }
                                result.exceptionOrNull()?.let { error ->
                                    if (lastFailure != error.message) PLog.e(TAG, "Engine preview ${selection.engine} rejected", error)
                                    lastFailure = error.message
                                }
                                if (plan != null) {
                                    lastFailure = null
                                    if (!loggedDomain) PLog.d(TAG, "Engine preview ${plan.engine}: restore=${plan.restoration}, output=sRGB")
                                    loggedDomain = true
                                }
                            }
                    }
                } catch (cancelled: kotlinx.coroutines.CancellationException) {
                    throw cancelled
                } catch (error: Exception) {
                    PLog.e(TAG, "Unable to prepare ${selection.engine} preview", error)
                } finally {
                    cameraController.setEnginePreviewMetadataEnabled(false)
                }
            }
        }

        // 加载用户偏好设置
        viewModelScope.launch {
            val prefs = userPreferencesRepository.userPreferences.firstOrNull()
            if (prefs != null) {
                cameraController.setCaptureSettingsRetention(
                    prefs.retainCaptureSettings,
                    prefs.customCaptureSettings,
                )
                // 应用保存的画面比例
                try {
                    val savedAspectRatio = AspectRatio.valueOf(prefs.aspectRatio)
                    cameraController.setAspectRatio(savedAspectRatio)
                } catch (e: IllegalArgumentException) {
                    // 如果保存的值无效，使用默认值
                }
                cameraController.setCaptureMode(prefs.captureMode)
                cameraController.setVideoResolution(prefs.videoResolution)
                cameraController.setVideoFps(prefs.videoFps)
                cameraController.setVideoAspectRatio(prefs.videoAspectRatio)
                cameraController.setVideoLogProfile(prefs.videoLogProfile)
                cameraController.setVideoLogLutMode(prefs.videoLogLutMode)
                cameraController.setVideoBitrate(prefs.videoBitrate)
                cameraController.setVideoAudioInputId(userPreferencesRepository.latest().videoAudioInputId)
                cameraController.setVideoRecordingPath(prefs.videoRecordingPath, prefs.videoRecordingTreeUri)
                cameraController.setVideoStabilizationMode(prefs.videoStabilizationMode)
                cameraController.setVideoEnhancedStabilizationStrength(
                    prefs.videoEnhancedStabilizationStrength
                )
                cameraController.setVideoEnhancedStabilizationLookahead(
                    prefs.videoEnhancedStabilizationLookahead
                )
                cameraController.setExternalLensStabilizationConfig(
                    prefs.externalLensStabilizationConfig
                )
                cameraController.setVideoTorchEnabled(userPreferencesRepository.latest().videoTorchEnabled)
                cameraController.setVideoLensLockEnabled(userPreferencesRepository.latest().videoLensLockEnabled)
                cameraController.setVideoWhiteBalanceLockEnabled(
                    userPreferencesRepository.latest().videoWhiteBalanceLockEnabled
                )
                cameraController.setVideoCodec(prefs.videoCodec)
                cameraController.setMeteringMode(prefs.meteringMode)

                // 根据启动时的拍摄模式应用照片 LUT 或独立的视频 LUT。
                resolveLutIdForMode(prefs, prefs.captureMode)?.let {
                    setLut(it, persist = false)
                }

                // 应用保存的边框配置
                if (prefs.frameId != null) {
                    currentFrameId = prefs.frameId
                }

                // 应用保存的网格线设置
                cameraController.setShowGrid(userPreferencesRepository.latest().showGrid)
                cameraController.setGridStyle(prefs.gridStyle)

                cameraController.setUseMultipleExposure(prefs.useMultipleExposure)
                cameraController.setRawCfaCorrectionModes(prefs.rawCfaCorrectionModes)
                cameraController.setMultiFrameOutputScale(
                    resolveMultiFrameOutputScale(
                        useJpgMax = prefs.useJpgMax && !prefs.useRaw &&
                            !prefs.useMultipleExposure,
                        useRawMax = prefs.useRawMax && prefs.useRaw &&
                            !prefs.useMultipleExposure,
                        rawMaxOutputScale = prefs.rawMaxOutputScale,
                        jpgMultiFrameDenoiseOutputScale = prefs.jpgMultiFrameDenoiseOutputScale,
                    )
                )
                cameraController.setJpgMultiFrameDenoiseFrameCount(
                    prefs.jpgMultiFrameDenoiseFrameCount
                )
                cameraController.setHdrPlusMergeMode(prefs.hdrPlusMergeMode)
                cameraController.setHdrPlusFrameCount(prefs.hdrPlusFrameCount)
                cameraController.setUseJpgMaxHdrComposition(prefs.useJpgMaxHdrComposition)
                cameraController.setHdrPlusBracketExposureEnabled(
                    prefs.hdrPlusBracketExposureEnabled
                )
                cameraController.setHdrPlusLongFrameExposureEv(prefs.hdrPlusLongFrameExposureEv)
                cameraController.setHdrPlusShortFrameExposureEv(prefs.hdrPlusShortFrameExposureEv)
                cameraController.setUseLivePhoto(shouldEnableLivePhoto(prefs))
                // 应用保存的虚拟光圈
                applyDefaultVirtualAperture(userPreferencesRepository.latest().defaultVirtualAperture)
            } else {
                // 如果没有任何偏好设置，使用配置文件中的默认 LUT（第一个）
                val defaultLut = availableLutList.firstOrNull { it.isDefault }
                defaultLut?.let { setLut(it.id, persist = false) }
            }

            _isInitialized.value = true
            StartupTrace.mark("CameraViewModel.isInitialized set to true")
        }

        // 监听相机状态，用于同步预览渲染参数
        viewModelScope.launch {
            state.collect { currentState ->
                if (currentState.captureMode == CaptureMode.VIDEO) {
                    validateAndCancelNonMatchingVideoLut(currentState.videoConfig.logProfile, currentLutConfig)
                }
                glSurfaceView?.let { view ->
                    view.setVideoLogProfile(currentState.videoConfig.logProfile)
                    view.setMeteringPoint(currentState.meteringReferencePoint?.let { point ->
                        android.graphics.PointF(point.first, point.second)
                    })
                    view.setMeteringMode(currentState.effectiveMeteringMode)
                    view.setAutoFocus(currentState.isAutoFocus)
                }
            }
        }

        StartupTrace.mark("CameraViewModel.init end")
    }

    fun dismissEnhancedStabilizationUnavailableDialog() {
        showEnhancedStabilizationUnavailableDialog = false
    }

    fun getAvailableRawLutList(context: Context, logCurve: TransferCurve): List<String> {
        try {
            val files = logCurve.rawFolder?.let { context.assets.list(it) }
            return files?.filter { it.endsWith(".plut") }?.toList() ?: emptyList()
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to list raw luts", e)
        }
        return emptyList()
    }

    fun setRawDcpId(dcpId: String?) {
        viewModelScope.launch {
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(
                    rawDcpId = SettingValue(dcpId),
                    rawProfileToneMapMode = dcpId?.let {
                        SettingValue(RawProfileToneMapMode.Profile)
                    },
                )
            )
        }
    }

    fun setRawDcpIdsByLens(rawDcpIdsByLens: Map<String, String?>) {
        viewModelScope.launch {
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(
                    rawDcpIdsByLens = SettingValue(rawDcpIdsByLens),
                    rawProfileToneMapMode = if (rawDcpIdsByLens.values.any { it != null }) {
                        SettingValue(RawProfileToneMapMode.Profile)
                    } else {
                        null
                    },
                )
            )
        }
    }

    fun setRawHncsFilmCurveMode(mode: HncsFilmCurveMode) {
        viewModelScope.launch {
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(rawHncsFilmCurveMode = SettingValue(mode))
            )
        }
    }

    fun setRawBaselineLutId(lutId: String?) {
        viewModelScope.launch {
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(rawBaselineLutId = SettingValue(lutId))
            )
        }
    }
    fun setRawColorEngine(engine: RawRenderingEngine) {
        viewModelScope.launch {
            val prefs = userPreferencesRepository.userPreferences.first()
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(
                    rawRenderingEngine = SettingValue(engine),
                    rawSpectralFilmStock = if (engine == RawRenderingEngine.Spektrafilm && prefs.rawSpectralFilmStock == null) {
                        SettingValue("kodak_portra_400")
                    } else {
                        null
                    },
                    rawSpectralFilmPrint = if (engine == RawRenderingEngine.Spektrafilm && prefs.rawSpectralFilmPrint == null) {
                        SettingValue("kodak_portra_endura")
                    } else {
                        null
                    },
                    rawFotufilmDocument = if (
                        engine == RawRenderingEngine.Fotufilm &&
                        FotufilmDocumentStorage.decode(prefs.rawFotufilmDocument, "preferences") == null
                    ) {
                        SettingValue(FotufilmDocumentStorage.defaultDocument())
                    } else {
                        null
                    }
                )
            )
        }
    }
    fun setRawSpectralFilmStock(stock: String?) {
        viewModelScope.launch {
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(rawSpectralFilmStock = SettingValue(stock))
            )
        }
    }
    fun setRawSpectralFilmPrint(print: String?) {
        viewModelScope.launch {
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(rawSpectralFilmPrint = SettingValue(print))
            )
        }
    }
    fun setRawFotufilmDocument(document: FotufilmDocument?) {
        viewModelScope.launch {
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(rawFotufilmDocument = SettingValue(document))
            )
        }
    }
    fun setRawSpectralFilmSelection(selection: SpectralFilmSelection?) {
        viewModelScope.launch {
            val prefs = userPreferencesRepository.userPreferences.first()
            val previousStock = prefs.rawSpectralFilmStock
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(rawSpectralFilmStock = SettingValue(selection?.id))
            )
            if (selection != null && selection.id == previousStock) {
                userPreferencesRepository.update {
                    rawSpectralFilmTuningsByStock = rawSpectralFilmTuningsByStock + (selection.id to selection.tuning)
                }
            }
        }
    }

    fun setRawDngMetadataCorrections(
        cameraId: String,
        corrections: IszRawDngMetadataCorrections
    ) {
        viewModelScope.launch {
            userPreferencesRepository.update { putRawDngMetadataCorrections(cameraId, corrections) }
        }
    }
    fun setRawBlackLevelMode(mode: String) {
        val cameraId = state.value.currentCameraId
        viewModelScope.launch {
            userPreferencesRepository.update { rawBlackLevelModes = rawBlackLevelModes + (cameraId to mode) }
        }
    }
    fun setRawCustomBlackLevel(value: Float) {
        val cameraId = state.value.currentCameraId
        viewModelScope.launch {
            userPreferencesRepository.update { rawCustomBlackLevels = rawCustomBlackLevels + (cameraId to value) }
        }
    }
    fun setRawWhiteLevelMode(mode: String) {
        val cameraId = state.value.currentCameraId
        viewModelScope.launch {
            userPreferencesRepository.update { rawWhiteLevelModes = rawWhiteLevelModes + (cameraId to mode) }
        }
    }
    fun setRawCustomWhiteLevel(value: Float) {
        val cameraId = state.value.currentCameraId
        viewModelScope.launch {
            userPreferencesRepository.update { rawCustomWhiteLevels = rawCustomWhiteLevels + (cameraId to value) }
        }
    }
    fun setRawCfaCorrectionMode(mode: String) {
        val cameraId = state.value.currentCameraId
        viewModelScope.launch {
            userPreferencesRepository.update { rawCfaCorrectionModes = rawCfaCorrectionModes + (cameraId to mode) }
        }
    }
    fun importRawDcp(uri: Uri, onComplete: (Boolean) -> Unit) {
        viewModelScope.launch {
            val success = contentRepository.getCustomImportManager().importDcp(uri) != null
            if (success) {
                contentRepository.refreshCustomContent()
            }
            onComplete(success)
        }
    }

    fun importRawDcps(uris: List<Uri>, onComplete: (importedDcps: List<DcpInfo>, failedCount: Int) -> Unit) {
        viewModelScope.launch {
            val importedIds = withContext(Dispatchers.IO) {
                uris.mapNotNull { uri ->
                    contentRepository.getCustomImportManager().importDcp(uri)
                }
            }
            val importedDcps = if (importedIds.isNotEmpty()) {
                contentRepository.refreshCustomContent()
                val dcpById = contentRepository.getAvailableDcps().associateBy { it.id }
                importedIds.mapNotNull { dcpById[it] }
            } else {
                emptyList()
            }
            onComplete(importedDcps, uris.size - importedDcps.size)
        }
    }

    fun deleteRawDcp(dcpId: String, onComplete: (Boolean) -> Unit) {
        viewModelScope.launch {
            val success = withContext(Dispatchers.IO) {
                contentRepository.getCustomImportManager().deleteCustomDcp(dcpId)
            }
            if (success) {
                userPreferencesRepository.update {
                    if (rawDcpId == dcpId) rawDcpId = null
                    rawDcpIdsByLens = rawDcpIdsByLens.filterValues { it != dcpId }
                }
                contentRepository.refreshCustomContent()
            }
            onComplete(success)
        }
    }

    fun importRawNoiseProfiles(
        uris: List<Uri>,
        onComplete: (importedProfiles: List<RawNoiseProfileInfo>, failedCount: Int) -> Unit,
    ) {
        viewModelScope.launch {
            val importedIds = withContext(Dispatchers.IO) {
                uris.mapNotNull { uri ->
                    contentRepository.getCustomImportManager().importRawNoiseProfile(uri)
                }
            }
            val importedProfiles = if (importedIds.isNotEmpty()) {
                contentRepository.refreshCustomContent()
                val profilesById = contentRepository.getAvailableRawNoiseProfiles().associateBy { it.id }
                importedIds.mapNotNull(profilesById::get)
            } else {
                emptyList()
            }
            onComplete(importedProfiles, uris.size - importedProfiles.size)
        }
    }

    fun deleteRawNoiseProfile(profileId: String, onComplete: (Boolean) -> Unit) {
        viewModelScope.launch {
            val success = withContext(Dispatchers.IO) {
                contentRepository.getCustomImportManager().deleteCustomRawNoiseProfile(profileId)
            }
            if (success) {
                userPreferencesRepository.update {
                    if (rawNoiseProfileId == profileId) rawNoiseProfileId = RawNoiseProfileManager.DEFAULT_PROFILE_ID
                    rawNoiseProfileIdsByLens = rawNoiseProfileIdsByLens.filterValues { it != profileId }
                }
                contentRepository.refreshCustomContent()
            }
            onComplete(success)
        }
    }

    /**
     * 打开相机（Camera2 接口）
     */
    fun openCamera(surfaceTexture: SurfaceTexture) {
        PLog.d(TAG, "openCamera")
        if (currentSurfaceTexture === surfaceTexture && (state.value.isPreviewActive || cameraOpenInFlight)) {
            PLog.d(
                TAG,
                "openCamera skipped: same SurfaceTexture active=${state.value.isPreviewActive}, inFlight=$cameraOpenInFlight"
            )
            return
        }
        currentSurfaceTexture = surfaceTexture
        requestCameraOpen(surfaceTexture)
    }

    private fun requestCameraOpen(
        surfaceTexture: SurfaceTexture,
        preserveVideoRecording: Boolean = false,
    ) {
        cameraReopenJob?.cancel()
        cameraOpenInFlight = true
        cameraReopenJob = viewModelScope.launch {
            isInitialized.first { it }
            if (currentSurfaceTexture !== surfaceTexture) return@launch
            syncVendorCaptureSettingsToController()
            cameraController.openCamera(
                surfaceTexture = surfaceTexture,
                preserveVideoRecording = preserveVideoRecording,
            )
        }
    }

    suspend fun prepareCamera(): Boolean {
        if (!cameraController.prepareCameras()) return false
        if (!hasAppliedDefaultFocalLength) {
            val defaultFocalLength = userPreferencesRepository.latest().defaultFocalLength
            if (defaultFocalLength != 0f) {
                applyStartupDefaultFocalLength(defaultFocalLength)
            }
            hasAppliedDefaultFocalLength = true
        }
        return cameraController.preparePreviewSize()
    }

    /**
     * 关闭相机
     */
    fun closeCamera(surfaceTexture: SurfaceTexture? = null) {
        if (surfaceTexture != null && currentSurfaceTexture !== surfaceTexture) {
            PLog.d(
                TAG,
                "closeCamera skipped: stale SurfaceTexture destroyed=" +
                        "${System.identityHashCode(surfaceTexture)}, current=" +
                        "${currentSurfaceTexture?.let { System.identityHashCode(it) }}"
            )
            return
        }
        cameraReopenJob?.cancel()
        cameraOpenInFlight = false
        currentSurfaceTexture = null
        cameraController.closeCamera(expectedSurfaceTexture = surfaceTexture)
    }

    private fun scheduleCameraListRefreshAfterError(errorCode: Int) {
        val shouldRefreshCameraList = when (errorCode) {
            CameraDevice.StateCallback.ERROR_CAMERA_DEVICE,
            CameraDevice.StateCallback.ERROR_CAMERA_SERVICE,
            Camera2Controller.ERROR_CAMERA_OPEN_FAILED,
            Camera2Controller.ERROR_CAMERA_CHARACTERISTICS_UNAVAILABLE -> true

            else -> false
        }
        if (!shouldRefreshCameraList) return

        cameraErrorRecoveryJob?.cancel()
        cameraErrorRecoveryJob = viewModelScope.launch {
            delay(800)
            cameraController.refreshCameraList()
        }
    }

    private suspend fun prewarmCapturePipeline() {
        val prefs = userPreferencesRepository.userPreferences.firstOrNull()
            ?: return
        val currentState = state.value
        val captureSize = currentState.currentCaptureSize
        val rawCaptureEnabled = prefs.useRaw
        supervisorScope {
            val dcpPrewarmJob = if (rawCaptureEnabled) {
                async {
                    runCatching {
                        prewarmRawDcp(prefs.rawDcpIdForLens(currentState.currentCameraId))
                    }.onFailure { error ->
                        if (error is CancellationException) throw error
                        PLog.w(TAG, "RAW DCP prewarm failed", error)
                    }
                }
            } else {
                null
            }

            // Keep the two GL warmups sequential. They use independent contexts but still
            // share one GPU with preview, so running both at once only increases contention.
            if (rawCaptureEnabled) {
                runCatching {
                    RawDemosaicProcessor.getInstance().prewarmCapturePipeline(
                        getApplication<Application>().applicationContext,
                        prefs.rawRenderingEngine,
                        captureWidth = captureSize.width,
                        captureHeight = captureSize.height,
                    )
                }.onFailure { error ->
                    if (error is CancellationException) throw error
                    PLog.w(TAG, "RAW capture pipeline prewarm failed", error)
                }
            }
            currentCoroutineContext().ensureActive()
            runCatching {
                contentRepository.imageProcessor.prewarmCapturePipeline()
            }.onFailure { error ->
                if (error is CancellationException) throw error
                PLog.w(TAG, "LUT capture pipeline prewarm failed", error)
            }
            dcpPrewarmJob?.await()
        }
    }

    fun onFirstPreviewFrame() {
        if (startupPrewarmAttempted) return
        startupPrewarmAttempted = true
        startupPrewarmJob = viewModelScope.launch {
            delay(FIRST_PREVIEW_PREWARM_GRACE_MS)
            val appContext = getApplication<Application>().applicationContext
            val currentState = state.value
            if (
                !currentState.isPreviewActive ||
                currentState.captureMode != CaptureMode.PHOTO ||
                currentState.isCapturing
            ) {
                PLog.d(
                    TAG,
                    "Skip startup capture prewarm: preview=${currentState.isPreviewActive} " +
                        "mode=${currentState.captureMode} " +
                        "capturing=${currentState.isCapturing}",
                )
                return@launch
            }
            if (!isStartupCapturePrewarmAllowed(appContext)) return@launch
            prewarmCapturePipeline()
        }
    }

    private fun isStartupCapturePrewarmAllowed(context: Context): Boolean {
        val activityManager = context.getSystemService(ActivityManager::class.java)
        val powerManager = context.getSystemService(PowerManager::class.java)
        val constrainedMemory = activityManager?.let {
            it.isLowRamDevice || it.memoryClass < MIN_PREWARM_MEMORY_CLASS_MB
        } ?: true
        val powerSave = powerManager?.isPowerSaveMode ?: true
        val thermalStatus = powerManager?.currentThermalStatus ?: PowerManager.THERMAL_STATUS_NONE
        val thermallyConstrained = thermalStatus >= PowerManager.THERMAL_STATUS_MODERATE
        val allowed = !constrainedMemory && !powerSave && !thermallyConstrained
        if (!allowed) {
            PLog.d(
                TAG,
                "Skip startup capture prewarm: lowMemory=$constrainedMemory " +
                    "memoryClass=${activityManager?.memoryClass}MB powerSave=$powerSave " +
                    "thermalStatus=$thermalStatus",
            )
        }
        return allowed
    }

    private suspend fun prewarmRawDcp(dcpId: String?) = withContext(Dispatchers.IO) {
        val dcpInfo = dcpId?.let { id ->
            contentRepository.getAvailableDcps().firstOrNull { it.id == id }
        } ?: return@withContext
        DcpProfileParser.prewarm(getApplication<Application>(), dcpInfo)
    }

    /**
     * 检查相机状态并在必要时恢复
     */
    fun checkAndRecoverCamera() {
        if (!state.value.isPreviewActive) {
            resetExposureCompensationForCameraRestart()
        }

        // 如果有保存的 SurfaceTexture，重新打开相机
        currentSurfaceTexture?.let { texture ->
            if (!state.value.isPreviewActive && !cameraOpenInFlight) {
                requestCameraOpen(texture)
            } else {
                PLog.d(
                    TAG,
                    "checkAndRecoverCamera skipped: active=${state.value.isPreviewActive}, inFlight=$cameraOpenInFlight"
                )
            }
        }
        restorePreviewLutAfterResume()
    }

    private fun resetExposureCompensationForCameraRestart() {
        if (cameraController.retainCaptureSettingsEnabled) return
        if (state.value.exposureCompensation == 0) return
        PLog.d(TAG, "Reset exposure compensation for camera restart")
        cameraController.setExposureCompensation(0)
    }

    private fun restorePreviewLutAfterResume() {
        val lutId = currentLutId.value
        val loadGeneration = lutLoadGeneration
        PLog.d(TAG, "restorePreviewLutAfterResume: lutId=$lutId")
        viewModelScope.launch {
            val candidateLut = withContext(Dispatchers.IO) {
                contentRepository.lutManager.loadLut(lutId)
            }
            if (currentLutId.value != lutId || lutLoadGeneration != loadGeneration) {
                return@launch
            }
            val profile = state.value.videoConfig.logProfile
            val loadedLut = candidateLut?.takeIf {
                state.value.captureMode != CaptureMode.VIDEO || profile.matchesLut(it.curve, it.colorSpace)
            }
            if (candidateLut != null && loadedLut == null) applyLut("none")
            currentLutConfig = loadedLut
            cameraController.setLutEnabled(loadedLut != null)
            cameraController.setLogLutActive(loadedLut?.curve?.isLog == true)
            glSurfaceView?.let { view ->
                val currentState = state.value
                view.setEnginePreview(currentEnginePreviewPlan.value)
                view.setBaselineLut(currentBaselineLutConfig)
                view.setBaselineLutEnabled(currentBaselineLutConfig != null)
                view.setBaselineParams(currentBaselineRecipeParams.value)
                view.setLut(loadedLut)
                view.setLutEnabled(loadedLut != null)
                view.setParams(currentRecipeParams.value)
                view.setColorRecipeEnabled(!currentRecipeParams.value.isDefault())
                view.setVideoLogProfile(currentState.videoConfig.logProfile)
                view.restoreRenderStateAfterResume()
            }
        }
    }

    private suspend fun buildPhotoMetadata(
        width: Int,
        height: Int,
        captureInfo: CaptureInfo,
        sharpeningValue: Float = 0f,
        noiseReductionValue: Float = 0f,
        chromaNoiseReductionValue: Float = 0f,
        captureMode: String? = null,
        multipleExposureFrameCount: Int? = null,
        baselineTarget: BaselineColorCorrectionTarget? = null,
        settings: CaptureSettingsSnapshot = snapshotCaptureSettings(),
    ): MediaMetadata {
        val lutIdToSave = settings.lutId
        val aspectRatio = settings.state.aspectRatio
        val frameIdToSave = settings.frameId
        val currentCameraId = settings.cameraId

        val sensorOrientation = settings.sensorOrientation
        val lensFacing = settings.lensFacing
        val deviceRotation = settings.deviceRotation
        val baseRotation = if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
            (sensorOrientation - deviceRotation + 360) % 360
        } else {
            (sensorOrientation + deviceRotation) % 360
        }

        val userPrefs: UserPreferences? = settings.preferences
        val orientationOffset = userPrefs?.cameraOrientationOffsets?.get(currentCameraId) ?: 0
        val rotation = (baseRotation + orientationOffset) % 360
        val shouldMirror = lensFacing == CameraCharacteristics.LENS_FACING_FRONT &&
            settings.preferences.mirrorFrontCamera
        val aperture = if (settings.state.isVirtualApertureEnabled) settings.state.virtualAperture else null

        val rawToneMappingParameters = resolveCaptureRawToneMappingParameters(userPrefs)
        val defaultHdrEffectEnabled = defaultHdrEffectEnabled(
            hasEmbeddedGainmap = false,
            userPrefs = userPrefs,
        )
        val baselineMetadata = resolveBaselineMetadata(
            target = baselineTarget,
            userPrefs = userPrefs,
        )
        val effectiveRawAutoExposure = resolveEffectiveRawAutoExposure()

        val spectralFilmSettings = resolveRawSpectralFilmSettings(userPrefs)

        return MediaMetadata(
            lutId = lutIdToSave,
            frameId = frameIdToSave,
            colorRecipeParams = settings.recipe,
            baselineTarget = baselineMetadata?.first,
            baselineLutId = baselineMetadata?.second,
            baselineColorRecipeParams = baselineMetadata?.third,
            sharpening = sharpeningValue,
            noiseReduction = noiseReductionValue,
            chromaNoiseReduction = chromaNoiseReductionValue,
            captureNoiseReductionLevel = settings.state.nrLevel,
            rawDcpId = userPrefs?.rawDcpIdForLens(currentCameraId),
            rawHncsProfileId = userPrefs?.rawHncsProfileId,
            rawHncsRenderIntent = userPrefs?.rawHncsRenderIntent
                ?: HncsRenderIntent.Standard,
            rawHncsFilmCurveMode = userPrefs?.rawHncsFilmCurveMode
                ?: HncsFilmCurveMode.Standard,
            rawExposureCompensation = userPrefs?.rawExposureCompensation ?: 0f,
            rawAutoExposure = effectiveRawAutoExposure,
            customProperties = rawProcessingMetadataProperties(userPrefs),
            rawHighlightsAdjustment = userPrefs?.rawHighlightsAdjustment ?: 0f,
            rawShadowsAdjustment = userPrefs?.rawShadowsAdjustment ?: 0f,
            rawBlackPointCorrection = userPrefs?.rawBlackPointCorrection ?: 0f,
            rawWhitePointCorrection = userPrefs?.rawWhitePointCorrection ?: 0f,
            rawLensShadingCorrectionEnabled = userPreferencesRepository.latest().rawLensShadingCorrectionEnabled,
            rawBlackLevelMode = userPrefs?.rawBlackLevelModes?.get(currentCameraId) ?: "Default",
            rawCustomBlackLevel = userPrefs?.rawCustomBlackLevels?.get(currentCameraId) ?: 0f,
            rawWhiteLevelMode = userPrefs?.rawWhiteLevelModes?.get(currentCameraId)
                ?: RawWhiteLevelCorrection.MODE_DEFAULT,
            rawCustomWhiteLevel = userPrefs?.rawCustomWhiteLevels?.get(currentCameraId) ?: 0f,
            rawCfaCorrectionMode = userPrefs?.rawCfaCorrectionModes?.get(currentCameraId) ?: RawCfaCorrection.MODE_DEFAULT,
            cameraId = currentCameraId,
            rawBlackBorderCrop = settings.blackBorderCrop,
            rawRenderingEngine = resolveCaptureRawRenderingEngine(userPrefs),
            rawToneMappingParameters = rawToneMappingParameters,
            rawOutputUpscaleMode = userPrefs?.rawOutputUpscaleMode ?: RawOutputUpscaleMode.DEFAULT,
            spectralFilmStock = spectralFilmSettings.stock,
            spectralFilmPrint = spectralFilmSettings.print,
            spectralFilmCDensityGain = spectralFilmSettings.tuning.cDensityGain,
            spectralFilmMDensityGain = spectralFilmSettings.tuning.mDensityGain,
            spectralFilmYDensityGain = spectralFilmSettings.tuning.yDensityGain,
            fotufilmDocument = resolveRawFotufilmDocument(userPrefs)?.toJson(),
            width = width,
            height = height,
            ratio = aspectRatio,
            rotation = rotation,
            deviceModel = DeviceUtil.model,
            brand = captureInfo.make,
            dateTaken = captureInfo.captureTime,
            latitude = captureInfo.latitude,
            longitude = captureInfo.longitude,
            altitude = captureInfo.altitude,
            iso = captureInfo.iso,
            shutterSpeed = captureInfo.formatExposureTime(),
            focalLength = captureInfo.formatFocalLength(),
            focalLength35mm = captureInfo.formatFocalLength35mm(),
            aperture = captureInfo.formatAperture(),
            exposureBias = settings.state.exposureBias,
            droMode = settings.preferences.droMode,
            isMirrored = shouldMirror,
            colorSpace = captureInfo.colorSpace,
            computationalAperture = aperture,
            focusPointX = settings.state.focusPoint?.first,
            focusPointY = settings.state.focusPoint?.second,
            manualHdrEffectEnabled = defaultHdrEffectEnabled,
            captureMode = captureMode,
            multipleExposureFrameCount = multipleExposureFrameCount
        )
    }

    private fun resolveRawSpectralFilmSettings(
        userPrefs: UserPreferences?
    ): RawSpectralFilmSettings {
        val stock = userPrefs?.rawSpectralFilmStock ?: "kodak_portra_400"
        return RawSpectralFilmSettings(
            stock = stock,
            print = userPrefs?.rawSpectralFilmPrint ?: "kodak_portra_endura",
            tuning = (userPrefs?.rawSpectralFilmTuningsByStock?.get(stock) ?: SpectralFilmTuning.DEFAULT).normalized()
        )
    }

    /**
     * The Fotufilm document a capture records: the stored one, else the default film when the
     * capture renders with Fotufilm (as [resolveRawSpectralFilmSettings] supplies a default stock).
     */
    private fun resolveRawFotufilmDocument(userPrefs: UserPreferences?): FotufilmDocument? {
        return FotufilmDocumentStorage.decode(userPrefs?.rawFotufilmDocument, "preferences")
            ?: if (resolveCaptureRawRenderingEngine(userPrefs) == RawRenderingEngine.Fotufilm) {
                FotufilmDocumentStorage.defaultDocument()
            } else {
                null
            }
    }

    private fun resolvePreviewBaselineLut(userPrefs: UserPreferences): LutConfig? {
        val baselineLutId = userPrefs.rawBaselineLutId
            .takeIf { resolvePreviewBaselineTarget(userPrefs) != null }
        return baselineLutId?.let { contentRepository.lutManager.loadLut(it) }
    }

    private suspend fun resolveBaselineMetadata(
        target: BaselineColorCorrectionTarget?,
        userPrefs: UserPreferences? = null
    ): Triple<BaselineColorCorrectionTarget, String, ColorRecipeParams>? {
        if (target != BaselineColorCorrectionTarget.RAW) return null
        val preferences = userPrefs ?: userPreferencesRepository.userPreferences.firstOrNull() ?: return null
        val baselineLutId = preferences.rawBaselineLutId ?: return null
        val params = contentRepository.lutManager.loadColorRecipeParams(baselineLutId, target)
        return Triple(target, baselineLutId, params)
    }

    private fun isRawCaptureFormat(format: Int): Boolean {
        return when (format) {
            ImageFormat.RAW_SENSOR,
            ImageFormat.RAW10,
            ImageFormat.RAW12 -> true
            else -> false
        }
    }

    private fun currentRawBlackBorderCrop(): RawBlackBorderCrop {
        val cameraInfo = state.value.getCurrentCameraInfo() ?: return RawBlackBorderCrop()
        return cameraInfo.rawBlackBorderCrop.takeIf { cameraInfo.isVirtualIszLens }
            ?: RawBlackBorderCrop()
    }

    private fun defaultHdrEffectEnabled(
        hasEmbeddedGainmap: Boolean,
        userPrefs: UserPreferences?,
    ): Boolean {
        if (hasEmbeddedGainmap) return true
        return userPrefs?.ultraHdrGainMapEnabled ?: false
    }

    fun setUseMultipleExposure(enabled: Boolean) {
        viewModelScope.launch {
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(useMultipleExposure = SettingValue(enabled))
            )
            if (enabled) {
                userPreferencesRepository.update { useLivePhoto = false }
                cameraController.setUseLivePhoto(false)
            }
        }
    }

    fun cancelMultipleExposureSession() {
        multipleExposureState.sessionId?.let { sessionId ->
            GalleryManager.clearMultipleExposureSession(getApplication(), sessionId)
        }
        multipleExposureMetadata = null
        multipleExposureState = multipleExposureState.copy(
            sessionId = null,
            capturedCount = 0,
            frames = emptyList(),
            isProcessing = false,
            previewBitmap = null
        )
    }

    fun undoLastMultipleExposureFrame() {
        val sessionId = multipleExposureState.sessionId ?: return
        if (!GalleryManager.removeLastMultipleExposureFrame(getApplication(), sessionId)) return
        refreshMultipleExposurePreview(sessionId)
    }

    fun finishMultipleExposureSession() {
        if (!multipleExposureState.canFinish) return
        val captureId = _capturedThumbnail.value?.captureId
        multipleExposureState = multipleExposureState.copy(isProcessing = true)
        CaptureProcessingQueue.enqueue(emptyList()) {
            finishMultipleExposureSessionNow { photoId ->
                _capturedThumbnail.update { current ->
                    if (current?.captureId == captureId) {
                        current?.copy(savedPhotoId = photoId, processingFinished = true)
                    } else current
                }
            }
        }
    }

    private suspend fun finishMultipleExposureSessionNow(onSaved: (String) -> Unit) {
        val sessionId = multipleExposureState.sessionId ?: return
        val baseMetadata = multipleExposureMetadata ?: return
        withContext(Dispatchers.IO) {
            multipleExposureState = multipleExposureState.copy(isProcessing = true)
            try {
                val context = getApplication<Application>()
                val composedBitmap = GalleryManager.composeMultipleExposurePhoto(context, sessionId) ?: run {
                    multipleExposureState = multipleExposureState.copy(isProcessing = false)
                    return@withContext
                }
                val shouldAutoSave = userPreferencesRepository.latest().autoSaveAfterCapture
                val photoQualityValue = userPreferencesRepository.latest().photoQuality
                val sharpeningValue = 0f
                val noiseReductionValue = 0f
                val chromaNoiseReductionValue = 0f

                val photoId = GalleryManager.preparePhoto(
                    context,
                    // preparePhoto derives output dimensions from the sensor dimensions and rotation.
                    // The composed bitmap has already been cropped and rotated once.
                    baseMetadata.copy(
                        captureMode = "multiple_exposure",
                        multipleExposureFrameCount = multipleExposureState.capturedCount
                    ),
                    null,
                    previewThumbnail,
                    false,
                    1.0f
                ) ?: run {
                    composedBitmap.recycle()
                    multipleExposureState = multipleExposureState.copy(isProcessing = false)
                    return@withContext
                }

                GalleryManager.saveBitmapPhoto(
                    context,
                    photoId,
                    composedBitmap,
                    shouldAutoSave,
                    contentRepository.photoProcessor,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQualityValue
                )
                composedBitmap.recycle()
                cancelMultipleExposureSession()
                onSaved(photoId)
                _imageSavedEvent.emit(photoId)
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to finish multiple exposure session", e)
                multipleExposureState = multipleExposureState.copy(isProcessing = false)
            }
        }
    }

    fun pauseVideoRecording() {
        cameraController.pauseVideoRecording()
    }

    fun resumeVideoRecording() {
        cameraController.resumeVideoRecording()
    }

    private fun refreshMultipleExposurePreview(sessionId: String): Job {
        return viewModelScope.launch(Dispatchers.IO) {
            val context = getApplication<Application>()
            val frameFiles = GalleryManager.getMultipleExposureFrameFiles(context, sessionId)
            val preview = if (frameFiles.isNotEmpty()) {
                GalleryManager.composeMultipleExposurePreview(context, sessionId)
            } else {
                null
            }
            multipleExposureState = multipleExposureState.copy(
                capturedCount = frameFiles.size,
                frames = frameFiles.mapIndexed { index, file -> MultipleExposureFrame(index + 1, file) },
                previewBitmap = preview,
                sessionId = if (frameFiles.isEmpty()) null else sessionId,
                isProcessing = false
            )
            if (frameFiles.isEmpty()) {
                multipleExposureMetadata = null
            }
        }
    }

    private suspend fun handleMultipleExposureFrameCaptured(
        image: SafeImage,
        captureInfo: CaptureInfo,
        settings: CaptureSettingsSnapshot
    ) {
        try {
            if (isRawCaptureFormat(image.format)) {
                image.close()
                PLog.w(TAG, "Multiple exposure currently supports processed YUV captures only")
                return
            }

            val context = getApplication<Application>()
            val sessionId = multipleExposureState.sessionId ?: UUID.randomUUID().toString()
            val frameIndex = multipleExposureState.capturedCount + 1
            val metadata = multipleExposureMetadata ?: buildPhotoMetadata(
                width = image.width,
                height = image.height,
                captureInfo = captureInfo,
                captureMode = "multiple_exposure",
                multipleExposureFrameCount = multipleExposureState.targetCount,
                settings = settings
            ).also { multipleExposureMetadata = it }

            val frameFile = GalleryManager.saveMultipleExposureFrame(
                context,
                sessionId,
                frameIndex,
                image,
                metadata.rotation,
                settings.state.aspectRatio,
                metadata.isMirrored,
                settings.preferences.photoQuality
            ) ?: return

            multipleExposureState = multipleExposureState.copy(
                sessionId = sessionId,
                frames = multipleExposureState.frames + MultipleExposureFrame(frameIndex, frameFile),
                capturedCount = frameIndex
            )
            if (frameIndex >= multipleExposureState.targetCount) {
                finishMultipleExposureSessionNow { markCapturedThumbnailSaved(settings, it) }
            } else {
                refreshMultipleExposurePreview(sessionId).join()
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to handle multiple exposure frame", e)
        }
    }

    fun capture() {
        if (state.value.captureMode == CaptureMode.VIDEO) {
            if (state.value.videoRecordingState.isProcessing) {
                return
            }
            if (state.value.videoRecordingState.isRecording) {
                cameraController.stopVideoRecording()
            } else {
                val currentState = state.value
                val orientationOffset = userPreferences.value.cameraOrientationOffsets[
                    currentState.currentCameraId
                ] ?: 0
                cameraController.startVideoRecording(
                    creativeLutConfig = currentLutConfig.takeIf { currentState.lutEnabled },
                    creativeRecipeParams = getMergedRecipeParams(),
                    orientationOffsetDegrees = orientationOffset
                )
            }
            return
        }

        startupPrewarmJob?.takeIf { it.isActive }?.let { job ->
            PLog.d(TAG, "Canceling idle capture prewarm for shutter priority")
            job.cancel()
        }

        if (userPreferencesRepository.current.saveLocation) {
            val location = locationManager.getCurrentLocation()
            cameraController.setLocation(location?.latitude, location?.longitude)
        } else {
            cameraController.setLocation(null, null)
        }

        val timerSeconds = state.value.timerSeconds

        // 检查 VIP 权限
        val currentLut = getLutInfo(currentLutId.value)
        if (currentLut?.isVip == true && !isPurchased.value) {
            showPaymentDialog = true
            return
        }

        if (timerSeconds > 0) {
            // 延时拍摄：开始倒计时
            viewModelScope.launch {
                for (i in timerSeconds downTo 1) {
                    cameraController.setCountdownValue(i)
                    delay(1000)
                }
                // 倒计时结束，拍照
                cameraController.setCountdownValue(0)
                submitPhotoCapture()
            }
        } else {
            submitPhotoCapture()
        }
    }

    private fun snapshotCaptureSettings() = CaptureSettingsSnapshot(
        state = state.value,
        preferences = userPreferencesRepository.current,
        lutId = currentLutId.value,
        frameId = currentFrameId,
        recipe = getMergedRecipeParams(),
        cameraId = cameraController.getCurrentCameraId(),
        sensorOrientation = cameraController.getSensorOrientation(),
        lensFacing = cameraController.getLensFacing(),
        deviceRotation = OrientationObserver.captureRotationDegrees.toInt(),
        blackBorderCrop = currentRawBlackBorderCrop(),
        portraitMask = capturePortraitMaskSnapshot(),
        multipleExposure = multipleExposureState.enabled,
    )

    private fun submitPhotoCapture() {
        val settings = snapshotCaptureSettings()
        cameraController.capture { id ->
            settings.captureId = id
            pendingCaptureSettings[id] = settings
            capturePhotoThumbnails(settings)
            if (settings.state.useLivePhoto) {
                cameraController.setCapturingLivePhoto(true)
                livePhotoIndicatorJob?.cancel()
                livePhotoIndicatorJob = viewModelScope.launch {
                    delay(1500)
                    cameraController.setCapturingLivePhoto(false)
                }
            }
        }
    }

    private fun publishCapturedThumbnail(settings: CaptureSettingsSnapshot) {
        if (!settings.captureCompleted) return
        _capturedThumbnail.update { current ->
            if (current != null && (current.captureId > settings.captureId ||
                    (current.captureId == settings.captureId && current.finalThumbnailLoaded))
            ) {
                current
            } else {
                CapturedThumbnail(
                    captureId = settings.captureId,
                    photoId = settings.photoId,
                    bitmap = settings.displayThumbnail.takeUnless {
                        settings.processingFinished && settings.savedPhotoId == null && !settings.multipleExposure
                    },
                    savedPhotoId = settings.savedPhotoId,
                    processingFinished = settings.processingFinished,
                )
            }
        }
    }

    private fun markCapturedThumbnailSaved(settings: CaptureSettingsSnapshot, photoId: String) {
        settings.savedPhotoId = photoId
        publishCapturedThumbnail(settings)
    }

    fun acknowledgeCapturedThumbnail(captureId: Long) {
        _capturedThumbnail.update { current ->
            if (current?.captureId == captureId) {
                current.copy(bitmap = null, finalThumbnailLoaded = true)
            } else current
        }
    }

    private suspend fun processCapturedPhoto(photo: CapturedPhoto, settings: CaptureSettingsSnapshot) {
        val first = photo.frames.first()
        val captureInfo = first.captureInfo
        val characteristics = first.characteristics
        val captureResult = first.captureResult
        if (settings.multipleExposure) {
            handleMultipleExposureFrameCaptured(first.image, captureInfo, settings)
        } else if (photo.state.hdrBracketCapturing) {
            processHdrBracket(
                images = photo.frames.map { it.image },
                captureResults = photo.frames.map { it.captureResult },
                zeroEvFrameCount = photo.frames.size - 2,
                expectedFrameCount = photo.frames.size,
                captureInfo = captureInfo,
                characteristics = characteristics,
                captureResult = captureResult,
                settings = settings,
            )
        } else if (photo.state.isMultiFrameEnabled) {
            val burstPlanningStartedAtMs = SystemClock.elapsedRealtime()
            val chronologicalFrames = photo.frames.map {
                PendingRawStackFrame(rawStackFrame(it.image, it.captureResult, it.frameMetadata), it.captureInfo, it.captureResult)
            }.sortedBy { it.frame.sensorTimestampNs }
            val rawMaxMode = photo.state.hdrPlusMergeMode
            val rawMaxHdrFusionEnabled = photo.state.isHdrPlusBracketExposureEnabled
            val exposurePlan = RawmaxExposurePlanner.plan(
                exposureProducts = chronologicalFrames.map { it.frame.exposureProduct },
                frameRoles = chronologicalFrames.map { it.frame.role },
                enableHdrFusion = rawMaxHdrFusionEnabled,
            )
            val normalFrames = exposurePlan.normalIndices.map(chronologicalFrames::get)
            val auxiliaryIndices = buildList {
                exposurePlan.shortIndex?.let(::add)
                addAll(exposurePlan.longIndices.toList())
            }
            val auxiliaryFrames = auxiliaryIndices.map(chronologicalFrames::get)
            exposurePlan.excludedIndices.forEach { excludedIndex ->
                chronologicalFrames[excludedIndex].frame.image.close()
            }
            val isRawStack = normalFrames.firstOrNull()?.frame?.image?.format
                ?.let(::isRawCaptureFormat) == true
            // Geometry is planned by the Radiance stacker's coarse temporal-flow graph.
            // Running a second exhaustive RAW proxy registration here blocks the
            // post-capture path on CPU and duplicates the GLES registration work.
            val orderedNormalFrames = normalFrames
            val orderedFrames = orderedNormalFrames + auxiliaryFrames
            val referencePlanLog = if (isRawStack) {
                "deferred_mgc_gles, reference=pending, "
            } else {
                "chronological, reference=0, "
            }
            PLog.i(
                TAG,
                "RAW burst plan: referenceSource=$referencePlanLog" +
                    "accepted=${orderedFrames.size}, " +
                    "normal=${orderedNormalFrames.size}, " +
                    "short=${if (exposurePlan.shortIndex != null) 1 else 0}, " +
                    "long=${exposurePlan.longIndices.size}, " +
                    "exposureRejected=${exposurePlan.excludedIndices.joinToString()}, " +
                    "geometry=GLES_TEMPORAL_GRAPH, " +
                    "costMs=${SystemClock.elapsedRealtime() - burstPlanningStartedAtMs}",
            )
            val processingFrames = if (isRawStack) {
                orderedFrames
            } else {
                auxiliaryFrames.forEach { it.frame.image.close() }
                if (auxiliaryFrames.isNotEmpty()) {
                    PLog.i(
                        TAG,
                        "Excluded ${auxiliaryFrames.size} short/auxiliary frames from " +
                            "non-RAW multi-frame accumulation",
                    )
                }
                orderedNormalFrames
            }
            val framesToProcess = processingFrames.map { it.frame }
            val referenceCaptureInfo = orderedNormalFrames.firstOrNull()?.captureInfo
                ?: captureInfo
            val referenceCaptureResult = orderedNormalFrames.firstOrNull()?.captureResult
                ?: captureResult
            processStacking(
                frames = framesToProcess,
                captureInfo = referenceCaptureInfo,
                characteristics = characteristics,
                captureResult = referenceCaptureResult,
                rawMaxHdrFusionEnabled = rawMaxHdrFusionEnabled,
                rawMaxMode = rawMaxMode,
                capturePortraitMask = settings.portraitMask,
                settings = settings,
            )
        } else {
            saveImage(first.image, captureInfo, characteristics, captureResult, settings.portraitMask, settings)
        }
    }

    fun captureVideoFrame() {
        val currentState = state.value
        if (currentState.captureMode != CaptureMode.VIDEO || !currentState.videoRecordingState.isRecording) {
            return
        }

        if (userPreferencesRepository.current.saveLocation) {
            val location = locationManager.getCurrentLocation()
            cameraController.setLocation(location?.latitude, location?.longitude)
        } else {
            cameraController.setLocation(null, null)
        }

        if (isShutterSoundEnabled) {
            shutterSoundPlayer.play()
        }
        if (isVibrationEnabled) {
            vibrationHelper.vibrate()
        }

        glSurfaceView?.capturePreviewFrame { bitmap ->
            viewModelScope.launch {
                saveVideoSnapshot(bitmap)
            }
        } ?: PLog.w(TAG, "captureVideoFrame skipped: glSurfaceView unavailable")
    }

    /**
     * 开始连拍
     */
    fun startContinuousCapture() {
        if (state.value.useRaw && state.value.isRawSupported) return
        val settings = snapshotCaptureSettings()
        cameraController.startBurstCapture {
            burstImageCount = 0
            burstPhotoId = UUID.randomUUID().toString()
            burstSettings = settings
            capturePhotoThumbnails(settings)
            if (isShutterSoundEnabled) {
                shutterSoundPlayer.playBurst()
            }
        }
    }

    /**
     * 停止连拍
     */
    fun stopContinuousCapture() {
        if (state.value.useRaw && state.value.isRawSupported) return
        cameraController.stopBurstCapture()
        shutterSoundPlayer.stopBurst()
        viewModelScope.launch {
            _imageSavedEvent.emit(burstPhotoId)
        }
    }

    /**
     * 切换摄像头（前后置切换）
     */
    fun switchCamera() {
        cameraController.switchCamera()
        reopenCamera(
            preserveVideoRecording = true
        )
        zoomRatioByMain = 1f
    }

    /**
     * 切换到指定的镜头类型
     */
    fun switchToLens(cameraId: String) {
        if (isVideoLensLocked()) return
        val targetCamera = state.value.availableCameras.find { it.cameraId == cameraId }
        syncVendorCaptureSettingsToController()
        cameraController.switchToCameraId(cameraId)
        targetCamera?.let { camera ->
            setZoomRatioForCamera(camera.defaultVisibleZoomRatio(), camera.cameraId)
        }
        reopenCamera(
            preserveVideoRecording = true
        )
    }

    fun switchToLensAndSetZoomRatio(cameraId: String, ratio: Float) {
        if (isVideoLensLocked()) {
            setZoomRatio(ratio)
            return
        }
        syncVendorCaptureSettingsToController()
        cameraController.switchToCameraId(cameraId)
        setZoomRatioForCamera(ratio, cameraId)
        reopenCamera(
            preserveVideoRecording = true
        )
    }

    /**
     * 重新打开相机（切换摄像头后使用）
     */
    private fun reopenCamera(
        preserveVideoRecording: Boolean = false
    ) {
        val texture = currentSurfaceTexture
        if (texture == null) {
            cameraOpenInFlight = false
            return
        }
        requestCameraOpen(texture, preserveVideoRecording)
    }

    /**
     * 获取所有后置摄像头
     */
    fun getBackCameras(): List<CameraInfo> {
        return cameraController.getBackCameras()
    }

    /**
     * 设置曝光补偿
     */
    fun setExposureCompensation(value: Int) {
        updateUserCaptureSettings { setExposureCompensation(value) }
    }

    /**
     * 设置 ISO
     */
    fun setIso(value: Int) {
        updateUserCaptureSettings { setIso(value) }
    }

    /**
     * 设置快门速度
     */
    fun setShutterSpeed(value: Long) {
        updateUserCaptureSettings { setShutterSpeed(value) }
    }

    /**
     * 设置计算光圈 (等效虚化)
     */
    fun setAperture(value: Float) {
        cameraController.setAperture(value)
    }

    /**
     * 设置是否开启虚拟光圈 (等效虚化控制)
     */
    fun setVirtualApertureAuto(enabled: Boolean) {
        cameraController.setVirtualApertureEnabled(enabled)
    }

    fun setAutoFocus(auto: Boolean) {
        updateUserCaptureSettings { setAutoFocus(auto) }
    }

    fun setFocusDistance(distance: Float) {
        updateUserCaptureSettings {
            if (state.value.isAutoFocus) setAutoFocus(false)
            setFocusDistance(distance)
        }
    }

    fun setHyperfocalFocusEnabled(enabled: Boolean) {
        updateUserCaptureSettings { setHyperfocalFocusEnabled(enabled) }
    }

    private fun updateUserCaptureSettings(update: Camera2Controller.() -> Unit) {
        cameraController.updateUserCaptureSettings(update) { settings ->
            viewModelScope.launch {
                userPreferencesRepository.update {
                    if (retainCaptureSettings) customCaptureSettings = settings
                }
            }
        }
    }

    fun setRetainCaptureSettings(enabled: Boolean) {
        cameraController.setCaptureSettingsRetention(enabled) { settings ->
            // 开关与快照同一次写入；关闭时一并清除已保存的参数
            viewModelScope.launch {
                userPreferencesRepository.update {
                    retainCaptureSettings = enabled
                    customCaptureSettings = settings.takeIf { enabled }
                }
            }
        }
    }

    /**
     * 设置变焦倍数
     */
    fun setZoomRatio(ratio: Float) {
        zoomRatioByMain = ratio
        val cameraInfo = state.value.getCurrentCameraInfo()
        setCameraControllerZoomRatio(ratio, cameraInfo)
    }

    private fun setZoomRatioForCamera(ratio: Float, cameraId: String) {
        zoomRatioByMain = ratio
        val cameraInfo = state.value.availableCameras.find { it.cameraId == cameraId }
        setCameraControllerZoomRatio(ratio, cameraInfo)
    }

    private fun setCameraControllerZoomRatio(ratio: Float, cameraInfo: CameraInfo?) {
        val displayIntrinsicZoomRatio = cameraInfo?.displayIntrinsicZoomRatio?.takeIf { it > 0f } ?: 1.0f
        cameraController.setZoomRatio(ratio / displayIntrinsicZoomRatio)
    }

    private fun CameraInfo.defaultVisibleZoomRatio(): Float {
        return displayIntrinsicZoomRatio.takeIf { it > 0f }
            ?: intrinsicZoomRatio.takeIf { it > 0f }
            ?: 1f
    }

    private fun syncVendorCaptureSettingsToController() {
        val settings = userPreferencesRepository.current.vendorCaptureSettingsByLens
        if (cameraController.state.value.vendorCaptureSettingsByLens != settings) {
            cameraController.setVendorCaptureSettingsByLens(settings)
        }
        val customSettings = userPreferencesRepository.current.customVendorKeySettings
        if (cameraController.state.value.customVendorKeySettings != customSettings) {
            cameraController.setCustomVendorKeySettings(customSettings)
        }
    }

    /**
     * 设置画面比例
     */
    fun setAspectRatio(ratio: AspectRatio) {
        viewModelScope.launch {
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(aspectRatio = SettingValue(ratio))
            )
        }
    }

    fun setTopSheetAspectRatios(ratios: List<AspectRatio>) {
        val sanitizedRatios = AspectRatio.sanitizeTopSheetRatios(ratios)
        if (state.value.aspectRatio !in sanitizedRatios) {
            setAspectRatio(sanitizedRatios.first())
        }
        viewModelScope.launch {
            userPreferencesRepository.update { topSheetAspectRatios = sanitizedRatios }
        }
    }

    fun addCustomAspectRatio(widthRatio: Int, heightRatio: Int) {
        val ratio = AspectRatio.custom(widthRatio, heightRatio)
        val customRatios = AspectRatio.sanitizeCustomRatios(userPreferencesRepository.current.customAspectRatios + ratio)
        viewModelScope.launch {
            userPreferencesRepository.update { customAspectRatios = customRatios }
            val selectedRatios = AspectRatio.sanitizeTopSheetRatios(userPreferencesRepository.current.topSheetAspectRatios + ratio)
            userPreferencesRepository.update { topSheetAspectRatios = selectedRatios }
        }
    }

    fun deleteCustomAspectRatio(ratio: AspectRatio) {
        val customRatios = userPreferencesRepository.current.customAspectRatios.filterNot { it.name == ratio.name }
        val selectedRatios = userPreferencesRepository.current.topSheetAspectRatios.filterNot { it.name == ratio.name }
        if (state.value.aspectRatio.name == ratio.name) {
            setAspectRatio(AspectRatio.RATIO_4_3)
        }
        viewModelScope.launch {
            userPreferencesRepository.update { customAspectRatios = customRatios }
            userPreferencesRepository.update { topSheetAspectRatios = selectedRatios }
        }
    }

    fun setCaptureMode(mode: CaptureMode) {
        setShootingMode(mode, useRaw = null)
    }

    /**
     * Applies the three-way shooting mode selection as one ordered operation.
     *
     * RAW is updated before leaving video mode so the public camera state never passes through
     * the other photo mode (VIDEO -> PROFESSIONAL -> PHOTO, for example). The capture-mode
     * change then owns the single camera restart required by the operation.
     */
    fun setShootingMode(mode: CaptureMode, useRaw: Boolean?) {
        if (state.value.videoRecordingState.isRecording ||
            state.value.videoRecordingState.isProcessing
        ) {
            return
        }

        shootingModeSwitchJob?.cancel()
        val rawNeedsUpdate = useRaw != null &&
            (state.value.useRaw != useRaw || userPreferencesRepository.current.useRaw != useRaw)
        if (state.value.captureMode == mode && !rawNeedsUpdate) return

        shootingModeSwitchJob = viewModelScope.launch {
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(
                    captureMode = SettingValue(mode),
                    useRaw = useRaw?.let(::SettingValue),
                )
            )
        }
    }

    fun setVideoResolution(resolution: VideoResolutionPreset) {
        cameraController.setVideoResolution(resolution)
        val resolvedConfig = state.value.videoConfig
        reopenCamera()
        viewModelScope.launch {
            userPreferencesRepository.update {
                videoStabilizationMode = resolvedConfig.stabilizationMode
                videoResolution = resolvedConfig.resolution
                videoFps = resolvedConfig.fps
            }
        }
    }

    fun setVideoFps(fps: VideoFpsPreset) {
        cameraController.setVideoFps(fps)
        val resolvedConfig = state.value.videoConfig
        reopenCamera()
        viewModelScope.launch {
            userPreferencesRepository.update {
                videoStabilizationMode = resolvedConfig.stabilizationMode
                videoResolution = resolvedConfig.resolution
                videoFps = resolvedConfig.fps
            }
        }
    }

    fun setVideoAspectRatio(aspectRatio: VideoAspectRatio) {
        cameraController.setVideoAspectRatio(aspectRatio)
        reopenCamera()
        viewModelScope.launch {
            userPreferencesRepository.update { videoAspectRatio = aspectRatio }
        }
    }

    fun setVideoStabilizationMode(mode: com.hinnka.mycamera.video.VideoStabilizationMode) {
        val previousConfig = state.value.videoConfig
        cameraController.setVideoStabilizationMode(mode)
        val resolvedConfig = state.value.videoConfig
        if (state.value.captureMode == CaptureMode.VIDEO &&
            (previousConfig.resolution != resolvedConfig.resolution ||
                previousConfig.fps != resolvedConfig.fps)
        ) {
            reopenCamera()
        }
        viewModelScope.launch {
            userPreferencesRepository.update {
                videoStabilizationMode = resolvedConfig.stabilizationMode
                videoResolution = resolvedConfig.resolution
                videoFps = resolvedConfig.fps
            }
        }
    }

    fun setPhotoPreviewStabilizationEnabled(enabled: Boolean) {
        cameraController.setPhotoPreviewStabilizationEnabled(enabled)
        val resolvedEnabled = state.value.photoPreviewStabilizationEnabled
        viewModelScope.launch {
            userPreferencesRepository.update { photoPreviewStabilizationEnabled = resolvedEnabled }
        }
    }

    fun setOppoSuperStabilizationEnabled(enabled: Boolean) {
        cameraController.setOppoSuperStabilizationEnabled(enabled)
        viewModelScope.launch {
            userPreferencesRepository.update { oppoSuperStabilizationEnabled = enabled }
        }
    }

    fun setVideoEnhancedStabilizationStrength(strength: Float) {
        cameraController.setVideoEnhancedStabilizationStrength(strength)
        viewModelScope.launch {
            userPreferencesRepository.update { videoEnhancedStabilizationStrength = strength }
        }
    }

    fun setVideoEnhancedStabilizationLookahead(lookahead: Int) {
        cameraController.setVideoEnhancedStabilizationLookahead(lookahead)
        viewModelScope.launch {
            userPreferencesRepository.update { videoEnhancedStabilizationLookahead = lookahead }
        }
    }

    fun setExternalLensStabilizationConfig(config: ExternalLensStabilizationConfig) {
        val normalized = config.normalized()
        cameraController.setExternalLensStabilizationConfig(normalized)
        viewModelScope.launch {
            userPreferencesRepository.update { externalLensStabilizationConfig = normalized }
        }
    }

    fun setVideoLogProfile(logProfile: VideoLogProfile) {
        cameraController.setVideoLogProfile(logProfile)
        reopenCamera()
        viewModelScope.launch {
            userPreferencesRepository.update { videoLogProfile = logProfile }
        }
        validateAndCancelNonMatchingVideoLut(logProfile, currentLutConfig)
    }

    fun setVideoLogLutMode(mode: VideoLogLutMode) {
        if (state.value.videoRecordingState.isRecording || state.value.videoRecordingState.isProcessing) return
        cameraController.setVideoLogLutMode(mode)
        viewModelScope.launch { userPreferencesRepository.update { videoLogLutMode = mode } }
    }

    /**
     * 验证并取消选择非匹配的视频 LUT
     * 如果当前处于视频模式且启用了 Log，若当前选中的 LUT 与 Log 格式不匹配，则取消该 LUT
     */
    private fun validateAndCancelNonMatchingVideoLut(logProfile: VideoLogProfile, lutConfig: LutConfig?) {
        if (logProfile != VideoLogProfile.OFF && lutConfig != null) {
            if (!logProfile.matchesLut(lutConfig.curve, lutConfig.colorSpace)) {
                PLog.d(TAG, "Cancelling selected LUT [${lutConfig.title}] because it does not match video log profile [${logProfile.name}] colorSpace/curve")
                setLut(null, persist = false)
            }
        }
    }

    fun setVideoBitrate(bitrate: VideoBitratePreset) {
        cameraController.setVideoBitrate(bitrate)
        reopenCamera()
        viewModelScope.launch {
            userPreferencesRepository.update { videoBitrate = bitrate }
        }
    }

    fun setVideoRecordingPath(recordingPath: VideoRecordingPath, treeUri: String? = null) {
        cameraController.setVideoRecordingPath(recordingPath, treeUri)
        viewModelScope.launch {
            userPreferencesRepository.update {
                videoRecordingPath = recordingPath
                videoRecordingTreeUri = treeUri.takeIf { recordingPath == VideoRecordingPath.EXTERNAL_TREE }
            }
        }
    }

    fun setPhotoSavePath(savePath: PhotoSavePath, treeUri: String? = null) {
        viewModelScope.launch {
            userPreferencesRepository.update {
                photoSavePath = savePath
                photoSaveTreeUri = treeUri.takeIf { savePath == PhotoSavePath.EXTERNAL_TREE }
            }
        }
    }

    /**
     * 点击对焦
     */
    fun focusOnPoint(x: Float, y: Float, viewWidth: Int, viewHeight: Int) {
        cameraController.focusOnPoint(x, y, viewWidth, viewHeight)
    }

    fun moveMeteringPoint(x: Float, y: Float, viewAspectRatio: Float) {
        cameraController.moveMeteringPoint(x, y, viewAspectRatio)
    }

    fun moveFocusPoint(x: Float, y: Float, viewAspectRatio: Float, finished: Boolean) {
        cameraController.moveFocusPoint(x, y, viewAspectRatio, finished)
    }

    fun mergeMeteringPoint() {
        cameraController.mergeMeteringPoint()
    }

    fun lockFocusOnPoint(x: Float, y: Float, viewWidth: Int, viewHeight: Int) {
        cameraController.lockFocusOnPoint(x, y, viewWidth, viewHeight)
    }

    fun unlockFocus() {
        cameraController.unlockFocus()
    }

    fun toggleFlash() {
        cameraController.setFlashMode(
            when (state.value.flashMode) {
                0 -> 1
                1 -> 2
                2 -> 0
                else -> 0
            }
        )
    }

    /**
     * 设置曝光自动模式
     */
    fun setAutoExposure(enabled: Boolean) {
        updateUserCaptureSettings { setAutoExposure(enabled) }
    }

    /**
     * 设置 ISO 自动模式
     */
    fun setIsoAuto(enabled: Boolean) {
        updateUserCaptureSettings { setIsoAuto(enabled) }
    }

    /**
     * 设置快门自动模式
     */
    fun setShutterSpeedAuto(enabled: Boolean) {
        updateUserCaptureSettings { setShutterSpeedAuto(enabled) }
    }

    /**
     * 设置白平衡模式
     */
    fun setAwbMode(mode: Int) {
        updateUserCaptureSettings { setAwbMode(mode) }
    }

    /**
     * 设置白平衡色温
     */
    fun setAwbTemperature(kelvin: Int) {
        updateUserCaptureSettings { setAwbTemperature(kelvin) }
    }

    fun setMeteringMode(mode: MeteringMode) {
        cameraController.setMeteringMode(mode)
        viewModelScope.launch {
            userPreferencesRepository.update { meteringMode = mode }
        }
    }

    // ==================== 计费相关方法 ====================

    /**
     * 发起购买
     */
    fun purchase(activity: android.app.Activity) {
        billingManager.purchase(activity)
    }

    // ==================== 自定义导入相关方法 ====================

    /**
     * 获取自定义导入管理器
     */
    fun getCustomImportManager() = contentRepository.getCustomImportManager()

    /**
     * 刷新自定义内容（在导入新的LUT或边框后调用）
     * StateFlow 会自动通知订阅者更新
     */
    fun refreshCustomContent() {
        viewModelScope.launch {
            withContext(Dispatchers.IO) {
                // 重新初始化内容仓库
                // StateFlow 会自动更新 availableLutList 和 availableFrameList
                contentRepository.refreshCustomContent()
            }
            PLog.d(TAG, "Custom content refreshed via ContentRepository")
        }
    }

    /**
     * 复制 LUT
     */
    fun copyLut(lut: LutInfo, copyName: String) {
        viewModelScope.launch {
            val newLutId = withContext(Dispatchers.IO) {
                contentRepository.getCustomImportManager().copyLut(lut, copyName)
            }
            if (newLutId != null) {
                withContext(Dispatchers.IO) {
                    // 同时复制色彩配方
                    val params = contentRepository.lutManager.loadColorRecipeParams(lut.id)
                    contentRepository.lutManager.saveColorRecipeParams(newLutId, params)

                    // 更新排序顺序：放在原版下面
                    val currentOrder = userPreferencesRepository.userPreferences.first().filterOrder.toMutableList()
                    if (currentOrder.isEmpty()) {
                        // 如果当前没有排序，则从当前列表初始化并插入
                        val allIds = availableLutList.map { it.id }.toMutableList()
                        val index = allIds.indexOf(lut.id)
                        if (index != -1) {
                            allIds.add(index + 1, newLutId)
                        } else {
                            allIds.add(newLutId)
                        }
                        userPreferencesRepository.update { filterOrder = allIds }
                    } else {
                        val index = currentOrder.indexOf(lut.id)
                        if (index != -1) {
                            currentOrder.add(index + 1, newLutId)
                        } else {
                            currentOrder.add(newLutId)
                        }
                        userPreferencesRepository.update { filterOrder = currentOrder }
                    }

                    // 刷新列表
                    contentRepository.refreshCustomContent()
                }
            }
        }
    }

    /**
     * 获取滤镜排序顺序
     */

    /**
     * 获取边框排序顺序
     */

    /**
     * 获取分类排序顺序
     */

    private val _lutSelectorMode = MutableStateFlow(LutSelectorMode.Style)
    val lutSelectorMode: StateFlow<LutSelectorMode> = _lutSelectorMode.asStateFlow()
    private var lutSelectorModeSelectionGeneration = 0

    init {
        val initializationGeneration = lutSelectorModeSelectionGeneration
        viewModelScope.launch {
            val persistedMode = userPreferencesRepository.userPreferences.first().lutSelectorMode
            if (lutSelectorModeSelectionGeneration == initializationGeneration) {
                _lutSelectorMode.value = persistedMode
            }
        }
    }

    /**
     * 保存分类排序顺序
     */
    fun saveCategoryOrder(order: List<String>) =
        viewModelScope.launch {
            userPreferencesRepository.update { categoryOrder = order }
        }

    suspend fun retainLutCategories(categories: List<String>) {
        userPreferencesRepository.update {
            categoryOrder = (categoryOrder + categories).filter { it.isNotBlank() }.distinct()
        }
    }

    fun setLutSelectorMode(mode: LutSelectorMode) {
        if (_lutSelectorMode.value == mode) return
        lutSelectorModeSelectionGeneration++
        _lutSelectorMode.value = mode
        viewModelScope.launch {
            userPreferencesRepository.update { lutSelectorMode = mode }
        }
    }

    // ==================== LUT 相关方法 ====================

    /**
     * 设置当前 LUT
     */
    fun setLut(lutId: String?, persist: Boolean = true) {
        val normalizedLutId = lutId ?: "none"
        val profile = state.value.videoConfig.logProfile
        if (state.value.captureMode == CaptureMode.VIDEO && profile.isEnabled && normalizedLutId != "none") {
            val info = availableLutList.firstOrNull { it.id == normalizedLutId }
            if (info != null && !profile.matchesLut(info.inputCurve, info.inputColorSpace)) {
                if (!persist) applyLut("none")
                return
            }
        }
        applyLut(normalizedLutId)

        if (persist) {
            val useVideoSlot = state.value.captureMode == CaptureMode.VIDEO &&
                userPreferences.value.separateVideoLutEnabled
            viewModelScope.launch {
                if (useVideoSlot) {
                    userPreferencesRepository.update { videoLutId = normalizedLutId }
                } else {
                    userPreferencesRepository.update { this.lutId = normalizedLutId }
                    PhotonLookContract.notifyLookChanged(getApplication<Application>())
                }
            }
        }
    }

    private var lutIntensitySaveJob: Job? = null

    fun updateLutIntensity(intensity: Float) {
        val lutId = currentLutId.value
        if (lutId == "none") return
        val current = currentRecipeParams.value
        val updated = current.copy(lutIntensity = RecipeParam.LUT_INTENSITY.clamp(intensity))
        lutIntensitySaveJob?.cancel()
        lutIntensitySaveJob = viewModelScope.launch {
            delay(200)
            contentRepository.lutManager.saveColorRecipeParams(lutId, updated)
        }
    }

    fun setPhotoLut(lutId: String?) {
        val normalizedLutId = lutId ?: "none"
        val shouldApply = state.value.captureMode != CaptureMode.VIDEO ||
            !userPreferences.value.separateVideoLutEnabled
        if (shouldApply) {
            applyLut(normalizedLutId)
        }
        viewModelScope.launch {
            userPreferencesRepository.update { this.lutId = normalizedLutId }
            PhotonLookContract.notifyLookChanged(getApplication<Application>())
        }
    }

    fun setVideoLut(lutId: String?) {
        val normalizedLutId = lutId ?: "none"
        if (state.value.captureMode == CaptureMode.VIDEO &&
            userPreferences.value.separateVideoLutEnabled
        ) {
            applyLut(normalizedLutId)
        }
        viewModelScope.launch {
            userPreferencesRepository.update { videoLutId = normalizedLutId }
        }
    }

    fun setSeparateVideoLutEnabled(enabled: Boolean) {
        if (userPreferences.value.separateVideoLutEnabled == enabled) return
        viewModelScope.launch {
            val currentPreferences = userPreferencesRepository.userPreferences.first()
            val initialVideoLutId = currentPreferences.videoLutId
                ?: currentPreferences.lutId
                ?: currentLutId.value
            userPreferencesRepository.update {
                separateVideoLutEnabled = enabled
                if (enabled && videoLutId == null && initialVideoLutId != null) videoLutId = initialVideoLutId
            }
            if (state.value.captureMode == CaptureMode.VIDEO) {
                val updatedPreferences = currentPreferences.edited {
                    separateVideoLutEnabled = enabled
                    videoLutId = currentPreferences.videoLutId ?: initialVideoLutId
                }
                resolveLutIdForMode(updatedPreferences, CaptureMode.VIDEO)?.let {
                    applyLut(it)
                }
            }
        }
    }

    private fun resolveLutIdForMode(preferences: UserPreferences, mode: CaptureMode): String? {
        return resolveLutIdForCaptureMode(
            photoLutId = preferences.lutId,
            videoLutId = preferences.videoLutId,
            separateVideoLutEnabled = preferences.separateVideoLutEnabled,
            captureMode = mode,
            defaultLutId = availableLutList.firstOrNull { it.isDefault }?.id,
        )
    }

    private fun applyLut(normalizedLutId: String) {
        val loadGeneration = ++lutLoadGeneration
        lutLoadJob?.cancel()
        val profile = state.value.videoConfig.logProfile
        if (state.value.captureMode == CaptureMode.VIDEO && profile.isEnabled &&
            !profile.matchesLut(currentLutConfig?.curve, currentLutConfig?.colorSpace)) {
            currentLutConfig = null
            cameraController.setLogLutActive(false)
        }
        currentLutId.value = normalizedLutId
        if (normalizedLutId == "none") {
            currentLutConfig = null
            // LUT 已禁用，通知相机控制器
            cameraController.setLogLutActive(false)
            cameraController.setLutEnabled(false)
        } else {
            val hadActiveLut = currentLutConfig != null
            if (!hadActiveLut) {
                // 首次启动时先保持”未启用”状态，避免 Live Photo 在 LUT 文件尚未加载完成前录入原始画面。
                cameraController.setLutEnabled(false)
            }
            lutLoadJob = viewModelScope.launch {
                val loadedLut = withContext(Dispatchers.IO) {
                    contentRepository.lutManager.loadLut(normalizedLutId)
                }
                if (lutLoadGeneration != loadGeneration || currentLutId.value != normalizedLutId) {
                    return@launch
                }
                if (state.value.captureMode == CaptureMode.VIDEO) {
                    val logProfile = state.value.videoConfig.logProfile
                    if (logProfile != VideoLogProfile.OFF && loadedLut != null) {
                        if (!logProfile.matchesLut(loadedLut.curve, loadedLut.colorSpace)) {
                            PLog.d(TAG, "Deselecting newly selected LUT [${loadedLut.title}] because it does not match video log profile [${logProfile.name}] colorSpace/curve")
                            setLut(null, persist = false)
                            return@launch
                        }
                    }
                }
                currentLutConfig = loadedLut
                cameraController.setLogLutActive(loadedLut?.curve?.isLog == true)
                cameraController.setLutEnabled(loadedLut != null)
                if (lutLoadGeneration == loadGeneration) {
                    lutLoadJob = null
                }
            }
            if (hadActiveLut) {
                cameraController.setLutEnabled(true)
            }
        }
    }

    /**
     * 预览下一个滤镜（不切换）
     */
    fun peekNextLut(): LutInfo? {
        val luts = selectableLutList
        if (luts.isEmpty()) return null
        val currentIndex = luts.indexOfFirst { it.id == currentLutId.value }
        val nextIndex = if (currentIndex == -1 || currentIndex == luts.size - 1) 0 else currentIndex + 1
        return luts[nextIndex]
    }

    /**
     * 预览上一个滤镜（不切换）
     */
    fun peekPreviousLut(): LutInfo? {
        val luts = selectableLutList
        if (luts.isEmpty()) return null
        val currentIndex = luts.indexOfFirst { it.id == currentLutId.value }
        val prevIndex = if (currentIndex <= 0) luts.size - 1 else currentIndex - 1
        return luts[prevIndex]
    }

    /**
     * 切换到下一个滤镜
     */
    fun switchToNextLut(): LutInfo? {
        val nextLut = peekNextLut() ?: return null
        setLut(nextLut.id)
        vibrationHelper.vibrate()
        return nextLut
    }

    /**
     * 切换到上一个滤镜
     */
    fun switchToPreviousLut(): LutInfo? {
        val previousLut = peekPreviousLut() ?: return null
        setLut(previousLut.id)
        vibrationHelper.vibrate()
        return previousLut
    }

    fun updateLut() {
        viewModelScope.launch {
            val preferences = userPreferencesRepository.userPreferences.first()
            val newLutId = resolveLutIdForMode(preferences, state.value.captureMode) ?: return@launch
            if (currentLutId.value != newLutId) {
                setLut(newLutId, persist = false)
            }
        }
    }

    fun setLocationTrackingForeground(foreground: Boolean) {
        locationTrackingForeground = foreground
        applyLocationTracking(userPreferencesRepository.current.saveLocation)
    }

    private fun applyLocationTracking(saveLocation: Boolean) {
        if (locationTrackingForeground && saveLocation) {
            locationManager.startUpdates()
        } else {
            locationManager.stopUpdates()
        }
    }

    fun setUseBuiltInAiService(use: Boolean) {
        if (use && !isPurchased.value) {
            showPaymentDialog = true
            return
        }
        userPreferencesRepository.updateAsync { useBuiltInAiService = use }
    }

    /**
     * 查询可用的 AI 模型列表
     */
    fun fetchAvailableAIModels() {
        if (_isFetchingAIModels.value) return

        viewModelScope.launch {
            _isFetchingAIModels.value = true

            try {
                val context = getApplication<Application>()
                val client = OpenAIApiClient()
                client.initialize(context)
                val result = client.getAvailableModels()
                result.onSuccess { models ->
                    _availableOpenAIModels.value = models
                    // 如果当前选择的模型为空且有可用模型，自动选择第一个
                    if (userPreferencesRepository.current.openAIModel.isNullOrBlank() && models.isNotEmpty()) {
                        userPreferencesRepository.updateAsync { openAIModel = models.first() }
                    }
                }.onFailure { e ->
                    PLog.e(TAG, "Failed to fetch AI models", e)
                }
            } catch (e: Exception) {
                PLog.e(TAG, "Error initializing OpenAIApiClient for model fetch", e)
            } finally {
                _isFetchingAIModels.value = false
            }
        }
    }

    fun setUseP3ColorSpace(enabled: Boolean) {
        cameraController.setUseP3ColorSpace(enabled)
        userPreferencesRepository.updateAsync { useP3ColorSpace = enabled }
        reopenCamera()
    }

    /**
     * 获取 LUT 信息
     */
    fun getLutInfo(id: String): LutInfo? {
        return contentRepository.lutManager.getLutInfo(id)
    }

    private fun capturePhotoThumbnails(settings: CaptureSettingsSnapshot) {
        val glView = glSurfaceView ?: run {
            previewThumbnail = null
            return
        }
        val rotation = capturePreviewThumbnailRotation()
        glView.capturePhotoPreviewFrames(
            onDisplayCaptured = { bitmap ->
                val thumbnail = rotatePreviewBitmapForCapture(bitmap, rotation)
                settings.displayThumbnail = thumbnail
                GalleryManager.updateProcessingThumbnail(settings.photoId, thumbnail)
                publishCapturedThumbnail(settings)
            },
            onOriginalCaptured = { bitmap ->
                val thumbnail = rotatePreviewBitmapForCapture(bitmap, rotation)
                settings.originalThumbnail = thumbnail
                previewThumbnail = thumbnail
            },
        )
    }

    /**
     * 从相机捕获预览帧并生成所有 LUT 的预览图
     */
    fun generateThumbnail(onGenerated: ((Bitmap?) -> Unit)? = null) {
        val isGeneralPreviewRequest = onGenerated == null
        if (isGeneralPreviewRequest && isGeneratingPreviews) {
            PLog.d(TAG, "Already generating previews, skipping")
            return
        }

        if (isGeneralPreviewRequest) isGeneratingPreviews = true

        val glView = glSurfaceView
        if (glView != null) {
            val thumbnailRotation = capturePreviewThumbnailRotation()
            glView.captureOriginalPreviewFrame { bitmap ->
                val thumbnail = bitmap?.let {
                    rotatePreviewBitmapForCapture(it, thumbnailRotation)
                }
                previewThumbnail = thumbnail
                onGenerated?.invoke(thumbnail)
                if (isGeneralPreviewRequest) isGeneratingPreviews = false
            }
        } else {
            previewThumbnail = null
            onGenerated?.invoke(null)
            if (isGeneralPreviewRequest) isGeneratingPreviews = false
        }
    }

    private fun capturePreviewThumbnailRotation(): Float {
        val deviceRotation = OrientationObserver.captureRotationDegrees.toInt()
        val lensFacing = cameraController.getLensFacing()
        val baseRotation = if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
            (360 - deviceRotation) % 360
        } else {
            deviceRotation
        }
        val currentCameraId = cameraController.getCurrentCameraId()
        val orientationOffset = userPreferences.value.cameraOrientationOffsets[currentCameraId] ?: 0
        return ((baseRotation + orientationOffset) % 360).toFloat()
    }

    private fun rotatePreviewBitmapForCapture(bitmap: Bitmap, rotationDegrees: Float): Bitmap {
        if (rotationDegrees == 0f) {
            return bitmap
        }
        val sourceWidth = bitmap.width
        val sourceHeight = bitmap.height
        val rotated = BitmapUtils.rotate(bitmap, rotationDegrees)
        PLog.d(
            TAG,
            "Preview bitmap rotated for capture: ${sourceWidth}x${sourceHeight}, rotation=$rotationDegrees"
        )
        return rotated
    }

    suspend fun applyLut(bitmap: Bitmap): Bitmap = withContext(Dispatchers.IO) {
        currentLutConfig?.let { lut ->
            val params = getMergedRecipeParams(contentRepository.lutManager.loadColorRecipeParams(currentLutId.value))
            contentRepository.imageProcessor.applyLut(
                bitmap = bitmap,
                lutConfig = lut,
                colorRecipeParams = params
            )
        } ?: bitmap
    }

    /** The display preview already includes its look; only composite the captured photo's frame. */
    suspend fun renderCaptureAnimationFrame(bitmap: Bitmap, metadata: MediaMetadata): Bitmap =
        withContext(Dispatchers.IO) {
            val context = getApplication<Application>()
            val frameId = metadata.frameId ?: return@withContext bitmap
            val manager = contentRepository.frameManager
            val template = manager.loadTemplate(frameId) ?: return@withContext bitmap
            val frameMetadata = manager.resolveFrameLocation(
                template,
                metadata.copy(
                    customProperties = metadata.customProperties.ifEmpty {
                        manager.loadCustomProperties(frameId)
                    }
                )
            )
            // FrameRenderer holds mutable Canvas/Paint state; do not share it with photo export.
            FrameRenderer(context, contentRepository.lutManager).render(bitmap, template, frameMetadata)
        }

    fun handleHistogramUpdate(histogram: IntArray) {
        cameraController.updateHistogram(histogram)
    }

    fun handleMeteringUpdate(totalWeight: Double, weightedSumLuminance: Double) {
        cameraController.calculateAutoMetering(totalWeight, weightedSumLuminance)
    }

    fun handleHighlightPointUpdate(x: Float, y: Float) {
        cameraController.updateHighlightPoint(x, y)
    }

    fun handleEyeFocusInputUpdate(frame: EyeFocusPreviewFrame) {
        val cameraState = state.value
        val acceptsPortraitMask = cameraState.captureMode == CaptureMode.PHOTO &&
            cameraState.useRaw &&
            cameraState.isRawSupported &&
            cameraState.isPreviewActive &&
            !cameraState.isCapturing
        val acceptsEyeFocus = userPreferencesRepository.current.eyeFocusEnabled &&
            isEyeFocusRuntimeAvailable &&
            cameraState.isPreviewActive &&
            cameraState.isAutoFocus &&
            !cameraState.isHyperfocalFocusEnabled &&
            !cameraState.isCapturing &&
            (cameraState.focusPoint == null || cameraState.focusPointSource == FocusPointSource.EYE)
        if (!acceptsEyeFocus && !acceptsPortraitMask) {
            frame.bitmap.recycle()
            completeEyeFocusInput()
            return
        }

        if (
            !previewEyeFocusProcessor.processFrame(
                frame = frame,
                detectEyeTarget = acceptsEyeFocus,
                createFaceMask = acceptsPortraitMask,
            )
        ) {
            frame.bitmap.recycle()
            completeEyeFocusInput()
        }
    }

    private fun handleEyeFocusTarget(target: PreviewEyeFocusProcessor.EyeTarget) {
        val cameraState = state.value
        if (
            !userPreferencesRepository.current.eyeFocusEnabled ||
            !isEyeFocusRuntimeAvailable ||
            !cameraState.isPreviewActive ||
            !cameraState.isAutoFocus ||
            cameraState.isHyperfocalFocusEnabled ||
            cameraState.isCapturing ||
            (cameraState.focusPoint != null && cameraState.focusPointSource == FocusPointSource.MANUAL)
        ) {
            return
        }

        cameraController.updateEyeFocusTarget(target.x, target.y)
        if (!cameraState.supportsPointAutoFocus) {
            return
        }

        val now = SystemClock.elapsedRealtime()
        val previousPoint = lastEyeFocusTriggerPoint
        val elapsed = now - lastEyeFocusTriggerElapsedMs
        val moved = previousPoint != null && hypot(
            target.x - previousPoint.first,
            target.y - previousPoint.second,
        ) >= EYE_FOCUS_MOVE_THRESHOLD
        val retryAfterFailure = cameraState.focusPointSource == FocusPointSource.EYE &&
            cameraState.focusSuccess == false && elapsed >= EYE_FOCUS_RETRY_INTERVAL_MS
        val periodicRefresh = previousPoint != null && elapsed >= EYE_FOCUS_REFRESH_INTERVAL_MS
        val shouldTrigger = previousPoint == null || moved || retryAfterFailure || periodicRefresh
        if (shouldTrigger && !cameraState.isFocusing && elapsed >= EYE_FOCUS_MIN_TRIGGER_INTERVAL_MS) {
            lastEyeFocusTriggerPoint = Pair(target.x, target.y)
            lastEyeFocusTriggerElapsedMs = now
            cameraController.focusOnNormalizedPoint(
                normX = target.x,
                normY = target.y,
                source = FocusPointSource.EYE,
            )
        }
    }

    private fun completeEyeFocusInput() {
        isEyeFocusBusy = false
        glSurfaceView?.setEyeFocusBusy(false)
    }

    private fun resetEyeFocusTracking(cancelCameraFocus: Boolean, reason: String) {
        lastEyeFocusTriggerPoint = null
        lastEyeFocusTriggerElapsedMs = 0L
        if (cancelCameraFocus) {
            cameraController.cancelEyeFocus(reason)
        }
    }

    private fun capturePortraitMaskSnapshot(): PortraitMaskSnapshot? {
        val mask = latestPortraitMask ?: return null
        val ageNanos = SystemClock.elapsedRealtimeNanos() - mask.sampleElapsedRealtimeNanos
        if (ageNanos !in 0L..PORTRAIT_MASK_MAX_AGE_NS) return null
        if (mask.cameraId != cameraController.getCurrentCameraId()) return null
        if (mask.sensorOrientationDegrees != cameraController.getSensorOrientation()) return null
        val isFrontFacing = cameraController.getLensFacing() ==
            CameraCharacteristics.LENS_FACING_FRONT
        if (mask.isFrontFacing != isFrontFacing) return null
        return mask.copy(confidence = mask.confidence.copyOf())
    }

    fun setFrame(frameId: String?) {
        if (currentFrameId == frameId) return
        currentFrameId = frameId
        viewModelScope.launch {
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(frameId = SettingValue(frameId))
            )
        }
    }

    /**
     * 获取边框的自定义属性
     */
    suspend fun getFrameCustomProperties(frameId: String): Map<String, String> {
        return contentRepository.frameManager.loadCustomProperties(frameId)
    }

    /**
     * 保存边框的自定义属性
     */
    suspend fun saveFrameCustomProperties(frameId: String, properties: Map<String, String>) {
        contentRepository.frameManager.saveCustomProperties(frameId, properties)
    }

    fun loadFrameEditorDraft(frameId: String?, imageFrame: Boolean = false): FrameEditorDraft {
        return contentRepository.frameManager.createEditorDraft(frameId, imageFrame)
    }

    suspend fun saveFrameEditorDraft(draft: FrameEditorDraft): String? = withContext(Dispatchers.IO) {
        val savedId = contentRepository.frameManager.saveEditorDraft(draft)
        if (savedId != null) {
            contentRepository.refreshCustomContent()
        }
        savedId
    }

    fun importFrameEditorImage(uri: Uri, frameIdHint: String? = null): String? {
        return contentRepository.frameManager.importEditorFrameImage(uri, frameIdHint)
    }

    fun readFrameEditorImageDesignSize(path: String) =
        contentRepository.frameRenderer.readImageFrameDesignSize(path)

    suspend fun renderFrameEditorPreview(draft: FrameEditorDraft, selectionColor: Int? = null): Bitmap =
        withContext(Dispatchers.Default) {
            val source = FramePreviewFactory.createPreviewBitmap(draft.layout.designSize)
            val template = draft.toTemplate(draft.editableFrameId ?: draft.sourceFrameId ?: "preview_frame")
            val metadata = FramePreviewFactory.createPreviewMetadata(source.width, source.height)
            val selectedId = draft.effectiveSelectedElementId
            val selectedElement = template.elements.getOrNull(draft.elements.indexOfFirst { it.draftId == selectedId })
                ?: template.elementsTop?.getOrNull(draft.elementsTop.orEmpty().indexOfFirst { it.draftId == selectedId })
            val selection = if (selectionColor != null && selectedElement != null) {
                FramePreviewSelection(selectedElement, selectionColor)
            } else null
            var rendered: Bitmap? = null
            try {
                contentRepository.frameRenderer.render(source, template, metadata, selection).also { rendered = it }
            } finally {
                if (rendered !== source) source.recycle()
            }
        }

    // ==================== 延时拍摄和网格线相关方法 ====================

    /** 拍照模式：YUV 多帧降噪。 */
    fun setUseJpgMax(enabled: Boolean) {
        viewModelScope.launch {
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(useJpgMax = SettingValue(enabled))
            )
        }
    }

    fun setJpgMultiFrameDenoiseFrameCount(count: Int) {
        val normalizedCount = MultiFrameConfig.normalizeDenoiseFrameCount(count)
        cameraController.setJpgMultiFrameDenoiseFrameCount(normalizedCount)
        viewModelScope.launch {
            userPreferencesRepository.update { jpgMultiFrameDenoiseFrameCount = normalizedCount }
        }
    }

    fun setJpgMultiFrameDenoiseOutputScale(scale: Float) {
        viewModelScope.launch {
            userPreferencesRepository.update { jpgMultiFrameDenoiseOutputScale = MultiFrameConfig.normalizeOutputScale(scale) }
        }
    }

    fun setHdrPlusMergeMode(mode: MgcRawMaxMode) {
        cameraController.setHdrPlusMergeMode(mode)
        viewModelScope.launch {
            userPreferencesRepository.update { hdrPlusMergeMode = mode }
        }
    }

    fun setHdrPlusFrameCount(count: Int) {
        val normalizedCount = MultiFrameConfig.normalizeHdrPlusFrameCount(
            count,
            bracketExposureEnabled = cameraController.state.value.hdrPlusBracketExposureEnabled,
        )
        cameraController.setHdrPlusFrameCount(normalizedCount)
        viewModelScope.launch {
            userPreferencesRepository.update { hdrPlusFrameCount = normalizedCount }
        }
    }

    fun setHdrPlusBracketExposureEnabled(enabled: Boolean) {
        cameraController.setHdrPlusBracketExposureEnabled(enabled)
        viewModelScope.launch {
            userPreferencesRepository.update { hdrPlusBracketExposureEnabled = enabled }
        }
    }

    fun setHdrPlusLongFrameExposureEv(value: Float) {
        val normalized = MultiFrameConfig.normalizeLongFrameExposureEv(value)
        cameraController.setHdrPlusLongFrameExposureEv(normalized)
        viewModelScope.launch { userPreferencesRepository.update { hdrPlusLongFrameExposureEv = normalized } }
    }

    fun setHdrPlusShortFrameExposureEv(value: Float) {
        val normalized = MultiFrameConfig.normalizeShortFrameExposureEv(value)
        cameraController.setHdrPlusShortFrameExposureEv(normalized)
        viewModelScope.launch { userPreferencesRepository.update { hdrPlusShortFrameExposureEv = normalized } }
    }

    fun setRawMaxOutputScale(scale: Float) {
        viewModelScope.launch {
            val prefs = userPreferencesRepository.userPreferences.first()
            val normalizedScale = prefs.rawOutputUpscaleMode.resolveOutputScale(scale)
            userPreferencesRepository.update { rawMaxOutputScale = normalizedScale }
            cameraController.setMultiFrameOutputScale(
                resolveMultiFrameOutputScale(
                    useJpgMax = prefs.useJpgMax && !prefs.useRaw &&
                        !prefs.useMultipleExposure,
                    useRawMax = prefs.useRawMax && prefs.useRaw &&
                        !prefs.useMultipleExposure,
                    rawMaxOutputScale = normalizedScale,
                    jpgMultiFrameDenoiseOutputScale = prefs.jpgMultiFrameDenoiseOutputScale,
                )
            )
        }
    }

    fun setRawOutputUpscaleMode(mode: RawOutputUpscaleMode) {
        viewModelScope.launch {
            userPreferencesRepository.update { rawOutputUpscaleMode = mode }
            val prefs = userPreferencesRepository.userPreferences.first()
            cameraController.setMultiFrameOutputScale(
                resolveMultiFrameOutputScale(
                    useJpgMax = prefs.useJpgMax && !prefs.useRaw &&
                        !prefs.useMultipleExposure,
                    useRawMax = prefs.useRawMax && prefs.useRaw &&
                        !prefs.useMultipleExposure,
                    rawMaxOutputScale = prefs.rawMaxOutputScale,
                    jpgMultiFrameDenoiseOutputScale = prefs.jpgMultiFrameDenoiseOutputScale,
                )
            )
        }
    }

    private fun shouldEnableLivePhoto(prefs: UserPreferences): Boolean {
        // RAWmax supports Live Photo. A saved JPGmax preference is inactive in RAW mode.
        val activeUseJpgMax = prefs.useJpgMax && !prefs.useRaw
        return prefs.useLivePhoto && !activeUseJpgMax && !prefs.useMultipleExposure &&
            prefs.captureMode == CaptureMode.PHOTO
    }

    /**
     * 设置是否启用 Live Photo
     */
    fun setUseLivePhoto(enabled: Boolean) {
        viewModelScope.launch {
            if (enabled) {
                applyCameraFeatureUpdate(
                    CameraFeatureUpdate(
                        useJpgMax = SettingValue(false),
                        useMultipleExposure = SettingValue(false),
                    )
                )
            }
            cameraController.setUseLivePhoto(enabled)
            userPreferencesRepository.update { useLivePhoto = enabled }
        }
    }

    /**
     * 切换延时拍摄档位（0s → 3s → 5s → 10s → 0s）
     */
    fun toggleTimer() {
        val currentTimer = state.value.timerSeconds
        val nextTimer = when (currentTimer) {
            0 -> 3
            3 -> 5
            5 -> 10
            10 -> 0
            else -> 0
        }
        cameraController.setTimerSeconds(nextTimer)
    }

    /**
     * 切换网格线显示
     */
    fun toggleGrid() {
        userPreferencesRepository.updateAsync { showGrid = !state.value.showGrid }
    }

    fun setGridStyle(style: GridStyle) {
        cameraController.setGridStyle(style)
        viewModelScope.launch {
            userPreferencesRepository.update { gridStyle = style }
        }
    }

    /**
     * 切换 RAW 格式拍摄
     */
    fun toggleRaw() {
        val nextValue = !userPreferencesRepository.current.useRaw
        setUseRaw(nextValue)
    }

    fun setUseRaw(useRaw: Boolean) {
        viewModelScope.launch {
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(useRaw = SettingValue(useRaw))
            )
        }
    }

    // ==================== 新增设置项方法 ====================

    fun setEyeFocusEnabled(enabled: Boolean) {
        if (enabled && isEyeFocusRuntimeAvailable) {
            previewEyeFocusProcessor.prewarm()
        } else if (!enabled) {
            previewEyeFocusProcessor.resetTracking()
            resetEyeFocusTracking(cancelCameraFocus = true, reason = "disabled")
        }
        userPreferencesRepository.updateAsync { eyeFocusEnabled = enabled }
    }

    /**
     * 复制边框并把副本插入到原边框后面。
     */
    fun copyFrame(frame: FrameInfo, copyName: String) {
        viewModelScope.launch {
            val newFrameId = withContext(Dispatchers.IO) {
                contentRepository.getCustomImportManager().copyFrame(frame, copyName)
            }
            if (newFrameId != null) {
                withContext(Dispatchers.IO) {
                    val currentOrder = userPreferencesRepository.userPreferences.first().frameOrder.toMutableList()
                    if (currentOrder.isEmpty()) {
                        val allIds = availableFrameList.map { it.id }.toMutableList()
                        val index = allIds.indexOf(frame.id)
                        if (index != -1) {
                            allIds.add(index + 1, newFrameId)
                        } else {
                            allIds.add(newFrameId)
                        }
                        userPreferencesRepository.update { frameOrder = allIds }
                    } else {
                        val index = currentOrder.indexOf(frame.id)
                        if (index != -1) {
                            currentOrder.add(index + 1, newFrameId)
                        } else {
                            currentOrder.add(newFrameId)
                        }
                        userPreferencesRepository.update { frameOrder = currentOrder }
                    }
                    contentRepository.refreshCustomContent()
                }
            }
        }
    }

    fun importCaptureSound(isBurst: Boolean, uri: Uri) {
        updateCaptureSound(R.string.settings_shutter_sound_import_failed) {
            captureSoundRepository.import(isBurst, uri)
        }
    }

    fun resetCaptureSound(isBurst: Boolean) {
        updateCaptureSound(R.string.settings_shutter_sound_save_failed) {
            captureSoundRepository.reset(isBurst)
        }
    }

    private fun updateCaptureSound(errorMessage: Int, operation: suspend () -> Unit) {
        if (_captureSoundImporting.value) return
        _captureSoundImporting.value = true
        viewModelScope.launch {
            try {
                operation()
            } catch (e: CancellationException) {
                throw e
            } catch (e: Exception) {
                PLog.e(TAG, "Cannot update capture sound", e)
                _captureSoundErrors.emit(errorMessage)
            } finally {
                _captureSoundImporting.value = false
            }
        }
    }

    /**
     * 处理音量键按下
     * @return 是否消费了该事件
     */
    fun handleVolumeKey(isUp: Boolean): Boolean {
        val action = userPreferencesRepository.current.volumeKeyAction
        if (action == VolumeKeyAction.NONE) return false

        val currentTime = System.currentTimeMillis()
        if (currentTime - lastVolumeKeyEventTime < VOLUME_KEY_DEBOUNCE_TIME) {
            return true // 还在冷却时间内，消费事件但不做处理
        }
        lastVolumeKeyEventTime = currentTime

        return when (action) {
            VolumeKeyAction.CAPTURE -> {
                capture()
                true
            }

            VolumeKeyAction.EXPOSURE_COMPENSATION -> {
                val currentEV = state.value.exposureCompensation
                val range = state.value.getExposureCompensationRange()
                if (range.lower == 0 && range.upper == 0) return true // 不支持曝光补偿

                if (isUp) {
                    if (currentEV < range.upper) {
                        setExposureCompensation(currentEV + 1)
                    }
                } else {
                    if (currentEV > range.lower) {
                        setExposureCompensation(currentEV - 1)
                    }
                }
                true
            }

            VolumeKeyAction.ZOOM -> {
                handleVolumeZoom(isUp)
                true
            }
        }
    }

    /**
     * 处理音量键变焦切换
     * 逻辑：切换到下一个/上一个 ZoomStop
     */
    private fun handleVolumeZoom(isUp: Boolean) {
        val currentState = state.value
        val availableCameras = currentState.availableCameras
        val currentCamera = currentState.getCurrentCameraInfo() ?: return

        // 1. 获取主摄
        val mainCamera = availableCameras.find {
            it.lensType == if (currentCamera.lensType == LensType.FRONT) LensType.FRONT else LensType.BACK_MAIN
        } ?: return

        // 2. 计算变焦档位 (逻辑同步自 ZoomControlBar.kt)
        val lensZoomStops = calculateLensZoomStops(availableCameras, currentCamera)
        val zoomStops = allZoomStops(
            lensZoomStops,
            mainCamera,
            currentCamera,
            userPreferences.value.customFocalLengths,
            userPreferences.value.hiddenFocalLengths
        )

        if (zoomStops.isEmpty()) return

        // 3. 找到当前或者最近的档位索引
        val currentZoomRatio = zoomRatioByMain
        var currentIndex = zoomStops.indexOfFirst { abs(it - currentZoomRatio) < 0.05f }

        if (currentIndex == -1) {
            // 如果不在已知档位，找到最近的一个
            currentIndex = zoomStops.indices.minByOrNull { abs(zoomStops[it] - currentZoomRatio) } ?: 0
        }

        // 4. 计算下一个索引
        val nextIndex = if (isUp) {
            (currentIndex + 1).coerceAtMost(zoomStops.lastIndex)
        } else {
            (currentIndex - 1).coerceAtLeast(0)
        }

        if (nextIndex != currentIndex) {
            val targetZoom = zoomStops[nextIndex]

            if (isCurrentLensCustomZoomRatioStop(targetZoom)) {
                setZoomRatio(targetZoom)
                return
            }

            // 5. 检查是否需要切换镜头 (逻辑同步自 ZoomControlBar.kt)
            val optimalLens = findOptimalLens(targetZoom, availableCameras, currentCamera.cameraId)
            if (optimalLens != null && optimalLens.cameraId != currentCamera.cameraId) {
                switchToLensAndSetZoomRatio(optimalLens.cameraId, targetZoom)
            } else {
                setZoomRatio(targetZoom)
            }
        }
    }

    /**
     * 计算变焦档位
     */
    fun calculateLensZoomStops(
        cameras: List<CameraInfo>,
        currentCamera: CameraInfo?
    ): List<Float> {
        val stops = mutableListOf<Float>()

        val filter: (CameraInfo) -> Boolean = if (currentCamera?.lensType == LensType.FRONT) {
            { it.lensType == LensType.FRONT }
        } else {
            { it.lensType != LensType.FRONT && it.lensType != LensType.BACK_MACRO }
        }

        // 添加各个镜头的固有变焦比例
        cameras.filter(filter).forEach { camera ->
            val displayZoomRatio = camera.displayIntrinsicZoomRatio
            if (displayZoomRatio > 0) {
                // 避免添加极其接近的变焦倍率（例如 1.0 和 1.0006）
                if (stops.none { abs(it - displayZoomRatio) < 0.01f }) {
                    stops.add(displayZoomRatio)
                }
            }
        }
        return stops.sorted()
    }

    /**
     * 计算变焦档位
     */
    fun allZoomStops(
        lensZoomStops: List<Float>,
        mainCamera: CameraInfo?,
        currentCamera: CameraInfo?,
        customFocalLengths: List<Float> = emptyList(),
        hiddenFocalLengths: List<Float> = emptyList()
    ): List<Float> {
        val stops = mutableListOf<Float>()

        if (currentCamera?.lensType == LensType.FRONT) {
            stops.addAll(lensZoomStops)
            if (stops.none { abs(it - 2f) <= 0.1f }) {
                stops.add(2f)
            }
            customFocalLengths.forEach { value ->
                CustomFocalLengthValue.toZoomRatio(value, mainCamera, currentCamera)?.let { zoom ->
                    if (stops.none { abs(it - zoom) <= 0.01f }) {
                        stops.add(zoom)
                    }
                }
            }
            return stops.sorted()
        }

        mainCamera ?: return lensZoomStops.sorted()

        // 1. 添加并过滤原生镜头焦段
        if (mainCamera.focalLength35mmEquivalent > 0) {
            val filteredLensStops = lensZoomStops.filter { zoom ->
                val fl = zoom * mainCamera.focalLength35mmEquivalent
                hiddenFocalLengths.none { abs(it - fl) < 0.5f }
            }
            stops.addAll(filteredLensStops)
        } else {
            stops.addAll(lensZoomStops)
        }

        addDefaultMinimumZoomStop(stops, lensZoomStops, mainCamera, hiddenFocalLengths)

        // 2. 添加自定义焦段/倍率 (不参与隐藏过滤)
        customFocalLengths.forEach { value ->
            CustomFocalLengthValue.toZoomRatio(value, mainCamera, currentCamera)?.let { zoom ->
                if (stops.none { abs(it - zoom) <= 0.01f }) {
                    stops.add(zoom)
                }
            }
        }

        return stops.sorted()
    }

    private fun addDefaultMinimumZoomStop(
        stops: MutableList<Float>,
        lensZoomStops: List<Float>,
        mainCamera: CameraInfo,
        hiddenFocalLengths: List<Float> = emptyList()
    ) {
        val mainZoom = mainCamera.displayIntrinsicZoomRatio
        val hasSmallerLens = lensZoomStops.any { it < mainZoom - 0.01f }
        val minimumZoom = mainCamera.minZoom * mainZoom

        if (hasSmallerLens || minimumZoom >= mainZoom - 0.01f) return

        val isHidden = if (mainCamera.focalLength35mmEquivalent > 0) {
            val minimumFocalLength = minimumZoom * mainCamera.focalLength35mmEquivalent
            hiddenFocalLengths.any { abs(it - minimumFocalLength) < 0.5f }
        } else {
            false
        }

        if (!isHidden && stops.none { abs(it - minimumZoom) <= 0.01f }) {
            stops.add(minimumZoom)
        }
    }

    /**
     * 根据变焦倍率找到最佳镜头
     */
    fun findOptimalLens(
        targetZoom: Float,
        cameras: List<CameraInfo>,
        currentCameraId: String
    ): CameraInfo? {
        if (isVideoLensLocked()) {
            return cameras.firstOrNull { it.cameraId == currentCameraId }
        }
        val currentLensType = cameras.find { it.cameraId == currentCameraId }?.lensType
        val zoomableCameras =
            cameras.filter { if (currentLensType == LensType.FRONT) it.lensType == LensType.FRONT else (it.lensType != LensType.FRONT && it.lensType != LensType.BACK_MACRO) }
        if (zoomableCameras.isEmpty()) return null
        val candidates = zoomableCameras
            .filter { it.displayIntrinsicZoomRatio <= targetZoom + 0.01f }
        val bestZoom = candidates.maxOfOrNull { it.displayIntrinsicZoomRatio }
            ?: zoomableCameras.minOfOrNull { it.displayIntrinsicZoomRatio }
            ?: return null
        val tiedCandidates = candidates.filter { abs(it.displayIntrinsicZoomRatio - bestZoom) <= 0.01f }
            .ifEmpty { zoomableCameras.filter { abs(it.displayIntrinsicZoomRatio - bestZoom) <= 0.01f } }
        return tiedCandidates.firstOrNull { it.cameraId == currentCameraId }
            ?: tiedCandidates.firstOrNull()
    }

    fun isCurrentLensCustomZoomRatioStop(targetZoom: Float): Boolean {
        val currentState = state.value
        val currentCamera = currentState.getCurrentCameraInfo() ?: return false
        val mainCamera = currentState.availableCameras.find {
            it.lensType == if (currentCamera.lensType == LensType.FRONT) LensType.FRONT else LensType.BACK_MAIN
        } ?: return false
        return userPreferences.value.customFocalLengths.any { value ->
            CustomFocalLengthValue.isZoomRatio(value) &&
                    abs((CustomFocalLengthValue.toZoomRatio(value, mainCamera, currentCamera) ?: return@any false) - targetZoom) <= 0.01f
        }
    }

    fun isVideoLensLocked(): Boolean {
        val currentState = state.value
        return currentState.videoConfig.shouldLockLens(
            captureMode = currentState.captureMode,
            isRecording = currentState.videoRecordingState.isRecording
        )
    }

    fun addCustomFocalLength(focalLength: Float) {
        viewModelScope.launch {
            val prefs = userPreferencesRepository.userPreferences.first()
            val list = prefs.customFocalLengths.toMutableList()
            if (list.none { CustomFocalLengthValue.matches(it, focalLength) }) {
                list.add(focalLength)
                userPreferencesRepository.update { customFocalLengths = list.sortedBy { CustomFocalLengthValue.sortKey(it, state.value.getCurrentCameraInfo()) } }
            }
        }
    }

    fun removeCustomFocalLength(focalLength: Float) {
        viewModelScope.launch {
            val prefs = userPreferencesRepository.userPreferences.first()
            val list = prefs.customFocalLengths.toMutableList()
            list.removeAll { CustomFocalLengthValue.matches(it, focalLength) }
            userPreferencesRepository.update { customFocalLengths = list }

            // 如果删除了当前的默认焦段，重置为0
            if (CustomFocalLengthValue.matches(userPreferencesRepository.latest().defaultFocalLength, focalLength)) {
                userPreferencesRepository.update { defaultFocalLength = 0f }
            }
        }
    }

    fun toggleFocalLengthVisibility(focalLength: Float) {
        viewModelScope.launch {
            val prefs = userPreferencesRepository.userPreferences.first()
            val list = prefs.hiddenFocalLengths.toMutableList()
            val index = list.indexOfFirst { abs(it - focalLength) < 0.5f }
            if (index != -1) {
                list.removeAt(index)
            } else {
                list.add(focalLength)
                // 如果隐藏了当前的默认焦段，重置默认焦段为0
                if (abs(userPreferencesRepository.latest().defaultFocalLength - focalLength) < 0.5f) {
                    userPreferencesRepository.update { defaultFocalLength = 0f }
                }
            }
            userPreferencesRepository.update { hiddenFocalLengths = list }
        }
    }

    fun setRawProfile(rawProfile: RawProfile) {
        viewModelScope.launch {
            userPreferencesRepository.update {
                colorSpace = rawProfile.colorSpace
                logCurve = rawProfile.logCurve
                rawLuts = rawLuts + (rawProfile.logCurve.name to rawProfile.rawLut)
            }
        }
    }

    /**
     * 为指定颜色推荐最合适的 LUT 列表
     */
    suspend fun recommendLutsForColor(color: Int): List<LutInfo> = withContext(Dispatchers.IO) {
        contentRepository.lutManager.recommendLutsForColor(color)
    }

    fun setVendorCaptureSettings(lensId: String, settings: VendorCaptureSettings) {
        viewModelScope.launch {
            if (lensId.isBlank()) return@launch
            userPreferencesRepository.update {
                vendorCaptureSettingsByLens = vendorCaptureSettingsByLens.withSettings(lensId, settings)
            }
        }
    }

    fun upsertCustomVendorKey(key: CustomVendorKey) {
        viewModelScope.launch {
            userPreferencesRepository.update { customVendorKeySettings = customVendorKeySettings.upsert(key) }
        }
    }

    fun removeCustomVendorKey(id: String) {
        viewModelScope.launch {
            userPreferencesRepository.update { customVendorKeySettings = customVendorKeySettings.remove(id) }
        }
    }

    /**
     * 设置摄像头方向偏移
     * @param cameraId 摄像头 ID
     * @param offset 旋转偏移角度 (0, 90, 180, 270)
     */
    fun setCameraOrientationOffset(cameraId: String, offset: Int) {
        require(offset in listOf(0, 90, 180, 270)) { "Offset must be 0, 90, 180, or 270" }
        viewModelScope.launch {
            userPreferencesRepository.update {
                cameraOrientationOffsets = cameraOrientationOffsets + (cameraId to offset)
            }
        }
    }

    fun saveZoomDisplayMode(mode: ZoomDisplayMode) {
        viewModelScope.launch {
            userPreferencesRepository.update { zoomDisplayMode = mode.name }
        }
    }

    fun setCustomLensIds(value: String) {
        viewModelScope.launch {
            val lensIds = value.split(",")
                .map { it.trim() }
                .filter { it.isNotEmpty() }
                .distinct()
            userPreferencesRepository.update { customLensIds = lensIds }
            cameraController.refreshCameraList()
        }
    }

    fun setLensIdBlacklist(value: String) {
        viewModelScope.launch {
            val lensIds = value.split(",")
                .map { it.trim() }
                .filter { it.isNotEmpty() }
                .distinct()
            userPreferencesRepository.update { lensIdBlacklist = lensIds }
            cameraController.refreshCameraList()
        }
    }

    fun addIszLensConfig(
        baseCameraId: String,
        iszZoomRatio: Float,
        isMacro: Boolean,
        portraitRawBlackBorderCrop: RawBlackBorderCrop,
        rawDngMetadataCorrections: IszRawDngMetadataCorrections,
        settings: VendorCaptureSettings
    ) {
        viewModelScope.launch {
            val normalizedBaseCameraId = baseCameraId.trim()
            if (normalizedBaseCameraId.isEmpty() || iszZoomRatio < 1f) return@launch

            val baseCamera = state.value.availableCameras.firstOrNull {
                it.cameraId == normalizedBaseCameraId && !it.isVirtualIszLens
            } ?: return@launch
            val config = IszLensConfig(
                baseCameraId = normalizedBaseCameraId,
                iszZoomRatio = iszZoomRatio,
                isMacro = isMacro,
                rawBlackBorderCrop = IszLensConfig.portraitCropToSensor(
                    portraitCrop = portraitRawBlackBorderCrop,
                    sensorRotation = baseCamera.sensorOrientation,
                ),
                vendorCaptureProfileId = settings.toVirtualLensProfileId()
            )
            val prefs = userPreferencesRepository.userPreferences.first()
            val updatedConfigs = (prefs.iszLensConfigs
                .filterNot { it.virtualCameraId == config.virtualCameraId } + config)
                .distinctBy { it.virtualCameraId }
            userPreferencesRepository.update {
                iszLensConfigs = updatedConfigs
                vendorCaptureSettingsByLens = vendorCaptureSettingsByLens.withSettings(config.virtualCameraId, settings)
                putRawDngMetadataCorrections(config.virtualCameraId, rawDngMetadataCorrections)
            }
            cameraController.refreshCameraList()
        }
    }

    fun removeIszLensConfig(config: IszLensConfig) {
        viewModelScope.launch {
            val prefs = userPreferencesRepository.userPreferences.first()
            val updatedConfigs = prefs.iszLensConfigs
                .filterNot { it.virtualCameraId == config.virtualCameraId }
            userPreferencesRepository.update {
                iszLensConfigs = updatedConfigs
                vendorCaptureSettingsByLens = vendorCaptureSettingsByLens.withSettings(config.virtualCameraId, VendorCaptureSettings.Empty)
                removeRawDngMetadataCorrections(config.virtualCameraId)
            }
            cameraController.refreshCameraList()
        }
    }

    suspend fun discoverMainCameraIdOptions(): List<String> = withContext(Dispatchers.IO) {
        CameraDiscovery(getApplication()).discoverMainCameraIdOptions()
    }

    suspend fun discoverMacroCameraIdOptions(): List<String> = withContext(Dispatchers.IO) {
        CameraDiscovery(getApplication()).discoverMacroCameraIdOptions()
    }

    fun setPreferredMainCameraId(cameraId: String?) {
        viewModelScope.launch {
            userPreferencesRepository.update { preferredMainCameraId = cameraId }
            cameraController.refreshCameraList()
        }
    }

    fun setPreferredMacroCameraId(cameraId: String?) {
        viewModelScope.launch {
            userPreferencesRepository.update { preferredMacroCameraId = cameraId }
            cameraController.refreshCameraList()
        }
    }

    fun setLogicalCameraBindingWhitelist(value: String) {
        viewModelScope.launch {
            userPreferencesRepository.update { logicalCameraBindingWhitelist = value.split(",") }
            cameraController.refreshCameraList()
        }
    }

    /**
     * 首次打开 CameraDevice 前选择默认焦段，避免先打开主摄再切换。
     */
    private fun applyStartupDefaultFocalLength(focalLength: Float) {
        val currentState = state.value
        val availableCameras = currentState.availableCameras
        val currentCamera = currentState.getCurrentCameraInfo() ?: return

        // 找到主摄来计算变焦倍率
        val mainCamera = availableCameras.find {
            it.lensType == if (currentCamera.lensType == LensType.FRONT) LensType.FRONT else LensType.BACK_MAIN
        } ?: return

        val targetZoom = CustomFocalLengthValue.toZoomRatio(focalLength, mainCamera, currentCamera) ?: return

        if (CustomFocalLengthValue.isZoomRatio(focalLength)) {
            setZoomRatio(targetZoom)
            PLog.d(
                TAG,
                "Applied default focal length: ${CustomFocalLengthValue.displayText(focalLength)} " +
                        "on current lens ${currentCamera.cameraId} (zoom: $targetZoom)"
            )
            return
        }

        // 找到该变焦倍率下的最佳镜头
        val optimalLens = findOptimalLens(targetZoom, availableCameras, currentCamera.cameraId)
        if (optimalLens != null && optimalLens.cameraId != currentCamera.cameraId) {
            cameraController.switchToCameraId(optimalLens.cameraId)
            setZoomRatioForCamera(targetZoom, optimalLens.cameraId)
        } else {
            setZoomRatio(targetZoom)
        }
        PLog.d(TAG, "Applied default focal length: ${CustomFocalLengthValue.displayText(focalLength)} (zoom: $targetZoom)")
    }

    /**
     * 获取摄像头方向偏移
     * @param cameraId 摄像头 ID
     * @return 旋转偏移角度的 Flow
     */
    fun getCameraOrientationOffset(cameraId: String): Flow<Int> {
        return userPreferencesRepository.userPreferences.map { prefs ->
            prefs.cameraOrientationOffsets[cameraId] ?: 0
        }
    }

    /**
     * 保存图片
     */
    private suspend fun saveImage(
        image: SafeImage,
        captureInfo: CaptureInfo,
        characteristics: CameraCharacteristics?,
        captureResult: CaptureResult?,
        capturePortraitMask: PortraitMaskSnapshot?,
        settings: CaptureSettingsSnapshot,
    ) {
        try {
            PLog.d(TAG, "saveImage started - dimensions: ${image.width}x${image.height}, format: ${image.format}")
            val context = getApplication<Application>()

            // 保存当前配置信息
            val lutIdToSave = settings.lutId
            val aspectRatio = settings.state.aspectRatio
            val frameIdToSave = settings.frameId
            val shouldAutoSave = settings.preferences.autoSaveAfterCapture
            val userPrefs: UserPreferences? = settings.preferences
            val isRawCapture = isRawCaptureFormat(image.format)
            val sharpeningValue = resolveCaptureSharpening(
                isRawCapture = isRawCapture,
                userPrefs = userPrefs,
            )
            val denoiseStrengths = resolveCaptureDenoiseStrengths(
                isRawCapture = isRawCapture,
                isMergedCapture = false,
                userPrefs = userPrefs,
            )
            val noiseReductionValue = denoiseStrengths.editableLuma
            val chromaNoiseReductionValue = denoiseStrengths.editableChroma
            val photoQualityValue = settings.preferences.photoQuality
            val droModeString = settings.preferences.droMode
            val droModeForProcessing =
                RawProcessingPreferences.DROMode.fromPersistedName(droModeString)
            val currentCameraId = settings.cameraId

            // 计算旋转角度
            val sensorOrientation = settings.sensorOrientation
            val lensFacing = settings.lensFacing
            val deviceRotation = settings.deviceRotation

            // 基础旋转角度计算
            val baseRotation = if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
                (sensorOrientation - deviceRotation + 360) % 360
            } else {
                (sensorOrientation + deviceRotation) % 360
            }

            // 获取用户配置的摄像头方向偏移
            val orientationOffset = userPrefs?.cameraOrientationOffsets?.get(currentCameraId) ?: 0

            // 应用方向偏移
            val rotation = (baseRotation + orientationOffset) % 360

            val shouldMirror = lensFacing == CameraCharacteristics.LENS_FACING_FRONT &&
                    settings.preferences.mirrorFrontCamera

            val aperture = if (settings.state.isVirtualApertureEnabled) settings.state.virtualAperture else null
            val baselineTarget = if (isRawCapture) {
                BaselineColorCorrectionTarget.RAW
            } else {
                null
            }
            val rawToneMappingParameters = resolveCaptureRawToneMappingParameters(userPrefs)
            val defaultHdrEffectEnabled = defaultHdrEffectEnabled(
                hasEmbeddedGainmap = false,
                userPrefs = userPrefs,
            )
            val baselineMetadata = resolveBaselineMetadata(baselineTarget, userPrefs)
            val effectiveRawAutoExposure = resolveEffectiveRawAutoExposure()
            val spectralFilmSettings = resolveRawSpectralFilmSettings(userPrefs)
            val captureExposureBias = settings.state.exposureBias
            val captureExposureCompensationEv = captureInfo.exposureCompensation ?: 0f

            // 创建统一的 PhotoMetadata，包含编辑配置和拍摄信息
            val metadata = MediaMetadata(
                lutId = lutIdToSave,
                frameId = frameIdToSave,
                colorRecipeParams = settings.recipe,
                baselineTarget = baselineMetadata?.first,
                baselineLutId = baselineMetadata?.second,
                baselineColorRecipeParams = baselineMetadata?.third,
                sharpening = sharpeningValue,
                noiseReduction = noiseReductionValue,
                chromaNoiseReduction = chromaNoiseReductionValue,
                rawDenoiseValue = denoiseStrengths.bakedLuma,
                rawChromaDenoiseValue = denoiseStrengths.bakedChroma,
                captureNoiseReductionLevel = settings.state.nrLevel,
                rawDcpId = userPrefs?.rawDcpIdForLens(currentCameraId),
                rawHncsProfileId = userPrefs?.rawHncsProfileId,
                rawHncsRenderIntent = userPrefs?.rawHncsRenderIntent
                    ?: HncsRenderIntent.Standard,
                rawHncsFilmCurveMode = userPrefs?.rawHncsFilmCurveMode
                    ?: HncsFilmCurveMode.Standard,
                rawExposureCompensation = userPrefs?.rawExposureCompensation ?: 0f,
                rawAutoExposure = effectiveRawAutoExposure,
                customProperties = RawCaptureExposureCompensationMetadata.write(
                    rawProcessingMetadataProperties(userPrefs),
                    captureExposureCompensationEv,
                ),
                rawHighlightsAdjustment = userPrefs?.rawHighlightsAdjustment ?: 0f,
                rawShadowsAdjustment = userPrefs?.rawShadowsAdjustment ?: 0f,
                rawBlackPointCorrection = userPrefs?.rawBlackPointCorrection ?: 0f,
                rawWhitePointCorrection = userPrefs?.rawWhitePointCorrection ?: 0f,
                rawLensShadingCorrectionEnabled = userPreferencesRepository.latest().rawLensShadingCorrectionEnabled,
                rawBlackLevelMode = userPrefs?.rawBlackLevelModes?.get(currentCameraId) ?: "Default",
                rawCustomBlackLevel = userPrefs?.rawCustomBlackLevels?.get(currentCameraId) ?: 0f,
                rawWhiteLevelMode = userPrefs?.rawWhiteLevelModes?.get(currentCameraId)
                    ?: RawWhiteLevelCorrection.MODE_DEFAULT,
                rawCustomWhiteLevel = userPrefs?.rawCustomWhiteLevels?.get(currentCameraId) ?: 0f,
                rawCfaCorrectionMode = userPrefs?.rawCfaCorrectionModes?.get(currentCameraId) ?: RawCfaCorrection.MODE_DEFAULT,
                cameraId = currentCameraId,
                rawBlackBorderCrop = settings.blackBorderCrop,
                rawRenderingEngine = resolveCaptureRawRenderingEngine(userPrefs),
                rawToneMappingParameters = rawToneMappingParameters,
                rawOutputUpscaleMode = userPrefs?.rawOutputUpscaleMode ?: RawOutputUpscaleMode.DEFAULT,
                spectralFilmStock = spectralFilmSettings.stock,
                spectralFilmPrint = spectralFilmSettings.print,
                spectralFilmCDensityGain = spectralFilmSettings.tuning.cDensityGain,
                spectralFilmMDensityGain = spectralFilmSettings.tuning.mDensityGain,
                spectralFilmYDensityGain = spectralFilmSettings.tuning.yDensityGain,
                fotufilmDocument = resolveRawFotufilmDocument(userPrefs)?.toJson(),
                width = image.width,
                height = image.height,
                ratio = aspectRatio,
                rotation = rotation,
                deviceModel = DeviceUtil.model,
                brand = captureInfo.make,
                dateTaken = captureInfo.captureTime,
                latitude = captureInfo.latitude,
                longitude = captureInfo.longitude,
                altitude = captureInfo.altitude,
                iso = captureInfo.iso,
                shutterSpeed = captureInfo.formatExposureTime(),
                focalLength = captureInfo.formatFocalLength(),
                focalLength35mm = captureInfo.formatFocalLength35mm(),
                aperture = captureInfo.formatAperture(),
                exposureBias = captureExposureBias,
                droMode = droModeString,
                isMirrored = shouldMirror,
                colorSpace = captureInfo.colorSpace,
                computationalAperture = aperture,
                focusPointX = settings.state.focusPoint?.first,
                focusPointY = settings.state.focusPoint?.second,
                manualHdrEffectEnabled = defaultHdrEffectEnabled,
            )

            val livePhotoVideoDeferred = settings.livePhotoVideo

            val resolvedCharacteristics = characteristics ?: run {
                PLog.e(TAG, "Failed to save image: camera characteristics unavailable")
                return
            }
            val photoId =
                GalleryManager.preparePhoto(
                    context,
                    metadata,
                    captureResult,
                    settings.displayThumbnail,
                    settings.state.useLivePhoto,
                    1.0f,
                    includeCropRegionInOutputSize = shouldIncludeCropRegionInOutputSize(image.format),
                    photoId = settings.photoId,
                )
            if (photoId == null) {
                PLog.e(TAG, "Failed to save image")
                return
            }

            withContext(Dispatchers.IO) {
                GalleryManager.saveVideo(context, photoId, livePhotoVideoDeferred)

                GalleryManager.savePhoto(
                    context,
                    photoId,
                    image,
                    settings.originalThumbnail,
                    rotation,
                    aspectRatio,
                    resolvedCharacteristics,
                    captureResult,
                    shouldAutoSave,
                    contentRepository.photoProcessor,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQualityValue,
                    exposureBias = captureExposureBias,
                    captureExposureCompensationEv = captureExposureCompensationEv,
                    exportDngWithRawExport = settings.preferences.exportDngWithRawExport,
                    capturePortraitMask = capturePortraitMask,
                )
            }
            PLog.d(TAG, "Image saved: $photoId, LUT: $lutIdToSave, Frame: $frameIdToSave")
            markCapturedThumbnailSaved(settings, photoId)
            _imageSavedEvent.emit(photoId)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save image", e)
        } finally {
            image.close()
        }
    }

    private suspend fun saveVideoSnapshot(bitmap: Bitmap) {
        savePreviewBitmapCapture(
            bitmap = bitmap,
            metadataCaptureMode = "video_snapshot",
            ratio = mapVideoAspectRatioToPhotoAspectRatio(state.value.videoConfig.aspectRatio)
        )
    }

    private suspend fun savePreviewBitmapCapture(
        bitmap: Bitmap,
        metadataCaptureMode: String,
        ratio: AspectRatio?
    ) {
        try {
            val context = getApplication<Application>()
            val currentState = state.value
            val shouldAutoSave = userPreferencesRepository.latest().autoSaveAfterCapture
            val sharpeningValue = 0f
            val noiseReductionValue = 0f
            val chromaNoiseReductionValue = 0f
            val photoQualityValue = userPreferencesRepository.latest().photoQuality
            val userPrefs = userPreferencesRepository.userPreferences.firstOrNull()
            val shouldMirror = cameraController.getLensFacing() == CameraCharacteristics.LENS_FACING_FRONT &&
                    userPreferencesRepository.latest().mirrorFrontCamera
            val currentCameraId = cameraController.getCurrentCameraId()
            val effectiveRawAutoExposure = resolveEffectiveRawAutoExposure()
            val spectralFilmSettings = resolveRawSpectralFilmSettings(userPrefs)
            val captureInfo = cameraController.rebuildCaptureInfo(
                result = null,
                imageWidth = bitmap.width,
                imageHeight = bitmap.height,
                latitude = currentState.latitude,
                longitude = currentState.longitude
            )
            val computationalAperture = if (currentState.isVirtualApertureEnabled) {
                currentState.virtualAperture
            } else {
                null
            }

            val metadata = MediaMetadata(
                lutId = currentLutId.value,
                frameId = currentFrameId,
                colorRecipeParams = getMergedRecipeParams(),
                sharpening = sharpeningValue,
                noiseReduction = noiseReductionValue,
                chromaNoiseReduction = chromaNoiseReductionValue,
                captureNoiseReductionLevel = currentState.nrLevel,
                rawDcpId = userPrefs?.rawDcpIdForLens(currentCameraId),
                rawHncsProfileId = userPrefs?.rawHncsProfileId,
                rawHncsRenderIntent = userPrefs?.rawHncsRenderIntent
                    ?: HncsRenderIntent.Standard,
                rawHncsFilmCurveMode = userPrefs?.rawHncsFilmCurveMode
                    ?: HncsFilmCurveMode.Standard,
                rawExposureCompensation = userPrefs?.rawExposureCompensation ?: 0f,
                rawAutoExposure = effectiveRawAutoExposure,
                customProperties = rawProcessingMetadataProperties(userPrefs),
                rawHighlightsAdjustment = userPrefs?.rawHighlightsAdjustment ?: 0f,
                rawShadowsAdjustment = userPrefs?.rawShadowsAdjustment ?: 0f,
                rawBlackPointCorrection = userPrefs?.rawBlackPointCorrection ?: 0f,
                rawWhitePointCorrection = userPrefs?.rawWhitePointCorrection ?: 0f,
                rawLensShadingCorrectionEnabled = userPreferencesRepository.latest().rawLensShadingCorrectionEnabled,
                rawBlackLevelMode = userPrefs?.rawBlackLevelModes?.get(currentCameraId) ?: "Default",
                rawCustomBlackLevel = userPrefs?.rawCustomBlackLevels?.get(currentCameraId) ?: 0f,
                rawWhiteLevelMode = userPrefs?.rawWhiteLevelModes?.get(currentCameraId)
                    ?: RawWhiteLevelCorrection.MODE_DEFAULT,
                rawCustomWhiteLevel = userPrefs?.rawCustomWhiteLevels?.get(currentCameraId) ?: 0f,
                rawCfaCorrectionMode = userPrefs?.rawCfaCorrectionModes?.get(currentCameraId) ?: RawCfaCorrection.MODE_DEFAULT,
                cameraId = currentCameraId,
                rawBlackBorderCrop = currentRawBlackBorderCrop(),
                rawRenderingEngine = resolveCaptureRawRenderingEngine(userPrefs),
                rawToneMappingParameters = resolveCaptureRawToneMappingParameters(userPrefs),
                spectralFilmStock = spectralFilmSettings.stock,
                spectralFilmPrint = spectralFilmSettings.print,
                spectralFilmCDensityGain = spectralFilmSettings.tuning.cDensityGain,
                spectralFilmMDensityGain = spectralFilmSettings.tuning.mDensityGain,
                spectralFilmYDensityGain = spectralFilmSettings.tuning.yDensityGain,
                fotufilmDocument = resolveRawFotufilmDocument(userPrefs)?.toJson(),
                width = bitmap.width,
                height = bitmap.height,
                ratio = ratio,
                rotation = 0,
                deviceModel = DeviceUtil.model,
                brand = captureInfo.make,
                dateTaken = captureInfo.captureTime,
                latitude = captureInfo.latitude,
                longitude = captureInfo.longitude,
                altitude = captureInfo.altitude,
                iso = captureInfo.iso,
                shutterSpeed = captureInfo.formatExposureTime(),
                focalLength = captureInfo.formatFocalLength(),
                focalLength35mm = captureInfo.formatFocalLength35mm(),
                aperture = captureInfo.formatAperture(),
                exposureBias = currentState.exposureBias,
                droMode = userPreferencesRepository.current.droMode,
                isMirrored = shouldMirror,
                colorSpace = captureInfo.colorSpace,
                computationalAperture = computationalAperture,
                focusPointX = currentState.focusPoint?.first,
                focusPointY = currentState.focusPoint?.second,
                captureMode = metadataCaptureMode
            )

            val photoId = GalleryManager.preparePhoto(
                context,
                metadata,
                null,
                bitmap,
                false,
                1.0f,
                includeCropRegionInOutputSize = false
            )
            if (photoId == null) {
                PLog.e(TAG, "Failed to prepare preview bitmap capture: $metadataCaptureMode")
                return
            }

            withContext(Dispatchers.IO) {
                GalleryManager.saveBitmapPhoto(
                    context,
                    photoId,
                    bitmap,
                    shouldAutoSave,
                    contentRepository.photoProcessor,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQualityValue
                )
            }
            PLog.d(TAG, "Preview bitmap capture saved: $photoId, mode=$metadataCaptureMode")
            _imageSavedEvent.emit(photoId)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save preview bitmap capture: $metadataCaptureMode", e)
        }
    }

    private fun mapVideoAspectRatioToPhotoAspectRatio(aspectRatio: VideoAspectRatio): AspectRatio? {
        return when (aspectRatio) {
            VideoAspectRatio.RATIO_16_9 -> AspectRatio.RATIO_16_9
            else -> null
        }
    }

    private fun rawStackFrame(
        image: SafeImage,
        captureResult: CaptureResult?,
        metadata: CapturedFrameMetadata?,
    ): RawStackFrame {
        return RawStackFrame(
            image = image,
            sensorTimestampNs = metadata?.sensorTimestampNs ?: image.timestamp,
            frameNumber = metadata?.frameNumber ?: -1L,
            exposureTimeNs = metadata?.exposureTimeNs
                ?: captureResult?.get(CaptureResult.SENSOR_EXPOSURE_TIME)
                ?: 0L,
            sensitivityIso = metadata?.sensitivityIso
                ?: captureResult?.get(CaptureResult.SENSOR_SENSITIVITY)
                ?: 0,
            minimumSensitivityIso = metadata?.minimumSensitivityIso ?: 0,
            maximumAnalogSensitivityIso = metadata?.maximumAnalogSensitivityIso ?: 0,
            exposureProduct = metadata?.exposureProduct
                ?: captureResult?.let(::captureExposureProduct)
                ?: 1.0,
            desiredExposureProduct = metadata?.desiredExposureProduct
                ?: captureResult?.let { result ->
                    RawExposureMath.productOrNull(
                        result.request.get(android.hardware.camera2.CaptureRequest.SENSOR_EXPOSURE_TIME),
                        result.request.get(android.hardware.camera2.CaptureRequest.SENSOR_SENSITIVITY),
                    )
                },
            focusDistanceDiopters = metadata?.focusDistanceDiopters
                ?: captureResult?.get(CaptureResult.LENS_FOCUS_DISTANCE)
                ?: Float.NaN,
            lensState = metadata?.lensState ?: captureResult?.get(CaptureResult.LENS_STATE),
            rollingShutterSkewNs = metadata?.rollingShutterSkewNs
                ?: captureResult?.get(CaptureResult.SENSOR_ROLLING_SHUTTER_SKEW),
            gyroWindow = metadata?.gyroWindow,
            channelNoiseProfile = metadata?.channelNoiseProfile,
            dynamicBlackLevelByCfaPosition = metadata
                ?.dynamicBlackLevelByCfaPosition
                ?.copyOf()
                ?: captureResult
                    ?.get(CaptureResult.SENSOR_DYNAMIC_BLACK_LEVEL)
                    ?.takeIf { it.size >= 4 }
                    ?.copyOf(4),
            role = when (
                metadata?.multiFrameCaptureRole
                    ?: (captureResult?.request?.tag as? MultiFrameCaptureRole)
            ) {
                MultiFrameCaptureRole.SHORT -> RawBurstFrameRole.HIGHLIGHT_SHORT
                MultiFrameCaptureRole.LONG -> RawBurstFrameRole.SHADOW_LONG
                else -> RawBurstFrameRole.NORMAL
            },
        )
    }

    private suspend fun processStacking(
        frames: List<RawStackFrame>,
        captureInfo: CaptureInfo,
        characteristics: CameraCharacteristics?,
        captureResult: CaptureResult?,
        rawMaxHdrFusionEnabled: Boolean,
        rawMaxMode: MgcRawMaxMode,
        capturePortraitMask: PortraitMaskSnapshot?,
        settings: CaptureSettingsSnapshot,
    ) {
        try {
            val images = frames.map { it.image }
            PLog.d(TAG, "processStacking started - image size ${images.size}")
            val context = getApplication<Application>()

            // 保存当前配置信息
            val lutIdToSave = settings.lutId
            val aspectRatio = settings.state.aspectRatio
            val frameIdToSave = settings.frameId
            val shouldAutoSave = settings.preferences.autoSaveAfterCapture
            val isRawStack = images.firstOrNull()?.format?.let(::isRawCaptureFormat) == true
            val userPrefs: UserPreferences? = settings.preferences
            val sharpeningValue = resolveCaptureSharpening(
                isRawCapture = isRawStack,
                userPrefs = userPrefs,
            )
            val denoiseStrengths = resolveCaptureDenoiseStrengths(
                isRawCapture = isRawStack,
                isMergedCapture = true,
                userPrefs = userPrefs,
            )
            val noiseReductionValue = denoiseStrengths.editableLuma
            val chromaNoiseReductionValue = denoiseStrengths.editableChroma
            val photoQualityValue = settings.preferences.photoQuality
            val droModeString = settings.preferences.droMode
            val currentCameraId = settings.cameraId

            // 计算旋转角度
            val sensorOrientation = settings.sensorOrientation
            val lensFacing = settings.lensFacing
            val deviceRotation = settings.deviceRotation

            // 基础旋转角度计算
            val baseRotation = if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
                (sensorOrientation - deviceRotation + 360) % 360
            } else {
                (sensorOrientation + deviceRotation) % 360
            }

            val shouldMirror = lensFacing == CameraCharacteristics.LENS_FACING_FRONT &&
                    settings.preferences.mirrorFrontCamera

            // 获取用户配置的摄像头方向偏移
            val orientationOffset = userPrefs?.cameraOrientationOffsets?.get(currentCameraId) ?: 0

            // 应用方向偏移
            val rotation = (baseRotation + orientationOffset) % 360

            val rawSpatialOutputMode = if (isRawStack) {
                rawMaxMode.outputMode
            } else {
                MgcSpatialOutputMode.BAYER
            }
            val rawMaxMergeMethod = if (isRawStack) {
                rawMaxMode.mergeMethod
            } else {
                MgcMergeMethod.SPATIAL_BAYER
            }
            val superResScale = when {
                isRawStack && settings.preferences.useRawMax && rawSpatialOutputMode == MgcSpatialOutputMode.RGB ->
                    settings.state.multiFrameOutputScale
                    ?.let(MultiFrameConfig::normalizeOutputScale)
                    ?: MultiFrameConfig.MIN_OUTPUT_SCALE
                isRawStack -> 1f
                else -> MultiFrameConfig.normalizeOutputScale(
                    userPrefs?.jpgMultiFrameDenoiseOutputScale
                        ?: MultiFrameConfig.DEFAULT_SUPER_RESOLUTION_SCALE
                )
            }
            val useSuperRes = superResScale > MultiFrameConfig.MIN_OUTPUT_SCALE
            if (isRawStack) {
                PLog.i(
                    TAG,
                    "RAWmax mergeMode=${rawMaxMode.name} output layout=${rawSpatialOutputMode.name} " +
                        "outputScale=$superResScale " +
                        "superResolution=${rawSpatialOutputMode == MgcSpatialOutputMode.RGB}",
                )
            }

            val aperture = if (settings.state.isVirtualApertureEnabled) settings.state.virtualAperture else null
            val baselineTarget = if (isRawStack) {
                BaselineColorCorrectionTarget.RAW
            } else {
                null
            }
            val rawToneMappingParameters = resolveCaptureRawToneMappingParameters(userPrefs)
            val defaultHdrEffectEnabled = defaultHdrEffectEnabled(
                hasEmbeddedGainmap = false,
                userPrefs = userPrefs,
            )
            val baselineMetadata = resolveBaselineMetadata(baselineTarget, userPrefs)
            val effectiveRawAutoExposure = resolveEffectiveRawAutoExposure()
            val spectralFilmSettings = resolveRawSpectralFilmSettings(userPrefs)
            val captureExposureBias = settings.state.exposureBias
            val captureExposureCompensationEv = captureInfo.exposureCompensation ?: 0f

            // 创建统一的 PhotoMetadata，包含编辑配置和拍摄信息
            val metadata = MediaMetadata(
                lutId = lutIdToSave,
                frameId = frameIdToSave,
                colorRecipeParams = settings.recipe,
                baselineTarget = baselineMetadata?.first,
                baselineLutId = baselineMetadata?.second,
                baselineColorRecipeParams = baselineMetadata?.third,
                sharpening = sharpeningValue,
                noiseReduction = noiseReductionValue,
                chromaNoiseReduction = chromaNoiseReductionValue,
                rawDenoiseValue = denoiseStrengths.bakedLuma,
                rawChromaDenoiseValue = denoiseStrengths.bakedChroma,
                captureNoiseReductionLevel = settings.state.nrLevel,
                rawDcpId = userPrefs?.rawDcpIdForLens(currentCameraId),
                rawHncsProfileId = userPrefs?.rawHncsProfileId,
                rawHncsRenderIntent = userPrefs?.rawHncsRenderIntent
                    ?: HncsRenderIntent.Standard,
                rawHncsFilmCurveMode = userPrefs?.rawHncsFilmCurveMode
                    ?: HncsFilmCurveMode.Standard,
                rawExposureCompensation = userPrefs?.rawExposureCompensation ?: 0f,
                rawAutoExposure = effectiveRawAutoExposure,
                customProperties = RawCaptureExposureCompensationMetadata.write(
                    rawProcessingMetadataProperties(userPrefs),
                    captureExposureCompensationEv,
                ),
                rawHighlightsAdjustment = userPrefs?.rawHighlightsAdjustment ?: 0f,
                rawShadowsAdjustment = userPrefs?.rawShadowsAdjustment ?: 0f,
                rawBlackPointCorrection = userPrefs?.rawBlackPointCorrection ?: 0f,
                rawWhitePointCorrection = userPrefs?.rawWhitePointCorrection ?: 0f,
                rawLensShadingCorrectionEnabled = userPreferencesRepository.latest().rawLensShadingCorrectionEnabled,
                rawBlackLevelMode = userPrefs?.rawBlackLevelModes?.get(currentCameraId) ?: "Default",
                rawCustomBlackLevel = userPrefs?.rawCustomBlackLevels?.get(currentCameraId) ?: 0f,
                rawWhiteLevelMode = userPrefs?.rawWhiteLevelModes?.get(currentCameraId)
                    ?: RawWhiteLevelCorrection.MODE_DEFAULT,
                rawCustomWhiteLevel = userPrefs?.rawCustomWhiteLevels?.get(currentCameraId) ?: 0f,
                rawCfaCorrectionMode = userPrefs?.rawCfaCorrectionModes?.get(currentCameraId) ?: RawCfaCorrection.MODE_DEFAULT,
                cameraId = currentCameraId,
                rawBlackBorderCrop = settings.blackBorderCrop,
                rawRenderingEngine = resolveCaptureRawRenderingEngine(userPrefs),
                rawToneMappingParameters = rawToneMappingParameters,
                rawOutputUpscaleMode = userPrefs?.rawOutputUpscaleMode ?: RawOutputUpscaleMode.DEFAULT,
                spectralFilmStock = spectralFilmSettings.stock,
                spectralFilmPrint = spectralFilmSettings.print,
                spectralFilmCDensityGain = spectralFilmSettings.tuning.cDensityGain,
                spectralFilmMDensityGain = spectralFilmSettings.tuning.mDensityGain,
                spectralFilmYDensityGain = spectralFilmSettings.tuning.yDensityGain,
                fotufilmDocument = resolveRawFotufilmDocument(userPrefs)?.toJson(),
                width = MultiFrameConfig.scaledRawOutputDimension(images[0].width, superResScale),
                height = MultiFrameConfig.scaledRawOutputDimension(images[0].height, superResScale),
                ratio = aspectRatio,
                rotation = rotation,
                deviceModel = DeviceUtil.model,
                brand = captureInfo.make,
                dateTaken = captureInfo.captureTime,
                latitude = captureInfo.latitude,
                longitude = captureInfo.longitude,
                altitude = captureInfo.altitude,
                iso = captureInfo.iso,
                shutterSpeed = captureInfo.formatExposureTime(),
                focalLength = captureInfo.formatFocalLength(),
                focalLength35mm = captureInfo.formatFocalLength35mm(),
                aperture = captureInfo.formatAperture(),
                exposureBias = captureExposureBias,
                droMode = droModeString,
                isMirrored = shouldMirror,
                colorSpace = captureInfo.colorSpace,
                computationalAperture = aperture,
                focusPointX = settings.state.focusPoint?.first,
                focusPointY = settings.state.focusPoint?.second,
                manualHdrEffectEnabled = defaultHdrEffectEnabled,
                captureMode = if (isRawStack) null else "jpg_max",
            )

            val livePhotoVideoDeferred = settings.livePhotoVideo

            characteristics ?: return
            val photoId = GalleryManager.preparePhoto(
                context,
                metadata,
                captureResult,
                settings.displayThumbnail,
                settings.state.useLivePhoto,
                superResScale,
                includeCropRegionInOutputSize = images.firstOrNull()?.let {
                    shouldIncludeCropRegionInOutputSize(it.format)
                } ?: false,
                photoId = settings.photoId,
            )
            if (photoId == null) {
                PLog.e(TAG, "Failed to save burst image")
                return
            }

            withContext(Dispatchers.IO) {
                GalleryManager.saveVideo(context, photoId, livePhotoVideoDeferred)

                GalleryManager.saveStackedPhoto(
                    context,
                    photoId,
                    images,
                    rotation,
                    aspectRatio,
                    characteristics,
                    captureResult,
                    shouldAutoSave,
                    contentRepository.photoProcessor,
                    sharpeningValue,
                    noiseReductionValue,
                    chromaNoiseReductionValue,
                    photoQualityValue,
                    useSuperResolution = useSuperRes,
                    superResolutionScale = superResScale,
                    exposureBias = captureExposureBias,
                    captureExposureCompensationEv = captureExposureCompensationEv,
                    exportDngWithRawExport = settings.preferences.exportDngWithRawExport,
                    capturePreviewThumbnail = settings.originalThumbnail,
                    capturePortraitMask = capturePortraitMask,
                    rawStackFrames = frames,
                    rawMaxHdrFusionEnabled = rawMaxHdrFusionEnabled,
                    rawMaxSpatialOutputMode = rawSpatialOutputMode,
                    rawMaxMergeMethod = rawMaxMergeMethod,
                )
            }
            PLog.d(TAG, "Image saved: $photoId, LUT: $lutIdToSave, Frame: $frameIdToSave")
            markCapturedThumbnailSaved(settings, photoId)
            _imageSavedEvent.emit(photoId)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to save image", e)
        }
    }

    private suspend fun processHdrBracket(
        images: List<SafeImage>,
        captureResults: List<CaptureResult?>,
        zeroEvFrameCount: Int,
        expectedFrameCount: Int,
        captureInfo: CaptureInfo,
        characteristics: CameraCharacteristics?,
        captureResult: CaptureResult?,
        settings: CaptureSettingsSnapshot,
    ) {
        val orderedFrames = orderHdrBracketFramesByTimestamp(images, captureResults)
        val orderedImages = orderedFrames.images
        val orderedCaptureResults = orderedFrames.captureResults
        var imagesHandedToGallery = false
        try {
            if (orderedImages.size != expectedFrameCount) return
            val context = getApplication<Application>()
            val shouldAutoSave = settings.preferences.autoSaveAfterCapture
            val sharpeningValue = 0f
            val noiseReductionValue = 0f
            val chromaNoiseReductionValue = 0f
            val photoQualityValue = settings.preferences.photoQuality
            val baseImage = orderedImages[HDR_BRACKET_ZERO_INDEX]
            val useSuperRes = false
            val superResScale = 1.0f
            val captureMode = "jpg_max"
            val metadataCaptureInfo = captureInfo
            val metadata = buildPhotoMetadata(
                width = (baseImage.width.toFloat() * superResScale).roundToInt(),
                height = (baseImage.height.toFloat() * superResScale).roundToInt(),
                captureInfo = metadataCaptureInfo,
                sharpeningValue = sharpeningValue,
                noiseReductionValue = noiseReductionValue,
                chromaNoiseReductionValue = chromaNoiseReductionValue,
                captureMode = captureMode,
                multipleExposureFrameCount = expectedFrameCount,
                settings = settings,
            )

            val photoId = GalleryManager.preparePhoto(
                context,
                metadata,
                null,
                settings.displayThumbnail,
                false,
                superResScale,
                includeCropRegionInOutputSize = false,
                photoId = settings.photoId,
            ) ?: return

            val aspectRatio = metadata.ratio ?: settings.state.aspectRatio
            val colorSpace = android.graphics.ColorSpace.get(metadataCaptureInfo.colorSpace)
            imagesHandedToGallery = true
            withContext(Dispatchers.IO) {
                var fusedBitmap: Bitmap? = null
                try {
                    fusedBitmap = GalleryManager.composeHdrBracketPhoto(
                        images = orderedImages,
                        captureResults = orderedCaptureResults,
                        zeroEvFrameCount = zeroEvFrameCount,
                        rotation = metadata.rotation,
                        aspectRatio = aspectRatio,
                        shouldMirror = metadata.isMirrored,
                        useSuperResolution = useSuperRes,
                        colorSpace = colorSpace
                    )
                    val outputBitmap = fusedBitmap ?: return@withContext

                    GalleryManager.saveBitmapPhoto(
                        context,
                        photoId,
                        outputBitmap,
                        shouldAutoSave,
                        contentRepository.photoProcessor,
                        sharpeningValue,
                        noiseReductionValue,
                        chromaNoiseReductionValue,
                        photoQualityValue
                    )
                    PLog.d(TAG, "HDR bracket image saved: $photoId, characteristics=${characteristics != null}, result=${captureResult != null}")
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to process HDR bracket", e)
                } finally {
                    fusedBitmap?.takeIf { !it.isRecycled }?.recycle()
                }
            }
            PLog.d(TAG, "Image saved: $photoId, HDR mode: $captureMode")
            markCapturedThumbnailSaved(settings, photoId)
            _imageSavedEvent.emit(photoId)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to process HDR bracket", e)
        } finally {
            if (!imagesHandedToGallery) {
                orderedImages.forEach { it.close() }
            }
        }
    }

    private fun orderHdrBracketFramesByTimestamp(
        images: List<SafeImage>,
        captureResults: List<CaptureResult?>
    ): HdrBracketFrameOrder {
        val frames = images.mapIndexed { index, image ->
            val result = captureResults.getOrNull(index)
            HdrBracketFrame(
                image = image,
                captureResult = result,
                originalIndex = index,
                timestamp = result?.get(CaptureResult.SENSOR_TIMESTAMP) ?: image.timestamp
            )
        }
        val sortedFrames = frames.sortedWith(
            compareBy<HdrBracketFrame> { it.timestamp }
                .thenBy { it.originalIndex }
        )
        val sortedOrder = sortedFrames.map { it.originalIndex }
        val originalOrder = frames.map { it.originalIndex }
        if (sortedOrder != originalOrder) {
            PLog.d(
                TAG,
                "HDR bracket frames reordered by timestamp: " +
                        sortedFrames.joinToString { "${it.originalIndex}:${it.timestamp}" }
            )
        }
        return HdrBracketFrameOrder(
            images = sortedFrames.map { it.image },
            captureResults = sortedFrames.map { it.captureResult }
        )
    }

    private fun captureExposureProduct(result: CaptureResult): Double? {
        return RawExposureMath.productOrNull(
            exposureTimeNs = result.get(CaptureResult.SENSOR_EXPOSURE_TIME),
            sensitivityIso = result.get(CaptureResult.SENSOR_SENSITIVITY),
        )
    }

    private suspend fun prepareBurst(context: Context, photoId: String, image: SafeImage, captureInfo: CaptureInfo, settings: CaptureSettingsSnapshot) {
        // 保存当前配置信息
        val lutIdToSave = settings.lutId
        val aspectRatio = settings.state.aspectRatio
        val frameIdToSave = settings.frameId
        val userPrefs: UserPreferences? = settings.preferences
        val isRawCapture = isRawCaptureFormat(image.format)
        val sharpeningValue = resolveCaptureSharpening(
            isRawCapture = isRawCapture,
            userPrefs = userPrefs,
        )
        val denoiseStrengths = resolveCaptureDenoiseStrengths(
            isRawCapture = isRawCapture,
            isMergedCapture = true,
            userPrefs = userPrefs,
        )
        val noiseReductionValue = denoiseStrengths.editableLuma
        val chromaNoiseReductionValue = denoiseStrengths.editableChroma
        val currentCameraId = settings.cameraId

        // 计算旋转角度
        val sensorOrientation = settings.sensorOrientation
        val lensFacing = settings.lensFacing
        val deviceRotation = settings.deviceRotation

        // 基础旋转角度计算
        val baseRotation = if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
            (sensorOrientation - deviceRotation + 360) % 360
        } else {
            (sensorOrientation + deviceRotation) % 360
        }

        // 获取用户配置的摄像头方向偏移
        val orientationOffset = userPrefs?.cameraOrientationOffsets?.get(currentCameraId) ?: 0

        // 应用方向偏移
        val rotation = (baseRotation + orientationOffset) % 360

        val shouldMirror = lensFacing == CameraCharacteristics.LENS_FACING_FRONT &&
                settings.preferences.mirrorFrontCamera

        val aperture = if (settings.state.isVirtualApertureEnabled) settings.state.virtualAperture else null
        val baselineTarget = if (isRawCapture) {
            BaselineColorCorrectionTarget.RAW
        } else {
            null
        }
        val rawToneMappingParameters = resolveCaptureRawToneMappingParameters(userPrefs)
        val defaultHdrEffectEnabled = defaultHdrEffectEnabled(
            hasEmbeddedGainmap = false,
            userPrefs = userPrefs,
        )
        val baselineMetadata = resolveBaselineMetadata(baselineTarget, userPrefs)
        val effectiveRawAutoExposure = resolveEffectiveRawAutoExposure()
        val spectralFilmSettings = resolveRawSpectralFilmSettings(userPrefs)

        // 创建统一的 PhotoMetadata，包含编辑配置和拍摄信息
        val metadata = MediaMetadata(
            lutId = lutIdToSave,
            frameId = frameIdToSave,
            colorRecipeParams = settings.recipe,
            baselineTarget = baselineMetadata?.first,
            baselineLutId = baselineMetadata?.second,
            baselineColorRecipeParams = baselineMetadata?.third,
            sharpening = sharpeningValue,
            noiseReduction = noiseReductionValue,
            chromaNoiseReduction = chromaNoiseReductionValue,
            rawDenoiseValue = denoiseStrengths.bakedLuma,
            rawChromaDenoiseValue = denoiseStrengths.bakedChroma,
            captureNoiseReductionLevel = settings.state.nrLevel,
            rawDcpId = userPrefs?.rawDcpIdForLens(currentCameraId),
            rawHncsProfileId = userPrefs?.rawHncsProfileId,
            rawHncsRenderIntent = userPrefs?.rawHncsRenderIntent
                ?: HncsRenderIntent.Standard,
            rawHncsFilmCurveMode = userPrefs?.rawHncsFilmCurveMode
                ?: HncsFilmCurveMode.Standard,
            rawExposureCompensation = userPrefs?.rawExposureCompensation ?: 0f,
            rawAutoExposure = effectiveRawAutoExposure,
            customProperties = rawProcessingMetadataProperties(userPrefs),
            rawHighlightsAdjustment = userPrefs?.rawHighlightsAdjustment ?: 0f,
            rawShadowsAdjustment = userPrefs?.rawShadowsAdjustment ?: 0f,
            rawBlackPointCorrection = userPrefs?.rawBlackPointCorrection ?: 0f,
            rawWhitePointCorrection = userPrefs?.rawWhitePointCorrection ?: 0f,
            rawLensShadingCorrectionEnabled = userPreferencesRepository.latest().rawLensShadingCorrectionEnabled,
            rawBlackLevelMode = userPrefs?.rawBlackLevelModes?.get(currentCameraId) ?: "Default",
            rawCustomBlackLevel = userPrefs?.rawCustomBlackLevels?.get(currentCameraId) ?: 0f,
            rawWhiteLevelMode = userPrefs?.rawWhiteLevelModes?.get(currentCameraId)
                ?: RawWhiteLevelCorrection.MODE_DEFAULT,
            rawCustomWhiteLevel = userPrefs?.rawCustomWhiteLevels?.get(currentCameraId) ?: 0f,
            rawCfaCorrectionMode = userPrefs?.rawCfaCorrectionModes?.get(currentCameraId) ?: RawCfaCorrection.MODE_DEFAULT,
            cameraId = currentCameraId,
            rawBlackBorderCrop = settings.blackBorderCrop,
            rawRenderingEngine = resolveCaptureRawRenderingEngine(userPrefs),
            rawToneMappingParameters = rawToneMappingParameters,
            rawOutputUpscaleMode = userPrefs?.rawOutputUpscaleMode ?: RawOutputUpscaleMode.DEFAULT,
            spectralFilmStock = spectralFilmSettings.stock,
            spectralFilmPrint = spectralFilmSettings.print,
            spectralFilmCDensityGain = spectralFilmSettings.tuning.cDensityGain,
            spectralFilmMDensityGain = spectralFilmSettings.tuning.mDensityGain,
            spectralFilmYDensityGain = spectralFilmSettings.tuning.yDensityGain,
            fotufilmDocument = resolveRawFotufilmDocument(userPrefs)?.toJson(),
            width = image.width,
            height = image.height,
            ratio = aspectRatio,
            rotation = rotation,
            deviceModel = DeviceUtil.model,
            brand = captureInfo.make,
            dateTaken = captureInfo.captureTime,
            latitude = captureInfo.latitude,
            longitude = captureInfo.longitude,
            altitude = captureInfo.altitude,
            iso = captureInfo.iso,
            shutterSpeed = captureInfo.formatExposureTime(),
            focalLength = captureInfo.formatFocalLength(),
            focalLength35mm = captureInfo.formatFocalLength35mm(),
            aperture = captureInfo.formatAperture(),
            isMirrored = shouldMirror,
            colorSpace = captureInfo.colorSpace,
            computationalAperture = aperture,
            focusPointX = settings.state.focusPoint?.first,
            focusPointY = settings.state.focusPoint?.second,
            manualHdrEffectEnabled = defaultHdrEffectEnabled
        )

        GalleryManager.preparePhoto(
            context,
            metadata,
            null,
            settings.displayThumbnail,
            false,
            1.0f,
            photoId = photoId
        )
    }

    fun getAvailableFocalLengths(): List<Float> {
        val currentState = state.value
        val availableCameras = currentState.availableCameras
        if (availableCameras.isEmpty()) return emptyList()

        val mainCamera = availableCameras.find {
            it.lensType == LensType.BACK_MAIN
        } ?: availableCameras.firstOrNull { it.lensFacing == CameraCharacteristics.LENS_FACING_BACK }
        ?: return emptyList()

        if (mainCamera.focalLength35mmEquivalent <= 0) return emptyList()

        val lensZoomStops = calculateLensZoomStops(availableCameras, mainCamera)
        val stops = lensZoomStops.toMutableList()
        addDefaultMinimumZoomStop(stops, lensZoomStops, mainCamera)

        return stops
            .map { it * mainCamera.focalLength35mmEquivalent }
            .distinctBy { it.roundToInt() }
            .sorted()
    }

    /**
     * 保存从外部选择的背景图
     */
    fun saveCustomBackgroundImage(uri: Uri) {
        viewModelScope.launch {
            withContext(Dispatchers.IO) {
                try {
                    val context = getApplication<Application>()
                    val inputStream = context.contentResolver.openInputStream(uri)
                    if (inputStream != null) {
                        val backgroundDir = File(context.filesDir, "backgrounds")
                        if (!backgroundDir.exists()) {
                            backgroundDir.mkdirs()
                        }
                        val fileName = "custom_bg_${System.currentTimeMillis()}.jpg"
                        val outputFile = File(backgroundDir, fileName)
                        inputStream.use { input ->
                            outputFile.outputStream().use { output ->
                                input.copyTo(output)
                            }
                        }
                        userPreferencesRepository.update { backgroundImage = outputFile.absolutePath }
                    }
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to save custom background image", e)
                }
            }
        }
    }

    fun setCaptureButtonColor(color: Int) {
        viewModelScope.launch {
            userPreferencesRepository.update {
                captureButtonColor = color
                captureButtonStyle = CaptureButtonStyle.COLOR
            }
        }
    }

    fun saveCustomCaptureButtonImage(uri: Uri) {
        viewModelScope.launch {
            withContext(Dispatchers.IO) {
                val context = getApplication<Application>()
                val imageDirectory = File(context.filesDir, "capture_buttons")
                val outputFile = File(
                    imageDirectory,
                    "capture_button_${UUID.randomUUID()}.image"
                )
                try {
                    if (!imageDirectory.exists() && !imageDirectory.mkdirs()) {
                        throw IllegalStateException(
                            "Unable to create capture button image directory"
                        )
                    }
                    context.contentResolver.openInputStream(uri)?.use { input ->
                        outputFile.outputStream().use(input::copyTo)
                    } ?: throw IllegalArgumentException("Unable to open selected image")

                    val previousPath = userPreferencesRepository.userPreferences
                        .first()
                        .captureButtonImagePath
                    userPreferencesRepository.update {
                        captureButtonImagePath = outputFile.absolutePath
                        captureButtonStyle = CaptureButtonStyle.IMAGE
                    }

                    runCatching {
                        previousPath
                            ?.let(::File)
                            ?.takeIf {
                                it != outputFile &&
                                    it.parentFile?.canonicalFile == imageDirectory.canonicalFile
                            }
                            ?.delete()
                    }.onFailure {
                        PLog.w(TAG, "Failed to remove previous capture button image", it)
                    }
                } catch (e: Exception) {
                    outputFile.delete()
                    PLog.e(TAG, "Failed to save custom capture button image", e)
                }
            }
        }
    }

    fun onShutterAnimationTriggered() {
        _canStartShutterAnimation.value = true
    }

    override fun onCleared() {
        super.onCleared()
        cameraController.onEnhancedStabilizationUnavailable = null
        cameraReopenJob?.cancel()
        cameraErrorRecoveryJob?.cancel()
        previewEyeFocusProcessor.close()
        locationManager.stopUpdates()
        cameraController.release()
        contentRepository.lutManager.clearCache()
        contentRepository.frameManager.clearCache()
        shutterSoundPlayer.release()
        videoAudioInputManager.release()

        // Accepted photo jobs retain their own images until the process-wide queue finishes.
        burstImageCount = 0
        multipleExposureState.previewBitmap?.recycle()
        multipleExposureState.sessionId?.let { GalleryManager.clearMultipleExposureSession(getApplication(), it) }
    }

    /**
     * 设置当前 RAW 动态范围
     */
    fun setDroMode(mode: String) {
        viewModelScope.launch {
            applyCameraFeatureUpdate(
                CameraFeatureUpdate(droMode = SettingValue(mode))
            )
        }
    }

    fun togglePhantomMode() {
        val newMode = !userPreferencesRepository.current.phantomMode
        viewModelScope.launch {
            userPreferencesRepository.update { phantomMode = newMode }
        }
    }

    fun setDefaultVirtualAperture(aperture: Float) {
        applyDefaultVirtualAperture(aperture)
        userPreferencesRepository.updateAsync { defaultVirtualAperture = aperture }
    }

    private fun applyDefaultVirtualAperture(aperture: Float) {
        val enabled = aperture > 0f && DepthModelManager.isInstalled(getApplication())
        setVirtualApertureAuto(enabled)
        if (enabled) {
            setAperture(aperture)
        }
    }

    /**
     * 设置 Widget 主题
     */
    fun setWidgetTheme(theme: com.hinnka.mycamera.data.WidgetTheme) {
        viewModelScope.launch {
            userPreferencesRepository.update { widgetTheme = theme }
            // 通知 Widget 更新
            val intent = Intent(
                getApplication<Application>(),
                PhantomWidgetProvider::class.java
            ).apply {
                action = android.appwidget.AppWidgetManager.ACTION_APPWIDGET_UPDATE
                val ids = android.appwidget.AppWidgetManager.getInstance(getApplication())
                    .getAppWidgetIds(
                        android.content.ComponentName(
                            getApplication(),
                            PhantomWidgetProvider::class.java
                        )
                    )
                putExtra(android.appwidget.AppWidgetManager.EXTRA_APPWIDGET_IDS, ids)
            }
            getApplication<Application>().sendBroadcast(intent)
        }
    }

    /**
     * 获取 LUT 的 .cube 字符串内容
     */
    suspend fun getLutCubeString(lutId: String): String? = withContext(Dispatchers.IO) {
        val lutInfo = contentRepository.lutManager.getLutInfo(lutId) ?: return@withContext null
        val lutConfig = contentRepository.lutManager.loadLut(lutId) ?: return@withContext null

        val floatBuffer = lutConfig.toFloatBuffer()
        val floatArray = FloatArray(floatBuffer.capacity())
        floatBuffer.position(0)
        floatBuffer.get(floatArray)

        LutGenerator.exportToCubeString(floatArray, lutConfig.size, lutInfo.getName())
    }

    /**
     * 将 LUT（含色彩配方）导出为 .plut v4 字节数组
     * 若该 LUT 没有色彩配方则导出为标准 v3 格式
     */
    suspend fun exportLutToPlut(lutId: String): ByteArray? = withContext(Dispatchers.IO) {
        val lutConfig = contentRepository.lutManager.loadLut(lutId) ?: return@withContext null
        val recipe = contentRepository.lutManager.loadColorRecipeParams(lutId)
        val recipeJson = if (!recipe.isDefault()) recipe.toJson() else null

        val outputStream = java.io.ByteArrayOutputStream()
        LutConverter.exportToPlut(lutConfig, outputStream, recipeJson)
        outputStream.toByteArray()
    }

    /**
     * 导出原始无损 .cube 字节数组
     */
    suspend fun exportLutToCube(lutId: String): ByteArray? = withContext(Dispatchers.IO) {
        getLutCubeString(lutId)?.toByteArray(Charsets.UTF_8)
    }

    /**
     * 将 LUT 和色彩配方永久烘焙并导出为标准 .cube 字节数组
     */
    suspend fun exportBakedLutToCube(lutId: String): ByteArray? = withContext(Dispatchers.IO) {
        val lutConfig = contentRepository.lutManager.loadLut(lutId) ?: return@withContext null
        val recipe = contentRepository.lutManager.loadColorRecipeParams(lutId)

        try {
            val lutInfo = contentRepository.lutManager.getLutInfo(lutId)
            val name = lutInfo?.getName() ?: "BakedLUT"
            BakedLutExporter.exportBakedCube(getApplication(), lutConfig, recipe, name)
        } catch (e: Exception) {
            PLog.e("CameraViewModel", "Failed to bake LUT to cube", e)
            null
        }
    }

    /**
     * 将 LUT 和色彩配方永久烘焙并导出为 HALD CLUT .png 字节数组
     */
    suspend fun exportBakedLutToHaldPng(lutId: String): ByteArray? = withContext(Dispatchers.IO) {
        val lutConfig = contentRepository.lutManager.loadLut(lutId) ?: return@withContext null
        val recipe = contentRepository.lutManager.loadColorRecipeParams(lutId)

        try {
            BakedLutExporter.exportBakedHaldPng(getApplication(), lutConfig, recipe)
        } catch (e: Exception) {
            PLog.e("CameraViewModel", "Failed to bake LUT to HALD PNG", e)
            null
        }
    }

    suspend fun exportFrameToJson(frame: FrameInfo): ByteArray? = withContext(Dispatchers.IO) {
        contentRepository.getCustomImportManager().exportFrameJson(frame)
    }

    /**
     * 从导入的 .plut URI 中提取嵌入的色彩配方并保存到指定 LUT（仅 v4 文件含有配方）
     */
    suspend fun extractAndSaveColorRecipeFromPlut(lutId: String, uri: Uri) = withContext(Dispatchers.IO) {
        try {
            val recipeJson = getApplication<Application>().contentResolver
                .openInputStream(uri)?.use { LutConverter.extractRecipeJsonFromPlut(it) }
                ?: return@withContext
            val params = ColorRecipeParams.fromJson(recipeJson)
            contentRepository.lutManager.saveColorRecipeParams(lutId, params)
        } catch (e: Exception) {
            PLog.e("CameraViewModel", "Failed to extract recipe from plut", e)
        }
    }

}

private fun shouldIncludeCropRegionInOutputSize(imageFormat: Int): Boolean {
    return when (imageFormat) {
        ImageFormat.RAW_SENSOR,
        ImageFormat.RAW10,
        ImageFormat.RAW12 -> true

        else -> false
    }
}
