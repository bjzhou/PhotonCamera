package com.hinnka.mycamera.raw.denoise

import kotlin.math.PI
import kotlin.math.cos

/**
 * Exact noise propagation through the decimated Laplacian pyramid
 * (docs/photon-multiscale-denoise.md §5.3).
 *
 * The spatial correlation is a separable spectrum P_x ⊗ P_y sampled on MGC's 128-bin
 * half-bin-centred grid. With separable filters every pyramid quantity factorises into
 * per-axis autocorrelation terms, so the tables are exact within the §2.2 model and do not
 * depend on the image size. tools/photon_denoise/noise_model.py is the reference
 * implementation and validate_propagation.py its synthetic-noise gate.
 */
internal object PhotonNoisePropagation {
    const val SPECTRUM_SIZE = 128
    const val MAX_LAG = 63
    const val PHASE_COUNT = 4

    /** 4-point Deslauriers–Dubuc analysis filter: band-selective luma split, H(π) = 0. */
    val LUMA_TAPS = doubleArrayOf(-1.0, 0.0, 9.0, 16.0, 9.0, 0.0, -1.0).map { it / 32.0 }.toDoubleArray()

    /** Binomial analysis filter: no negative lobes, so chroma edges cannot ring. */
    val CHROMA_TAPS = doubleArrayOf(1.0, 4.0, 6.0, 4.0, 1.0).map { it / 16.0 }.toDoubleArray()

    /**
     * kappaGaussian[l] = Var[G_l] / σ², kappaLaplacian[l][phase] = Var[L_l] / σ² with
     * phase = (y & 1) * 2 + (x & 1). A spectrum that is not normalised to unit mean keeps
     * its amplitude inside these factors.
     */
    class Table(
        val kappaGaussian: DoubleArray,
        val kappaLaplacian: Array<DoubleArray>,
    ) {
        val levels: Int get() = kappaLaplacian.size
    }

    fun propagate(
        spectrumX: FloatArray,
        spectrumY: FloatArray,
        taps: DoubleArray,
        levels: Int,
    ): Table {
        require(levels > 0)
        require(taps.size % 2 == 1)
        var rx = autocorrelation(spectrumX)
        var ry = autocorrelation(spectrumY)
        val kappaGaussian = DoubleArray(levels + 1)
        val kappaLaplacian = Array(levels) { DoubleArray(PHASE_COUNT) }
        for (level in 0..levels) {
            kappaGaussian[level] = lag(rx, 0) * lag(ry, 0)
            if (level == levels) break
            val termsX = Array(2) { phase -> laplacianAxisTerms(rx, taps, phase) }
            val termsY = Array(2) { phase -> laplacianAxisTerms(ry, taps, phase) }
            for (py in 0..1) {
                for (px in 0..1) {
                    val x = termsX[px]
                    val y = termsY[py]
                    kappaLaplacian[level][py * 2 + px] =
                        x[0] * y[0] - 2.0 * x[1] * y[1] + x[2] * y[2]
                }
            }
            rx = decimateAutocorrelation(rx, taps)
            ry = decimateAutocorrelation(ry, taps)
        }
        return Table(kappaGaussian, kappaLaplacian)
    }

    fun spectrumFrequency(index: Int): Double =
        (index + 0.5) * 2.0 * PI / SPECTRUM_SIZE - PI

    /** r(d) = mean_k P(ω_k) cos(ω_k d) for d = -MAX_LAG..MAX_LAG, stored at d + MAX_LAG. */
    fun autocorrelation(spectrum: FloatArray): DoubleArray {
        require(spectrum.size == SPECTRUM_SIZE)
        require(spectrum.all { it.isFinite() && it >= 0f }) { "Spectrum must be finite and non-negative" }
        return DoubleArray(2 * MAX_LAG + 1) { index ->
            val d = (index - MAX_LAG).toDouble()
            var sum = 0.0
            for (k in 0 until SPECTRUM_SIZE) {
                sum += spectrum[k] * cos(spectrumFrequency(k) * d)
            }
            sum / SPECTRUM_SIZE
        }
    }

    /** G_{l+1} = ↓2(h * G_l): r_{l+1}(d) = Σ_m (h ⋆ h̃)(m) r_l(2d − m). */
    private fun decimateAutocorrelation(r: DoubleArray, taps: DoubleArray): DoubleArray {
        val hh = autoConvolve(taps)
        val hhRadius = (hh.size - 1) / 2
        return DoubleArray(r.size) { index ->
            val d = index - MAX_LAG
            var sum = 0.0
            for (i in hh.indices) sum += hh[i] * lag(r, 2 * d - (i - hhRadius))
            sum
        }
    }

    /**
     * Weight a_φ(e) of G_l(p + e) in ↑2(2h * ↓2(h * G_l))(p) for p ≡ φ (mod 2).
     * G_{l+1}(q) sits at G_l position 2q, so j = p − 2q has the parity of p.
     */
    private fun phaseKernel(taps: DoubleArray, phase: Int): Map<Int, Double> {
        val radius = (taps.size - 1) / 2
        val kernel = HashMap<Int, Double>()
        for (j in -radius..radius) {
            if ((j - phase).mod(2) != 0) continue
            val upsample = 2.0 * taps[j + radius]
            for (i in -radius..radius) {
                val e = -j - i
                kernel[e] = (kernel[e] ?: 0.0) + upsample * taps[i + radius]
            }
        }
        return kernel
    }

    /** Per-axis (A0, A1, A2) with Var[L] = A0x·A0y − 2·A1x·A1y + A2x·A2y. */
    private fun laplacianAxisTerms(r: DoubleArray, taps: DoubleArray, phase: Int): DoubleArray {
        val kernel = phaseKernel(taps, phase)
        var a1 = 0.0
        var a2 = 0.0
        for ((ei, wi) in kernel) {
            a1 += wi * lag(r, ei)
            for ((ej, wj) in kernel) a2 += wi * wj * lag(r, ei - ej)
        }
        return doubleArrayOf(lag(r, 0), a1, a2)
    }

    private fun autoConvolve(taps: DoubleArray): DoubleArray {
        val out = DoubleArray(2 * taps.size - 1)
        for (i in taps.indices) {
            for (j in taps.indices) out[i + (taps.size - 1 - j)] += taps[i] * taps[j]
        }
        return out
    }

    private fun lag(r: DoubleArray, d: Int): Double =
        if (d in -MAX_LAG..MAX_LAG) r[d + MAX_LAG] else 0.0
}
