package com.hinnka.mycamera.processor

import kotlin.math.PI
import kotlin.math.cos
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.sin
import kotlin.math.sqrt

/**
 * MGC Sabre's `UpdateNoiseEstimatesLUT` path for Bayer guide generation.
 *
 * Bayer Sabre builds its guide in `sqrt(max(color, 0))` space. MGC therefore does not put the
 * linear shot/read variance directly in the guide LUT: it transforms every channel's noise model
 * with the same 64-sample deterministic QMC integration used by `qmc_noise_model.cc`.
 */
internal object MgcSabreNoiseEstimatesLut {
    const val WIDTH = 10
    const val ROWS = 2
    const val CHANNELS = 4

    private const val QMC_SAMPLE_COUNT = 64
    private const val QMC_PAIR_COUNT = QMC_SAMPLE_COUNT / 2
    private const val UINT32_RANGE = 4_294_967_296.0
    private const val TWO_PI = 2.0 * PI

    private val qmcNormalSamples: FloatArray = createQmcNormalSamples()

    fun create(
        referenceShotNoise: FloatArray,
        referenceReadNoise: FloatArray,
        currentShotNoise: FloatArray,
        currentReadNoise: FloatArray,
    ): FloatArray {
        require(referenceShotNoise.size >= CHANNELS)
        require(referenceReadNoise.size >= CHANNELS)
        require(currentShotNoise.size >= CHANNELS)
        require(currentReadNoise.size >= CHANNELS)

        val values = FloatArray(WIDTH * ROWS * CHANNELS)
        writeRow(values, 0, referenceShotNoise, referenceReadNoise)
        writeRow(values, 1, currentShotNoise, currentReadNoise)
        return values
    }

    /**
     * Reconstructs the scalar part of Sabre's merged NoiseModel from its accumulated temporal
     * weights. The R8 coverage texture stores the sum of non-reference frame weights divided by
     * [maximumAdditionalWeight]; the reference contributes one implicit unit of weight.
     *
     * Classic Sabre computes an average reciprocal merge factor from the accumulated Q8 weights,
     * then applies its SNR-table reduction to the NoiseModel returned by the merge. Applying only
     * [postMergeReduction] to the reference-frame model drops the multi-frame variance reduction.
     */
    fun outputNoiseModelScale(
        postMergeReduction: Float,
        accumulatedCoverage: ByteArray,
        maximumAdditionalWeight: Float,
    ): Float {
        require(postMergeReduction.isFinite() && postMergeReduction > 0f)
        require(maximumAdditionalWeight.isFinite() && maximumAdditionalWeight >= 0f)
        if (accumulatedCoverage.isEmpty()) return postMergeReduction

        var reciprocalWeightSum = 0.0
        accumulatedCoverage.forEach { encoded ->
            val normalizedCoverage = (encoded.toInt() and 0xff) / 255.0
            val totalWeight = 1.0 + normalizedCoverage * maximumAdditionalWeight
            reciprocalWeightSum += 1.0 / totalWeight
        }
        val averageMergeFactor = reciprocalWeightSum / accumulatedCoverage.size.toDouble()
        return (postMergeReduction * averageMergeFactor).toFloat()
    }

    private fun writeRow(
        destination: FloatArray,
        row: Int,
        shotNoise: FloatArray,
        readNoise: FloatArray,
    ) {
        for (x in 0 until WIDTH) {
            // MGC stores the ten transformed-model samples at x / 9. The shader's 0.9 scale and
            // 0.05 bias address those endpoint samples at the centers of a ten-texel LUT.
            val sqrtSignal = x.toFloat() / (WIDTH - 1).toFloat()
            val offset = (row * WIDTH + x) * CHANNELS
            destination[offset] = sqrtDomainVariance(
                sqrtSignal,
                shotNoise[0],
                readNoise[0],
            )
            val greenVarianceSum =
                sqrtDomainVariance(sqrtSignal, shotNoise[1], readNoise[1]) +
                    sqrtDomainVariance(sqrtSignal, shotNoise[2], readNoise[2])
            destination[offset + 1] = 0.25f * greenVarianceSum
            destination[offset + 2] = sqrtDomainVariance(
                sqrtSignal,
                shotNoise[3],
                readNoise[3],
            )
            destination[offset + 3] = 0f
        }
    }

    internal fun sqrtDomainVariance(
        sqrtSignal: Float,
        shotNoise: Float,
        readNoise: Float,
    ): Float {
        require(sqrtSignal.isFinite() && sqrtSignal in 0f..1f)
        require(shotNoise.isFinite())
        require(readNoise.isFinite())

        val linearSignal = sqrtSignal * sqrtSignal
        val linearVariance = max(readNoise + shotNoise * linearSignal, 0f)
        val linearStandardDeviation = sqrt(linearVariance)
        var squaredErrorSum = 0f
        for (normalSample in qmcNormalSamples) {
            val noisyLinearSignal = linearSignal + linearStandardDeviation * normalSample
            val transformedSample = sqrt(max(noisyLinearSignal, 0f))
            val error = transformedSample - sqrtSignal
            squaredErrorSum += error * error
        }
        return squaredErrorSum / QMC_SAMPLE_COUNT.toFloat()
    }

    /** Box-Muller sequence from MGC's `TransformNoiseModel`, including its bit-reversed angle. */
    private fun createQmcNormalSamples(): FloatArray {
        val samples = FloatArray(QMC_SAMPLE_COUNT)
        for (index in 0 until QMC_PAIR_COUNT) {
            val radialInput = (index.toFloat() + 0.5f) / QMC_PAIR_COUNT.toFloat()
            val radius = sqrt((-2f * ln(radialInput.toDouble()).toFloat()).toDouble()).toFloat()
            val reversed = Integer.reverse(index).toUInt().toLong()
            val phase = (reversed.toDouble() / UINT32_RANGE).toFloat()
            val angle = (phase.toDouble() * TWO_PI).toFloat()
            samples[index * 2] = radius * sin(angle.toDouble()).toFloat()
            samples[index * 2 + 1] = radius * cos(angle.toDouble()).toFloat()
        }
        return samples
    }
}
