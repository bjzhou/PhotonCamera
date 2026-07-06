package com.hinnka.mycamera.viewmodel

import android.app.Application
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.RectF
import android.net.Uri
import android.os.Build
import android.provider.MediaStore
import android.util.LruCache
import androidx.compose.runtime.*
import androidx.compose.runtime.snapshots.SnapshotStateMap
import androidx.core.content.FileProvider
import androidx.core.graphics.scale
import androidx.core.net.toUri
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.gallery.GalleryManager
import com.hinnka.mycamera.gallery.MediaData
import com.hinnka.mycamera.gallery.MediaMetadata
import com.hinnka.mycamera.gallery.MediaType
import com.hinnka.mycamera.hdr.HdrGainmapStrength
import com.hinnka.mycamera.hdr.UnifiedGainmapProducer
import com.hinnka.mycamera.lut.creator.AiPhotoEvaluation
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.PhotoTransformation
import com.hinnka.mycamera.lut.exportVideoWithEffects
import com.hinnka.mycamera.lut.isVideoTransformerExportSupported
import com.hinnka.mycamera.lut.creator.OpenAIApiClient
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.EffectParams
import com.hinnka.mycamera.raw.DcpInfo
import com.hinnka.mycamera.raw.RawCfaCorrection
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawProcessingPreferences
import com.hinnka.mycamera.raw.RawToneMappingParameters
import com.hinnka.mycamera.raw.RawWhiteLevelCorrection
import com.hinnka.mycamera.raw.SpectralFilmSelection
import com.hinnka.mycamera.raw.SpectralFilmTuning
import com.hinnka.mycamera.ui.gallery.CropAspectOption
import com.hinnka.mycamera.ui.gallery.calculateInitialCropRect
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.StartupTrace
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.sync.Semaphore
import kotlinx.coroutines.sync.withPermit
import java.io.File
import java.io.FileOutputStream
import java.util.Locale
import kotlin.math.roundToInt

/**
 * 相册 Tab
 */
enum class GalleryTab {
    PHOTON, SYSTEM
}

/**
 * 相册 ViewModel
 * 管理照片列表、选择状态和各种操作
 */
class GalleryViewModel(application: Application) : AndroidViewModel(application) {

    companion object {
        private const val TAG = "GalleryViewModel"
        private const val FULL_QUALITY_PREVIEW_MAX_EDGE = 4096
    }


    // 内容仓库（单例，与 CameraViewModel 共享）
    private val contentRepository = ContentRepository.getInstance(application)

    private val repository = contentRepository.galleryRepository
    private val detailGainmapProducer = UnifiedGainmapProducer()

    // 用户偏好设置仓库
    private val userPreferencesRepository = contentRepository.userPreferencesRepository

    // 软件处理参数
    val sharpening: StateFlow<Float> = userPreferencesRepository.userPreferences
        .map { it.sharpening }
        .stateIn(viewModelScope, SharingStarted.Eagerly, 0f)

    val noiseReduction: StateFlow<Float> = userPreferencesRepository.userPreferences
        .map { it.noiseReduction }
        .stateIn(viewModelScope, SharingStarted.Eagerly, 0f)

    val chromaNoiseReduction: StateFlow<Float> = userPreferencesRepository.userPreferences
        .map { it.chromaNoiseReduction }
        .stateIn(viewModelScope, SharingStarted.Eagerly, 0f)

    val categoryOrder: StateFlow<List<String>> = userPreferencesRepository.userPreferences
        .map { it.categoryOrder }
        .stateIn(viewModelScope, SharingStarted.Eagerly, emptyList())

    val photoQuality: Flow<Int> = userPreferencesRepository.userPreferences.map { it.photoQuality }

    val defaultLutId: Flow<String?> = userPreferencesRepository.userPreferences.map { it.lutId }
    val defaultVirtualAperture: StateFlow<Float> = userPreferencesRepository.userPreferences.map { it.defaultVirtualAperture }
        .stateIn(viewModelScope, SharingStarted.Eagerly, 0f)

    val droMode: StateFlow<String> = userPreferencesRepository.userPreferences
        .map { it.droMode }
        .stateIn(viewModelScope, SharingStarted.Eagerly, "OFF")

    val openAIApiKey = userPreferencesRepository.userPreferences.map { it.openAIApiKey }
        .stateIn(viewModelScope, SharingStarted.Eagerly, "")

    val deleteExported: StateFlow<Boolean> = userPreferencesRepository.userPreferences
        .map { it.deleteExported }
        .stateIn(viewModelScope, SharingStarted.Eagerly, true)

    // 计费管理器
    private val billingManager = com.hinnka.mycamera.billing.BillingManagerImpl(application)
    val isPurchased = billingManager.isPurchased

    // 付费弹窗状态
    var showPaymentDialog by mutableStateOf(false)

    // 水印编辑弹窗状态
    var showWatermarkSheet by mutableStateOf(false)

    // 当前选中的 Tab
    var selectedTab by mutableStateOf(GalleryTab.PHOTON)
        private set

