package com.hinnka.mycamera.lut.creator

import kotlin.math.*

/**
 * Generator for applying the LutRecipe parameters to a color grid
 * and interpolating it into a 33x33x33 3D Matrix (Cube LUT).
 */
object LutGenerator {

    /**
     * Generate a 33x33x33 Cube LUT representation from a LutRecipe.
     * Returns a float array of size 33 * 33 * 33 * 3 
     * where each RGB element is stored sequentially.
     */
    fun generateLut(recipe: LutRecipe, size: Int = 33): FloatArray {
        val lutData = FloatArray(size * size * size * 3)
        var index = 0

        for (bIdx in 0 until size) {
            val bIn = bIdx.toFloat() / (size - 1)
            for (gIdx in 0 until size) {
                val gIn = gIdx.toFloat() / (size - 1)
                for (rIdx in 0 until size) {
                    val rIn = rIdx.toFloat() / (size - 1)

                    val (rOut, gOut, bOut) = applyRecipe(rIn, gIn, bIn, recipe.colorFeatures)

                    lutData[index++] = rOut.coerceIn(0f, 1f)
                    lutData[index++] = gOut.coerceIn(0f, 1f)
                    lutData[index++] = bOut.coerceIn(0f, 1f)
                }
            }
        }
        return lutData
    }

    private fun applyRecipe(r: Float, g: Float, b: Float, features: ColorFeatures): FloatArray {
        var lr = OklchConverter.srgbToLinear(r)
        var lg = OklchConverter.srgbToLinear(g)
        var lb = OklchConverter.srgbToLinear(b)

        // 1. Basic Tone Mapping (Exposure on Linear)
        val exposureScale = 2.0f.pow(features.tone.exposure)
        lr *= exposureScale
        lg *= exposureScale
        lb *= exposureScale

        // Convert to OKLCH for HSL Shifts & Tone Processing
        val oklab = OklchConverter.linearSrgbToOklab(lr, lg, lb)
        var (L, C, H) = OklchConverter.oklabToOklch(oklab[0], oklab[1], oklab[2])

        // Apply Global Saturation
        C *= features.tone.saturation.coerceAtLeast(0f)

        // 2. Global Contrast / Tone (applied on Lightness L)
        L = applyCurve(L, features.curves.luma)
        L = applyContrast(L, features.tone.contrast)
        L = applyHighlightsShadows(L, features.tone.highlights, features.tone.shadows)

        // 3. Black/White point (Map [0,1] to [BlackPoint, WhitePoint])
        val wp = features.tone.whitePoint
        val bp = features.tone.blackPoint
        L = (L * (wp - bp) + bp).coerceIn(0f, 1f)

        // 4. HSL Shifts
        if (hasAnyHslShift(features.hslShifts)) {
            val shift = getHslShiftForHue(H, features.hslShifts)
            
            // Universal Damping Logic:
            // 1. Chroma Gate: Only apply shifts to distinct colors. Protections neutrals (white/gray).
            // Use a higher power (3.0) for a smoother 'fade-in' from gray.
            val chromaGate = (C / 0.15f).pow(3.0f).coerceIn(0f, 1f)
            
            // 2. Luma Gate: Protect the poles (Pure White and Pure Black)
            // Use a smoother sine-based or higher-power parabola to avoid mid-range jumps.
            val lumaGate = sin(L * PI.toFloat()).pow(1.5f).coerceIn(0f, 1f)
            
            val finalDamp = (chromaGate * lumaGate).coerceIn(0f, 1f)
            
            val hShift = shift.hShift * finalDamp
            val sScale = 1.0f + (shift.sScale - 1.0f) * finalDamp
            val lScale = 1.0f + (shift.lScale - 1.0f) * finalDamp

            // H is 0-360 degrees
            H += hShift * 360f 
            if (H < 0) H += 360f
            if (H >= 360f) H -= 360f
            
            // Saturation and Lightness scaling
            C *= sScale.coerceAtLeast(0f)
            L = (L * lScale).coerceIn(0f, 1f)
        }

        // 5. Split Toning
        // Use wider, more overlapping curves for smoother blending
        val shadowWeight = (1.0f - L).pow(2.5f).coerceIn(0f, 1f)
        val highlightWeight = L.pow(2.5f).coerceIn(0f, 1f)
        val midtoneWeight = (1.0f - shadowWeight - highlightWeight).coerceIn(0f, 1f)

        var oklabOut = OklchConverter.oklchToOklab(L, C, H)
        var ta = oklabOut[1]
        var tb = oklabOut[2]

        fun applyToning(target: ToningTarget, weight: Float) {
            if (target.saturation > 0f && weight > 0f) {
                val maxChromaShift = 0.12f
                val hRad = target.hue * Math.PI.toFloat() / 180f
                ta += target.saturation * maxChromaShift * weight * cos(hRad)
                tb += target.saturation * maxChromaShift * weight * sin(hRad)
            }
        }

        applyToning(features.splitToning.shadows, shadowWeight)
        applyToning(features.splitToning.highlights, highlightWeight)
        applyToning(features.splitToning.midtones, midtoneWeight)

        // Convert back
        val rgb = OklchConverter.oklabToLinearSrgb(L, ta, tb)
        
        // Safety: Prevent negative or NaN values before WB and sRGB conversion.
        rgb[0] = rgb[0].coerceAtLeast(0f)
        rgb[1] = rgb[1].coerceAtLeast(0f)
        rgb[2] = rgb[2].coerceAtLeast(0f)

        // 6. RGB Channel Curves (Applied on Linear RGB)
        rgb[0] = applyCurve(rgb[0], features.curves.red)
        rgb[1] = applyCurve(rgb[1], features.curves.green)
        rgb[2] = applyCurve(rgb[2], features.curves.blue)

        // White balance on Linear (simplified)
        if (features.balance.temperature != 0f || features.balance.tint != 0f) {
            rgb[0] *= (1.0f + features.balance.temperature)
            rgb[2] *= (1.0f - features.balance.temperature)
            // positive tint applies MAGENTA (decreases green)
            rgb[1] *= (1.0f - features.balance.tint)
        }

        rgb[0] = OklchConverter.linearToSrgb(rgb[0])
        rgb[1] = OklchConverter.linearToSrgb(rgb[1])
        rgb[2] = OklchConverter.linearToSrgb(rgb[2])

        return rgb
    }

