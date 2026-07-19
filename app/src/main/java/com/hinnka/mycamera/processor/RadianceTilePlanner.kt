package com.hinnka.mycamera.processor

import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.roundToInt

internal data class RadianceTileRect(
    val left: Int,
    val top: Int,
    val right: Int,
    val bottom: Int,
) {
    init {
        require(left >= 0 && top >= 0)
        require(right > left && bottom > top)
    }

    val width: Int get() = right - left
    val height: Int get() = bottom - top
}

internal data class RadianceFlowBounds(
    val minXPlanePx: Float,
    val maxXPlanePx: Float,
    val minYPlanePx: Float,
    val maxYPlanePx: Float,
) {
    companion object {
        val Zero = RadianceFlowBounds(0f, 0f, 0f, 0f)
    }
}

internal data class RadianceTile(
    val index: Int,
    val rawCore: RadianceTileRect,
    val outputCore: RadianceTileRect,
    val outputWorking: RadianceTileRect,
)

/**
 * Plans non-overlapping output cores plus dependency-complete working/source regions.
 *
 * Overlap is computational halo only: callers write [RadianceTile.outputCore] and discard the
 * rest. Source regions include global flow displacement, the selected reconstruction backend's
 * reliable-output halo, the Radiance sampling radius and an interpolation guard. Their origins
 * preserve global CFA phase.
 */
internal object RadianceTilePlanner {
    private const val INTERPOLATION_GUARD_RAW_PX = 2

    fun plan(
        rawWidth: Int,
        rawHeight: Int,
        outputWidth: Int,
        outputHeight: Int,
        coreSizeRawPx: Int,
        outputSpatialRadiusPx: Int,
        cfaPeriod: Int,
    ): List<RadianceTile> {
        require(rawWidth > 0 && rawHeight > 0)
        require(outputWidth > 0 && outputHeight > 0)
        val phase = cfaPeriod.coerceAtLeast(2)
        val requestedCore = coreSizeRawPx.coerceAtLeast(phase)
        val coreSize = (requestedCore / phase * phase).coerceAtLeast(phase)
        val spatialRadius = outputSpatialRadiusPx.coerceAtLeast(0)
        val result = ArrayList<RadianceTile>()
        var rawTop = 0
        var index = 0
        while (rawTop < rawHeight) {
            val rawBottom = minOf(rawHeight, rawTop + coreSize)
            var rawLeft = 0
            while (rawLeft < rawWidth) {
                val rawRight = minOf(rawWidth, rawLeft + coreSize)
                val outputCore = RadianceTileRect(
                    left = mapBoundary(rawLeft, rawWidth, outputWidth),
                    top = mapBoundary(rawTop, rawHeight, outputHeight),
                    right = mapBoundary(rawRight, rawWidth, outputWidth),
                    bottom = mapBoundary(rawBottom, rawHeight, outputHeight),
                )
                val workingLeft = maxOf(0, outputCore.left - spatialRadius)
                val workingTop = maxOf(0, outputCore.top - spatialRadius)
                val workingRight = minOf(outputWidth, outputCore.right + spatialRadius)
                val workingBottom = minOf(outputHeight, outputCore.bottom + spatialRadius)
                result += RadianceTile(
                    index = index++,
                    rawCore = RadianceTileRect(rawLeft, rawTop, rawRight, rawBottom),
                    outputCore = outputCore,
                    outputWorking = RadianceTileRect(
                        workingLeft,
                        workingTop,
                        workingRight,
                        workingBottom,
                    ),
                )
                rawLeft = rawRight
            }
            rawTop = rawBottom
        }
        return result
    }

    fun sourceRegion(
        tile: RadianceTile,
        rawWidth: Int,
        rawHeight: Int,
        outputWidth: Int,
        outputHeight: Int,
        flowBounds: RadianceFlowBounds,
        cfaPeriod: Int,
        reconstructionHaloRawPx: Int,
        radianceSampleRadiusRawPx: Int,
    ): RadianceTileRect {
        require(rawWidth > 0 && rawHeight > 0)
        require(outputWidth > 0 && outputHeight > 0)
        val scaleX = outputWidth.toDouble() / rawWidth.toDouble()
        val scaleY = outputHeight.toDouble() / rawHeight.toDouble()
        val firstRawX = (tile.outputWorking.left + 0.5) / scaleX - 0.5
        val lastRawX = (tile.outputWorking.right - 0.5) / scaleX - 0.5
        val firstRawY = (tile.outputWorking.top + 0.5) / scaleY - 0.5
        val lastRawY = (tile.outputWorking.bottom - 0.5) / scaleY - 0.5
        val gatherMargin = reconstructionHaloRawPx.coerceAtLeast(0) +
            radianceSampleRadiusRawPx.coerceAtLeast(0) +
            INTERPOLATION_GUARD_RAW_PX
        val minFlowXRaw = finiteOrZero(minOf(flowBounds.minXPlanePx, flowBounds.maxXPlanePx)) * 2f
        val maxFlowXRaw = finiteOrZero(maxOf(flowBounds.minXPlanePx, flowBounds.maxXPlanePx)) * 2f
        val minFlowYRaw = finiteOrZero(minOf(flowBounds.minYPlanePx, flowBounds.maxYPlanePx)) * 2f
        val maxFlowYRaw = finiteOrZero(maxOf(flowBounds.minYPlanePx, flowBounds.maxYPlanePx)) * 2f
        val phase = cfaPeriod.coerceAtLeast(2)

        var left = floor(firstRawX + minFlowXRaw - gatherMargin).toInt().coerceIn(0, rawWidth - 1)
        var top = floor(firstRawY + minFlowYRaw - gatherMargin).toInt().coerceIn(0, rawHeight - 1)
        left -= left % phase
        top -= top % phase
        val unalignedRight = ceil(lastRawX + maxFlowXRaw + gatherMargin + 1.0)
            .toInt()
            .coerceIn(left + 1, rawWidth)
        val unalignedBottom = ceil(lastRawY + maxFlowYRaw + gatherMargin + 1.0)
            .toInt()
            .coerceIn(top + 1, rawHeight)
        val right = minOf(rawWidth, alignUp(unalignedRight, phase))
        val bottom = minOf(rawHeight, alignUp(unalignedBottom, phase))
        return RadianceTileRect(left, top, right, bottom)
    }

    private fun mapBoundary(value: Int, sourceSize: Int, targetSize: Int): Int {
        return (value.toDouble() * targetSize.toDouble() / sourceSize.toDouble())
            .roundToInt()
            .coerceIn(0, targetSize)
    }

    private fun alignUp(value: Int, alignment: Int): Int {
        return (value + alignment - 1) / alignment * alignment
    }

    private fun finiteOrZero(value: Float): Float = value.takeIf { it.isFinite() } ?: 0f
}
