package com.hinnka.mycamera.lut.creator

import kotlin.math.*

/**
 * Utility for converting between sRGB, Linear sRGB, Oklab, and Oklch.
 */
@Suppress("FloatingPointLiteralPrecision")
object OklchConverter {

    // Converts sRGB (0-1) to Linear sRGB (0-1)
    fun srgbToLinear(c: Float): Float {
        return if (c <= 0.04045f) {
            c / 12.92f
        } else {
            ((c + 0.055f) / 1.055f).pow(2.4f)
        }
    }

    // Converts Linear sRGB (0-1) to sRGB (0-1)
    fun linearToSrgb(c: Float): Float {
        return if (c <= 0.0031308f) {
            12.92f * c
        } else {
            1.055f * c.pow(1.0f / 2.4f) - 0.055f
        }
    }

    // Convert Linear sRGB to Oklab
    fun linearSrgbToOklab(r: Float, g: Float, b: Float): FloatArray {
        val l = 0.4122214708f * r + 0.5363325363f * g + 0.0514459929f * b
        val m = 0.2119034982f * r + 0.6806995451f * g + 0.1073969566f * b
        val s = 0.0883024619f * r + 0.2817188376f * g + 0.6299787005f * b

        val lRoot = Math.cbrt(l.toDouble()).toFloat()
        val mRoot = Math.cbrt(m.toDouble()).toFloat()
        val sRoot = Math.cbrt(s.toDouble()).toFloat()

        val lOut = 0.2104542553f * lRoot + 0.7936177850f * mRoot - 0.0040720468f * sRoot
        val aOut = 1.9779984951f * lRoot - 2.4285922050f * mRoot + 0.4505937099f * sRoot
        val bOut = 0.0259040371f * lRoot + 0.7827717662f * mRoot - 0.8086757660f * sRoot

        return floatArrayOf(lOut, aOut, bOut)
    }

    // Convert Oklab to Linear sRGB
    fun oklabToLinearSrgb(L: Float, a: Float, b: Float): FloatArray {
        val l_ = L + 0.3963377774f * a + 0.2158037573f * b
        val m_ = L - 0.1055613458f * a - 0.0638541728f * b
        val s_ = L - 0.0894841775f * a - 1.2914855480f * b

        val l = l_ * l_ * l_
        val m = m_ * m_ * m_
        val s = s_ * s_ * s_

        val r = 4.0767416621f * l - 3.3077115913f * m + 0.2309699292f * s
        val g = -1.2684380046f * l + 2.6097574011f * m - 0.3413193965f * s
        val b_out = -0.0041960863f * l - 0.7034186147f * m + 1.7076147010f * s

        return floatArrayOf(r, g, b_out)
    }

    // Oklab to Oklch (L, C, H) where H is in degrees [0, 360)
    fun oklabToOklch(lIn: Float, a: Float, bIn: Float): FloatArray {
        val cOut = sqrt(a * a + bIn * bIn)
        var hOut = atan2(bIn, a) * 180f / PI.toFloat()
        if (hOut < 0) hOut += 360f
        return floatArrayOf(lIn, cOut, hOut)
    }

    // Oklch to Oklab
    fun oklchToOklab(lIn: Float, cIn: Float, hIn: Float): FloatArray {
        val hRad = hIn * PI.toFloat() / 180f
        val aOut = cIn * cos(hRad)
        val bOut = cIn * sin(hRad)
        return floatArrayOf(lIn, aOut, bOut)
    }
}
