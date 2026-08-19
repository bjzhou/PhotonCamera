package com.hinnka.mycamera.processor

/** MGC 9.6.080 Sabre/Spatial rejection defaults and runtime resolution scaling. */
internal object MgcSabreRejectionTuning {
    data class FlowVariationThresholds(
        val unblockerReduction: Float,
        val extraMotionRobustness: Float,
    )

    const val COLOR_DIFFERENCE_RGB = 0.07f
    const val COLOR_DIFFERENCE_GREEN = 0.35f
    const val EXTRA_MOTION_ROBUSTNESS_BOOST = 6f
    const val MOTION_ROBUSTNESS_VARIANCE_THRESHOLD = 25f

    private const val REFERENCE_GUIDE_WIDTH = 2016f
    private const val BASE_FLOW_VARIATION_THRESHOLD = 1e-4f
    private const val EXTRA_MOTION_ROBUSTNESS_THRESHOLD_SCALE = 0.7f

    /**
     * GenerateRejectionTexture first normalizes the flow-variation threshold by guide width.
     * The unblocker consumes that base threshold, while the motion prior starts earlier at 70%.
     * Recovered from libgcastartup.so 0x3492dd0..0x3492e84.
     */
    fun flowVariationThresholds(guideWidth: Int): FlowVariationThresholds {
        require(guideWidth > 0)
        val baseThreshold = REFERENCE_GUIDE_WIDTH / guideWidth.toFloat() *
            BASE_FLOW_VARIATION_THRESHOLD
        return FlowVariationThresholds(
            unblockerReduction = baseThreshold,
            extraMotionRobustness =
                baseThreshold * EXTRA_MOTION_ROBUSTNESS_THRESHOLD_SCALE,
        )
    }
}
