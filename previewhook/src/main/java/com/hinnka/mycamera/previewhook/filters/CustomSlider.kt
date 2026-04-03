package com.hinnka.mycamera.previewhook.filters

import android.content.Context
import android.graphics.*
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import kotlin.math.abs

/**
 * Custom slider View with round thumb - no Compose dependencies.
 */
class RoundThumbSlider @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : View(context, attrs, defStyleAttr) {

    var value: Float = 0.5f
        set(v) {
            field = v.coerceIn(minValue, maxValue)
            updateThumbX()
            invalidate()
        }

    var minValue: Float = 0f
    var maxValue: Float = 1f

    var activeTrackColor: Int = Color.WHITE
    var inactiveTrackColor: Int = Color.argb(128, 128, 128, 128)
    var thumbColor: Int = Color.WHITE

    var onValueChange: ((Float) -> Unit)? = null

    private val density = resources.displayMetrics.density
    private val thumbRadiusPx = 10f * density
    private val trackHeightPx = 4f * density
    private val totalHeightPx = (10f * 2 + 8f) * density

    private var isDragging = false
    private var thumbX = 0f
    private var trackStart = 0f
    private var trackWidth = 0f

    private val trackPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        style = Paint.Style.STROKE
        strokeCap = Paint.Cap.ROUND
        strokeWidth = trackHeightPx
    }

    private val thumbPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply { style = Paint.Style.FILL }
    private val ringPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        style = Paint.Style.FILL
    }
    private val highlightPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply { style = Paint.Style.FILL }

    init { updateThumbX() }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        setMeasuredDimension(
            View.MeasureSpec.getSize(widthMeasureSpec),
            totalHeightPx.toInt()
        )
    }

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)
        trackStart = thumbRadiusPx
        trackWidth = w - thumbRadiusPx * 2
        updateThumbX()
    }

    private fun updateThumbX() {
        val fraction = if (maxValue != minValue) (value - minValue) / (maxValue - minValue) else 0.5f
        thumbX = trackStart + trackWidth * fraction.coerceIn(0f, 1f)
    }

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        val centerY = height / 2f

        trackPaint.color = inactiveTrackColor
        canvas.drawLine(trackStart, centerY, trackStart + trackWidth, centerY, trackPaint)

        trackPaint.color = activeTrackColor
        canvas.drawLine(trackStart, centerY, thumbX, centerY, trackPaint)

        if (isDragging) {
            // Compute thumb color alpha
            val a = Color.alpha(thumbColor)
            val r = Color.red(thumbColor)
            val g = Color.green(thumbColor)
            val b = Color.blue(thumbColor)
            ringPaint.color = Color.argb(51, r, g, b)
            canvas.drawCircle(thumbX, centerY, thumbRadiusPx * 1.5f, ringPaint)
        }

        thumbPaint.color = thumbColor
        canvas.drawCircle(thumbX, centerY, thumbRadiusPx, thumbPaint)

        highlightPaint.color = Color.argb(76, 255, 255, 255)
        canvas.drawCircle(thumbX - thumbRadiusPx * 0.2f, centerY - thumbRadiusPx * 0.2f, thumbRadiusPx * 0.4f, highlightPaint)
    }

    override fun onTouchEvent(event: MotionEvent): Boolean {
        when (event.actionMasked) {
            MotionEvent.ACTION_DOWN -> {
                isDragging = abs(event.x - thumbX) < thumbRadiusPx * 2
                if (isDragging) parent?.requestDisallowInterceptTouchEvent(true)
                val x = if (!isDragging) event.x else event.x
                updateValueFromTouch(x)
                invalidate()
                return true
            }
            MotionEvent.ACTION_MOVE -> {
                if (isDragging) {
                    updateValueFromTouch(event.x)
                    invalidate()
                }
                return true
            }
            MotionEvent.ACTION_UP -> {
                if (!isDragging) {
                    updateValueFromTouch(event.x)
                    invalidate()
                } else {
                    isDragging = false
                    invalidate()
                    parent?.requestDisallowInterceptTouchEvent(false)
                }
            }
            MotionEvent.ACTION_CANCEL -> {
                isDragging = false
                invalidate()
            }
        }
        return super.onTouchEvent(event)
    }

    override fun performClick(): Boolean = super.performClick()

    private fun updateValueFromTouch(x: Float) {
        val fraction = (x - trackStart).coerceIn(0f, trackWidth) / trackWidth
        value = (minValue + fraction * (maxValue - minValue)).coerceIn(minValue, maxValue)
        onValueChange?.invoke(value)
    }
}

