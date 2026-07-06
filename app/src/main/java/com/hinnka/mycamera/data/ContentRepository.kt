package com.hinnka.mycamera.data

import android.content.Context
import com.hinnka.mycamera.frame.FrameInfo
import com.hinnka.mycamera.frame.FrameManager
import com.hinnka.mycamera.frame.FrameRenderer
import com.hinnka.mycamera.gallery.GalleryRepository
import com.hinnka.mycamera.gallery.PhotoProcessor
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.processor.DepthBokehProcessor
import com.hinnka.mycamera.raw.DcpInfo
import com.hinnka.mycamera.raw.DcpManager
import com.hinnka.mycamera.utils.StartupTrace
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
    private fun <T> startupInit(name: String, block: () -> T): T =
        StartupTrace.measure("ContentRepository.$name") { block() }

    val lutManager = startupInit("LutManager()") { LutManager(appContext) }
    val dcpManager = startupInit("DcpManager()") { DcpManager(appContext) }
    val frameManager = startupInit("FrameManager()") { FrameManager(appContext) }
    private val customImportManager = startupInit("CustomImportManager()") { CustomImportManager(appContext) }

    val imageProcessor = startupInit("LutImageProcessor()") { LutImageProcessor() }

    // 使用 StateFlow 存储可用内容列表，支持响应式更新
    private val _availableLuts = MutableStateFlow<List<LutInfo>>(emptyList())
    val availableLuts: StateFlow<List<LutInfo>> = _availableLuts.asStateFlow()

    private val _availableFrames = MutableStateFlow<List<FrameInfo>>(emptyList())
    val availableFrames: StateFlow<List<FrameInfo>> = _availableFrames.asStateFlow()

    private val _availableDcps = MutableStateFlow<List<DcpInfo>>(emptyList())
    val availableDcps: StateFlow<List<DcpInfo>> = _availableDcps.asStateFlow()

    // 边框渲染器
    val frameRenderer = startupInit("FrameRenderer()") { FrameRenderer(appContext, lutManager) }

    val depthBokehProcessor = startupInit("DepthBokehProcessor()") { DepthBokehProcessor(appContext) }

    // 用户偏好设置仓库
    val userPreferencesRepository = startupInit("UserPreferencesRepository()") {
        UserPreferencesRepository(appContext)
    }

    val photoProcessor = startupInit("PhotoProcessor()") {
        PhotoProcessor(
            lutManager,
            imageProcessor,
            frameManager,
            frameRenderer,
            depthBokehProcessor,
            userPreferencesRepository
        )
    }

    val galleryRepository = startupInit("GalleryRepository()") { GalleryRepository(appContext) }

    /**
     * 初始化内容
     */
    fun initialize() {
        StartupTrace.measure("ContentRepository.lutManager.initialize") {
            lutManager.initialize()
        }
        StartupTrace.measure("ContentRepository.frameManager.initialize") {
            frameManager.initialize()
        }
        _availableLuts.value = StartupTrace.measure("ContentRepository.getAvailableLuts") {
            lutManager.getAvailableLuts()
        }
        _availableFrames.value = StartupTrace.measure("ContentRepository.getAvailableFrames") {
            frameManager.getAvailableFrames()
        }
        _availableDcps.value = StartupTrace.measure("ContentRepository.getAvailableDcps") {
            dcpManager.getAvailableDcps()
        }
        StartupTrace.mark(
            "ContentRepository.initialize populated",
            "luts=${_availableLuts.value.size}, frames=${_availableFrames.value.size}, dcps=${_availableDcps.value.size}"
        )
    }

    /**
     * 获取可用 LUT 列表（用于一次性获取）
     */
    fun getAvailableLuts(): List<LutInfo> = _availableLuts.value

    /**
     * 获取可用边框列表（用于一次性获取）
     */
    fun getAvailableFrames(): List<FrameInfo> = _availableFrames.value

    fun getAvailableDcps(): List<DcpInfo> = _availableDcps.value

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
        _availableDcps.value = dcpManager.getAvailableDcps()
    }
}
