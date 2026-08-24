package com.hinnka.mycamera.raw

import kotlin.math.ceil
import kotlin.math.max

/**
 * Builds the highlight extension used by the RAW HDR reference.
 *
 * This follows Phocus' HDR-gradation construction in normalized coordinates. The selected
 * engine's neutral SDR response is the base curve. The HDR curve follows that curve through the
 * low and middle range, leaves the SDR shoulder at a tangent-compatible point, reaches +0.5 stop
 * at scene white, and then keeps the endpoint tangent for over-range highlights.
 *
 * Phocus constructs its LUT with `BaseCurve(index * gain)` and later reads that LUT at
 * `sceneValue / gain`; those factors cancel in scene coordinates. The implementation below works
 * directly in those scene coordinates, so exposure/PGTM gain is neither omitted nor applied twice.
 */
object RawHdrReferenceMath {
    const val BASE_CURVE_SAMPLE_COUNT = 1024
    const val SCENE_WHITE = 1f
    const val SEARCH_START = 20_000f / 65_535f
    const val HDR_WHITE_MULTIPLIER = 1.41421356237f

    private const val MIN_INTERVAL = 1e-4f
    private const val MIN_WHITE = 1e-4f

    data class CurveExtension(
        val joinInput: Float,
        val joinOutput: Float,
        val joinSlope: Float,
        val quadraticCoefficient: Float,
        val whiteOutput: Float,
        val whiteSlope: Float,
    ) {
        fun evaluate(input: Float, baseCurve: FloatArray): Float {
            val x = input.finiteOr(0f).coerceAtLeast(0f)
            if (x <= joinInput) return sampleCurve(baseCurve, x)
            if (x <= SCENE_WHITE) {
                val distance = x - joinInput
                return joinOutput + joinSlope * distance +
                    quadraticCoefficient * distance * distance
            }
            return whiteOutput + whiteSlope * (x - SCENE_WHITE)
        }
    }

    /**
     * Finds the point where the base curve can leave its SDR shoulder.
     *
     * Phocus begins the search at code value 20,000 and accepts the first point whose local
     * tangent reaches SDR white at code value 65,535. We run the same search on a uniformly
     * sampled neutral response, then solve the unique quadratic that preserves value and slope at
     * the join and reaches +0.5 stop at scene white.
     */
    fun solve(baseCurve: FloatArray): CurveExtension {
        require(baseCurve.size >= 4) { "HDR base curve needs at least four samples" }
        val curve = sanitizeCurve(baseCurve)
        val lastIndex = curve.lastIndex
        val baseWhite = curve[lastIndex].coerceAtLeast(MIN_WHITE)
        val searchStartIndex = ceil(SEARCH_START * lastIndex).toInt()
            .coerceIn(1, lastIndex - 1)
        val derivativeSpan = max(
            1,
            ((20f / 65_535f) * lastIndex).toInt(),
        )

        var joinIndex = -1
        var joinSlope = 0f
        for (index in searchStartIndex until lastIndex) {
            val lowerIndex = (index - derivativeSpan).coerceAtLeast(0)
            val x = index.toFloat() / lastIndex
            val lowerX = lowerIndex.toFloat() / lastIndex
            val slope = (curve[index] - curve[lowerIndex]) / max(x - lowerX, MIN_INTERVAL)
            val tangentAtWhite = curve[index] + slope * (SCENE_WHITE - x)
            val interval = SCENE_WHITE - x
            val quadratic = (baseWhite * HDR_WHITE_MULTIPLIER - curve[index] -
                slope * interval) / max(interval * interval, MIN_INTERVAL * MIN_INTERVAL)
            val candidateWhiteSlope = slope + 2f * quadratic * interval
            if (slope.isFinite() && slope >= 0f && tangentAtWhite >= baseWhite &&
                candidateWhiteSlope.isFinite() && candidateWhiteSlope >= 0f
            ) {
                joinIndex = index
                joinSlope = slope
                break
            }
        }

        if (joinIndex < 0) {
            joinIndex = (lastIndex - max(1, lastIndex / 64)).coerceAtLeast(searchStartIndex)
            val lowerIndex = (joinIndex - derivativeSpan).coerceAtLeast(0)
            val x = joinIndex.toFloat() / lastIndex
            val lowerX = lowerIndex.toFloat() / lastIndex
            joinSlope = ((curve[joinIndex] - curve[lowerIndex]) /
                max(x - lowerX, MIN_INTERVAL)).coerceAtLeast(0f)
        }

        val joinInput = joinIndex.toFloat() / lastIndex
        val joinOutput = curve[joinIndex]
        val interval = (SCENE_WHITE - joinInput).coerceAtLeast(MIN_INTERVAL)
        val whiteOutput = baseWhite * HDR_WHITE_MULTIPLIER
        val quadraticCoefficient =
            (whiteOutput - joinOutput - joinSlope * interval) / (interval * interval)
        val whiteSlope = joinSlope + 2f * quadraticCoefficient * interval
        require(quadraticCoefficient.isFinite() && whiteSlope.isFinite() && whiteSlope >= 0f) {
            "Selected engine cannot produce a monotonic HDR curve extension"
        }

        return CurveExtension(
            joinInput = joinInput,
            joinOutput = joinOutput,
            joinSlope = joinSlope,
            quadraticCoefficient = quadraticCoefficient,
            whiteOutput = whiteOutput,
            whiteSlope = whiteSlope,
        )
    }

    internal fun sampleCurve(curve: FloatArray, input: Float): Float {
        require(curve.isNotEmpty()) { "Curve must not be empty" }
        if (curve.size == 1) return curve[0].finiteOr(0f).coerceAtLeast(0f)
        val position = input.finiteOr(0f).coerceIn(0f, 1f) * curve.lastIndex
        val lowerIndex = position.toInt().coerceAtMost(curve.lastIndex - 1)
        val fraction = position - lowerIndex
        val lower = curve[lowerIndex].finiteOr(0f).coerceAtLeast(0f)
        val upper = curve[lowerIndex + 1].finiteOr(lower).coerceAtLeast(0f)
        return lower + (upper - lower) * fraction
    }

    private fun sanitizeCurve(baseCurve: FloatArray): FloatArray {
        var previous = 0f
        return FloatArray(baseCurve.size) { index ->
            baseCurve[index].finiteOr(previous).coerceAtLeast(0f).also { previous = it }
        }
    }

    private fun Float.finiteOr(fallback: Float): Float = if (isFinite()) this else fallback
}
