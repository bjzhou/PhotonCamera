package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog
import kotlin.math.roundToInt

/** Draws a magnified center crop of the presented frame on the viewfinder surface. */
internal class FocusMagnifierGl(density: Float) {
    companion object {
        private const val TAG = "FocusMagnifierGl"
        private const val MAGNIFICATION = 4
        private const val WINDOW_FRACTION = 0.48f
    }

    private val marginPx = (12f * density).roundToInt()
    private val maxWindowSizePx = (180f * density).roundToInt()
    private val borderPx = density.roundToInt().coerceAtLeast(1)
    private val borderColor = floatArrayOf(0.9f, 0.9f, 0.9f, 1f)
    private val texture = IntArray(1)
    private var textureSize = 0

    fun draw(width: Int, height: Int, topInsetPx: Int, drawTexture: (Int) -> Unit) {
        val top = topInsetPx + marginPx
        val maxOuterSize = minOf(
            (minOf(width, height) * WINDOW_FRACTION).roundToInt(),
            maxWindowSizePx,
            (height - top - marginPx) / 2,
        )
        val cropSize = (maxOuterSize - 2 * borderPx) / MAGNIFICATION
        if (cropSize <= 0) return
        val imageSize = cropSize * MAGNIFICATION
        val outerSize = imageSize + 2 * borderPx
        val left = (width - outerSize) / 2
        val bottom = height - top - outerSize

        // Read the composed preview so the crop matches its transforms, color and focus peaking.
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES30.glReadBuffer(GLES30.GL_BACK)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        if (!bindCropTexture(cropSize)) return
        GLES30.glCopyTexSubImage2D(
            GLES30.GL_TEXTURE_2D, 0, 0, 0,
            (width - cropSize) / 2, (height - cropSize) / 2, cropSize, cropSize,
        )
        val copyError = GLES30.glGetError()
        if (copyError != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "Copying the ${cropSize}x$cropSize preview center failed: glError=$copyError")
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            return
        }

        GLES30.glEnable(GLES30.GL_SCISSOR_TEST)
        GLES30.glScissor(left, bottom, outerSize, outerSize)
        GLES30.glClearBufferfv(GLES30.GL_COLOR, 0, borderColor, 0)
        GLES30.glDisable(GLES30.GL_SCISSOR_TEST)
        GLES30.glViewport(left + borderPx, bottom + borderPx, imageSize, imageSize)
        drawTexture(texture[0])
        GLES30.glViewport(0, 0, width, height)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
    }

    private fun bindCropTexture(size: Int): Boolean {
        if (textureSize == size) {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture[0])
            return true
        }
        release()
        GLES30.glGenTextures(1, texture, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture[0])
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGB8, size, size)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        val allocationError = GLES30.glGetError()
        if (allocationError != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "Allocating the ${size}x$size magnifier texture failed: glError=$allocationError")
            release()
            return false
        }
        textureSize = size
        return true
    }

    fun release() {
        if (texture[0] != 0) GLES30.glDeleteTextures(1, texture, 0)
        resetAfterContextLoss()
    }

    fun resetAfterContextLoss() {
        texture[0] = 0
        textureSize = 0
    }
}
