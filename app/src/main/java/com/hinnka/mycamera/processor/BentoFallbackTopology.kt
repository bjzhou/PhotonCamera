package com.hinnka.mycamera.processor

internal object BentoFallbackTopology {
    /** Mirrors connectedComponentsWithStats(connectivity=8), excluding the background label. */
    fun largestEightConnectedComponentArea(
        mask: ByteArray,
        width: Int,
        height: Int,
    ): Int {
        require(width > 0 && height > 0)
        require(width.toLong() * height.toLong() == mask.size.toLong())

        val visited = ByteArray(mask.size)
        val queue = IntArray(mask.size)
        var largest = 0
        for (start in mask.indices) {
            if (visited[start].toInt() != 0 || (mask[start].toInt() and 0xff) == 0) continue
            var head = 0
            var tail = 0
            queue[tail++] = start
            visited[start] = 1
            var area = 0
            while (head < tail) {
                val index = queue[head++]
                area += 1
                val x = index % width
                val y = index / width
                val minX = maxOf(0, x - 1)
                val maxX = minOf(width - 1, x + 1)
                val minY = maxOf(0, y - 1)
                val maxY = minOf(height - 1, y + 1)
                for (neighborY in minY..maxY) {
                    for (neighborX in minX..maxX) {
                        val neighbor = neighborY * width + neighborX
                        if (
                            visited[neighbor].toInt() == 0 &&
                            (mask[neighbor].toInt() and 0xff) != 0
                        ) {
                            visited[neighbor] = 1
                            queue[tail++] = neighbor
                        }
                    }
                }
            }
            largest = maxOf(largest, area)
        }
        return largest
    }
}