    // 照片列表
    private val _photos = MutableStateFlow<List<MediaData>>(emptyList())
    val photos = _photos.asStateFlow()
    private val _systemPhotos = MutableStateFlow<List<MediaData>>(emptyList())
    val systemPhotos = _systemPhotos.asStateFlow()
    val currentPhotos = combine(photos, systemPhotos, snapshotFlow { selectedTab }) { p, s, tab ->
        if (tab == GalleryTab.PHOTON) {
            p
        } else {
            // Optimize lookup by creating a map of sourceUri to PhotoData
            val photonMap = mutableMapOf<String, MediaData>()
            p.forEach { photo ->
                photo.sourceUri?.toString()?.let { photonMap[it] = photo }
                photo.metadata?.sourceUri?.let { photonMap[it] = photo }
                photo.sourceUri?.lastPathSegment?.let { photonMap[it] = photo }
                photo.metadata?.sourceUri?.toUri()?.lastPathSegment?.let { photonMap[it] = photo }
            }

            s.map { systemPhoto ->
                val photonPhoto = listOfNotNull(
                    systemPhoto.uri.toString(),
                    systemPhoto.sourceUri?.toString(),
                    systemPhoto.uri.lastPathSegment,
                    systemPhoto.sourceUri?.lastPathSegment
                ).firstNotNullOfOrNull { key -> photonMap[key] }
                photonPhoto?.let {
                    systemPhoto.copy(
                        relatedPhoto = it
                    )
                } ?: systemPhoto
            }
        }
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), emptyList())

    private var systemOffset = 0
    private var photonOffset = 0
    var hasMoreSystemPhotos by mutableStateOf(true)
        private set
    var hasMorePhotonPhotos by mutableStateOf(true)
        private set

    private val _isLoading = MutableStateFlow(false)
    val isLoading = _isLoading.asStateFlow()

    private val _isInitialized = MutableStateFlow(false)
    val isInitialized = _isInitialized.asStateFlow()

    private val _isSystemLoadingMore = MutableStateFlow(false)
    val isSystemLoadingMore: StateFlow<Boolean> = _isSystemLoadingMore.asStateFlow()
    private val _isPhotonLoadingMore = MutableStateFlow(false)
    val isPhotonLoadingMore: StateFlow<Boolean> = _isPhotonLoadingMore.asStateFlow()

    // 权限状态
    var hasGalleryPermission by mutableStateOf(false)
        private set

    // 分享状态
    private val _isSharing = MutableStateFlow(false)
    val isSharing: StateFlow<Boolean> = _isSharing.asStateFlow()

    // 导出状态（照片批量导出）
    private val _isExporting = MutableStateFlow(false)
    val isExporting: StateFlow<Boolean> = _isExporting.asStateFlow()
    var exportProgress by mutableStateOf(0 to 0)
        private set

    // 视频导出状态
    var isVideoExporting by mutableStateOf(false)
        private set
    var videoExportProgress by mutableStateOf(0)
        private set

    // 多选模式
    var isSelectionMode by mutableStateOf(false)
        private set

    // 选中的照片
    val selectedPhotos = mutableStateListOf<MediaData>()

    // 当前查看的照片索引
    var currentPhotoIndex by mutableStateOf(0)
        private set

    // 编辑状态
    var isEditing by mutableStateOf(false)
        private set
    var preparingEditPhotoId by mutableStateOf<String?>(null)
        private set

    // LUT 编辑状态
    var editLutId = MutableStateFlow<String?>(null)
        private set

    var editApplyEffectsToVideo = MutableStateFlow(false)
        private set

    fun setApplyEffectsToVideo(apply: Boolean) {
        editApplyEffectsToVideo.value = apply
    }

    @OptIn(ExperimentalCoroutinesApi::class)
    var editLutRecipeParams = editLutId.flatMapLatest { id ->
        if (id == null) {
            flowOf(ColorRecipeParams.DEFAULT)
        } else {
            contentRepository.lutManager.getColorRecipeParams(id)
        }
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.Eagerly,
        initialValue = ColorRecipeParams.DEFAULT
    )

    /** 仅此照片的色彩配方覆盖，null 表示跟随 LUT 默认配方 */
    var editPhotoRecipeParams = MutableStateFlow<ColorRecipeParams?>(null)
        private set

    var editLutConfig: LutConfig? by mutableStateOf(null)
        private set

    // 系统相册删除
    var systemDeletePendingIntent by mutableStateOf<android.app.PendingIntent?>(null)
        private set
    private var pendingDeleteSystemPhoto: MediaData? = null

    // 当前照片的元数据
    var currentMediaMetadata: MediaMetadata? by mutableStateOf(null)
        private set

    private var currentPhotoMetadataId: String? = null

    // 当前照片的平均亮度（调试用）
    val currentBrightness = SnapshotStateMap<String, Float>()

    // 照片刷新密钥，用于强制 UI 重新加载图片
    val photoRefreshKeys = SnapshotStateMap<String, Long>()
    private val preparedPhotoThumbnailRefreshKeys = SnapshotStateMap<String, Long>()
    val rawPhotoStates = SnapshotStateMap<String, Boolean>()

    // 正在刷新的照片 ID 集合
    val refreshingPhotos = mutableStateListOf<String>()

    // 预览图 LRU 缓存，按 Bitmap 字节数计算大小
    private val previewBitmapCache = object : LruCache<String, Bitmap>(
        // 限制缓存大小为可用内存的 1/8
        (Runtime.getRuntime().maxMemory() / 8).toInt()
    ) {
        override fun sizeOf(key: String, value: Bitmap): Int {
            return value.allocationByteCount
        }
    }

    private val detailBitmapCache = object : LruCache<String, Bitmap>(
        (Runtime.getRuntime().maxMemory() / 12).toInt()
    ) {
        override fun sizeOf(key: String, value: Bitmap): Int {
            return value.allocationByteCount
        }
    }

    private val gridThumbnailCache = object : LruCache<String, Bitmap>(
        (Runtime.getRuntime().maxMemory() / 16).toInt()
    ) {
        override fun sizeOf(key: String, value: Bitmap): Int {
            return value.allocationByteCount
        }
    }
    private val gridThumbnailSemaphore = Semaphore(4)

    private val aiEvaluationCache = mutableMapOf<String, AiPhotoEvaluation>()

    // 可用的 LUT 列表
    var availableLuts: List<LutInfo> by mutableStateOf(emptyList())
        private set

    var availableDcps: List<DcpInfo> by mutableStateOf(emptyList())
        private set

    // 边框编辑状态
    var editFrameId = MutableStateFlow<String?>(null)
        private set

    // 可用的边框列表
    var availableFrames: List<FrameInfo> by mutableStateOf(emptyList())
        private set

    // 细节处理编辑状态 (Sharpening, Noise Reduction, Chroma Noise Reduction)
    var editSharpening = MutableStateFlow(0f)
        private set
    var editNoiseReduction = MutableStateFlow(0f)
        private set
    var editChromaNoiseReduction = MutableStateFlow(0f)
        private set
    var editRawExposureCompensation = MutableStateFlow(0f)
        private set
    var editRawAutoExposure = MutableStateFlow(true)
        private set
    var editRawHighlightsAdjustment = MutableStateFlow(0f)
        private set
    var editRawShadowsAdjustment = MutableStateFlow(0f)
        private set
    var editRawBlackPointCorrection = MutableStateFlow(0f)
        private set
    var editRawWhitePointCorrection = MutableStateFlow(0f)
        private set
    var editRawDROMode = MutableStateFlow("OFF")
        private set
    var editRawBlackLevelMode = MutableStateFlow(RawCfaCorrection.MODE_DEFAULT)
        private set
    var editRawCustomBlackLevel = MutableStateFlow(0f)
        private set
    var editRawWhiteLevelMode = MutableStateFlow(RawWhiteLevelCorrection.MODE_DEFAULT)
        private set
    var editRawCfaCorrectionMode = MutableStateFlow(RawCfaCorrection.MODE_DEFAULT)
        private set
    var editRawDcpId = MutableStateFlow<String?>(null)
        private set
    var editRawBaselineLutId = MutableStateFlow<String?>(null)
        private set
    var editRawRenderingEngine = MutableStateFlow(RawRenderingEngine.AdobeCurve)
        private set
    var editRawToneMappingParameters = MutableStateFlow(RawToneMappingParameters.DEFAULT)
        private set
    var editRawSpectralFilmStock = MutableStateFlow<String?>(null)
        private set
    var editRawSpectralFilmPrint = MutableStateFlow<String?>(null)
        private set
    var editRawSpectralFilmCDensityGain = MutableStateFlow(1f)
        private set
    var editRawSpectralFilmMDensityGain = MutableStateFlow(1f)
        private set
    var editRawSpectralFilmYDensityGain = MutableStateFlow(1f)
        private set

    @OptIn(ExperimentalCoroutinesApi::class)
    var editRawBaselineRecipeParams = editRawBaselineLutId.flatMapLatest { id ->
        if (id == null) {
            flowOf(ColorRecipeParams.DEFAULT)
        } else {
            contentRepository.lutManager.getColorRecipeParams(
                id,
                BaselineColorCorrectionTarget.RAW
            )
        }
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.Eagerly,
        initialValue = ColorRecipeParams.DEFAULT
    )

    // Computational Bokeh editing state
    var editComputationalAperture = MutableStateFlow<Float?>(null)
        private set
    var editFocusPointX = MutableStateFlow<Float?>(null)
        private set
    var editFocusPointY = MutableStateFlow<Float?>(null)
        private set

    // 裁剪编辑状态
    var editCropRect = MutableStateFlow<RectF?>(null)
        private set
    var editCropAspectOption = MutableStateFlow<CropAspectOption>(CropAspectOption.Free)
        private set

    private val _editAiDenoiseStrength = MutableStateFlow(1.0f)
    val editAiDenoiseStrength = _editAiDenoiseStrength.asStateFlow()

    private val _isAiDenoising = MutableStateFlow(false)
    val isAiDenoising = _isAiDenoising.asStateFlow()

    private val _aiDenoiseProgress = MutableStateFlow(0f)
    val aiDenoiseProgress = _aiDenoiseProgress.asStateFlow()

    private var bokehJob: Job? = null

    fun setComputationalAperture(value: Float?) {
        editComputationalAperture.value = value
        updateBokehPhoto()
    }

    fun setFocusPoint(x: Float, y: Float) {
        editFocusPointX.value = x
        editFocusPointY.value = y
        updateBokehPhoto()
    }

    private suspend fun updatePhotoMetadata(
        photoId: String,
        transform: (MediaMetadata) -> MediaMetadata
    ): MediaMetadata? {
        val context = getApplication<Application>()
        val current = GalleryManager.loadMetadata(context, photoId)
            ?: _photos.value.firstOrNull { it.id == photoId }?.metadata
            ?: MediaMetadata()
        val updated = transform(current)
        if (!GalleryManager.saveMetadata(context, photoId, updated)) return null
        withContext(Dispatchers.Main) {
            if (currentPhotoMetadataId == photoId) {
                currentMediaMetadata = updated
            }
            _photos.value = _photos.value.map { p ->
                if (p.id == photoId) p.copy(metadata = updated) else p
            }
            if (_latestPhoto.value?.id == photoId) {
                _latestPhoto.value = _latestPhoto.value?.copy(metadata = updated)
            }
        }
        return updated
    }

    private fun updateBokehPhoto() {
        bokehJob?.cancel()
        bokehJob = viewModelScope.launch(Dispatchers.IO) {
            val context = getApplication<Application>()
            val photoData = getCurrentPhoto() ?: return@launch
            val aperture = editComputationalAperture.value
            if (aperture == null || aperture <= 0) {
                GalleryManager.getBokehFile(context, photoData.id).takeIf { it.exists() }?.delete()
                GalleryManager.deleteDetailHdrFile(context, photoData.id)
                return@launch
            }
            val focusPointX = editFocusPointX.value
            val focusPointY = editFocusPointY.value
            val metadata = GalleryManager.loadMetadata(context, photoData.id) ?: photoData.metadata ?: MediaMetadata()
            val bitmap = if (metadata.hasAiDenoisedBase) {
                GalleryManager.loadBitmap(context, Uri.fromFile(GalleryManager.getAiDenoiseFile(context, photoData.id)))
            } else {
                GalleryManager.loadOriginalBitmap(context, photoData.id)
            }
                ?: GalleryManager.loadBitmap(context, photoData.uri) ?: return@launch
            if (!isActive) return@launch
            val bokeh = contentRepository.depthBokehProcessor.applyHighQualityBokeh(
                context,
                photoData.id,
                bitmap,
                focusPointX,
                focusPointY,
                aperture
            )
            if (!isActive) return@launch
            GalleryManager.saveBokehPhoto(context, photoData.id, bokeh)
            GalleryManager.deleteDetailHdrFile(context, photoData.id)
            GalleryManager.updateThumbnail(
                context = context,
                photoId = photoData.id,
                photoProcessor = contentRepository.photoProcessor,
                metadata = metadata
            )
            photoRefreshKeys[photoData.id] = System.currentTimeMillis()
        }
    }

    fun setAiDenoiseStrength(value: Float) {
        _editAiDenoiseStrength.value = value
    }

    fun applyDnCNNDenoise(photo: MediaData, strength: Float = 1.0f, onComplete: (Boolean) -> Unit) {
        if (_isAiDenoising.value) return
        _isAiDenoising.value = true
        _aiDenoiseProgress.value = 0f

        viewModelScope.launch(Dispatchers.IO) {
            val context = getApplication<Application>()
            try {
                var bitmap = GalleryManager.loadOriginalBitmap(context, photo.id) ?: GalleryManager.loadBitmap(context, photo.uri)
                if (bitmap == null) {
                    _isAiDenoising.value = false
                    withContext(Dispatchers.Main) { onComplete(false) }
                    return@launch
                }
                
                if (!isRawInGallery(photo.id)) {
                    // 非 RAW 照片，先进行一次色度降噪
                    val lutProcessor = com.hinnka.mycamera.lut.LutImageProcessor()
                    val chromaDenoised = lutProcessor.applyChromaDenoise(bitmap, strength = 0.8f)
                    lutProcessor.release()
                    if (chromaDenoised !== bitmap) {
                        bitmap.recycle()
                        bitmap = chromaDenoised
                    }
                }
                
                val estimator = com.hinnka.mycamera.ml.DnCNNDenoiseEstimator(context)
                val denoised = estimator.denoisePatchwise(bitmap, strength = strength) { p ->
                    _aiDenoiseProgress.value = p
                }
                estimator.close()
                bitmap.recycle()
                
                if (denoised == null) {
                    _isAiDenoising.value = false
                    withContext(Dispatchers.Main) { onComplete(false) }
                    return@launch
                }
                
                val file = GalleryManager.getAiDenoiseFile(context, photo.id)
                file.parentFile?.mkdirs()
                FileOutputStream(file).use { outputStream ->
                    denoised.compress(Bitmap.CompressFormat.JPEG, 95, outputStream)
                }
                
                // Update metadata to mark that we have an AI denoised base
                val metadata = currentMediaMetadata ?: photo.metadata ?: MediaMetadata()
                val aperture = metadata.computationalAperture ?: 0f
                if (aperture > 0f) {
                    val bokeh = contentRepository.depthBokehProcessor.applyHighQualityBokeh(
                        context,
                        photo.id,
                        denoised,
                        metadata.focusPointX,
                        metadata.focusPointY,
                        aperture
                    )
                    GalleryManager.saveBokehPhoto(context, photo.id, bokeh)
                    if (bokeh !== denoised && !bokeh.isRecycled) {
                        bokeh.recycle()
                    }
                }
                val updatedMetadata = GalleryManager.updateMetadata(context, photo.id) { current ->
                    current.copy(
                        hasAiDenoisedBase = true,
                        aiDenoiseStrength = strength
                    )
                } ?: run {
                    _isAiDenoising.value = false
                    withContext(Dispatchers.Main) { onComplete(false) }
                    return@launch
                }
                currentMediaMetadata = updatedMetadata
                
                val updatedPhotos = _photos.value.map { p ->
                    if (p.id == photo.id) p.copy(metadata = updatedMetadata) else p
                }
                _photos.value = updatedPhotos
                if (_latestPhoto.value?.id == photo.id) {
                    _latestPhoto.value = _latestPhoto.value?.copy(metadata = updatedMetadata)
                }
                
                photoRefreshKeys[photo.id] = System.currentTimeMillis()
                invalidatePreviewCache(photo.id)
                
                // Clear and rebuild HDR cache so the user sees the new denoised image in HDR view
                GalleryManager.deleteDetailHdrFile(context, photo.id)
                GalleryManager.queueDetailHdrCacheBuild(
                    context = context,
                    photoId = photo.id,
                    metadata = updatedMetadata,
                    sharpening = updatedMetadata.sharpening ?: 0f,
                    noiseReduction = updatedMetadata.noiseReduction ?: 0f,
                    chromaNoiseReduction = updatedMetadata.chromaNoiseReduction ?: 0f
                )
                GalleryManager.updateThumbnail(
                    context = context,
                    photoId = photo.id,
                    photoProcessor = contentRepository.photoProcessor,
                    metadata = updatedMetadata
                )

                _isAiDenoising.value = false
                withContext(Dispatchers.Main) { onComplete(true) }
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to apply DnCNN denoise", e)
                _isAiDenoising.value = false
                withContext(Dispatchers.Main) { onComplete(false) }
            }
        }
    }

    fun resetDnCNNDenoise(photo: MediaData, onComplete: (Boolean) -> Unit = {}) {
        if (_isAiDenoising.value) return
        _isAiDenoising.value = true

        viewModelScope.launch(Dispatchers.IO) {
            val context = getApplication<Application>()
            try {
                GalleryManager.getAiDenoiseFile(context, photo.id).takeIf { it.exists() }?.delete()
                val updatedMetadata = updatePhotoMetadata(photo.id) {
                    it.copy(hasAiDenoisedBase = false, aiDenoiseStrength = 0.0f)
                } ?: run {
                    _isAiDenoising.value = false
                    withContext(Dispatchers.Main) { onComplete(false) }
                    return@launch
                }

                val aperture = updatedMetadata.computationalAperture ?: 0f
                if (aperture > 0f) {
                    val originalBitmap = GalleryManager.loadOriginalBitmap(context, photo.id)
                    if (originalBitmap != null) {
                        GalleryManager.generateBokehPhoto(context, photo.id, updatedMetadata, originalBitmap)
                        if (!originalBitmap.isRecycled) originalBitmap.recycle()
                    }
                } else {
                    GalleryManager.getBokehFile(context, photo.id).takeIf { it.exists() }?.delete()
                }

                GalleryManager.deleteDetailHdrFile(context, photo.id)
                if (updatedMetadata.manualHdrEffectEnabled) {
                    GalleryManager.queueDetailHdrCacheBuild(
                        context = context,
                        photoId = photo.id,
                        metadata = updatedMetadata,
                        sharpening = updatedMetadata.sharpening ?: 0f,
                        noiseReduction = updatedMetadata.noiseReduction ?: 0f,
                        chromaNoiseReduction = updatedMetadata.chromaNoiseReduction ?: 0f
                    )
                }
                GalleryManager.updateThumbnail(
                    context = context,
                    photoId = photo.id,
                    photoProcessor = contentRepository.photoProcessor,
                    metadata = updatedMetadata
                )
                invalidatePreviewCache(photo.id)
                photoRefreshKeys[photo.id] = System.currentTimeMillis()
                _isAiDenoising.value = false
                withContext(Dispatchers.Main) { onComplete(true) }
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to reset AI denoise", e)
                _isAiDenoising.value = false
                withContext(Dispatchers.Main) { onComplete(false) }
            }
        }
    }

    fun hasDepthInfo(photo: MediaData?): Boolean {
        if (photo == null) return false
        if (selectedTab == GalleryTab.SYSTEM) return false
        val context = getApplication<Application>()
        return GalleryManager.getDepthFile(context, photo.id).exists()
    }

    // 最新照片（用于相机界面显示入口）
    private val _latestPhoto = MutableStateFlow<MediaData?>(null)
    val latestPhoto: StateFlow<MediaData?> = _latestPhoto.asStateFlow()

    // 待删除的照片（用于 Activity Result 回调）
    var pendingDeletePhoto: MediaData? by mutableStateOf(null)
        private set

    // 删除请求的 PendingIntent（用于启动系统删除对话框）
    var deletePendingIntent: android.app.PendingIntent? by mutableStateOf(null)
        private set

    // 批量删除相关状态
    private var pendingDeletePhotos: List<MediaData> = emptyList()
    var batchDeletePendingIntent: android.app.PendingIntent? by mutableStateOf(null)
        private set

    init {
        // 检查系统相册权限
        StartupTrace.measure("GalleryViewModel.checkGalleryPermission") {
            checkGalleryPermission()
        }

        refreshLatestPhoto()
        viewModelScope.launch {
            loadPhotos()
        }

        viewModelScope.launch {
            GalleryManager.detailHdrReadyEvents.collect { photoId ->
                invalidatePreviewCache(photoId)
                photoRefreshKeys[photoId] = System.currentTimeMillis()
                PLog.d(TAG, "detail HDR ready, refreshed photo: $photoId")
            }
        }

        viewModelScope.launch {
            GalleryManager.photoLibraryChangedEvents.collect {
                PLog.d(TAG, "photo library changed, reload photon photos")
                loadPhotos()
            }
        }

        viewModelScope.launch {
            GalleryManager.photoThumbnailUpdatedEvents.collect { photoId ->
                invalidateGridThumbnailCache(photoId)
                photoRefreshKeys[photoId] = System.currentTimeMillis()
                PLog.d(TAG, "thumbnail updated, refreshed photo thumbnail: $photoId")
            }
        }

        viewModelScope.launch {
            GalleryManager.preparedPhotoThumbnailEvents.collect { photoId ->
                preparedPhotoThumbnailRefreshKeys[photoId] = System.currentTimeMillis()
                PLog.d(TAG, "prepared thumbnail ready for camera entry: $photoId")
            }
        }

        viewModelScope.launch {
            GalleryManager.photoMetadataUpdatedEvents.collect { update ->
                applyPhotoMetadataUpdateToMemory(update.photoId, update.metadata)
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
                availableLuts = sortedLuts
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
                availableFrames = sortedFrames
            }
        }

        viewModelScope.launch {
            contentRepository.availableDcps.collect { dcps ->
                availableDcps = dcps.sortedBy { it.getName() }
            }
        }

        StartupTrace.mark("GalleryViewModel.init end")
    }

    /**
     * 加载当前选中的 Tab 内容
     */
    suspend fun loadCurrentTabData() {
        when (selectedTab) {
            GalleryTab.SYSTEM -> loadSystemPhotos(reset = true)
            GalleryTab.PHOTON -> loadPhotos(reset = true)
        }
    }

    suspend fun loadCurrentTabMore() {
        // 当前相册列表使用全量加载，底部触发不再追加分页数据。
        hasMoreSystemPhotos = false
        hasMorePhotonPhotos = false
    }

    /**
     * 切换 Tab
     */
    suspend fun selectTab(tab: GalleryTab) {
        if (selectedTab != tab) {
            selectedTab = tab
            loadCurrentTabData()
        }
    }

    /**
     * 检查并更新权限状态
     */
    fun checkGalleryPermission() {
        val context = getApplication<Application>()
        hasGalleryPermission = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            context.checkSelfPermission(android.Manifest.permission.READ_MEDIA_IMAGES) == android.content.pm.PackageManager.PERMISSION_GRANTED &&
                context.checkSelfPermission(android.Manifest.permission.READ_MEDIA_VIDEO) == android.content.pm.PackageManager.PERMISSION_GRANTED
        } else {
            context.checkSelfPermission(android.Manifest.permission.READ_EXTERNAL_STORAGE) == android.content.pm.PackageManager.PERMISSION_GRANTED
        }
        if (hasGalleryPermission && selectedTab == GalleryTab.SYSTEM && _systemPhotos.value.isEmpty()) {
            viewModelScope.launch {
                loadSystemPhotos(reset = true)
            }
        }
    }

    /**
     * 加载系统照片
     */
    suspend fun loadSystemPhotos(reset: Boolean = false) {
        if (!hasGalleryPermission || !reset) return
        loadSystemPhotosInternal()
    }

    private suspend fun loadSystemPhotosInternal() {
        try {
            if (_systemPhotos.value.isEmpty()) {
                _isLoading.value = true
            }
            systemOffset = 0
            hasMoreSystemPhotos = false

            val newPhotos = repository.getAllSystemPhotos()
            _systemPhotos.value = newPhotos
            systemOffset = newPhotos.size
            hasMoreSystemPhotos = false
        } catch (e: Exception) {
            if (e is CancellationException) throw e
            PLog.e(TAG, "Failed to load system photos", e)
        } finally {
            _isLoading.value = false
            _isSystemLoadingMore.value = false
        }
    }

    /**
     * 加载照片列表
     */
    suspend fun loadPhotos(reset: Boolean = true) {
        if (!reset) return
        loadPhotosInternal()
    }

    private suspend fun loadPhotosInternal() {
        try {
            if (_photos.value.isEmpty()) _isLoading.value = true
            photonOffset = 0
            hasMorePhotonPhotos = false

            val newList = repository.getPhotosSync()
            val currentMap = _photos.value.associateBy { it.id }

            // 保留运行时状态和已加载的复杂 metadata，同时刷新列表基础信息。
            val mergedList = newList.map { fresh ->
                currentMap[fresh.id]?.let { existing ->
                    existing.copy(
                        uri = fresh.uri,
                        thumbnailUri = fresh.thumbnailUri,
                        displayName = fresh.displayName,
                        dateAdded = fresh.dateAdded,
                        size = fresh.size,
                        width = fresh.width,
                        height = fresh.height,
                        mediaType = fresh.mediaType,
                        mimeType = fresh.mimeType,
                        durationMs = fresh.durationMs,
                        sourceUri = fresh.sourceUri,
                        isMotionPhoto = fresh.isMotionPhoto,
                        isBurstPhoto = fresh.isBurstPhoto,
                        metadata = fresh.metadata ?: existing.metadata,
                        relatedPhoto = fresh.relatedPhoto
                    )
                } ?: fresh
            }
            _photos.value = mergedList
            updateRawPhotoStates(mergedList)
            photonOffset = mergedList.size
            hasMorePhotonPhotos = false
            _latestPhoto.value = _photos.value.firstOrNull()
        } catch (e: Exception) {
            if (e is CancellationException) throw e
            PLog.e(TAG, "Failed to load photos", e)
        } finally {
            _isLoading.value = false
            _isPhotonLoadingMore.value = false
        }
    }

    private fun removePhotonPhotosFromState(photoIds: Set<String>) {
        if (photoIds.isEmpty()) return
        _photos.update { current -> current.filterNot { it.id in photoIds } }
        selectedPhotos.removeAll { it.id in photoIds }
        photoIds.forEach {
            rawPhotoStates.remove(it)
            invalidateGridThumbnailCache(it)
        }
        _latestPhoto.value = _photos.value.firstOrNull()
        if (currentPhotoIndex >= _photos.value.size) {
            currentPhotoIndex = (_photos.value.size - 1).coerceAtLeast(0)
        }
    }

    private fun removeSystemPhotosFromState(photoIds: Set<String>) {
        if (photoIds.isEmpty()) return
        _systemPhotos.update { current -> current.filterNot { it.id in photoIds } }
        selectedPhotos.removeAll { it.id in photoIds }
        if (currentPhotoIndex >= currentPhotos.value.size) {
            currentPhotoIndex = (currentPhotos.value.size - 1).coerceAtLeast(0)
        }
    }

    private suspend fun updateRawPhotoStates(photos: List<MediaData>) {
        val context = getApplication<Application>()
        val states = withContext(Dispatchers.IO) {
            photos.associate { photo ->
                photo.id to (photo.isImage && GalleryManager.getDngFile(context, photo.id).exists())
            }
        }
        rawPhotoStates.clear()
        rawPhotoStates.putAll(states)
    }

    fun isRawInGallery(photoId: String): Boolean {
        return rawPhotoStates[photoId] == true
    }

    fun getPreparedPhotoThumbnailRefreshKey(photoId: String): Long {
        return preparedPhotoThumbnailRefreshKeys[photoId] ?: 0L
    }

    suspend fun getGridThumbnailBitmap(photo: MediaData): Bitmap? {
        val refreshKey = photoRefreshKeys[photo.id] ?: 0L
        val cacheKey = "${photo.id}_${photo.thumbnailUri}_$refreshKey"
        gridThumbnailCache.get(cacheKey)?.takeIf { !it.isRecycled }?.let { return it }

        return gridThumbnailSemaphore.withPermit {
            gridThumbnailCache.get(cacheKey)?.takeIf { !it.isRecycled }?.let { return@withPermit it }

            withContext(Dispatchers.IO) {
                loadThumbnail(photo)
            }?.also { bitmap ->
                gridThumbnailCache.put(cacheKey, bitmap)
            }
        }
    }

    /**
     * 刷新最新照片
     */
    fun refreshLatestPhoto() {
        viewModelScope.launch {
            val photo = repository.getLatestPhoto()
            photo?.let { latest ->
                _latestPhoto.value = latest
                _photos.update { current ->
                    if (current.none { existing -> existing.id == latest.id }) {
                        listOf(latest) + current
                    } else {
                        current.map { existing -> if (existing.id == latest.id) latest else existing }
                    }
                }
                if (!isEditing && currentPhotoMetadataId == latest.id && latest.metadata != null) {
                    applyMetadataToEditState(latest.metadata)
                }
            }
            if (!_isInitialized.value) {
                _isInitialized.value = true
                StartupTrace.mark("GalleryViewModel.isInitialized set to true")
            }
        }
    }

    private fun applyPhotoMetadataUpdateToMemory(photoId: String, metadata: MediaMetadata) {
        _photos.update { current ->
            current.map { photo ->
                if (photo.id == photoId) photo.withMetadataSnapshot(metadata) else photo
            }
        }
        _latestPhoto.update { latest ->
            if (latest?.id == photoId) latest.withMetadataSnapshot(metadata) else latest
        }

        val isCurrentPhoto = getCurrentPhoto()?.id == photoId
        if (!isCurrentPhoto) return

        val previousMetadata = currentMediaMetadata
        val canRefreshRawDevelopState = rawDevelopEditStateMatches(previousMetadata)
        currentPhotoMetadataId = photoId
        currentMediaMetadata = metadata

        if (!isEditing) {
            applyMetadataToEditState(metadata)
        } else if (canRefreshRawDevelopState) {
            applyRawDevelopMetadataToEditState(metadata)
        }
    }

    private fun rawDevelopEditStateMatches(metadata: MediaMetadata?): Boolean {
        if (metadata == null) return false
        return editRawExposureCompensation.value == (metadata.rawExposureCompensation ?: 0f) &&
            editRawAutoExposure.value == (metadata.rawAutoExposure ?: true) &&
            editRawHighlightsAdjustment.value == (metadata.rawHighlightsAdjustment ?: 0f) &&
            editRawShadowsAdjustment.value == (metadata.rawShadowsAdjustment ?: 0f) &&
            editRawToneMappingParameters.value == metadata.rawToneMappingParameters
    }

    /**
     * 导入从系统相册分享的照片
     */
    fun importSharedImage(uri: Uri, onSuccess: (String) -> Unit = {}) {
        viewModelScope.launch {
            val context = getApplication<Application>()
            val photoId = GalleryManager.importPhoto(context, uri, null)
            if (photoId != null) {
                loadPhotos()
                selectedTab = GalleryTab.PHOTON
                setCurrentPhotoById(photoId)
                onSuccess(photoId)
            }
        }
    }

    /**
     * 批量导入从系统相册分享的照片
     */
    fun importSharedImages(uris: List<Uri>) {
        viewModelScope.launch {
            val context = getApplication<Application>()
            var lastPhotoId: String? = null
            uris.forEach { uri ->
                val id = GalleryManager.importPhoto(context, uri, null)
                if (id != null) lastPhotoId = id
            }
            if (lastPhotoId != null) {
                loadPhotos()
                selectedTab = GalleryTab.PHOTON
                setCurrentPhotoById(lastPhotoId)
            }
        }
    }

    fun openExternalGalleryContent(
        uri: Uri,
        onSuccess: (GalleryTab, String) -> Unit,
        onFallback: () -> Unit = {}
    ) {
        viewModelScope.launch {
            val context = getApplication<Application>()
            PLog.d(TAG, "Open external gallery content: $uri")

            val systemMedia = repository.getSystemMediaByUri(uri)
            if (systemMedia != null) {
                selectedTab = GalleryTab.SYSTEM
                upsertSystemMedia(systemMedia)
                setCurrentSystemPhotoById(systemMedia.id)
                onSuccess(GalleryTab.SYSTEM, systemMedia.id)

                if (hasGalleryPermission && _systemPhotos.value.size <= 1) {
                    loadSystemPhotos(reset = true)
                    setCurrentSystemPhotoById(systemMedia.id)
                }
                return@launch
            }

            loadPhotos(reset = true)
            findPhotonPhotoBySourceUri(uri)?.let { existing ->
                selectedTab = GalleryTab.PHOTON
                setCurrentPhotoById(existing.id)
                onSuccess(GalleryTab.PHOTON, existing.id)
                return@launch
            }

            val importedPhotoId = GalleryManager.importPhoto(context, uri, null)
            if (importedPhotoId != null) {
                loadPhotos(reset = true)
                selectedTab = GalleryTab.PHOTON
                setCurrentPhotoById(importedPhotoId)
                onSuccess(GalleryTab.PHOTON, importedPhotoId)
            } else {
                PLog.w(TAG, "Unable to open or import external gallery content: $uri")
                onFallback()
            }
        }
    }

    private fun upsertSystemMedia(media: MediaData) {
        _systemPhotos.update { current ->
            val existing = current.firstOrNull { it.id == media.id }
            val updatedMedia = if (existing != null) {
                media.copy(
                    metadata = media.metadata ?: existing.metadata,
                    relatedPhoto = existing.relatedPhoto
                )
            } else {
                media
            }
            (listOf(updatedMedia) + current.filterNot { it.id == media.id })
                .sortedByDescending { it.dateAdded }
        }
    }

    private fun linkSystemPhotoToPhoton(systemPhotoId: String, photonPhoto: MediaData) {
        _systemPhotos.update { current ->
            current.map { systemPhoto ->
                if (systemPhoto.id == systemPhotoId) {
                    systemPhoto.copy(relatedPhoto = photonPhoto)
                } else {
                    systemPhoto
                }
            }
        }
    }

    private fun setCurrentSystemPhotoById(id: String) {
        val index = _systemPhotos.value.indexOfFirst { it.id == id }
        if (index != -1) {
            currentPhotoIndex = index
        }
    }

    private fun findPhotonPhotoBySourceUri(uri: Uri): MediaData? {
        val uriString = uri.toString()
        return _photos.value.firstOrNull { photo ->
            photo.sourceUri?.toString() == uriString ||
                photo.metadata?.sourceUri == uriString ||
                photo.metadata?.exportedUris?.contains(uriString) == true
        }
    }

    private fun loadSystemPhotoMetadataForEdit(photo: MediaData): MediaMetadata {
        val context = getApplication<Application>()
        return photo.relatedPhoto?.metadata
            ?: photo.metadata
            ?: runBlocking {
                withContext(Dispatchers.IO) {
                    val uriMetadata = MediaMetadata.fromUri(context, photo.uri)
                    uriMetadata.copy(
                        sourceUri = photo.uri.toString(),
                        mediaType = photo.mediaType,
                        width = photo.width.takeIf { it > 0 } ?: uriMetadata.width,
                        height = photo.height.takeIf { it > 0 } ?: uriMetadata.height,
                        mimeType = photo.mimeType ?: uriMetadata.mimeType,
                        durationMs = photo.durationMs
                    )
                }
            }.also { metadata ->
                photo.metadata = metadata
                _systemPhotos.update { current ->
                    current.map { if (it.id == photo.id) it.withMetadataSnapshot(metadata) else it }
                }
            }
    }

    /**
     * 加载当前照片的元数据
     */
    fun loadCurrentPhotoMetadata() {
        val photo = getCurrentPhoto() ?: return

        // Photon 列表只携带轻量 metadata；只有 currentMediaMetadata 才代表详情所需完整 metadata 已加载。
        if (!isEditing && currentPhotoMetadataId == photo.id && currentMediaMetadata != null) {
            return
        }

        if (selectedTab == GalleryTab.SYSTEM) {
            photo.metadata?.let { m ->
                currentPhotoMetadataId = photo.id
                applyMetadataToEditState(m)
                return
            }
            photo.relatedPhoto?.metadata?.let { m ->
                currentPhotoMetadataId = photo.id
                applyMetadataToEditState(m)
                return
            }
        }

        viewModelScope.launch {
            val context = getApplication<Application>()

            // 在 IO 线程加载元数据
            val metadata = withContext(Dispatchers.IO) {
                if (selectedTab == GalleryTab.SYSTEM) {
                    MediaMetadata.fromUri(context, photo.uri)
                } else {
                    GalleryManager.loadMetadata(context, photo.id)
                }
            }

            // 在主线程更新状态
            applyMetadataToEditState(metadata)

            // 缓存到列表，避免下次滑动到这张图时重复加载
            if (metadata != null) {
                if (selectedTab == GalleryTab.SYSTEM) {
                    _systemPhotos.update { current ->
                        current.map { if (it.id == photo.id) it.withMetadataSnapshot(metadata) else it }
                    }
                } else {
                    _photos.update { current ->
                        current.map { if (it.id == photo.id) it.withMetadataSnapshot(metadata) else it }
                    }
                }
            }
        }
    }

    private fun MediaData.withMetadataSnapshot(metadata: MediaMetadata): MediaData {
        val resolvedWidth = metadata.width.takeIf { it > 0 } ?: width
        val resolvedHeight = metadata.height.takeIf { it > 0 } ?: height
        return copy(
            width = resolvedWidth,
            height = resolvedHeight,
            metadata = metadata
        )
    }

    private fun MediaData.isRawLikeMedia(): Boolean {
        if (!isImage) return false
        val lowerMime = mimeType.orEmpty().lowercase(Locale.US)
        val lowerName = displayName.lowercase(Locale.US)
        return lowerMime.contains("dng") ||
            lowerMime.contains("raw") ||
            lowerName.endsWith(".dng") ||
            lowerName.endsWith(".rw2") ||
            lowerName.endsWith(".arw") ||
            lowerName.endsWith(".cr3")
    }

    private fun restoreCropEditState(photo: MediaData?, metadata: MediaMetadata?) {
        if (metadata == null) {
            editCropRect.value = null
            editCropAspectOption.value = CropAspectOption.Free
            return
        }

        val cw = metadata.width.takeIf { it > 0 } ?: photo?.width ?: 0
        val ch = metadata.height.takeIf { it > 0 } ?: photo?.height ?: 0
        if (metadata.postCropRegion != null && cw > 0 && ch > 0) {
            val cropRect = RectF(
                metadata.postCropRegion.left.toFloat() / cw,
                metadata.postCropRegion.top.toFloat() / ch,
                metadata.postCropRegion.right.toFloat() / cw,
                metadata.postCropRegion.bottom.toFloat() / ch
            )
            editCropRect.value = normalizeEditCropRect(cropRect).also { normalized ->
                if (normalized != cropRect) {
                    PLog.w(TAG, "Normalized invalid crop edit state for ${photo?.id}: $cropRect -> $normalized")
                }
            }

            editCropAspectOption.value = CropAspectOption.Custom(
                metadata.postCropRegion.width().toFloat(),
                metadata.postCropRegion.height().toFloat()
            )
        } else {
            editCropRect.value = null
            editCropAspectOption.value = CropAspectOption.Free
        }
    }

    private fun applyMetadataToEditState(metadata: MediaMetadata?) {
        val photo = getCurrentPhoto()
        currentPhotoMetadataId = photo?.id
        currentMediaMetadata = metadata
        metadata?.let { m ->
            editLutId.value = m.lutId
            editFrameId.value = m.frameId
            editSharpening.value = m.sharpening ?: 0f
            editNoiseReduction.value = m.noiseReduction ?: 0f
            editChromaNoiseReduction.value = m.chromaNoiseReduction ?: 0f
            editRawExposureCompensation.value = m.rawExposureCompensation ?: 0f
            editRawAutoExposure.value = m.rawAutoExposure ?: true
            editRawHighlightsAdjustment.value = m.rawHighlightsAdjustment ?: 0f
            editRawShadowsAdjustment.value = m.rawShadowsAdjustment ?: 0f
            editRawBlackPointCorrection.value = m.rawBlackPointCorrection ?: 0f
            editRawWhitePointCorrection.value = m.rawWhitePointCorrection ?: 0f
            editRawBlackLevelMode.value = m.rawBlackLevelMode ?: RawCfaCorrection.MODE_DEFAULT
            editRawCustomBlackLevel.value = m.rawCustomBlackLevel ?: 0f
            editRawWhiteLevelMode.value = m.rawWhiteLevelMode ?: RawWhiteLevelCorrection.MODE_DEFAULT
            editRawCfaCorrectionMode.value = m.rawCfaCorrectionMode ?: RawCfaCorrection.MODE_DEFAULT
            editRawDcpId.value = m.rawDcpId
            editRawRenderingEngine.value = m.rawRenderingEngine
            editRawToneMappingParameters.value = m.rawToneMappingParameters
            editRawSpectralFilmStock.value = m.spectralFilmStock ?: "kodak_portra_400"
            editRawSpectralFilmPrint.value = m.spectralFilmPrint ?: "kodak_portra_endura"
            editRawSpectralFilmCDensityGain.value = m.spectralFilmCDensityGain
            editRawSpectralFilmMDensityGain.value = m.spectralFilmMDensityGain
            editRawSpectralFilmYDensityGain.value = m.spectralFilmYDensityGain
            _editAiDenoiseStrength.value = if (m.hasAiDenoisedBase) m.aiDenoiseStrength ?: 1.0f else 0.0f
            restoreCropEditState(photo, m)

            // 加载 LUT 配置
            m.lutId?.let { id ->
                viewModelScope.launch {
                    editLutConfig = withContext(Dispatchers.IO) {
                        contentRepository.lutManager.loadLut(id)
                    }
                }
            }
        } ?: run {
            _editAiDenoiseStrength.value = 0.0f
            restoreCropEditState(photo, null)
        }
    }

    fun loadThumbnail(photo: MediaData): Bitmap? {
        val context = getApplication<Application>()
        return try {
            if (photo.isRawLikeMedia()) {
                return GalleryManager.loadBitmap(context, photo.thumbnailUri, maxEdge = 512, preserveHdr = false)
            }
            if (photo.thumbnailUri.scheme == "content") {
                context.contentResolver.loadThumbnail(photo.thumbnailUri, android.util.Size(512, 512), null)
            } else {
                val inputStream = context.contentResolver.openInputStream(photo.thumbnailUri)
                val options = BitmapFactory.Options().apply {
                    // PhotonCamera thumbnails are 512x512, no need to downsample much, but safe is better
                    inJustDecodeBounds = true
                    BitmapFactory.decodeStream(inputStream, null, this)
                    inputStream?.close()

                    inSampleSize = 1
                    if (outWidth > 1024 || outHeight > 1024) {
                        inSampleSize = 2
                    }
                    inJustDecodeBounds = false
                }
                val inputStream2 = context.contentResolver.openInputStream(photo.thumbnailUri)
                val bitmap = BitmapFactory.decodeStream(inputStream2, null, options)
                inputStream2?.close()
                bitmap
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to load thumbnail for ${photo.id}", e)
            null
        }
    }

    /**
     * 进入多选模式
     */
    fun enterSelectionMode() {
        isSelectionMode = true
        selectedPhotos.clear()
    }

    /**
     * 退出多选模式
     */
    fun exitSelectionMode() {
        isSelectionMode = false
        selectedPhotos.clear()
    }

    /**
     * 切换照片选中状态
     */
    fun togglePhotoSelection(photo: MediaData) {
        if (selectedPhotos.contains(photo)) {
            selectedPhotos.remove(photo)
        } else {
            selectedPhotos.add(photo)
        }

        // 如果没有选中的照片，退出多选模式
        if (selectedPhotos.isEmpty()) {
            exitSelectionMode()
        }
    }

    /**
     * 全选/取消全选
     */
    fun toggleSelectAll() {
        if (selectedPhotos.size == _photos.value.size) {
            selectedPhotos.clear()
        } else {
            selectedPhotos.clear()
            selectedPhotos.addAll(_photos.value)
        }
    }

    /**
     * 设置当前查看的照片索引
     */
    fun setCurrentPhoto(index: Int) {
        currentPhotoIndex = index.coerceIn(0, (currentPhotos.value.size - 1).coerceAtLeast(0))
        loadCurrentPhotoMetadata()
    }

    /**
     * 根据 ID 设置当前查看的照片
     */
    fun setCurrentPhotoById(id: String) {
        val index = currentPhotos.value.indexOfFirst { it.id == id }
        if (index != -1) {
            setCurrentPhoto(index)
        } else {
            // 如果 combine 后的列表还没更新，尝试从原始列表中查找
            val photoIndex = _photos.value.indexOfFirst { it.id == id }
            if (photoIndex != -1) {
                setCurrentPhoto(photoIndex)
            }
        }
    }

    /**
     * 获取当前照片
     */
    fun getCurrentPhoto(): MediaData? {
        return currentPhotos.value.getOrNull(currentPhotoIndex)
    }

    /**
     * 获取删除系统相册照片的请求 PendingIntent（用于 Android 11+）
     *
     * @return PendingIntent 如果有导出的照片需要删除，返回 PendingIntent；否则返回 null
     */
    private fun getDeleteRequest(photo: MediaData): android.app.PendingIntent? {
        val context = getApplication<Application>()
        return GalleryManager.createDeleteRequest(context, photo.id)
    }

    /**
     * 请求删除照片
     *
     * 这个方法会：
     * 1. 如果 deleteExported == false，直接删除应用内部照片，不触发系统删除对话框
     * 2. 如果 deleteExported == true 且在 Android 11+ 上，检查是否有导出的照片需要删除
     * 3. 如果有导出的照片，设置 deletePendingIntent 和 pendingDeletePhoto，UI 层需要监听这些状态并启动删除确认对话框
     * 4. 如果没有导出的照片，或者在 Android 10 及以下，直接删除照片
     */
    fun requestDeletePhoto(photo: MediaData, deleteExported: Boolean = true) {
        if (selectedTab == GalleryTab.SYSTEM) {
            // 系统相册删除
            val pendingIntent = GalleryManager.createSystemDeleteRequest(getApplication(), photo.uri)
            if (pendingIntent != null) {
                pendingDeleteSystemPhoto = photo
                systemDeletePendingIntent = pendingIntent
                PLog.d(TAG, "Set system delete pending intent for photo ${photo.id}")
            }
            return
        }

        if (!deleteExported) {
            // 不删除系统相册照片，直接删除应用内部照片
            deletePhotoOnlyInternal(photo)
            return
        }

        // Android 11+: 检查是否有导出的照片
        val pendingIntent = getDeleteRequest(photo)

        if (pendingIntent != null) {
            // 有导出的照片，需要用户确认
            pendingDeletePhoto = photo
            deletePendingIntent = pendingIntent
            PLog.d(TAG, "Set delete pending intent for photo ${photo.id}")
        } else {
            // 没有需要系统确认的 MediaStore 项，直接删除 SAF 导出文件和应用内照片
            deletePhotoOnlyInternal(photo, deleteExportedDocuments = true)
        }
    }

    /**
     * 仅删除应用内部照片（不删除系统相册）
     */
    private fun deletePhotoOnlyInternal(
        photo: MediaData,
        deleteExportedDocuments: Boolean = false
    ) {
        viewModelScope.launch {
            val context = getApplication<Application>()
            val success = withContext(Dispatchers.IO) {
                if (deleteExportedDocuments) {
                    GalleryManager.deleteExportedDocumentUris(context, photo.id)
                }
                GalleryManager.deletePhotoOnly(context, photo.id)
            }
            if (success) {
                removePhotonPhotosFromState(setOf(photo.id))
                loadPhotosInternal()
                // 如果删除的是当前照片，调整索引
                if (photo == getCurrentPhoto() && currentPhotoIndex >= _photos.value.size) {
                    currentPhotoIndex = (_photos.value.size - 1).coerceAtLeast(0)
                }
                PLog.d(TAG, "Photo deleted (app only): ${photo.id}")
            } else {
                PLog.e(TAG, "Failed to delete photo: ${photo.id}")
            }
        }
    }

    /**
     * 清除删除请求状态
     */
    fun clearDeleteRequest() {
        pendingDeletePhoto = null
        deletePendingIntent = null
        pendingDeleteSystemPhoto = null
        systemDeletePendingIntent = null
    }

    /**
     * 清除批量删除请求状态
     */
    fun clearBatchDeleteRequest() {
        pendingDeletePhotos = emptyList()
        batchDeletePendingIntent = null
    }

    /**
     * 仅删除应用内部的照片（在用户确认删除系统相册照片后调用）
     */
    fun deletePhotoAfterConfirmation(onComplete: (Boolean) -> Unit = {}) {
        val photo = pendingDeletePhoto ?: return
        viewModelScope.launch {
            val context = getApplication<Application>()
            val success = withContext(Dispatchers.IO) {
                GalleryManager.deleteExportedDocumentUris(context, photo.id)
                GalleryManager.deletePhotoOnly(context, photo.id)
            }
            if (success) {
                removePhotonPhotosFromState(setOf(photo.id))
                loadPhotosInternal()

                // 如果删除的是当前照片，调整索引
                if (photo == getCurrentPhoto() && currentPhotoIndex >= _photos.value.size) {
                    currentPhotoIndex = (_photos.value.size - 1).coerceAtLeast(0)
                }

                PLog.d(TAG, "Photo deleted after confirmation: ${photo.id}")
            }
            clearDeleteRequest()
            onComplete(success)
        }
    }

    /**
     * 系统相册照片删除确认后的回调
     */
    fun deleteSystemPhotoAfterConfirmation(onComplete: (Boolean) -> Unit = {}) {
        viewModelScope.launch {
            pendingDeleteSystemPhoto?.relatedPhoto?.takeIf { it.isVideo }?.let { relatedVideo ->
                withContext(Dispatchers.IO) {
                    GalleryManager.deletePhotoOnly(getApplication(), relatedVideo.id)
                }
                removePhotonPhotosFromState(setOf(relatedVideo.id))
                loadPhotosInternal()
            }
            pendingDeleteSystemPhoto?.let { removeSystemPhotosFromState(setOf(it.id)) }
            // 系统照片已经被 MediaStore 删除，我们只需要刷新列表
            loadSystemPhotosInternal()

            // 调整索引
            if (currentPhotoIndex >= currentPhotos.value.size) {
                currentPhotoIndex = (currentPhotos.value.size - 1).coerceAtLeast(0)
            }

            clearDeleteRequest()
            onComplete(true)
        }
    }

    /**
     * 设为连拍主图
     */
    fun setMainBurstPhoto(photo: MediaData, burstFile: File, onComplete: (Boolean) -> Unit) {
        viewModelScope.launch {
            val context = getApplication<Application>()
            val success = GalleryManager.setMainBurstPhoto(context, photo.id, burstFile)
            if (success) {
                photoRefreshKeys[photo.id] = System.currentTimeMillis()
                loadPhotos()
            }
            withContext(Dispatchers.Main) {
                onComplete(success)
            }
        }
    }

    fun setDeleteExported(enabled: Boolean) {
        viewModelScope.launch {
            userPreferencesRepository.saveDeleteExported(enabled)
        }
    }

    /**
     * 批量删除选中的照片
     *
     * @param deleteExported 是否同时删除系统相册中的导出图片
     * - true: Android 11+ 会使用 MediaStore.createDeleteRequest 弹出系统确认对话框
     * - false: 只删除应用内部照片，不删除系统相册
     */
    fun deleteSelectedPhotos(deleteExported: Boolean = true) {
        val toDelete = selectedPhotos.toList()
        if (toDelete.isEmpty()) return

        if (selectedTab == GalleryTab.SYSTEM) {
            // 系统相册批量删除
            viewModelScope.launch {
                val context = getApplication<Application>()
                val uris = toDelete.mapNotNull { photo ->
                    val uri = photo.uri
                    if (uri.scheme == "content") uri else {
                        PLog.w(TAG, "Ignoring non-content URI in system delete: $uri")
                        null
                    }
                }

                if (uris.isEmpty()) {
                    exitSelectionMode()
                    return@launch
                }

                try {
                    val pendingIntent = MediaStore.createDeleteRequest(
                        context.contentResolver,
                        uris
                    )
                    pendingDeletePhotos = toDelete
                    batchDeletePendingIntent = pendingIntent
                    PLog.d(
                        TAG,
                        "Set system batch delete pending intent for ${toDelete.size} photos"
                    )
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to create system batch delete request", e)
                }
            }
            return
        }

        if (!deleteExported) {
            // 不删除系统相册照片，直接删除应用内部照片
            deleteBatchPhotosOnlyInternal(toDelete)
            return
        }

        // Android 11+: 收集所有导出的 URIs
        viewModelScope.launch {
            val context = getApplication<Application>()
            val allExportedUris = mutableListOf<Uri>()

            withContext(Dispatchers.IO) {
                toDelete.forEach { photo ->
                    val metadata = GalleryManager.loadMetadata(context, photo.id)
                    metadata?.exportedUris?.forEach { uriString ->
                        try {
                            allExportedUris.add(uriString.toUri())
                        } catch (e: Exception) {
                            PLog.e(TAG, "Invalid URI: $uriString", e)
                        }
                    }
                    val sourceUri = metadata?.sourceUri
                    val shouldDeleteSourceUri = metadata != null &&
                        !metadata.isImported &&
                        !sourceUri.isNullOrBlank() &&
                        (metadata.mediaType == MediaType.VIDEO || metadata.captureMode == "quick_shot")
                    if (shouldDeleteSourceUri) {
                        try {
                            allExportedUris.add(sourceUri.toUri())
                        } catch (e: Exception) {
                            PLog.e(TAG, "Invalid sourceUri: $sourceUri", e)
                        }
                    }
                }
            }

            if (allExportedUris.isNotEmpty()) {
                // MediaStore 导出项需要系统确认；SAF 文档会在最终删除时直接处理
                val pendingIntent = GalleryManager.createDeleteRequest(context, allExportedUris)
                if (pendingIntent != null) {
                    pendingDeletePhotos = toDelete
                    batchDeletePendingIntent = pendingIntent
                    PLog.d(TAG, "Set batch delete pending intent for ${toDelete.size} photos")
                } else {
                    // 没有需要系统确认的 MediaStore 项，直接删除应用内照片
                    deleteBatchPhotosOnlyInternal(toDelete, deleteExportedDocuments = true)
                }
            } else {
                // 没有导出的照片，直接删除应用内照片
                deleteBatchPhotosOnlyInternal(toDelete)
            }
        }
    }

    /**
     * 仅删除应用内部照片（批量，不删除系统相册）
     */
    private fun deleteBatchPhotosOnlyInternal(
        photos: List<MediaData>,
        deleteExportedDocuments: Boolean = false
    ) {
        viewModelScope.launch {
            val context = getApplication<Application>()
            var deletedCount = 0
            val deletedIds = mutableSetOf<String>()

            withContext(Dispatchers.IO) {
                photos.forEach { photo ->
                    if (deleteExportedDocuments) {
                        GalleryManager.deleteExportedDocumentUris(context, photo.id)
                    }
                    val success = GalleryManager.deletePhotoOnly(context, photo.id)
                    if (success) {
                        deletedCount++
                        deletedIds.add(photo.id)
                    }
                }
            }

            exitSelectionMode()
            removePhotonPhotosFromState(deletedIds)
            loadPhotosInternal()
            PLog.d(TAG, "Batch deleted $deletedCount photos (app only)")
        }
    }

    /**
     * 批量删除确认后的回调（在用户确认删除系统相册照片后调用）
     */
    fun deleteBatchPhotosAfterConfirmation(onComplete: (Int) -> Unit = {}) {
        val photos = pendingDeletePhotos
        if (photos.isEmpty()) return

        viewModelScope.launch {
            if (selectedTab == GalleryTab.SYSTEM) {
                val relatedPhotonVideos = photos.mapNotNull { it.relatedPhoto }.filter { it.isVideo }
                if (relatedPhotonVideos.isNotEmpty()) {
                    val context = getApplication<Application>()
                    withContext(Dispatchers.IO) {
                        relatedPhotonVideos.forEach { GalleryManager.deletePhotoOnly(context, it.id) }
                    }
                    removePhotonPhotosFromState(relatedPhotonVideos.map { it.id }.toSet())
                    loadPhotosInternal()
                }
                removeSystemPhotosFromState(photos.map { it.id }.toSet())
                // 系统相册刷新
                loadSystemPhotosInternal()
            } else {
                // 原有的内部照片删除逻辑
                val context = getApplication<Application>()
                var deletedCount = 0
                val deletedIds = mutableSetOf<String>()

                withContext(Dispatchers.IO) {
                    photos.forEach { photo ->
                        GalleryManager.deleteExportedDocumentUris(context, photo.id)
                        val success = GalleryManager.deletePhotoOnly(context, photo.id)
                        if (success) {
                            deletedCount++
                            deletedIds.add(photo.id)
                        }
                    }
                }
                removePhotonPhotosFromState(deletedIds)
                loadPhotosInternal()
                PLog.d(TAG, "Batch deleted $deletedCount internal photos after confirmation")
            }

            exitSelectionMode()
            clearBatchDeleteRequest()
            onComplete(photos.size)
        }
    }

    /**
     * 获取 Motion Photo 视频文件
     */
    fun getMotionPhotoVideo(photo: MediaData): File? {
        val context = getApplication<Application>()
        val videoFile = GalleryManager.getVideoFile(context, photo.id)
        return if (videoFile.exists()) videoFile else null
    }

    /**
     * 分享照片
     */
    fun sharePhoto(photo: MediaData) {
        viewModelScope.launch {
            _isSharing.value = true
            try {
                val context = getApplication<Application>()
                val shareRequest = prepareShareRequest(photo)
                if (shareRequest != null) {
                    val shareIntent = Intent(Intent.ACTION_SEND).apply {
                        type = shareRequest.mimeType
                        putExtra(Intent.EXTRA_STREAM, shareRequest.uri)
                        addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                    }
                    context.startActivity(
                        Intent.createChooser(shareIntent, null).apply {
                            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        }
                    )
                }
            } finally {
                _isSharing.value = false
            }
        }
    }

    /**
     * 批量分享选中的照片
     */
    fun shareSelectedPhotos() {
        val photosToShare = selectedPhotos.toList()
        if (photosToShare.isEmpty()) return

        viewModelScope.launch {
            _isSharing.value = true
            try {
                val context = getApplication<Application>()
                val requests = photosToShare.mapNotNull { prepareShareRequest(it) }
                if (requests.isNotEmpty()) {
                    val uris = ArrayList(requests.map { it.uri })
                    val mimeType = if (requests.any { it.mimeType.startsWith("video/") }) {
                        "*/*"
                    } else {
                        "image/jpeg"
                    }

                    val shareIntent = Intent(Intent.ACTION_SEND_MULTIPLE).apply {
                        type = mimeType
                        putParcelableArrayListExtra(Intent.EXTRA_STREAM, uris)
                        addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                    }
                    val chooser = Intent.createChooser(shareIntent, null).apply {
                        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                    }
                    context.startActivity(chooser)
                }
            } finally {
                _isSharing.value = false
            }
        }
    }

    private fun applyRawDevelopMetadataToEditState(metadata: MediaMetadata) {
        editRawExposureCompensation.value = metadata.rawExposureCompensation ?: 0f
        editRawAutoExposure.value = metadata.rawAutoExposure ?: true
        editRawHighlightsAdjustment.value = metadata.rawHighlightsAdjustment ?: 0f
        editRawShadowsAdjustment.value = metadata.rawShadowsAdjustment ?: 0f
        editRawToneMappingParameters.value = metadata.rawToneMappingParameters
    }

    /**
     * 进入编辑模式
     */
    fun enterEditMode() {
        val targetPhoto = getCurrentPhoto() ?: return

        if (currentMediaMetadata == null || currentPhotoMetadataId != targetPhoto.id) {
            val context = getApplication<Application>()
            val metadata = if (selectedTab == GalleryTab.PHOTON) {
                runBlocking {
                    withContext(Dispatchers.IO) {
                        GalleryManager.loadMetadata(context, targetPhoto.id)
                    }
                }
            } else {
                loadSystemPhotoMetadataForEdit(targetPhoto)
            }
            applyMetadataToEditState(metadata)
        }

        isEditing = true
        // 从当前元数据恢复编辑状态
        currentMediaMetadata?.let { metadata ->
            editLutId.value = metadata.lutId
            editFrameId.value = metadata.frameId
            editPhotoRecipeParams.value = metadata.colorRecipeParams
            editApplyEffectsToVideo.value = metadata.applyEffectsToVideo
            
            if (!targetPhoto.isVideo) {
                editRawDcpId.value = metadata.rawDcpId
                editRawBaselineLutId.value = metadata.baselineLutId
                editRawRenderingEngine.value = metadata.rawRenderingEngine
                editRawToneMappingParameters.value = metadata.rawToneMappingParameters
                editRawSpectralFilmStock.value = metadata.spectralFilmStock ?: "kodak_portra_400"
                editRawSpectralFilmPrint.value = metadata.spectralFilmPrint ?: "kodak_portra_endura"
                editRawSpectralFilmCDensityGain.value = metadata.spectralFilmCDensityGain
                editRawSpectralFilmMDensityGain.value = metadata.spectralFilmMDensityGain
                editRawSpectralFilmYDensityGain.value = metadata.spectralFilmYDensityGain
                restoreCropEditState(targetPhoto, metadata)
                // 智能初始化：导入的照片默认值为 0，App 拍摄的则回退到当前全局配置
                editSharpening.value =
                    metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening.value)
                editNoiseReduction.value =
                    metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction.value)
                editChromaNoiseReduction.value =
                    metadata.chromaNoiseReduction
                        ?: (if (metadata.isImported) 0f else chromaNoiseReduction.value)
                editRawExposureCompensation.value = metadata.rawExposureCompensation ?: 0f
                editRawAutoExposure.value = metadata.rawAutoExposure ?: true
                editRawHighlightsAdjustment.value = metadata.rawHighlightsAdjustment ?: 0f
                editRawShadowsAdjustment.value = metadata.rawShadowsAdjustment ?: 0f
                editRawBlackPointCorrection.value = metadata.rawBlackPointCorrection ?: 0f
                editRawWhitePointCorrection.value = metadata.rawWhitePointCorrection ?: 0f
                editRawBlackLevelMode.value = metadata.rawBlackLevelMode ?: RawCfaCorrection.MODE_DEFAULT
                editRawCustomBlackLevel.value = metadata.rawCustomBlackLevel ?: 0f
                editRawWhiteLevelMode.value = metadata.rawWhiteLevelMode ?: RawWhiteLevelCorrection.MODE_DEFAULT
                editRawCfaCorrectionMode.value = metadata.rawCfaCorrectionMode ?: RawCfaCorrection.MODE_DEFAULT
                editRawDROMode.value = RawProcessingPreferences.DROMode.fromPersistedName(metadata.droMode).name
                editComputationalAperture.value = metadata.computationalAperture
                editFocusPointX.value = metadata.focusPointX
                editFocusPointY.value = metadata.focusPointY
            }
        } ?: run {
            editLutId.value = null
            editFrameId.value = null
            editApplyEffectsToVideo.value = false
            
            if (!targetPhoto.isVideo) {
                // 这里一般是本 App 预览或拍摄进入，保持跟随全局
                editSharpening.value = sharpening.value
                editNoiseReduction.value = noiseReduction.value
                editChromaNoiseReduction.value = chromaNoiseReduction.value
                editRawExposureCompensation.value = 0f
                editRawAutoExposure.value = true
                editRawHighlightsAdjustment.value = 0f
                editRawShadowsAdjustment.value = 0f
                editRawBlackPointCorrection.value = 0f
                editRawWhitePointCorrection.value = 0f
                editRawBlackLevelMode.value = RawCfaCorrection.MODE_DEFAULT
                editRawCustomBlackLevel.value = 0f
                editRawWhiteLevelMode.value = RawWhiteLevelCorrection.MODE_DEFAULT
                editRawCfaCorrectionMode.value = RawCfaCorrection.MODE_DEFAULT
                editRawDROMode.value = "OFF"
                editRawDcpId.value = null
                editRawBaselineLutId.value = null
                editRawRenderingEngine.value = RawRenderingEngine.AdobeCurve
                editRawToneMappingParameters.value = RawToneMappingParameters.DEFAULT
                editRawSpectralFilmStock.value = "kodak_portra_400"
                editRawSpectralFilmPrint.value = "kodak_portra_endura"
                editRawSpectralFilmCDensityGain.value = 1f
                editRawSpectralFilmMDensityGain.value = 1f
                editRawSpectralFilmYDensityGain.value = 1f
                editComputationalAperture.value = null
                editFocusPointX.value = null
                editFocusPointY.value = null
                restoreCropEditState(targetPhoto, null)
            }
        }

        // 加载当前编辑的 LUT 配置
        editLutId.value?.let { id ->
            viewModelScope.launch {
                editLutConfig = withContext(Dispatchers.IO) {
                    contentRepository.lutManager.loadLut(id)
                }
            }
        }
    }

    fun prepareCurrentPhotoForEdit(
        index: Int,
        onReady: () -> Unit,
        onFailure: () -> Unit = {}
    ) {
        viewModelScope.launch {
            setCurrentPhoto(index)
            val requestedPhoto = getCurrentPhoto()
            if (requestedPhoto == null) {
                onFailure()
                return@launch
            }

            preparingEditPhotoId = requestedPhoto.id
            try {
                val prepared = preparePhotoForEdit(requestedPhoto)
                if (prepared) {
                    enterEditMode()
                    onReady()
                } else {
                    onFailure()
                }
            } finally {
                preparingEditPhotoId = null
            }
        }
    }

    private suspend fun preparePhotoForEdit(photo: MediaData): Boolean {
        if (selectedTab != GalleryTab.SYSTEM || !photo.isRawLikeMedia()) return true

        val context = getApplication<Application>()
        loadPhotos(reset = true)
        val importedPhotoId = photo.relatedPhoto?.id
            ?: findPhotonPhotoBySourceUri(photo.uri)?.id
            ?: GalleryManager.importPhoto(context, photo.uri, null)

        if (importedPhotoId == null) {
            PLog.w(TAG, "Unable to import system RAW for editing: ${photo.uri}")
            return false
        }

        loadPhotos(reset = true)
        val importedPhoto = _photos.value.firstOrNull { it.id == importedPhotoId }
        if (importedPhoto != null) {
            linkSystemPhotoToPhoton(photo.id, importedPhoto)
        }
        GalleryManager.loadMetadata(context, importedPhotoId)?.let { metadata ->
            applyPhotoMetadataUpdateToMemory(importedPhotoId, metadata)
            applyMetadataToEditState(metadata)
            _photos.value.firstOrNull { it.id == importedPhotoId }?.let { updatedPhoto ->
                linkSystemPhotoToPhoton(photo.id, updatedPhoto)
            }
        }
        return true
    }

    /**
     * 退出编辑模式
     */
    fun exitEditMode() {
        isEditing = false
        editLutId.value = null
        editLutConfig = null
        editFrameId.value = null
        editPhotoRecipeParams.value = null
        editApplyEffectsToVideo.value = false
        editCropRect.value = null
        editCropAspectOption.value = CropAspectOption.Free
        editRawExposureCompensation.value = 0f
        editRawAutoExposure.value = true
        editRawHighlightsAdjustment.value = 0f
        editRawShadowsAdjustment.value = 0f
        editRawBlackPointCorrection.value = 0f
        editRawWhitePointCorrection.value = 0f
        editRawBlackLevelMode.value = RawCfaCorrection.MODE_DEFAULT
        editRawCustomBlackLevel.value = 0f
        editRawWhiteLevelMode.value = RawWhiteLevelCorrection.MODE_DEFAULT
        editRawCfaCorrectionMode.value = RawCfaCorrection.MODE_DEFAULT
        editRawDROMode.value = "OFF"
        editRawDcpId.value = null
        editRawBaselineLutId.value = null
        editRawRenderingEngine.value = RawRenderingEngine.AdobeCurve
        editRawToneMappingParameters.value = RawToneMappingParameters.DEFAULT
        editRawSpectralFilmStock.value = null
        editRawSpectralFilmPrint.value = null
        editRawSpectralFilmCDensityGain.value = 1f
        editRawSpectralFilmMDensityGain.value = 1f
        editRawSpectralFilmYDensityGain.value = 1f
    }

    /**
     * 设置照片级别的色彩配方覆盖（null = 清除覆盖，跟随 LUT 默认）
     */
    fun setPhotoRecipeParams(params: ColorRecipeParams?) {
        editPhotoRecipeParams.value = params
    }

    fun setPhotoEffectParams(params: EffectParams, baseRecipeOverride: ColorRecipeParams? = null) {
        val baseRecipe = baseRecipeOverride ?: editPhotoRecipeParams.value ?: editLutRecipeParams.value
        editPhotoRecipeParams.value = params.applyTo(baseRecipe)
    }

    /**
     * 设置 LUT
     */
    fun setEditLut(lutId: String?) {
        if (editLutId.value != lutId) {
            editPhotoRecipeParams.value = null
        }
        editLutId.value = lutId
        if (lutId == null) {
            editLutConfig = null
            return
        }

        viewModelScope.launch {
            editLutConfig = withContext(Dispatchers.IO) {
                contentRepository.lutManager.loadLut(lutId)
            }
        }
    }

    fun switchToNextLut() {
        if (availableLuts.isEmpty()) return
        val currentLut = editLutId.value
        val currentIndex = availableLuts.indexOfFirst { it.id == currentLut }
        val nextIndex = (currentIndex + 1) % availableLuts.size
        setEditLut(availableLuts[nextIndex].id)
    }

    fun switchToPreviousLut() {
        if (availableLuts.isEmpty()) return
        val currentLut = editLutId.value
        val currentIndex = availableLuts.indexOfFirst { it.id == currentLut }
        val prevIndex = if (currentIndex <= 0) availableLuts.size - 1 else currentIndex - 1
        setEditLut(availableLuts[prevIndex].id)
    }


    /**
     * 设置边框
     */
    fun setEditFrame(frameId: String?) {
        editFrameId.value = frameId
    }

    suspend fun getEditCustomProperties(frameId: String): Map<String, String> {
        return contentRepository.frameManager.loadCustomProperties(frameId)
    }

    /**
     * 保存当前边框的自定义属性到持久化存储
     */
    fun saveEditCustomProperties(properties: Map<String, String>) {
        currentMediaMetadata = currentMediaMetadata?.copy(
            customProperties = properties
        )
        viewModelScope.launch {
            editFrameId.value?.let {
                contentRepository.frameManager.saveCustomProperties(
                    it,
                    properties
                )
            }
        }
    }

    /**
     * 设置锐化强度
     */
    fun setSharpening(value: Float) {
        editSharpening.value = value
    }

    /**
     * 设置降噪强度
     */
    fun setNoiseReduction(value: Float) {
        editNoiseReduction.value = value
    }

    /**
     * 设置减少杂色强度
     */
    fun setChromaNoiseReduction(value: Float) {
        editChromaNoiseReduction.value = value
    }

    private suspend fun loadRawBaselineRecipeParams(lutId: String?): ColorRecipeParams? {
        return lutId?.let {
            contentRepository.lutManager.loadColorRecipeParams(
                it,
                BaselineColorCorrectionTarget.RAW
            )
        }
    }

    private fun persistRawEditMetadata(
        mediaData: MediaData,
        onComplete: ((Boolean) -> Unit)? = null,
        enableHdrGainmapForGoogleToneMap: Boolean = false
    ) {
        val sharpening = editSharpening.value
        val noiseReduction = editNoiseReduction.value
        val chromaNoiseReduction = editChromaNoiseReduction.value
        val exposure = editRawExposureCompensation.value
        val autoExposure = editRawAutoExposure.value
        val highlights = editRawHighlightsAdjustment.value
        val shadows = editRawShadowsAdjustment.value
        val blackPoint = editRawBlackPointCorrection.value
        val whitePoint = editRawWhitePointCorrection.value
        val droMode = editRawDROMode.value
        val blackLevelMode = editRawBlackLevelMode.value
        val customBlackLevel = editRawCustomBlackLevel.value
        val whiteLevelMode = editRawWhiteLevelMode.value
        val cfaCorrectionMode = editRawCfaCorrectionMode.value
        val dcpId = editRawDcpId.value
        val baselineLutId = editRawBaselineLutId.value
        val rawColorEngine = editRawRenderingEngine.value
        val rawToneMappingParameters = editRawToneMappingParameters.value.normalized()
        val spectralFilmStock = editRawSpectralFilmStock.value
        val spectralFilmPrint = editRawSpectralFilmPrint.value
        val spectralFilmCDensityGain = editRawSpectralFilmCDensityGain.value
        val spectralFilmMDensityGain = editRawSpectralFilmMDensityGain.value
        val spectralFilmYDensityGain = editRawSpectralFilmYDensityGain.value

        viewModelScope.launch {
            val context = getApplication<Application>()
            val baselineRecipeParams = loadRawBaselineRecipeParams(baselineLutId)
            PLog.d(
                TAG,
                "persist RAW edit metadata: ${mediaData.id}, dro=$droMode, noise=$noiseReduction, " +
                    "chromaNoise=$chromaNoiseReduction, googlePixelToneMap=${rawToneMappingParameters.useGooglePixelToneMap}"
            )
            val updated = GalleryManager.updateMetadata(context, mediaData.id) { current ->
                current.copy(
                    sharpening = sharpening,
                    noiseReduction = noiseReduction,
                    chromaNoiseReduction = chromaNoiseReduction,
                    rawExposureCompensation = exposure,
                    rawAutoExposure = autoExposure,
                    rawHighlightsAdjustment = highlights,
                    rawShadowsAdjustment = shadows,
                    rawBlackPointCorrection = blackPoint,
                    rawWhitePointCorrection = whitePoint,
                    rawBlackLevelMode = blackLevelMode,
                    rawCustomBlackLevel = customBlackLevel,
                    rawWhiteLevelMode = whiteLevelMode,
                    rawCfaCorrectionMode = cfaCorrectionMode,
                    droMode = droMode,
                    rawDcpId = dcpId,
                    baselineTarget = baselineLutId?.let { BaselineColorCorrectionTarget.RAW },
                    baselineLutId = baselineLutId,
                    baselineColorRecipeParams = baselineRecipeParams,
                    rawRenderingEngine = rawColorEngine,
                    rawToneMappingParameters = rawToneMappingParameters,
                    manualHdrEffectEnabled = current.manualHdrEffectEnabled || enableHdrGainmapForGoogleToneMap,
                    spectralFilmStock = spectralFilmStock,
                    spectralFilmPrint = spectralFilmPrint,
                    spectralFilmCDensityGain = spectralFilmCDensityGain,
                    spectralFilmMDensityGain = spectralFilmMDensityGain,
                    spectralFilmYDensityGain = spectralFilmYDensityGain
                )
            }
            withContext(Dispatchers.Main) {
                if (updated != null) {
                    withContext(Dispatchers.IO) {
                        GalleryManager.patchDngCorrections(context, mediaData.id, updated)
                    }
                    invalidatePreviewCache(mediaData.id)
                    GalleryManager.deleteDetailHdrFile(context, mediaData.id)
                    if (currentPhotoMetadataId == mediaData.id || currentMediaMetadata != null) {
                        currentMediaMetadata = updated
                        currentPhotoMetadataId = mediaData.id
                    }
                    mediaData.metadata = updated
                    _photos.value = _photos.value.map { photo ->
                        if (photo.id == mediaData.id) photo.copy(metadata = updated) else photo
                    }
                    if (_latestPhoto.value?.id == mediaData.id) {
                        _latestPhoto.value = _latestPhoto.value?.copy(metadata = updated)
                    }
                    photoRefreshKeys[mediaData.id] = System.currentTimeMillis()
                }
                onComplete?.invoke(updated != null)
            }
        }
    }

    fun persistCurrentRawEditMetadata(mediaData: MediaData, onComplete: ((Boolean) -> Unit)? = null) {
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawToneMappingParameters(
        mediaData: MediaData,
        value: RawToneMappingParameters,
        onComplete: ((Boolean) -> Unit)? = null
    ) {
        val previous = editRawToneMappingParameters.value.normalized()
        val updated = value.normalized()
        val shouldEnableHdrGainmap = !previous.useGooglePixelToneMap && updated.useGooglePixelToneMap
        editRawToneMappingParameters.value = updated
        persistRawEditMetadata(
            mediaData = mediaData,
            onComplete = onComplete,
            enableHdrGainmapForGoogleToneMap = shouldEnableHdrGainmap
        )
    }

    fun saveRawExposureCompensationValue(mediaData: MediaData, value: Float, onComplete: ((Boolean) -> Unit)? = null) {
        editRawExposureCompensation.value = value
        if (value != 0f) {
            editRawAutoExposure.value = false
        }
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun resetRawExposureCompensationValue(mediaData: MediaData, onComplete: ((Boolean) -> Unit)? = null) {
        editRawAutoExposure.value = false
        editRawExposureCompensation.value = 0f
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawAutoExposureValue(mediaData: MediaData, enabled: Boolean, onComplete: ((Boolean) -> Unit)? = null) {
        editRawAutoExposure.value = enabled
        if (enabled) {
            editRawExposureCompensation.value = 0f
        }
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawHighlightsAdjustmentValue(mediaData: MediaData, value: Float, onComplete: ((Boolean) -> Unit)? = null) {
        editRawHighlightsAdjustment.value = value
        if (value != 0f) {
            editRawAutoExposure.value = false
        }
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawShadowsAdjustmentValue(mediaData: MediaData, value: Float, onComplete: ((Boolean) -> Unit)? = null) {
        editRawShadowsAdjustment.value = value
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawDROModeValue(mediaData: MediaData, mode: String, onComplete: ((Boolean) -> Unit)? = null) {
        val resolvedMode = RawProcessingPreferences.DROMode.fromPersistedName(mode)
        editRawDROMode.value = resolvedMode.name
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawBlackPointCorrectionValue(mediaData: MediaData, value: Float, onComplete: ((Boolean) -> Unit)? = null) {
        editRawBlackPointCorrection.value = value
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawWhitePointCorrectionValue(mediaData: MediaData, value: Float, onComplete: ((Boolean) -> Unit)? = null) {
        editRawWhitePointCorrection.value = value
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawBlackLevelMode(mediaData: MediaData, mode: String, onComplete: ((Boolean) -> Unit)? = null) {
        editRawBlackLevelMode.value = mode
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawCustomBlackLevel(mediaData: MediaData, value: Float, onComplete: ((Boolean) -> Unit)? = null) {
        editRawCustomBlackLevel.value = value
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawWhiteLevelMode(mediaData: MediaData, mode: String, onComplete: ((Boolean) -> Unit)? = null) {
        editRawWhiteLevelMode.value = mode
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawCfaCorrectionMode(mediaData: MediaData, mode: String, onComplete: ((Boolean) -> Unit)? = null) {
        editRawCfaCorrectionMode.value = mode
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawDcpSelection(mediaData: MediaData, dcpId: String?, onComplete: ((Boolean) -> Unit)? = null) {
        editRawDcpId.value = dcpId
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawBaselineLutSelection(mediaData: MediaData, lutId: String?, onComplete: ((Boolean) -> Unit)? = null) {
        editRawBaselineLutId.value = lutId
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawColorEngine(mediaData: MediaData, engine: RawRenderingEngine, onComplete: ((Boolean) -> Unit)? = null) {
        editRawRenderingEngine.value = engine
        if (engine == RawRenderingEngine.Spektrafilm) {
            if (editRawSpectralFilmStock.value == null) {
                editRawSpectralFilmStock.value = "kodak_portra_400"
            }
            if (editRawSpectralFilmPrint.value == null) {
                editRawSpectralFilmPrint.value = "kodak_portra_endura"
            }
        }
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawSpectralFilmPrint(mediaData: MediaData, print: String?, onComplete: ((Boolean) -> Unit)? = null) {
        editRawSpectralFilmPrint.value = print
        persistRawEditMetadata(mediaData, onComplete)
    }

    fun saveRawSpectralFilmSelection(
        mediaData: MediaData,
        selection: SpectralFilmSelection?,
        onComplete: ((Boolean) -> Unit)? = null
    ) {
        editRawSpectralFilmStock.value = selection?.id
        val tuning = selection?.tuning?.normalized() ?: SpectralFilmTuning.DEFAULT
        editRawSpectralFilmCDensityGain.value = tuning.cDensityGain
        editRawSpectralFilmMDensityGain.value = tuning.mDensityGain
        editRawSpectralFilmYDensityGain.value = tuning.yDensityGain
        persistRawEditMetadata(mediaData, onComplete)
    }

    suspend fun importRawDcp(uri: Uri): DcpInfo? {
        val importedId = withContext(Dispatchers.IO) {
            contentRepository.getCustomImportManager().importDcp(uri)
        } ?: return null
        contentRepository.refreshCustomContent()
        return contentRepository.getAvailableDcps().firstOrNull { it.id == importedId }?.also {
            editRawDcpId.value = it.id
        }
    }

    suspend fun importRawDcps(uris: List<Uri>): List<DcpInfo> {
        if (uris.isEmpty()) return emptyList()
        val importedIds = withContext(Dispatchers.IO) {
            uris.mapNotNull { uri ->
                contentRepository.getCustomImportManager().importDcp(uri)
            }
        }
        if (importedIds.isEmpty()) return emptyList()

        contentRepository.refreshCustomContent()
        val dcpById = contentRepository.getAvailableDcps().associateBy { it.id }
        val importedDcps = importedIds.mapNotNull { dcpById[it] }
        importedDcps.lastOrNull()?.let { editRawDcpId.value = it.id }
        return importedDcps
    }

    fun deleteRawDcp(mediaData: MediaData, dcpId: String, onComplete: (Boolean) -> Unit) {
        viewModelScope.launch {
            val success = withContext(Dispatchers.IO) {
                contentRepository.getCustomImportManager().deleteCustomDcp(dcpId)
            }
            if (success) {
                if (editRawDcpId.value == dcpId) {
                    editRawDcpId.value = null
                    persistRawEditMetadata(mediaData)
                }
                contentRepository.refreshCustomContent()
            }
            onComplete(success)
        }
    }

    /**
     * 设置裁剪矩形（归一化坐标 0-1）
     */
    fun setCropRect(rect: RectF?) {
        editCropRect.value = normalizeEditCropRect(rect)
    }

    /**
     * 设置裁剪比例选项
     */
    fun setCropAspectOption(option: CropAspectOption) {
        editCropAspectOption.value = option
        val photo = getCurrentPhoto() ?: return
        val w = photo.metadata?.width ?: photo.width
        val h = photo.metadata?.height ?: photo.height
        if (w > 0 && h > 0) {
            editCropRect.value = calculateInitialCropRect(w, h, option)
        }
    }

    /**
     * 重置裁剪
     */
    fun resetCrop() {
        editCropRect.value = null
        editCropAspectOption.value = CropAspectOption.Free
    }

    private fun normalizeEditCropRect(rect: RectF?, minSize: Float = 0.01f): RectF? {
        rect ?: return null

        val rawLeft = kotlin.math.min(rect.left.safeCropValue(0f), rect.right.safeCropValue(1f))
        val rawTop = kotlin.math.min(rect.top.safeCropValue(0f), rect.bottom.safeCropValue(1f))
        val rawRight = kotlin.math.max(rect.left.safeCropValue(0f), rect.right.safeCropValue(1f))
        val rawBottom = kotlin.math.max(rect.top.safeCropValue(0f), rect.bottom.safeCropValue(1f))

        var left = rawLeft.coerceIn(0f, 1f)
        var top = rawTop.coerceIn(0f, 1f)
        var right = rawRight.coerceIn(0f, 1f)
        var bottom = rawBottom.coerceIn(0f, 1f)

        val safeMinSize = minSize.coerceIn(0f, 1f)
        if (right - left < safeMinSize) {
            val centerX = ((left + right) / 2f).coerceIn(0f, 1f)
            left = (centerX - safeMinSize / 2f).coerceIn(0f, 1f - safeMinSize)
            right = left + safeMinSize
        }
        if (bottom - top < safeMinSize) {
            val centerY = ((top + bottom) / 2f).coerceIn(0f, 1f)
            top = (centerY - safeMinSize / 2f).coerceIn(0f, 1f - safeMinSize)
            bottom = top + safeMinSize
        }

        return RectF(left, top, right, bottom)
    }

    private fun Float.safeCropValue(fallback: Float): Float {
        return if (isFinite()) this else fallback
    }


    fun isRaw(photoId: String): Boolean {
        val context = getApplication<Application>()
        if (selectedTab == GalleryTab.SYSTEM) {
            currentPhotos.value.firstOrNull { it.id == photoId }?.relatedPhoto?.let { relatedPhoto ->
                return GalleryManager.getDngFile(context, relatedPhoto.id).exists()
            }
        }
        return GalleryManager.getDngFile(context, photoId).exists()
    }

    fun isRawMedia(photo: MediaData): Boolean {
        val context = getApplication<Application>()
        if (GalleryManager.getDngFile(context, photo.id).exists()) return true
        photo.relatedPhoto?.let { relatedPhoto ->
            if (GalleryManager.getDngFile(context, relatedPhoto.id).exists()) return true
            if (relatedPhoto.isRawLikeMedia()) return true
        }
        return photo.isRawLikeMedia()
    }

    /**
     * 获取指定照片的缩略图转换器（LUT + 边框）
     */
    fun getPhotoTransformation(photo: MediaData): PhotoTransformation? {
        if (photo.isVideo) return null
        val metadata = photo.metadata ?: return null

        // 缩略图不跑锐化/降噪，避免小图在 GL bitmap 后处理后出现异常纯色输出。

        return PhotoTransformation(
            context = getApplication<Application>(),
            metadata = metadata,
            photoProcessor = contentRepository.photoProcessor,
        )
    }

    /**
     * 生成预览缓存 key
     */
    private fun previewCacheKey(
        mediaData: MediaData,
        metadata: MediaMetadata,
        showOrigin: Boolean,
        maxEdge: Int = FULL_QUALITY_PREVIEW_MAX_EDGE
    ): String {
        val photoId = mediaData.id
        val metadataHash = metadata.hashCode()
        val refreshKey = photoRefreshKeys[photoId] ?: 0L
        return if (showOrigin) {
            "${photoId}_${refreshKey}"
        } else if (maxEdge < FULL_QUALITY_PREVIEW_MAX_EDGE) {
            "${photoId}_${metadataHash}_${refreshKey}_${maxEdge}"
        } else {
            "${photoId}_${metadataHash}_${refreshKey}"
        }
    }

    private fun detailCacheKey(mediaData: MediaData, metadata: MediaMetadata, showOrigin: Boolean): String {
        return "detail_${previewCacheKey(mediaData, metadata, showOrigin)}"
    }

    private fun shouldUseHdrDetail(metadata: MediaMetadata): Boolean {
        return metadata.manualHdrEffectEnabled
    }

    /**
     * 清除指定照片的预览缓存
     */
    fun invalidatePreviewCache(photoId: String) {
        val snapshot = previewBitmapCache.snapshot()
        snapshot.keys.filter { it.startsWith("${photoId}_") }.forEach {
            previewBitmapCache.remove(it)
        }
        val detailSnapshot = detailBitmapCache.snapshot()
        detailSnapshot.keys.filter { it.contains("detail_${photoId}_") }.forEach {
            detailBitmapCache.remove(it)
        }
        invalidateGridThumbnailCache(photoId)
    }

    private fun invalidateGridThumbnailCache(photoId: String) {
        val snapshot = gridThumbnailCache.snapshot()
        snapshot.keys.filter { it.startsWith("${photoId}_") }.forEach {
            gridThumbnailCache.remove(it)
        }
    }

    /**
     * 获取应用 LUT 和边框后的预览 Bitmap
     */
    suspend fun getPreviewBitmap(
        photo: MediaData,
        useGlobalEdit: Boolean = false,
        showOrigin: Boolean = false,
        bitmap: Bitmap? = null,
        ignoreCrop: Boolean = false,
        ignoreDenoise: Boolean = false,
        recipeParamsOverride: ColorRecipeParams? = null,
        maxEdge: Int = FULL_QUALITY_PREVIEW_MAX_EDGE
    ): Bitmap? {
        if (photo.isVideo) return null
        return withContext(Dispatchers.IO) {
            try {
                val context = getApplication<Application>()
                val isSystemExternal = selectedTab == GalleryTab.SYSTEM && photo.uri.scheme == "content"

                var finalMetadata: MediaMetadata
                var finalS = 0f
                var finalNR = 0f
                var finalCNR = 0f

                val metadata =
                    photo.metadata
                        ?: photo.relatedPhoto?.metadata
                        ?: GalleryManager.loadMetadata(context, photo.id)
                        ?: MediaMetadata()

                if (useGlobalEdit) {
                    finalMetadata = (currentMediaMetadata ?: metadata).copy(
                        lutId = editLutId.value,
                        frameId = editFrameId.value,
                        colorRecipeParams = recipeParamsOverride ?: editPhotoRecipeParams.value ?: editLutRecipeParams.value,
                        sharpening = editSharpening.value,
                        noiseReduction = editNoiseReduction.value,
                        chromaNoiseReduction = editChromaNoiseReduction.value,
                        rawExposureCompensation = editRawExposureCompensation.value,
                        rawAutoExposure = editRawAutoExposure.value,
                        rawHighlightsAdjustment = editRawHighlightsAdjustment.value,
                        rawShadowsAdjustment = editRawShadowsAdjustment.value,
                        rawBlackPointCorrection = editRawBlackPointCorrection.value,
                        rawWhitePointCorrection = editRawWhitePointCorrection.value,
                        rawBlackLevelMode = editRawBlackLevelMode.value,
                        rawCustomBlackLevel = editRawCustomBlackLevel.value,
                        rawWhiteLevelMode = editRawWhiteLevelMode.value,
                        rawCfaCorrectionMode = editRawCfaCorrectionMode.value,
                        rawDcpId = editRawDcpId.value,
                        baselineTarget = editRawBaselineLutId.value?.let { BaselineColorCorrectionTarget.RAW },
                        baselineLutId = editRawBaselineLutId.value,
                        baselineColorRecipeParams = editRawBaselineLutId.value?.let {
                            editRawBaselineRecipeParams.value
                        },
                        rawRenderingEngine = editRawRenderingEngine.value,
                        rawToneMappingParameters = editRawToneMappingParameters.value.normalized(),
                        spectralFilmStock = editRawSpectralFilmStock.value,
                        spectralFilmPrint = editRawSpectralFilmPrint.value,
                        spectralFilmCDensityGain = editRawSpectralFilmCDensityGain.value,
                        spectralFilmMDensityGain = editRawSpectralFilmMDensityGain.value,
                        spectralFilmYDensityGain = editRawSpectralFilmYDensityGain.value,
                        computationalAperture = editComputationalAperture.value,
                        focusPointX = editFocusPointX.value,
                        focusPointY = editFocusPointY.value,
                        postCropRegion = editCropRect.value?.let { rectF ->
                            val cw = photo.metadata?.width ?: photo.width
                            val ch = photo.metadata?.height ?: photo.height
                            android.graphics.Rect(
                                (rectF.left * cw).roundToInt(),
                                (rectF.top * ch).roundToInt(),
                                (rectF.right * cw).roundToInt(),
                                (rectF.bottom * ch).roundToInt()
                            )
                        }
                    )
                    
                    if (ignoreCrop) {
                        finalMetadata = finalMetadata.copy(postCropRegion = null)
                    }
                    finalS = editSharpening.value
                    finalNR = editNoiseReduction.value
                    finalCNR = editChromaNoiseReduction.value
                } else {
                    finalMetadata = metadata

                    if (!ignoreDenoise) {
                        finalS = finalMetadata.sharpening
                            ?: (if (finalMetadata.isImported) 0f else sharpening.value)
                        finalNR =
                            finalMetadata.noiseReduction
                                ?: (if (finalMetadata.isImported) 0f else noiseReduction.value)
                        finalCNR = finalMetadata.chromaNoiseReduction
                            ?: (if (finalMetadata.isImported) 0f else chromaNoiseReduction.value)
                    }
                        
                    if (ignoreCrop) {
                        finalMetadata = finalMetadata.copy(postCropRegion = null)
                    }
                }

                // 使用多级缓存优化性能
                val previewCacheKey = previewCacheKey(photo, finalMetadata, showOrigin, maxEdge)

                val cached = previewBitmapCache.get(previewCacheKey)
                if (cached != null && !cached.isRecycled) {
                    return@withContext cached
                }

                val isRawPhoto = GalleryManager.getDngFile(context, photo.id).exists()
                val sourceBackedUri = photo.sourceUri ?: finalMetadata.sourceUri?.toUri()
                val canLoadExternalUri = isSystemExternal || sourceBackedUri != null
                val externalUri = sourceBackedUri ?: photo.uri
                val preserveExternalHdr = isSystemExternal && showOrigin && !useGlobalEdit

                // 2. 原始底图缓存（按 maxEdge 加载，快速预览走小尺寸，正式预览走高分辨率）
                val currentBitmap = bitmap ?: if (showOrigin) {
                    GalleryManager.loadOriginalBitmap(context, photo.id, maxEdge, preserveExternalHdr)
                        ?: if (canLoadExternalUri) {
                            GalleryManager.loadBitmap(context, externalUri, maxEdge, preserveExternalHdr)
                        } else {
                            null
                        }
                } else {
                    val bokehFile = GalleryManager.getBokehFile(context, photo.id)
                    when {
                        bokehFile.exists() -> GalleryManager.loadBitmap(context, Uri.fromFile(bokehFile), maxEdge)
                        finalMetadata.hasAiDenoisedBase -> GalleryManager.loadBitmap(
                            context,
                            Uri.fromFile(GalleryManager.getAiDenoiseFile(context, photo.id)),
                            maxEdge
                        )
                        else -> GalleryManager.loadOriginalBitmap(context, photo.id, maxEdge)
                    } ?: if (canLoadExternalUri) GalleryManager.loadBitmap(context, externalUri, maxEdge, preserveHdr = false) else null
                } ?: return@withContext null

                // 只在全分辨率路径下缓存原始底图（避免低分辨率污染 origin 缓存）
                if (showOrigin && maxEdge >= FULL_QUALITY_PREVIEW_MAX_EDGE) {
                    previewBitmapCache.put(previewCacheKey(photo, finalMetadata, true), currentBitmap)
                }

                if (showOrigin) {
                    currentBitmap
                } else {
                    val skipPreviewDenoise = maxEdge < FULL_QUALITY_PREVIEW_MAX_EDGE
                    val applyBitmapSharpening = !isRawPhoto
                    val applyBitmapDenoise = !isRawPhoto && !skipPreviewDenoise
                    val previewMetadata = if (!applyBitmapSharpening || !applyBitmapDenoise) {
                        finalMetadata.copy(
                            sharpening = if (applyBitmapSharpening) finalMetadata.sharpening else 0f,
                            noiseReduction = 0f,
                            chromaNoiseReduction = 0f
                        )
                    } else {
                        finalMetadata
                    }
                    val previewSharpening = if (applyBitmapSharpening) finalS else 0f
                    val previewNoiseReduction = if (applyBitmapDenoise) finalNR else 0f
                    val previewChromaNoiseReduction = if (applyBitmapDenoise) finalCNR else 0f

                    // 预览生成
                    val result = contentRepository.photoProcessor.processBitmap(
                        context, photo.id, currentBitmap, previewMetadata,
                        previewSharpening, previewNoiseReduction, previewChromaNoiseReduction,
                        false
                    )
                    // 只在全分辨率路径下更新亮度估计（结果更准确）
                    if (maxEdge >= FULL_QUALITY_PREVIEW_MAX_EDGE) {
                        currentBrightness[photo.id] = estimateAverageBrightness(result)
                    }
                    // 存入缓存
                    previewBitmapCache.put(previewCacheKey, result)

                    result
                }
            } catch (e: CancellationException) {
                throw e
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to create preview", e)
                null
            }
        }
    }

    suspend fun getDetailBitmap(
        photo: MediaData,
    ): Bitmap? {
        if (photo.isVideo) return null
        return withContext(Dispatchers.IO) {
            try {
                val context = getApplication<Application>()
                val metadata =
                    photo.metadata
                        ?: photo.relatedPhoto?.metadata
                        ?: GalleryManager.loadMetadata(context, photo.id)
                        ?: MediaMetadata()

                val detailCacheKey = detailCacheKey(photo, metadata, false)
                val shouldUseHdrDetail = shouldUseHdrDetail(metadata)

                // HDR detail must be derived from the original render path, not bokeh.jpg,
                // otherwise SDR bokeh cache would override HDR-capable sources.

                if (!shouldUseHdrDetail) {
                    return@withContext null
                }

                if (GalleryManager.isHdrWorkInFlight(photo.id)) {
                    PLog.d(TAG, "getDetailBitmap: HDR work in flight for ${photo.id}, using preview fallback")
                    return@withContext null
                }

                val cachedDetail = detailBitmapCache.get(detailCacheKey)
                if (cachedDetail != null && !cachedDetail.isRecycled) {
                    PLog.d(TAG, "getDetailBitmap: hit detail cache for ${photo.id}")
                    return@withContext cachedDetail
                }

                val detailFile = GalleryManager.getDetailHdrFile(context, photo.id)
                if (detailFile.exists()) {
                    val diskCached = GalleryManager.loadBitmap(context, Uri.fromFile(detailFile), preserveHdr = true)
                    if (diskCached != null) {
                        detailBitmapCache.put(detailCacheKey, diskCached)
//                            PLog.d(
//                                TAG,
//                                "getDetailBitmap: using disk detail HDR cache for ${photo.id}, hasGainmap=${UltraHdrWriter.hasGainmap(diskCached)}"
//                            )
                        return@withContext diskCached
                    }
                }

                return@withContext null
            } catch (e: CancellationException) {
                throw e
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to create detail bitmap", e)
                null
            }
        }
    }

    suspend fun evaluatePhotoWithAi(photo: MediaData): Result<AiPhotoEvaluation> = withContext(Dispatchers.IO) {
        try {
            val cacheKey = aiEvaluationCacheKey(photo)
            aiEvaluationCache[cacheKey]?.let {
                return@withContext Result.success(it)
            }

            val bitmap = getPreviewBitmap(
                photo = photo,
                showOrigin = false,
                ignoreDenoise = true,
                maxEdge = 1024
            ) ?: return@withContext Result.failure(IllegalStateException("Unable to load photo preview"))

            val context = getApplication<Application>()
            val client = OpenAIApiClient()
            client.initialize(context)
            val result = client.evaluateImageQuality(
                bitmap = bitmap,
                localeTag = Locale.getDefault().toLanguageTag()
            )
            result.onSuccess { aiEvaluationCache[cacheKey] = it }
            result.onFailure { PLog.e(TAG, "AI photo evaluation request failed", it) }
            result
        } catch (e: Exception) {
            if (e is CancellationException) throw e
            PLog.e(TAG, "Failed to evaluate photo with AI", e)
            Result.failure(e)
        }
    }

    private fun aiEvaluationCacheKey(photo: MediaData): String {
        val metadata = photo.metadata ?: photo.relatedPhoto?.metadata
        return listOf(
            photo.id,
            photo.uri.toString(),
            photo.sourceUri?.toString().orEmpty(),
            photo.thumbnailUri.toString(),
            photo.displayName,
            photo.dateAdded.toString(),
            photo.size.toString(),
            photo.width.toString(),
            photo.height.toString(),
            photo.mimeType.orEmpty(),
            metadata?.hashCode()?.toString().orEmpty()
        ).joinToString("|")
    }

    fun shouldPrioritizeDetailBitmap(photo: MediaData): Boolean {
        val context = getApplication<Application>()
        val metadata =
            photo.metadata
                ?: photo.relatedPhoto?.metadata
                ?: MediaMetadata()
        if (!shouldUseHdrDetail(metadata)) {
            return false
        }
        val detailCacheKey = detailCacheKey(photo, metadata, false)
        val cachedDetail = detailBitmapCache.get(detailCacheKey)
        if (cachedDetail != null && !cachedDetail.isRecycled) {
            return true
        }
        if (GalleryManager.getDetailHdrFile(context, photo.id).exists()) {
            return true
        }
        return metadata.hasEmbeddedGainmap
    }

    /**
     * 保存编辑（只更新元数据，不修改原图）
     */
    fun saveEditMetadata(photo: MediaData, onComplete: (Boolean) -> Unit = {}) {
        // 检查 VIP 权限
        val currentLut = availableLuts.find { it.id == editLutId.value }
        if (currentLut?.isVip == true && !isPurchased.value) {
            showPaymentDialog = true
            onComplete(false)
            return
        }

        viewModelScope.launch {
            try {
                val context = getApplication<Application>()
                val wasSystemPhoto = selectedTab == GalleryTab.SYSTEM

                val targetPhotoId = if (wasSystemPhoto) {
                    photo.relatedPhoto?.id ?: run {
                        val importedId = GalleryManager.importPhoto(
                            context,
                            photo.uri,
                            editLutId.value
                        )
                        if (importedId != null) {
                            photo.metadata = GalleryManager.loadMetadata(context, importedId)
                            currentMediaMetadata = photo.metadata
                        }
                        importedId
                    }
                } else {
                    photo.id
                }

                if (targetPhotoId == null) {
                    onComplete(false)
                    return@launch
                }

                val rawBaselineLutId = editRawBaselineLutId.value
                val rawBaselineRecipeParams = loadRawBaselineRecipeParams(rawBaselineLutId)
                val w = photo.metadata?.width ?: photo.width
                val h = photo.metadata?.height ?: photo.height
                val finalCropRegion = editCropRect.value?.let { rectF ->
                    android.graphics.Rect(
                        (rectF.left * w).roundToInt(),
                        (rectF.top * h).roundToInt(),
                        (rectF.right * w).roundToInt(),
                        (rectF.bottom * h).roundToInt()
                    )
                }
                
                val success = GalleryManager.updateMetadata(context, targetPhotoId) { current ->
                    current.copy(
                        lutId = editLutId.value,
                        frameId = editFrameId.value,
                        colorRecipeParams = editPhotoRecipeParams.value,
                        sharpening = editSharpening.value,
                        noiseReduction = editNoiseReduction.value,
                        chromaNoiseReduction = editChromaNoiseReduction.value,
                        rawExposureCompensation = editRawExposureCompensation.value,
                        rawAutoExposure = editRawAutoExposure.value,
                        rawHighlightsAdjustment = editRawHighlightsAdjustment.value,
                        rawShadowsAdjustment = editRawShadowsAdjustment.value,
                        rawBlackPointCorrection = editRawBlackPointCorrection.value,
                        rawWhitePointCorrection = editRawWhitePointCorrection.value,
                        rawBlackLevelMode = editRawBlackLevelMode.value,
                        rawCustomBlackLevel = editRawCustomBlackLevel.value,
                        rawWhiteLevelMode = editRawWhiteLevelMode.value,
                        rawCfaCorrectionMode = editRawCfaCorrectionMode.value,
                        rawDcpId = editRawDcpId.value,
                        baselineTarget = rawBaselineLutId?.let { BaselineColorCorrectionTarget.RAW },
                        baselineLutId = rawBaselineLutId,
                        baselineColorRecipeParams = rawBaselineRecipeParams,
                        rawRenderingEngine = editRawRenderingEngine.value,
                        rawToneMappingParameters = editRawToneMappingParameters.value.normalized(),
                        spectralFilmStock = editRawSpectralFilmStock.value,
                        spectralFilmPrint = editRawSpectralFilmPrint.value,
                        spectralFilmCDensityGain = editRawSpectralFilmCDensityGain.value,
                        spectralFilmMDensityGain = editRawSpectralFilmMDensityGain.value,
                        spectralFilmYDensityGain = editRawSpectralFilmYDensityGain.value,
                        computationalAperture = editComputationalAperture.value,
                        focusPointX = editFocusPointX.value,
                        focusPointY = editFocusPointY.value,
                        postCropRegion = finalCropRegion,
                        applyEffectsToVideo = editApplyEffectsToVideo.value
                    )
                }

                if (success != null) {
                    withContext(Dispatchers.IO) {
                        GalleryManager.patchDngCorrections(context, targetPhotoId, success)
                    }
                    currentMediaMetadata = success
                    photo.metadata = success

                    // 系统相册项保存后保留 SYSTEM tab，通过 relatedPhoto 展示导入副本的编辑结果。
                    if (wasSystemPhoto) {
                        loadPhotos(reset = true)
                        applyPhotoMetadataUpdateToMemory(targetPhotoId, success)
                        _photos.value.firstOrNull { it.id == targetPhotoId }?.let { updatedPhoto ->
                            linkSystemPhotoToPhoton(photo.id, updatedPhoto)
                        }
                    } else {
                        // 更新 photos 列表中对应照片的 metadata，触发 UI 刷新
                        val updatedPhotos = _photos.value.map { p ->
                            if (p.id == targetPhotoId) {
                                p.copy(metadata = success)
                            } else {
                                p
                            }
                        }
                        _photos.value = updatedPhotos
                    }

                    // 同步更新 latestPhoto
                    if (_latestPhoto.value?.id == targetPhotoId) {
                        _latestPhoto.value = _latestPhoto.value?.copy(metadata = success)
                    }

                    exitEditMode()
                    invalidatePreviewCache(targetPhotoId)
                    GalleryManager.deleteDetailHdrFile(context, targetPhotoId)
                    GalleryManager.queueDetailHdrCacheBuild(
                        context = context,
                        photoId = targetPhotoId,
                        metadata = success,
                        sharpening = success.sharpening ?: 0f,
                        noiseReduction = success.noiseReduction ?: 0f,
                        chromaNoiseReduction = success.chromaNoiseReduction ?: 0f
                    )
                    GalleryManager.updateThumbnail(
                        context = context,
                        photoId = targetPhotoId,
                        photoProcessor = contentRepository.photoProcessor,
                        metadata = success
                    )
                    photoRefreshKeys[targetPhotoId] = System.currentTimeMillis()
                }
                onComplete(success != null)
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to save metadata", e)
                onComplete(false)
            }
        }
    }

    /**
     * 刷新 RAW 照片的预览图
     */
    fun refreshRawPreview(photo: MediaData, onComplete: (Boolean) -> Unit = {}) {
        if (refreshingPhotos.contains(photo.id)) return

        viewModelScope.launch {
            refreshingPhotos.add(photo.id)
            try {
                val context = getApplication<Application>()
                val result = GalleryManager.refreshRawPreview(context, photo.id)
                if (result != null) {
                    val updatedMetadata = updatePhotoMetadata(photo.id) { it }
                    updatedMetadata?.let { applyRawDevelopMetadataToEditState(it) }
                    // 更新刷新密钥以强制 UI 重新加载
                    photoRefreshKeys[photo.id] = System.currentTimeMillis()
                    invalidatePreviewCache(photo.id)

                    // 触发列表更新
                    val updatedPhotos = _photos.value.map { p ->
                        if (p.id == photo.id) {
                            p.copy()
                        } else {
                            p
                        }
                    }
                    _photos.value = updatedPhotos
                    onComplete(true)
                } else {
                    onComplete(false)
                }
            } finally {
                refreshingPhotos.remove(photo.id)
            }
        }
    }

    /**
     * 导出照片到公共目录（带 LUT 烘焙）
     */
    fun exportPhoto(
        photo: MediaData,
        bitmap: Bitmap? = null,
        suffix: String? = null,
        onComplete: (Boolean) -> Unit = {}
    ) {
        if (photo.isVideo) {
            onComplete(false)
            return
        }
        viewModelScope.launch {
            var photoId = photo.id
            if (selectedTab == GalleryTab.SYSTEM) {
                photoId = photo.relatedPhoto?.id ?: photoId
            }
            val metadata = GalleryManager.loadMetadata(getApplication(), photoId) ?: photo.metadata
            ?: MediaMetadata()
            val context = getApplication<Application>()
            val success = GalleryManager.exportPhoto(
                context, photoId, bitmap, contentRepository.photoProcessor, metadata,
                sharpening.value, noiseReduction.value,
                chromaNoiseReduction.value, photoQuality.firstOrNull() ?: 95, suffix
            )
            if (success) {
                exitEditMode()
                loadPhotos()
            }
            onComplete(success)
        }
    }

    /**
     * 导出视频：使用 Media3 Transformer 将 LUT / 色彩配方效果烘焙到视频文件并保存到系统相册。
     * 导出不修改原始视频，结果保存在 Movies/PhotonCamera/ 目录。
     */
    @androidx.annotation.OptIn(androidx.media3.common.util.UnstableApi::class)
    fun exportVideo(
        photo: MediaData,
        onComplete: (success: Boolean, exportedUri: android.net.Uri?) -> Unit = { _, _ -> }
    ) {
        if (!photo.isVideo) {
            onComplete(false, null)
            return
        }
        if (!isVideoTransformerExportSupported()) {
            PLog.w(TAG, "exportVideo skipped: Media3 Transformer video export requires Android 12/API 31")
            onComplete(false, null)
            return
        }
        if (isVideoExporting) return

        viewModelScope.launch {
            isVideoExporting = true
            videoExportProgress = 0
            try {
                val context = getApplication<android.app.Application>()

                // 获取最新元数据（包含 lutId 和 colorRecipeParams）
                val metadata = GalleryManager.loadMetadata(context, photo.id) ?: photo.metadata

                // 加载 LUT 配置
                val lutId = metadata?.lutId
                val lutConfig = lutId?.let {
                    contentRepository.lutManager.loadLut(it)
                }

                // 获取色彩配方
                val recipeParams = metadata?.colorRecipeParams

                // 视频输入 URI：优先使用 sourceUri（PhotonCamera 录制的视频），否则使用 uri
                val inputUri = photo.sourceUri ?: photo.uri

                // 生成输出文件名（基于原始文件名加 _edit 后缀）
                val baseName = photo.displayName
                    .substringBeforeLast(".")
                    .ifBlank { "PhotonCamera_video" }
                val lutSuffix = lutId?.let {
                    contentRepository.lutManager.getLutInfo(it)?.getName() ?: ""
                }?.let { if (it.isNotEmpty()) ".$it" else "" } ?: ""
                val outputName = "${baseName}${lutSuffix}_edit"

                val resultUri = exportVideoWithEffects(
                    context = context,
                    inputUri = inputUri,
                    lutConfig = lutConfig,
                    recipeParams = recipeParams,
                    outputDisplayName = outputName,
                    onProgress = { progress ->
                        videoExportProgress = progress
                    }
                )

                // 记录导出 URI 到元数据并更新 UI 状态
                if (resultUri != null) {
                    updatePhotoMetadata(photo.id) { current ->
                        current.copy(exportedUris = current.exportedUris + resultUri.toString())
                    }
                    photoRefreshKeys[photo.id] = System.currentTimeMillis()
                }

                onComplete(resultUri != null, resultUri)
            } catch (e: Exception) {
                PLog.e(TAG, "exportVideo failed", e)
                onComplete(false, null)
            } finally {
                isVideoExporting = false
                videoExportProgress = 0
            }
        }
    }

    fun exportDng(
        photo: MediaData,
        onComplete: (Boolean) -> Unit = {}
    ) {
        if (photo.isVideo) {
            onComplete(false)
            return
        }
        viewModelScope.launch {
            var photoId = photo.id
            if (selectedTab == GalleryTab.SYSTEM) {
                photoId = photo.relatedPhoto?.id ?: photoId
            }
            val context = getApplication<Application>()
            val dngFile = GalleryManager.getDngFile(context, photoId)
            val metadata = GalleryManager.loadMetadata(context, photoId) ?: photo.metadata ?: MediaMetadata()
            val success = if (dngFile.exists() && dngFile.length() > 0L) {
                GalleryManager.exportDng(context, photoId, dngFile, metadata)
                true
            } else {
                false
            }
            if (success) {
                loadPhotos()
            }
            onComplete(success)
        }
    }

    /**
     * 批量导出选中的照片
     */
    fun exportSelectedPhotos(onComplete: (Int) -> Unit = {}) {
        val selectedSnapshot = selectedPhotos.toList()
        if (selectedSnapshot.isEmpty()) return

        viewModelScope.launch {
            _isExporting.value = true
            val toExport = selectedSnapshot.filter { it.isImage }
            val total = toExport.size
            exportProgress = 0 to total
            
            try {
                val context = getApplication<Application>()
                val quality = photoQuality.firstOrNull() ?: 95
                
                withContext(Dispatchers.IO) {
                    toExport.forEachIndexed { index, photo ->
                        var photoId = photo.id
                        // 如果在系统相册 Tab，导出其关联的照片
                        if (selectedTab == GalleryTab.SYSTEM) {
                            photoId = photo.relatedPhoto?.id ?: return@forEachIndexed
                        }
                        val metadata = GalleryManager.loadMetadata(context, photoId) ?: photo.metadata ?: MediaMetadata()
                        GalleryManager.exportPhoto(
                            context, photoId, null, contentRepository.photoProcessor, metadata,
                            sharpening.value, noiseReduction.value,
                            chromaNoiseReduction.value, quality
                        )
                        
                        withContext(Dispatchers.Main) {
                            exportProgress = (index + 1) to total
                        }
                    }
                }
                
                exitSelectionMode()
                loadPhotos()
                onComplete(total)
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to batch export photos", e)
                onComplete(0)
            } finally {
                _isExporting.value = false
                exportProgress = 0 to 0
            }
        }
    }

    private data class ShareRequest(val uri: Uri, val mimeType: String)

    private suspend fun prepareShareRequest(photo: MediaData): ShareRequest? = withContext(Dispatchers.IO) {
        try {
            val context = getApplication<Application>()
            if (photo.isVideo) {
                val shareUri = photo.sourceUri ?: photo.metadata?.sourceUri?.toUri() ?: photo.uri
                return@withContext ShareRequest(
                    uri = shareUri,
                    mimeType = photo.mimeType ?: photo.metadata?.mimeType ?: "video/*"
                )
            }
            val metadata =
                photo.metadata ?: GalleryManager.loadMetadata(context, photo.id) ?: MediaMetadata()

            // 处理照片：跟随用户设置
            val processedBitmap = contentRepository.photoProcessor.process(
                context, photo.id, metadata,
                sharpening.value, noiseReduction.value, chromaNoiseReduction.value
            ) ?: return@withContext null

            // 保存到缓存目录
            val sharedDir = File(context.cacheDir, "shared")
            if (!sharedDir.exists()) sharedDir.mkdirs()

            val sharedFile = File(sharedDir, "share_${photo.id}.jpg")
            FileOutputStream(sharedFile).use { out ->
                // 使用用户设置的照片质量
                processedBitmap.compress(
                    Bitmap.CompressFormat.JPEG,
                    photoQuality.firstOrNull() ?: 95,
                    out
                )
            }

            processedBitmap.recycle()

            ShareRequest(
                uri = FileProvider.getUriForFile(
                    context,
                    "${context.packageName}.fileprovider",
                    sharedFile
                ),
                mimeType = "image/jpeg"
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to prepare shared photo", e)
            null
        }
    }

    /**
     * 批量导入照片
     */
    fun importPhotos(uris: List<Uri>, videoUris: List<Uri?>? = null, onImportFinished: (List<String>) -> Unit = {}) {
        if (uris.isEmpty()) return

        viewModelScope.launch {
            _isLoading.value = true
            try {
                val context = getApplication<Application>()
                val importedIds = mutableListOf<String>()

                withContext(Dispatchers.IO) {
                    uris.forEachIndexed { index, uri ->
                        val videoUri = videoUris?.getOrNull(index)
                        val photoId = GalleryManager.importPhoto(context, uri, null, null, videoUri = videoUri)
                        if (photoId != null) {
                            importedIds.add(photoId)
                        }
                    }
                }

                if (importedIds.isNotEmpty()) {
                    loadPhotos()
                    onImportFinished(importedIds)
                }
                PLog.d(TAG, "Imported ${importedIds.size} of ${uris.size} photos")
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to import photos", e)
            } finally {
                _isLoading.value = false
            }
        }
    }

    override fun onCleared() {
        super.onCleared()
        contentRepository.lutManager.clearCache()
    }

    /**
     * 发起购买
     */
    fun purchase(activity: android.app.Activity) {
        billingManager.purchase(activity)
    }

    /**
     * 获取自定义导入管理器
     */
    fun getCustomImportManager() = contentRepository.getCustomImportManager()

    /**
     * 估计 Bitmap 的平均亮度（调试用）
     */
    private fun estimateAverageBrightness(bitmap: Bitmap): Float {
        return try {
            // 缩小尺寸以快速计算
            val scaledBitmap = bitmap.scale(64, 64, false)
            val pixels = IntArray(64 * 64)
            scaledBitmap.getPixels(pixels, 0, 64, 0, 0, 64, 64)

            var totalLuma = 0f
            for (pixel in pixels) {
                val r = (pixel shr 16) and 0xFF
                val g = (pixel shr 8) and 0xFF
                val b = pixel and 0xFF
                totalLuma += (0.2126f * r + 0.7152f * g + 0.0722f * b)
            }
            scaledBitmap.recycle()
            totalLuma / (64 * 64) / 255f
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to estimate brightness", e)
            0f
        }
    }

    fun canToggleManualHdrEnhance(photo: MediaData): Boolean {
        if (photo.isVideo) return false
        val metadata = photo.metadata ?: photo.relatedPhoto?.metadata ?: return false
        return metadata.hasEmbeddedGainmap ||
            metadata.dynamicRangeProfile == "HLG10" ||
            GalleryManager.getDngFile(getApplication(), photo.id).exists() ||
            GalleryManager.getHighQualityPhotoFile(getApplication(), photo.id).exists() ||
            GalleryManager.getPhotoFile(getApplication(), photo.id).exists()
    }

    fun isManualHdrEnhanceEnabled(photo: MediaData): Boolean {
        if (photo.isVideo) return false
        val metadata = photo.metadata ?: photo.relatedPhoto?.metadata ?: return false
        return metadata.manualHdrEffectEnabled
    }

    fun getManualHdrStrength(photo: MediaData): Float {
        val metadata = photo.metadata ?: photo.relatedPhoto?.metadata
        return HdrGainmapStrength.coerce(metadata?.hdrEffectStrength)
    }

    fun toggleManualHdrEnhance(photo: MediaData, onComplete: (Boolean) -> Unit = {}) {
        if (!canToggleManualHdrEnhance(photo)) {
            onComplete(false)
            return
        }
        viewModelScope.launch {
            try {
                val context = getApplication<Application>()
                val updatedMetadata = updatePhotoMetadata(photo.id) {
                    it.copy(manualHdrEffectEnabled = !it.manualHdrEffectEnabled)
                }
                if (updatedMetadata != null) {
                    invalidatePreviewCache(photo.id)
                    if (updatedMetadata.manualHdrEffectEnabled) {
                        GalleryManager.queueDetailHdrCacheBuild(
                            context = context,
                            photoId = photo.id,
                            metadata = updatedMetadata,
                            sharpening = updatedMetadata.sharpening ?: 0f,
                            noiseReduction = updatedMetadata.noiseReduction ?: 0f,
                            chromaNoiseReduction = updatedMetadata.chromaNoiseReduction ?: 0f
                        )
                    } else {
                        GalleryManager.deleteDetailHdrFile(context, photo.id)
                    }
                    photoRefreshKeys[photo.id] = System.currentTimeMillis()
                }
                onComplete(updatedMetadata != null)
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to toggle manual HDR enhance", e)
                onComplete(false)
            }
        }
    }

    fun setManualHdrStrength(
        photo: MediaData,
        strength: Float,
        onComplete: (Boolean) -> Unit = {}
    ) {
        if (!canToggleManualHdrEnhance(photo)) {
            onComplete(false)
            return
        }
        viewModelScope.launch {
            try {
                val context = getApplication<Application>()
                val updatedMetadata = updatePhotoMetadata(photo.id) {
                    it.copy(
                        manualHdrEffectEnabled = true,
                        hdrEffectStrength = HdrGainmapStrength.coerce(strength)
                    )
                }
                if (updatedMetadata != null) {
                    invalidatePreviewCache(photo.id)
                    GalleryManager.deleteDetailHdrFile(context, photo.id)
                    GalleryManager.queueDetailHdrCacheBuild(
                        context = context,
                        photoId = photo.id,
                        metadata = updatedMetadata,
                        sharpening = updatedMetadata.sharpening ?: 0f,
                        noiseReduction = updatedMetadata.noiseReduction ?: 0f,
                        chromaNoiseReduction = updatedMetadata.chromaNoiseReduction ?: 0f
                    )
                    photoRefreshKeys[photo.id] = System.currentTimeMillis()
                }
                onComplete(updatedMetadata != null)
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to update manual HDR strength", e)
                onComplete(false)
            }
        }
    }
}