    private fun applyContrast(x: Float, contrast: Float): Float {
        if (contrast == 0f) return x
        return if (contrast > 0f) {
            val p = 1f + contrast * 1.5f
            val num = x.toDouble().pow(p.toDouble()).toFloat()
            val den = num + (1f - x).toDouble().pow(p.toDouble()).toFloat()
            if (den == 0f) x else num / den
        } else {
            val amount = (contrast + 1f).coerceAtLeast(0f)
            ((x - 0.5f) * amount) + 0.5f
        }
    }

    private fun applyHighlightsShadows(x: Float, highlights: Float, shadows: Float): Float {
        var ret = x
        if (shadows != 0f) {
            val sWeight = (1f - x).pow(2.0f)
            ret += shadows * sWeight * 0.4f
        }
        if (highlights != 0f) {
            val hWeight = x.pow(2.0f)
            ret += highlights * hWeight * 0.4f
        }
        return ret
    }

    private fun applyCurve(x: Float, curve: List<List<Float>>): Float {
        if (curve.isEmpty() || curve.size < 2) return x
        if (x <= curve.first()[0]) return curve.first()[1]
        if (x >= curve.last()[0]) return curve.last()[1]

        for (i in 0 until curve.size - 1) {
            val p1 = curve[i]
            val p2 = curve[i + 1]
            if (x in p1[0]..p2[0]) {
                if (p1[0] == p2[0]) return p1[1]
                val t = (x - p1[0]) / (p2[0] - p1[0])
                // Smooth hermite interpolation
                val smoothT = t * t * (3f - 2f * t)
                return p1[1] * (1f - smoothT) + p2[1] * smoothT
            }
        }
        return x
    }

