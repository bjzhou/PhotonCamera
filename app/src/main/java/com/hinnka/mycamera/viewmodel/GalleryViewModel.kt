package com.hinnka.mycamera.viewmodel

import android.app.Application
import android.content.Context
import android.content.ContentValues
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.os.Environment
import android.provider.MediaStore
import android.util.Log
import androidx.compose.runtime.*
import androidx.core.content.FileProvider
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.frame.FrameRenderer
import com.hinnka.mycamera.gallery.*
import com.hinnka.mycamera.lut.*
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import java.text.SimpleDateFormat
import java.util.*
import kotlin.collections.set
import kotlin.math.max

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
    private val lutImageProcessor = LutImageProcessor()
    private val frameRenderer = FrameRenderer(application)
    private val photoProcessor = PhotoProcessor(
        contentRepository.lutManager,
        lutImageProcessor,
        contentRepository.frameManager,
        frameRenderer
    )

    // 计费管理器
    private val billingManager = com.hinnka.mycamera.billing.BillingManagerImpl(application)
    val isPurchased = billingManager.isPurchased

    // 付费弹窗状态
    var showPaymentDialog by mutableStateOf(false)
    
    // 照片列表
    private val _photos = MutableStateFlow<List<PhotoData>>(emptyList())
    val photos: StateFlow<List<PhotoData>> = _photos.asStateFlow()
    
    // 加载状态
    private val _isLoading = MutableStateFlow(false)
    val isLoading:StateFlow<Boolean> = _isLoading.asStateFlow()

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
    
    // 编辑参数
    var editRotation by mutableFloatStateOf(0f)
        private set
    var editBrightness by mutableFloatStateOf(1f)
        private set
    
    // LUT 编辑状态
    var editLutId: String? by mutableStateOf(null)
        private set
    var editLutIntensity by mutableFloatStateOf(1f)
        private set
    var editLutConfig: LutConfig? by mutableStateOf(null)
        private set
    
    // 当前照片的元数据
    var currentPhotoMetadata: PhotoMetadata? by mutableStateOf(null)
        private set
    
    // 可用的 LUT 列表
    var availableLuts: List<LutInfo> by mutableStateOf(emptyList())
        private set
    
    // 边框编辑状态
    var editFrameId: String? by mutableStateOf(null)
        private set
    var editShowAppBranding by mutableStateOf(true)
        private set
    
    // 可用的边框列表
    var availableFrames: List<FrameInfo> by mutableStateOf(emptyList())
        private set
    
    // 最新照片（用于相机界面显示入口）
    private val _latestPhoto = MutableStateFlow<PhotoData?>(null)
    val latestPhoto: StateFlow<PhotoData?> = _latestPhoto.asStateFlow()
    
    init {
        loadPhotos()
        contentRepository.initialize()

        // 订阅 ContentRepository 的 StateFlow，实现自动更新
        viewModelScope.launch {
            contentRepository.availableLuts.collect { luts ->
                availableLuts = luts
                Log.d(TAG, "GalleryViewModel: availableLuts updated to ${luts.size} items")
            }
        }

        viewModelScope.launch {
            contentRepository.availableFrames.collect { frames ->
                availableFrames = frames
                Log.d(TAG, "GalleryViewModel: availableFrames updated to ${frames.size} items")
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
                Log.e(TAG, "Failed to load photos", e)
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
                Log.e(TAG, "Failed to load dimensions for ${photo.id}", e)
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
                        Log.e(TAG, "Failed to load dimensions for latest photo", e)
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
                editLutId = metadata.lutId
                editLutIntensity = metadata.lutIntensity
                editBrightness = metadata.brightness
                editRotation = metadata.rotation
                editFrameId = metadata.frameId
                editShowAppBranding = metadata.showAppBranding
                
                // 加载 LUT 配置
                editLutId?.let { id ->
                    editLutConfig = withContext(Dispatchers.IO) {
                        contentRepository.lutManager.loadLut(id)
                    }
                }
            }
        }
    }

    suspend fun loadLutPreviews(photo: PhotoData): List<Bitmap?> {
        val context = getApplication<Application>()
        val inputStream = context.contentResolver.openInputStream(photo.uri)
        val options = BitmapFactory.Options().apply {
            inSampleSize = max(photo.width, photo.height) / 128
        }
        val bitmap = BitmapFactory.decodeStream(inputStream, null, options)
        inputStream?.close()

        if (bitmap == null) return emptyList()

        return availableLuts.map { lutInfo ->
            val lutConfig = withContext(Dispatchers.IO) {
                contentRepository.lutManager.loadLut(lutInfo.id)
            }

            if (lutConfig != null) {
                lutImageProcessor.applyLut(
                    bitmap = bitmap.copy(Bitmap.Config.ARGB_8888, false),
                    lutConfig = lutConfig,
                    intensity = 1.0f
                )
            } else null
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
     * 删除单张照片
     */
    fun deletePhoto(photo: PhotoData, onComplete: (Boolean) -> Unit = {}) {
        viewModelScope.launch {
            val success = repository.deletePhoto(photo)
            if (success) {
                // PhotoManager.deletePhoto 已由 repository.deletePhoto 调用
                loadPhotos()
            }
            onComplete(success)
        }
    }
    
    /**
     * 删除当前照片
     */
    fun deleteCurrentPhoto(onComplete: (Boolean) -> Unit = {}) {
        getCurrentPhoto()?.let { photo ->
            deletePhoto(photo) { success ->
                if (success && currentPhotoIndex >= _photos.value.size) {
                    currentPhotoIndex = (_photos.value.size - 1).coerceAtLeast(0)
                }
                onComplete(success)
            }
        }
    }
    
    /**
     * 批量删除选中的照片
     */
    fun deleteSelectedPhotos(onComplete: (Int) -> Unit = {}) {
        viewModelScope.launch {
            val toDelete = selectedPhotos.toList()
            val deletedCount = repository.deletePhotos(toDelete)
            
            exitSelectionMode()
            loadPhotos()
            onComplete(deletedCount)
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
            editLutId = metadata.lutId
            editLutIntensity = metadata.lutIntensity
            editBrightness = metadata.brightness
            editRotation = metadata.rotation
            editFrameId = metadata.frameId
            editShowAppBranding = metadata.showAppBranding
        } ?: run {
            editLutId = null
            editLutIntensity = 1f
            editBrightness = 1f
            editRotation = 0f
            editFrameId = null
            editShowAppBranding = true
        }
        
        // 加载当前编辑的 LUT 配置
        editLutId?.let { id ->
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
        editRotation = 0f
        editBrightness = 1f
        editLutId = null
        editLutIntensity = 1f
        editLutConfig = null
        editFrameId = null
        editShowAppBranding = true
    }
    
    /**
     * 旋转90度
     */
    fun rotate90() {
        editRotation = (editRotation + 90f) % 360f
    }
    
    /**
     * 设置亮度
     */
    fun setBrightness(value: Float) {
        editBrightness = value.coerceIn(0.5f, 2f)
    }
    
    /**
     * 设置 LUT
     */
    fun setEditLut(lutId: String?) {
        editLutId = lutId
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
     * 设置 LUT 强度
     */
    fun updateEditLutIntensity(intensity: Float) {
        editLutIntensity = intensity.coerceIn(0f, 1f)
    }
    
    /**
     * 设置边框
     */
    fun setEditFrame(frameId: String?) {
        editFrameId = frameId
    }
    
    /**
     * 设置是否显示 App 品牌
     */
    fun setShowAppBranding(show: Boolean) {
        editShowAppBranding = show
    }
    
    /**
     * 获取指定照片的完整转换器（LUT + 边框）
     */
    fun getPhotoTransformation(photo: PhotoData): PhotoTransformation {
        val context = getApplication<Application>()
        return PhotoTransformation(
            context = context,
            uri = photo.uri,
            metadata = photo.metadata ?: PhotoMetadata(),
            photoProcessor = photoProcessor
        )
    }
    /**
     * 获取应用 LUT 和边框后的预览 Bitmap
     */
    suspend fun getPreviewBitmap(photo: PhotoData): Bitmap? {
        return withContext(Dispatchers.IO) {
            try {
                val context = getApplication<Application>()
                val inputStream = context.contentResolver.openInputStream(photo.previewUri)
                val bitmap = BitmapFactory.decodeStream(inputStream)
                inputStream?.close()
                
                if (bitmap == null) return@withContext null
                
                val metadata = (photo.metadata ?: PhotoMetadata()).copy(
                    lutId = editLutId,
                    lutIntensity = editLutIntensity,
                    brightness = editBrightness,
                    rotation = editRotation,
                    frameId = editFrameId,
                    showAppBranding = editShowAppBranding
                )
                
                photoProcessor.process(context, bitmap, metadata, photo.previewUri)
            } catch (e: Exception) {
                Log.e(TAG, "Failed to create preview", e)
                null
            }
        }
    }
    
    /**
     * 保存编辑（只更新元数据，不修改原图）
     */
    fun saveEditMetadata(photo: PhotoData, onComplete: (Boolean) -> Unit = {}) {
        // 检查 VIP 权限
        val currentLut = availableLuts.find { it.id == editLutId }
        if (currentLut?.isVip == true && !isPurchased.value) {
            showPaymentDialog = true
            onComplete(false)
            return
        }

        viewModelScope.launch {
            try {
                val context = getApplication<Application>()
                val metadata = (currentPhotoMetadata ?: PhotoMetadata()).copy(
                    lutId = editLutId,
                    lutIntensity = editLutIntensity,
                    brightness = editBrightness,
                    rotation = editRotation,
                    frameId = editFrameId,
                    showAppBranding = editShowAppBranding
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
                Log.e(TAG, "Failed to save metadata", e)
                onComplete(false)
            }
        }
    }
    
    /**
     * 保存编辑（导出烘焙后的图片）
     */
    fun saveEdit(photo: PhotoData, onComplete: (Boolean) -> Unit = {}) {
        // 检查 VIP 权限
        val currentLut = availableLuts.find { it.id == editLutId }
        if (currentLut?.isVip == true && !isPurchased.value) {
            showPaymentDialog = true
            return
        }

        val metadata = (photo.metadata ?: PhotoMetadata()).copy(
            lutId = editLutId,
            lutIntensity = editLutIntensity,
            brightness = editBrightness,
            rotation = editRotation,
            frameId = editFrameId,
            showAppBranding = editShowAppBranding
        )
        exportPhotoInternal(
            photo = photo,
            metadata = metadata,
            directory = Environment.DIRECTORY_DCIM + "/PhotonCamera",
            onComplete = { success ->
                if (success) {
                    exitEditMode()
                    loadPhotos()
                }
                onComplete(success)
            }
        )
    }

    /**
     * 导出照片到公共目录（带 LUT 烘焙）
     */
    fun exportPhoto(photo: PhotoData, onComplete: (Boolean) -> Unit = {}) {
        viewModelScope.launch {
            val metadata = photo.metadata ?: PhotoManager.loadMetadata(getApplication(), photo.id) ?: PhotoMetadata()
            exportPhotoInternal(
                photo = photo,
                metadata = metadata,
                directory = Environment.DIRECTORY_DCIM + "/PhotonCamera",
                onComplete = onComplete
            )
        }
    }

    private suspend fun prepareSharedPhoto(photo: PhotoData): File? = withContext(Dispatchers.IO) {
        try {
            val context = getApplication<Application>()
            val metadata = photo.metadata ?: PhotoManager.loadMetadata(context, photo.id) ?: PhotoMetadata()

            // 读取照片
            val inputStream = context.contentResolver.openInputStream(photo.uri)
            val bitmap = BitmapFactory.decodeStream(inputStream)
            inputStream?.close()

            if (bitmap == null) return@withContext null

            // 处理照片
            val processedBitmap = photoProcessor.process(context, bitmap, metadata, photo.uri)

            // 保存到缓存目录
            val sharedDir = File(context.cacheDir, "shared")
            if (!sharedDir.exists()) sharedDir.mkdirs()

            val sharedFile = File(sharedDir, "share_${photo.id}.jpg")
            FileOutputStream(sharedFile).use { out ->
                processedBitmap.compress(Bitmap.CompressFormat.JPEG, 95, out)
            }

            processedBitmap.recycle()
            bitmap.recycle()

            sharedFile
        } catch (e: Exception) {
            Log.e(TAG, "Failed to prepare shared photo", e)
            null
        }
    }

    /**
     * 内部导出逻辑实现
     */
    private fun exportPhotoInternal(
        photo: PhotoData,
        metadata: PhotoMetadata,
        directory: String,
        filenameSuffix: String = "",
        onComplete: (Boolean) -> Unit = {}
    ) {
        viewModelScope.launch {
            try {
                val context = getApplication<Application>()
                
                // 读取照片
                val inputStream = context.contentResolver.openInputStream(photo.uri)
                val bitmap = BitmapFactory.decodeStream(inputStream)
                inputStream?.close()
                
                if (bitmap == null) {
                    onComplete(false)
                    return@launch
                }
                
                // 处理照片
                val processedBitmap = photoProcessor.process(context, bitmap, metadata, photo.uri)
                
                // 保存到指定目录
                val filename = "PhotonCamera_${SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())}$filenameSuffix.jpg"
                val contentValues = ContentValues().apply {
                    put(MediaStore.MediaColumns.DISPLAY_NAME, filename)
                    put(MediaStore.MediaColumns.MIME_TYPE, "image/jpeg")
                    put(MediaStore.MediaColumns.RELATIVE_PATH, directory)
                }
                
                val uri = context.contentResolver.insert(
                    MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                    contentValues
                )
                
                uri?.let {
                    context.contentResolver.openOutputStream(it)?.use { outputStream ->
                        processedBitmap.compress(Bitmap.CompressFormat.JPEG, 95, outputStream)
                    }
                }
                
                processedBitmap.recycle()
                onComplete(uri != null)
                
            } catch (e: Exception) {
                Log.e(TAG, "Failed to export photo", e)
                onComplete(false)
            }
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
            Log.d(TAG, "Custom content refreshed via ContentRepository")
        }
    }
}
