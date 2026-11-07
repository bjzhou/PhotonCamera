package com.hinnka.mycamera.processor

/** Classic V25 Sabre MergeRaw: 0x344964c -> 0x5f366b4 -> 0x38c8fe0. */
internal object MgcSabreMergedNoiseModel {
    /** Coefficients are in normalized, un-white-balanced camera RGB at reference exposure. */
    data class Frame(val read: FloatArray, val shot: FloatArray)

    data class Output(val read: FloatArray, val shot: FloatArray, val correlation: FloatArray)

    fun merge(frames: List<Frame>, referenceSnr: Float, noiseSpectrumSeed: Float): Output {
        require(frames.isNotEmpty())
        require(noiseSpectrumSeed.isFinite() && noiseSpectrumSeed >= 0f)
        val readSum = DoubleArray(3)
        val shotSum = DoubleArray(3)
        var weightSum = 0.0
        val alternateWeight = 1f / frames.size.toFloat()
        for ((index, frame) in frames.withIndex()) {
            require(frame.read.size == 3 && frame.shot.size == 3)
            require(frame.read.all { it.isFinite() && it >= 0f })
            require(frame.shot.all { it.isFinite() && it >= 0f })
            // V25 assigns the residual to the reference, including float rounding.
            val weight = if (index == 0) {
                1f - alternateWeight * (frames.size - 1).toFloat()
            } else alternateWeight
            val squaredWeight = (weight * weight).toDouble()
            weightSum += weight.toDouble()
            for (channel in 0..2) {
                readSum[channel] += frame.read[channel].toDouble() * squaredWeight
                shotSum[channel] += frame.shot[channel].toDouble() * squaredWeight
            }
        }
        // The original accumulates in double and normalizes shot by the weighted signal gain.
        // All frame models were transported to reference exposure, so their signal gains are 1.
        val samples = 1f / snrCorrection(referenceSnr)
        val correction = 1f / samples
        val read = FloatArray(3) { readSum[it].toFloat() * correction }
        val shot = FloatArray(3) { (shotSum[it] / weightSum).toFloat() * correction }
        // This model has no measured input spectrum. AGC's lib_luma_noise_key sets the
        // constructor seed; neither RBF weight statistics nor frame count scales it.
        return Output(read, shot, FloatArray(128) { noiseSpectrumSeed })
    }

    /** Average(1 / d) scales every coefficient by d; it preserves the correlation spectrum. */
    internal fun snrCorrection(referenceSnr: Float): Float {
        require(referenceSnr.isFinite() && referenceSnr >= 0f)
        return when {
            referenceSnr <= 0.5f -> 0.8f
            referenceSnr < 4f -> interpolate(referenceSnr, 0.5f, 4f, 0.8f, 1f)
            referenceSnr < 10f -> interpolate(referenceSnr, 4f, 10f, 1f, 0.7f)
            else -> 0.7f
        }
    }

    private fun interpolate(x: Float, x0: Float, x1: Float, y0: Float, y1: Float): Float {
        val fraction = (x - x0) / (x1 - x0)
        return y1 * fraction + y0 * (1f - fraction)
    }
}
