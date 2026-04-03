package com.hinnka.mycamera.previewhook.filters

import android.content.Context
import android.content.res.ColorStateList
import android.graphics.*
import android.graphics.drawable.GradientDrawable
import android.text.Editable
import android.text.TextWatcher
import android.util.AttributeSet
import android.util.TypedValue
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.view.ViewGroup.LayoutParams.MATCH_PARENT
import android.view.ViewGroup.LayoutParams.WRAP_CONTENT
import android.widget.*
import com.hinnka.mycamera.model.ColorPaletteState
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.RecipeParam

/**
 * View-based color recipe panel - replaces Compose ColorRecipePanel.
 * Provides tabbed UI for adjusting color recipe parameters.
 */
class ColorRecipePanel @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : LinearLayout(context, attrs, defStyleAttr) {

    private val rootLayout = LinearLayout(context).apply { orientation = VERTICAL }
    private val tabRow = LinearLayout(context).apply {
        orientation = HORIZONTAL
        background = GradientDrawable().apply {
            color = ColorStateList.valueOf(Color.parseColor("#1A1A1A"))
            cornerRadius = dpFloat(18f)
        }
        setPadding(dp(4), dp(4), dp(4), dp(4))
    }
    private var selectedTabIndex = 0
    private var selectedLchTabIndex = 0
    private val contentContainer = FrameLayout(context).apply {
        background = GradientDrawable().apply {
            color = ColorStateList.valueOf(Color.parseColor("#0D000000"))
            cornerRadius = dpFloat(8f)
        }
        setPadding(dp(8), dp(8), dp(8), dp(8))
    }

    private lateinit var palettePanel: ColorRecipePalettePanel

    var currentParams = ColorRecipeParams.DEFAULT
        set(value) {
            field = value
            paletteState = paletteState
            rebuildContent()
        }

    var paletteState = ColorPaletteState.DEFAULT
        set(value) {
            field = value
            if (::palettePanel.isInitialized) {
                palettePanel.setColorRecipePalettePalette(value)
            }
        }

    var onPaletteStateChange: ((ColorPaletteState) -> Unit)? = null
    var onParamChange: ((RecipeParam, Float) -> Unit)? = null
    var onRemarksChange: ((String) -> Unit)? = null

    val strings: HostStrings

    init {
        orientation = VERTICAL
        setPadding(dp(4), 0, dp(4), 0)
        layoutParams = LayoutParams(MATCH_PARENT, WRAP_CONTENT)

        val res = context.resources
        val pkg = context.packageName
        strings = HostStrings(res, pkg)

        addView(rootLayout, LayoutParams(MATCH_PARENT, WRAP_CONTENT))
        rootLayout.addView(tabRow, LayoutParams(MATCH_PARENT, dp(36)))
        rootLayout.addView(View(context).apply {
            layoutParams = LayoutParams(MATCH_PARENT, dp(12))
        })
        rootLayout.addView(contentContainer, LayoutParams(MATCH_PARENT, WRAP_CONTENT))

        buildTabs()
    }

    private fun buildTabs() {
        tabRow.removeAllViews()
        val tabs = listOf(
            strings.recipeTabPalette,
            strings.recipeTabLight,
            strings.recipeTabColor,
            strings.recipeTabLch,
            strings.recipeTabTexture,
            strings.recipeTabLens,
            strings.recipeTabRemarks,
        )

        tabs.forEachIndexed { index, title ->
            val tab = TextView(context).apply {
                text = title
                gravity = Gravity.CENTER
                textSize = 11f
                setTextColor(if (index == selectedTabIndex) Color.WHITE else Color.argb(153, 255, 255, 255))
                typeface = if (index == selectedTabIndex)
                    android.graphics.Typeface.create("sans-serif-medium", android.graphics.Typeface.NORMAL)
                else android.graphics.Typeface.DEFAULT
                setPadding(dp(4), dp(4), dp(4), dp(4))
                background = GradientDrawable().apply {
                    color = ColorStateList.valueOf(
                        if (index == selectedTabIndex) Color.argb(51, 255, 255, 255) else Color.TRANSPARENT
                    )
                    cornerRadius = dpFloat(14f)
                }
                setOnClickListener {
                    selectedTabIndex = index
                    buildTabs()
                    rebuildContent()
                }
            }
            tabRow.addView(tab, LayoutParams(0, MATCH_PARENT, 1f))
        }
    }

