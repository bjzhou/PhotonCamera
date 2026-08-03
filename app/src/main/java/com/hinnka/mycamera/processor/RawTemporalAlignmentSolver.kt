package com.hinnka.mycamera.processor

import kotlin.math.abs
import kotlin.math.hypot
import kotlin.math.max

data class RawTemporalEdgeObservation(
    val edge: RawTemporalAlignmentEdge,
    val dxPlanePx: Float,
    val dyPlanePx: Float,
    val confidence: Float = 1f,
)

data class RawTemporalFramePosition(
    val xPlanePx: Float,
    val yPlanePx: Float,
)

data class RawTemporalAlignmentSolution(
    val positions: List<RawTemporalFramePosition>,
    val residualByObservation: FloatArray,
    val acceptedObservationIndices: IntArray,
)

/** Small dense IRLS solver intended to run once per flow tile, not once per pixel. */
object RawTemporalAlignmentSolver {
    fun solve(
        graph: RawTemporalAlignmentGraph,
        observations: List<RawTemporalEdgeObservation>,
    ): RawTemporalAlignmentSolution? {
        if (graph.frameCount <= 0 || graph.referenceFrameIndex !in 0 until graph.frameCount) return null
        val valid = observations.withIndex().filter { (_, observation) ->
            observation.edge.fromFrameIndex in 0 until graph.frameCount &&
                observation.edge.toFrameIndex in 0 until graph.frameCount &&
                observation.edge.fromFrameIndex != observation.edge.toFrameIndex &&
                observation.dxPlanePx.isFinite() && observation.dyPlanePx.isFinite() &&
                observation.confidence.isFinite() && observation.confidence > 0f
        }
        if (graph.frameCount > 1 && valid.isEmpty()) return null

        val validObservations = valid.map { it.value }
        val candidates = listOf(RawTemporalEdgeType.ADJACENT, RawTemporalEdgeType.REFERENCE)
            .mapNotNull { initializerType ->
                optimize(
                    graph = graph,
                    observations = validObservations,
                    initialX = initialFromEdgeType(graph, validObservations, initializerType, useX = true),
                    initialY = initialFromEdgeType(graph, validObservations, initializerType, useX = false),
                )
            }
        val best = candidates.minByOrNull { candidate ->
            truncatedConsistencyCost(validObservations, candidate.x, candidate.y)
        } ?: return null
        var x = best.x
        var y = best.y

        val validResiduals = residuals(validObservations, x, y)
        val rejectThreshold = max(MIN_REJECT_THRESHOLD_PX, robustOutlierThreshold(validResiduals))
        val acceptedValidIndices = validResiduals.indices.filter { validResiduals[it] <= rejectThreshold }
        if (acceptedValidIndices.size >= graph.frameCount - 1 && acceptedValidIndices.size < valid.size) {
            val acceptedObservations = acceptedValidIndices.map { valid[it].value }
            val weights = DoubleArray(acceptedObservations.size) { index ->
                acceptedObservations[index].confidence.toDouble() * edgePrior(acceptedObservations[index].edge.type)
            }
            solveAxis(graph, acceptedObservations, weights, useX = true)?.let { x = it }
            solveAxis(graph, acceptedObservations, weights, useX = false)?.let { y = it }
        }

        val allResiduals = FloatArray(observations.size) { Float.POSITIVE_INFINITY }
        valid.forEach { indexed ->
            val observation = indexed.value
            allResiduals[indexed.index] = hypot(
                (x[observation.edge.toFrameIndex] - x[observation.edge.fromFrameIndex] - observation.dxPlanePx).toFloat(),
                (y[observation.edge.toFrameIndex] - y[observation.edge.fromFrameIndex] - observation.dyPlanePx).toFloat(),
            )
        }
        val accepted = valid.mapNotNull { indexed ->
            indexed.index.takeIf { allResiduals[it] <= rejectThreshold }
        }.toIntArray()
        val positions = List(graph.frameCount) { index ->
            RawTemporalFramePosition(x[index].toFloat(), y[index].toFloat())
        }
        return RawTemporalAlignmentSolution(positions, allResiduals, accepted)
    }

