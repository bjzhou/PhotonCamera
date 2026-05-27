package com.hinnka.mycamera.viewmodel

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.model.ColorRecipeParams
import kotlinx.coroutines.launch
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob

class LutEditViewModel(application: Application) : AndroidViewModel(application) {

    private val contentRepository = ContentRepository.getInstance(application)
    
    // 自定义协程作用域，彻底避开对宿主老版 ViewModel getCloseable() 方法的调用，解决 NoSuchMethodError 冲突
    private val customScope = CoroutineScope(Dispatchers.Main + SupervisorJob())

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
        customScope.launch {
            contentRepository.lutManager.saveColorRecipeParams(lutId, params, target)
        }
    }
}
