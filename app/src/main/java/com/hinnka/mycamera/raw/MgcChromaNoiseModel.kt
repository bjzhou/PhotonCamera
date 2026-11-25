package com.hinnka.mycamera.raw

import kotlin.math.abs
import kotlin.math.cos
import kotlin.math.max
import kotlin.math.min
import kotlin.math.sin
import kotlin.math.sqrt

/**
 * Host-side MGC chroma noise model preparation and per-level fixed-point parameter conversion.
 *
 * Reproduces `CreateChromaDenoiseNoiseModelBuffers`, `NoiseModel::Downsample(2)`,
 * `NoiseModel::Transform` (BT.709 YUV), `BoxDownsampleNoiseModel` and the scalar float->int
 * quantization from `ChromaDenoisePyramidLevelS16Halide` so GLES chroma denoise requires no JNI.
 */
internal object MgcChromaNoiseModel {
    private const val WHITE_LEVEL = 16383f
    private const val FULL_RES_NOISE_SCALE = 2f
    private const val MIN_READ_VARIANCE = 1.0e-6f

    // Exact matrix stored by MGC at libgcastartup.so+0x0d64c24.
    private val RGB_TO_YUV = floatArrayOf(
        0.2125999927520752f, 0.7152000069618225f, 0.07219959795475006f,
        -0.16245023906230927f, -0.5464943051338196f, 0.7089447379112244f,
        0.9999967217445374f, -0.9083024859428406f, -0.09169333428144455f,
    )

    internal class SpectrumFilter(taps: FloatArray) {
        private val power = FloatArray(128) { freq ->
            var real = 0.0
            var imag = 0.0
            val omega = (freq.toDouble() + 0.5) * 2.0 * Math.PI / 128.0 - Math.PI
            for (tap in taps.indices) {
                val weight = taps[tap].toDouble()
                real += weight * cos(omega * tap)
                imag -= weight * sin(omega * tap)
            }
            (real * real + imag * imag).toFloat()
        }

        operator fun get(freq: Int): Float = power[freq]
    }

    private val BOX_FILTER = SpectrumFilter(floatArrayOf(0.5f, 0.5f))
    private val CHROMA_PYRAMID_FILTER = SpectrumFilter(floatArrayOf(0.125f, 0.375f, 0.375f, 0.125f))
    private val nativeCosines = responseCosines(1)
    private val halfResolutionCosines = responseCosines(2)

    /** Fixed-point uniforms for one (level, branch) bilateral filter pass. */
    data class BranchCoeffs(
        val readCoeff: Int,
        val shotCoeff: Int,
        val quadCoeff: Int,
        val scaleU: Int,
        val scaleV: Int,
        val outlierThreshold: Int,
    )

    /** Complete 4-level x 2-branch parameter table for one pyramid invocation. */
    class PyramidParams(val branches: Array<Array<BranchCoeffs>>) {
        init {
            require(branches.size == 4 && branches.all { it.size == 2 })
        }
        operator fun get(level: Int, branch: Int): BranchCoeffs = branches[level][branch]
    }

    /** Normalized YUV noise parameters in Q14 domain ready for pyramid/low-freq model building. */
    data class Q14ChromaNoise(
        val read: FloatArray, // [3]: Y, Cb, Cr
        val sharedShot: Float,
        val sharedQuadratic: Float,
        val correlation: FloatArray, // [128]
    )

