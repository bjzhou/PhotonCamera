package com.hinnka.mycamera.processor

/** MGC 9.7.047 V25 Sabre/Spatial rejection defaults and runtime resolution scaling. */
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
    /**
     * V25 normalizes the captured flow-variation threshold by the flow-coordinate width and
     * passes the same value to unblocker reduction and the extra-motion prior. The older 9.6
     * wrapper used a separate 70% motion-prior value; carrying that value into V25 changes
     * rejection semantics.
     */
    fun flowVariationThresholds(flowNormalizationWidth: Int): FlowVariationThresholds {
        require(flowNormalizationWidth > 0)
        val baseThreshold = REFERENCE_GUIDE_WIDTH / flowNormalizationWidth.toFloat() *
            BASE_FLOW_VARIATION_THRESHOLD
        return FlowVariationThresholds(
            unblockerReduction = baseThreshold,
            extraMotionRobustness = baseThreshold,
        )
    }
}
