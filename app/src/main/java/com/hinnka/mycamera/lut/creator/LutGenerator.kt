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

        // 2. Global Contrast / Tone (applied on Lightness L)
        L = applyCurve(L, features.curves.luma)
        L = applyContrast(L, features.tone.contrast)
        L = applyHighlightsShadows(L, features.tone.highlights, features.tone.shadows)

        // 3. Black/White point
        L = L * (1f - features.tone.whitePoint - features.tone.blackPoint) + features.tone.blackPoint

        // 4. HSL Shifts
        if (hasAnyHslShift(features.hslShifts)) {
            val shift = getHslShiftForHue(H, features.hslShifts)
            // H is 0-360 degrees
            H += shift.hShift * 30f // Arbitrary scale for Hue shift, normally relative.
            if (H < 0) H += 360f
            if (H >= 360f) H -= 360f

            // C is saturation (chroma). It is unbounded, typically 0 to 0.32
            // sShift from -1 to 1 should scale C.
            // If sShift > 0, boost saturation. If < 0, reduce it.
            C *= (1.0f + shift.sShift).coerceAtLeast(0f)

            // L is Lightness 0.0 to 1.0. 
            // lShift -1 to 1 should add to L.
            L = (L + shift.lShift * 0.2f).coerceIn(0f, 1f)
        }

        // 5. Split Toning
        // Toning the shadow and highlight regions
        val shadowWeight = max(0f, 1.0f - (L / 0.5f)).pow(2.0f).coerceIn(0f, 1f)
        val highlightWeight = max(0f, (L - 0.5f) / 0.5f).pow(2.0f).coerceIn(0f, 1f)
        val midtoneWeight = (1.0f - shadowWeight - highlightWeight).coerceIn(0f, 1f)

        var oklabOut = OklchConverter.oklchToOklab(L, C, H)
        var ta = oklabOut[1]
        var tb = oklabOut[2]

        fun applyToning(target: ToningTarget, weight: Float) {
            if (target.saturation > 0f && weight > 0f) {
                // Oklab Chroma (a/b axes) max bounds are roughly [-0.3, 0.3].
                // So adding 0.1 is already a massive cinematic color shift.
                val maxChromaShift = 0.1f
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
            val sWeight = 1f - x
            ret += shadows * (sWeight * sWeight) * 0.5f
        }
        if (highlights != 0f) {
            val hWeight = x
            ret += highlights * (hWeight * hWeight) * 0.5f
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
        return shifts.red.hShift != 0f || shifts.red.sShift != 0f || shifts.red.lShift != 0f ||
                shifts.green.hShift != 0f || shifts.green.sShift != 0f || shifts.green.lShift != 0f ||
                shifts.blue.hShift != 0f || shifts.blue.sShift != 0f || shifts.blue.lShift != 0f
        // checking major ones for quick exit
    }

    private fun getHslShiftForHue(hue: Float, shifts: HslShifts): Shift {
        // Precise Oklch Hue Angles mapping for color buckets (Red 29°, Orange 60°, Yellow 105°, Green 140°, Cyan 195°, Blue 260°, Purple 295°, Magenta 330°)
        val targets = listOf(
            29f to shifts.red,
            60f to shifts.orange, // Standard orange is ~60 in Oklch
            105f to shifts.yellow,
            140f to shifts.green,
            195f to shifts.cyan,
            260f to shifts.blue,
            295f to shifts.purple,
            330f to shifts.magenta,
            389f to shifts.red // 360 + 29
        )
        val normalizedHue = if (hue < 29f) hue + 360f else hue
        // Find adjacent anchors and interpolate
        for (i in 0 until targets.size - 1) {
            val (h1, s1) = targets[i]
            val (h2, s2) = targets[i + 1]
            if (normalizedHue in h1..h2) {
                val t = (normalizedHue - h1) / (h2 - h1)
                return Shift(
                    hShift = s1.hShift * (1 - t) + s2.hShift * t,
                    sShift = s1.sShift * (1 - t) + s2.sShift * t,
                    lShift = s1.lShift * (1 - t) + s2.lShift * t
                )
            }
        }
        return Shift()
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
