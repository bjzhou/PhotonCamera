package com.hinnka.mycamera.processor

import kotlin.math.abs

/** RGBA per tile: dx, dy, patch score, peak/coverage confidence. */
data class RawTemporalEdgeFlowField(
    val edge: RawTemporalAlignmentEdge,
    val width: Int,
    val height: Int,
    val values: FloatArray,
) {
    init {
        require(width > 0 && height > 0)
        require(values.size == width * height * CHANNEL_COUNT)
    }

    companion object {
        const val CHANNEL_COUNT = 4
    }
}

/** RGBA per tile: graph-consistent dx, dy, mean incident residual, confidence. */
data class RawTemporalFrameFlowField(
    val frameIndex: Int,
    val width: Int,
    val height: Int,
    val values: FloatArray,
)

data class RawTemporalFrameFlowSummary(
    val frameIndex: Int,
    val validTileCount: Int,
    val totalTileCount: Int,
    val coveredQuadrants: Int,
    val meanConfidence: Float,
    val residualP90PlanePx: Float,
    val medianDxPlanePx: Float,
    val medianDyPlanePx: Float,
) {
    val validTileFraction: Float
        get() = validTileCount.toFloat() / totalTileCount.coerceAtLeast(1)
}

object RawTemporalFlowFieldSolver {
    fun solve(
        graph: RawTemporalAlignmentGraph,
        edgeFields: List<RawTemporalEdgeFlowField>,
        fallbackFlowByFrame: List<FloatArray>,
        scoreFullConfidence: Float,
        scoreReject: Float,
        minimumObservationConfidence: Float = 0.02f,
    ): List<RawTemporalFrameFlowField>? {
        if (graph.frameCount <= 0 || edgeFields.isEmpty()) return null
        val width = edgeFields.first().width
        val height = edgeFields.first().height
        val valueCount = width * height * RawTemporalEdgeFlowField.CHANNEL_COUNT
        if (edgeFields.any { it.width != width || it.height != height }) return null
        if (fallbackFlowByFrame.size != graph.frameCount ||
            fallbackFlowByFrame.any { it.size != valueCount }
        ) return null

        val outputs = List(graph.frameCount) { frameIndex ->
            fallbackFlowByFrame[frameIndex].copyOf().also { values ->
                for (tile in 0 until width * height) {
                    values[tile * 4 + 2] = MAX_STORED_RESIDUAL
                    values[tile * 4 + 3] = if (frameIndex == graph.referenceFrameIndex) 1f else 0f
                }
            }
        }
        for (tile in 0 until width * height) {
            val observations = ArrayList<RawTemporalEdgeObservation>(edgeFields.size)
            edgeFields.forEach { field ->
                val offset = tile * 4
                val dx = field.values[offset]
                val dy = field.values[offset + 1]
                val score = field.values[offset + 2]
                val peakConfidence = field.values[offset + 3]
                val scoreConfidence = 1f - smoothStep(scoreFullConfidence, scoreReject, score)
                val confidence = peakConfidence.coerceIn(0f, 1f) * scoreConfidence
                if (dx.isFinite() && dy.isFinite() && confidence >= minimumObservationConfidence) {
                    observations += RawTemporalEdgeObservation(field.edge, dx, dy, confidence)
                }
            }
            val solution = RawTemporalAlignmentSolver.solve(graph, observations) ?: continue
            val accepted = solution.acceptedObservationIndices.toSet()
            for (frameIndex in 0 until graph.frameCount) {
                if (frameIndex == graph.referenceFrameIndex) continue
                var confidenceSum = 0f
                var residualSum = 0f
                var incidentCount = 0
                observations.forEachIndexed { observationIndex, observation ->
                    if (observationIndex !in accepted) return@forEachIndexed
                    if (observation.edge.fromFrameIndex != frameIndex &&
                        observation.edge.toFrameIndex != frameIndex
                    ) return@forEachIndexed
                    confidenceSum += observation.confidence
                    residualSum += solution.residualByObservation[observationIndex]
                    incidentCount++
                }
                if (incidentCount == 0) continue
                val offset = tile * 4
                val meanResidual = (residualSum / incidentCount).coerceIn(0f, MAX_STORED_RESIDUAL)
                val residualConfidence = 1f - smoothStep(
                    FULL_CONFIDENCE_RESIDUAL_PX,
                    REJECT_CONFIDENCE_RESIDUAL_PX,
                    meanResidual,
                )
                outputs[frameIndex][offset] = solution.positions[frameIndex].xPlanePx
                outputs[frameIndex][offset + 1] = solution.positions[frameIndex].yPlanePx
                outputs[frameIndex][offset + 2] = meanResidual
                outputs[frameIndex][offset + 3] =
                    ((confidenceSum / incidentCount).coerceIn(0f, 1f) * residualConfidence)
            }
        }
        return outputs.mapIndexed { frameIndex, values ->
            RawTemporalFrameFlowField(frameIndex, width, height, values)
        }
    }

    fun summarize(
        field: RawTemporalFrameFlowField,
        minimumConfidence: Float = 0.02f,
    ): RawTemporalFrameFlowSummary {
        val dx = ArrayList<Float>()
        val dy = ArrayList<Float>()
        val residuals = ArrayList<Float>()
        var confidenceSum = 0f
        var quadrantMask = 0
        for (y in 0 until field.height) {
            for (x in 0 until field.width) {
                val offset = (y * field.width + x) * 4
                val tileDx = field.values[offset]
                val tileDy = field.values[offset + 1]
                val residual = field.values[offset + 2]
                val confidence = field.values[offset + 3]
                if (!tileDx.isFinite() || !tileDy.isFinite() || !residual.isFinite() ||
                    !confidence.isFinite() || confidence < minimumConfidence
                ) continue
                dx += tileDx
                dy += tileDy
                residuals += residual
                confidenceSum += confidence
                val quadrantX = if (x * 2 < field.width) 0 else 1
                val quadrantY = if (y * 2 < field.height) 0 else 1
                quadrantMask = quadrantMask or (1 shl (quadrantY * 2 + quadrantX))
            }
        }
        return RawTemporalFrameFlowSummary(
            frameIndex = field.frameIndex,
            validTileCount = dx.size,
            totalTileCount = field.width * field.height,
            coveredQuadrants = Integer.bitCount(quadrantMask),
            meanConfidence = if (dx.isEmpty()) 0f else confidenceSum / dx.size,
            residualP90PlanePx = percentile(residuals, 0.90f),
            medianDxPlanePx = percentile(dx, 0.50f),
            medianDyPlanePx = percentile(dy, 0.50f),
        )
    }

    private fun smoothStep(edge0: Float, edge1: Float, value: Float): Float {
        if (!value.isFinite()) return 0f
        if (abs(edge1 - edge0) < 1.0e-6f) return if (value >= edge1) 1f else 0f
        val t = ((value - edge0) / (edge1 - edge0)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }

    private fun percentile(values: List<Float>, percentile: Float): Float {
        if (values.isEmpty()) return Float.POSITIVE_INFINITY
        val sorted = values.sorted()
        val index = ((sorted.lastIndex) * percentile.coerceIn(0f, 1f)).toInt()
        return sorted[index]
    }

    private const val MAX_STORED_RESIDUAL = 65504f
    private const val FULL_CONFIDENCE_RESIDUAL_PX = 0.35f
    private const val REJECT_CONFIDENCE_RESIDUAL_PX = 1.5f
}
