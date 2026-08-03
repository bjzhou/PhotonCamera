package com.hinnka.mycamera.processor

import kotlin.math.floor
import kotlin.math.sqrt

/**
 * Tracks whether accepted frames add distinct sampling phases on the same-color
 * CFA lattice. Registration quality alone cannot tell whether a frame contributes
 * new samples to a 2x reconstruction.
 */
internal class RawStackSuperResolutionPhaseTracker(
    cfaPeriod: Int,
    outputScale: Float,
    private val noveltyStartPx: Float,
    private val noveltyFullPx: Float,
) {
    private data class Phase(val x: Float, val y: Float)

    private val period = cfaPeriod.coerceAtLeast(1).toFloat()
    private val binsPerAxis = outputScale.toInt().coerceAtLeast(1)
    private val binSpacing = period / binsPerAxis.toFloat()
    private val phases = ArrayList<Phase>()
    private val binCounts = IntArray(binsPerAxis * binsPerAxis)

    init {
        reset()
    }

    fun reset() {
        phases.clear()
        binCounts.fill(0)
        record(0f, 0f)
    }

    fun noveltyWeight(dx: Float, dy: Float): Float {
        if (!dx.isFinite() || !dy.isFinite()) return 0f
        val phase = Phase(wrap(dx), wrap(dy))
        val nearestDistance = phases.minOfOrNull { existing -> phaseDistance(phase, existing) }
            ?: Float.POSITIVE_INFINITY
        return smoothStep(noveltyStartPx, noveltyFullPx, nearestDistance)
    }

    fun record(dx: Float, dy: Float) {
        if (!dx.isFinite() || !dy.isFinite()) return
        val phase = Phase(wrap(dx), wrap(dy))
        phases += phase
        binCounts[binIndex(phase)] += 1
    }

    fun isUnoccupiedBin(dx: Float, dy: Float): Boolean {
        if (!dx.isFinite() || !dy.isFinite()) return false
        val phase = Phase(wrap(dx), wrap(dy))
        return binCounts[binIndex(phase)] == 0
    }

    val occupiedBinCount: Int
        get() = binCounts.count { it > 0 }

    val totalBinCount: Int
        get() = binCounts.size

    val phaseBinCounts: List<Int>
        get() = binCounts.toList()

    val coverage: Float
        get() = occupiedBinCount.toFloat() / totalBinCount.coerceAtLeast(1).toFloat()

    private fun binIndex(phase: Phase): Int {
        val x = (floor(phase.x / binSpacing + 0.5f).toInt() % binsPerAxis + binsPerAxis) % binsPerAxis
        val y = (floor(phase.y / binSpacing + 0.5f).toInt() % binsPerAxis + binsPerAxis) % binsPerAxis
        return y * binsPerAxis + x
    }

    private fun phaseDistance(a: Phase, b: Phase): Float {
        val dx = toroidalDistance(a.x, b.x)
        val dy = toroidalDistance(a.y, b.y)
        return sqrt(dx * dx + dy * dy)
    }

    private fun toroidalDistance(a: Float, b: Float): Float {
        val direct = kotlin.math.abs(a - b)
        return minOf(direct, period - direct)
    }

    private fun wrap(value: Float): Float {
        val remainder = value % period
        return if (remainder < 0f) remainder + period else remainder
    }

    private fun smoothStep(edge0: Float, edge1: Float, value: Float): Float {
        val lo = minOf(edge0, edge1).coerceAtLeast(0f)
        val hi = maxOf(edge0, edge1).coerceAtLeast(lo)
        if (hi <= lo) return if (value >= hi) 1f else 0f
        val t = ((value - lo) / (hi - lo)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }

}
