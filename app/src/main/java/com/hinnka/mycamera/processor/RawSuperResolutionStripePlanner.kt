package com.hinnka.mycamera.processor

import com.hinnka.mycamera.raw.RcdShaders
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.max
import kotlin.math.min

internal data class RawSourceRowBand(
    val firstRow: Int,
    val rowCount: Int,
) {
    val endExclusive: Int
        get() = firstRow + rowCount
}

internal object RawSuperResolutionStripePlanner {
    fun sourceRowBand(
        outputRowOffset: Int,
        outputRowCount: Int,
        outputScale: Float,
        minFlowYPlanePx: Float,
        maxFlowYPlanePx: Float,
        cfaPeriod: Int,
        rawHeight: Int,
    ): RawSourceRowBand {
        require(outputRowOffset >= 0)
        require(outputRowCount > 0)
        require(outputScale.isFinite() && outputScale >= 1f)
        require(rawHeight > 0)

        val firstOutputCenter = outputRowOffset + 0.5f
        val lastOutputCenter = outputRowOffset + outputRowCount - 0.5f
        val firstReferenceRaw = firstOutputCenter / outputScale - 0.5f
        val lastReferenceRaw = lastOutputCenter / outputScale - 0.5f
        val safeMinFlow = minFlowYPlanePx.takeIf { it.isFinite() } ?: 0f
        val safeMaxFlow = maxFlowYPlanePx.takeIf { it.isFinite() } ?: 0f
        val minFlow = min(safeMinFlow, safeMaxFlow) * 2f
        val maxFlow = max(safeMinFlow, safeMaxFlow) * 2f
        val gatherMargin = cfaPeriod.coerceAtLeast(2) + RcdShaders.REGION_HALO_PX
        val phase = cfaPeriod.coerceAtLeast(2)
        var first = floor(firstReferenceRaw + minFlow - gatherMargin).toInt().coerceIn(0, rawHeight - 1)
        // RCD shaders evaluate CFA phase in region-local coordinates. Preserve the global phase.
        first -= first % phase
        val endExclusive = ceil(lastReferenceRaw + maxFlow + gatherMargin + 1f)
            .toInt()
            .coerceIn(first + 1, rawHeight)
        return RawSourceRowBand(firstRow = first, rowCount = endExclusive - first)
    }
}
