package com.hinnka.mycamera.processor

import com.hinnka.mycamera.camera.MultiFrameConfig
import kotlin.math.abs
import kotlin.math.ln

internal data class RawmaxExposurePlan(
    val baseExposureProduct: Double?,
    val normalIndices: IntArray,
    val shortIndex: Int?,
    val longIndices: IntArray,
    val excludedIndices: IntArray,
) {
    val acceptedIndices: IntArray
        get() {
            val shortIndices = shortIndex?.let { intArrayOf(it) } ?: IntArray(0)
            return intArrayOf(*normalIndices, *shortIndices, *longIndices)
        }
}

internal object RawmaxExposurePlanner {
    private val LN_2 = ln(2.0)
    private const val NORMAL_EXPOSURE_TOLERANCE_EV = 0.12
    private const val SHORT_EXPOSURE_TOLERANCE_EV = 0.35

    fun plan(
        exposureProducts: List<Double>,
        frameRoles: List<RawBurstFrameRole> = List(exposureProducts.size) {
            RawBurstFrameRole.NORMAL
        },
        enableHdrFusion: Boolean = true,
    ): RawmaxExposurePlan {
        require(frameRoles.size == exposureProducts.size) {
            "Exposure products and frame roles must have the same size"
        }
        if (exposureProducts.isEmpty()) {
            return RawmaxExposurePlan(
                baseExposureProduct = null,
                normalIndices = IntArray(0),
                shortIndex = null,
                longIndices = IntArray(0),
                excludedIndices = IntArray(0),
            )
        }
        if (!enableHdrFusion) {
            return RawmaxExposurePlan(
                baseExposureProduct = null,
                normalIndices = exposureProducts.indices.toList().toIntArray(),
                shortIndex = null,
                longIndices = IntArray(0),
                excludedIndices = IntArray(0),
            )
        }
        val taggedShortIndices = frameRoles.indices.filter { index ->
            frameRoles[index] == RawBurstFrameRole.HIGHLIGHT_SHORT
        }
        val taggedLongIndices = frameRoles.indices.filter { index ->
            frameRoles[index] == RawBurstFrameRole.SHADOW_LONG
        }
        val taggedShortIndex = taggedShortIndices.firstOrNull()
        val validIndices = exposureProducts.indices.filter { index ->
            index !in taggedShortIndices && index !in taggedLongIndices &&
                    exposureProducts[index].isFinite() && exposureProducts[index] > 0.0
        }
        if (validIndices.isEmpty()) {
            val normalIndices = exposureProducts.indices.filter { index ->
                index !in taggedShortIndices && index !in taggedLongIndices
            }
            return RawmaxExposurePlan(
                baseExposureProduct = null,
                normalIndices = normalIndices.toIntArray(),
                shortIndex = taggedShortIndex,
                longIndices = taggedLongIndices.toIntArray(),
                excludedIndices = taggedShortIndices.drop(1).toIntArray(),
            )
        }

        val sortedExposures = validIndices.map(exposureProducts::get).sorted()
        val baseExposure = sortedExposures[sortedExposures.size / 2]
        val normalIndices = exposureProducts.indices.filter { index ->
            if (index in taggedShortIndices || index in taggedLongIndices) return@filter false
            val exposure = exposureProducts[index]
            !exposure.isFinite() || exposure <= 0.0 ||
                    exposureDeltaEv(exposure, baseExposure) <= NORMAL_EXPOSURE_TOLERANCE_EV
        }
        val targetShortEv = -ln(MultiFrameConfig.SHORT_FRAME_EXPOSURE_DIVISOR) / LN_2
        val shortIndex = taggedShortIndex ?: validIndices
            .asSequence()
            .filterNot(normalIndices::contains)
            .map { index ->
                index to abs(signedExposureDeltaEv(exposureProducts[index], baseExposure) - targetShortEv)
            }
            .filter { (_, targetDeltaEv) -> targetDeltaEv <= SHORT_EXPOSURE_TOLERANCE_EV }
            .minByOrNull { (_, targetDeltaEv) -> targetDeltaEv }
            ?.first
        val excludedIndices = exposureProducts.indices.filter { index ->
            index !in normalIndices && index != shortIndex && index !in taggedLongIndices
        }
        return RawmaxExposurePlan(
            baseExposureProduct = baseExposure,
            normalIndices = normalIndices.toIntArray(),
            shortIndex = shortIndex,
            longIndices = taggedLongIndices.toIntArray(),
            excludedIndices = excludedIndices.toIntArray(),
        )
    }

    private fun exposureDeltaEv(exposure: Double, reference: Double): Double {
        return abs(signedExposureDeltaEv(exposure, reference))
    }

    private fun signedExposureDeltaEv(exposure: Double, reference: Double): Double {
        return ln(exposure / reference) / LN_2
    }
}