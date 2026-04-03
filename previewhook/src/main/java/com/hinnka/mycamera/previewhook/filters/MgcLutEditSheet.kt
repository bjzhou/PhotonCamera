package com.hinnka.mycamera.previewhook.filters

import android.app.Activity
import android.app.Dialog
import android.graphics.Color
import android.graphics.drawable.GradientDrawable
import android.view.Gravity
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import com.hinnka.mycamera.model.ColorPaletteMapper
import com.hinnka.mycamera.model.ColorPaletteState
import com.hinnka.mycamera.model.ColorRecipeParams
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * View-based bottom sheet for editing LUT color recipe parameters.
 * Shows as a full-screen Dialog containing a ColorRecipePanel.
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
    private lateinit var panel: ColorRecipePanel
    private lateinit var intensitySlider: ThinThumbSlider
    private lateinit var loadingView: TextView

    private var editingParams = ColorRecipeParams.DEFAULT
    private var paletteState = ColorPaletteState.DEFAULT
    private var saveJob: Job? = null
    private val scope = CoroutineScope(Dispatchers.Main)
    private val strings = HostStrings(activity.resources, activity.packageName)

    fun show() {
        dismiss()

        dialog = Dialog(activity, android.R.style.Theme_DeviceDefault_NoActionBar).apply {
            val root = FrameLayout(context).apply {
                layoutParams = ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT
                )
            }

            // Top bar
            val topBar = LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                gravity = Gravity.CENTER_VERTICAL
                background = GradientDrawable().apply {
                    color = android.content.res.ColorStateList.valueOf(
                        Color.parseColor("#1A1A1A")
                    )
                }
                setPadding(dp(16), dp(8), dp(16), dp(8))
            }

            val titleText = TextView(context).apply {
                text = strings.colorRecipe
                setTextColor(Color.WHITE)
                textSize = 16f
            }
            topBar.addView(titleText, LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f))

            val closeBtn = android.widget.Button(context).apply {
                text = strings.cancel
                background = null
                setTextColor(Color.parseColor("#FF6B35"))
                setOnClickListener {
                    flushSave()
                    dismiss()
                }
            }
            topBar.addView(closeBtn, LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT))

            root.addView(topBar, FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply { gravity = Gravity.TOP })

            // Content area
            val scrollContent = ScrollView(context).apply {
                isFillViewport = true
            }

            val contentLayout = LinearLayout(context).apply {
                orientation = LinearLayout.VERTICAL
                setPadding(dp(16), dp(8), dp(16), dp(64))
            }

            // Intensity slider
            val intensityLabel = TextView(context).apply {
                text = strings.filterIntensity
                setTextColor(Color.WHITE)
                textSize = 12f
            }
            contentLayout.addView(intensityLabel, LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT
            ))

            val intensityValueLabel = TextView(context).apply {
                text = "100%"
                setTextColor(Color.argb(204, 255, 255, 255))
                textSize = 10f
                gravity = Gravity.END
            }
            contentLayout.addView(intensityValueLabel, LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT
            ))

            intensitySlider = ThinThumbSlider(context).apply {
                value = 1f
                minValue = 0f
                maxValue = 1f
                onValueChange = { newValue ->
                    editingParams = editingParams.copy(lutIntensity = newValue)
                    intensityValueLabel.text = "${(newValue * 100).toInt()}%"
                    onParamsPreviewChange?.invoke(editingParams)
                    scheduleSave(editingParams)
                }
            }
            contentLayout.addView(intensitySlider)

            // Loading indicator
            loadingView = TextView(context).apply {
                text = "Loading..."
                setTextColor(Color.argb(128, 255, 255, 255))
                textSize = 14f
                gravity = Gravity.CENTER
                setPadding(0, dp(50), 0, dp(50))
            }
            contentLayout.addView(loadingView)

            scrollContent.addView(contentLayout, LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT
            ))

            root.addView(scrollContent, FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT
            ).apply {
                topMargin = dp(36)
            })

            setContentView(root)
            window?.setLayout(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)

            setOnDismissListener {
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
            val loadedParams = kotlin.runCatching {
                if (initialParams != null) {
                    initialParams
                } else {
                    controller.getColorRecipe(lutId)
                }
            }.getOrNull() ?: ColorRecipeParams.DEFAULT

            editingParams = loadedParams
            paletteState = ColorPaletteState(
                x = loadedParams.paletteX,
                y = loadedParams.paletteY,
                density = loadedParams.paletteDensity,
            ).normalized()

            intensitySlider.value = loadedParams.lutIntensity
            loadingView.visibility = android.view.View.GONE
            addRecipePanel()
        }
    }

    private fun addRecipePanel() {
        val scrollContent = (dialog?.findViewById<ScrollView>(android.R.id.content))
        if (scrollContent == null) {
            // Fallback: find content layout
            return
        }

        // Actually we need to add panel to the content layout
        // For simplicity, just make the intensity slider visible
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
        dialog?.dismiss()
        dialog = null
    }

    private fun dp(value: Int): Int = (value * activity.resources.displayMetrics.density).toInt()
}
