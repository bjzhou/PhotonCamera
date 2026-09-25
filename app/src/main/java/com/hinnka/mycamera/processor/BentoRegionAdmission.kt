package com.hinnka.mycamera.processor

/**
 * Highlight-region flow resolution on the RAW/2 guide and 8-quad alignment grids.
 *
 * Inside a clipped reference highlight the reference is a flat plateau, so the forward flow
 * measured there carries no geometry and must never reach the merge. Every highlight tile takes
 * its flow from observable, forward/backward-consistent tiles instead: the collar surrounding
 * its connected highlight, or, when that collar is too sparse, the frame-wide supported flow.
 * Residual misregistration is then caught by the ultrashort ghost fallback and inpainting gate.
 */
internal class BentoRegionAdmission(
    private val width: Int,
    private val height: Int,
    private val gridWidth: Int,
    private val gridHeight: Int,
    private val tileStride: Int,
    private val highlightMask: ByteArray,
    private val alignment: FloatArray,
    private val support: FloatArray,
) {
    data class Result(
        val alignment: FloatArray,
        val regions: Int,
        val collarRegions: Int,
        val globalRegions: Int,
    )

    private val tileCount = gridWidth * gridHeight
    private val tileHasHighlight = BooleanArray(tileCount)

    init {
        require(width > 0 && height > 0 && gridWidth > 0 && gridHeight > 0 && tileStride > 0)
        require(highlightMask.size == width * height)
        require(alignment.size == tileCount * 4)
        require(support.size == alignment.size)
        for (pixel in highlightMask.indices) {
            if (highlightMask[pixel].toInt() == 0) continue
            val x = pixel % width
            val y = pixel / width
            tileHasHighlight[
                (y / tileStride).coerceAtMost(gridHeight - 1) * gridWidth +
                    (x / tileStride).coerceAtMost(gridWidth - 1)
            ] = true
        }
    }

    /** Returns null when no tile in the frame has verifiable flow to transfer. */
    fun resolveGeometry(): Result? {
        val globalFlow = globalSupportedFlow()
        // Pixel regions that share an alignment tile must share that tile's single flow, so
        // flow is resolved per 8-connected component of highlight tiles.
        val groupOfTile = IntArray(tileCount) { -1 }
        val queue = IntArray(tileCount)
        val groups = ArrayList<IntArray>()
        for (start in 0 until tileCount) {
            if (!tileHasHighlight[start] || groupOfTile[start] >= 0) continue
            val group = groups.size
            var head = 0
            var tail = 1
            queue[0] = start
            groupOfTile[start] = group
            while (head < tail) {
                val tile = queue[head++]
                val tx = tile % gridWidth
                val ty = tile / gridWidth
                for (ny in maxOf(0, ty - 1)..minOf(gridHeight - 1, ty + 1)) {
                    for (nx in maxOf(0, tx - 1)..minOf(gridWidth - 1, tx + 1)) {
                        val neighbor = ny * gridWidth + nx
                        if (tileHasHighlight[neighbor] && groupOfTile[neighbor] < 0) {
                            groupOfTile[neighbor] = group
                            queue[tail++] = neighbor
                        }
                    }
                }
            }
            groups += queue.copyOf(tail)
        }
        if (groups.isNotEmpty() && globalFlow == null) return null

        val corrected = alignment.copyOf()
        val collarStamp = IntArray(tileCount) { -1 }
        val collar = IntArray(tileCount)
        var collarRegions = 0
        for ((group, tiles) in groups.withIndex()) {
            var collarCount = 0
            for (tile in tiles) {
                val tx = tile % gridWidth
                val ty = tile / gridWidth
                for (ny in maxOf(0, ty - COLLAR_RADIUS)..minOf(gridHeight - 1, ty + COLLAR_RADIUS)) {
                    for (nx in maxOf(0, tx - COLLAR_RADIUS)..minOf(gridWidth - 1, tx + COLLAR_RADIUS)) {
                        val neighbor = ny * gridWidth + nx
                        if (tileHasHighlight[neighbor] || collarStamp[neighbor] == group) continue
                        collarStamp[neighbor] = group
                        if (isSupported(neighbor)) collar[collarCount++] = neighbor
                    }
                }
            }
            val fromCollar = collarCount >= MIN_COLLAR_TILES
            if (fromCollar) collarRegions++
            for (tile in tiles) {
                val offset = tile * 4
                if (fromCollar) {
                    interpolateFromCollar(tile, collar, collarCount, corrected, offset)
                } else {
                    val flow = checkNotNull(globalFlow)
                    corrected[offset] = flow[0]
                    corrected[offset + 1] = flow[1]
                }
            }
        }
        return Result(
            alignment = corrected,
            regions = groups.size,
            collarRegions = collarRegions,
            globalRegions = groups.size - collarRegions,
        )
    }

    private fun isSupported(tile: Int): Boolean {
        val confidence = support[tile * 4]
        return !tileHasHighlight[tile] && confidence.isFinite() && confidence >= MIN_SUPPORT &&
            alignment[tile * 4].isFinite() && alignment[tile * 4 + 1].isFinite()
    }

    /** Confidence-weighted per-axis median of every supported non-highlight tile. */
    private fun globalSupportedFlow(): FloatArray? {
        val tiles = (0 until tileCount).filter(::isSupported)
        if (tiles.size < MIN_COLLAR_TILES) return null
        return FloatArray(2) { axis ->
            val sorted = tiles.sortedBy { alignment[it * 4 + axis] }
            val half = sorted.sumOf { support[it * 4].toDouble() } * 0.5
            var accumulated = 0.0
            var median = alignment[sorted.last() * 4 + axis]
            for (tile in sorted) {
                accumulated += support[tile * 4].toDouble()
                if (accumulated >= half) {
                    median = alignment[tile * 4 + axis]
                    break
                }
            }
            median
        }
    }

    /** Inverse-square-distance, confidence-weighted interpolation over the group's collar. */
    private fun interpolateFromCollar(
        tile: Int,
        collar: IntArray,
        collarCount: Int,
        output: FloatArray,
        offset: Int,
    ) {
        val cx = tile % gridWidth
        val cy = tile / gridWidth
        var total = 0.0
        var sumX = 0.0
        var sumY = 0.0
        for (index in 0 until collarCount) {
            val neighbor = collar[index]
            val dx = neighbor % gridWidth - cx
            val dy = neighbor / gridWidth - cy
            val weight = support[neighbor * 4].toDouble() / (dx * dx + dy * dy).toDouble()
            total += weight
            sumX += alignment[neighbor * 4] * weight
            sumY += alignment[neighbor * 4 + 1] * weight
        }
        output[offset] = (sumX / total).toFloat()
        output[offset + 1] = (sumY / total).toFloat()
    }

    private companion object {
        const val COLLAR_RADIUS = 4
        const val MIN_SUPPORT = 0.4f
        const val MIN_COLLAR_TILES = 4
    }
}
