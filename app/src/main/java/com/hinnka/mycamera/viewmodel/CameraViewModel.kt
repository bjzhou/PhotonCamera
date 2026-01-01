package com.hinnka.mycamera.viewmodel

import android.app.Application
import android.content.ContentValues
import android.graphics.SurfaceTexture
import android.os.Build
import android.os.Environment
import android.provider.MediaStore
import android.util.Log
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.Camera2Controller
import com.hinnka.mycamera.camera.CameraState
import com.hinnka.mycamera.camera.LensType
import com.hinnka.mycamera.gallery.PhotoMetadata
import com.hinnka.mycamera.gallery.PhotoManager
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.LutManager
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asSharedFlow
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import java.text.SimpleDateFormat
import java.util.*

/**
 * 相机 ViewModel
 * 使用 Camera2Controller 支持隐藏摄像头
 */
class CameraViewModel(application: Application) : AndroidViewModel(application) {
    
    companion object {
        private const val TAG = "CameraViewModel"
    }
    
    private val cameraController = Camera2Controller(application)
    
    // LUT 管理器
    private val lutManager = LutManager(application)
    private val lutImageProcessor = LutImageProcessor()
    
    val state: StateFlow<CameraState> = cameraController.state
    
    // 照片保存完成事件
    private val _imageSavedEvent = MutableSharedFlow<Unit>()
    val imageSavedEvent: SharedFlow<Unit> = _imageSavedEvent.asSharedFlow()
    
    // LUT 相关状态
    var currentLutConfig: LutConfig? by mutableStateOf(null)
        private set
        
    var currentLutId: String? by mutableStateOf(null)
        private set
    
    var availableLutList: List<LutInfo> by mutableStateOf(emptyList())
        private set

    // 存储是否为横屏模式
    var isLandscape by mutableStateOf(false)
        private set

    // 存储旋转角度，用于UI旋转
    var rotationDegrees by mutableStateOf(0f)
        private set
    
    // 保存当前的 SurfaceTexture 以便切换摄像头时重用
    private var currentSurfaceTexture: SurfaceTexture? = null

    // 更新方向，只在横竖屏切换时才更新状态
    fun updateOrientation(orientation: Int) {
        when {
            // 右侧朝上（手机顺时针旋转90°）
            orientation in 45..135 -> {
                if (!isLandscape || rotationDegrees != 90f) {
                    isLandscape = true
                    rotationDegrees = 90f
                    cameraController.setDeviceRotation(90)
                }
            }
            // 左侧朝上（手机逆时针旋转90°）
            orientation in 225..315 -> {
                if (!isLandscape || rotationDegrees != 270f) {
                    isLandscape = true
                    rotationDegrees = 270f
                    cameraController.setDeviceRotation(270)
                }
            }
            // 竖屏
            else -> {
                if (isLandscape) {
                    isLandscape = false
                    rotationDegrees = 0f
                    cameraController.setDeviceRotation(0)
                }
            }
        }
    }
    
    init {
        cameraController.initialize()
        cameraController.onImageCaptured = { bytes ->
            viewModelScope.launch {
                saveImage(bytes)
            }
        }
        
        // 初始化 LUT 管理器
        lutManager.initialize()
        availableLutList = lutManager.getAvailableLuts()
    }
    
    /**
     * 打开相机（Camera2 接口）
     */
    fun openCamera(surfaceTexture: SurfaceTexture) {
        currentSurfaceTexture = surfaceTexture
        cameraController.openCamera(surfaceTexture)
    }
    
    /**
     * 关闭相机
     */
    fun closeCamera() {
        cameraController.closeCamera()
    }
    
    /**
     * 检查相机状态并在必要时恢复
     */
    fun checkAndRecoverCamera() {
        cameraController.checkAndRecoverCamera()
        // 如果有保存的 SurfaceTexture，重新打开相机
        currentSurfaceTexture?.let { texture ->
            if (!state.value.isPreviewActive) {
                cameraController.openCamera(texture)
            }
        }
    }
    
    /**
     * 拍照
     */
    fun capture() {
        cameraController.capture()
    }
    
    /**
     * 切换摄像头（前后置切换）
     */
    fun switchCamera() {
        cameraController.switchCamera()
        reopenCamera()
    }
    
    /**
     * 切换到指定的镜头类型
     */
    fun switchToLens(lensType: LensType) {
        cameraController.switchToLens(lensType)
        reopenCamera()
    }
    
    /**
     * 切换到下一个后置摄像头
     */
    fun switchBackCamera() {
        val backCameras = getBackCameras().sortedBy { 
            when (it.lensType) {
                LensType.BACK_ULTRA_WIDE -> 0
                LensType.BACK_MAIN -> 1
                LensType.BACK_TELEPHOTO -> 2
                else -> 3
            }
        }
        
        if (backCameras.isEmpty()) return
        
        val currentLensType = state.value.currentLensType
        
        if (currentLensType == LensType.FRONT) {
            switchToLens(LensType.BACK_MAIN)
            return
        }
        
        val currentIndex = backCameras.indexOfFirst { it.lensType == currentLensType }
        val nextIndex = (currentIndex + 1) % backCameras.size
        val nextCamera = backCameras[nextIndex]
        
        switchToLens(nextCamera.lensType)
    }
    