    private fun rebuildContent() {
        contentContainer.removeAllViews()
        val parameterGroups = listOf(
            emptyList<RecipeParam>(),
            listOf(RecipeParam.EXPOSURE, RecipeParam.CONTRAST, RecipeParam.HIGHLIGHTS, RecipeParam.SHADOWS),
            listOf(RecipeParam.SATURATION, RecipeParam.TEMPERATURE, RecipeParam.TINT, RecipeParam.COLOR),
            emptyList(),
            listOf(RecipeParam.VIGNETTE, RecipeParam.FILM_GRAIN, RecipeParam.FADE, RecipeParam.BLEACH_BYPASS),
            listOf(RecipeParam.HALATION, RecipeParam.CHROMATIC_ABERRATION, RecipeParam.NOISE, RecipeParam.LOW_RES),
        )
        val lchGroups = listOf(
            listOf(RecipeParam.SKIN_HUE, RecipeParam.SKIN_CHROMA, RecipeParam.SKIN_LIGHTNESS),
            listOf(RecipeParam.RED_HUE, RecipeParam.RED_CHROMA, RecipeParam.RED_LIGHTNESS),
            listOf(RecipeParam.ORANGE_HUE, RecipeParam.ORANGE_CHROMA, RecipeParam.ORANGE_LIGHTNESS),
            listOf(RecipeParam.YELLOW_HUE, RecipeParam.YELLOW_CHROMA, RecipeParam.YELLOW_LIGHTNESS),
            listOf(RecipeParam.GREEN_HUE, RecipeParam.GREEN_CHROMA, RecipeParam.GREEN_LIGHTNESS),
            listOf(RecipeParam.CYAN_HUE, RecipeParam.CYAN_CHROMA, RecipeParam.CYAN_LIGHTNESS),
            listOf(RecipeParam.BLUE_HUE, RecipeParam.BLUE_CHROMA, RecipeParam.BLUE_LIGHTNESS),
            listOf(RecipeParam.PURPLE_HUE, RecipeParam.PURPLE_CHROMA, RecipeParam.PURPLE_LIGHTNESS),
            listOf(RecipeParam.MAGENTA_HUE, RecipeParam.MAGENTA_CHROMA, RecipeParam.MAGENTA_LIGHTNESS),
        )
        val lchColorNames = listOf(
            strings.recipeLchSkin, strings.recipeLchRed, strings.recipeLchOrange,
            strings.recipeLchYellow, strings.recipeLchGreen, strings.recipeLchCyan,
            strings.recipeLchBlue, strings.recipeLchPurple, strings.recipeLchMagenta,
        )
        val lchColors = listOf(
            Color.parseColor("#D8A47F"), Color.parseColor("#FF3B30"), Color.parseColor("#FF9F0A"),
            Color.parseColor("#FFD835"), Color.parseColor("#43A047"), Color.parseColor("#00ACC1"),
            Color.parseColor("#1E88E5"), Color.parseColor("#9B30FF"), Color.parseColor("#FF2DFF"),
        )

        val innerContent = LinearLayout(context).apply {
            orientation = VERTICAL
        }

        if (selectedTabIndex == 0) {
            palettePanel = ColorRecipePalettePanel(context).apply {
                layoutParams = LayoutParams(MATCH_PARENT, WRAP_CONTENT)
                setColorRecipePalettePalette(paletteState)
                onPaletteStateChange = { state ->
                    paletteState = state
                    this@ColorRecipePanel.onPaletteStateChange?.invoke(state)
                }
                onDensityChange = { density ->
                    paletteState = paletteState.copy(density = density)
                    onPaletteStateChange?.invoke(paletteState)
                }
            }
            innerContent.addView(palettePanel)
        } else if (selectedTabIndex == 3) {
            // LCH tab with secondary color selector
            val lchRow = LinearLayout(context).apply { orientation = HORIZONTAL; gravity = Gravity.CENTER }
            lchColorNames.forEachIndexed { index, name ->
                val chip = LchColorChipView(context).apply {
                    color = lchColors[index]
                    chipSelected = index == selectedLchTabIndex
                    setOnClickListener {
                        selectedLchTabIndex = index
                        rebuildContent()
                    }
                    layoutParams = LayoutParams(0, WRAP_CONTENT, 1f)
                }
                lchRow.addView(chip)
            }
            innerContent.addView(lchRow, LayoutParams(MATCH_PARENT, dp(32)))
            innerContent.addView(View(context).apply {
                layoutParams = LayoutParams(MATCH_PARENT, dp(6))
            })
            lchGroups[selectedLchTabIndex].forEach { param ->
                innerContent.addView(createParamSlider(param))
                innerContent.addView(View(context).apply {
                    layoutParams = LayoutParams(MATCH_PARENT, dp(4))
                })
            }
        } else if (selectedTabIndex < parameterGroups.size) {
            parameterGroups[selectedTabIndex].forEach { param ->
                innerContent.addView(createParamSlider(param))
                innerContent.addView(View(context).apply {
                    layoutParams = LayoutParams(MATCH_PARENT, dp(4))
                })
            }
        } else {
            // Remarks tab
            val remarksEdit = EditText(context).apply {
                text = android.text.SpannableStringBuilder(currentParams.remarks)
                setTextColor(Color.WHITE)
                textSize = 11f
                hint = strings.recipePlaceholderRemarks
                setHintTextColor(Color.argb(64, 255, 255, 255))
                minLines = 4
                maxLines = 10
                gravity = Gravity.TOP
                background = null
            }
            remarksEdit.addTextChangedListener(object : TextWatcher {
                override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {}
                override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {}
                override fun afterTextChanged(s: Editable?) {
                    val newText = s?.toString().orEmpty()
                    onRemarksChange?.invoke(newText)
                }
            })
            innerContent.addView(remarksEdit, LayoutParams(MATCH_PARENT, WRAP_CONTENT))
        }

        contentContainer.addView(innerContent, LayoutParams(MATCH_PARENT, WRAP_CONTENT))
    }

