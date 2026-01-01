package com.hinnka.mycamera.viewmodel

import android.app.Application
import android.content.ContentValues
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import androidx.core.content.FileProvider
import java.io.File
import android.graphics.Canvas
import android.graphics.ColorMatrix
import android.graphics.ColorMatrixColorFilter
import android.graphics.Matrix
import android.graphics.Paint
import android.net.Uri
import android.os.Environment
import android.provider.MediaStore
import android.util.Log
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.gallery.GalleryRepository
import com.hinnka.mycamera.gallery.PhotoData
import com.hinnka.mycamera.gallery.PhotoMetadata
import com.hinnka.mycamera.gallery.PhotoManager
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.lut.LutTransformation
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * 相册 ViewModel
 * 管理照片列表、选择状态和各种操作
 */
class GalleryViewModel(application: Application) : AndroidViewModel(application) {
    
    companion object {
        private const val TAG = "GalleryViewModel"
    }
    
    private val repository = GalleryRepository(application)
    private val lutManager = LutManager(application)
    private val lutImageProcessor = LutImageProcessor()
    
    // 照片列表
    private val _photos = MutableStateFlow<List<PhotoData>>(emptyList())
    val photos: StateFlow<List<PhotoData>> = _photos.asStateFlow()
    
    // 加载状态
    private val _isLoading = MutableStateFlow(false)
    val isLoading: StateFlow<Boolean> = _isLoading.asStateFlow()
    
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
    
    // 最新照片（用于相机界面显示入口）
    private val _latestPhoto = MutableStateFlow<PhotoData?>(null)
    val latestPhoto: StateFlow<PhotoData?> = _latestPhoto.asStateFlow()
    
    init {
        loadPhotos()
        lutManager.initialize()
        availableLuts = lutManager.getAvailableLuts()
    }
    
    /**
     * 加载照片列表
     */
    fun loadPhotos() {
        viewModelScope.launch {
            _isLoading.value = true
            try {
                val photoList = repository.getPhotosSync()
                val context = getApplication<Application>()
                photoList.forEach { photo ->
                    photo.metadata = PhotoManager.loadMetadata(context, photo.id)
                }
                _photos.value = photoList
                _latestPhoto.value = _photos.value.firstOrNull()
            } catch (e: Exception) {
                Log.e(TAG, "Failed to load photos", e)
            } finally {
                _isLoading.value = false
            }
        }
    }
    
