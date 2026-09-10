package com.hinnka.mycamera.processor.optics

import com.hinnka.mycamera.processor.BokehDefocusModel

/**
 * The normalized monocular map has already had its polarity resolved (larger = nearer).
 * Converts the shared computational defocus control to a quadratic optical path.
 * The map is not metric depth: its dead band, nonlinearity and aperture limits are
 * the same image-space calibration used by natural/swirl bokeh. Inverting av/p
 * calibrates the incoming wavefront; it does not resize an already formed PSF.
 */
data class OpticalSceneCalibration(
    val focusDisparity: Double,
    val referenceProfile: OpticalLensProfile? = null,
) {
    init {
        require(focusDisparity.isFinite() && focusDisparity in 0.0..1.0)
    }

    fun inverseDepthDifference(disparity: Double, lens: OpticalLensState): Double {
        // Both paths observe the same virtual scene. The longer emitter lens
        // must not recalibrate those distances back to the diffuse CoC.
        val reference = referenceProfile?.atAperture(lens.fNumber, 1) ?: lens
        return BokehDefocusModel.signedRadiusFraction(disparity, focusDisparity, lens.fNumber) *
            reference.profile.sensorLongEdgeMeters / (reference.pupilRadiusMeters * reference.imageDistanceMeters)
    }

    fun maximumSupportPixels(lens: OpticalLensState): Double = maxOf(
        lens.supportRadiusPixels(inverseDepthDifference(0.0, lens)),
        lens.supportRadiusPixels(inverseDepthDifference(1.0, lens)),
    )
}