    /**
     * 重新打开相机（切换摄像头后使用）
     */
    private fun reopenCamera() {
        currentSurfaceTexture?.let { texture ->
            cameraController.openCamera(texture)
        }
    }
    
    /**
     * 获取所有后置摄像头
     */
    fun getBackCameras(): List<com.hinnka.mycamera.camera.CameraInfo> {
        return cameraController.getBackCameras()
    }
    
    /**
     * 设置曝光补偿
     */
    fun setExposureCompensation(value: Int) {
        cameraController.setExposureCompensation(value)
    }
    
    /**
     * 设置自动曝光
     */
    fun setAutoExposure(enabled: Boolean) {
        cameraController.setAutoExposure(enabled)
    }
    
    /**
     * 设置 ISO
     */
    fun setIso(value: Int) {
        cameraController.setIso(value)
    }
    
    /**
     * 设置快门速度
     */
    fun setShutterSpeed(value: Long) {
        cameraController.setShutterSpeed(value)
    }
    
    /**
     * 设置变焦倍数
     */
    fun setZoomRatio(ratio: Float) {
        cameraController.setZoomRatio(ratio)
    }
    
    /**
     * 设置到指定的变焦档位
     */
    fun setZoomStep(step: Float) {
        setZoomRatio(step)
    }
    
    /**
     * 获取变焦档位列表
     * Camera2 不支持通过变焦切换物理摄像头，返回空列表
     */
    fun getZoomSteps(): List<Float> {
        return emptyList()
    }
    
    /**
     * 设置画面比例
     */
    fun setAspectRatio(ratio: AspectRatio) {
        cameraController.setAspectRatio(ratio)
    }
    
    /**
     * 点击对焦
     */
    fun focusOnPoint(x: Float, y: Float, viewWidth: Int, viewHeight: Int) {
        cameraController.focusOnPoint(x, y, viewWidth, viewHeight)
    }
    
    // ==================== LUT 相关方法 ====================
    
    /**
     * 设置当前 LUT
     */
    fun setLut(lutId: String?) {
        currentLutId = lutId
        if (lutId == null) {
            currentLutConfig = null
            return
        }
        
        viewModelScope.launch {
            currentLutConfig = withContext(Dispatchers.IO) {
                lutManager.loadLut(lutId)
            }
        }
    }
    
    /**
     * 设置 LUT 强度
     */
    fun setLutIntensity(intensity: Float) {
        cameraController.setLutIntensity(intensity)
    }
    
    /**
     * 获取 LUT 信息
     */
    fun getLutInfo(id: String): LutInfo? {
        return lutManager.getLutInfo(id)
    }
    
    /**
     * 预加载 LUT
     */
    fun preloadLut(id: String) {
        lutManager.preloadLut(id)
    }
    
    /**
     * 保存图片
     */
    private suspend fun saveImage(bytes: ByteArray) {
        val context = getApplication<Application>()
        
        // 保存当前 LUT 信息用于元数据
        val lutIdToSave = currentLutId
        val lutIntensityToSave = state.value.lutIntensity
        val lutConfigToSave = currentLutConfig
        
        try {
            // 保存 LUT 元数据到应用私有目录
            val metadata = PhotoMetadata(
                lutId = lutIdToSave,
                lutIntensity = lutIntensityToSave
            )
            
            // 生成预览图/缩略图源（缩小比例以提高性能）
            val previewBitmap = withContext(Dispatchers.Default) {
                val options = android.graphics.BitmapFactory.Options().apply {
                    inSampleSize = 4 // 缩小比例，减小内存占用和处理时间
                }
                val bitmap = android.graphics.BitmapFactory.decodeByteArray(bytes, 0, bytes.size, options)
                if (bitmap != null) {
                    // 如果有 LUT，在此处应用，此预览图将作为 baked preview 保存
                    val processed = if (lutIdToSave != null && lutConfigToSave != null) {
                        val result = lutImageProcessor.applyLut(bitmap, lutConfigToSave, lutIntensityToSave)
                        if (result != bitmap) bitmap.recycle()
                        result
                    } else {
                        bitmap
                    }
                    processed
                } else null
            }
            
            // 使用 PhotoManager 统一管理保存
            val photoId = PhotoManager.savePhoto(context, bytes, metadata, previewBitmap)
            
            previewBitmap?.recycle()
            
            if (photoId != null) {
                Log.d(TAG, "Image saved to private storage: $photoId, LUT: $lutIdToSave, Intensity: $lutIntensityToSave")
                _imageSavedEvent.emit(Unit)
            } else {
                Log.e(TAG, "Failed to save image via PhotoManager")
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to save image", e)
        }
    }
    
    override fun onCleared() {
        super.onCleared()
        cameraController.release()
        lutManager.clearCache()
        lutImageProcessor.release()
    }
}
