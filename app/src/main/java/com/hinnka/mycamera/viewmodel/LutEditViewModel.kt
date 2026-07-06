package com.hinnka.mycamera.viewmodel

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.model.ColorRecipeParams
import kotlinx.coroutines.launch

class LutEditViewModel(application: Application) : AndroidViewModel(application) {

    private val contentRepository = ContentRepository.getInstance(application)

    suspend fun getColorRecipe(
        lutId: String,
        target: BaselineColorCorrectionTarget? = null
    ) = contentRepository.lutManager.loadColorRecipeParams(lutId, target)

    /**
     * 保存LUT的色彩配方参数
     */
    fun saveLutColorRecipe(
        lutId: String,
        params: ColorRecipeParams,
        target: BaselineColorCorrectionTarget? = null
    ) {
        viewModelScope.launch {
            contentRepository.lutManager.saveColorRecipeParams(lutId, params, target)
        }
    }
}
