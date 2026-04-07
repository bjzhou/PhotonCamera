package com.hinnka.mycamera.previewhook.filters

import android.app.Activity
import android.app.Dialog
import android.graphics.Color
import android.graphics.drawable.GradientDrawable
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.HorizontalScrollView
import android.widget.LinearLayout
import android.widget.TextView

class MgcLutSelectorSheet(
    private val activity: Activity,
    private val controller: MgcFilterController,
    private val onDismiss: () -> Unit
) {
    private var dialog: Dialog? = null

    private var selectedCategory: String? = null
    
    private lateinit var categoryContainer: LinearLayout
    private lateinit var lutContainer: LinearLayout
    
    private val strings = HostStrings(activity.resources, activity.packageName)

    fun show() {
        dismiss()
        dialog = Dialog(activity, android.R.style.Theme_DeviceDefault_NoActionBar).apply {
            window?.setBackgroundDrawableResource(android.R.color.transparent)
            
            val sheetBg = GradientDrawable().apply {
                setColor(Color.parseColor("#151515"))
                val r = dp(16f)
                cornerRadii = floatArrayOf(r, r, r, r, 0f, 0f, 0f, 0f)
            }
            val sheet = LinearLayout(context).apply {
                orientation = LinearLayout.VERTICAL
                background = sheetBg
                layoutParams = LinearLayout.LayoutParams(matchParent, wrapContent)
                setPadding(0, dp(16f).toInt(), 0, dp(32f).toInt())
            }

            // Recipe Edit Button row (Top Right)
            val topRow = LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                gravity = Gravity.END or Gravity.CENTER_VERTICAL
                layoutParams = LinearLayout.LayoutParams(matchParent, wrapContent).apply {
                    setPadding(dp(16f).toInt(), 0, dp(16f).toInt(), dp(8f).toInt())
                }
            }
            
            val editRecipeBtn = TextView(context).apply {
                text = strings.colorRecipe
                setTextColor(Color.WHITE)
                textSize = 11f
                setPadding(dp(12f).toInt(), dp(6f).toInt(), dp(12f).toInt(), dp(6f).toInt())
                background = GradientDrawable().apply {
                    setColor(Color.parseColor("#26FFFFFF"))
                    cornerRadius = dp(16f)
                }
                setOnClickListener {
                    val currentId = controller.currentLutId.value
                    if (currentId.isNotEmpty() && currentId != "None") {
                        MgcLutEditSheet(activity, currentId, controller, onDismiss = {}).show()
                    }
                }
            }
            topRow.addView(editRecipeBtn)
            sheet.addView(topRow)

            // Category ScrollView
            val catScroll = HorizontalScrollView(context).apply {
                isHorizontalScrollBarEnabled = false
            }
            categoryContainer = LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                setPadding(dp(8f).toInt(), 0, dp(8f).toInt(), 0)
            }
            catScroll.addView(categoryContainer, ViewGroup.LayoutParams(wrapContent, wrapContent))
            sheet.addView(catScroll, LinearLayout.LayoutParams(matchParent, wrapContent))

            // LUT ScrollView
            val lutScroll = HorizontalScrollView(context).apply {
                isHorizontalScrollBarEnabled = false
            }
            lutContainer = LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                setPadding(dp(12f).toInt(), 0, dp(12f).toInt(), 0)
            }
            lutScroll.addView(lutContainer, ViewGroup.LayoutParams(wrapContent, wrapContent))
            sheet.addView(lutScroll, LinearLayout.LayoutParams(matchParent, wrapContent).apply {
                topMargin = dp(8f).toInt()
            })

            setContentView(sheet)
            window?.setLayout(matchParent, wrapContent)
            window?.setGravity(Gravity.BOTTOM)
            setCanceledOnTouchOutside(true)
            setOnDismissListener {
                if (this@MgcLutSelectorSheet.dialog === this) {
                    this@MgcLutSelectorSheet.dialog = null
                    onDismiss()
                }
            }
        }
        
        val currentLut = controller.availableLutList.value.find { it.id == controller.currentLutId.value }
        selectedCategory = currentLut?.category?.takeIf { it.isNotEmpty() }
        
        renderCategories()
        renderLuts()
        
        dialog?.show()
    }
    
    private fun renderCategories() {
        categoryContainer.removeAllViews()
        val availableLuts = controller.availableLutList.value
        val categoryOrder = controller.categoryOrder.value
        val dynamicCats = availableLuts.map { it.category }.distinct().filter { it.isNotEmpty() }
        val sortedDynamic = dynamicCats.sortedWith(compareBy<String> { cat ->
            val index = categoryOrder.indexOf(cat)
            if (index == -1) Int.MAX_VALUE else index
        }.thenBy { it })
        
        val allCats = listOf(null) + sortedDynamic + listOf("Custom")
        
        allCats.forEach { cat ->
            val isSelected = selectedCategory == cat
            val catName = when (cat) {
                null -> strings.categoryAll
                "Custom" -> strings.custom
                else -> cat
            }
            
            val tv = TextView(activity).apply {
                text = catName
                setTextColor(if (isSelected) Color.parseColor("#FFFF6B35") else Color.parseColor("#80FFFFFF"))
                textSize = 12f
                setPadding(dp(8f).toInt(), dp(4f).toInt(), dp(8f).toInt(), dp(4f).toInt())
                setOnClickListener {
                    selectedCategory = cat
                    renderCategories()
                    renderLuts()
                }
                typeface = android.graphics.Typeface.create("sans-serif", if (isSelected) android.graphics.Typeface.BOLD else android.graphics.Typeface.NORMAL)
            }
            categoryContainer.addView(tv)
        }
    }
    
    private fun renderLuts() {
        lutContainer.removeAllViews()
        val availableLuts = controller.availableLutList.value
        val currentLutId = controller.currentLutId.value
        
        val filtered = when (selectedCategory) {
            null -> availableLuts
            "Custom" -> availableLuts.filter { !it.isBuiltIn }
            else -> availableLuts.filter { it.category == selectedCategory }
        }
        
        filtered.forEach { lut ->
            val isSelected = currentLutId == lut.id
            
            val itemLayout = LinearLayout(activity).apply {
                orientation = LinearLayout.VERTICAL
                gravity = Gravity.CENTER_HORIZONTAL
                val bgColor = if (isSelected) Color.parseColor("#4DFFFFFF") else Color.parseColor("#80000000")
                background = GradientDrawable().apply {
                    setColor(bgColor)
                    cornerRadius = dp(8f)
                    setStroke(if (isSelected) dp(2f).toInt() else dp(1f).toInt(), if (isSelected) Color.WHITE else Color.parseColor("#80888888"))
                }
                setPadding(dp(8f).toInt(), dp(8f).toInt(), dp(8f).toInt(), dp(8f).toInt())
                layoutParams = LinearLayout.LayoutParams(dp(64f).toInt(), wrapContent).apply {
                    rightMargin = dp(4f).toInt()
                    leftMargin = dp(4f).toInt()
                }
                setOnClickListener {
                    if (isSelected) {
                        MgcLutEditSheet(activity, lut.id, controller, onDismiss = {}).show()
                    } else {
                        controller.selectLut(lut.id)
                        renderLuts() // Re-render to show updated selection
                    }
                }
            }
            
            // Image Box
            val imgBox = FrameLayout(activity).apply {
                background = GradientDrawable(GradientDrawable.Orientation.TL_BR, intArrayOf(
                    Color.parseColor("#4A148C"),
                    Color.parseColor("#00897B"),
                    Color.parseColor("#FF6F00")
                )).apply {
                    cornerRadius = dp(4f)
                }
                layoutParams = LinearLayout.LayoutParams(dp(44f).toInt(), dp(44f).toInt())
            }
            
            // Name
            val nameTv = TextView(activity).apply {
                text = lut.getName()
                setTextColor(Color.WHITE)
                textSize = 9f
                maxLines = 1
                gravity = Gravity.CENTER
                ellipsize = android.text.TextUtils.TruncateAt.END
                layoutParams = LinearLayout.LayoutParams(matchParent, wrapContent).apply {
                    topMargin = dp(4f).toInt()
                }
            }
            
            itemLayout.addView(imgBox)
            itemLayout.addView(nameTv)
            lutContainer.addView(itemLayout)
        }
    }
    
    fun dismiss() {
        dialog?.dismiss()
        dialog = null
    }

    private val matchParent = ViewGroup.LayoutParams.MATCH_PARENT
    private val wrapContent = ViewGroup.LayoutParams.WRAP_CONTENT
    private fun dp(value: Float): Float = value * activity.resources.displayMetrics.density
}
