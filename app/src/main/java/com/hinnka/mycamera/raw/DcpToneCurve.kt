package com.hinnka.mycamera.raw

import kotlin.math.abs

data class DcpToneCurve(
    val points: FloatArray,
) {
    val isValid: Boolean
        get() {
            if (points.size < 4 || points.size % 2 != 0) {
                return false
            }
            var lastX = -1f
            for (index in points.indices step 2) {
                val x = points[index]
                val y = points[index + 1]
                if (!x.isFinite() || !y.isFinite() || x !in 0f..1f || y !in 0f..1f) {
                    return false
                }
                if (x <= lastX) {
                    return false
                }
                lastX = x
            }
            return true
        }

    fun toLut(sampleCount: Int = 256): FloatArray {
        if (!isValid) {
            return FloatArray(sampleCount) { index -> index / (sampleCount - 1f) }
        }

        val lut = FloatArray(sampleCount)
        var segment = 0
        for (index in 0 until sampleCount) {
            val x = index / (sampleCount - 1f)
            while (segment < points.size / 2 - 2 && x > points[(segment + 1) * 2]) {
                segment++
            }
            val x0 = points[segment * 2]
            val y0 = points[segment * 2 + 1]
            val x1 = points[(segment + 1) * 2]
            val y1 = points[(segment + 1) * 2 + 1]
            val t = if (abs(x1 - x0) < 1e-6f) {
                0f
            } else {
                ((x - x0) / (x1 - x0)).coerceIn(0f, 1f)
            }
            lut[index] = y0 + (y1 - y0) * t
        }
        return lut
    }
}