    private fun optimize(
        graph: RawTemporalAlignmentGraph,
        observations: List<RawTemporalEdgeObservation>,
        initialX: DoubleArray,
        initialY: DoubleArray,
    ): Candidate? {
        var x = initialX
        var y = initialY
        repeat(IRLS_ITERATIONS) {
            val residuals = residuals(observations, x, y)
            val robustScale = robustScale(residuals)
            val weights = DoubleArray(observations.size) { index ->
                val observation = observations[index]
                val residual = residuals[index]
                val huber = if (residual <= robustScale) 1.0 else robustScale / residual.coerceAtLeast(1.0e-6f)
                observation.confidence.toDouble() * edgePrior(observation.edge.type) * huber
            }
            x = solveAxis(graph, observations, weights, useX = true) ?: return null
            y = solveAxis(graph, observations, weights, useX = false) ?: return null
        }
        return Candidate(x, y)
    }

    private fun initialFromEdgeType(
        graph: RawTemporalAlignmentGraph,
        observations: List<RawTemporalEdgeObservation>,
        edgeType: RawTemporalEdgeType,
        useX: Boolean,
    ): DoubleArray {
        val positions = DoubleArray(graph.frameCount)
        val known = BooleanArray(graph.frameCount)
        known[graph.referenceFrameIndex] = true
        repeat(graph.frameCount) {
            var changed = false
            observations.asSequence()
                .filter { it.edge.type == edgeType }
                .forEach { observation ->
                    val from = observation.edge.fromFrameIndex
                    val to = observation.edge.toFrameIndex
                    val delta = if (useX) observation.dxPlanePx else observation.dyPlanePx
                    when {
                        known[from] && !known[to] -> {
                            positions[to] = positions[from] + delta
                            known[to] = true
                            changed = true
                        }
                        known[to] && !known[from] -> {
                            positions[from] = positions[to] - delta
                            known[from] = true
                            changed = true
                        }
                    }
                }
            if (!changed) return@repeat
        }
        return positions
    }

    private fun truncatedConsistencyCost(
        observations: List<RawTemporalEdgeObservation>,
        x: DoubleArray,
        y: DoubleArray,
    ): Double {
        val residuals = residuals(observations, x, y)
        var weightedCost = 0.0
        var weightSum = 0.0
        observations.forEachIndexed { index, observation ->
            val weight = observation.confidence.toDouble() * edgePrior(observation.edge.type)
            val residual = residuals[index].toDouble()
            weightedCost += weight * minOf(residual * residual, CONSENSUS_TRUNCATION_PX_SQUARED)
            weightSum += weight
        }
        return weightedCost / weightSum.coerceAtLeast(1.0e-8)
    }

    private fun solveAxis(
        graph: RawTemporalAlignmentGraph,
        observations: List<RawTemporalEdgeObservation>,
        weights: DoubleArray,
        useX: Boolean,
    ): DoubleArray? {
        if (graph.frameCount == 1) return DoubleArray(1)
        val variableByFrame = IntArray(graph.frameCount) { -1 }
        var variableCount = 0
        for (frame in 0 until graph.frameCount) {
            if (frame != graph.referenceFrameIndex) variableByFrame[frame] = variableCount++
        }
        val normal = Array(variableCount) { DoubleArray(variableCount) }
        val rhs = DoubleArray(variableCount)
        observations.forEachIndexed { index, observation ->
            val weight = weights[index]
            if (!weight.isFinite() || weight <= 0.0) return@forEachIndexed
            val fromVariable = variableByFrame[observation.edge.fromFrameIndex]
            val toVariable = variableByFrame[observation.edge.toFrameIndex]
            val delta = (if (useX) observation.dxPlanePx else observation.dyPlanePx).toDouble()
            if (fromVariable >= 0) {
                normal[fromVariable][fromVariable] += weight
                rhs[fromVariable] -= weight * delta
            }
            if (toVariable >= 0) {
                normal[toVariable][toVariable] += weight
                rhs[toVariable] += weight * delta
            }
            if (fromVariable >= 0 && toVariable >= 0) {
                normal[fromVariable][toVariable] -= weight
                normal[toVariable][fromVariable] -= weight
            }
        }
        for (index in 0 until variableCount) normal[index][index] += RIDGE
        val variables = gaussianElimination(normal, rhs) ?: return null
        return DoubleArray(graph.frameCount) { frame ->
            variableByFrame[frame].takeIf { it >= 0 }?.let { variables[it] } ?: 0.0
        }
    }

