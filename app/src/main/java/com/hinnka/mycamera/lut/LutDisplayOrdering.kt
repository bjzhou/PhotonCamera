package com.hinnka.mycamera.lut

fun sortLutsByUserOrder(
    luts: List<LutInfo>,
    filterOrder: List<String>
): List<LutInfo> {
    if (filterOrder.isEmpty()) return luts
    val orderMap = filterOrder.withIndex().associate { it.value to it.index }
    return luts.sortedBy { orderMap[it.id] ?: Int.MAX_VALUE }
}

fun orderedLutCategoryTitles(
    luts: List<LutInfo>,
    categoryOrder: List<String>,
    builtInText: String,
    uncategorizedText: String,
    favoriteText: String? = null
): List<String> {
    val reservedCategoryNames = setOfNotNull(builtInText, uncategorizedText, favoriteText)
    val dynamicCategories = luts.map { it.category }
        .distinct()
        .filter { it.isNotEmpty() && it !in reservedCategoryNames }
    val hasUncategorizedLuts = luts.any { !it.isBuiltIn && it.category.isEmpty() }
    val orderedKnownCategories = categoryOrder.filter { it == builtInText || dynamicCategories.contains(it) }
    val remainingDynamic = dynamicCategories.filterNot { it in orderedKnownCategories }.sorted()

    return buildList {
        favoriteText?.let { add(it) }
        if (orderedKnownCategories.isEmpty()) {
            add(builtInText)
            addAll(remainingDynamic)
        } else {
            addAll(orderedKnownCategories)
            if (builtInText !in orderedKnownCategories) add(builtInText)
            addAll(remainingDynamic)
        }
        if (hasUncategorizedLuts) {
            add(uncategorizedText)
        }
    }
}

fun groupLutsForDisplay(
    luts: List<LutInfo>,
    categoryOrder: List<String>,
    builtInText: String,
    uncategorizedText: String,
    favoriteText: String? = null
): List<Pair<String, List<LutInfo>>> {
    val categories = orderedLutCategoryTitles(
        luts = luts,
        categoryOrder = categoryOrder,
        builtInText = builtInText,
        uncategorizedText = uncategorizedText,
        favoriteText = favoriteText
    )
    return categories.mapNotNull { category ->
        val items = when (category) {
            favoriteText -> luts.filter { it.isFavorite }
            builtInText -> luts.filter { it.isBuiltIn }
            uncategorizedText -> luts.filter { !it.isBuiltIn && it.category.isEmpty() }
            else -> luts.filter { it.category == category }
        }
        items.takeIf { it.isNotEmpty() }?.let { category to it }
    }
}
