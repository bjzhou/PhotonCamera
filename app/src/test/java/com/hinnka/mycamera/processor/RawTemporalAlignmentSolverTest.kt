package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class RawTemporalAlignmentSolverTest {
    @Test
    fun graphContainsCompleteAdjacentChainAndSparseCycleEdges() {
        val graph = RawTemporalAlignmentGraphBuilder.build(
            sensorTimestampsNs = listOf(40L, 10L, 30L, 20L, 50L),
            referenceFrameIndex = 2,
        )

        val adjacent = graph.edges.filter { it.type == RawTemporalEdgeType.ADJACENT }
        assertEquals(4, adjacent.size)
        assertTrue(graph.edges.size <= 15)
        assertEquals(
            setOf(1 to 3, 3 to 2, 2 to 0, 0 to 4),
            adjacent.map { it.fromFrameIndex to it.toFrameIndex }.toSet(),
        )
    }

    @Test
    fun rejectsCorruptReferenceEdgeAndKeepsTemporalConsensus() {
        val graph = RawTemporalAlignmentGraphBuilder.build(
            sensorTimestampsNs = listOf(0L, 1L, 2L, 3L, 4L),
            referenceFrameIndex = 0,
        )
        val observations = graph.edges.map { edge ->
            val expected = edge.toFrameIndex - edge.fromFrameIndex.toFloat()
            val corrupt = edge.type == RawTemporalEdgeType.REFERENCE && edge.toFrameIndex == 4
            RawTemporalEdgeObservation(
                edge = edge,
                dxPlanePx = if (corrupt) 18f else expected,
                dyPlanePx = 0f,
            )
        }

        val solution = RawTemporalAlignmentSolver.solve(graph, observations)!!

        solution.positions.forEachIndexed { index, position ->
            assertEquals(index.toFloat(), position.xPlanePx, 0.35f)
            assertEquals(0f, position.yPlanePx, 0.01f)
        }
        val corruptIndex = observations.indexOfFirst {
            it.edge.type == RawTemporalEdgeType.REFERENCE && it.edge.toFrameIndex == 4
        }
        assertFalse(solution.acceptedObservationIndices.contains(corruptIndex))
        assertTrue(solution.residualByObservation[corruptIndex] > 5f)
    }
}
