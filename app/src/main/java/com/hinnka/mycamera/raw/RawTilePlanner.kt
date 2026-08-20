package com.hinnka.mycamera.raw

internal data class RawTileRect(
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

    fun contains(other: RawTileRect): Boolean {
        return left <= other.left && top <= other.top &&
            right >= other.right && bottom >= other.bottom
    }
}

internal data class RawRenderTile(
    val index: Int,
    /** Non-overlapping rectangle in the final, rotated output bitmap. */
    val outputCore: RawTileRect,
    /** [outputCore] mapped back into the unrotated sensor image. */
    val sourceCore: RawTileRect,
    /** CFA-aligned sensor rectangle uploaded and processed for this tile. */
    val sourceWorking: RawTileRect,
)

/**
 * Plans Phocus-style bounded-memory RAW rendering.
 *
 * Tiles own disjoint output cores. The overlap in [RawRenderTile.sourceWorking] is dependency
 * data only and is never copied to the destination. Working rectangles use a stable size wherever
 * the sensor permits it, so all GPU textures can be retained and reused by the serial tile
 * consumer. Their origins are aligned to the sensor CFA period.
 */
internal object RawTilePlanner {
    /** Ordinary 12 MP 4:3 captures stay on the full-frame path in either orientation. */
    const val FULL_FRAME_MAX_SHORT_EDGE_PX = 3_072
    const val FULL_FRAME_MAX_LONG_EDGE_PX = 4_096

    fun shouldTile(outputWidth: Int, outputHeight: Int): Boolean {
        val shortEdge = minOf(outputWidth, outputHeight)
        val longEdge = maxOf(outputWidth, outputHeight)
        return shortEdge > FULL_FRAME_MAX_SHORT_EDGE_PX ||
            longEdge > FULL_FRAME_MAX_LONG_EDGE_PX
    }

    fun plan(
        sourceWidth: Int,
        sourceHeight: Int,
        outputSourceBounds: RawTileRect,
        rotation: Int,
        coreEdgePx: Int,
        supportPx: Int,
        cfaPeriod: Int,
    ): List<RawRenderTile> {
        require(sourceWidth > 0 && sourceHeight > 0)
        require(
            outputSourceBounds.left >= 0 && outputSourceBounds.top >= 0 &&
                outputSourceBounds.right <= sourceWidth &&
                outputSourceBounds.bottom <= sourceHeight
        )
        require(rotation in setOf(0, 90, 180, 270))
        val phase = cfaPeriod.coerceAtLeast(2)
        val maximumCoreEdge =
            alignDown(coreEdgePx.coerceAtLeast(phase), phase).coerceAtLeast(phase)
        val support = supportPx.coerceAtLeast(0)
        val outputWidth = if (rotation == 90 || rotation == 270) {
            outputSourceBounds.height
        } else {
            outputSourceBounds.width
        }
        val outputHeight = if (rotation == 90 || rotation == 270) {
            outputSourceBounds.width
        } else {
            outputSourceBounds.height
        }
        // Keep the minimum grid that fits under the configured GPU resource ceiling, then
        // distribute each axis evenly across that grid. With fixed-size stepping, a narrow last
        // core still forces every reusable working texture to the largest core size, so most of
        // the last tile can be previously rendered pixels. Balanced, CFA-aligned core lengths
        // retain stable resource dimensions while limiting that expansion to less than one CFA
        // period per tile.
        val outputCoreWidth = balancedCoreLength(outputWidth, maximumCoreEdge, phase)
        val outputCoreHeight = balancedCoreLength(outputHeight, maximumCoreEdge, phase)
        val cores = ArrayList<Pair<RawTileRect, RawTileRect>>()
        var outputTop = 0
        while (outputTop < outputHeight) {
            val outputBottom = minOf(outputHeight, outputTop + outputCoreHeight)
            var outputLeft = 0
            while (outputLeft < outputWidth) {
                val outputRight = minOf(outputWidth, outputLeft + outputCoreWidth)
                val outputCore = RawTileRect(outputLeft, outputTop, outputRight, outputBottom)
                val sourceCore = outputToSource(
                    outputCore = outputCore,
                    sourceBounds = outputSourceBounds,
                    rotation = rotation,
                )
                cores += outputCore to sourceCore
                outputLeft = outputRight
            }
            outputTop = outputBottom
        }

        // A crop or an edge tile may be much smaller than the configured maximum core. Size the
        // reusable working texture from the largest core that is actually present; otherwise a
        // one-tile crop below coreEdge needlessly expands back to almost the full sensor.
        val largestSourceCoreWidth = cores.maxOf { it.second.width }
        val largestSourceCoreHeight = cores.maxOf { it.second.height }
        // A cropped core can start at any sensor phase. Reserving phase - 1 additional pixels
        // keeps both sides at or above the requested support after the working origin is aligned.
        val workWidth = stableWorkingLength(
            sourceSize = sourceWidth,
            requestedLength = largestSourceCoreWidth + support * 2 + phase - 1,
            phase = phase,
        )
        val workHeight = stableWorkingLength(
            sourceSize = sourceHeight,
            requestedLength = largestSourceCoreHeight + support * 2 + phase - 1,
            phase = phase,
        )

        return cores.mapIndexed { index, (outputCore, sourceCore) ->
            RawRenderTile(
                index = index,
                outputCore = outputCore,
                sourceCore = sourceCore,
                sourceWorking = fixedWorkingRect(
                    core = sourceCore,
                    sourceWidth = sourceWidth,
                    sourceHeight = sourceHeight,
                    workWidth = workWidth,
                    workHeight = workHeight,
                    support = support,
                    phase = phase,
                ),
            )
        }
    }

