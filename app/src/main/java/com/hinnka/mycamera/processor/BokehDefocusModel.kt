package com.hinnka.mycamera.processor

import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow
import kotlin.math.sign

/**
 * Shared virtual calibration from normalized relative depth to geometric defocus.
 *
 * Relative depth is not a measured object distance. This contract preserves the
 * aperture control's established strength across styles; a lens's pupil model
 * determines the energy distribution and support around that base defocus.
 */
object BokehDefocusModel {
    const val FOCUS_DEPTH_DEAD_BAND = 0.015f
    private const val RADIUS_DIVISOR = 26.0

    fun baseRadiusPixels(imageLongEdge: Int): Float {
        require(imageLongEdge > 0)
        return imageLongEdge / RADIUS_DIVISOR.toFloat()
    }

    /** Signed geometric ray radius as a fraction of the image's long edge. */
    fun signedRadiusFraction(depth: Double, focus: Double, aperture: Double): Double {
        require(depth.isFinite() && depth in 0.0..1.0)
        require(focus.isFinite() && focus in 0.0..1.0)
        require(aperture.isFinite() && aperture > 0.0)
        val deadBand = FOCUS_DEPTH_DEAD_BAND.toDouble()
        val gap = max(abs(depth - focus) - deadBand, 0.0)
        val availableFocusSpan = max(max(focus, 1.0 - focus) - deadBand, 0.15)
        val normalizedGap = (gap / availableFocusSpan).coerceIn(0.0, 1.0)
        val apertureScale = min(1.4 / max(aperture, 0.7), 1.25)
        return sign(depth - focus) *
            min(normalizedGap.pow(1.25) * apertureScale, 1.0) / RADIUS_DIVISOR
    }

    fun radiusPixels(depth: Float, focus: Float, aperture: Float, imageLongEdge: Int): Float {
        require(imageLongEdge > 0)
        return (abs(signedRadiusFraction(depth.toDouble(), focus.toDouble(), aperture.toDouble())) *
            imageLongEdge).toFloat()
    }

    /** Caller declares uFocusDepth and uAperture before including this source. */
    val GLSL_SOURCE = """
        uniform float uBaseCocRadius;

        float computeCoc(float depth) {
            float gap = max(abs(uFocusDepth - depth) - $FOCUS_DEPTH_DEAD_BAND, 0.0);
            float availableFocusSpan = max(
                max(uFocusDepth, 1.0 - uFocusDepth) - $FOCUS_DEPTH_DEAD_BAND,
                0.15
            );
            float normalizedGap = clamp(gap / availableFocusSpan, 0.0, 1.0);
            float apertureScale = min(1.4 / max(uAperture, 0.7), 1.25);
            return uBaseCocRadius * clamp(pow(normalizedGap, 1.25) * apertureScale, 0.0, 1.0);
        }
    """.trimIndent()
}
