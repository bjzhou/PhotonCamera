package com.hinnka.mycamera.lut

import com.hinnka.mycamera.data.UserPreferences

private val DEFAULT_FREQUENT_LUT_IDS = listOf("standard", "leica_m9", "monochrome", "cc", "ricoh_negative")

/** 只初始化一次；默认推荐的计数为零，不伪造用户使用记录。 */
fun UserPreferences.initializeFrequentLuts(luts: List<LutInfo>) {
    if (frequentLutUsage != null || luts.isEmpty()) return
    val favorites = sortLutsByUserOrder(luts, filterOrder).filter { it.isFavorite && it.id != "none" }
    val seeds = if (favorites.isNotEmpty()) {
        favorites.take(DEFAULT_FREQUENT_LUT_IDS.size)
    } else {
        DEFAULT_FREQUENT_LUT_IDS.mapNotNull { id -> luts.find { it.id == id && it.isBuiltIn } }
    }
    frequentLutUsage = seeds.associate { it.id to 0L }
}
