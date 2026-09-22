package com.hinnka.mycamera.processor

/** Geometry of V25's LK-only BuildAlignPyramid / PrepareBase path. */
internal class MgcRawLkPyramidPlan(
    rawWidth: Int,
    rawHeight: Int,
    val maximumTileSize: Int,
) {
    data class Level(
        val width: Int,
        val height: Int,
        val scale: Int,
        val downsample: Int,
        val tileSize: Int,
        val gridWidth: Int,
        val gridHeight: Int,
    )

    val levels: List<Level>

    init {
        require(rawWidth > 0 && rawHeight > 0)
        require(maximumTileSize == 16 || maximumTileSize == 32 || maximumTileSize == 64)
        val fineWidth = (rawWidth + 1) / 2
        val fineHeight = (rawHeight + 1) / 2
        val result = ArrayList<Level>()
        var scale = 1
        var tileLimit = 64
        var tileSize = maximumTileSize
        while (scale < 256) {
            val finest = result.isEmpty()
            val downsample = if (finest) 1 else if (result.size == 1) 2 else 4
            // PrepareBase (38CC150) divides each inclusive maximum coordinate with
            // llround, then adds one. Rounding the original dimensions by total scale
            // does not preserve this recurrence, notably for odd extents and deep levels.
            val levelWidth = if (finest) fineWidth else
                (result.last().width - 1 + downsample / 2) / downsample + 1
            val levelHeight = if (finest) fineHeight else
                (result.last().height - 1 + downsample / 2) / downsample + 1
            // The gradient sampler needs one source pixel at the finest level and three
            // at coarser levels. The extra positive-side gray sample is not another tile.
            val margin = if (finest) 1 else 3
            val gridWidth = (levelWidth - margin) / tileSize - 1
            val gridHeight = (levelHeight - margin) / tileSize - 1
            if (gridWidth <= 0 || gridHeight <= 0) break
            result += Level(
                levelWidth, levelHeight, scale,
                downsample,
                tileSize, gridWidth, gridHeight,
            )
            scale *= if (finest) 2 else 4
            tileSize = minOf(tileSize, tileLimit).coerceAtLeast(8)
            tileLimit /= 4
        }
        require(result.isNotEmpty()) { "RAW dimensions cannot support the requested LK tile" }
        levels = result
    }

    /** Every LK iteration changes the flow by at most one pixel of its gray level. */
    val maximumDisplacement: Float
        get() = levels.mapIndexed { index, level ->
            level.scale * if (index == 0) 2 else 3
        }.sum().toFloat()
}
