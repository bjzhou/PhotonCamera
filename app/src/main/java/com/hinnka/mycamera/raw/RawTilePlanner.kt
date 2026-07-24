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
    /** Phocus switches OutputImageThreaded above nine million effective output pixels. */
    const val THREADED_OUTPUT_THRESHOLD_PIXELS = 9_000_000L

    fun shouldTile(outputWidth: Int, outputHeight: Int): Boolean {
        return outputWidth.toLong() * outputHeight.toLong() >
            THREADED_OUTPUT_THRESHOLD_PIXELS
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
        val coreEdge = alignDown(coreEdgePx.coerceAtLeast(phase), phase).coerceAtLeast(phase)
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
        // A cropped core can start at any sensor phase. Reserving phase - 1 additional pixels
        // keeps both sides at or above the requested support after the working origin is aligned.
        val workWidth = stableWorkingLength(
            sourceSize = sourceWidth,
            requestedLength = coreEdge + support * 2 + phase - 1,
            phase = phase,
        )
        val workHeight = stableWorkingLength(
            sourceSize = sourceHeight,
            requestedLength = coreEdge + support * 2 + phase - 1,
            phase = phase,
        )

        val result = ArrayList<RawRenderTile>()
        var outputTop = 0
        var index = 0
        while (outputTop < outputHeight) {
            val outputBottom = minOf(outputHeight, outputTop + coreEdge)
            var outputLeft = 0
            while (outputLeft < outputWidth) {
                val outputRight = minOf(outputWidth, outputLeft + coreEdge)
                val outputCore = RawTileRect(outputLeft, outputTop, outputRight, outputBottom)
                val sourceCore = outputToSource(
                    outputCore = outputCore,
                    sourceBounds = outputSourceBounds,
                    rotation = rotation,
                )
                result += RawRenderTile(
                    index = index++,
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
                outputLeft = outputRight
            }
            outputTop = outputBottom
        }
        return result
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

    private fun alignDown(value: Int, alignment: Int): Int = value / alignment * alignment

    private fun alignUp(value: Int, alignment: Int): Int =
        (value + alignment - 1) / alignment * alignment

    private fun floorMod(value: Int, divisor: Int): Int = ((value % divisor) + divisor) % divisor
}
