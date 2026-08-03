package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class RawTemporalFlowFieldSolverTest {
    @Test
    fun solvesEachTileAndRejectsDifferentBadEdges() {
        val graph = RawTemporalAlignmentGraphBuilder.build(
            sensorTimestampsNs = listOf(0L, 1L, 2L, 3L),
            referenceFrameIndex = 0,
        )
        val edgeFields = graph.edges.map { edge ->
            val values = FloatArray(2 * 4)
            for (tile in 0..1) {
                val offset = tile * 4
                val expected = (edge.toFrameIndex - edge.fromFrameIndex).toFloat()
                val badAnchor = tile == 0 && edge.type == RawTemporalEdgeType.REFERENCE &&
                    edge.toFrameIndex == 3
                val badAdjacent = tile == 1 && edge.type == RawTemporalEdgeType.ADJACENT &&
                    edge.fromFrameIndex == 1 && edge.toFrameIndex == 2
                values[offset] = if (badAnchor || badAdjacent) expected + 12f else expected
                values[offset + 1] = 0f
                values[offset + 2] = 0.01f
                values[offset + 3] = 1f
            }
            RawTemporalEdgeFlowField(edge, width = 2, height = 1, values = values)
        }
        val fallback = List(4) { FloatArray(2 * 4) }

        val result = RawTemporalFlowFieldSolver.solve(
            graph = graph,
            edgeFields = edgeFields,
            fallbackFlowByFrame = fallback,
            scoreFullConfidence = 0.035f,
            scoreReject = 0.18f,
        )!!

        for (frameIndex in 1..3) {
            for (tile in 0..1) {
                val offset = tile * 4
                assertEquals(frameIndex.toFloat(), result[frameIndex].values[offset], 0.35f)
                assertTrue(result[frameIndex].values[offset + 3] > 0.5f)
            }
        }
        val summary = RawTemporalFlowFieldSolver.summarize(result[3])
        assertEquals(2, summary.validTileCount)
        assertEquals(2, summary.coveredQuadrants)
        assertEquals(1f, summary.validTileFraction, 1.0e-6f)
        assertEquals(3f, summary.medianDxPlanePx, 0.35f)
        assertTrue(summary.residualP90PlanePx < 0.35f)
    }
}