    private fun createParamSlider(param: RecipeParam): View {
        val row = LinearLayout(context).apply {
            orientation = VERTICAL
            layoutParams = LayoutParams(MATCH_PARENT, WRAP_CONTENT)
        }

        val labelRow = LinearLayout(context).apply {
            orientation = HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
        }

        val label = TextView(context).apply {
            text = param.displayName
            setTextColor(Color.WHITE)
            textSize = 11f
        }
        labelRow.addView(label, LayoutParams(0, WRAP_CONTENT, 1f))

        val valueText = TextView(context).apply {
            text = formatParamValue(param, param.getValue(currentParams))
            setTextColor(Color.argb(204, 255, 255, 255))
            textSize = 10f
            typeface = android.graphics.Typeface.create("sans-serif-medium", android.graphics.Typeface.NORMAL)
            gravity = Gravity.END
            setWidth(dp(50))
        }
        labelRow.addView(valueText, LayoutParams(WRAP_CONTENT, WRAP_CONTENT))

        val slider = ThinThumbSlider(context).apply {
            value = param.getValue(currentParams)
            minValue = param.minValue
            maxValue = param.maxValue
            activeTrackColor = getParamColorInt(param)
            inactiveTrackColor = Color.argb(76, 128, 128, 128)
            thumbColor = Color.WHITE
            onValueChange = { newValue ->
                valueText.text = formatParamValue(param, newValue)
                onParamChange?.invoke(param, newValue)
            }
        }

        row.addView(labelRow, LayoutParams(MATCH_PARENT, WRAP_CONTENT))
        row.addView(slider, LayoutParams(MATCH_PARENT, WRAP_CONTENT))
        return row
    }

    private fun formatParamValue(param: RecipeParam, value: Float): String {
        return when (param) {
            RecipeParam.EXPOSURE -> String.format("%.1f EV", value)
            RecipeParam.CONTRAST, RecipeParam.SATURATION, RecipeParam.COLOR -> String.format("%.2f", value)
            RecipeParam.TEMPERATURE, RecipeParam.TINT, RecipeParam.HIGHLIGHTS, RecipeParam.SHADOWS -> {
                if (value >= 0) String.format("+%.2f", value) else String.format("%.2f", value)
            }
            RecipeParam.FILM_GRAIN, RecipeParam.NOISE, RecipeParam.HALATION, RecipeParam.CHROMATIC_ABERRATION ->
                String.format("%.2f", value)
            RecipeParam.FADE -> String.format("%.2f", value)
            RecipeParam.COLOR -> String.format("%.2f", value)
            RecipeParam.LUT_INTENSITY -> String.format("%.2f", value)
            else -> {
                if (value >= 0) String.format("+%.2f", value) else String.format("%.2f", value)
            }
        }
    }

