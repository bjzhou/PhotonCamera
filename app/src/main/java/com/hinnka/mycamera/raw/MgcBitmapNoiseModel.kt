package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog
import kotlin.math.ln
import kotlin.math.sqrt

/**
 * ISO-indexed MGC noise model for ISP-rendered bitmaps (JPEG/HEIF/YUV captures), in the linear
 * (inverse sRGB transfer) working RGB with white balance (1, 1, 1).
 *
 * Each [Calibration] comes from tools/bitmap_noise_calibration/calibrate.py and follows the
 * DemosaicNoisePropagationCalibrator conventions: MGC RGB->YUV matrix, NoiseModel.Scale(2)
 * (read x4, shot x2), Cb/Cr sharing the luma signal-dependent slice, and 128-bin half-bin
 * directional spectra normalized to mean 1. Between calibrated ISOs every coefficient and
 * spectrum bin is interpolated linearly in log(ISO); outside the calibrated range the nearest
 * calibration applies.
 */
internal object MgcBitmapNoiseModel {
    private const val TAG = "MgcBitmapNoiseModel"

    data class Calibration(
        val iso: Int,
        /** Un-scaled linear luma variance: read + shot * s + quadratic * s^2, for the tuning SNR. */
        val lumaRead: Float,
        val lumaShot: Float,
        val lumaQuadratic: Float,
        /**
         * Luma noise variance kept by a factor-2 / factor-4 box downsample. The noise is spatially
         * correlated, so these exceed 1/4 and 1/16; the detail map compares coarse local
         * variance against the model scaled by them.
         */
        val boxVarianceRatio2: Float,
        val boxVarianceRatio4: Float,
        val denoiserModel: MgcFullResolutionDenoise.PreparedYuvNoiseModel,
    ) {
        /** Un-scaled linear luma noise variance at [signal]. */
        fun lumaVariance(signal: Float): Float {
            val s = signal.coerceAtLeast(0f)
            return lumaRead + lumaShot * s + lumaQuadratic * s * s
        }

        /** MGC tuning coordinate at the image's mean linear luma, as withMgcRenderTuning() for RAW. */
        fun tuningSnr(meanLinearLuma: Float): Float {
            val signal = meanLinearLuma.coerceAtLeast(0f)
            val variance = lumaRead + lumaShot * signal + lumaQuadratic * signal * signal
            return if (variance > 0f) signal / sqrt(variance) else 0f
        }
    }

    /**
     * The model for a capture at [iso]. Without an ISO the lowest calibration applies: it assumes
     * the least noise and so removes the least detail.
     */
    fun forIso(iso: Int?): Calibration {
        val calibrations = MgcBitmapNoiseCalibrations.ENTRIES
        check(calibrations.isNotEmpty() && calibrations.zipWithNext().all { (a, b) -> a.iso < b.iso }) {
            "Bitmap noise calibrations must be non-empty and strictly ascending by ISO"
        }
        val validIso = iso?.takeIf { it > 0 }
        if (validIso == null) {
            PLog.w(TAG, "Bitmap has no ISO; using the ISO ${calibrations.first().iso} calibration")
            return calibrations.first()
        }
        if (validIso <= calibrations.first().iso) return calibrations.first()
        if (validIso >= calibrations.last().iso) return calibrations.last()
        val upperIndex = calibrations.indexOfFirst { it.iso >= validIso }
        val lower = calibrations[upperIndex - 1]
        val upper = calibrations[upperIndex]
        if (upper.iso == validIso) return upper
        val amount = ((ln(validIso.toFloat()) - ln(lower.iso.toFloat())) /
            (ln(upper.iso.toFloat()) - ln(lower.iso.toFloat()))).coerceIn(0f, 1f)
        return interpolate(lower, upper, amount, validIso)
    }

    /** Identifies the model [forIso] resolves to, for caches of denoised output. */
    fun cacheSignature(iso: Int?): String {
        val model = forIso(iso)
        val crc = java.util.zip.CRC32()
        fun add(value: Float) {
            val bits = value.toRawBits()
            crc.update(byteArrayOf((bits ushr 24).toByte(), (bits ushr 16).toByte(), (bits ushr 8).toByte(), bits.toByte()))
        }
        add(model.lumaRead)
        add(model.lumaShot)
        add(model.lumaQuadratic)
        add(model.boxVarianceRatio2)
        add(model.boxVarianceRatio4)
        with(model.denoiserModel) {
            normalizedRead.forEach(::add)
            add(normalizedLumaShot)
            add(normalizedLumaQuadratic)
            add(normalizedChromaShot)
            add(normalizedChromaQuadratic)
            lumaCorrelation.forEach(::add)
            chromaCorrelation.forEach(::add)
        }
        return "mgc-${model.iso}-${java.lang.Long.toHexString(crc.value)}"
    }

    private fun interpolate(lower: Calibration, upper: Calibration, amount: Float, iso: Int): Calibration {
        fun mix(a: Float, b: Float) = a + (b - a) * amount
        fun mixArray(a: FloatArray, b: FloatArray) = FloatArray(a.size) { mix(a[it], b[it]) }
        fun mixSpectrum(a: FloatArray, b: FloatArray): FloatArray {
            val mixed = mixArray(a, b)
            val mean = mixed.average().toFloat()
            check(mean > 0f) { "Interpolated bitmap noise spectrum has no power" }
            return FloatArray(mixed.size) { mixed[it] / mean }
        }
        val a = lower.denoiserModel
        val b = upper.denoiserModel
        return Calibration(
            iso = iso,
            lumaRead = mix(lower.lumaRead, upper.lumaRead),
            lumaShot = mix(lower.lumaShot, upper.lumaShot),
            lumaQuadratic = mix(lower.lumaQuadratic, upper.lumaQuadratic),
            boxVarianceRatio2 = mix(lower.boxVarianceRatio2, upper.boxVarianceRatio2),
            boxVarianceRatio4 = mix(lower.boxVarianceRatio4, upper.boxVarianceRatio4),
            denoiserModel = MgcFullResolutionDenoise.PreparedYuvNoiseModel(
                normalizedRead = mixArray(a.normalizedRead, b.normalizedRead),
                normalizedLumaShot = mix(a.normalizedLumaShot, b.normalizedLumaShot),
                normalizedLumaQuadratic = mix(a.normalizedLumaQuadratic, b.normalizedLumaQuadratic),
                normalizedChromaShot = mix(a.normalizedChromaShot, b.normalizedChromaShot),
                normalizedChromaQuadratic = mix(a.normalizedChromaQuadratic, b.normalizedChromaQuadratic),
                lumaCorrelation = mixSpectrum(a.lumaCorrelation, b.lumaCorrelation),
                chromaCorrelation = mixSpectrum(a.chromaCorrelation, b.chromaCorrelation),
            ),
        )
    }
}
