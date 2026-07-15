package com.hinnka.mycamera.raw

import kotlin.math.ln
import kotlin.math.max
import kotlin.math.pow

/**
 * Restores the scene-brightness target used by Photon before 3e320e229 without restoring its
 * old gain-curve generator. The returned pre-profile target is consumed by Google's current
 * eight-exposure fusion implementation.
 */
internal object PhotonPgtmBrightnessModel {
    private const val MIN_SCENE_INPUT = 1e-6f

    private const val STANDARD_DYNAMIC_RANGE_EV = 8f
    private const val WIDE_DYNAMIC_RANGE_EV = 8.5f
    private const val HDR_DYNAMIC_RANGE_EV = 9f
    private const val EXTENDED_HDR_DYNAMIC_RANGE_EV = 9.5f

    private const val WIDE_HIGHLIGHT_RANGE_THRESHOLD_EV = 2.5f
    private const val HDR_HIGHLIGHT_RANGE_THRESHOLD_EV = 3.5f
    private const val EXTENDED_HDR_HIGHLIGHT_RANGE_THRESHOLD_EV = 4f

    private const val MAX_DISPLAY_MIDDLE_GRAY = 0.26f

    private const val MIN_DISPLAY_EXPOSURE_LIFT_EV = 0.27f
    private const val MAX_DISPLAY_EXPOSURE_LIFT_EV = 2.24f
    private const val DISPLAY_EXPOSURE_TRANSITION_START_EV = 1.7f
    private const val DISPLAY_EXPOSURE_TRANSITION_END_EV = 3.45f

    private const val SPARSE_HIGHLIGHT_GAP_START_EV = 0.45f
    private const val SPARSE_HIGHLIGHT_GAP_FULL_EV = 0.90f
    fun resolve(globalStats: DngPgtmGlobalStats): PhotonPgtmBrightnessTarget? {
        val logAverage = globalStats.logAverage.takeIf { it.isFinite() && it > 0f }
        val p50 = globalStats.p50.takeIf { it.isFinite() && it > 0f }
        val sceneAnchor = logAverage ?: p50 ?: return null
        val anchorSource = if (logAverage != null) {
            PhotonPgtmBrightnessAnchorSource.LOG_AVERAGE
        } else {
            PhotonPgtmBrightnessAnchorSource.P50_FALLBACK
        }
        val ranges = highlightRanges(
            p90 = globalStats.p90,
            p98 = globalStats.p98,
            p995 = globalStats.p995,
            p999 = globalStats.p999,
            sceneMiddle = sceneAnchor,
        )
        val dynamicRangeEv = dynamicRangeTier(ranges.tailRangeEv)
        val displayBlackPoint = 1f / 2.0f.pow(dynamicRangeEv)
        val exposureLiftEv = displayExposureLiftEv(ranges.exposureRangeEv)
        val displayTarget = (sceneAnchor * 2.0f.pow(exposureLiftEv)).coerceIn(
            displayBlackPoint * 4f,
            MAX_DISPLAY_MIDDLE_GRAY,
        )
        return PhotonPgtmBrightnessTarget(
            fusionTarget = HdrExposureFusionBrightnessTarget(
                sceneInput = sceneAnchor,
                targetOutput = photonProfileInputForDisplay(displayTarget),
            ),
            anchorSource = anchorSource,
            sceneAnchor = sceneAnchor,
            displayTarget = displayTarget,
            exposureLiftEv = exposureLiftEv,
            tailRangeEv = ranges.tailRangeEv,
            exposureRangeEv = ranges.exposureRangeEv,
            highlightGapEv = ranges.highlightGapEv,
            sparseHighlightStrength = ranges.sparseStrength,
            dynamicRangeEv = dynamicRangeEv,
        )
    }

