package com.hinnka.mycamera.viewmodel

import android.app.Application
import android.content.ContentValues
import android.os.Build
import android.os.Environment
import android.provider.MediaStore
import android.util.Log
import android.util.Size
import android.view.Surface
import androidx.camera.core.Preview
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.CameraController
import com.hinnka.mycamera.camera.CameraState
import com.hinnka.mycamera.camera.CameraUtils
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.LutManager
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import java.text.SimpleDateFormat
import java.util.*

/**
 * 相机 ViewModel
 */
class CameraViewModel(application: Application) : AndroidViewModel(application) {
    
    companion object {
        private const val TAG = "CameraViewModel"
    }
    
    private val cameraController = CameraController(application)
    
    // LUT 管理器
    private val lutManager = LutManager(application)
    
    val state: StateFlow<CameraState> = cameraController.state
    
    // LUT 相关状态
    var currentLutConfig: LutConfig? by mutableStateOf(null)
        private set
        
    var currentLutId: String? by mutableStateOf(null)
        private set
    
    var availableLutList: List<LutInfo> by mutableStateOf(emptyList())
        private set

    // 存储是否为横屏模式，而不是角度值，减少重组次数
    var isLandscape by mutableStateOf(false)
        private set

    // 存储旋转角度，用于UI旋转
    // 0: 竖屏正常, 90: 右侧朝上（顺时针90°）, 270: 左侧朝上（逆时针90°）
    var rotationDegrees by mutableStateOf(0f)
        private set

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
     * 绑定相机到生命周期（CameraX 新接口）
     */
    fun bindCamera(lifecycleOwner: LifecycleOwner, surfaceProvider: Preview.SurfaceProvider) {
        cameraController.bindCamera(lifecycleOwner, surfaceProvider)
    }
    
    /**
     * 打开相机（旧接口，已弃用）
     * @deprecated 使用 bindCamera(LifecycleOwner, SurfaceProvider) 代替
     */
    @Deprecated("Use bindCamera instead", ReplaceWith("bindCamera(lifecycleOwner, surfaceProvider)"))
    fun openCamera(surface: Surface) {
        cameraController.openCamera(surface)
    }
    
    /**
     * 关闭相机
     */
    fun closeCamera() {
        cameraController.closeCamera()
    }
    
    /**
     * 检查相机状态并在必要时恢复
     * 用于从后台切换回 App 时调用
     */
    fun checkAndRecoverCamera() {
        cameraController.checkAndRecoverCamera()
    }
    
    /**
     * 拍照
     */
    fun capture() {
        cameraController.capture()
    }
    
    /**
     * 切换摄像头
     */
    fun switchCamera() {
        cameraController.switchCamera()
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
     * 
     * @param lutId LUT ID，传 null 表示移除 LUT
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
    private fun saveImage(bytes: ByteArray) {
        val context = getApplication<Application>()
        val filename = "IMG_${SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())}.jpg"
        
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                // Android 10+ 使用 MediaStore
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
                        outputStream.write(bytes)
                    }
                    Log.d(TAG, "Image saved: $uri")
                }
            } else {
                // 低版本直接写文件
                val directory = File(
                    Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM),
                    "PhotonCamera"
                )
                if (!directory.exists()) {
                    directory.mkdirs()
                }
                
                val file = File(directory, filename)
                FileOutputStream(file).use { outputStream ->
                    outputStream.write(bytes)
                }
                Log.d(TAG, "Image saved: ${file.absolutePath}")
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to save image", e)
        }
    }
    
    override fun onCleared() {
        super.onCleared()
        cameraController.release()
        lutManager.clearCache()
    }
}
