package com.hinnka.mycamera.raw

import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min
import kotlin.math.sqrt

/**
 * Host-side MGC Pecan luma noise model preparation and per-level fixed-point parameter conversion.
 *
 * Reproduces `CreateLumaDenoiseNoiseBuffers`, `NoiseModel::Downsample(2)`, `NoiseModel::Transform`
 * (BT.709 Y row) and the scalar float->int quantization from `LumaDenoisePyramidLevelS16Halide`
 * and `LumaDenoisePyramidLastLevelS16Halide` so GLES Pecan luma denoise requires no JNI.
 */
internal object MgcLumaNoiseModel {
    private const val WHITE_LEVEL = 16383f
    private const val FULL_RES_NOISE_SCALE = 2f

    // Exact BT.709 Y row stored by MGC at libgcastartup.so+0x0d64c24.
    private val Y_ROW = floatArrayOf(
        0.2125999927520752f,
        0.7152000069618225f,
        0.07219959795475006f,
    )

    // 8-tap luma pyramid filter from V25 CreateLumaDenoiseNoiseBuffers (0x4f85664).
    private val LUMA_PYRAMID_FILTER = MgcChromaNoiseModel.SpectrumFilter(floatArrayOf(
        -3f / 128f,
        -7f / 128f,
        17f / 128f,
        57f / 128f,
        57f / 128f,
        17f / 128f,
        -7f / 128f,
        -3f / 128f,
    ))

    /** Fixed-point uniforms for one (level, branch) Pecan bilateral filter pass. */
    data class BranchCoeffs(
        val readCoeff: Int,
        val shotCoeff: Int,
        val quadCoeff: Int,
        val outlierQ4: Int,
    )

    /** Complete fixed-point uniforms for one pyramid level (branch 0, branch 1, revert). */
    data class LevelParams(
        val branch0: BranchCoeffs,
        val branch1: BranchCoeffs,
        val revQ8: Int,
        val revLut0: Int,
        val revLut1: Int,
        val revLut2: Int,
    )

    /** Complete 4-level parameter table for one Pecan luma pyramid invocation. */
    class PyramidParams(val levels: Array<LevelParams>) {
        init {
            require(levels.size == 4)
        }
        operator fun get(level: Int): LevelParams = levels[level]
    }

    /** Normalized Y noise parameters in Q14 domain ready for Pecan pyramid model building. */
    data class Q14LumaNoise(
        val read: Float,
        val shot: Float,
        val quadratic: Float,
        val correlation: FloatArray, // [128]
    )

    /**
     * Prepares Q14 luma noise from either a measured [preparedYuv] model or an analytic
     * camera RGB noise model with [whiteBalance].
     */
    fun prepareQ14Noise(
        normalizedRgbRead: FloatArray,
        normalizedRgbShot: FloatArray,
        whiteBalance: FloatArray,
        preparedYuv: MgcFullResolutionDenoise.PreparedYuvNoiseModel?,
        lumaCorrelation: FloatArray?,
    ): Q14LumaNoise {
        val read: Float
        val shot: Float
        val quadratic: Float
        if (preparedYuv != null) {
            read = preparedYuv.normalizedRead[0]
            shot = preparedYuv.normalizedLumaShot
            quadratic = preparedYuv.normalizedLumaQuadratic
        } else {
            var yRead = 0f
            var yShot = 0f
            var rowSum = 0f
            for (c in 0..2) {
                val gain = whiteBalance[c] * FULL_RES_NOISE_SCALE
                val scaledRead = max(normalizedRgbRead[c], 0f) * gain * gain
                val scaledShot = max(normalizedRgbShot[c], 0f) * gain
                val m = Y_ROW[c]
                val m2 = m * m
                rowSum += m
                yRead += m2 * scaledRead
                yShot += m2 * scaledShot
            }
            val absSum = abs(rowSum)
            read = yRead
            shot = if (absSum < 1.0e-6f) 0f else yShot / absSum
            quadratic = 0f
        }
        val spectrum = FloatArray(128) { i -> lumaCorrelation?.get(i) ?: 1f }
        return Q14LumaNoise(
            read = read * (WHITE_LEVEL * WHITE_LEVEL),
            shot = shot * WHITE_LEVEL,
            quadratic = quadratic,
            correlation = spectrum,
        )
    }

