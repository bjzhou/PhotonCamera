package com.hinnka.mycamera.lut.creator

import android.graphics.Bitmap
import android.graphics.Color
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlin.math.max
import kotlin.math.min

object LocalImageAnalyzer {

    /**
     * Analyzes the given images and extracts a simplistic representation of their combined style
     * as a LutRecipe.
     * NOTE: This is a fast, heuristic-based approach. For more accurate semantic extraction,
     * use the OpenAI/ML models.
     */
    suspend fun analyzeImages(bitmaps: List<Bitmap>): LutRecipe = withContext(Dispatchers.Default) {
        val maxDim = 256
        var totalLuma = 0f
        var warmCount = 0
        var coolCount = 0
        var greenCount = 0
        var magentaCount = 0

        var hlX = 0f;
        var hlY = 0f;
        var hlCount = 0
        var midX = 0f;
        var midY = 0f;
        var midCount = 0
        var shX = 0f;
        var shY = 0f;
        var shCount = 0

        var shadowLumaSum = 0f
        var highlightLumaSum = 0f

        val hueCounts = IntArray(8)
        val hueSatSums = FloatArray(8)
        val hsv = FloatArray(3)

        var totalPixels = 0
        var totalSatSum = 0f
        // We do not know total size in advance for lumaList, so we use a mutable list
        // but for performance we can calculate total pixels first
        for (bitmap in bitmaps) {
            var w = bitmap.width
            var h = bitmap.height
            if (w > maxDim || h > maxDim) {
                val scale = maxDim.toFloat() / max(w, h)
                w = (w * scale).toInt()
                h = (h * scale).toInt()
            }
            totalPixels += w * h
        }

        val lumaList = FloatArray(totalPixels)
        var idx = 0

        for (bitmap in bitmaps) {
            var w = bitmap.width
            var h = bitmap.height
            if (w > maxDim || h > maxDim) {
                val scale = maxDim.toFloat() / max(w, h)
                w = (w * scale).toInt()
                h = (h * scale).toInt()
            }

            val scaled = if (w != bitmap.width || h != bitmap.height) {
                Bitmap.createScaledBitmap(bitmap, w, h, true)
            } else {
                bitmap
            }

            val pixels = IntArray(scaled.width * scaled.height)
            scaled.getPixels(pixels, 0, scaled.width, 0, 0, scaled.width, scaled.height)

            for (color in pixels) {
                val r = Color.red(color) / 255f
                val g = Color.green(color) / 255f
                val b = Color.blue(color) / 255f

                val luma = 0.2126f * r + 0.7152f * g + 0.0722f * b
                lumaList[idx++] = luma
                totalLuma += luma

                // Simple warmth/tint metric
                if (r > b + 0.05f) warmCount++ else if (b > r + 0.05f) coolCount++
                if (g > (r + b) / 2f + 0.05f) greenCount++ else if ((r + b) / 2f > g + 0.05f) magentaCount++

                Color.colorToHSV(color, hsv)
                val hue = hsv[0]
                val sat = hsv[1]
                totalSatSum += sat
                val hueRad = Math.toRadians(hue.toDouble())

                // Saturation weighted vector
                val vx = (Math.cos(hueRad) * sat).toFloat()
                val vy = (Math.sin(hueRad) * sat).toFloat()

                // Luma region assignment for Split Toning & Shadows/Highlights
                if (luma > 0.7f) {
                    hlCount++
                    hlX += vx
                    hlY += vy
                    highlightLumaSum += luma
                } else if (luma < 0.3f) {
                    shCount++
                    shX += vx
                    shY += vy
                    shadowLumaSum += luma
                } else {
                    midCount++
                    midX += vx
                    midY += vy
                }

                // HSL Shifts bucket assignment
                if (sat > 0.01f) { // Include almost all pixels with some color info
                    val bucket = when {
                        hue < 15f || hue >= 345f -> 0 // Red
                        hue < 45f -> 1 // Orange
                        hue < 75f -> 2 // Yellow
                        hue < 165f -> 3 // Green
                        hue < 195f -> 4 // Cyan
                        hue < 255f -> 5 // Blue
                        hue < 285f -> 6 // Purple
                        else -> 7 // Magenta
                    }
                    hueCounts[bucket]++
                    hueSatSums[bucket] += sat
                }
            }

            if (scaled != bitmap) {
                scaled.recycle()
            }
        }

        // 1. Exposure & Contrast
        if (totalPixels == 0) return@withContext LutRecipe()

        val avgLuma = totalLuma / totalPixels
        // Reduce parametric weights since Tone Curve extraction handles macro contrast better
        val exposureEst = ((avgLuma - 0.4f) * 0.5f).coerceIn(-0.5f, 0.5f)

        lumaList.sort()
        val p10 = lumaList[(lumaList.size * 0.1).toInt()]
        val p90 = lumaList[(lumaList.size * 0.9).toInt()]
        val contrastEst = ((p90 - p10) - 0.65f) * 0.2f

        // Highlights & Shadows
        val avgHighlightLuma = if (hlCount > 0) highlightLumaSum / hlCount else 0.85f
        val avgShadowLuma = if (shCount > 0) shadowLumaSum / shCount else 0.15f
        val highlightsEst = ((avgHighlightLuma - 0.85f) * 0.8f).coerceIn(-0.3f, 0.3f)
        val shadowsEst = ((avgShadowLuma - 0.15f) * 0.8f).coerceIn(-0.3f, 0.3f)

        // 5. Build Macro Tone Curve (CDF Histogram Matching)
        val lumaCurve = mutableListOf<List<Float>>()
        // Allow higher lift for faded film blacks (up to 0.18)
        lumaCurve.add(listOf(0f, lumaList.first().coerceIn(0f, 0.18f)))
        for (i in 1..9) {
            val pX = i * 0.1f // 0.1, 0.2 ... 0.9 input neutral
            val pY = lumaList[(lumaList.size * pX).toInt()]
            // Strongly favor the original photo's histogram (80% photo / 20% linear anchor)
            val blendedY = pX * 0.2f + pY * 0.8f
            lumaCurve.add(listOf(pX, blendedY.coerceIn(0f, 1f)))
        }
        // Allow deeper compressed highlights
        lumaCurve.add(listOf(1f, lumaList.last().coerceIn(0.85f, 1f)))

        // 2. White Balance / Temperature & Tint
        val tempEst = if (warmCount + coolCount > 0) {
            val ratio = warmCount.toFloat() / (warmCount + coolCount)
            (ratio - 0.5f) * 0.4f
        } else {
            0f
        }

        val tintEst = if (magentaCount + greenCount > 0) {
            val ratio = magentaCount.toFloat() / (magentaCount + greenCount)
            (ratio - 0.5f) * 0.3f
        } else {
            0f
        }

        // 3. Split Toning
        fun getToningTarget(xSum: Float, ySum: Float, count: Int, satMultiplier: Float = 1.0f): ToningTarget {
            if (count < totalPixels * 0.05f) return ToningTarget()
            val avgX = xSum / count
            val avgY = ySum / count
            var h = Math.toDegrees(Math.atan2(avgY.toDouble(), avgX.toDouble())).toFloat()
            if (h < 0) h += 360f
            // Extract Oklab chroma and scale broadly to 0.0-1.0 mapping range. 
            // Reduced max multiplier from 2.0 to 1.0 to prevent overly thick color grading
            val s = min(1f, Math.sqrt((avgX * avgX + avgY * avgY).toDouble()).toFloat()) * 1.0f * satMultiplier
            return ToningTarget(hue = h, saturation = s)
        }

        val hlToning = getToningTarget(hlX, hlY, hlCount)
        val shToning = getToningTarget(shX, shY, shCount)
        // Midtones naturally contain the entire scene's average color. 
        // We dampen its split-toning extraction heavily to prevent washing the entire image.
        val midToning = getToningTarget(midX, midY, midCount, 0.1f)

        // 4. HSL Shifts Evaluator
        val avgSatGlobal = if (totalPixels > 0) totalSatSum / totalPixels else 0f

        fun getShiftSat(bucketIndex: Int): Float {
            // Use global average as baseline if this specific color is missing
            val bucketAvgSat = if (hueCounts[bucketIndex] > totalPixels * 0.005f) {
                hueSatSums[bucketIndex] / hueCounts[bucketIndex]
            } else {
                avgSatGlobal
            }

            val neutralSat = 0.35f // "Standard" photo saturation baseline in HSV
            // Using a multiplier that maps 0.0 to ~ -1.0
            return ((bucketAvgSat - neutralSat) * 2.85f).coerceIn(-1.0f, 1.0f)
        }

        LutRecipe(
            colorFeatures = ColorFeatures(
                tone = Tone(
                    exposure = exposureEst,
                    contrast = contrastEst,
                    highlights = highlightsEst,
                    shadows = shadowsEst
                ),
                balance = Balance(
                    temperature = tempEst,
                    tint = tintEst
                ),
                splitToning = SplitToning(
                    shadows = shToning,
                    midtones = midToning,
                    highlights = hlToning
                ),
                hslShifts = HslShifts(
                    red = Shift(sShift = getShiftSat(0)),
                    orange = Shift(sShift = getShiftSat(1)),
                    yellow = Shift(sShift = getShiftSat(2)),
                    green = Shift(sShift = getShiftSat(3)),
                    cyan = Shift(sShift = getShiftSat(4)),
                    blue = Shift(sShift = getShiftSat(5)),
                    purple = Shift(sShift = getShiftSat(6)),
                    magenta = Shift(sShift = getShiftSat(7))
                ),
                curves = Curves(
                    luma = lumaCurve
                )
            )
        )
    }
}
