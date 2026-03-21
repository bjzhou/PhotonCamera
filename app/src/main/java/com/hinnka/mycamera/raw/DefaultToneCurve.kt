package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.SplineInterpolator
import java.nio.FloatBuffer
import kotlin.math.roundToInt

/**
 * Percentile-driven fallback tone curve for cases where we do not have an
 * embedded preview for histogram matching. The curve stays gentle on both ends
 * while lifting mids enough for large-DR scenes to feel less flat.
 */
object DefaultToneCurve {
    private const val TAG = "DefaultToneCurve"
    private const val LUT_SIZE = 256
    private const val MIN_X_STEP = 1e-4f

    fun analyze(
        neutralBuffer: FloatBuffer,
        width: Int,
        height: Int,
        logCurve: LogCurve
    ): FloatArray {
        val histogram = buildHistogramFromNeutral(neutralBuffer, width, height, logCurve)
        val cdf = buildCdf(histogram)

        val p01 = findPercentile(cdf, 0.01f)
        val p50 = findPercentile(cdf, 0.50f)
        val p99 = findPercentile(cdf, 0.99f)
        val dynamicRange = (p99 - p01).coerceIn(0.18f, 0.98f)
        val headroom = (1f - p99).coerceIn(0.02f, 0.35f)

        val midLift = (0.12f - (dynamicRange - 0.55f).coerceAtLeast(0f) * 0.10f)
            .coerceIn(0.06f, 0.12f)
        val shadowToe = (p01 * 0.38f).coerceIn(0f, 0.08f)
        val shoulderPush = (headroom * 0.45f).coerceIn(0.01f, 0.05f)

        val midOut = (p50 + midLift).coerceAtMost((p99 - 0.08f).coerceAtLeast(p50 + 0.03f))
        val highOut = (p99 + shoulderPush).coerceIn(midOut + 0.08f, 0.985f)

        val rawX = floatArrayOf(
            0f,
            (p01 * 0.5f).coerceIn(0f, 0.08f),
            p01,
            p50,
            p99,
            1f
        )
        val rawY = floatArrayOf(
            0f,
            logCurve.logToLinear(shadowToe * 0.28f).coerceAtLeast(0f),
            logCurve.logToLinear(shadowToe).coerceAtLeast(0f),
            logCurve.logToLinear(midOut).coerceAtLeast(0f),
            logCurve.logToLinear(highOut).coerceAtLeast(0f),
            logCurve.logToLinear(1f).coerceAtLeast(0f)
        )
        val (x, y) = buildStrictControlPoints(rawX, rawY)
        val pointsDescription = x.joinToString(prefix = "[", postfix = "]")

        PLog.d(
            TAG,
            "analyze: p01=$p01 p50=$p50 p99=$p99 dr=$dynamicRange headroom=$headroom midOut=$midOut highOut=$highOut points=$pointsDescription"
        )

        return SplineInterpolator(x, y).generateLut(LUT_SIZE)
    }

    private fun buildStrictControlPoints(
        x: FloatArray,
        y: FloatArray
    ): Pair<FloatArray, FloatArray> {
        require(x.size == y.size) { "Control point arrays must have the same size" }

        val strictX = ArrayList<Float>(x.size)
        val strictY = ArrayList<Float>(y.size)

        for (i in x.indices) {
            val nextX = x[i].coerceIn(0f, 1f)
            val nextY = y[i].coerceAtLeast(0f)
            val lastIndex = strictX.lastIndex

            if (lastIndex >= 0 && nextX <= strictX[lastIndex] + MIN_X_STEP) {
                strictX[lastIndex] = nextX.coerceAtLeast(strictX[lastIndex])
                strictY[lastIndex] = maxOf(strictY[lastIndex], nextY)
                continue
            }

            strictX.add(nextX)
            strictY.add(nextY)
        }

        if (strictX.size < 2) {
            val fallbackEndY = strictY.lastOrNull() ?: 1f
            strictX.clear()
            strictY.clear()
            strictX.add(0f)
            strictY.add(0f)
            strictX.add(1f)
            strictY.add(fallbackEndY)
            PLog.w(TAG, "buildStrictControlPoints: fell back to linear endpoints")
        } else if (strictX.size != x.size) {
            PLog.w(
                TAG,
                "buildStrictControlPoints: collapsed duplicate x values from ${x.size} to ${strictX.size}"
            )
        }

        return strictX.toFloatArray() to strictY.toFloatArray()
    }

    private fun buildHistogramFromNeutral(
        neutralBuffer: FloatBuffer,
        width: Int,
        height: Int,
        logCurve: LogCurve
    ): IntArray {
        val histogram = IntArray(LUT_SIZE)
        neutralBuffer.position(0)
        repeat(width * height) {
            val r = neutralBuffer.get()
            val g = neutralBuffer.get()
            val b = neutralBuffer.get()
            neutralBuffer.get()

            val luma = (r * 0.2126f + g * 0.7152f + b * 0.0722f).coerceAtLeast(0f)
            val logValue = logCurve.linearToLog(luma).coerceIn(0f, 1f)
            val bin = (logValue * (LUT_SIZE - 1)).roundToInt().coerceIn(0, LUT_SIZE - 1)
            histogram[bin]++
        }
        neutralBuffer.position(0)
        return histogram
    }

    private fun buildCdf(histogram: IntArray): FloatArray {
        val total = histogram.sum().coerceAtLeast(1)
        val cdf = FloatArray(histogram.size)
        var running = 0
        for (i in histogram.indices) {
            running += histogram[i]
            cdf[i] = running.toFloat() / total
        }
        return cdf
    }

    private fun findPercentile(cdf: FloatArray, percentile: Float): Float {
        val target = percentile.coerceIn(0f, 1f)
        for (i in cdf.indices) {
            if (cdf[i] >= target) {
                return i.toFloat() / (cdf.size - 1)
            }
        }
        return 1f
    }
}
