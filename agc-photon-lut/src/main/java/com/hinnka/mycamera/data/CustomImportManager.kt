package com.hinnka.mycamera.data

import android.content.Context
import com.hinnka.mycamera.lut.LutInfo

class CustomImportManager(@Suppress("unused") private val context: Context) {
    fun initializeBuiltInLutCategoriesIfNeeded(@Suppress("unused") builtInLuts: List<LutInfo>) = Unit

    fun getCustomLuts(): List<LutInfo> = emptyList()

    fun getCategoryOverrides(): Map<String, String> = emptyMap()

    fun getFavoriteOverrides(): Map<String, Boolean> = emptyMap()
}