    private fun outputToSource(
        outputCore: RawTileRect,
        sourceBounds: RawTileRect,
        rotation: Int,
    ): RawTileRect {
        return when (rotation) {
            0 -> RawTileRect(
                sourceBounds.left + outputCore.left,
                sourceBounds.top + outputCore.top,
                sourceBounds.left + outputCore.right,
                sourceBounds.top + outputCore.bottom,
            )

            90 -> RawTileRect(
                sourceBounds.left + outputCore.top,
                sourceBounds.bottom - outputCore.right,
                sourceBounds.left + outputCore.bottom,
                sourceBounds.bottom - outputCore.left,
            )

            180 -> RawTileRect(
                sourceBounds.right - outputCore.right,
                sourceBounds.bottom - outputCore.bottom,
                sourceBounds.right - outputCore.left,
                sourceBounds.bottom - outputCore.top,
            )

            270 -> RawTileRect(
                sourceBounds.right - outputCore.bottom,
                sourceBounds.top + outputCore.left,
                sourceBounds.right - outputCore.top,
                sourceBounds.top + outputCore.right,
            )

            else -> error("Unsupported rotation: $rotation")
        }
    }

    private fun fixedWorkingRect(
        core: RawTileRect,
        sourceWidth: Int,
        sourceHeight: Int,
        workWidth: Int,
        workHeight: Int,
        support: Int,
        phase: Int,
    ): RawTileRect {
        val left = fixedWorkingOrigin(
            coreStart = core.left,
            coreEnd = core.right,
            sourceSize = sourceWidth,
            workLength = workWidth,
            support = support,
            phase = phase,
        )
        val top = fixedWorkingOrigin(
            coreStart = core.top,
            coreEnd = core.bottom,
            sourceSize = sourceHeight,
            workLength = workHeight,
            support = support,
            phase = phase,
        )
        return RawTileRect(left, top, left + workWidth, top + workHeight).also { working ->
            check(working.contains(core)) {
                "Working rectangle $working does not contain tile core $core"
            }
        }
    }

    private fun fixedWorkingOrigin(
        coreStart: Int,
        coreEnd: Int,
        sourceSize: Int,
        workLength: Int,
        support: Int,
        phase: Int,
    ): Int {
        if (workLength == sourceSize) return 0
        val maximumOrigin = sourceSize - workLength
        check(maximumOrigin % phase == 0)
        val minimumForContainment = (coreEnd - workLength).coerceAtLeast(0)
        val maximumForContainment = coreStart.coerceAtMost(maximumOrigin)
        val preferred = (coreStart - support).coerceIn(
            minimumForContainment,
            maximumForContainment,
        )
        val alignedDown = alignDown(preferred, phase)
        return if (alignedDown >= minimumForContainment) {
            alignedDown
        } else {
            alignUp(minimumForContainment, phase).coerceAtMost(maximumForContainment)
        }
    }

    /**
     * Matching the source-size remainder makes `sourceSize - result` CFA-aligned. Therefore a
     * fixed-size right/bottom edge tile can still have a CFA-aligned origin.
     */
    private fun stableWorkingLength(sourceSize: Int, requestedLength: Int, phase: Int): Int {
        if (requestedLength >= sourceSize) return sourceSize
        val remainder = floorMod(sourceSize - requestedLength, phase)
        return requestedLength + remainder
    }

    private fun balancedCoreLength(totalLength: Int, maximumLength: Int, phase: Int): Int {
        val tileCount = ceilDiv(totalLength, maximumLength)
        return alignUp(ceilDiv(totalLength, tileCount), phase).coerceAtMost(maximumLength)
    }

    private fun ceilDiv(value: Int, divisor: Int): Int =
        (value.toLong() + divisor - 1L).div(divisor).toInt()

    private fun alignDown(value: Int, alignment: Int): Int = value / alignment * alignment

    private fun alignUp(value: Int, alignment: Int): Int =
        (value + alignment - 1) / alignment * alignment

    private fun floorMod(value: Int, divisor: Int): Int = ((value % divisor) + divisor) % divisor
}