    internal fun highlightRanges(
        p90: Float,
        p98: Float,
        p995: Float,
        p999: Float,
        sceneMiddle: Float,
    ): PhotonPgtmHighlightRanges {
        val safeMiddle = max(sceneMiddle, MIN_SCENE_INPUT)
        val safeP90 = max(p90.takeIf { it.isFinite() } ?: safeMiddle, safeMiddle)
        val safeP98 = max(p98.takeIf { it.isFinite() } ?: safeP90, safeP90)
        val safeP995 = max(p995.takeIf { it.isFinite() } ?: safeP98, safeP98)
        val safeP999 = max(p999.takeIf { it.isFinite() } ?: safeP995, safeP995)
        val highlightGapEv = log2(safeP98 / safeP90).coerceAtLeast(0f)
        val sparseStrength = smoothStep(
            SPARSE_HIGHLIGHT_GAP_START_EV,
            SPARSE_HIGHLIGHT_GAP_FULL_EV,
            highlightGapEv,
        )
        val exposureReference = 2.0f.pow(
            lerp(log2(safeP999), log2(safeP90), sparseStrength)
        )
        return PhotonPgtmHighlightRanges(
            tailRangeEv = log2(safeP999 / safeMiddle).coerceAtLeast(0f),
            exposureRangeEv = log2(exposureReference / safeMiddle).coerceAtLeast(0f),
            exposureReference = exposureReference,
            highlightGapEv = highlightGapEv,
            sparseStrength = sparseStrength,
        )
    }

    internal fun displayExposureLiftEv(highlightRangeEv: Float): Float {
        return lerp(
            MIN_DISPLAY_EXPOSURE_LIFT_EV,
            MAX_DISPLAY_EXPOSURE_LIFT_EV,
            smoothStep(
                DISPLAY_EXPOSURE_TRANSITION_START_EV,
                DISPLAY_EXPOSURE_TRANSITION_END_EV,
                highlightRangeEv,
            ),
        )
    }

    private fun dynamicRangeTier(highlightRangeEv: Float): Float {
        return when {
            highlightRangeEv >= EXTENDED_HDR_HIGHLIGHT_RANGE_THRESHOLD_EV ->
                EXTENDED_HDR_DYNAMIC_RANGE_EV
            highlightRangeEv >= HDR_HIGHLIGHT_RANGE_THRESHOLD_EV -> HDR_DYNAMIC_RANGE_EV
            highlightRangeEv >= WIDE_HIGHLIGHT_RANGE_THRESHOLD_EV -> WIDE_DYNAMIC_RANGE_EV
            else -> STANDARD_DYNAMIC_RANGE_EV
        }
    }

    private fun photonProfileInputForDisplay(displayValue: Float): Float {
        val target = displayValue.coerceIn(0f, 1f)
        val points = DngProfileToneCurve.photonPgtmToneCurvePoints()
        if (points.size < 4) return target
        var index = 0
        while (index + 3 < points.size) {
            val x0 = points[index]
            val y0 = points[index + 1]
            val x1 = points[index + 2]
            val y1 = points[index + 3]
            if (target <= y1) {
                val amount = if (y1 > y0) (target - y0) / (y1 - y0) else 0f
                return lerp(x0, x1, amount)
            }
            index += 2
        }
        return points[points.size - 2].coerceIn(0f, 1f)
    }

    private fun smoothStep(edge0: Float, edge1: Float, value: Float): Float {
        if (edge1 <= edge0) return if (value >= edge1) 1f else 0f
        val amount = ((value - edge0) / (edge1 - edge0)).coerceIn(0f, 1f)
        return amount * amount * (3f - 2f * amount)
    }

    private fun lerp(start: Float, end: Float, amount: Float): Float {
        return start + (end - start) * amount
    }

    private fun log2(value: Float): Float {
        return (ln(max(value, MIN_SCENE_INPUT).toDouble()) / ln(2.0)).toFloat()
    }
}

internal data class PhotonPgtmBrightnessTarget(
    val fusionTarget: HdrExposureFusionBrightnessTarget,
    val anchorSource: PhotonPgtmBrightnessAnchorSource,
    val sceneAnchor: Float,
    val displayTarget: Float,
    val exposureLiftEv: Float,
    val tailRangeEv: Float,
    val exposureRangeEv: Float,
    val highlightGapEv: Float,
    val sparseHighlightStrength: Float,
    val dynamicRangeEv: Float,
)

internal enum class PhotonPgtmBrightnessAnchorSource {
    LOG_AVERAGE,
    P50_FALLBACK,
}

internal data class PhotonPgtmHighlightRanges(
    val tailRangeEv: Float,
    val exposureRangeEv: Float,
    val exposureReference: Float,
    val highlightGapEv: Float,
    val sparseStrength: Float,
)