    private fun getParamColorInt(param: RecipeParam): Int {
        return when (param) {
            RecipeParam.EXPOSURE -> Color.parseColor("#FFD600")
            RecipeParam.CONTRAST -> Color.parseColor("#9C27B0")
            RecipeParam.SATURATION -> Color.parseColor("#E91E63")
            RecipeParam.TEMPERATURE -> Color.parseColor("#FF9800")
            RecipeParam.TINT -> Color.parseColor("#4CAF50")
            RecipeParam.FADE -> Color.parseColor("#607D8B")
            RecipeParam.COLOR -> Color.parseColor("#2196F3")
            RecipeParam.HIGHLIGHTS -> Color.parseColor("#F44336")
            RecipeParam.SHADOWS -> Color.parseColor("#3F51B5")
            RecipeParam.VIGNETTE -> Color.parseColor("#795548")
            RecipeParam.FILM_GRAIN -> Color.parseColor("#9E9E9E")
            RecipeParam.BLEACH_BYPASS -> Color.parseColor("#00BCD4")
            RecipeParam.HALATION -> Color.parseColor("#FF7043")
            RecipeParam.CHROMATIC_ABERRATION -> Color.parseColor("#AB47BC")
            RecipeParam.NOISE -> Color.parseColor("#A1887F")
            RecipeParam.LOW_RES -> Color.parseColor("#8D6E63")
            RecipeParam.SKIN_HUE, RecipeParam.SKIN_CHROMA, RecipeParam.SKIN_LIGHTNESS -> Color.parseColor("#D7A27A")
            RecipeParam.RED_HUE, RecipeParam.RED_CHROMA, RecipeParam.RED_LIGHTNESS -> Color.parseColor("#E53935")
            RecipeParam.ORANGE_HUE, RecipeParam.ORANGE_CHROMA, RecipeParam.ORANGE_LIGHTNESS -> Color.parseColor("#FB8C00")
            RecipeParam.YELLOW_HUE, RecipeParam.YELLOW_CHROMA, RecipeParam.YELLOW_LIGHTNESS -> Color.parseColor("#FFE100")
            RecipeParam.GREEN_HUE, RecipeParam.GREEN_CHROMA, RecipeParam.GREEN_LIGHTNESS -> Color.parseColor("#43A047")
            RecipeParam.CYAN_HUE, RecipeParam.CYAN_CHROMA, RecipeParam.CYAN_LIGHTNESS -> Color.parseColor("#12D7F2")
            RecipeParam.BLUE_HUE, RecipeParam.BLUE_CHROMA, RecipeParam.BLUE_LIGHTNESS -> Color.parseColor("#3D63D8")
            RecipeParam.PURPLE_HUE, RecipeParam.PURPLE_CHROMA, RecipeParam.PURPLE_LIGHTNESS -> Color.parseColor("#9B30FF")
            RecipeParam.MAGENTA_HUE, RecipeParam.MAGENTA_CHROMA, RecipeParam.MAGENTA_LIGHTNESS -> Color.parseColor("#FF2DFF")
            RecipeParam.LUT_INTENSITY -> Color.parseColor("#9E9E9E")
        }
    }

    private fun dp(value: Int): Int = (value * resources.displayMetrics.density).toInt()
    private fun dpFloat(value: Float): Float = value * resources.displayMetrics.density
}

/**
 * Simple LCH color chip view - replaces Compose LchColorChip.
 */
class LchColorChipView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null
) : FrameLayout(context, attrs) {

    var color: Int = Color.WHITE
        set(value) {
            field = value
            invalidate()
        }

    var chipSelected: Boolean = false
        set(value) {
            field = value
            invalidate()
        }

    private val ringPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply { style = Paint.Style.STROKE }
    private val fillPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply { style = Paint.Style.FILL }
    private val innerRingPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply { style = Paint.Style.STROKE; strokeWidth = 1f * resources.displayMetrics.density }

    private val size = dp(24)

    init { setMinimumHeight(size) }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        setMeasuredDimension(size, size)
    }

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        val cx = width / 2f
        val cy = height / 2f
        val outerRadius = if (chipSelected) size / 2f - dp(2) else size / 2f - dp(4)

        ringPaint.color = color
        ringPaint.strokeWidth = if (chipSelected) dpFloat(3f) else dpFloat(2.5f)
        canvas.drawCircle(cx, cy, outerRadius, ringPaint)

        if (chipSelected) {
            fillPaint.color = color
            canvas.drawCircle(cx, cy, dpFloat(4.5f), fillPaint)
            innerRingPaint.color = Color.argb(230, 255, 255, 255)
            canvas.drawCircle(cx, cy, dpFloat(4.5f), innerRingPaint)
        }
    }

    private fun dp(value: Int): Int = (value * resources.displayMetrics.density).toInt()
    private fun dpFloat(value: Float): Float = value * resources.displayMetrics.density
}
