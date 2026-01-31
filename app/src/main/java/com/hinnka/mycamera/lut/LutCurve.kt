package com.hinnka.mycamera.lut

import kotlin.math.*

enum class LutCurve {
    SRGB,
    LINEAR,
    V_LOG,
    S_LOG3,
    F_LOG2,
    LOG_C,
    APPLE_LOG,
    HLG;

    fun fromLinear(l: Float): Float {
        val linear = l.coerceIn(0f, 1f)
        return when (this) {
            SRGB -> {
                if (linear <= 0.0031308f) 12.92f * linear
                else 1.055f * linear.pow(1f / 2.4f) - 0.055f
            }
            LINEAR -> linear
            V_LOG -> {
                if (linear < 0.01f) 5.6f * linear + 0.125f
                else 0.421248f * log10(5.555556f * linear + 0.047996f) + 0.383577f
            }
            S_LOG3 -> {
                if (linear < 0.01125f) (171.2102946929f * linear + 95f) / 1023f
                else (422f * log10((linear + 0.01f) / (0.18f + 0.01f)) + 616f) / 1023f
            }
            F_LOG2 -> {
                // F-Log2 formula from Fujifilm
                if (linear < 0.00089f) 8.799461f * linear + 0.092864f
                else 0.245281f * log10(5.555556f * linear + 0.064829f) + 0.384316f
            }
            LOG_C -> {
                if (linear > 0.010591f) 0.247190f * log10(1.702f * linear + 0.043519f) + 0.385537f
                else 5.613235f * linear + 0.092809f
            }
            APPLE_LOG -> {
                // Apple Log formula from Apple Log Profile White Paper
                if (linear > 0.019242594858951f) 0.081519922730206f * ln(47.3665233297121f * linear + 0.0028231596425514f) + 0.453351173665842f
                else 9.50854453301014f * linear + 0.063718911571732f
            }
            HLG -> {
                val a = 0.17883277f
                val b = 1f - 4f * a
                val c = 0.5f - a * ln(4f * a)
                if (linear <= 1f / 12f) sqrt(3f * linear)
                else a * ln(12f * linear - b) + c
            }
        }
    }

    fun toLinear(v: Float): Float {
        val value = v.coerceIn(0f, 1f)
        return when (this) {
            SRGB -> {
                if (value <= 0.04045f) value / 12.92f
                else ((value + 0.055f) / 1.055f).pow(2.4f)
            }
            LINEAR -> value
            V_LOG -> {
                if (value < 0.181f) (value - 0.125f) / 5.6f
                else (10f.pow((value - 0.383577f) / 0.421248f) - 0.047996f) / 5.555556f
            }
            S_LOG3 -> {
                if (value < 171.2102946929f * 0.01125f / 1023f) (value * 1023f - 95f) / 171.2102946929f
                else 10f.pow((value * 1023f - 616f) / 422f) * (0.18f + 0.01f) - 0.01f
            }
            F_LOG2 -> {
                if (value < 0.100686685370811f) (value - 0.092864f) / 8.799461f
                else (10f.pow((value - 0.384316f) / 0.245281f) - 0.064829f) / 5.555556f
            }
            LOG_C -> {
                if (value > 5.613235f * 0.010591f + 0.092809f) (10f.pow((value - 0.385537f) / 0.247190f) - 0.043519f) / 1.702f
                else (value - 0.092809f) / 5.613235f
            }
            APPLE_LOG -> {
                if (value > 0.246602353f) (exp((value - 0.453351173665842f) / 0.081519922730206f) - 0.0028231596425514f) / 47.3665233297121f
                else (value - 0.063718911571732f) / 9.50854453301014f
            }
            HLG -> {
                val a = 0.17883277f
                val b = 1f - 4f * a
                val c = 0.5f - a * ln(4f * a)
                if (value <= 0.5f) (value * value) / 3f
                else (exp((value - c) / a) + b) / 12f
            }
        }
    }
}
