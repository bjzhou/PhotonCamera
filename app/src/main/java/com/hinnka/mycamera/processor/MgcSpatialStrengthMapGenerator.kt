package com.hinnka.mycamera.processor

import com.hinnka.mycamera.raw.MgcSpatialStrengthMap
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer

/**
 * Thin host boundary around MGC's mechanically lifted Spatial noise-model
 * kernels. No strength approximation is performed here.
 */
internal object MgcSpatialStrengthMapGenerator {
    private const val TAG = "MgcSpatialStrength"

    /**
     * Exact SpatialBayer tuning value, not the MGC mod override sentinel.
     *
     * SpatialMerge's options builder at libgcastartup 0x386b3cc initializes
     * the field at +12 to 0.0f. The host at 0x3629bac uses that field whenever
     * the separate global override is negative. Passing the override sentinel
     * (-1.0f) directly to the Halide kernel changes the algorithm.
     */
    private const val REJECTED_DENOISE_MULTIPLIER = 0f

    init {
        System.loadLibrary("my-native-lib")
    }

    /**
     * Exact Spatial noise-model output.
     *
     * MGC's Bayer and RGB Halide tuple order is `.0 = read variance`,
     * `.1 = shot coefficient`. The NoiseModel convenience wrapper at
     * 0x5e959c8 inserts a zero quadratic span before forwarding the original
     * two spans to the full constructor at 0x5e95688; accounting for that
     * reordering resolves the original caller at 0x3632544..0x36325fc.
     * The two diagnostic tuples feed the Savannah correlation reconstruction
     * at 0x3632688..0x3632eb4.
     * Both arrays are normalized, un-white-balanced camera RGB in R/G/B order.
     */
    data class Result(
        val strengthMap: MgcSpatialStrengthMap,
        val outputReadNoise: FloatArray,
        val outputShotNoise: FloatArray,
        val outputWeightsSumTotalDiag0: FloatArray,
        val outputWeightsSumTotalDiag1: FloatArray,
    )

