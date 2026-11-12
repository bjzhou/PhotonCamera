package com.hinnka.mycamera.processor

/**
 * YUV's half-resolution LK geometry. Keep the 32-pixel sparse fit where it has real image
 * support, recursively round each downsampled extent, and stop before a level loses its
 * gradient halo or complete tiles. No level is manufactured by clamping its grid to one.
 */
internal class GlesYuvLkPyramidPlan(width: Int, height: Int) {
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
        require(width > 0 && height > 0)
        val fineWidth = width / 2 + width % 2
        val fineHeight = height / 2 + height % 2
        val shortestSide = minOf(fineWidth, fineHeight)
        // The first tile starts at tileSize and its central differences need one extra
        // source pixel. Candidate SAD uses a two-pixel sample lattice, so the smallest
        // supported tile is two pixels and needs a five-pixel guide extent.
        require(shortestSide >= 5) { "YUV dimensions cannot support an LK gradient tile" }
        var tileSize = 32
        while (2 * tileSize + 1 > shortestSide) tileSize /= 2

        val result = ArrayList<Level>()
        var scale = 1
        var tileLimit = 64
        while (scale < 256) {
            val finest = result.isEmpty()
            val downsample = if (finest) 1 else if (result.size == 1) 2 else 4
            val levelWidth = if (finest) fineWidth else
                (result.last().width - 1 + downsample / 2) / downsample + 1
            val levelHeight = if (finest) fineHeight else
                (result.last().height - 1 + downsample / 2) / downsample + 1
            val margin = if (finest) 1 else 3
            val gridWidth = (levelWidth - margin) / tileSize - 1
            val gridHeight = (levelHeight - margin) / tileSize - 1
            if (gridWidth <= 0 || gridHeight <= 0) break
            result += Level(
                levelWidth, levelHeight, scale, downsample,
                tileSize, gridWidth, gridHeight,
            )
            scale *= if (finest) 2 else 4
            // Preserve smaller tiles chosen for small inputs instead of increasing them
            // back to the ordinary eight-pixel coarse-level minimum.
            tileSize = minOf(tileSize, tileLimit.coerceAtLeast(8))
            tileLimit /= 4
        }
        check(result.isNotEmpty())
        levels = result
    }
}
