package com.hinnka.mycamera.viewmodel

import android.app.Application
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.data.CustomImportManager
import com.hinnka.mycamera.lut.LutInfo
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import com.hinnka.mycamera.agc.PhotonAgcBridge
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob

class CameraViewModel(application: Application) : AndroidViewModel(application) {
    private val contentRepository = ContentRepository.getInstance(application)
    
    // 自定义协程作用域，彻底避开对宿主老版 ViewModel getCloseable() 方法的调用，解决 NoSuchMethodError 冲突
    private val customScope = CoroutineScope(Dispatchers.Main + SupervisorJob())

    private val _currentLutId = MutableStateFlow("standard")
    val currentLutId: StateFlow<String> = _currentLutId.asStateFlow()

    private val _isPurchased = MutableStateFlow(true)
    val isPurchased: StateFlow<Boolean> = _isPurchased.asStateFlow()

    var showPaymentDialog by mutableStateOf(false)

    var availableLutList: List<LutInfo> by mutableStateOf(emptyList())

    private val _categoryOrder = MutableStateFlow<List<String>>(emptyList())
    val categoryOrder: StateFlow<List<String>> = _categoryOrder.asStateFlow()

    init {
        _currentLutId.value = PhotonAgcBridge.getSelectedLutId(application) ?: "standard"
        refreshCustomContent()
    }

    fun getCustomImportManager(): CustomImportManager {
        return CustomImportManager(getApplication())
    }

    fun refreshCustomContent() {
        customScope.launch {
            contentRepository.lutManager.initialize()
            availableLutList = contentRepository.lutManager.getAvailableLuts()
        }
    }

    fun saveFilterOrder(order: List<String>) {
        // 插件侧留空
    }

    fun saveCategoryOrder(order: List<String>) {
        // 插件侧留空
    }

    fun copyLut(lut: LutInfo, copyName: String) {
        customScope.launch {
            getCustomImportManager().copyLut(lut, copyName)
            refreshCustomContent()
        }
    }

    fun setLut(lutId: String?) {
        val targetId = lutId ?: "standard"
        _currentLutId.value = targetId
        PhotonAgcBridge.setSelectedLutId(getApplication(), targetId)
    }

    fun extractAndSaveColorRecipeFromPlut(lutId: String, uri: android.net.Uri) {
        // 插件侧不需要额外处理，留空
    }

    fun exportLutToCube(lutId: String): ByteArray? = null
    fun exportLutToPlut(lutId: String): ByteArray? = null
    fun exportBakedLutToCube(lutId: String): ByteArray? = null
    fun exportBakedLutToHaldPng(lutId: String): ByteArray? = null

    fun purchase(activity: android.app.Activity, sku: String = "") {
        // 留空即可，因为 isPurchased 恒为 true
    }
}
