package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.SplineInterpolator
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
        val curveLut: FloatArray,
    ) {
        override fun equals(other: Any?): Boolean {
            if (this === other) return true
            if (javaClass != other?.javaClass) return false

            other as AnalysisResult

            if (exposureGain != other.exposureGain) return false
            if (!curveLut.contentEquals(other.curveLut)) return false

            return true
        }

        override fun hashCode(): Int {
            var result = exposureGain.hashCode()
            result = 31 * result + curveLut.contentHashCode()
            return result
        }
    }

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
        var maxLuma = 0.0f
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

                if (luma > maxLuma) maxLuma = luma

                // 转换到 Log 空间进行测光分析
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
                        skinWeight = 5f
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
            return AnalysisResult(1.0f, floatArrayOf(0f, 1f))
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
        val representativeLinearLuma = logToLinear(avgLog, logCurve)

        // 计算 P98 和 P05 用于动态范围分析
        val sortedLumas = allLumas.copyOfRange(0, validPixelCount)
        sortedLumas.sort()
        val p99Index = (validPixelCount * 0.99f).toInt().coerceIn(0, validPixelCount - 1)
        val p99Luma = sortedLumas[p99Index]
        val p999Index = (validPixelCount * 0.999f).toInt().coerceIn(0, validPixelCount - 1)
        val p999Luma = sortedLumas[p999Index]

        if (p99Luma <= 0.001f || p999Luma <= 0.001f || representativeLinearLuma <= 0.001f) {
            return AnalysisResult(1.0f, floatArrayOf(0f, 1f))
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
            if (sceneContrast > 15.0f && preferredDROMode >= DROMode.HIGH) {
                droMode = DROMode.HIGH
                drBoost = 1.0f // 增加 1.0 EV 曝光
            } else if (sceneContrast > 8.0f && preferredDROMode >= DROMode.LOW) {
                droMode = DROMode.LOW
                drBoost = 0.5f // 增加 0.5 EV 曝光
            }
        }

        val targetLumaIRE = logCurve.middleGray * 1.05f
        val targetLinearLuma = logToLinear(targetLumaIRE, logCurve)
        var gain = targetLinearLuma * biasMultiplier / representativeLinearLuma

        gain = gain.coerceAtLeast(1f)

        // 应用 DR 增益补偿
        if (drBoost > 0f) {
            gain *= 2.0f.pow(drBoost)
        }

        // 7. 绝对剪裁保护
        if (logCurve != LogCurve.SRGB && maxLuma * gain > logCurve.maxLinear) {
            gain = logCurve.maxLinear / maxLuma
        }

        // 6. 动态生成 S 曲线控制点
        val points = mutableListOf<Pair<Float, Float>>()
        points.add(0f to 0f)
        points.add(0.015f to 0.005f)
        points.add(0.052f to 0.036f)
        points.add(0.217f to 0.217f)
        points.add(0.531f to 0.579f)

        val maxTarget = maxLuma * gain
        if (maxTarget > logCurve.maxLinear) {
            points.add(logCurve.maxLinear to logCurve.maxLinear * 0.9f)
            points.add(maxTarget to logCurve.maxLinear)
        } else {
            if (maxTarget > 0.531f) {
                points.add(maxTarget to maxTarget)
            }
            points.add(logCurve.maxLinear to logCurve.maxLinear)
        }

        val finalX = mutableListOf<Float>()
        val finalY = mutableListOf<Float>()

        for (i in 0 until points.size) {
            finalX.add(linearToLog(points[i].first, logCurve))
            // LUT 存储物理线性目标亮度，配合 Shader 在线性域应用
            finalY.add(points[i].second)
        }

        // 生成最终曲线 LUT
        val interpolator = SplineInterpolator(finalX.toFloatArray(), finalY.toFloatArray())
        val curveLut = interpolator.generateLut(256)

        PLog.d(
            TAG, "Log Analysis: EV=${ev.toInt()}, LV=${lv.toInt()}, DRO=$droMode, Contrast=$sceneContrast, " +
                    "p99=$p99Luma p999=$p999Luma bias=$biasMultiplier max=$maxLuma gain=$gain points=$finalX,$finalY"
        )

        return AnalysisResult(
            exposureGain = gain,
            curveLut = curveLut
        )
    }

}