    /**
     * Prepares Q14 YUV chroma noise from either a measured [preparedYuv] model or an analytic
     * camera RGB noise model with [whiteBalance].
     */
    fun prepareQ14Noise(
        normalizedRgbRead: FloatArray,
        normalizedRgbShot: FloatArray,
        whiteBalance: FloatArray,
        preparedYuv: MgcFullResolutionDenoise.PreparedYuvNoiseModel?,
        chromaCorrelation: FloatArray?,
    ): Q14ChromaNoise {
        val yuvRead = FloatArray(3)
        val sharedShot: Float
        val sharedQuadratic: Float
        if (preparedYuv != null) {
            System.arraycopy(preparedYuv.normalizedRead, 0, yuvRead, 0, 3)
            sharedShot = preparedYuv.normalizedChromaShot
            sharedQuadratic = preparedYuv.normalizedChromaQuadratic
        } else {
            val scaledRead = FloatArray(3)
            val scaledShot = FloatArray(3)
            for (c in 0..2) {
                val gain = whiteBalance[c] * FULL_RES_NOISE_SCALE
                scaledRead[c] = max(normalizedRgbRead[c], 0f) * gain * gain
                scaledShot[c] = max(normalizedRgbShot[c], 0f) * gain
            }
            val yuvShot = FloatArray(3)
            for (outC in 0..2) {
                var rowSum = 0f
                for (inC in 0..2) {
                    val m = RGB_TO_YUV[outC * 3 + inC]
                    val m2 = m * m
                    rowSum += m
                    yuvRead[outC] += m2 * scaledRead[inC]
                    yuvShot[outC] += m2 * scaledShot[inC]
                }
                val absSum = abs(rowSum)
                yuvShot[outC] = if (absSum < 1.0e-6f) 0f else yuvShot[outC] / absSum
            }
            sharedShot = yuvShot[0]
            sharedQuadratic = 0f
        }
        val spectrum = FloatArray(128) { i -> chromaCorrelation?.get(i) ?: 1f }
        val whiteSq = WHITE_LEVEL * WHITE_LEVEL
        return Q14ChromaNoise(
            read = FloatArray(3) { c -> yuvRead[c] * whiteSq },
            sharedShot = sharedShot * WHITE_LEVEL,
            sharedQuadratic = sharedQuadratic,
            correlation = spectrum,
        )
    }

    /** Box-downsamples a Q14 chroma noise model by `2^log2Factor` octaves. */
    fun boxDownsample(base: Q14ChromaNoise, log2Factor: Int): Q14ChromaNoise {
        val read = base.read.copyOf()
        var shot = base.sharedShot
        var quad = base.sharedQuadratic
        val spectrum = base.correlation.copyOf()
        for (step in 0 until log2Factor) {
            val scale = filterAndDecimateSpectrum(spectrum, BOX_FILTER)
            for (c in 0..2) read[c] *= scale
            shot *= scale
            quad *= scale
        }
        return Q14ChromaNoise(read, shot, quad, spectrum)
    }

    /** Builds the 4-level x 2-branch fixed-point chroma coefficients for [GlesMgcDenoise]. */
    fun buildPyramidParams(
        noise: Q14ChromaNoise,
        responseOffset: Float,
        responseCosineOffset: Float,
        strength: FloatArray,
        outlierThreshold: FloatArray,
    ): PyramidParams {
        require(strength.size == 5 && outlierThreshold.size == 5)
        val spectrum = noise.correlation.copyOf()
        val currentRead = FloatArray(3) { c -> max(noise.read[c], 0f) }
        var currentShot = max(noise.sharedShot, 0f)
        var currentQuad = max(noise.sharedQuadratic, 0f)

        val branches = Array(4) { level ->
            val levelBranches = Array(2) { branch ->
                val downsampleFactor = if (branch == 0) 2 else 1
                val tuningLevel = level + if (downsampleFactor == 2) 1 else 0
                val tuningStrength = max(strength[tuningLevel], 0f)
                val scale = tuningStrength * tuningStrength / downsampleFactor.toFloat() *
                    downsamplingEnergy(
                        spectrum,
                        downsampleFactor,
                        responseOffset,
                        responseCosineOffset,
                    )
                val rY = currentRead[0] * scale
                val rU = currentRead[1] * scale
                val rV = currentRead[2] * scale
                val shot = currentShot * scale
                val quad = currentQuad * scale
                val outlier = outlierThreshold[tuningLevel].toInt() and 0xff

                val su = sqrt(rY / max(rU, MIN_READ_VARIANCE)) * 256f
                val sv = sqrt(rY / max(rV, MIN_READ_VARIANCE)) * 256f
                BranchCoeffs(
                    readCoeff = floatToS32Rne(rY),
                    shotCoeff = floatToS16Rne(shot * 256f),
                    quadCoeff = floatToS16Rne(quad * 65536f),
                    scaleU = floatToU16Rne(su),
                    scaleV = floatToU16Rne(sv),
                    outlierThreshold = outlier,
                )
            }
            val coeffScale = filterAndDecimateSpectrum(spectrum, CHROMA_PYRAMID_FILTER)
            for (c in 0..2) currentRead[c] *= coeffScale
            currentShot *= coeffScale
            currentQuad *= coeffScale
            levelBranches
        }
        return PyramidParams(branches)
    }