    /** Builds the 4-level fixed-point coefficients for `GlesMgcDenoise` Pecan luma passes. */
    fun buildPyramidParams(
        noise: Q14LumaNoise,
        responseOffset: Float,
        responseCosineOffset: Float,
        strength: FloatArray,
        outlierDistance: FloatArray,
        revertFactor: FloatArray,
    ): PyramidParams {
        require(strength.size == 5 && outlierDistance.size == 5 && revertFactor.size == 5)
        val spectrum = noise.correlation.copyOf()
        var currentRead = max(noise.read, 0f)
        var currentShot = max(noise.shot, 0f)
        var currentQuad = max(noise.quadratic, 0f)

        val levels = Array(4) { level ->
            val strengthDownsampled = max(strength[level + 1], 0f)
            val strengthNative = max(strength[level], 0f)
            val downsampledScale = strengthDownsampled * strengthDownsampled * 0.5f *
                MgcChromaNoiseModel.downsamplingEnergy(
                    spectrum,
                    2,
                    responseOffset,
                    responseCosineOffset,
                )
            val nativeScale = strengthNative * strengthNative *
                MgcChromaNoiseModel.downsamplingEnergy(
                    spectrum,
                    1,
                    responseOffset,
                    responseCosineOffset,
                )
            val outlierQ4 = floatToOutlierU16(outlierDistance[level])
            val b0 = BranchCoeffs(
                readCoeff = MgcChromaNoiseModel.floatToS32Rne(currentRead * downsampledScale),
                shotCoeff = MgcChromaNoiseModel.floatToS16Rne(currentShot * downsampledScale * 256f),
                quadCoeff = MgcChromaNoiseModel.floatToS16Rne(currentQuad * downsampledScale * 65536f),
                outlierQ4 = outlierQ4,
            )
            val b1 = BranchCoeffs(
                readCoeff = MgcChromaNoiseModel.floatToS32Rne(currentRead * nativeScale),
                shotCoeff = MgcChromaNoiseModel.floatToS16Rne(currentShot * nativeScale * 256f),
                quadCoeff = MgcChromaNoiseModel.floatToS16Rne(currentQuad * nativeScale * 65536f),
                outlierQ4 = outlierQ4,
            )
            val rev = revertFactor[level]
            val params = LevelParams(
                branch0 = b0,
                branch1 = b1,
                revQ8 = floatToRevertU8(rev * 255f),
                revLut0 = floatToRevertU8(rev / sqrt(8f) * 255f),
                revLut1 = floatToRevertU8(rev / sqrt(4f) * 255f),
                revLut2 = floatToRevertU8(rev / sqrt(2f) * 255f),
            )
            val coeffScale = MgcChromaNoiseModel.filterAndDecimateSpectrum(spectrum, LUMA_PYRAMID_FILTER)
            currentRead *= coeffScale
            currentShot *= coeffScale
            currentQuad *= coeffScale
            params
        }
        return PyramidParams(levels)
    }

    private fun floatToOutlierU16(x: Float): Int {
        if (x.isNaN()) return 0
        val r = max(min(MgcChromaNoiseModel.roundNearestEven(x * 16f), 65535f), 0f)
        return r.toInt()
    }

    // Matches ARM64 fcvtzs (truncation toward zero) in Pecan revert_lut / rev_q8 setup.
    private fun floatToRevertU8(x: Float): Int {
        if (x.isNaN()) return 0
        return max(min(x, 255f), 0f).toInt()
    }
}
