package com.hinnka.mycamera.lut

internal const val DIGITAL_LUT_CATEGORY = "Digital"
internal const val FILM_LUT_CATEGORY = "Film"
internal val builtInLutCategories = listOf(DIGITAL_LUT_CATEGORY, FILM_LUT_CATEGORY, "Log")

internal fun withDefaultBuiltInLutCategoryOrder(
    categoryOrder: List<String>,
    isLegacyOrder: Boolean = false,
): List<String> {
    if (!isLegacyOrder && categoryOrder.containsAll(builtInLutCategories)) return categoryOrder
    return (builtInLutCategories + categoryOrder).distinct()
}

fun sortLutsByUserOrder(
    luts: List<LutInfo>,
    filterOrder: List<String>
): List<LutInfo> {
    val orderMap = filterOrder.withIndex().associate { it.value to it.index }
    return luts.sortedWith(compareBy<LutInfo> { it.id != "none" }
        .thenBy { orderMap[it.id] ?: Int.MAX_VALUE })
}

fun orderedLutCategoryTitles(
    luts: List<LutInfo>,
    categoryOrder: List<String>,
    uncategorizedText: String,
    favoriteText: String? = null,
    includeEmptyCategories: Boolean = false,
): List<String> {
    val reservedCategoryNames = setOfNotNull(uncategorizedText, favoriteText)
    val dynamicCategories = luts.map { it.category }
        .distinct()
        .filter { it.isNotEmpty() && it !in reservedCategoryNames }
    val hasUncategorizedLuts = luts.any { it.category.isEmpty() }
    // 管理页保留用户保存的空分类；拍摄和分享等选择器只展示有内容的分类。
    val orderedKnownCategories = withDefaultBuiltInLutCategoryOrder(categoryOrder).filter {
        it.isNotBlank() && it !in reservedCategoryNames &&
            (it in dynamicCategories || (includeEmptyCategories && it !in builtInLutCategories))
    }.distinct()
    val remainingDynamic = (dynamicCategories - orderedKnownCategories.toSet()).sorted()

    return buildList {
        favoriteText?.let { add(it) }
        addAll(orderedKnownCategories)
        addAll(remainingDynamic)
        if (hasUncategorizedLuts) {
            add(uncategorizedText)
        }
    }
}

internal fun List<LutInfo>.inLutCategory(
    category: String,
    uncategorizedText: String,
    favoriteText: String? = null,
): List<LutInfo> {
    val items = when (category) {
        favoriteText -> filter { it.isFavorite }
        uncategorizedText -> filter { it.category.isEmpty() }
        else -> filter { it.category == category }
    }
    return items.sortedBy { it.id != "none" }
}

fun groupLutsForDisplay(
    luts: List<LutInfo>,
    categoryOrder: List<String>,
    uncategorizedText: String,
    favoriteText: String? = null,
): List<Pair<String, List<LutInfo>>> {
    val categories = orderedLutCategoryTitles(
        luts = luts,
        categoryOrder = categoryOrder,
        uncategorizedText = uncategorizedText,
        favoriteText = favoriteText,
    )
    return categories.mapNotNull { category ->
        val items = luts.inLutCategory(category, uncategorizedText, favoriteText)
        items.takeIf { it.isNotEmpty() }?.let { category to it }
    }
}
