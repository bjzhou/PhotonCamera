package com.hinnka.mycamera.processor

import kotlin.math.max
import kotlin.math.min

/**
 * Lens Blur parameters with Camera Raw's `crs:LensBlur` semantics
 * (docs/lrmobile-lens-blur-evidence.md §1). Values are already converted by
 * `ParamInfo::ToFloat`: percentages are 0..1, CatEyeScale is 1..2, aspect is
 * -1..1 and rotation is in degrees.
 */
internal data class LensBlurParams(
    val blurAmount: Float,
    /** 0 = circle / iris blades, 1 = ring. */
    val bokehShape: Int,
    /** Blade count - 4 for shape 0 (0 = circle); ring hole (detail + 1) / 8 for shape 1. */
    val bokehShapeDetail: Int,
    val highlightsBoost: Float,
    val catEyeAmount: Float,
    val catEyeScale: Float,
    val bokehAspect: Float,
    val bokehRotationDegrees: Float,
    val sphericalAberration: Float,
    /**
     * Scale of Lens Blur's maximum radius for amounts beyond 100: the app's
     * apertures reach past the slider's range (see [forAperture]).
     */
    val radiusGain: Float = 1f,
) {
    companion object {
        /** Internal parameter 11: alpha gain of far-field bands. */
        const val FAR_ALPHA_GAIN = 1.5f

        /** Internal parameter 12: alpha gain of near-field bands. */
        const val NEAR_ALPHA_GAIN = 2.0f

        /** Internal parameters 26/29/30: 2^3 PSFs per pixel of radius up to 20 px, 1 at 50 px. */
        const val PSF_DENSITY_LOG2 = 3
        const val PSF_DENSITY_FULL_RADIUS = 20
        const val PSF_DENSITY_UNIT_RADIUS = 50

        /** Posterize levels of the PSF edge values in full-quality rendering. */
        const val PSF_POSTERIZE_LEVELS = 16

        /** Lens Blur's own maximum: 2% of the long edge, at most 300 px. */
        const val MAX_BLUR_RADIUS_FRACTION = 0.02f
        const val MAX_BLUR_RADIUS_LIMIT = 300

        private const val PRESET_HIGHLIGHTS_BOOST = 0.5f

        /**
         * f-number of Lens Blur's amount 100. The circle of confusion scales
         * with 1 / N; f/2 at the full Lens Blur radius makes f/1.4 match the
         * previous renderer's strength (short edge / 26 of a 3:4 frame).
         */
        private const val FULL_AMOUNT_F_NUMBER = 2f

        /** The simulated aperture's amount relative to Lens Blur's 100, unbounded above. */
        private fun apertureAmount(aperture: Float): Float = FULL_AMOUNT_F_NUMBER / aperture

        /**
         * Lens Blur parameters of every style: Lightroom's "Circle" preset.
         * BlurAmount follows 1 / N up to 100; wider apertures enlarge the
         * maximum radius instead ([radiusGain]), keeping the normalized CoC
         * in [-1, 1]. Swirl and soap bubbles add the previous renderer's
         * aperture and highlights on top ([BokehStyleShaders], [BokehHighlightPlanner]).
         */
        fun forAperture(aperture: Float): LensBlurParams = LensBlurParams(
            blurAmount = min(apertureAmount(aperture), 1f),
            bokehShape = 0,
            bokehShapeDetail = 0,
            highlightsBoost = PRESET_HIGHLIGHTS_BOOST,
            catEyeAmount = 0f,
            catEyeScale = 1f,
            bokehAspect = 0f,
            bokehRotationDegrees = 0f,
            sphericalAberration = 0f,
            radiusGain = max(apertureAmount(aperture), 1f),
        )
    }
}
