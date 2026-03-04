package com.hinnka.mycamera.lut.creator

import android.graphics.Bitmap
import android.graphics.Color
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow

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
        val hueLumaSums = FloatArray(8)
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

                // Use proper linear conversion and Oklab L for all analysis
                val lr = OklchConverter.srgbToLinear(r)
                val lg = OklchConverter.srgbToLinear(g)
                val lb = OklchConverter.srgbToLinear(b)
                val oklab = OklchConverter.linearSrgbToOklab(lr, lg, lb)
                val luma = oklab[0]
                
                lumaList[idx++] = luma
                totalLuma += luma

                // Simple warmth/tint metric
                if (r > b + 0.05f) warmCount++ else if (b > r + 0.05f) coolCount++
                if (g > (r + b) / 2f + 0.05f) greenCount++ else if ((r + b) / 2f > g + 0.05f) magentaCount++

                val (L, C, H) = OklchConverter.oklabToOklch(oklab[0], oklab[1], oklab[2])
                totalSatSum += C
                val hueRad = Math.toRadians(H.toDouble())

                // Saturation weighted vector (using Oklab Chroma)
                val vx = (Math.cos(hueRad) * C).toFloat()
                val vy = (Math.sin(hueRad) * C).toFloat()

                // Luma region assignment (using Oklab L)
                if (luma > 0.8f) {
                    hlCount++
                    hlX += vx
                    hlY += vy
                    highlightLumaSum += luma
                } else if (luma < 0.2f) {
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
                if (C > 0.01f) { 
                    val bucket = when {
                        H < 29f || H >= 330f + (360 - 330 + 29) / 2f -> 0 // Red
                        H < 60f -> 1 // Orange
                        H < 105f -> 2 // Yellow
                        H < 140f -> 3 // Green
                        H < 195f -> 4 // Cyan
                        H < 260f -> 5 // Blue
                        H < 295f -> 6 // Purple
                        else -> 7 // Magenta
                    }
                    hueCounts[bucket]++
                    hueSatSums[bucket] += C
                    hueLumaSums[bucket] += luma
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
        // Highlights & Shadows
        val avgHighlightLuma = if (hlCount > 0) highlightLumaSum / hlCount else 0.85f
        val avgShadowLuma = if (shCount > 0) shadowLumaSum / shCount else 0.15f
        // Reduce parametric weights: curve handles tone mapping better
        val highlightsEst = ((avgHighlightLuma - 0.85f) * 0.3f).coerceIn(-0.15f, 0.15f)
        val shadowsEst = ((avgShadowLuma - 0.15f) * 0.5f).coerceIn(-0.2f, 0.2f)

        // 5. Build Macro Tone Curve (Look extraction)
        val lumaCurve = mutableListOf<List<Float>>()
        lumaCurve.add(listOf(0f, lumaList.first().coerceIn(0f, 0.12f))) 
        for (i in 1..9) {
            val pX = i * 0.1f
            val pY = lumaList[(lumaList.size * pX).toInt()]
            
            // Balanced weights to preserve curve style: 60% histogram influence
            // Use smooth threshold to protect highlights (L > 0.85)
            val protection = max(0f, (pX - 0.85f) / 0.15f).pow(1.5f)
            val photoWeight = (0.6f * (1f - protection)).coerceIn(0f, 0.6f)
            
            val blendedY = pX * (1f - photoWeight) + pY * photoWeight
            lumaCurve.add(listOf(pX, blendedY.coerceIn(0f, 1f)))
        }
        lumaCurve.add(listOf(1f, 1f))

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
            // Reduce saturation extraction weight to prevent overly aggressive color casts
            val s = min(1f, Math.sqrt((avgX * avgX + avgY * avgY).toDouble()).toFloat()) * 0.4f * satMultiplier
            return ToningTarget(hue = h, saturation = s)
        }

        val hlToning = getToningTarget(hlX, hlY, hlCount)
        val shToning = getToningTarget(shX, shY, shCount)
        // Midtones naturally contain the entire scene's average color. 
        // We dampen its split-toning extraction heavily to prevent washing the entire image.
        val midToning = getToningTarget(midX, midY, midCount, 0.1f)

        // 4. HSL Shifts Evaluator
        val neutralSat = 0.08f // Baseline in Oklab Chroma (C) is much lower than HSV Sat
        val avgSatGlobal = if (totalPixels > 0) totalSatSum / totalPixels else neutralSat
        val saturationEst = (1.0f + ln(max(0.01f, avgSatGlobal / neutralSat)) * 0.4f).coerceIn(0.7f, 1.4f)
        
        val hueLumaBaselines = floatArrayOf(0.4f, 0.6f, 0.8f, 0.65f, 0.6f, 0.35f, 0.45f, 0.5f)

        val rawShifts = Array(8) { bucketIndex ->
            if (hueCounts[bucketIndex] < totalPixels * 0.005f) return@Array Shift()
            val bucketAvgSat = hueSatSums[bucketIndex] / hueCounts[bucketIndex]
            val bucketAvgLuma = hueLumaSums[bucketIndex] / hueCounts[bucketIndex]
            val baseLuma = hueLumaBaselines[bucketIndex]
            
            // Raw scales
            Shift(
                sScale = (1.0f + ln(max(0.1f, bucketAvgSat / neutralSat))).coerceIn(0.4f, 2.0f),
                lScale = (1.0f + ln(max(0.1f, bucketAvgLuma / baseLuma)) * 0.5f).coerceIn(0.5f, 1.6f)
            )
        }

        // Banding Prevention: Circular smoothing on HSL buckets (moving average)
        fun getSmoothedShift(index: Int): Shift {
            var sumS = 0f
            var sumL = 0f
            val neighbors = listOf(-1, 0, 1) // kernel
            for (offset in neighbors) {
                val i = (index + offset + 8) % 8
                sumS += rawShifts[i].sScale
                sumL += rawShifts[i].lScale
            }
            return Shift(sScale = sumS / 3f, lScale = sumL / 3f)
        }

        val smoothedHsl = HslShifts(
            red = getSmoothedShift(0),
            orange = getSmoothedShift(1),
            yellow = getSmoothedShift(2),
            green = getSmoothedShift(3),
            cyan = getSmoothedShift(4),
            blue = getSmoothedShift(5),
            purple = getSmoothedShift(6),
            magenta = getSmoothedShift(7)
        )

        LutRecipe(
            colorFeatures = ColorFeatures(
                tone = Tone(
                    exposure = exposureEst,
                    contrast = contrastEst,
                    saturation = saturationEst,
                    highlights = highlightsEst,
                    shadows = shadowsEst
                ),
                balance = Balance(temperature = tempEst, tint = tintEst),
                splitToning = SplitToning(shadows = shToning, midtones = midToning, highlights = hlToning),
                hslShifts = smoothedHsl,
                curves = Curves(luma = lumaCurve)
            )
        )
    }
}
