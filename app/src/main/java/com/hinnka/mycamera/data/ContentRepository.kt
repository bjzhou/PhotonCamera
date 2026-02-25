package com.hinnka.mycamera.data

import android.content.Context
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.frame.FrameManager
import com.hinnka.mycamera.frame.FrameRenderer
import com.hinnka.mycamera.gallery.PhotoProcessor
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.LutManager
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * 内容仓库 - 单例模式
 *
 * 统一管理 LUT 和 Frame 的加载，避免重复创建实例
 * CameraViewModel 和 GalleryViewModel 共享同一个实例
 * 使用 StateFlow 实现响应式更新
 */
class ContentRepository private constructor(context: Context) {

    companion object {
        @Volatile
        private var INSTANCE: ContentRepository? = null

        fun getInstance(context: Context): ContentRepository {
            return INSTANCE ?: synchronized(this) {
                INSTANCE ?: ContentRepository(context.applicationContext).also {
                    INSTANCE = it
                }
            }
        }
    }

    private val appContext = context.applicationContext
    val lutManager = LutManager(appContext)
    val frameManager = FrameManager(appContext)
    private val customImportManager = CustomImportManager(appContext)

    val imageProcessor = LutImageProcessor()

    // 使用 StateFlow 存储可用内容列表，支持响应式更新
    private val _availableLuts = MutableStateFlow<List<LutInfo>>(emptyList())
    val availableLuts: StateFlow<List<LutInfo>> = _availableLuts.asStateFlow()

    private val _availableFrames = MutableStateFlow<List<FrameInfo>>(emptyList())
    val availableFrames: StateFlow<List<FrameInfo>> = _availableFrames.asStateFlow()

    // 边框渲染器
    val frameRenderer = FrameRenderer(appContext)

    val photoProcessor = PhotoProcessor(
        lutManager,
        imageProcessor,
        frameManager,
        frameRenderer
    )

    // 用户偏好设置仓库
    val userPreferencesRepository = UserPreferencesRepository(appContext)

    /**
     * 初始化内容
     */
    fun initialize() {
        lutManager.initialize()
        frameManager.initialize()
        _availableLuts.value = lutManager.getAvailableLuts()
        _availableFrames.value = frameManager.getAvailableFrames()
    }

    /**
     * 获取可用 LUT 列表（用于一次性获取）
     */
    fun getAvailableLuts(): List<LutInfo> = _availableLuts.value

    /**
     * 获取可用边框列表（用于一次性获取）
     */
    fun getAvailableFrames(): List<FrameInfo> = _availableFrames.value

    /**
     * 获取自定义导入管理器
     */
    fun getCustomImportManager(): CustomImportManager = customImportManager

    /**
     * 刷新自定义内容
     * 更新后会自动通知所有订阅者
     */
    fun refreshCustomContent() {
        lutManager.initialize()
        frameManager.initialize()
        _availableLuts.value = lutManager.getAvailableLuts()
        _availableFrames.value = frameManager.getAvailableFrames()
    }
}
