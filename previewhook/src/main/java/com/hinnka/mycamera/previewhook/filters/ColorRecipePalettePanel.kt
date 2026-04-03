package com.hinnka.mycamera.previewhook.filters

import android.content.Context
import android.graphics.*
import android.util.AttributeSet
import android.view.Gravity
import android.view.MotionEvent
import android.view.View
import android.view.ViewGroup.LayoutParams.MATCH_PARENT
import android.view.ViewGroup.LayoutParams.WRAP_CONTENT
import android.widget.FrameLayout
import android.widget.LinearLayout
import android.widget.TextView
import com.hinnka.mycamera.model.ColorPaletteState
import kotlin.math.min

/**
 * View-based color palette panel - replaces Compose ColorRecipePalettePanel.
 * Shows a gradient palette with a draggable thumb.
 */
class ColorRecipePalettePanel @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : LinearLayout(context, attrs, defStyleAttr) {

    private val paletteView: PaletteView
    val densitySlider: RoundThumbSlider
    val densityLabel: TextView

    var paletteState = ColorPaletteState.DEFAULT
        set(value) {
            field = value
            paletteView.paletteState = value
        }

    var onPaletteStateChange: ((ColorPaletteState) -> Unit)? = null
    var onDensityChange: ((Float) -> Unit)? = null

    init {
        orientation = VERTICAL
        layoutParams = LayoutParams(MATCH_PARENT, WRAP_CONTENT)

        paletteView = PaletteView(context).apply {
            layoutParams = LayoutParams(MATCH_PARENT, dp(180)).apply { weight = 1.68f }
            minimumHeight = dp(120)
            setOnPaletteChangeListener { newState ->
                paletteState = newState
                onPaletteStateChange?.invoke(newState)
            }
        }
        addView(paletteView)
        addView(View(context).apply {
            layoutParams = LayoutParams(MATCH_PARENT, dp(8))
        })

        val labelRow = LinearLayout(context).apply {
            orientation = HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
        }
        densityLabel = TextView(context).apply {
            text = "Density"
            setTextColor(Color.argb(178, 255, 255, 255))
            textSize = 11f
        }
        labelRow.addView(densityLabel, LayoutParams(0, WRAP_CONTENT, 1f))
        addView(labelRow, LayoutParams(MATCH_PARENT, WRAP_CONTENT))

        densitySlider = RoundThumbSlider(context).apply {
            layoutParams = LayoutParams(MATCH_PARENT, WRAP_CONTENT)
        }
        densitySlider.onValueChange = {
            onDensityChange?.invoke(it)
        }
        addView(densitySlider, LayoutParams(MATCH_PARENT, WRAP_CONTENT))
    }

    fun setColorRecipePalettePalette(paletteState: ColorPaletteState) {
        paletteView.paletteState = paletteState
    }

    private fun dp(value: Int): Int = (value * resources.displayMetrics.density).toInt()
}

class PaletteView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null
) : View(context, attrs) {

    var paletteState = ColorPaletteState.DEFAULT
        set(value) {
            field = value
            invalidate()
        }

    private val thumbPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply { style = Paint.Style.FILL }
    private val ringPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        style = Paint.Style.STROKE
        strokeWidth = 3f
        color = Color.WHITE
    }
    private var thumbX = 0f
    private var thumbY = 0f
    private var thumbRadius = 0f
    private var isDragging = false
    private var onPaletteChangeListener: ((ColorPaletteState) -> Unit)? = null

    fun setOnPaletteChangeListener(listener: (ColorPaletteState) -> Unit) {
        onPaletteChangeListener = listener
    }

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)
        updateThumbPosition()
    }

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        val w = width.toFloat().coerceAtLeast(1f)
        val h = height.toFloat().coerceAtLeast(1f)

        // Draw gradient background
        val leftColor = Color.argb(255, 200, 200, 200)
        val rightColor = Color.argb(255, 255, 100, 100)
        val topColor = 0f
        val bottomColor = 1f

        val shader = LinearGradient(0f, 0f, w, 0f, leftColor, rightColor, Shader.TileMode.CLAMP)
        val paint = Paint(Paint.ANTI_ALIAS_FLAG)
        paint.shader = shader
        canvas.drawRect(0f, 0f, w, h, paint)

        // Second gradient vertical (white to black overlay)
        val vShader = LinearGradient(0f, 0f, 0f, h, Color.WHITE, Color.BLACK, Shader.TileMode.CLAMP)
        paint.shader = vShader
        paint.alpha = 80
        canvas.drawRect(0f, 0f, w, h, paint)

        // Rounded rect
        val rectF = RectF(0f, 0f, w, h)
        canvas.clipPath(Path().apply { addRoundRect(rectF, w * 0.1f, h * 0.1f, Path.Direction.CW) })

        updateThumbPosition()

        thumbRadius = min(w, h) * 0.065f
        thumbPaint.color = android.graphics.Color.WHITE
        canvas.drawCircle(thumbX, thumbY, thumbRadius, thumbPaint)
        canvas.drawCircle(thumbX, thumbY, thumbRadius, ringPaint)
    }

    private fun updateThumbPosition() {
        val w = width.toFloat().coerceAtLeast(1f)
        val h = height.toFloat().coerceAtLeast(1f)
        thumbX = paletteState.x.coerceIn(0f, 1f) * w
        thumbY = paletteState.y.coerceIn(0f, 1f) * h
    }

    override fun onTouchEvent(event: MotionEvent): Boolean {
        when (event.actionMasked) {
            MotionEvent.ACTION_DOWN, MotionEvent.ACTION_MOVE -> {
                parent?.requestDisallowInterceptTouchEvent(true)
                val w = width.toFloat().coerceAtLeast(1f)
                val h = height.toFloat().coerceAtLeast(1f)
                val newState = paletteState.copy(
                    x = (event.x / w).coerceIn(0f, 1f),
                    y = (event.y / h).coerceIn(0f, 1f),
                )
                paletteState = newState
                onPaletteChangeListener?.invoke(newState)
                return true
            }
            MotionEvent.ACTION_UP -> {
                parent?.requestDisallowInterceptTouchEvent(false)
                return true
            }
        }
        return super.onTouchEvent(event)
    }
}
