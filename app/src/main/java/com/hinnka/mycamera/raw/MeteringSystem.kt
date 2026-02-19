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

    // F-Log2 官方参数 (Fujifilm Official)
    private const val FLOG2_A = 5.555556f
    private const val FLOG2_B = 0.064829f
    private const val FLOG2_C = 0.245281f
    private const val FLOG2_D = 0.384316f
    private const val FLOG2_E = 8.799461f
    private const val FLOG2_F = 0.092864f

    // 临界点
    private const val CUT1 = 0.000889f // Linear 边界
    private const val CUT2 = 0.100686685f // F-Log2 边界 (IRE)

    // 目标定标点
    private const val TARGET_MID_GRAY_IRE = 0.40f // 稍微过曝一点，让画面更通透
    private const val WHITE_90_IRE = 0.58f        // 标准 90% 白点

    // F-Log2 曲线的绝对正向映射上限
    private const val F_LOG2_MAX_LINEAR = 58.28f

    data class AnalysisResult(
        val exposureGain: Float,
        val p98Luma: Float,
        val maxColor: Float,
        val weightedAvgLuma: Float,
        val droMode: DROMode = DROMode.OFF
    )

    /**
     * 将线性反射率 (Scene Linear Reflection) 转换为 F-Log2 (0..1)
     */
    private fun linearToFLog2(reflection: Float): Float {
        return if (reflection >= CUT1) {
            FLOG2_C * kotlin.math.log10(FLOG2_A * reflection.toDouble() + FLOG2_B).toFloat() + FLOG2_D
        } else {
            FLOG2_E * reflection + FLOG2_F
        }
    }

    /**
     * 将 F-Log2 (0..1) 还原为线性反射率
     */
    private fun flog2ToLinear(flog2: Float): Float {
        return if (flog2 >= CUT2) {
            ((10.0.pow((flog2 - FLOG2_D).toDouble() / FLOG2_C)) - FLOG2_B).toFloat() / FLOG2_A
        } else {
            (flog2 - FLOG2_F) / FLOG2_E
        }
    }

    fun analyze(
        floatBuffer: FloatBuffer,
        width: Int,
        height: Int,
        focusX: Float,
        focusY: Float,
        metadata: RawMetadata?
    ): AnalysisResult {
        val pixelCount = width * height
        val allLumas = FloatArray(pixelCount)
        var validPixelCount = 0

        val sigma = 0.35f // 建议稍微再扩大一点
        val sigmaSq2 = 2.0f * sigma * sigma
        val baseWeight = 0.15f // 增加基础权重，让环境（田地）更多参与

        var totalWeight = 0.0
        var weightedSumFLog2 = 0.0 // 在 F-Log2 空间累加
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

                // 转换到 F-Log2 空间进行测光分析
                val flog2Luma = linearToFLog2(luma)

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

                weightedSumFLog2 += flog2Luma.toDouble() * finalWeight
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
        val baselineExposure = metadata?.baselineExposure?.let { if (it > -10 && it < 10) it else 0f } ?: 0f
        val biasMultiplier = 2.0f.pow(baselineExposure + exposureBias)

        val ev = log2((aperture * aperture) / shutterSpeed)
        val lv = ev - log2(iso / 100f)

        // 计算 F-Log2 空间的加权平均亮度
        val avgFLog2 = (weightedSumFLog2 / totalWeight).toFloat()

        // 映射回线性空间，得到场景的“代表性亮度”
        val representativeLinearLuma = flog2ToLinear(avgFLog2)

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
        var gain = flog2ToLinear(lv / (2.087f * lv + 1.759f)) * biasMultiplier / representativeLinearLuma

        // 应用 DR 增益补偿
        if (drBoost > 0f) {
            gain *= 2.0f.pow(drBoost)
        }

        // 7. 绝对剪裁保护
        if (maxColor * gain > F_LOG2_MAX_LINEAR) {
            gain = F_LOG2_MAX_LINEAR / maxColor
        }

        PLog.d(TAG, "F-Log2 Analysis: EV=${ev.toInt()}, LV=${lv.toInt()}, DRO=$droMode, Contrast=${sceneContrast.toInt()}, " +
                "p99=$p99Luma p999=$p999Luma bias=$biasMultiplier max=$maxColor gain=$gain")

        return AnalysisResult(
            exposureGain = gain,
            p98Luma = p99Luma,
            maxColor = maxColor,
            weightedAvgLuma = avgFLog2,
            droMode = droMode
        )
    }
}