    private fun gaussianElimination(matrix: Array<DoubleArray>, rhs: DoubleArray): DoubleArray? {
        val size = rhs.size
        for (column in 0 until size) {
            var pivot = column
            for (row in column + 1 until size) {
                if (abs(matrix[row][column]) > abs(matrix[pivot][column])) pivot = row
            }
            if (abs(matrix[pivot][column]) < MIN_PIVOT) return null
            if (pivot != column) {
                val row = matrix[column]
                matrix[column] = matrix[pivot]
                matrix[pivot] = row
                val value = rhs[column]
                rhs[column] = rhs[pivot]
                rhs[pivot] = value
            }
            val divisor = matrix[column][column]
            for (entry in column until size) matrix[column][entry] /= divisor
            rhs[column] /= divisor
            for (row in 0 until size) {
                if (row == column) continue
                val factor = matrix[row][column]
                if (abs(factor) < MIN_PIVOT) continue
                for (entry in column until size) matrix[row][entry] -= factor * matrix[column][entry]
                rhs[row] -= factor * rhs[column]
            }
        }
        return rhs
    }

    private fun residuals(
        observations: List<RawTemporalEdgeObservation>,
        x: DoubleArray,
        y: DoubleArray,
    ): FloatArray = FloatArray(observations.size) { index ->
        val observation = observations[index]
        hypot(
            (x[observation.edge.toFrameIndex] - x[observation.edge.fromFrameIndex] - observation.dxPlanePx).toFloat(),
            (y[observation.edge.toFrameIndex] - y[observation.edge.fromFrameIndex] - observation.dyPlanePx).toFloat(),
        )
    }

    private fun robustScale(residuals: FloatArray): Double {
        if (residuals.isEmpty()) return HUBER_MIN_PX
        val median = median(residuals)
        val deviations = FloatArray(residuals.size) { abs(residuals[it] - median) }
        return max(HUBER_MIN_PX, (median + MAD_SCALE * median(deviations)).toDouble())
    }

    private fun robustOutlierThreshold(residuals: FloatArray): Float {
        if (residuals.isEmpty()) return MIN_REJECT_THRESHOLD_PX
        val median = median(residuals)
        val deviations = FloatArray(residuals.size) { abs(residuals[it] - median) }
        return median + OUTLIER_MAD_MULTIPLIER * MAD_SCALE * median(deviations)
    }

    private fun median(values: FloatArray): Float {
        val sorted = values.filter(Float::isFinite).sorted()
        if (sorted.isEmpty()) return 0f
        val middle = sorted.size / 2
        return if ((sorted.size and 1) == 0) (sorted[middle - 1] + sorted[middle]) * 0.5f else sorted[middle]
    }

    private fun edgePrior(type: RawTemporalEdgeType): Double = when (type) {
        RawTemporalEdgeType.ADJACENT -> 1.0
        RawTemporalEdgeType.SKIP_ONE -> 0.85
        RawTemporalEdgeType.REFERENCE -> 0.7
    }

    private data class Candidate(
        val x: DoubleArray,
        val y: DoubleArray,
    )

    private const val IRLS_ITERATIONS = 4
    private const val HUBER_MIN_PX = 0.5
    private const val MIN_REJECT_THRESHOLD_PX = 1.25f
    private const val MAD_SCALE = 1.4826f
    private const val OUTLIER_MAD_MULTIPLIER = 3.5f
    private const val RIDGE = 1.0e-8
    private const val MIN_PIVOT = 1.0e-12
    private const val CONSENSUS_TRUNCATION_PX_SQUARED = 4.0
}