    internal fun downsamplingEnergy(
        spectrum: FloatArray,
        downsampleFactor: Int,
        responseOffset: Float,
        responseCosineOffset: Float,
    ): Float {
        // The bilateral branches vary along one axis. The same response applies in each row.
        val cosines = when (downsampleFactor) {
            1 -> nativeCosines
            2 -> halfResolutionCosines
            else -> error("Unsupported MGC denoise downsample factor $downsampleFactor")
        }
        var innerSum = 0f
        for (index in 0 until 128) {
            val c = cosines[index]
            val shifted = c + responseCosineOffset
            val response = (responseOffset - c * c) + shifted * shifted
            innerSum += spectrum[index] * response
        }
        var total = 0f
        for (index in 0 until 128) {
            total += innerSum * spectrum[index]
        }
        return total * 0.00006103515625f
    }

    private fun responseCosines(factor: Int): FloatArray = FloatArray(128) { index ->
        val wrapped = (index * factor) and 127
        cos(wrapped.toDouble() * Math.PI / 64.0 - factor.toDouble() * Math.PI).toFloat()
    }

    internal fun filterAndDecimateSpectrum(spectrum: FloatArray, filter: SpectrumFilter): Float {
        if (spectrum.all { it == 0f }) {
            spectrum.fill(1f)
            return 0f
        }
        val filtered = FloatArray(128)
        var energy = 0f
        for (freq in 0 until 128) {
            val value = spectrum[freq] * filter[freq]
            filtered[freq] = value
            energy += value
        }
        energy *= 1f / 128f
        check(energy > 0f && energy.isFinite()) { "Invalid chroma correlation energy: $energy" }
        val invEnergy = 1f / energy
        for (i in 0 until 128) spectrum[i] = filtered[i] * invEnergy
        val convScale = energy * energy

        val expanded = FloatArray(256)
        for (i in 64 until 128) {
            val left = 0.25f * spectrum[i - 1] + 0.75f * spectrum[i]
            val right = 0.75f * spectrum[i] + 0.25f * spectrum[min(i + 1, 127)]
            expanded[2 * i] = left
            expanded[2 * i + 1] = right
            expanded[255 - 2 * i] = left
            expanded[254 - 2 * i] = right
        }
        for (i in 64 until 128) {
            val value = 0.5f * expanded[(i + 192) and 255] + 0.5f * expanded[i + 64]
            spectrum[i] = value
            spectrum[127 - i] = value
        }
        var dsEnergy = 0f
        for (i in 0 until 128) dsEnergy += spectrum[i]
        dsEnergy *= 1f / 128f
        check(dsEnergy > 0f && dsEnergy.isFinite()) { "Invalid downsampled correlation energy: $dsEnergy" }
        val invDsEnergy = 1f / dsEnergy
        for (i in 0 until 128) spectrum[i] *= invDsEnergy
        return convScale * (dsEnergy * dsEnergy)
    }

    internal fun roundNearestEven(x: Float): Float = Math.rint(x.toDouble()).toFloat()

    internal fun floatToU16Rne(x: Float): Int {
        if (x.isNaN()) return 0
        val r = max(min(roundNearestEven(x), 65535f), 0f)
        return r.toInt()
    }

    internal fun floatToS16Rne(x: Float): Int {
        if (x.isNaN()) return 0
        val r = max(min(roundNearestEven(max(x, 0f)), 32767f), -32768f)
        return r.toInt()
    }

    internal fun floatToS32Rne(x: Float): Int {
        if (x.isNaN()) return 0
        val r = max(roundNearestEven(max(x, 0f)), -2147483648f)
        return if (r >= 2147483648f) Int.MAX_VALUE else r.toInt()
    }
}
