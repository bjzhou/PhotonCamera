package com.hinnka.mycamera.viewmodel

import android.app.Application
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.os.Build
import android.provider.MediaStore
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
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

/**
 * 相册 ViewModel
 * 管理照片列表、选择状态和各种操作
 */
class GalleryViewModel(application: Application) : AndroidViewModel(application) {

    companion object {
        private const val TAG = "GalleryViewModel"
    }

    private val repository = GalleryRepository(application)

    // 内容仓库（单例，与 CameraViewModel 共享）
    private val contentRepository = ContentRepository.getInstance(application)
    private val lutImageProcessor = contentRepository.imageProcessor
    private val frameRenderer = FrameRenderer(application)
    private val photoProcessor = PhotoProcessor(
        contentRepository.lutManager,
        lutImageProcessor,
        contentRepository.frameManager,
        frameRenderer
    )

    // 用户偏好设置仓库
    private val userPreferencesRepository = UserPreferencesRepository(application)

    // 软件处理参数
    val sharpening: StateFlow<Float> = userPreferencesRepository.userPreferences
        .map { it.sharpening }
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), 0f)

    val noiseReduction: StateFlow<Float> = userPreferencesRepository.userPreferences
        .map { it.noiseReduction }
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), 0f)

    val chromaNoiseReduction: StateFlow<Float> = userPreferencesRepository.userPreferences
        .map { it.chromaNoiseReduction }
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), 0f)

    val categoryOrder: StateFlow<List<String>> = userPreferencesRepository.userPreferences
        .map { it.categoryOrder }
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), emptyList())

    // 计费管理器
    private val billingManager = com.hinnka.mycamera.billing.BillingManagerImpl(application)
    val isPurchased = billingManager.isPurchased

    // 付费弹窗状态
    var showPaymentDialog by mutableStateOf(false)

    // 水印编辑弹窗状态
    var showWatermarkSheet by mutableStateOf(false)

    // 照片列表
    private val _photos = MutableStateFlow<List<PhotoData>>(emptyList())
    val photos: StateFlow<List<PhotoData>> = _photos.asStateFlow()

    // 加载状态
    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()

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
        started = SharingStarted.WhileSubscribed(5000),
        initialValue = ColorRecipeParams.DEFAULT
    )

    var editLutConfig: LutConfig? by mutableStateOf(null)
        private set

    // 当前照片的元数据
    var currentPhotoMetadata: PhotoMetadata? by mutableStateOf(null)
        private set

    // 可用的 LUT 列表
    var availableLuts: List<LutInfo> by mutableStateOf(emptyList())
        private set

    // 边框编辑状态
    var editFrameId = MutableStateFlow<String?>(null)
        private set

    // 可用的边框列表
    var availableFrames: List<FrameInfo> by mutableStateOf(emptyList())
        private set

    // 水印自定义属性（从 FrameManager 持久化加载）
    @OptIn(ExperimentalCoroutinesApi::class)
    var editFrameCustomProperties = editFrameId.flatMapLatest { id ->
        if (id == null) {
            flowOf(emptyMap())
        } else {
            contentRepository.frameManager.getCustomProperties(id)
        }
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5000),
        initialValue = emptyMap()
    )

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
                PLog.d(TAG, "GalleryViewModel: availableLuts updated to ${sortedLuts.size} items (sorted)")
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
                PLog.d(TAG, "GalleryViewModel: availableFrames updated to ${sortedFrames.size} items (sorted)")
            }
        }
    }

    /**
     * 加载照片列表
     */
    fun loadPhotos() {
        viewModelScope.launch {
            if (_photos.value.isEmpty()) {
                _isLoading.value = true
            }
            try {
                // 1. Get basic list from repository (fast: file list only)
                val newList = repository.getPhotosSync()

                // 2. Reuse existing objects to preserve metadata and avoid UI replacement
                val currentPhotos = _photos.value.associateBy { it.id }
                val mergedList = newList.map { photo ->
                    currentPhotos[photo.id] ?: photo
                }

                val context = getApplication<Application>()

                // 3. Eagerly load metadata for the first ~30 items (visible area)
                val topItemsToLoad = mergedList.take(30).filter { it.metadata == null }
                val topItemsLoaded = if (topItemsToLoad.isNotEmpty()) {
                    withContext(Dispatchers.IO) {
                        topItemsToLoad.map { photo ->
                            async {
                                loadSpecificPhotoMetadata(context, photo)
                            }
                        }.awaitAll()
                    }
                } else emptyList()

                val topMap = topItemsLoaded.associateBy { it.id }
                val updatedWithTop = mergedList.map { photo ->
                    topMap[photo.id] ?: photo
                }

                // Update UI for the first time
                _photos.value = updatedWithTop
                _latestPhoto.value = updatedWithTop.firstOrNull()
                _isLoading.value = false

                // 4. Load the rest of the metadata in background
                val remainingToLoad = updatedWithTop.filter { it.metadata == null }
                if (remainingToLoad.isNotEmpty()) {
                    val fullyUpdatedList = withContext(Dispatchers.IO) {
                        remainingToLoad.map { photo ->
                            async { loadSpecificPhotoMetadata(context, photo) }
                        }.awaitAll()
                    }

                    // Final update: merge background results back into the list
                    val finalMap = fullyUpdatedList.associateBy { it.id }
                    val finalPhotos = updatedWithTop.map { photo ->
                        finalMap[photo.id] ?: photo
                    }
                    _photos.value = finalPhotos
                }
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to load photos", e)
                _isLoading.value = false
            }
        }
    }

    private suspend fun loadSpecificPhotoMetadata(context: Context, photo: PhotoData): PhotoData {
        var metadata = PhotoManager.loadMetadata(context, photo.id)
        var updatedPhoto = if (metadata != null) {
            photo.copy(metadata = metadata)
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
                    updatedPhoto = updatedPhoto.copy(width = options.outWidth, height = options.outHeight)

                    // Cache dimensions back to metadata
                    val currentMeta = metadata ?: PhotoMetadata()
                    val newMetadata = currentMeta.copy(width = options.outWidth, height = options.outHeight)
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
        return updatedPhoto
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
                        updatedPhoto = updatedPhoto.copy(width = options.outWidth, height = options.outHeight)

                        metadata?.let { m ->
                            val newMetadata = m.copy(width = options.outWidth, height = options.outHeight)
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
     * 加载当前照片的元数据
     */
    fun loadCurrentPhotoMetadata() {
        val photo = getCurrentPhoto() ?: return
        viewModelScope.launch {
            val context = getApplication<Application>()
            currentPhotoMetadata = PhotoManager.loadMetadata(context, photo.id)

            // 更新编辑状态
            currentPhotoMetadata?.let { metadata ->
                editLutId.value = metadata.lutId
                editFrameId.value = metadata.frameId

                // 智能初始化：导入的照片默认值为 0，App 拍摄的默认跟随全局设置
                val defaultVal = if (metadata.isImported) 0f else 1f // 辅助判定是否需要使用全局
                editSharpening.value = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening.value)
                editNoiseReduction.value =
                    metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction.value)
                editChromaNoiseReduction.value =
                    metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else chromaNoiseReduction.value)

                // 加载 LUT 配置
                editLutId.value?.let { id ->
                    editLutConfig = withContext(Dispatchers.IO) {
                        contentRepository.lutManager.loadLut(id)
                    }
                }
            }
        }
    }

    fun loadThumbnail(photo: PhotoData): Bitmap? {
        val context = getApplication<Application>()
        val inputStream = context.contentResolver.openInputStream(photo.thumbnailUri)
        val bitmap = BitmapFactory.decodeStream(inputStream)
        inputStream?.close()
        return bitmap
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
     * 设置当前查看的照片
     */
    fun setCurrentPhoto(index: Int) {
        currentPhotoIndex = index.coerceIn(0, (_photos.value.size - 1).coerceAtLeast(0))
        loadCurrentPhotoMetadata()
    }

    /**
     * 获取当前照片
     */
    fun getCurrentPhoto(): PhotoData? {
        return _photos.value.getOrNull(currentPhotoIndex)
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
        if (!deleteExported) {
            // 不删除系统相册照片，直接删除应用内部照片
            deletePhotoOnlyInternal(photo)
            return
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
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
        } else {
            // Android 10 及以下: 直接删除所有照片
            deletePhotoDirectly(photo)
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
    }

    /**
     * 清除批量删除请求状态
     */
    fun clearBatchDeleteRequest() {
        pendingDeletePhotos = emptyList()
        batchDeletePendingIntent = null
    }

    /**
     * 直接删除照片（不检查系统相册）
     */
    private fun deletePhotoDirectly(photo: PhotoData) {
        viewModelScope.launch {
            val success = repository.deletePhoto(photo)
            if (success) {
                loadPhotos()
                PLog.d(TAG, "Photo deleted: ${photo.id}")
            } else {
                PLog.e(TAG, "Failed to delete photo: ${photo.id}")
            }
        }
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
     * 删除当前照片
     */
    fun deleteCurrentPhoto() {
        getCurrentPhoto()?.let { photo ->
            requestDeletePhoto(photo)
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

        if (!deleteExported) {
            // 不删除系统相册照片，直接删除应用内部照片
            deleteBatchPhotosOnlyInternal(toDelete)
            return
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            // Android 11+: 收集所有导出的 URIs
            viewModelScope.launch {
                val context = getApplication<Application>()
                val allExportedUris = mutableListOf<Uri>()

                withContext(Dispatchers.IO) {
                    toDelete.forEach { photo ->
                        val metadata = PhotoManager.loadMetadata(context, photo.id)
                        metadata?.exportedUris?.forEach { uriString ->
                            try {
                                allExportedUris.add(Uri.parse(uriString))
                            } catch (e: Exception) {
                                PLog.e(TAG, "Invalid URI: $uriString", e)
                            }
                        }
                    }
                }

                if (allExportedUris.isNotEmpty()) {
                    // 有导出的照片，需要用户确认
                    try {
                        val pendingIntent = MediaStore.createDeleteRequest(
                            context.contentResolver,
                            allExportedUris
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
        } else {
            // Android 10 及以下: 直接删除
            deleteBatchPhotosDirectly(toDelete)
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
     * 直接批量删除照片（不检查系统相册）
     */
    private fun deleteBatchPhotosDirectly(photos: List<PhotoData>) {
        viewModelScope.launch {
            val deletedCount = repository.deletePhotos(photos)
            exitSelectionMode()
            loadPhotos()
            PLog.d(TAG, "Batch deleted $deletedCount photos")
        }
    }

    /**
     * 批量删除确认后的回调（在用户确认删除系统相册照片后调用）
     */
    fun deleteBatchPhotosAfterConfirmation(onComplete: (Int) -> Unit = {}) {
        val photos = pendingDeletePhotos
        if (photos.isEmpty()) return

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
            clearBatchDeleteRequest()
            onComplete(deletedCount)
            PLog.d(TAG, "Batch deleted $deletedCount photos after confirmation")
        }
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
        isEditing = true
        // 从当前元数据恢复编辑状态
        currentPhotoMetadata?.let { metadata ->
            editLutId.value = metadata.lutId
            editFrameId.value = metadata.frameId
            // 智能初始化：导入的照片默认值为 0，App 拍摄的则回退到当前全局配置
            editSharpening.value = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening.value)
            editNoiseReduction.value =
                metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction.value)
            editChromaNoiseReduction.value =
                metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else chromaNoiseReduction.value)
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

    /**
     * 保存当前边框的自定义属性到持久化存储
     */
    fun saveEditCustomProperties(properties: Map<String, String>) {
        viewModelScope.launch {
            editFrameId.value?.let { contentRepository.frameManager.saveCustomProperties(it, properties) }
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
    fun getPhotoTransformation(photo: PhotoData): PhotoTransformation {
        val metadata = photo.metadata ?: PhotoMetadata()

        // 使用照片自己的 metadata 中保存的处理参数，如果没有则使用全局设置
        // 导入的照片默认不应用处理（除非用户编辑过）
        val photoSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening.value)
        val photoNoiseReduction = metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction.value)
        val photoChromaNoiseReduction =
            metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else chromaNoiseReduction.value)

        return PhotoTransformation(
            metadata = metadata,
            photoProcessor = photoProcessor,
            sharpening = photoSharpening,
            noiseReduction = photoNoiseReduction,
            chromaNoiseReduction = photoChromaNoiseReduction
        )
    }

    /**
     * 获取应用 LUT 和边框后的预览 Bitmap
     */
    suspend fun getPreviewBitmap(photo: PhotoData, useGlobalEdit: Boolean = false, showOrigin: Boolean = false): Bitmap? {
        return withContext(Dispatchers.IO) {
            try {
                val context = getApplication<Application>()

                val finalMetadata: PhotoMetadata
                val finalS: Float
                val finalNR: Float
                val finalCNR: Float

                if (useGlobalEdit) {
                    finalMetadata = (photo.metadata ?: PhotoMetadata()).copy(
                        lutId = editLutId.value,
                        frameId = editFrameId.value,
                        colorRecipeParams = editLutRecipeParams.value,
                        customProperties = editFrameCustomProperties.value,
                        sharpening = editSharpening.value,
                        noiseReduction = editNoiseReduction.value,
                        chromaNoiseReduction = editChromaNoiseReduction.value
                    )
                    finalS = editSharpening.value
                    finalNR = editNoiseReduction.value
                    finalCNR = editChromaNoiseReduction.value
                } else {
                    finalMetadata = photo.metadata ?: PhotoMetadata()
                    finalS = finalMetadata.sharpening ?: (if (finalMetadata.isImported) 0f else sharpening.value)
                    finalNR =
                        finalMetadata.noiseReduction ?: (if (finalMetadata.isImported) 0f else noiseReduction.value)
                    finalCNR = finalMetadata.chromaNoiseReduction
                        ?: (if (finalMetadata.isImported) 0f else chromaNoiseReduction.value)
                }

                val bitmap = PhotoManager.loadBitmap(context, photo.id) ?: return@withContext null

                if (showOrigin) {
                    bitmap
                } else {
                    // 预览生成
                    photoProcessor.processBitmap(
                        bitmap, finalMetadata,
                        finalS, finalNR, finalCNR
                    )
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
                val metadata = (currentPhotoMetadata ?: PhotoMetadata()).copy(
                    lutId = editLutId.value,
                    frameId = editFrameId.value,
                    colorRecipeParams = editLutRecipeParams.value,
                    customProperties = editFrameCustomProperties.value,
                    sharpening = editSharpening.value,
                    noiseReduction = editNoiseReduction.value,
                    chromaNoiseReduction = editChromaNoiseReduction.value
                )
                val success = PhotoManager.saveMetadata(context, photo.id, metadata)

                if (success) {
                    currentPhotoMetadata = metadata

                    // 更新 photos 列表中对应照片的 metadata，触发 UI 刷新
                    val updatedPhotos = _photos.value.map { p ->
                        if (p.id == photo.id) {
                            p.copy(metadata = metadata)
                        } else {
                            p
                        }
                    }
                    _photos.value = updatedPhotos

                    // 同步更新 latestPhoto
                    if (_latestPhoto.value?.id == photo.id) {
                        _latestPhoto.value = _latestPhoto.value?.copy(metadata = metadata)
                    }

                    exitEditMode()
                }
                onComplete(success)
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to save metadata", e)
                onComplete(false)
            }
        }
    }

    /**
     * 导出照片到公共目录（带 LUT 烘焙）
     */
    fun exportPhoto(photo: PhotoData, onComplete: (Boolean) -> Unit = {}) {
        viewModelScope.launch {
            val metadata = photo.metadata ?: PhotoManager.loadMetadata(getApplication(), photo.id) ?: PhotoMetadata()
            val context = getApplication<Application>()
            PhotoManager.exportPhoto(context, photo.id, photoProcessor, metadata,
                sharpening.value, noiseReduction.value,
                chromaNoiseReduction.value) { success ->
                if (success) {
                    exitEditMode()
                    loadPhotos()
                }
                onComplete(success)
            }
        }
    }

    private suspend fun prepareSharedPhoto(photo: PhotoData): File? = withContext(Dispatchers.IO) {
        try {
            val context = getApplication<Application>()
            val metadata = photo.metadata ?: PhotoManager.loadMetadata(context, photo.id) ?: PhotoMetadata()

            // 处理照片：跟随用户设置
            val processedBitmap = photoProcessor.process(
                context, photo.id, metadata,
                sharpening.value, noiseReduction.value, chromaNoiseReduction.value
            ) ?: return@withContext null

            // 保存到缓存目录
            val sharedDir = File(context.cacheDir, "shared")
            if (!sharedDir.exists()) sharedDir.mkdirs()

            val sharedFile = File(sharedDir, "share_${photo.id}.jpg")
            FileOutputStream(sharedFile).use { out ->
                // 使用 95 质量以获得更高的图像清晰度
                processedBitmap.compress(Bitmap.CompressFormat.JPEG, 95, out)
            }

            processedBitmap.recycle()

            sharedFile
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to prepare shared photo", e)
            null
        }
    }

    /**
     * 导入照片
     */
    fun importPhoto(uri: Uri) {
        viewModelScope.launch {
            _isLoading.value = true
            val photoId = PhotoManager.importPhoto(getApplication(), uri)
            if (photoId != null) {
                loadPhotos()
            }
            _isLoading.value = false
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
                    uris.forEach { uri ->
                        val photoId = PhotoManager.importPhoto(context, uri)
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
        lutImageProcessor.release()
        contentRepository.lutManager.clearCache()
    }

    /**
     * 发起购买
     */
    fun purchase(activity: android.app.Activity) {
        billingManager.purchase(activity)
    }

    /**
     * 刷新购买状态
     */
    fun refreshPurchases() {
        billingManager.refresh()
    }

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
                // StateFlow 会自动更新 availableLuts 和 availableFrames
                contentRepository.refreshCustomContent()
            }
            PLog.d(TAG, "Custom content refreshed via ContentRepository")
        }
    }
}
