package com.hinnka.mycamera.processor

import kotlin.math.floor

internal data class MgcSpatialRgbRect(
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

internal data class MgcSpatialRgbTile(
    val index: Int,
    val outputCore: MgcSpatialRgbRect,
)

/** Min/max MGC displacement in Bayer-quad units. */
internal data class MgcSpatialRgbFlowBounds(
    val minX: Float,
    val minY: Float,
    val maxX: Float,
    val maxY: Float,
) {
    init {
        require(minX.isFinite() && minY.isFinite() && maxX.isFinite() && maxY.isFinite())
        require(minX <= maxX && minY <= maxY)
    }

    companion object {
        val Zero = MgcSpatialRgbFlowBounds(0f, 0f, 0f, 0f)
    }
}

/**
 * Output tiling and exact RAW upload bounds for MGC Spatial RGB normalized convolution.
 *
 * The RGB shader evaluates a 3x3 RAW neighborhood around each continuously warped output sample.
 * R/B observations also inspect same-color samples two pixels away while constructing their local
 * green opponent, so the complete RAW dependency radius is three pixels. Flow is stored in
 * Bayer-quad units, hence the factor of two when mapping it into sensor pixels.
 */
internal object MgcSpatialRgbTilePlanner {
    const val DEFAULT_OUTPUT_TILE_SIZE = 1024
    private const val RAW_KERNEL_RADIUS = 3

    fun plan(
        outputWidth: Int,
        outputHeight: Int,
        maximumTileSize: Int = DEFAULT_OUTPUT_TILE_SIZE,
    ): List<MgcSpatialRgbTile> {
        require(outputWidth > 0 && outputHeight > 0)
        require(maximumTileSize > 0)
        val tiles = ArrayList<MgcSpatialRgbTile>()
        var top = 0
        while (top < outputHeight) {
            val bottom = minOf(top + maximumTileSize, outputHeight)
            var left = 0
            while (left < outputWidth) {
                val right = minOf(left + maximumTileSize, outputWidth)
                tiles += MgcSpatialRgbTile(
                    index = tiles.size,
                    outputCore = MgcSpatialRgbRect(left, top, right, bottom),
                )
                left = right
            }
            top = bottom
        }
        return tiles
    }

    fun sourceRegion(
        tile: MgcSpatialRgbTile,
        rawWidth: Int,
        rawHeight: Int,
        outputWidth: Int,
        outputHeight: Int,
        flowBounds: MgcSpatialRgbFlowBounds,
    ): MgcSpatialRgbRect {
        require(rawWidth > 0 && rawHeight > 0)
        require(outputWidth > 0 && outputHeight > 0)
        val output = tile.outputCore
        require(output.right <= outputWidth && output.bottom <= outputHeight)

        val firstRawX = outputToRaw(output.left, rawWidth, outputWidth)
        val lastRawX = outputToRaw(output.right - 1, rawWidth, outputWidth)
        val firstRawY = outputToRaw(output.top, rawHeight, outputHeight)
        val lastRawY = outputToRaw(output.bottom - 1, rawHeight, outputHeight)
        val minimumSourceX = minOf(firstRawX, lastRawX) + 2f * flowBounds.minX
        val maximumSourceX = maxOf(firstRawX, lastRawX) + 2f * flowBounds.maxX
        val minimumSourceY = minOf(firstRawY, lastRawY) + 2f * flowBounds.minY
        val maximumSourceY = maxOf(firstRawY, lastRawY) + 2f * flowBounds.maxY

        // The merge shader converts a sensor-center coordinate to the historical MGC sample
        // position by adding 0.5, floors it, then visits anchor + [-1, 1].
        val left = (floor(minimumSourceX + 0.5f).toInt() - RAW_KERNEL_RADIUS)
            .coerceIn(0, rawWidth - 1)
        val top = (floor(minimumSourceY + 0.5f).toInt() - RAW_KERNEL_RADIUS)
            .coerceIn(0, rawHeight - 1)
        val right = (floor(maximumSourceX + 0.5f).toInt() + RAW_KERNEL_RADIUS + 1)
            .coerceIn(left + 1, rawWidth)
        val bottom = (floor(maximumSourceY + 0.5f).toInt() + RAW_KERNEL_RADIUS + 1)
            .coerceIn(top + 1, rawHeight)
        return MgcSpatialRgbRect(left, top, right, bottom)
    }

    private fun outputToRaw(outputPixel: Int, rawSize: Int, outputSize: Int): Float =
        (outputPixel + 0.5f) * rawSize.toFloat() / outputSize.toFloat() - 0.5f
}