/**
 * Custom slider View with thin rectangular thumb - no Compose dependencies.
 */
class ThinThumbSlider @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : View(context, attrs, defStyleAttr) {

    var value: Float = 0.5f
        set(v) {
            field = v.coerceIn(minValue, maxValue)
            updateThumbX()
            invalidate()
        }

    var minValue: Float = 0f
    var maxValue: Float = 1f

    var activeTrackColor: Int = Color.WHITE
    var inactiveTrackColor: Int = Color.argb(128, 128, 128, 128)
    var thumbColor: Int = Color.WHITE

    var onValueChange: ((Float) -> Unit)? = null

    private val density = resources.displayMetrics.density
    private val thumbWidthPx = 3f * density
    private val thumbHeightPx = 22f * density
    private val trackHeightPx = 4f * density
    private val totalHeightPx = (22f + 4f) * density

    private var isDragging = false
    private var thumbX = 0f
    private var trackStart = 0f
    private var trackWidth = 0f

    private val trackPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        style = Paint.Style.STROKE
        strokeCap = Paint.Cap.ROUND
        strokeWidth = trackHeightPx
    }

    private val thumbPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply { style = Paint.Style.FILL }
    private val ringPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        style = Paint.Style.FILL
    }

    init { updateThumbX() }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        setMeasuredDimension(View.MeasureSpec.getSize(widthMeasureSpec), totalHeightPx.toInt())
    }

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)
        trackStart = thumbWidthPx / 2
        trackWidth = w - thumbWidthPx
        updateThumbX()
    }

    private fun updateThumbX() {
        val fraction = if (maxValue != minValue) (value - minValue) / (maxValue - minValue) else 0.5f
        thumbX = trackStart + trackWidth * fraction.coerceIn(0f, 1f)
    }

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        val centerY = height / 2f

        trackPaint.color = inactiveTrackColor
        canvas.drawLine(trackStart, centerY, trackStart + trackWidth, centerY, trackPaint)

        trackPaint.color = activeTrackColor
        canvas.drawLine(trackStart, centerY, thumbX, centerY, trackPaint)

        val top = centerY - thumbHeightPx / 2
        val bottom = centerY + thumbHeightPx / 2
        val left = thumbX - thumbWidthPx / 2
        val right = thumbX + thumbWidthPx / 2

        if (isDragging) {
            val a = Color.alpha(thumbColor)
            val r = Color.red(thumbColor)
            val g = Color.green(thumbColor)
            val b = Color.blue(thumbColor)
            ringPaint.color = Color.argb(51, r, g, b)
            canvas.drawRoundRect(left - thumbWidthPx, top - 4f, right + thumbWidthPx, bottom + 4f,
                thumbWidthPx * 1.5f, thumbWidthPx * 1.5f, ringPaint)
        }

        thumbPaint.color = thumbColor
        canvas.drawRoundRect(left, top, right, bottom, thumbWidthPx / 2, thumbWidthPx / 2, thumbPaint)
    }

    override fun onTouchEvent(event: MotionEvent): Boolean {
        when (event.actionMasked) {
            MotionEvent.ACTION_DOWN -> {
                isDragging = abs(event.x - thumbX) < thumbWidthPx * 3
                if (isDragging) parent?.requestDisallowInterceptTouchEvent(true)
                updateValueFromTouch(event.x)
                invalidate()
                return true
            }
            MotionEvent.ACTION_MOVE -> {
                if (isDragging) {
                    updateValueFromTouch(event.x)
                    invalidate()
                }
                return true
            }
            MotionEvent.ACTION_UP -> {
                if (!isDragging) {
                    updateValueFromTouch(event.x)
                    invalidate()
                } else {
                    isDragging = false
                    invalidate()
                    parent?.requestDisallowInterceptTouchEvent(false)
                }
            }
            MotionEvent.ACTION_CANCEL -> {
                isDragging = false
                invalidate()
            }
        }
        return super.onTouchEvent(event)
    }

    override fun performClick(): Boolean = super.performClick()

    private fun updateValueFromTouch(x: Float) {
        val fraction = (x - trackStart).coerceIn(0f, trackWidth) / trackWidth
        value = (minValue + fraction * (maxValue - minValue)).coerceIn(minValue, maxValue)
        onValueChange?.invoke(value)
    }
}