    /**
     * 刷新最新照片
     */
    fun refreshLatestPhoto() {
        viewModelScope.launch {
            val photo = repository.getLatestPhoto()
            photo?.let {
                val context = getApplication<Application>()
                it.metadata = PhotoManager.loadMetadata(context, it.id)
            }
            _latestPhoto.value = photo
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
                
                // 加载 LUT 配置
                if (metadata.lutId != null) {
                    editLutConfig = withContext(Dispatchers.IO) {
                        lutManager.loadLut(metadata.lutId)
                    }
                }
            }
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
        val context = getApplication<Application>()
        val photoFile = PhotoManager.getPhotoFile(context, photo.id)
        val shareUri = FileProvider.getUriForFile(
            context,
            "${context.packageName}.fileprovider",
            photoFile
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
    
    /**
     * 批量分享选中的照片
     */
    fun shareSelectedPhotos() {
        if (selectedPhotos.isEmpty()) return
        
        val context = getApplication<Application>()
        val uris = ArrayList(selectedPhotos.map { photo ->
            val photoFile = PhotoManager.getPhotoFile(context, photo.id)
            FileProvider.getUriForFile(
                context,
                "${context.packageName}.fileprovider",
                photoFile
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
        } ?: run {
            editLutId = null
            editLutIntensity = 1f
            editBrightness = 1f
            editRotation = 0f
            editLutConfig = null
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
                lutManager.loadLut(lutId)
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
     * 获取指定照片的 LUT 转换器
     */
    fun getLutTransformation(metadata: PhotoMetadata?): LutTransformation {
        return LutTransformation(
            lutId = metadata?.lutId,
            intensity = metadata?.lutIntensity ?: 1f,
            lutManager = lutManager,
            lutImageProcessor = lutImageProcessor
        )
    }
    
    /**
     * 获取应用 LUT 后的预览 Bitmap
     */
    suspend fun getPreviewBitmap(photo: PhotoData): Bitmap? {
        return withContext(Dispatchers.IO) {
            try {
                val context = getApplication<Application>()
                val inputStream = context.contentResolver.openInputStream(photo.uri)
                val bitmap = BitmapFactory.decodeStream(inputStream)
                inputStream?.close()
                
                if (bitmap == null) return@withContext null
                
                // 应用 LUT
                val lutConfig = editLutConfig
                var processedBitmap = bitmap
                if (lutConfig != null && editLutIntensity > 0f) {
                    processedBitmap = lutImageProcessor.applyLut(bitmap, lutConfig, editLutIntensity)
                    // 如果产生了新的 bitmap，释放原始的
                    if (processedBitmap != bitmap) {
                        bitmap.recycle()
                    }
                }
                
                // 应用旋转和亮度
                val finalBitmap = applyEdits(processedBitmap, editRotation, editBrightness)
                
                // 如果产生了新的 bitmap，释放中间的
                if (finalBitmap != processedBitmap) {
                    processedBitmap.recycle()
                }
                
                finalBitmap
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
        viewModelScope.launch {
            try {
                val context = getApplication<Application>()
                val metadata = PhotoMetadata(
                    lutId = editLutId,
                    lutIntensity = editLutIntensity,
                    brightness = editBrightness,
                    rotation = editRotation
                )
                val success = PhotoManager.saveMetadata(context, photo.id, metadata)
                
                if (success) {
                    currentPhotoMetadata = metadata
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
        viewModelScope.launch {
            try {
                val context = getApplication<Application>()
                
                // 读取原图
                val inputStream = context.contentResolver.openInputStream(photo.uri)
                val originalBitmap = BitmapFactory.decodeStream(inputStream)
                inputStream?.close()
                
                if (originalBitmap == null) {
                    onComplete(false)
                    return@launch
                }
                
                // 应用 LUT
                var processedBitmap = originalBitmap
                val lutConfig = editLutConfig
                if (lutConfig != null && editLutIntensity > 0f) {
                    processedBitmap = lutImageProcessor.applyLut(originalBitmap, lutConfig, editLutIntensity)
                    if (processedBitmap != originalBitmap) {
                        originalBitmap.recycle()
                    }
                }
                
                // 应用编辑
                val editedBitmap = withContext(Dispatchers.Default) {
                    applyEdits(processedBitmap, editRotation, editBrightness)
                }
                if (editedBitmap != processedBitmap) {
                    processedBitmap.recycle()
                }
                
                // 保存到新文件
                val filename = "IMG_${SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())}_EDIT.jpg"
                val contentValues = ContentValues().apply {
                    put(MediaStore.MediaColumns.DISPLAY_NAME, filename)
                    put(MediaStore.MediaColumns.MIME_TYPE, "image/jpeg")
                    put(MediaStore.MediaColumns.RELATIVE_PATH, Environment.DIRECTORY_DCIM + "/PhotonCamera")
                }
                
                val uri = context.contentResolver.insert(
                    MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                    contentValues
                )
                
                uri?.let {
                    context.contentResolver.openOutputStream(it)?.use { outputStream ->
                        editedBitmap.compress(Bitmap.CompressFormat.JPEG, 95, outputStream)
                    }
                }
                
                editedBitmap.recycle()
                
                exitEditMode()
                loadPhotos()
                onComplete(true)
                
            } catch (e: Exception) {
                Log.e(TAG, "Failed to save edited photo", e)
                onComplete(false)
            }
        }
    }
    
    /**
     * 应用编辑效果
     */
    private fun applyEdits(bitmap: Bitmap, rotation: Float, brightness: Float): Bitmap {
        val matrix = Matrix()
        
        // 旋转
        if (rotation != 0f) {
            matrix.postRotate(rotation)
        }
        
        var result = if (rotation != 0f) {
            Bitmap.createBitmap(bitmap, 0, 0, bitmap.width, bitmap.height, matrix, true)
        } else {
            bitmap
        }
        
        // 亮度调整
        if (brightness != 1f) {
            val adjustedBitmap = Bitmap.createBitmap(result.width, result.height, Bitmap.Config.ARGB_8888)
            val canvas = Canvas(adjustedBitmap)
            val paint = Paint()
            val colorMatrix = ColorMatrix().apply {
                setScale(brightness, brightness, brightness, 1f)
            }
            paint.colorFilter = ColorMatrixColorFilter(colorMatrix)
            canvas.drawBitmap(result, 0f, 0f, paint)
            if (result != bitmap) {
                result.recycle()
            }
            result = adjustedBitmap
        }
        
        return result
    }
    
    /**
     * 导出照片到公共目录（带 LUT 烘焙）
     */
    fun exportPhoto(photo: PhotoData, onComplete: (Boolean) -> Unit = {}) {
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
                
                // 加载元数据并应用 LUT
                val metadata = PhotoManager.loadMetadata(context, photo.id)
                var processedBitmap = bitmap
                
                if (metadata?.lutId != null) {
                    val lutConfig = withContext(Dispatchers.IO) {
                        lutManager.loadLut(metadata.lutId)
                    }
                    if (lutConfig != null) {
                        processedBitmap = lutImageProcessor.applyLut(bitmap, lutConfig, metadata.lutIntensity)
                        if (processedBitmap != bitmap) {
                            bitmap.recycle()
                        }
                    }
                }
                
                // 应用其他编辑
                if (metadata != null && (metadata.rotation != 0f || metadata.brightness != 1f)) {
                    val editedBitmap = applyEdits(processedBitmap, metadata.rotation, metadata.brightness)
                    if (editedBitmap != processedBitmap) {
                        processedBitmap.recycle()
                    }
                    processedBitmap = editedBitmap
                }
                
                // 保存到 Pictures 目录
                val filename = "PhotonCamera_${SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())}.jpg"
                val contentValues = ContentValues().apply {
                    put(MediaStore.MediaColumns.DISPLAY_NAME, filename)
                    put(MediaStore.MediaColumns.MIME_TYPE, "image/jpeg")
                    put(MediaStore.MediaColumns.RELATIVE_PATH, Environment.DIRECTORY_PICTURES)
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
    
    override fun onCleared() {
        super.onCleared()
        lutImageProcessor.release()
        lutManager.clearCache()
    }
}
