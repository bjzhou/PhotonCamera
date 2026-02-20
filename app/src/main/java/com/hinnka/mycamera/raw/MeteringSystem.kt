package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog
import java.nio.FloatBuffer
import kotlin.math.log2
import kotlin.math.pow

/**
 * 评价测光与场景分析系统
 */
object MeteringSystem {
    private const val TAG = "MeteringSystem"

    enum class DROMode {
        OFF, LOW, HIGH
    }

    data class AnalysisResult(
        val exposureGain: Float,
        val p98Luma: Float,
        val maxColor: Float,
        val weightedAvgLuma: Float,
        val droMode: DROMode = DROMode.OFF
    )

    /**
     * 将线性反射率 (Scene Linear Reflection) 转换为 Log (0..1)
     */
    private fun linearToLog(reflection: Float, logCurve: LogCurve): Float {
        return logCurve.linearToLog(reflection)
    }

    /**
     * 将 Log (0..1) 还原为线性反射率
     */
    private fun logToLinear(logValue: Float, logCurve: LogCurve): Float {
        return logCurve.logToLinear(logValue)
    }

    fun analyze(
        floatBuffer: FloatBuffer,
        width: Int,
        height: Int,
        focusX: Float,
        focusY: Float,
        logCurve: LogCurve,
        metadata: RawMetadata?
    ): AnalysisResult {
        val pixelCount = width * height
        val allLumas = FloatArray(pixelCount)
        var validPixelCount = 0

        val sigma = 0.35f // 建议稍微再扩大一点
        val sigmaSq2 = 2.0f * sigma * sigma
        val baseWeight = 0.15f // 增加基础权重，让环境（田地）更多参与

        var totalWeight = 0.0
        var weightedSumLog = 0.0 // 在 Log 空间累加
        var maxColor = 0.0f
        var totalSumLuma = 0.0f

        floatBuffer.position(0)
        for (y in 0 until height) {
            for (x in 0 until width) {
                val r = floatBuffer.get()
                val g = floatBuffer.get()
                val b = floatBuffer.get()
                floatBuffer.get() // skip alpha

                val luma = r * 0.2126f + g * 0.7152f + b * 0.0722f
                if (luma.isNaN() || luma < 0f) continue

                val max = maxOf(r, g, b)
                if (max > maxColor) maxColor = max

                // 转换到 Log 空间进行测光分析
                val logCurve = logCurve
                val logLuma = linearToLog(luma, logCurve)

                // 1. 基础权重：高斯分布 + 基础权重
                val px = x.toFloat() / width
                val py = y.toFloat() / height
                val dx = px - focusX
                val dy = py - focusY
                val distSq = dx * dx + dy * dy
                val gaussianWeight = kotlin.math.exp(-distSq.toDouble() / sigmaSq2).toFloat() + baseWeight

                // 2. 环境光压制 (针对天空)
                var envWeight = 1.0f
                if (py > 0.55f && luma > 0.5f) {
                    val focusInSky = focusY > 0.5f
                    if (!focusInSky) {
                        envWeight = 0.3f
                    }
                }
                // 3. 肤色加权
                var skinWeight = 1.0f
                if (r > g && g > b && g > 0.001f) {
                    val rgRatio = r / g
                    val gbRatio = g / b
                    if (rgRatio in 1.1f..2.5f && gbRatio in 1.0f..3.0f) {
                        skinWeight = 3f
                    }
                }

                val finalWeight = gaussianWeight * envWeight * skinWeight

                weightedSumLog += logLuma.toDouble() * finalWeight
                totalWeight += finalWeight

                totalSumLuma += luma
                allLumas[validPixelCount++] = luma
            }
        }

        if (totalWeight < 1e-6 || validPixelCount == 0) {
            return AnalysisResult(1.0f, 0.5f, 1.0f, 0.42f)
        }

        val aperture = metadata?.aperture ?: 2f
        val shutterSpeed = metadata?.shutterSpeed?.let { it * 1f / 1_000_000_000L } ?: 0.01f
        val iso = metadata?.iso?.let { if (it > 0) it else 100 } ?: 100
        val exposureBias = metadata?.exposureBias?.let { if (it > -10 && it < 10) it else 0f } ?: 0f
//        val baselineExposure = metadata?.baselineExposure?.let { if (it > -10 && it < 10) it else 0f } ?: 0f
        val biasMultiplier = 2.0f.pow(exposureBias)

        val ev = log2((aperture * aperture) / shutterSpeed)
        val lv = (ev - log2(iso / 100f)).coerceAtLeast(0f)

        // 计算 Log 空间的加权平均亮度
        val avgLog = (weightedSumLog / totalWeight).toFloat()

        // 映射回线性空间，得到场景的“代表性亮度”
        val logCurve = logCurve
        val representativeLinearLuma = logToLinear(avgLog, logCurve)

        // 计算 P98 和 P05 用于动态范围分析
        val sortedLumas = allLumas.copyOfRange(0, validPixelCount)
        sortedLumas.sort()
        val p99Index = (validPixelCount * 0.99f).toInt().coerceIn(0, validPixelCount - 1)
        val p99Luma = sortedLumas[p99Index]
        val p999Index = (validPixelCount * 0.999f).toInt().coerceIn(0, validPixelCount - 1)
        val p999Luma = sortedLumas[p999Index]

        if (p99Luma <= 0.001f || p999Luma <= 0.001f || representativeLinearLuma <= 0.001f) {
            return AnalysisResult(1.0f, 0.5f, 1.0f, 0.42f)
        }

        val highlightSpan = p999Luma - p99Luma
        val rawHighlightAnchor = if (highlightSpan > 0.2f) {
            p999Luma
        } else {
            p99Luma
        }

        // 防止在高光不足时（如曝光保守或低对比度场景）过度提升增益
        // 在明亮场景下（LV较大），我们预期“代表性高光”不应低于某个阈值。
        // 如果 RAW 里的高光远低于该阈值，说明场景本身可能偏暗或曝光非常保守，此时不应强行拉亮。
        val anchorFloor = when {
            lv >= 13 -> 0.50f
            lv >= 10 -> 0.40f
            else -> 0.30f
        }
        val highlightAnchor = if (lv >= 8) maxOf(rawHighlightAnchor, anchorFloor) else rawHighlightAnchor

        val sceneContrast = highlightAnchor / representativeLinearLuma
        var droMode = DROMode.OFF
        var drBoost = 0f

        val preferredDROMode = metadata?.droMode ?: DROMode.OFF

        if (lv >= 10.0f) {
            if (sceneContrast > 30.0f && preferredDROMode >= DROMode.HIGH) {
                droMode = DROMode.HIGH
                drBoost = 1.0f // 增加 1.0 EV 曝光
            } else if (sceneContrast > 15.0f && preferredDROMode >= DROMode.LOW) {
                droMode = DROMode.LOW
                drBoost = 0.5f // 增加 0.5 EV 曝光
            }
        }

        // LV -> Luma 拟合函数
        // 1 -> 0.26
        // 4 -> 0.391
        // 8 -> 0.42
        // 13 -> 0.45
        val logCurveForTarget = logCurve
        val targetLumaIRE = lv / (2.087f * lv + 1.759f) / 0.391f * logCurve.middleGray
        var gain = logToLinear(targetLumaIRE, logCurveForTarget) * biasMultiplier / representativeLinearLuma

        gain = gain.coerceAtLeast(1f)

        // 应用 DR 增益补偿
        if (drBoost > 0f) {
            gain *= 2.0f.pow(drBoost)
        }

        // 7. 绝对剪裁保护
        val logCurveForGain = logCurve
        if (maxColor * gain > logCurveForGain.maxLinear) {
            gain = logCurveForGain.maxLinear / maxColor
        }

        PLog.d(TAG, "Log Analysis: EV=${ev.toInt()}, LV=${lv.toInt()}, DRO=$droMode, Contrast=${sceneContrast.toInt()}, " +
                "p99=$p99Luma p999=$p999Luma bias=$biasMultiplier max=$maxColor gain=$gain")

        return AnalysisResult(
            exposureGain = gain,
            p98Luma = p99Luma,
            maxColor = maxColor,
            weightedAvgLuma = avgLog,
            droMode = droMode
        )
    }
}
