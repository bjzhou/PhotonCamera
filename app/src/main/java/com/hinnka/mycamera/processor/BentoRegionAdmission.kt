package com.hinnka.mycamera.processor

import kotlin.math.sqrt

/** Region-local highlight admission on the RAW/2 guide and 8-quad alignment grids. */
internal class BentoRegionAdmission(
    private val width: Int,
    private val height: Int,
    private val gridWidth: Int,
    private val gridHeight: Int,
    private val tileStride: Int,
    highlightMask: ByteArray,
    private val alignment: FloatArray,
    private val support: FloatArray,
) {
    private data class Region(
        val tiles: IntArray,
        val flow: FloatArray,
        var admitted: Boolean,
    )

    data class Result(
        val alignment: FloatArray,
        val admittedRegions: Int,
        val rejectedGeometryRegions: Int,
    )

    data class FinalMask(
        val pixels: ByteArray,
        val admittedRegions: Int,
        val rejectedInpaintingRegions: Int,
        val activePixels: Int,
        val largestInpaintingArea: Int,
    )

    private val labels = IntArray(width * height) { -1 }
    private val regions = ArrayList<Region>()
    private val mask = highlightMask
    private val queue = IntArray(mask.size)
    private val tileHasHighlight = BooleanArray(gridWidth * gridHeight)

    init {
        require(width > 0 && height > 0 && gridWidth > 0 && gridHeight > 0 && tileStride > 0)
        require(mask.size == width * height)
        require(alignment.size == gridWidth * gridHeight * 4)
        require(support.size == alignment.size)
        for (pixel in mask.indices) {
            if (mask[pixel].toInt() == 0) continue
            val x = pixel % width
            val y = pixel / width
            tileHasHighlight[
                (y / tileStride).coerceAtMost(gridHeight - 1) * gridWidth +
                    (x / tileStride).coerceAtMost(gridWidth - 1)
            ] = true
        }
    }

    fun resolveGeometry(): Result {
        val tileOwner = IntArray(gridWidth * gridHeight) { -1 }
        val tileStamp = IntArray(tileOwner.size) { -1 }
        for (start in mask.indices) {
            if (mask[start].toInt() == 0 || labels[start] >= 0) continue
            val regionIndex = regions.size
            var head = 0
            var tail = 1
            queue[0] = start
            labels[start] = regionIndex
            val tiles = ArrayList<Int>()
            while (head < tail) {
                val pixel = queue[head++]
                val x = pixel % width
                val y = pixel / width
                val tile = (y / tileStride).coerceAtMost(gridHeight - 1) * gridWidth +
                    (x / tileStride).coerceAtMost(gridWidth - 1)
                if (tileStamp[tile] != regionIndex) {
                    tileStamp[tile] = regionIndex
                    tiles += tile
                }
                for (ny in maxOf(0, y - 1)..minOf(height - 1, y + 1)) {
                    for (nx in maxOf(0, x - 1)..minOf(width - 1, x + 1)) {
                        val neighbor = ny * width + nx
                        if (labels[neighbor] < 0 && mask[neighbor].toInt() != 0) {
                            labels[neighbor] = regionIndex
                            queue[tail++] = neighbor
                        }
                    }
                }
            }
            val flows = FloatArray(tiles.size * 2)
            var admitted = true
            for (index in tiles.indices) {
                val tile = tiles[index]
                val inferred = inferFromCollar(tile)
                if (inferred == null) {
                    admitted = false
                    break
                }
                flows[index * 2] = inferred.first
                flows[index * 2 + 1] = inferred.second
            }
            regions += Region(tiles.toIntArray(), flows, admitted)
            if (admitted) {
                for (tile in tiles) {
                    val prior = tileOwner[tile]
                    if (prior >= 0 && prior != regionIndex) {
                        regions[prior].admitted = false
                        admitted = false
                    }
                    tileOwner[tile] = regionIndex
                }
                regions[regionIndex].admitted = admitted
            }
        }
        val corrected = alignment.copyOf()
        for (region in regions) {
            if (!region.admitted) continue
            for (index in region.tiles.indices) {
                val offset = region.tiles[index] * 4
                corrected[offset] = region.flow[index * 2]
                corrected[offset + 1] = region.flow[index * 2 + 1]
            }
        }
        return Result(
            corrected,
            regions.count { it.admitted },
            regions.count { !it.admitted },
        )
    }

    private fun inferFromCollar(tile: Int): Pair<Float, Float>? {
        val cx = tile % gridWidth
        val cy = tile / gridWidth
        var total = 0f
        var sumX = 0f
        var sumY = 0f
        var sumNorm = 0f
        var count = 0
        val sectors = BooleanArray(4)
        for (dy in -COLLAR_RADIUS..COLLAR_RADIUS) {
            for (dx in -COLLAR_RADIUS..COLLAR_RADIUS) {
                if (dx == 0 && dy == 0) continue
                val x = cx + dx
                val y = cy + dy
                if (x !in 0 until gridWidth || y !in 0 until gridHeight) continue
                val neighbor = y * gridWidth + x
                if (tileHasHighlight[neighbor]) continue
                val confidence = support[neighbor * 4]
                if (!confidence.isFinite() || confidence < MIN_SUPPORT) continue
                val fx = alignment[neighbor * 4]
                val fy = alignment[neighbor * 4 + 1]
                if (!fx.isFinite() || !fy.isFinite()) continue
                val weight = confidence / (1f + dx * dx + dy * dy)
                total += weight
                sumX += fx * weight
                sumY += fy * weight
                sumNorm += (fx * fx + fy * fy) * weight
                count++
                sectors[if (kotlin.math.abs(dx) >= kotlin.math.abs(dy)) {
                    if (dx < 0) 0 else 1
                } else {
                    if (dy < 0) 2 else 3
                }] = true
            }
        }
        if (count < MIN_COLLAR_TILES || sectors.count { it } < MIN_COLLAR_SECTORS || total <= 0f) {
            return null
        }
        val x = sumX / total
        val y = sumY / total
        val sigma = sqrt(maxOf(0f, sumNorm / total - x * x - y * y))
        return if (sigma.isFinite() && sigma <= MAX_FLOW_SIGMA) x to y else null
    }

    fun finish(
        adjustedMask: ByteArray,
        inpaintingMask: ByteArray,
        maximumInpaintingArea: Int,
    ): FinalMask {
        require(adjustedMask.size == mask.size && inpaintingMask.size == mask.size)
        // A saturated short core does not invalidate recoverable pixels elsewhere in the
        // highlight. Region admission describes alignment and inpainting reliability;
        // the RGB output stage clips against Camera White in the supplying exposure domain.
        val visited = ByteArray(mask.size)
        val largest = IntArray(regions.size)
        for (start in inpaintingMask.indices) {
            val region = labels[start]
            if (region < 0 || visited[start].toInt() != 0 || inpaintingMask[start].toInt() == 0) continue
            var head = 0
            var tail = 1
            queue[0] = start
            visited[start] = 1
            while (head < tail) {
                val pixel = queue[head++]
                val x = pixel % width
                val y = pixel / width
                for (ny in maxOf(0, y - 1)..minOf(height - 1, y + 1)) {
                    for (nx in maxOf(0, x - 1)..minOf(width - 1, x + 1)) {
                        val neighbor = ny * width + nx
                        if (labels[neighbor] == region && visited[neighbor].toInt() == 0 &&
                            inpaintingMask[neighbor].toInt() != 0
                        ) {
                            visited[neighbor] = 1
                            queue[tail++] = neighbor
                        }
                    }
                }
            }
            largest[region] = maxOf(largest[region], tail)
        }
        var rejectedInpainting = 0
        for (index in regions.indices) {
            if (regions[index].admitted && largest[index] >= maximumInpaintingArea) {
                regions[index].admitted = false
                rejectedInpainting++
            }
        }
        var active = 0
        for (pixel in adjustedMask.indices) {
            val region = labels[pixel]
            if (region < 0 || !regions[region].admitted) adjustedMask[pixel] = 0
            if (adjustedMask[pixel].toInt() != 0) active++
        }
        return FinalMask(
            adjustedMask,
            regions.count { it.admitted },
            rejectedInpainting,
            active,
            largest.maxOrNull() ?: 0,
        )
    }

    private companion object {
        const val COLLAR_RADIUS = 4
        const val MIN_SUPPORT = 0.4f
        const val MIN_COLLAR_TILES = 4
        const val MIN_COLLAR_SECTORS = 3
        const val MAX_FLOW_SIGMA = 0.6f
    }
}
