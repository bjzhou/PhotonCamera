package com.hinnka.mycamera.ui.gallery

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Matrix
import android.graphics.RectF
import android.util.AttributeSet
import android.view.GestureDetector
import android.view.MotionEvent
import android.view.ScaleGestureDetector
import android.widget.ImageView
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min

class HdrZoomImageView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
) : ImageView(context, attrs) {

    private val imageMatrixInternal = Matrix()
    private val imageBounds = RectF()
    private val viewBounds = RectF()

    private var baseScale = 1f
    private var currentScale = 1f
    private var currentBitmap: Bitmap? = null
    private var lastTouchX = 0f
    private var lastTouchY = 0f
    private var isDragging = false
    private var zoomChangedListener: ((Boolean) -> Unit)? = null

    private val scaleGestureDetector = ScaleGestureDetector(
        context,
        object : ScaleGestureDetector.SimpleOnScaleGestureListener() {
            override fun onScaleBegin(detector: ScaleGestureDetector): Boolean {
                parent?.requestDisallowInterceptTouchEvent(true)
                return true
            }

            override fun onScale(detector: ScaleGestureDetector): Boolean {
                if (drawable == null) return false
                val adjustedScaleFactor = adjustScaleFactor(detector.scaleFactor)
                val targetScale = (currentScale * adjustedScaleFactor).coerceIn(baseScale, maxScale())
                val scaleFactor = targetScale / currentScale
                imageMatrixInternal.postScale(scaleFactor, scaleFactor, detector.focusX, detector.focusY)
                currentScale = targetScale
                constrainTranslation()
                imageMatrix = imageMatrixInternal
                notifyZoomChanged()
                return true
            }
        }
    )

    private val gestureDetector = GestureDetector(
        context,
        object : GestureDetector.SimpleOnGestureListener() {
            override fun onDoubleTap(e: MotionEvent): Boolean {
                if (drawable == null) return false
                if (currentScale > baseScale * 1.5f) {
                    resetZoom()
                } else {
                    val targetScale = min(maxScale(), max(baseScale * DOUBLE_TAP_SCALE, baseScale * 2f))
                    val scaleFactor = targetScale / currentScale
                    imageMatrixInternal.postScale(scaleFactor, scaleFactor, e.x, e.y)
                    currentScale = targetScale
                    constrainTranslation()
                    imageMatrix = imageMatrixInternal
                    notifyZoomChanged()
                }
                return true
            }
        }
    )

    init {
        scaleType = ScaleType.MATRIX
        isClickable = true
        isFocusable = true
        setLayerType(LAYER_TYPE_HARDWARE, null)
    }

    fun setBitmap(bitmap: Bitmap?) {
        if (bitmap === currentBitmap) return
        currentBitmap = bitmap
        setImageBitmap(bitmap)
        if (width > 0 && height > 0) {
            resetZoom()
        }
    }

    fun setOnZoomChangedListener(listener: ((Boolean) -> Unit)?) {
        zoomChangedListener = listener
        notifyZoomChanged()
    }

    fun refreshForHdrMode() {
        postInvalidateOnAnimation()
    }

    fun rebindForHdrMode() {
        val bitmap = currentBitmap ?: return
        super.setImageBitmap(null)
        super.setImageBitmap(bitmap)
        imageMatrix = imageMatrixInternal
        postInvalidateOnAnimation()
    }

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)
        if (w > 0 && h > 0 && drawable != null) {
            resetZoom()
        }
    }

    override fun onTouchEvent(event: MotionEvent): Boolean {
        if (drawable == null) return super.onTouchEvent(event)

        val scaleHandled = scaleGestureDetector.onTouchEvent(event)
        val gestureHandled = gestureDetector.onTouchEvent(event)

        when (event.actionMasked) {
            MotionEvent.ACTION_DOWN -> {
                parent?.requestDisallowInterceptTouchEvent(false)
                lastTouchX = event.x
                lastTouchY = event.y
                isDragging = false
            }

            MotionEvent.ACTION_POINTER_DOWN -> {
                parent?.requestDisallowInterceptTouchEvent(true)
            }

            MotionEvent.ACTION_MOVE -> {
                if (event.pointerCount > 1) {
                    parent?.requestDisallowInterceptTouchEvent(true)
                }

                if (!scaleGestureDetector.isInProgress && event.pointerCount == 1 && currentScale > baseScale) {
                    val dx = event.x - lastTouchX
                    val dy = event.y - lastTouchY
                    if (!isDragging && (abs(dx) > TOUCH_SLOP || abs(dy) > TOUCH_SLOP)) {
                        isDragging = true
                        parent?.requestDisallowInterceptTouchEvent(true)
                    }
                    if (isDragging) {
                        imageMatrixInternal.postTranslate(dx, dy)
                        constrainTranslation()
                        imageMatrix = imageMatrixInternal
                    }
                    lastTouchX = event.x
                    lastTouchY = event.y
                } else if (!scaleGestureDetector.isInProgress && event.pointerCount == 1 && currentScale <= baseScale) {
                    parent?.requestDisallowInterceptTouchEvent(false)
                }
            }

            MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
                isDragging = false
                parent?.requestDisallowInterceptTouchEvent(currentScale > baseScale)
            }
        }

        super.onTouchEvent(event)
        return true
    }

    private fun resetZoom() {
        val d = drawable ?: return
        val drawableWidth = d.intrinsicWidth.toFloat()
        val drawableHeight = d.intrinsicHeight.toFloat()
        if (drawableWidth <= 0f || drawableHeight <= 0f || width == 0 || height == 0) return

        imageMatrixInternal.reset()
        viewBounds.set(0f, 0f, width.toFloat(), height.toFloat())

        baseScale = min(width / drawableWidth, height / drawableHeight)
        currentScale = baseScale

        val dx = (width - drawableWidth * baseScale) * 0.5f
        val dy = (height - drawableHeight * baseScale) * 0.5f
        imageMatrixInternal.postScale(baseScale, baseScale)
        imageMatrixInternal.postTranslate(dx, dy)
        imageMatrix = imageMatrixInternal
        notifyZoomChanged()
    }

    private fun constrainTranslation() {
        val d = drawable ?: return
        imageBounds.set(0f, 0f, d.intrinsicWidth.toFloat(), d.intrinsicHeight.toFloat())
        imageMatrixInternal.mapRect(imageBounds)

        var dx = 0f
        var dy = 0f

        if (imageBounds.width() <= width) {
            dx = width * 0.5f - imageBounds.centerX()
        } else {
            if (imageBounds.left > 0f) dx = -imageBounds.left
            if (imageBounds.right < width) dx = width - imageBounds.right
        }

        if (imageBounds.height() <= height) {
            dy = height * 0.5f - imageBounds.centerY()
        } else {
            if (imageBounds.top > 0f) dy = -imageBounds.top
            if (imageBounds.bottom < height) dy = height - imageBounds.bottom
        }

        imageMatrixInternal.postTranslate(dx, dy)
    }

    private fun notifyZoomChanged() {
        zoomChangedListener?.invoke(currentScale > baseScale * 1.01f)
    }

    private fun adjustScaleFactor(rawScaleFactor: Float): Float {
        return 1f + (rawScaleFactor - 1f) * SCALE_SENSITIVITY
    }

    private fun maxScale(): Float = max(baseScale * MAX_SCALE_MULTIPLIER, baseScale)

    companion object {
        private const val MAX_SCALE_MULTIPLIER = 8f
        private const val DOUBLE_TAP_SCALE = 2.5f
        private const val TOUCH_SLOP = 2f
        private const val SCALE_SENSITIVITY = 2.1f
    }
}
