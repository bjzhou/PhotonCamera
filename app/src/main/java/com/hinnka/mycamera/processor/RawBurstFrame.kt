package com.hinnka.mycamera.processor

import com.hinnka.mycamera.camera.GyroExposureWindow
import com.hinnka.mycamera.model.SafeImage

enum class RawBurstFrameRole {
    NORMAL,
    HIGHLIGHT_SHORT,
    HDR_SHORT,
    HDR_LONG,
}

/**
 * Global reference-to-frame transform used only as the starting point for local optical flow.
 * Translation is expressed in the half-resolution Bayer plane used by [GlesRawStacker].
 */
data class RawFramePreAlignment(
    val translationXPlanePx: Float,
    val translationYPlanePx: Float,
    val rotationDegrees: Float,
    val confidence: Float,
) {
    val isUsable: Boolean
        get() = translationXPlanePx.isFinite() && translationYPlanePx.isFinite() &&
            rotationDegrees.isFinite() && confidence.isFinite() && confidence >= MIN_USABLE_CONFIDENCE

    fun flowAtPlanePosition(
        xPlanePx: Float,
        yPlanePx: Float,
        planeWidth: Int,
        planeHeight: Int,
    ): Pair<Float, Float> {
        if (!isUsable) return 0f to 0f
        val centerX = (planeWidth - 1) * 0.5f
        val centerY = (planeHeight - 1) * 0.5f
        val centeredX = xPlanePx - centerX
        val centeredY = yPlanePx - centerY
        val radians = Math.toRadians(rotationDegrees.toDouble())
        val cosTheta = kotlin.math.cos(radians).toFloat()
        val sinTheta = kotlin.math.sin(radians).toFloat()
        val rotatedX = cosTheta * centeredX - sinTheta * centeredY
        val rotatedY = sinTheta * centeredX + cosTheta * centeredY
        return (rotatedX - centeredX + translationXPlanePx) to
            (rotatedY - centeredY + translationYPlanePx)
    }

    companion object {
        val Identity = RawFramePreAlignment(0f, 0f, 0f, 1f)
        const val MIN_USABLE_CONFIDENCE = 0.08f
    }
}

data class RawStackFrame(
    val image: SafeImage,
    val sensorTimestampNs: Long = image.timestamp,
    val frameNumber: Long = -1L,
    val exposureTimeNs: Long = 0L,
    val sensitivityIso: Int = 0,
    val exposureProduct: Double = 1.0,
    val focusDistanceDiopters: Float = Float.NaN,
    val lensState: Int? = null,
    val rollingShutterSkewNs: Long? = null,
    val gyroWindow: GyroExposureWindow? = null,
    val role: RawBurstFrameRole = RawBurstFrameRole.NORMAL,
    val preAlignmentToReference: RawFramePreAlignment? = null,
)
