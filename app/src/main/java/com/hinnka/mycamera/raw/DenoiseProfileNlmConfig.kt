package com.hinnka.mycamera.raw

import kotlin.math.max

internal data class DenoiseProfileOffset(
    val x: Int,
    val y: Int,
)

internal data class DenoiseProfileWeightTuning(
    val expectedFineDistance: Float,
    val expectedGuideDistance: Float,
    val inverseBandwidth: Float,
    val coarseGuideWeight: Float,
)

/**
 * Statistical and traversal configuration shared by the RAW and bitmap NLM hosts.
 *
 * The variance-stabilizing transform targets unit noise variance per color channel. The
 * difference between two independent samples therefore has variance two. Noise-only patch
 * energy is removed before applying the NLM bandwidth so that the weight curve starts falling
 * as soon as a candidate contains energy that the sensor noise model cannot explain.
 */
internal object DenoiseProfileNlmConfig {
    private const val COLOR_CHANNEL_COUNT = 3
    private const val DIFFERENCE_VARIANCE = 2.0f

    // Squared-energy of the separable 3x3 Gaussian kernel [1 2 1]^T[1 2 1] / 16.
    private const val GUIDE_FILTER_ENERGY = 36.0f / 256.0f

    // Coarse guide differences describe structure rather than independent RGB noise. Give them
    // enough leverage to reject low-contrast contours without turning the decision into a hard
    // threshold.
    const val COARSE_GUIDE_WEIGHT = 8.0f

    val searchOffsets: List<DenoiseProfileOffset> = buildSearchOffsets(
        DenoiseProfileShaders.SEARCH_RADIUS
    )

    fun buildSearchOffsets(radius: Int): List<DenoiseProfileOffset> {
        require(radius >= 0) { "radius must be non-negative" }
        return buildList {
            for (qy in -radius..0) {
                // FUSED_ACCU evaluates +q and -q together. At y == 0 only one horizontal
                // half-axis is needed; visiting both halves would double horizontal weights.
                val qxEnd = if (qy == 0) 0 else radius
                for (qx in -radius..qxEnd) {
                    add(DenoiseProfileOffset(qx, qy))
                }
            }
        }
    }

    fun weightTuning(patchRadius: Int): DenoiseProfileWeightTuning {
        require(patchRadius >= 0) { "patchRadius must be non-negative" }
        val patchWidth = 2 * patchRadius + 1
        val patchPixels = patchWidth * patchWidth
        val expectedFineDistance =
            DIFFERENCE_VARIANCE * COLOR_CHANNEL_COUNT * patchPixels.toFloat()
        val expectedGuideDistance =
            DIFFERENCE_VARIANCE * GUIDE_FILTER_ENERGY * patchPixels.toFloat()

        return DenoiseProfileWeightTuning(
            expectedFineDistance = expectedFineDistance,
            expectedGuideDistance = expectedGuideDistance,
            // One additional noise-floor worth of unexplained RGB energy halves the weight.
            inverseBandwidth = 1.0f / max(expectedFineDistance, 1.0f),
            coarseGuideWeight = COARSE_GUIDE_WEIGHT,
        )
    }
}
