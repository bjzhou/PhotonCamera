package com.hinnka.mycamera.processor

enum class RawTemporalEdgeType {
    ADJACENT,
    REFERENCE,
    SKIP_ONE,
}

/**
 * A sparse temporal alignment graph. Edge transforms use the convention
 * position[to] - position[from], matching the reference-to-current GLES flow convention.
 */
data class RawTemporalAlignmentEdge(
    val fromFrameIndex: Int,
    val toFrameIndex: Int,
    val type: RawTemporalEdgeType,
)

data class RawTemporalAlignmentGraph(
    val frameCount: Int,
    val referenceFrameIndex: Int,
    val edges: List<RawTemporalAlignmentEdge>,
)

object RawTemporalAlignmentGraphBuilder {
    fun build(
        frames: List<RawStackFrame>,
        referenceFrameIndex: Int = 0,
        includeSkipOne: Boolean = true,
    ): RawTemporalAlignmentGraph = build(
        sensorTimestampsNs = frames.map { it.sensorTimestampNs },
        referenceFrameIndex = referenceFrameIndex,
        includeSkipOne = includeSkipOne,
    )

    internal fun build(
        sensorTimestampsNs: List<Long>,
        referenceFrameIndex: Int = 0,
        includeSkipOne: Boolean = true,
    ): RawTemporalAlignmentGraph {
        val frameCount = sensorTimestampsNs.size
        if (frameCount == 0) return RawTemporalAlignmentGraph(0, -1, emptyList())
        require(referenceFrameIndex in 0 until frameCount)
        val chronological = sensorTimestampsNs.indices.sortedWith(
            compareBy<Int> { sensorTimestampsNs[it] }.thenBy { it },
        )
        val edges = ArrayList<RawTemporalAlignmentEdge>()
        val pairs = HashSet<EdgeKey>()
        val maxEdges = (frameCount * MAX_EDGES_PER_FRAME).coerceAtLeast(frameCount - 1)

        // The adjacent chain is a low-baseline initializer and must stay complete.
        chronological.zipWithNext().forEach { (from, to) ->
            addUnique(edges, pairs, from, to, RawTemporalEdgeType.ADJACENT)
        }

        // Reference edges constrain chain drift. Adjacent reference pairs are already represented.
        chronological.forEach { frameIndex ->
            if (frameIndex != referenceFrameIndex && edges.size < maxEdges) {
                addUnique(
                    edges,
                    pairs,
                    referenceFrameIndex,
                    frameIndex,
                    RawTemporalEdgeType.REFERENCE,
                )
            }
        }

        // Skip-one edges close short cycles while keeping graph size linear on mobile.
        if (includeSkipOne) {
            for (index in 0 until chronological.size - 2) {
                if (edges.size >= maxEdges) break
                addUnique(
                    edges,
                    pairs,
                    chronological[index],
                    chronological[index + 2],
                    RawTemporalEdgeType.SKIP_ONE,
                )
            }
        }
        return RawTemporalAlignmentGraph(frameCount, referenceFrameIndex, edges)
    }

    private fun addUnique(
        edges: MutableList<RawTemporalAlignmentEdge>,
        pairs: MutableSet<EdgeKey>,
        from: Int,
        to: Int,
        type: RawTemporalEdgeType,
    ) {
        if (from == to) return
        val low = minOf(from, to)
        val high = maxOf(from, to)
        val key = EdgeKey(low, high, type)
        if (pairs.add(key)) edges += RawTemporalAlignmentEdge(from, to, type)
    }

    private data class EdgeKey(
        val lowFrameIndex: Int,
        val highFrameIndex: Int,
        val type: RawTemporalEdgeType,
    )

    private const val MAX_EDGES_PER_FRAME = 3
}