    private fun hasAnyHslShift(shifts: HslShifts): Boolean {
        // Checking for any non-neutral values
        return shifts.red.hShift != 0f || shifts.red.sScale != 1f || shifts.red.lScale != 1f ||
                shifts.green.hShift != 0f || shifts.green.sScale != 1f || shifts.green.lScale != 1f ||
                shifts.blue.hShift != 0f || shifts.blue.sScale != 1f || shifts.blue.lScale != 1f
    }

    private fun getHslShiftForHue(hue: Float, shifts: HslShifts): Shift {
        val targets = listOf(
            29f to shifts.red, 60f to shifts.orange, 105f to shifts.yellow,
            140f to shifts.green, 195f to shifts.cyan, 260f to shifts.blue,
            295f to shifts.purple, 330f to shifts.magenta
        )
        val n = targets.size
        val normalizedHue = if (hue < 29f) hue + 360f else hue

        // Find the index of the anchor just before our hue
        var i = 0
        while (i < n) {
            val h1 = if (i == 0) targets[0].first else targets[i].first
            val h2 = if (i == n - 1) targets[0].first + 360f else targets[i+1].first
            if (normalizedHue >= h1 && normalizedHue < h2) break
            i++
        }
        if (i >= n) i = n - 1

        // Catmull-Rom Spline Interpolation (4 points: p0, p1, p2, p3)
        // This ensures the slope (tangent) is continuous at every anchor point.
        val idx0 = (i - 1 + n) % n
        val idx1 = i
        val idx2 = (i + 1) % n
        val idx3 = (i + 2) % n

        val p0 = targets[idx0].second
        val p1 = targets[idx1].second
        val p2 = targets[idx2].second
        val p3 = targets[idx3].second

        val h1 = targets[idx1].first
        var h2 = targets[idx2].first
        if (h2 <= h1) h2 += 360f
        
        val t = (normalizedHue - h1) / (h2 - h1)

        fun catmullRom(v0: Float, v1: Float, v2: Float, v3: Float, t: Float): Float {
            val t2 = t * t
            val t3 = t2 * t
            return 0.5f * (
                (2f * v1) +
                (-v0 + v2) * t +
                (2f * v0 - 5f * v1 + 4f * v2 - v3) * t2 +
                (-v0 + 3f * v1 - 3f * v2 + v3) * t3
            )
        }

        return Shift(
            hShift = catmullRom(p0.hShift, p1.hShift, p2.hShift, p3.hShift, t),
            sScale = catmullRom(p0.sScale, p1.sScale, p2.sScale, p3.sScale, t),
            lScale = catmullRom(p0.lScale, p1.lScale, p2.lScale, p3.lScale, t)
        )
    }

    /**
     * Converts raw 3D FloatArray back to the .cube file format as a String
     */
    fun exportToCubeString(lutData: FloatArray, size: Int = 33, title: String = "Custom LUT"): String {
        val sb = StringBuilder()
        sb.append("TITLE \"").append(title).append("\"\n")
        sb.append("LUT_3D_SIZE ").append(size).append("\n")
        sb.append("DOMAIN_MIN 0.0 0.0 0.0\n")
        sb.append("DOMAIN_MAX 1.0 1.0 1.0\n\n")

        var index = 0
        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 0 until size) {
                    val rVal = lutData[index++]
                    val gVal = lutData[index++]
                    val bVal = lutData[index++]
                    sb.append(String.format(java.util.Locale.US, "%.6f %.6f %.6f\n", rVal, gVal, bVal))
                }
            }
        }
        return sb.toString()
    }
}
