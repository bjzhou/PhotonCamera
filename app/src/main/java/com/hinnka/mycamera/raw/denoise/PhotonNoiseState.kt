package com.hinnka.mycamera.raw.denoise

/**
 * Noise model of docs/photon-multiscale-denoise.md §2 in normalised, un-white-balanced
 * camera RGB:
 *
 *   Σ(p)   = Σ_c T_c · v_c(p)
 *   v_c(p) = m_r·g_c²·r_c + m_s·g_c·s_c·μ_c + q_c·μ_c²
 *
 * c indexes the CFA source channels R, G, B. μ is the signal after lens shading gain g.
 * [transfer] holds T_c (row-major 3×3, PSD): the contribution of source channel c to the
 * covariance of the RGB the denoiser receives. Spatial correlation is carried separately
 * for the luma and chroma working channels as separable 128-bin spectra (§2.1, A2).
 *
 * Every linear operation is an exact transform of this state (§2.3).
 */
internal class PhotonNoiseState(
    val read: DoubleArray,
    val shot: DoubleArray,
    val quadratic: DoubleArray,
    val transfer: Array<DoubleArray>,
    val lumaSpectrumX: FloatArray,
    val lumaSpectrumY: FloatArray,
    val chromaSpectrumX: FloatArray,
    val chromaSpectrumY: FloatArray,
) {
    init {
        require(read.size == CHANNELS && shot.size == CHANNELS && quadratic.size == CHANNELS)
        require((read + shot + quadratic).all { it.isFinite() && it >= 0.0 }) {
            "Noise coefficients must be finite and non-negative"
        }
        require(transfer.size == CHANNELS && transfer.all { it.size == CHANNELS * CHANNELS })
        require(transfer.all { matrix -> isSymmetricPsdDiagonal(matrix) }) {
            "Transfer matrices must be symmetric with a non-negative diagonal"
        }
        listOf(lumaSpectrumX, lumaSpectrumY, chromaSpectrumX, chromaSpectrumY).forEach { spectrum ->
            require(spectrum.size == PhotonNoisePropagation.SPECTRUM_SIZE)
            require(spectrum.all { it.isFinite() && it >= 0f })
        }
    }

    /** v_c of §2.1 for one location. */
    fun sourceVariance(
        mu: DoubleArray,
        gain: DoubleArray = UNIT_GAIN,
        mergeRead: Double = 1.0,
        mergeShot: Double = 1.0,
    ): DoubleArray {
        require(mu.size == CHANNELS && gain.size == CHANNELS)
        return DoubleArray(CHANNELS) { c ->
            mergeRead * gain[c] * gain[c] * read[c] +
                mergeShot * gain[c] * shot[c] * mu[c] +
                quadratic[c] * mu[c] * mu[c]
        }
    }

    /** T'_c = (K·M·W) T_c (K·M·W)ᵀ in the working YCbCr domain (§5.3). */
    fun workingTransfer(whiteBalance: DoubleArray, scale: Double): Array<DoubleArray> {
        require(whiteBalance.size == CHANNELS && whiteBalance.all { it.isFinite() && it > 0.0 })
        require(scale.isFinite() && scale > 0.0)
        val a = DoubleArray(CHANNELS * CHANNELS) { index ->
            scale * YCC_FROM_RGB[index] * whiteBalance[index % CHANNELS]
        }
        return Array(CHANNELS) { c -> congruence(a, transfer[c]) }
    }

    /** Point covariance Σ(p) of working YCbCr, row-major 3×3. */
    fun workingCovariance(
        muCamera: DoubleArray,
        whiteBalance: DoubleArray,
        scale: Double,
        gain: DoubleArray = UNIT_GAIN,
        mergeRead: Double = 1.0,
        mergeShot: Double = 1.0,
    ): DoubleArray {
        val variance = sourceVariance(muCamera, gain, mergeRead, mergeShot)
        val working = workingTransfer(whiteBalance, scale)
        return DoubleArray(CHANNELS * CHANNELS) { index ->
            var sum = 0.0
            for (c in 0 until CHANNELS) sum += variance[c] * working[c][index]
            sum
        }
    }

    companion object {
        const val CHANNELS = 3
        private val UNIT_GAIN = doubleArrayOf(1.0, 1.0, 1.0)

        /** Working YCbCr: Y = (R + 2G + B)/4, Cb = B − G, Cr = R − G (§5.1). */
        val YCC_FROM_RGB = doubleArrayOf(
            0.25, 0.5, 0.25,
            0.0, -1.0, 1.0,
            1.0, -1.0, 0.0,
        )

        /** Exact inverse of [YCC_FROM_RGB]. */
        val RGB_FROM_YCC = doubleArrayOf(
            1.0, -0.25, 0.75,
            1.0, -0.25, -0.25,
            1.0, 0.75, -0.25,
        )

        /** T_c of a channel-preserving source (Sabre RGB merge, §3.2): e_c e_cᵀ. */
        fun diagonalTransfer(): Array<DoubleArray> = Array(CHANNELS) { c ->
            DoubleArray(CHANNELS * CHANNELS) { index -> if (index == c * CHANNELS + c) 1.0 else 0.0 }
        }

        /**
         * Collapses canonical R, Gr, Gb, B Bayer coefficients onto the three source channels.
         * Both green sites pass through a symmetric demosaic transfer, so averaging their
         * variance contributions is exact (§3.1).
         */
        fun sourceCoefficientsFromBayer(canonicalRggb: FloatArray): DoubleArray {
            require(canonicalRggb.size == 4)
            return doubleArrayOf(
                canonicalRggb[0].toDouble(),
                0.5 * (canonicalRggb[1].toDouble() + canonicalRggb[2].toDouble()),
                canonicalRggb[3].toDouble(),
            )
        }

        fun unitSpectrum(): FloatArray = FloatArray(PhotonNoisePropagation.SPECTRUM_SIZE) { 1f }

        private fun congruence(a: DoubleArray, t: DoubleArray): DoubleArray {
            val at = DoubleArray(CHANNELS * CHANNELS)
            for (i in 0 until CHANNELS) {
                for (k in 0 until CHANNELS) {
                    var sum = 0.0
                    for (j in 0 until CHANNELS) sum += a[i * CHANNELS + j] * t[j * CHANNELS + k]
                    at[i * CHANNELS + k] = sum
                }
            }
            return DoubleArray(CHANNELS * CHANNELS) { index ->
                val i = index / CHANNELS
                val l = index % CHANNELS
                var sum = 0.0
                for (k in 0 until CHANNELS) sum += at[i * CHANNELS + k] * a[l * CHANNELS + k]
                sum
            }
        }

        private fun isSymmetricPsdDiagonal(matrix: DoubleArray): Boolean {
            if (matrix.any { !it.isFinite() }) return false
            for (i in 0 until CHANNELS) {
                if (matrix[i * CHANNELS + i] < 0.0) return false
                for (j in i + 1 until CHANNELS) {
                    val a = matrix[i * CHANNELS + j]
                    val b = matrix[j * CHANNELS + i]
                    if (kotlin.math.abs(a - b) > 1e-9 * (1.0 + kotlin.math.abs(a))) return false
                }
            }
            return true
        }
    }
}
