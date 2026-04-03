package com.hinnka.mycamera.previewhook.filters

import android.content.res.Resources

class HostStrings(
    val resources: Resources,
    private val packageName: String,
) {
    // ===== 标题/导航 =====
    val filterManagementTitle = appString("mgc_filter_management_title", "Filters")
    val backContentDescription = appString("mgc_filter_back", "Back")
    val cancelContentDescription = appString("mgc_filter_cancel", "Cancel")

    // ===== 按钮/操作 =====
    val delete = appString("mgc_filter_delete", "Delete")
    val cancel = appString("mgc_filter_cancel_btn", "Cancel")
    val confirm = appString("mgc_filter_confirm", "Confirm")
    val rename = appString("mgc_filter_rename", "Rename")
    val copy = appString("mgc_filter_copy", "Copy")
    val name = appString("mgc_filter_name", "Name")

    // ===== 对话框 =====
    val renameDialogTitle = appString("mgc_filter_rename_dialog_title", "Rename Filter")
    val copyLutDialogTitle = appString("mgc_filter_copy_lut_dialog_title", "Copy Filter")
    val deleteConfirmTitle = appString("mgc_filter_delete_confirm_title", "Delete Filter?")
    fun deleteConfirmMessage(name: String): String =
        appStringFmt("mgc_filter_delete_filter_confirm_message", "Delete %1\$s?", name)
    val categoryManagementTitle = appString("mgc_filter_category_management_title", "Category Management")
    val dragToReorderCategories = appString("mgc_filter_drag_to_reorder_categories", "Drag to reorder categories")
    val newCategory = appString("mgc_filter_new_category", "New Category")
    val categoryName = appString("mgc_filter_category_name", "Category Name")
    val deleteCategoryTitle = appString("mgc_filter_delete_category_title", "Delete Category?")
    fun deleteCategoryMessage(target: String): String =
        appStringFmt("mgc_filter_delete_category_message", "Delete category %1\$s?", target)
    val importToCategory = appString("mgc_filter_import_to_category", "Import to Category")
    val category = appString("mgc_filter_category", "Category")
    val commonCategories = appString("mgc_filter_common_categories", "Common Categories")
    val none = appString("mgc_filter_none", "None")
    val advancedOptions = appString("mgc_filter_advanced_options", "Advanced Options")
    val inputCurve = appString("mgc_filter_input_curve", "Input Curve")
    val colorSpace = appString("mgc_filter_color_space", "Color Space")
    val editCategory = appString("mgc_filter_edit_category", "Edit Category")
    val batchEditCategory = appString("mgc_filter_batch_edit_category", "Batch Edit Categories")
    fun selectedCount(count: Int): String = appStringFmt("mgc_filter_selected_count", "Selected: %1\$d", count)
    val importFilterDescription = appString("mgc_filter_import_filter", "Import Filters")
    val exportLutCube = appString("mgc_filter_export_lut_cube", "Export CUBE")
    val colorRecipe = appString("mgc_filter_color_recipe", "Edit Recipe")

    // ===== 标签 =====
    val builtIn = appString("mgc_filter_built_in", "Built-in")
    val custom = appString("mgc_filter_custom", "Custom")
    val billingVipTag = appString("mgc_filter_billing_vip_tag", "VIP")
    val currentDefault = appString("mgc_filter_current_default", "Default")
    val copySuffix = appString("mgc_filter_copy_suffix", " Copy")
    val categoryAll = appString("mgc_filter_category_all", "All")

    // ===== 导入/导出 =====
    val importSuccess = appString("mgc_filter_import_success", "%1\$d imported successfully")
    val importFailed = appString("mgc_filter_import_failed", "%1\$d failed to import")
    val exportSuccess = appString("mgc_filter_export_success", "Export successful")

    // ===== 色彩配方 Tab =====
    val recipeTabPalette = appString("mgc_filter_recipe_tab_palette", "Palette")
    val recipeTabLight = appString("mgc_filter_recipe_tab_light", "Light")
    val recipeTabColor = appString("mgc_filter_recipe_tab_color", "Color")
    val recipeTabLch = appString("mgc_filter_recipe_tab_lch", "HSL")
    val recipeTabTexture = appString("mgc_filter_recipe_tab_texture", "Texture")
    val recipeTabLens = appString("mgc_filter_recipe_tab_lens", "Lens")
    val recipeTabRemarks = appString("mgc_filter_recipe_tab_remarks", "Remarks")

    // ===== 色彩配方 LCH 子Tab =====
    val recipeLchSkin = appString("mgc_filter_recipe_lch_skin", "Skin")
    val recipeLchRed = appString("mgc_filter_recipe_lch_red", "Red")
    val recipeLchOrange = appString("mgc_filter_recipe_lch_orange", "Orange")
    val recipeLchYellow = appString("mgc_filter_recipe_lch_yellow", "Yellow")
    val recipeLchGreen = appString("mgc_filter_recipe_lch_green", "Green")
    val recipeLchCyan = appString("mgc_filter_recipe_lch_cyan", "Cyan")
    val recipeLchBlue = appString("mgc_filter_recipe_lch_blue", "Blue")
    val recipeLchPurple = appString("mgc_filter_recipe_lch_purple", "Purple")
    val recipeLchMagenta = appString("mgc_filter_recipe_lch_magenta", "Magenta")

    // ===== 色彩配方 其他 =====
    val recipePlaceholderRemarks = appString("mgc_filter_recipe_placeholder_remarks", "Notes...")
    val filterIntensity = appString("mgc_filter_filter_intensity", "Intensity")
    val recipePaletteDensity = appString("mgc_filter_recipe_palette_density", "Density")

    private fun appString(name: String, fallback: String): String {
        val id = resources.getIdentifier(name, "string", packageName)
        return if (id != 0) resources.getString(id) else fallback
    }

    private fun appStringFmt(name: String, fallback: String, vararg args: Any): String {
        val id = resources.getIdentifier(name, "string", packageName)
        return if (id != 0) resources.getString(id, *args) else fallback.format(*args)
    }
}
