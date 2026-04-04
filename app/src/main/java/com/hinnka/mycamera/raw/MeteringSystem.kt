package com.hinnka.mycamera.raw

import java.nio.FloatBuffer
import kotlin.math.pow

/**
 * 评价测光与场景分析系统
 */
object MeteringSystem {
    private const val TAG = "MeteringSystem"

    fun analyze(
        floatBuffer: FloatBuffer,
        width: Int,
        height: Int,
        metadata: RawMetadata?
    ): Float {
        val pixelCount = width * height
        val allLumas = FloatArray(pixelCount)
        var validPixelCount = 0

        val gridRows = 12
        val gridCols = 12
        val zoneSum = DoubleArray(gridRows * gridCols)
        val zonePixCount = IntArray(gridRows * gridCols)
        val zoneMaxL = FloatArray(gridRows * gridCols)
        val zoneSkinCount = IntArray(gridRows * gridCols)

        var maxLuma = 0.0f

        floatBuffer.position(0)
        for (y in 0 until height) {
            val gy = (y.toFloat() / height * gridRows).toInt().coerceIn(0, gridRows - 1)
            for (x in 0 until width) {
                val gx = (x.toFloat() / width * gridCols).toInt().coerceIn(0, gridCols - 1)
                val zi = gy * gridCols + gx

                val r = floatBuffer.get()
                val g = floatBuffer.get()
                val b = floatBuffer.get()
                floatBuffer.get() // skip alpha

                val luma = r * 0.2126f + g * 0.7152f + b * 0.0722f
                if (luma.isNaN() || luma < 0f) continue

                if (luma > maxLuma) maxLuma = luma
                allLumas[validPixelCount++] = luma

                zoneSum[zi] += luma.toDouble()
                zonePixCount[zi]++
                if (luma > zoneMaxL[zi]) zoneMaxL[zi] = luma

                // 2. 肤色检测逻辑
                if (r > g && g > b && g > 0.001f) {
                    val rgRatio = r / g
                    val gbRatio = g / b
                    if (rgRatio in 1.1f..2.5f && gbRatio in 1.0f..3.0f) {
                        zoneSkinCount[zi]++
                    }
                }
            }
        }

        if (validPixelCount == 0) {
            return 1f
        }

        // ---------------------------------------------------------
        // 区域评价测光算法 (Evaluative Metering Algorithm)
        // ---------------------------------------------------------
        var totalWeight = 0.0
        var weightedSumLog = 0.0

        // 计算全局平均亮度，用于逆光检测对比
        var globalTotalLog = 0.0
        var globalTotalPixels = 0
        for (i in 0 until gridRows * gridCols) {
            globalTotalLog += zoneSum[i]
            globalTotalPixels += zonePixCount[i]
        }
        val globalAvgLog = if (globalTotalPixels > 0) globalTotalLog / globalTotalPixels else 0.0

        for (i in 0 until gridRows * gridCols) {
            if (zonePixCount[i] == 0) continue

            val gy = i / gridCols
            val gx = i % gridCols
            val pzx = (gx + 0.5f) / gridCols
            val pzy = (gy + 0.5f) / gridRows

            val zoneAvg = zoneSum[i] / zonePixCount[i]

            // 1. 基础权重：画面中心
            val distSqC = (pzx - 0.5f).let { it * it } + (pzy - 0.5f).let { it * it }

            // 中心权重分布（较宽）
            var weight = kotlin.math.exp(-distSqC / 0.1)

            // 2. 肤色密度补偿
            val skinDensity = zoneSkinCount[i].toDouble() / zonePixCount[i]
            if (skinDensity > 0.05) {
                weight *= (1.0 + skinDensity * 12.0)
            }

            // 3. 高光评价逻辑 (Sky/Highlight handling)
            // 如果是非对焦区域且亮度很高，判定为背景/天空，降低权重避免压黑主体
            if (zoneAvg > 0.75f) {
                weight *= 0.15
            }

            // 4. 逆光补偿 (Backlight compensation)
            // 如果对焦中心区域明显暗于全局平均，说明可能处于大面积强光背后的阴影中，大幅增加权重以拉亮主体
            if (zoneAvg < globalAvgLog - 0.05) {
                weight *= 3.0
            }

            weightedSumLog += zoneAvg * weight
            totalWeight += weight
        }

        // 计算加权平均亮度
        val avg = (weightedSumLog / totalWeight).toFloat()

        val exposureBias = metadata?.exposureBias?.let { if (it > -10 && it < 10) it else 0f } ?: 0f
        val biasMultiplier = 2.0f.pow(exposureBias)

        val targetLumaIRE = LogCurve.LINEAR.middleGray
        val gain = targetLumaIRE * biasMultiplier / avg
        return gain.coerceAtLeast(1f)
    }

}
