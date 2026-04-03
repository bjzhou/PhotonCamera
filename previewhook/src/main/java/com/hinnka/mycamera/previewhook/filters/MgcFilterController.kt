package com.hinnka.mycamera.previewhook.filters

import android.content.Context
import android.os.Handler
import android.os.Looper
import com.hinnka.mycamera.lut.LutInfo
import com.hinnka.mycamera.model.ColorRecipeParams
import kotlinx.coroutines.flow.MutableStateFlow

class MgcFilterController(context: Context) {
    private val appContext = context.applicationContext
    val store = MgcFilterStore(appContext)

    // State exposed via MutableStateFlow (no Compose dependency)
    val currentLutId = MutableStateFlow(store.getSelectedFilterId() ?: LutInfo.NONE_ID)
    val categoryOrder = MutableStateFlow(store.getCategoryOrder())
    val availableLutList = MutableStateFlow<List<LutInfo>>(emptyList())

    init {
        refreshAll()
    }

    fun refreshAll() {
        val items = store.loadItems().map { it.info }
        val cats = store.getCategoryOrder()
        val selected = store.getSelectedFilterId() ?: LutInfo.NONE_ID
        if (Looper.myLooper() == Looper.getMainLooper()) {
            availableLutList.value = items
            categoryOrder.value = cats
            currentLutId.value = selected
        } else {
            Handler(Looper.getMainLooper()).post {
                availableLutList.value = items
                categoryOrder.value = cats
                currentLutId.value = selected
            }
        }
    }

    fun selectLut(lutId: String?): Boolean {
        val ok = store.selectFilter(lutId)
        if (ok) {
            currentLutId.value = store.getSelectedFilterId() ?: LutInfo.NONE_ID
        }
        return ok
    }

    fun copyLut(lut: LutInfo, copyName: String): String? {
        val newId = store.copyLut(lut, copyName)
        refreshAll()
        return newId
    }

    fun renameLut(lutId: String, newName: String): Boolean {
        val ok = store.renameCustomFilter(lutId, newName)
        refreshAll()
        return ok
    }

    fun deleteLut(lutId: String): Boolean {
        val ok = store.deleteCustomFilter(lutId)
        if (ok) {
            refreshAll()
            if (currentLutId.value == lutId) {
                selectLut(availableLutList.value.firstOrNull()?.id)
            }
        }
        return ok
    }

    fun updateCategory(lutId: String, category: String): Boolean {
        val ok = store.updateLutCategory(lutId, category)
        refreshAll()
        return ok
    }

    fun batchUpdateCategory(lutIds: List<String>, category: String) {
        lutIds.forEach { store.updateLutCategory(it, category) }
        refreshAll()
    }

    fun batchDelete(filterIds: List<String>) {
        filterIds.forEach { store.deleteCustomFilter(it) }
        refreshAll()
    }

    fun getLutCubeString(lutId: String): String? {
        return store.getLutCubeString(lutId)
    }

    suspend fun getColorRecipe(lutId: String): ColorRecipeParams {
        return store.loadColorRecipeParams(lutId)
    }

    fun saveColorRecipe(lutId: String, params: ColorRecipeParams) {
        store.saveColorRecipeParams(lutId, params)
    }

    fun scheduleSaveColorRecipe(lutId: String, params: ColorRecipeParams) {
        store.saveColorRecipeParams(lutId, params)
    }
}
