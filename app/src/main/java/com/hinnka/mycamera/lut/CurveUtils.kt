package com.hinnka.mycamera.lut

import java.nio.ByteBuffer
import kotlin.math.abs
import kotlin.math.sqrt

/**
 * 曲线工具类 - 单调三次 Hermite 样条插值 (Fritsch-Carlson 算法)
 *
 * 控制点格式: [x0, y0, x1, y1, ...], x/y 均在 [0, 1] 范围内
 * null 或空数组 = 恒等曲线（无效果）
 *
 * GPU 纹理格式: 256×1 RGBA8
 *   R 通道 = master_curve(red_curve(x))    用于红色通道
 *   G 通道 = master_curve(green_curve(x))  用于绿色通道
 *   B 通道 = master_curve(blue_curve(x))   用于蓝色通道
 *   A 通道 = 255（保留）
 */
object CurveUtils {

    const val LUT_SIZE = 256

    /**
     * 将控制点列表评估为 256 点浮点 LUT (值域 [0, 1])
     *
     * @param points 控制点数组 [x0,y0, x1,y1, ...], null 返回恒等曲线
     */
    fun evaluateCurve(points: FloatArray?): FloatArray {
        val lut = FloatArray(LUT_SIZE) { it / (LUT_SIZE - 1f) }
        if (points == null || points.size < 4) return lut

        val n = points.size / 2
        if (n < 2) return lut

        // 解析并按 x 排序控制点
        val pts = (0 until n).map { i ->
            points[i * 2].coerceIn(0f, 1f) to points[i * 2 + 1].coerceIn(0f, 1f)
        }.sortedBy { it.first }

        val xs = FloatArray(pts.size) { pts[it].first }
        val ys = FloatArray(pts.size) { pts[it].second }

        val slopes = computeMonotoneSlopes(xs, ys)

        for (i in 0 until LUT_SIZE) {
            val t = i / (LUT_SIZE - 1f)
            lut[i] = evaluateSpline(xs, ys, slopes, t).coerceIn(0f, 1f)
        }
        return lut
    }

    /**
     * 检查所有曲线是否为恒等（无效果）
     */
    fun isIdentity(
        master: FloatArray?,
        red: FloatArray?,
        green: FloatArray?,
        blue: FloatArray?
    ): Boolean = isIdentityCurve(master) && isIdentityCurve(red) &&
            isIdentityCurve(green) && isIdentityCurve(blue)

    fun isIdentityCurve(points: FloatArray?): Boolean {
        if (points == null || points.size < 4) return true
        // 检查所有控制点是否在恒等线上 (y ≈ x)
        for (i in 0 until points.size / 2) {
            val x = points[i * 2]
            val y = points[i * 2 + 1]
            if (abs(y - x) > 0.005f) return false
        }
        return true
    }

    /**
     * 构建 256×1 RGBA8 ByteBuffer 供 GPU 上传
     * 每通道 = masterCurve(channelCurve(x))
     */
    fun buildCurveTextureBuffer(
        masterPoints: FloatArray?,
        redPoints: FloatArray?,
        greenPoints: FloatArray?,
        bluePoints: FloatArray?
    ): ByteBuffer {
        val masterLut = evaluateCurve(masterPoints)
        val redLut   = composeLuts(evaluateCurve(redPoints),   masterLut)
        val greenLut = composeLuts(evaluateCurve(greenPoints), masterLut)
        val blueLut  = composeLuts(evaluateCurve(bluePoints),  masterLut)

        val buffer = ByteBuffer.allocateDirect(LUT_SIZE * 4)
        for (i in 0 until LUT_SIZE) {
            buffer.put(toByteUnsigned(redLut[i]))
            buffer.put(toByteUnsigned(greenLut[i]))
            buffer.put(toByteUnsigned(blueLut[i]))
            buffer.put(-1) // 0xFF
        }
        buffer.rewind()
        return buffer
    }

    // ────────────────────────── 内部实现 ──────────────────────────

    /** 单调三次样条斜率 (Fritsch-Carlson) */
    private fun computeMonotoneSlopes(xs: FloatArray, ys: FloatArray): FloatArray {
        val n = xs.size
        val m = FloatArray(n)
        if (n < 2) return m

        // 计算割线斜率
        val delta = FloatArray(n - 1) {
            val dx = xs[it + 1] - xs[it]
            if (dx < 1e-7f) 0f else (ys[it + 1] - ys[it]) / dx
        }

        // 初始斜率：端点用割线，内部点用相邻割线均值
        m[0] = delta[0]
        m[n - 1] = delta[n - 2]
        for (i in 1 until n - 1) {
            m[i] = (delta[i - 1] + delta[i]) * 0.5f
        }

        // Fritsch-Carlson 单调性修正
        for (i in 0 until n - 1) {
            if (abs(delta[i]) < 1e-7f) {
                m[i] = 0f
                m[i + 1] = 0f
            } else {
                val alpha = m[i] / delta[i]
                val beta = m[i + 1] / delta[i]
                val tau2 = alpha * alpha + beta * beta
                if (tau2 > 9f) {
                    val scale = 3f / sqrt(tau2)
                    m[i] = scale * alpha * delta[i]
                    m[i + 1] = scale * beta * delta[i]
                }
            }
        }
        return m
    }

    /** 在给定区间上评估三次 Hermite 样条 */
    private fun evaluateSpline(xs: FloatArray, ys: FloatArray, m: FloatArray, t: Float): Float {
        val n = xs.size
        if (t <= xs[0]) return ys[0] + m[0] * (t - xs[0])
        if (t >= xs[n - 1]) return ys[n - 1] + m[n - 1] * (t - xs[n - 1])

        var lo = 0; var hi = n - 1
        while (hi - lo > 1) {
            val mid = (lo + hi) ushr 1
            if (xs[mid] <= t) lo = mid else hi = mid
        }

        val h = xs[hi] - xs[lo]
        if (h < 1e-7f) return ys[lo]
        val u = (t - xs[lo]) / h
        val u2 = u * u; val u3 = u2 * u

        return (2 * u3 - 3 * u2 + 1) * ys[lo] +
                (u3 - 2 * u2 + u) * h * m[lo] +
                (-2 * u3 + 3 * u2) * ys[hi] +
                (u3 - u2) * h * m[hi]
    }

    /** 组合两个 LUT：output[i] = lut2[lut1[i]] (线性插值) */
    private fun composeLuts(lut1: FloatArray, lut2: FloatArray): FloatArray {
        val n = lut1.size
        return FloatArray(n) { i ->
            val pos = lut1[i] * (n - 1)
            val lo = pos.toInt().coerceIn(0, n - 2)
            val frac = pos - lo
            lut2[lo] * (1f - frac) + lut2[lo + 1] * frac
        }
    }

    private fun toByteUnsigned(f: Float): Byte =
        (f * 255f + 0.5f).toInt().coerceIn(0, 255).toByte()
}