    fun compute(
        outputMode: MgcSpatialOutputMode,
        fusedFixed16: ByteBuffer,
        width: Int,
        height: Int,
        cfaPattern: Int,
        alignment: ByteBuffer,
        alignmentWidth: Int,
        alignmentHeight: Int,
        rejection: ByteBuffer,
        rejectionWidth: Int,
        rejectionHeight: Int,
        frameCount: Int,
        inputReadNoise: FloatArray,
        inputShotNoise: FloatArray,
        frameWeights: FloatArray,
        kernelSigmas: FloatArray,
    ): Result? {
        val geometry = runCatching {
            mgcSpatialDiagnosticGeometry(outputMode, width, height)
        }.getOrNull() ?: return null
        val expectedAlignmentValues =
            alignmentWidth.toLong() * alignmentHeight.toLong() * frameCount * 2L
        val expectedRejectionValues =
            rejectionWidth.toLong() * rejectionHeight.toLong() * frameCount
        val valid = fusedFixed16.isDirect && alignment.isDirect && rejection.isDirect &&
            width > 0 && height > 0 && cfaPattern in 0..3 && frameCount > 1 &&
            fusedFixed16.capacity().toLong() >=
                geometry.fixed16SampleCount * Short.SIZE_BYTES &&
            alignmentWidth == geometry.alignmentWidth &&
            alignmentHeight == geometry.alignmentHeight &&
            rejectionWidth == geometry.rejectionWidth &&
            rejectionHeight == geometry.rejectionHeight &&
            alignment.capacity().toLong() >= expectedAlignmentValues * Float.SIZE_BYTES &&
            rejection.capacity().toLong() >= expectedRejectionValues &&
            inputReadNoise.size == frameCount * 3 &&
            inputShotNoise.size == frameCount * 3 &&
            frameWeights.size == frameCount &&
            kernelSigmas.size == frameCount &&
            inputReadNoise.all { it.isFinite() && it >= 0f } &&
            inputShotNoise.all { it.isFinite() && it >= 0f } &&
            frameWeights.all { it.isFinite() && it >= 0f } &&
            kernelSigmas.all { it.isFinite() && it > 0f }
        if (!valid) {
            PLog.e(
                TAG,
                "Rejected malformed MGC strength input: mode=$outputMode " +
                    "image=${width}x$height frames=$frameCount " +
                    "alignment=${alignmentWidth}x$alignmentHeight " +
                    "rejection=${rejectionWidth}x$rejectionHeight",
            )
            return null
        }
        fusedFixed16.position(0)
        alignment.position(0)
        rejection.position(0)
        val output = ShortArray(rejectionWidth * rejectionHeight)
        val outputReadNoise = FloatArray(3)
        val outputShotNoise = FloatArray(3)
        val outputWeightsSumTotalDiag0 = FloatArray(3)
        val outputWeightsSumTotalDiag1 = FloatArray(3)
        val result = nativeCompute(
            layout = if (outputMode == MgcSpatialOutputMode.BAYER) 0 else 1,
            fusedFixed16 = fusedFixed16,
            width = width,
            height = height,
            cfaPattern = cfaPattern,
            alignment = alignment,
            alignmentWidth = alignmentWidth,
            alignmentHeight = alignmentHeight,
            rejection = rejection,
            rejectionWidth = rejectionWidth,
            rejectionHeight = rejectionHeight,
            frameCount = frameCount,
            inputReadNoise = inputReadNoise,
            inputShotNoise = inputShotNoise,
            frameWeights = frameWeights,
            kernelSigmas = kernelSigmas,
            rejectedDenoiseMultiplier = REJECTED_DENOISE_MULTIPLIER,
            outputStrengthQ8 = output,
            outputReadNoise = outputReadNoise,
            outputShotNoise = outputShotNoise,
            outputWeightsSumTotalDiag0 = outputWeightsSumTotalDiag0,
            outputWeightsSumTotalDiag1 = outputWeightsSumTotalDiag1,
        )
        fusedFixed16.position(0)
        alignment.position(0)
        rejection.position(0)
        if (result != 0) {
            PLog.e(
                TAG,
                "MGC strength AOT failed: result=$result mode=$outputMode " +
                    "image=${width}x$height frames=$frameCount",
            )
            return null
        }
        if (outputReadNoise.any { !it.isFinite() || it < 0f } ||
            outputShotNoise.any { !it.isFinite() || it < 0f } ||
            outputWeightsSumTotalDiag0.any { !it.isFinite() || it < 0f } ||
            outputWeightsSumTotalDiag1.any { !it.isFinite() || it < 0f }
        ) {
            PLog.e(
                TAG,
                "MGC strength AOT returned malformed output noise: " +
                    "read=${outputReadNoise.contentToString()} " +
                    "shot=${outputShotNoise.contentToString()} " +
                    "diag0=${outputWeightsSumTotalDiag0.contentToString()} " +
                    "diag1=${outputWeightsSumTotalDiag1.contentToString()}",
            )
            return null
        }
        return Result(
            strengthMap = MgcSpatialStrengthMap(
                width = rejectionWidth,
                height = rejectionHeight,
                q8 = output,
            ),
            outputReadNoise = outputReadNoise,
            outputShotNoise = outputShotNoise,
            outputWeightsSumTotalDiag0 = outputWeightsSumTotalDiag0,
            outputWeightsSumTotalDiag1 = outputWeightsSumTotalDiag1,
        )
    }

    private external fun nativeCompute(
        layout: Int,
        fusedFixed16: ByteBuffer,
        width: Int,
        height: Int,
        cfaPattern: Int,
        alignment: ByteBuffer,
        alignmentWidth: Int,
        alignmentHeight: Int,
        rejection: ByteBuffer,
        rejectionWidth: Int,
        rejectionHeight: Int,
        frameCount: Int,
        inputReadNoise: FloatArray,
        inputShotNoise: FloatArray,
        frameWeights: FloatArray,
        kernelSigmas: FloatArray,
        rejectedDenoiseMultiplier: Float,
        outputStrengthQ8: ShortArray,
        outputReadNoise: FloatArray,
        outputShotNoise: FloatArray,
        outputWeightsSumTotalDiag0: FloatArray,
        outputWeightsSumTotalDiag1: FloatArray,
    ): Int
}
