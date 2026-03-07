package com.hinnka.mycamera.viewmodel

import android.app.Application
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.os.Build
import android.provider.MediaStore
import android.util.Log
import android.util.LruCache
import androidx.collection.MutableIntFloatMap
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.runtime.snapshotFlow
import androidx.compose.runtime.snapshots.SnapshotStateMap
import androidx.core.content.FileProvider
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.data.UserPreferencesRepository
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.frame.FrameRenderer
import com.hinnka.mycamera.gallery.*
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.PhotoTransformation
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*
import java.io.File
import java.io.FileOutputStream
import java.util.*
import kotlin.math.max
import androidx.core.net.toUri
import androidx.core.graphics.scale

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
    }


    // 内容仓库（单例，与 CameraViewModel 共享）
    private val contentRepository = ContentRepository.getInstance(application)

    private val repository = contentRepository.galleryRepository

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
    private val _photos = MutableStateFlow<List<PhotoData>>(emptyList())
    val photos = _photos.asStateFlow()
    private val _systemPhotos = MutableStateFlow<List<PhotoData>>(emptyList())
    val systemPhotos = _systemPhotos.asStateFlow()
    val currentPhotos = combine(photos, systemPhotos, snapshotFlow { selectedTab }) { p, s, tab ->
        if (tab == GalleryTab.PHOTON) {
            p
        } else {
            // Optimize lookup by creating a map of sourceUri to PhotoData
            val photonMap = mutableMapOf<String, PhotoData>()
            p.forEach { photo ->
                photo.metadata?.sourceUri?.let { photonMap[it] = photo }
            }

            s.map { systemPhoto ->
                photonMap[systemPhoto.uri.toString()]?.let { photonPhoto ->
                    systemPhoto.copy(
                        relatedPhoto = photonPhoto
                    )
                } ?: systemPhoto
            }
        }
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), emptyList())

    private var systemOffset = 0
    private val pageSize = 50
    var hasMoreSystemPhotos by mutableStateOf(true)
        private set

    private val _isLoading = MutableStateFlow(false)
    val isLoading = _isLoading.asStateFlow()

    private val _isSystemLoadingMore = MutableStateFlow(false)
    val isSystemLoadingMore: StateFlow<Boolean> = _isSystemLoadingMore.asStateFlow()

    // 权限状态
    var hasGalleryPermission by mutableStateOf(false)
        private set

    // 分享状态
    private val _isSharing = MutableStateFlow(false)
    val isSharing: StateFlow<Boolean> = _isSharing.asStateFlow()

    // 多选模式
    var isSelectionMode by mutableStateOf(false)
        private set

    // 选中的照片
    val selectedPhotos = mutableStateListOf<PhotoData>()

    // 当前查看的照片索引
    var currentPhotoIndex by mutableStateOf(0)
        private set

    // 编辑状态
    var isEditing by mutableStateOf(false)
        private set

    // LUT 编辑状态
    var editLutId = MutableStateFlow<String?>(null)
        private set

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

    var editLutConfig: LutConfig? by mutableStateOf(null)
        private set

    // 系统相册删除
    var systemDeletePendingIntent by mutableStateOf<android.app.PendingIntent?>(null)
        private set
    private var pendingDeleteSystemPhoto: PhotoData? = null

    // 当前照片的元数据
    var currentPhotoMetadata: PhotoMetadata? by mutableStateOf(null)
        private set

    private var currentPhotoMetadataId: String? = null

    // 当前照片的平均亮度（调试用）
    val currentBrightness = SnapshotStateMap<String, Float>()

    // 照片刷新密钥，用于强制 UI 重新加载图片
    val photoRefreshKeys = SnapshotStateMap<String, Long>()

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

    // 可用的 LUT 列表
    var availableLuts: List<LutInfo> by mutableStateOf(emptyList())
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

    // 最新照片（用于相机界面显示入口）
    private val _latestPhoto = MutableStateFlow<PhotoData?>(null)
    val latestPhoto: StateFlow<PhotoData?> = _latestPhoto.asStateFlow()

    // 待删除的照片（用于 Activity Result 回调）
    var pendingDeletePhoto: PhotoData? by mutableStateOf(null)
        private set

    // 删除请求的 PendingIntent（用于启动系统删除对话框）
    var deletePendingIntent: android.app.PendingIntent? by mutableStateOf(null)
        private set

    // 批量删除相关状态
    private var pendingDeletePhotos: List<PhotoData> = emptyList()
    var batchDeletePendingIntent: android.app.PendingIntent? by mutableStateOf(null)
        private set

    init {
        loadPhotos()

        // 检查系统相册权限
        checkGalleryPermission()

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
    }

    /**
     * 加载当前选中的 Tab 内容
     */
    fun loadCurrentTabData() {
        when (selectedTab) {
            GalleryTab.SYSTEM -> loadSystemPhotos(reset = true)
            GalleryTab.PHOTON -> loadPhotos()
        }
    }

    /**
     * 切换 Tab
     */
    fun selectTab(tab: GalleryTab) {
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
            context.checkSelfPermission(android.Manifest.permission.READ_MEDIA_IMAGES) == android.content.pm.PackageManager.PERMISSION_GRANTED
        } else {
            context.checkSelfPermission(android.Manifest.permission.READ_EXTERNAL_STORAGE) == android.content.pm.PackageManager.PERMISSION_GRANTED
        }
        if (hasGalleryPermission && selectedTab == GalleryTab.SYSTEM && _systemPhotos.value.isEmpty()) {
            loadSystemPhotos(reset = true)
        }
    }

    /**
     * 加载系统照片
     */
    fun loadSystemPhotos(reset: Boolean = false) {
        if (!hasGalleryPermission) return
        if (!reset && (!hasMoreSystemPhotos || _isSystemLoadingMore.value)) return

        viewModelScope.launch {
            val loadCount = if (reset) max(pageSize, _systemPhotos.value.size) else pageSize
            val loadOffset = if (reset) 0 else systemOffset

            if (reset) {
                if (_systemPhotos.value.isEmpty()) {
                    _isLoading.value = true
                }
                systemOffset = 0
                hasMoreSystemPhotos = true
            } else {
                _isSystemLoadingMore.value = true
            }

            try {
                val newPhotos = repository.getSystemPhotos(loadOffset, loadCount)
                if (reset) {
                    _systemPhotos.value = newPhotos
                    systemOffset = newPhotos.size
                    hasMoreSystemPhotos = newPhotos.size >= loadCount
                } else {
                    _systemPhotos.value = (_systemPhotos.value + newPhotos).distinctBy { it.id }
                    systemOffset += newPhotos.size
                    hasMoreSystemPhotos = newPhotos.size >= loadCount
                }
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to load system photos", e)
            } finally {
                _isLoading.value = false
                _isSystemLoadingMore.value = false
            }
        }
    }

    /**
     * 加载照片列表
     */
    fun loadPhotos() {
        viewModelScope.launch {
            if (_photos.value.isEmpty()) _isLoading.value = true
            try {
                val context = getApplication<Application>()
                val newList = repository.getPhotosSync()
                val currentMap = _photos.value.associateBy { it.id }

                // 1. 合并基础列表（保留现有元数据）
                val mergedList = newList.map { currentMap[it.id] ?: it }
                _photos.value = mergedList
                _latestPhoto.value = mergedList.firstOrNull()
                _isLoading.value = false

                // 2. 辅助函数：分批异步加载元数据
                suspend fun updateMetadata(items: List<PhotoData>) {
                    if (items.isEmpty()) return
                    val updatedItems = withContext(Dispatchers.IO) {
                        items.map { async { loadSpecificPhotoMetadata(context, it) } }.awaitAll()
                    }
                    val updatedMap = updatedItems.associateBy { it.id }
                    _photos.update { current ->
                        current.map { updatedMap[it.id] ?: it }
                    }
                }

                // 3. 两阶段加载：优先刷新前 30 张（确保最新状态），随后补充其余缺失的元数据
                updateMetadata(mergedList.take(30))
                updateMetadata(mergedList.drop(30).filter { it.metadata == null })

            } catch (e: Exception) {
                PLog.e(TAG, "Failed to load photos", e)
                _isLoading.value = false
            }
        }
    }

    private suspend fun loadSpecificPhotoMetadata(context: Context, photo: PhotoData): PhotoData =
        withContext(Dispatchers.IO) {
            val metadata = PhotoManager.loadMetadata(context, photo.id)
            var updatedPhoto = if (metadata != null) {
                photo.copy(
                    metadata = metadata,
                    isMotionPhoto = photo.isMotionPhoto || metadata.presentationTimestampUs != null
                )
            } else {
                photo
            }

            // If dimensions are missing, load from file header
            if (updatedPhoto.width == 0 || updatedPhoto.height == 0) {
                try {
                    val photoFile = PhotoManager.getPhotoFile(context, photo.id)
                    if (photoFile.exists()) {
                        val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
                        BitmapFactory.decodeFile(photoFile.absolutePath, options)
                        updatedPhoto =
                            updatedPhoto.copy(width = options.outWidth, height = options.outHeight)

                        // Cache dimensions back to metadata
                        val currentMeta = metadata ?: PhotoMetadata()
                        val newMetadata =
                            currentMeta.copy(width = options.outWidth, height = options.outHeight)
                        PhotoManager.saveMetadata(context, photo.id, newMetadata)
                        updatedPhoto = updatedPhoto.copy(metadata = newMetadata)
                    }
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to load dimensions for ${photo.id}", e)
                }
            } else if (metadata != null) {
                // Already has width/height from metadata
                updatedPhoto = updatedPhoto.copy(width = metadata.width, height = metadata.height)
            }

            // Update the metadata field of the photo object directly? No, copy it.
            // The callers (async) will collect these.
            return@withContext updatedPhoto
        }

    /**
     * 刷新最新照片
     */
    fun refreshLatestPhoto() {
        viewModelScope.launch {
            val photo = repository.getLatestPhoto()
            photo?.let {
                val context = getApplication<Application>()
                val metadata = PhotoManager.loadMetadata(context, it.id)
                var updatedPhoto = if (metadata != null) {
                    it.copy(
                        metadata = metadata,
                        width = if (metadata.width > 0) metadata.width else it.width,
                        height = if (metadata.height > 0) metadata.height else it.height
                    )
                } else {
                    it
                }

                // If dimensions are missing, load from file (same as loadPhotos)
                if (updatedPhoto.width == 0 || updatedPhoto.height == 0) {
                    try {
                        val photoFile = PhotoManager.getPhotoFile(context, it.id)
                        val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
                        BitmapFactory.decodeFile(photoFile.absolutePath, options)
                        updatedPhoto =
                            updatedPhoto.copy(width = options.outWidth, height = options.outHeight)

                        metadata?.let { m ->
                            val newMetadata =
                                m.copy(width = options.outWidth, height = options.outHeight)
                            PhotoManager.saveMetadata(context, it.id, newMetadata)
                        }
                    } catch (e: Exception) {
                        PLog.e(TAG, "Failed to load dimensions for latest photo", e)
                    }
                }
                _latestPhoto.value = updatedPhoto

                // Also update the photos list if it's not already in it
                val currentPhotos = _photos.value
                if (currentPhotos.none { it.id == updatedPhoto.id }) {
                    _photos.value = listOf(updatedPhoto) + currentPhotos
                }
            }
        }
    }

    /**
     * 快速加载指定照片并置顶（用于 Phantom 模式跳转）
     */
    fun quickLoadPhoto(photoId: String) {
        viewModelScope.launch {
            val context = getApplication<Application>()
            val photo = withContext(Dispatchers.IO) {
                val photoFile = PhotoManager.getPhotoFile(context, photoId)
                if (!photoFile.exists()) return@withContext null

                val videoFile = PhotoManager.getVideoFile(context, photoId)
                val isBurstPhoto = PhotoManager.hasBurstPhotos(context, photoId)
                val data = PhotoData(
                    id = photoId,
                    uri = Uri.fromFile(photoFile),
                    thumbnailUri = Uri.fromFile(PhotoManager.getThumbnailFile(context, photoId)),
                    displayName = photoFile.name,
                    dateAdded = photoFile.lastModified(),
                    size = photoFile.length(),
                    isMotionPhoto = videoFile.exists(),
                    isBurstPhoto = isBurstPhoto
                )
                loadSpecificPhotoMetadata(context, data)
            } ?: return@launch

            val currentList = _photos.value.toMutableList()
            val index = currentList.indexOfFirst { it.id == photoId }
            if (index != -1) {
                currentList.removeAt(index)
            }
            currentList.add(0, photo)
            _photos.value = currentList
            _latestPhoto.value = photo
            PLog.d(TAG, "Quickly loaded and topped photo: $photoId")
        }
    }

    /**
     * 加载当前照片的元数据
     */
    fun loadCurrentPhotoMetadata() {
        val photo = getCurrentPhoto() ?: return

        // 如果已经加载了该照片的元数据，且不是正在编辑模式（编辑模式下可能需要刷新），则跳过
        if (!isEditing && currentPhotoMetadataId == photo.id) {
            return
        }

        // 优先使用 PhotoData 中已有的元数据（由 loadPhotos 预加载）
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

        viewModelScope.launch {
            val context = getApplication<Application>()

            // 在 IO 线程加载元数据
            val metadata = withContext(Dispatchers.IO) {
                if (selectedTab == GalleryTab.SYSTEM) {
                    PhotoMetadata.fromUri(context, photo.uri)
                } else {
                    PhotoManager.loadMetadata(context, photo.id)
                }
            }

            // 在主线程更新状态
            applyMetadataToEditState(metadata)

            // 缓存到列表，避免下次滑动到这张图时重复加载
            if (metadata != null) {
                if (selectedTab == GalleryTab.SYSTEM) {
                    _systemPhotos.update { current ->
                        current.map { if (it.id == photo.id) it.copy(metadata = metadata) else it }
                    }
                } else {
                    _photos.update { current ->
                        current.map { if (it.id == photo.id) it.copy(metadata = metadata) else it }
                    }
                }
            }
        }
    }

    private fun applyMetadataToEditState(metadata: PhotoMetadata?) {
        val photo = getCurrentPhoto()
        currentPhotoMetadataId = photo?.id
        currentPhotoMetadata = metadata
        metadata?.let { m ->
            editLutId.value = m.lutId
            editFrameId.value = m.frameId
            editSharpening.value = m.sharpening ?: 0f
            editNoiseReduction.value = m.noiseReduction ?: 0f
            editChromaNoiseReduction.value = m.chromaNoiseReduction ?: 0f

            // 加载 LUT 配置
            m.lutId?.let { id ->
                viewModelScope.launch {
                    editLutConfig = withContext(Dispatchers.IO) {
                        contentRepository.lutManager.loadLut(id)
                    }
                }
            }
        }
    }

    fun loadThumbnail(photo: PhotoData): Bitmap? {
        val context = getApplication<Application>()
        return try {
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
    fun togglePhotoSelection(photo: PhotoData) {
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
        }
    }

    /**
     * 获取当前照片
     */
    fun getCurrentPhoto(): PhotoData? {
        return currentPhotos.value.getOrNull(currentPhotoIndex)
    }

    /**
     * 获取删除系统相册照片的请求 PendingIntent（用于 Android 11+）
     *
     * @return PendingIntent 如果有导出的照片需要删除，返回 PendingIntent；否则返回 null
     */
    private fun getDeleteRequest(photo: PhotoData): android.app.PendingIntent? {
        val context = getApplication<Application>()
        return PhotoManager.createDeleteRequest(context, photo.id)
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
    fun requestDeletePhoto(photo: PhotoData, deleteExported: Boolean = true) {
        if (selectedTab == GalleryTab.SYSTEM) {
            // 系统相册删除
            val pendingIntent = PhotoManager.createSystemDeleteRequest(getApplication(), photo.uri)
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
            // 没有导出的照片，直接删除应用内照片
            deletePhotoOnlyInternal(photo)
        }
    }

    /**
     * 仅删除应用内部照片（不删除系统相册）
     */
    private fun deletePhotoOnlyInternal(photo: PhotoData) {
        viewModelScope.launch {
            val context = getApplication<Application>()
            val success = PhotoManager.deletePhotoOnly(context, photo.id)
            if (success) {
                loadPhotos()
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
            val success = PhotoManager.deletePhotoOnly(context, photo.id)
            if (success) {
                loadPhotos()

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
            // 系统照片已经被 MediaStore 删除，我们只需要刷新列表
            loadSystemPhotos(reset = true)

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
    fun setMainBurstPhoto(photo: PhotoData, burstFile: File, onComplete: (Boolean) -> Unit) {
        viewModelScope.launch {
            val context = getApplication<Application>()
            val success = PhotoManager.setMainBurstPhoto(context, photo.id, burstFile)
            if (success) {
                photoRefreshKeys[photo.id] = System.currentTimeMillis()
                loadPhotos()
            }
            withContext(Dispatchers.Main) {
                onComplete(success)
            }
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
                    val metadata = PhotoManager.loadMetadata(context, photo.id)
                    metadata?.exportedUris?.forEach { uriString ->
                        try {
                            allExportedUris.add(uriString.toUri())
                        } catch (e: Exception) {
                            PLog.e(TAG, "Invalid URI: $uriString", e)
                        }
                    }
                }
            }

            val validExportedUris = allExportedUris.filter { it.scheme == "content" }

            if (validExportedUris.isNotEmpty()) {
                // 有导出的照片，需要用户确认
                try {
                    val pendingIntent = MediaStore.createDeleteRequest(
                        context.contentResolver,
                        validExportedUris
                    )
                    pendingDeletePhotos = toDelete
                    batchDeletePendingIntent = pendingIntent
                    PLog.d(TAG, "Set batch delete pending intent for ${toDelete.size} photos")
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to create batch delete request", e)
                    // 创建请求失败，直接删除应用内照片
                    deleteBatchPhotosOnlyInternal(toDelete)
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
    private fun deleteBatchPhotosOnlyInternal(photos: List<PhotoData>) {
        viewModelScope.launch {
            val context = getApplication<Application>()
            var deletedCount = 0

            withContext(Dispatchers.IO) {
                photos.forEach { photo ->
                    val success = PhotoManager.deletePhotoOnly(context, photo.id)
                    if (success) {
                        deletedCount++
                    }
                }
            }

            exitSelectionMode()
            loadPhotos()
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
                // 系统相册刷新
                loadSystemPhotos(reset = true)
            } else {
                // 原有的内部照片删除逻辑
                val context = getApplication<Application>()
                var deletedCount = 0

                withContext(Dispatchers.IO) {
                    photos.forEach { photo ->
                        val success = PhotoManager.deletePhotoOnly(context, photo.id)
                        if (success) {
                            deletedCount++
                        }
                    }
                }
                loadPhotos()
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
    fun getMotionPhotoVideo(photo: PhotoData): File? {
        val context = getApplication<Application>()
        val videoFile = PhotoManager.getVideoFile(context, photo.id)
        return if (videoFile.exists()) videoFile else null
    }

    /**
     * 分享照片
     */
    fun sharePhoto(photo: PhotoData) {
        viewModelScope.launch {
            _isSharing.value = true
            try {
                val context = getApplication<Application>()
                val sharedFile = prepareSharedPhoto(photo)
                if (sharedFile != null) {
                    val shareUri = FileProvider.getUriForFile(
                        context,
                        "${context.packageName}.fileprovider",
                        sharedFile
                    )

                    val shareIntent = Intent(Intent.ACTION_SEND).apply {
                        type = "image/jpeg"
                        putExtra(Intent.EXTRA_STREAM, shareUri)
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

    /**
     * 批量分享选中的照片
     */
    fun shareSelectedPhotos() {
        if (selectedPhotos.isEmpty()) return

        viewModelScope.launch {
            _isSharing.value = true
            try {
                val context = getApplication<Application>()
                val files = selectedPhotos.mapNotNull { prepareSharedPhoto(it) }
                if (files.isNotEmpty()) {
                    val uris = ArrayList(files.map { file ->
                        FileProvider.getUriForFile(
                            context,
                            "${context.packageName}.fileprovider",
                            file
                        )
                    })

                    val shareIntent = Intent(Intent.ACTION_SEND_MULTIPLE).apply {
                        type = "image/jpeg"
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

    /**
     * 进入编辑模式
     */
    fun enterEditMode() {
        val targetPhoto = getCurrentPhoto() ?: return

        if (currentPhotoMetadata == null || currentPhotoMetadataId != targetPhoto.id) {
            val context = getApplication<Application>()
            val metadata = targetPhoto.metadata ?: runBlocking {
                withContext(Dispatchers.IO) {
                    PhotoManager.loadMetadata(context, targetPhoto.id)
                }
            }
            applyMetadataToEditState(metadata)
        }

        isEditing = true
        // 从当前元数据恢复编辑状态
        currentPhotoMetadata?.let { metadata ->
            editLutId.value = metadata.lutId
            editFrameId.value = metadata.frameId
            // 智能初始化：导入的照片默认值为 0，App 拍摄的则回退到当前全局配置
            editSharpening.value =
                metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening.value)
            editNoiseReduction.value =
                metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction.value)
            editChromaNoiseReduction.value =
                metadata.chromaNoiseReduction
                    ?: (if (metadata.isImported) 0f else chromaNoiseReduction.value)
        } ?: run {
            editLutId.value = null
            editFrameId.value = null
            // 这里一般是本 App 预览或拍摄进入，保持跟随全局
            editSharpening.value = sharpening.value
            editNoiseReduction.value = noiseReduction.value
            editChromaNoiseReduction.value = chromaNoiseReduction.value
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

    /**
     * 退出编辑模式
     */
    fun exitEditMode() {
        isEditing = false
        editLutId.value = null
        editLutConfig = null
        editFrameId.value = null
    }

    /**
     * 设置 LUT
     */
    fun setEditLut(lutId: String?) {
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
        currentPhotoMetadata = currentPhotoMetadata?.copy(
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


    fun isRaw(photoId: String): Boolean {
        val context = getApplication<Application>()
        return PhotoManager.getDngFile(context, photoId).exists()
    }

    /**
     * 获取指定照片的完整转换器（LUT + 边框）
     */
    fun getPhotoTransformation(photo: PhotoData): PhotoTransformation? {
        val metadata = photo.metadata ?: return null

        // 使用照片自己的 metadata 中保存的处理参数，如果没有则使用全局设置
        // 导入的照片默认不应用处理（除非用户编辑过）
        val photoSharpening =
            metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening.value)
        val photoNoiseReduction =
            metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction.value)
        val photoChromaNoiseReduction =
            metadata.chromaNoiseReduction
                ?: (if (metadata.isImported) 0f else chromaNoiseReduction.value)

        return PhotoTransformation(
            metadata = metadata,
            photoProcessor = contentRepository.photoProcessor,
            sharpening = photoSharpening,
            noiseReduction = photoNoiseReduction,
            chromaNoiseReduction = photoChromaNoiseReduction
        )
    }

    /**
     * 生成预览缓存 key
     */
    private fun previewCacheKey(photoId: String, metadataHash: Int, refreshKey: Long): String {
        return "${photoId}_${metadataHash}_${refreshKey}"
    }

    /**
     * 清除指定照片的预览缓存
     */
    fun invalidatePreviewCache(photoId: String) {
        val snapshot = previewBitmapCache.snapshot()
        snapshot.keys.filter { it.startsWith("${photoId}_") }.forEach {
            previewBitmapCache.remove(it)
        }
    }

    /**
     * 获取应用 LUT 和边框后的预览 Bitmap
     */
    suspend fun getPreviewBitmap(
        photo: PhotoData,
        useGlobalEdit: Boolean = false,
        showOrigin: Boolean = false,
        bitmap: Bitmap? = null
    ): Bitmap? {
        return withContext(Dispatchers.IO) {
            try {
                val context = getApplication<Application>()

                val finalMetadata: PhotoMetadata
                val finalS: Float
                val finalNR: Float
                val finalCNR: Float

                val metadata =
                    photo.metadata
                        ?: photo.relatedPhoto?.metadata
                        ?: PhotoManager.loadMetadata(getApplication(), photo.id)
                        ?: PhotoMetadata()

                if (useGlobalEdit) {
                    finalMetadata = (currentPhotoMetadata ?: metadata).copy(
                        lutId = editLutId.value,
                        frameId = editFrameId.value,
                        colorRecipeParams = editLutRecipeParams.value,
                        sharpening = editSharpening.value,
                        noiseReduction = editNoiseReduction.value,
                        chromaNoiseReduction = editChromaNoiseReduction.value
                    )
                    finalS = editSharpening.value
                    finalNR = editNoiseReduction.value
                    finalCNR = editChromaNoiseReduction.value
                } else {
                    finalMetadata = metadata
                    finalS = finalMetadata.sharpening
                        ?: (if (finalMetadata.isImported) 0f else sharpening.value)
                    finalNR =
                        finalMetadata.noiseReduction
                            ?: (if (finalMetadata.isImported) 0f else noiseReduction.value)
                    finalCNR = finalMetadata.chromaNoiseReduction
                        ?: (if (finalMetadata.isImported) 0f else chromaNoiseReduction.value)
                }

                // 使用多级缓存优化性能
                val refreshKey = photoRefreshKeys[photo.id] ?: 0L
                val metadataHash = metadata.toJson().hashCode()

                // 1. 完全处理后的预览图缓存 (LUT + 边框已应用)
                val previewCacheKey = if (!useGlobalEdit && !showOrigin && bitmap == null) {
                    previewCacheKey(photo.id, metadataHash, refreshKey)
                } else null

                previewCacheKey?.let {
                    val cached = previewBitmapCache.get(it)
                    if (cached != null && !cached.isRecycled) {
                        return@withContext cached
                    }
                }

                // 2. 原始底图缓存 (4096px 状态，用于快速重新应用编辑)
                val sourceCacheKey = "${photo.id}_source_${refreshKey}"
                val currentBitmap = bitmap ?: previewBitmapCache.get(sourceCacheKey) ?: run {
                    val loaded = if (selectedTab == GalleryTab.PHOTON) {
                        PhotoManager.loadBitmap(context, photo.id, 4096)
                    } else {
                        PhotoManager.loadBitmap(context, photo.uri, 4096)
                    }
                    if (loaded != null) {
                        previewBitmapCache.put(sourceCacheKey, loaded)
                    }
                    loaded
                } ?: return@withContext null

                if (showOrigin) {
                    currentBitmap
                } else {
                    // 预览生成
                    val result = contentRepository.photoProcessor.processBitmap(
                        currentBitmap, finalMetadata,
                        finalS, finalNR, finalCNR
                    )
                    // 估计平均亮度
                    currentBrightness[photo.id] = estimateAverageBrightness(result)

                    // 存入缓存
                    if (previewCacheKey != null) {
                        previewBitmapCache.put(previewCacheKey, result)
                    }

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

    /**
     * 保存编辑（只更新元数据，不修改原图）
     */
    fun saveEditMetadata(photo: PhotoData, onComplete: (Boolean) -> Unit = {}) {
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

                val targetPhotoId = if (selectedTab == GalleryTab.SYSTEM) {
                    photo.relatedPhoto?.id ?: run {
                        val importedId = PhotoManager.importPhoto(
                            context,
                            photo.uri,
                            editLutId.value
                        )
                        if (importedId != null) {
                            photo.metadata = PhotoManager.loadMetadata(context, importedId)
                            currentPhotoMetadata = photo.metadata
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

                val metadata = currentPhotoMetadata?.copy(
                    lutId = editLutId.value,
                    frameId = editFrameId.value,
                    colorRecipeParams = editLutRecipeParams.value,
                    sharpening = editSharpening.value,
                    noiseReduction = editNoiseReduction.value,
                    chromaNoiseReduction = editChromaNoiseReduction.value,
                ) ?: run {
                    onComplete(false)
                    return@launch
                }
                val success = PhotoManager.saveMetadata(context, targetPhotoId, metadata)

                if (success) {
                    currentPhotoMetadata = metadata

                    // 如果是新导入的，刷相册列表
                    if (selectedTab == GalleryTab.SYSTEM) {
                        loadPhotos()
                    } else {
                        // 更新 photos 列表中对应照片的 metadata，触发 UI 刷新
                        val updatedPhotos = _photos.value.map { p ->
                            if (p.id == targetPhotoId) {
                                p.copy(metadata = metadata)
                            } else {
                                p
                            }
                        }
                        _photos.value = updatedPhotos
                    }

                    // 同步更新 latestPhoto
                    if (_latestPhoto.value?.id == targetPhotoId) {
                        _latestPhoto.value = _latestPhoto.value?.copy(metadata = metadata)
                    }

                    exitEditMode()
                    invalidatePreviewCache(targetPhotoId)
                }
                onComplete(success)
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to save metadata", e)
                onComplete(false)
            }
        }
    }

    /**
     * 刷新 RAW 照片的预览图
     */
    fun refreshRawPreview(photo: PhotoData, onComplete: (Boolean) -> Unit = {}) {
        if (refreshingPhotos.contains(photo.id)) return

        viewModelScope.launch {
            refreshingPhotos.add(photo.id)
            try {
                val context = getApplication<Application>()
                val result = PhotoManager.refreshRawPreview(context, photo.id)
                if (result != null) {
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
        photo: PhotoData,
        bitmap: Bitmap? = null,
        suffix: String? = null,
        onComplete: (Boolean) -> Unit = {}
    ) {
        viewModelScope.launch {
            var photoId = photo.id
            if (selectedTab == GalleryTab.SYSTEM) {
                photoId = photo.relatedPhoto?.id ?: photoId
            }
            val metadata = PhotoManager.loadMetadata(getApplication(), photoId) ?: photo.metadata
            ?: PhotoMetadata()
            val context = getApplication<Application>()
            val success = PhotoManager.exportPhoto(
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

    private suspend fun prepareSharedPhoto(photo: PhotoData): File? = withContext(Dispatchers.IO) {
        try {
            val context = getApplication<Application>()
            val metadata =
                photo.metadata ?: PhotoManager.loadMetadata(context, photo.id) ?: PhotoMetadata()

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

            sharedFile
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to prepare shared photo", e)
            null
        }
    }

    /**
     * 批量导入照片
     */
    fun importPhotos(uris: List<Uri>) {
        if (uris.isEmpty()) return

        viewModelScope.launch {
            _isLoading.value = true
            try {
                val context = getApplication<Application>()
                var successCount = 0

                withContext(Dispatchers.IO) {
                    val lutId = defaultLutId.firstOrNull() ?: contentRepository.getAvailableLuts()
                        .firstOrNull { it.isDefault }?.id
                    uris.forEach { uri ->
                        val photoId = PhotoManager.importPhoto(context, uri, lutId)
                        if (photoId != null) {
                            successCount++
                        }
                    }
                }

                if (successCount > 0) {
                    loadPhotos()
                }
                PLog.d(TAG, "Imported $successCount of ${uris.size} photos")
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
}
