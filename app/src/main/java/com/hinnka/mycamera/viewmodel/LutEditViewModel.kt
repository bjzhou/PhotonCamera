package com.hinnka.mycamera.viewmodel

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.data.UserPreferencesRepository
import com.hinnka.mycamera.model.ColorRecipeParams
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.launch

class LutEditViewModel(application: Application) : AndroidViewModel(application) {

    private val contentRepository = ContentRepository.getInstance(application)

    // 用户偏好设置仓库
    private val userPreferencesRepository = UserPreferencesRepository(application)

    // 软件处理模式设置
    val useSoftwareProcessing: Flow<Boolean> = userPreferencesRepository.userPreferences.map { it.useSoftwareProcessing }

    suspend fun getColorRecipe(lutId: String) = contentRepository.lutManager.loadColorRecipeParams(lutId)

    /**
     * 保存LUT的色彩配方参数
     */
    fun saveLutColorRecipe(lutId: String, params: ColorRecipeParams) {
        viewModelScope.launch {
            contentRepository.lutManager.saveColorRecipeParams(lutId, params)
        }
    }
}