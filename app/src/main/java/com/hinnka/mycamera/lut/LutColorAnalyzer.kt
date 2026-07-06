package com.hinnka.mycamera.lut

import android.graphics.Color
import androidx.core.graphics.ColorUtils

/**
 * LUT 色彩倾向分析器
 */
object LutColorAnalyzer {

    /**
     * 分析 LUT 的色彩倾向性
     * @return 平均 RGB 偏移向量 [dR, dG, dB]
     */
    fun analyzeTendency(lutConfig: LutConfig): FloatArray {
        val buffer = lutConfig.toFloatBuffer()
        val size = lutConfig.size
        val count = size * size * size
        
        var rSum = 0f
        var gSum = 0f
        var bSum = 0f

        buffer.position(0)
        for (i in 0 until count) {
            rSum += buffer.get()
            gSum += buffer.get()
            bSum += buffer.get()
        }

        // 计算平均输出颜色
        val avgR = rSum / count
        val avgG = gSum / count
        val avgB = bSum / count

        // 返回平均输出颜色作为倾向性
        return floatArrayOf(avgR, avgG, avgB)
    }

    /**
     * 计算目标颜色与 LUT 倾向性的匹配度 (0.0 ~ 1.0)
     */
    fun calculateSuitability(targetColor: Int, tendency: FloatArray): Float {
        val targetHsl = FloatArray(3)
        ColorUtils.colorToHSL(targetColor, targetHsl)

        val tendencyRgb = IntArray(3) { i -> (tendency[i] * 255f).toInt().coerceIn(0, 255) }
        val tendencyHsl = FloatArray(3)
        ColorUtils.RGBToHSL(tendencyRgb[0], tendencyRgb[1], tendencyRgb[2], tendencyHsl)

        // 1. 色相匹配度 (Hue)
        val hueDiff = Math.abs(targetHsl[0] - tendencyHsl[0])
        val hueScore = 1.0f - (Math.min(hueDiff, 360f - hueDiff) / 180f)

        // 2. 饱和度贡献 (如果倾向色饱和度高且方向一致，加分)
        val saturationScore = tendencyHsl[1]

        // 综合得分 (色相权重 80%，饱和度权重 20%)
        return hueScore * 0.8f + saturationScore * 0.2f
    }
}
