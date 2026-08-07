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
    private const val REJECTED_DENOISE_MULTIPLIER = -1f

    init {
        System.loadLibrary("my-native-lib")
    }

    fun compute(
        outputMode: MgcSpatialOutputMode,
        fusedF16: ByteBuffer,
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
    ): MgcSpatialStrengthMap? {
        val expectedFusedSamples = width.toLong() * height.toLong() *
            if (outputMode == MgcSpatialOutputMode.BAYER) 1L else 4L
        val expectedAlignmentValues =
            alignmentWidth.toLong() * alignmentHeight.toLong() * frameCount * 2L
        val expectedRejectionValues =
            rejectionWidth.toLong() * rejectionHeight.toLong() * frameCount
        val valid = fusedF16.isDirect && alignment.isDirect && rejection.isDirect &&
            width > 0 && height > 0 && cfaPattern in 0..3 && frameCount > 1 &&
            fusedF16.capacity().toLong() >= expectedFusedSamples * Short.SIZE_BYTES &&
            alignment.capacity().toLong() >= expectedAlignmentValues * Float.SIZE_BYTES &&
            rejection.capacity().toLong() >= expectedRejectionValues &&
            inputReadNoise.size == frameCount * 3 &&
            inputShotNoise.size == frameCount * 3 &&
            frameWeights.size == frameCount &&
            kernelSigmas.size == frameCount &&
            inputReadNoise.all(Float::isFinite) &&
            inputShotNoise.all(Float::isFinite) &&
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
        fusedF16.position(0)
        alignment.position(0)
        rejection.position(0)
        val output = ShortArray(rejectionWidth * rejectionHeight)
        val result = nativeCompute(
            layout = if (outputMode == MgcSpatialOutputMode.BAYER) 0 else 1,
            fusedF16 = fusedF16,
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
        )
        fusedF16.position(0)
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
        return MgcSpatialStrengthMap(
            width = rejectionWidth,
            height = rejectionHeight,
            q8 = output,
        )
    }

    private external fun nativeCompute(
        layout: Int,
        fusedF16: ByteBuffer,
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
    ): Int
}
