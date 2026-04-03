package com.hinnka.mycamera.previewhook.filters

import android.app.Activity
import android.app.Dialog
import android.content.res.ColorStateList
import android.graphics.Color
import android.graphics.drawable.GradientDrawable
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import com.hinnka.mycamera.model.ColorPaletteState
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.RecipeParam
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/**
 * View-based bottom sheet for editing LUT color recipe parameters.
 * Shows as a bottom-anchored Dialog (no title bar, drag handle at top).
 */
class MgcLutEditSheet(
    private val activity: Activity,
    private val lutId: String,
    private val controller: MgcFilterController,
    private val onDismiss: () -> Unit,
    private val initialParams: ColorRecipeParams? = null,
    private val onParamsPreviewChange: ((ColorRecipeParams) -> Unit)? = null,
) {
    private var dialog: Dialog? = null
    private lateinit var contentLayout: LinearLayout
    private lateinit var intensitySlider: ThinThumbSlider
    private lateinit var intensityValueLabel: TextView
    private lateinit var loadingView: TextView

    private var editingParams = ColorRecipeParams.DEFAULT
    private var paletteState = ColorPaletteState.DEFAULT
    private var saveJob: Job? = null
    private val scope = CoroutineScope(Dispatchers.Main)
    private val strings = HostStrings(activity.resources, activity.packageName)

    fun show() {
        dismiss()

        dialog = Dialog(activity, android.R.style.Theme_DeviceDefault_NoActionBar).apply {
            // Transparent window background so our rounded drawable shows
            window?.setBackgroundDrawableResource(android.R.color.transparent)

            // Sheet root with rounded top corners and bg color
            val sheetBg = GradientDrawable().apply {
                setColor(Color.parseColor("#151515"))
                val r = dp(16f)
                cornerRadii = floatArrayOf(r, r, r, r, 0f, 0f, 0f, 0f)
            }
            val sheet = LinearLayout(context).apply {
                orientation = LinearLayout.VERTICAL
                background = sheetBg
                layoutParams = ViewGroup.LayoutParams(MATCH, WRAP)
            }

            // Drag handle
            val handle = View(context).apply {
                background = GradientDrawable().apply {
                    setColor(Color.argb(51, 255, 255, 255))
                    cornerRadius = dp(2f)
                }
            }
            sheet.addView(handle, LinearLayout.LayoutParams(dp(32f).toInt(), dp(4f).toInt()).apply {
                gravity = Gravity.CENTER_HORIZONTAL
                topMargin = dp(12f).toInt()
                bottomMargin = dp(8f).toInt()
            })

            // Intensity section (padding horizontal 16dp, vertical 8dp)
            val intensitySection = LinearLayout(context).apply {
                orientation = LinearLayout.VERTICAL
                setPadding(dp(16f).toInt(), dp(8f).toInt(), dp(16f).toInt(), dp(8f).toInt())
            }

            // Label row: "Filter Intensity" left, "100%" right
            val labelRow = LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                gravity = Gravity.CENTER_VERTICAL
            }
            val intensityLabel = TextView(context).apply {
                text = strings.filterIntensity
                setTextColor(Color.WHITE)
                textSize = 12f
            }
            labelRow.addView(intensityLabel, LinearLayout.LayoutParams(0, WRAP, 1f))

            intensityValueLabel = TextView(context).apply {
                text = "100%"
                setTextColor(Color.WHITE)
                textSize = 10f
                typeface = android.graphics.Typeface.create("sans-serif-medium", android.graphics.Typeface.BOLD)
            }
            labelRow.addView(intensityValueLabel, LinearLayout.LayoutParams(WRAP, WRAP))
            intensitySection.addView(labelRow, LinearLayout.LayoutParams(MATCH, WRAP))

            intensitySlider = ThinThumbSlider(context).apply {
                value = 1f
                minValue = 0f
                maxValue = 1f
                activeTrackColor = Color.WHITE
                inactiveTrackColor = Color.argb(128, 128, 128, 128)
                thumbColor = Color.WHITE
                onValueChange = { newValue ->
                    editingParams = editingParams.copy(lutIntensity = newValue)
                    intensityValueLabel.text = "${(newValue * 100).toInt()}%"
                    onParamsPreviewChange?.invoke(editingParams)
                    scheduleSave(editingParams)
                }
            }
            intensitySection.addView(intensitySlider, LinearLayout.LayoutParams(MATCH, WRAP))
            sheet.addView(intensitySection, LinearLayout.LayoutParams(MATCH, WRAP))

            // Scrollable recipe panel content
            val scrollView = ScrollView(context).apply { isFillViewport = true }
            contentLayout = LinearLayout(context).apply {
                orientation = LinearLayout.VERTICAL
                setPadding(dp(16f).toInt(), dp(4f).toInt(), dp(16f).toInt(), dp(64f).toInt())
            }

            // Loading indicator
            loadingView = TextView(context).apply {
                text = "Loading..."
                setTextColor(Color.argb(128, 255, 255, 255))
                textSize = 14f
                gravity = Gravity.CENTER
                setPadding(0, dp(20f).toInt(), 0, dp(20f).toInt())
            }
            contentLayout.addView(loadingView, LinearLayout.LayoutParams(MATCH, WRAP))

            scrollView.addView(contentLayout, LinearLayout.LayoutParams(MATCH, WRAP))
            sheet.addView(scrollView, LinearLayout.LayoutParams(MATCH, WRAP))

            setContentView(sheet)

            // Bottom-anchored, match width, wrap height
            window?.setLayout(MATCH, WRAP)
            window?.setGravity(Gravity.BOTTOM)

            setCanceledOnTouchOutside(true)
            setOnDismissListener {
                flushSave()
                if (this@MgcLutEditSheet.dialog === this) {
                    this@MgcLutEditSheet.dialog = null
                    onDismiss()
                }
            }
        }

        dialog?.show()
        loadParams()
    }

    private fun loadParams() {
        scope.launch {
            val loadedParams = runCatching {
                if (initialParams != null) initialParams else controller.getColorRecipe(lutId)
            }.getOrNull() ?: ColorRecipeParams.DEFAULT

            editingParams = loadedParams
            paletteState = ColorPaletteState(
                x = loadedParams.paletteX,
                y = loadedParams.paletteY,
                density = loadedParams.paletteDensity,
            ).normalized()

            intensitySlider.value = loadedParams.lutIntensity
            intensityValueLabel.text = "${(loadedParams.lutIntensity * 100).toInt()}%"
            loadingView.visibility = View.GONE

            addRecipePanel()
        }
    }

    private fun addRecipePanel() {
        val recipePanel = ColorRecipePanel(activity).apply {
            currentParams = editingParams
            paletteState = this@MgcLutEditSheet.paletteState

            onPaletteStateChange = { newState ->
                this@MgcLutEditSheet.paletteState = newState
                editingParams = editingParams.copy(
                    paletteX = newState.x,
                    paletteY = newState.y,
                    paletteDensity = newState.density,
                )
                onParamsPreviewChange?.invoke(editingParams)
                scheduleSave(editingParams)
            }

            onParamChange = { param, value ->
                editingParams = param.setValue(editingParams, value)
                onParamsPreviewChange?.invoke(editingParams)
                scheduleSave(editingParams)
            }

            onRemarksChange = { text ->
                editingParams = editingParams.copy(remarks = text)
                scheduleSave(editingParams)
            }
        }

        contentLayout.addView(recipePanel, LinearLayout.LayoutParams(MATCH, WRAP))
    }

    private fun scheduleSave(params: ColorRecipeParams) {
        saveJob?.cancel()
        saveJob = scope.launch {
            delay(250)
            controller.saveColorRecipe(lutId, params)
        }
    }

    private fun flushSave() {
        saveJob?.cancel()
        controller.saveColorRecipe(lutId, editingParams)
    }

    fun dismiss() {
        dialog?.setOnDismissListener(null)
        dialog?.dismiss()
        dialog = null
    }

    private val MATCH = ViewGroup.LayoutParams.MATCH_PARENT
    private val WRAP = ViewGroup.LayoutParams.WRAP_CONTENT
    private fun dp(value: Float): Float = value * activity.resources.displayMetrics.density
}
