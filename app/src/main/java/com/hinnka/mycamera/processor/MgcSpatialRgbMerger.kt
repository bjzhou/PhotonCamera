package com.hinnka.mycamera.processor

import java.nio.ByteBuffer

/** JNI boundary for MGC 9.7.047 V25's original Spatial RGB merge AOT. */
internal object MgcSpatialRgbMerger {
    init {
        System.loadLibrary("my-native-lib")
    }

    fun merge(
        rawBuffers: Array<ByteBuffer>,
        rawOffsets: IntArray,
        rawRowStrides: IntArray,
        alignment: ByteBuffer,
        alignmentWidth: Int,
        alignmentHeight: Int,
        rejection: ByteBuffer,
        rejectionWidth: Int,
        rejectionHeight: Int,
        frameWeights: FloatArray,
        whiteBalanceGains: FloatArray,
        inputBlackLevelsRgb: FloatArray,
        inputBlackLevelsRggb: FloatArray,
        inputGains: FloatArray,
        overallGain: Float,
        mergeSharpness: Float,
        kernelSigmas: FloatArray,
        rawWidth: Int,
        rawHeight: Int,
        outputWidth: Int,
        outputHeight: Int,
        cfaPattern: Int,
        outputPlanarF16: ByteBuffer,
    ) {
        val result = nativeMerge(
            rawBuffers,
            rawOffsets,
            rawRowStrides,
            alignment,
            alignmentWidth,
            alignmentHeight,
            rejection,
            rejectionWidth,
            rejectionHeight,
            frameWeights,
            whiteBalanceGains,
            inputBlackLevelsRgb,
            inputBlackLevelsRggb,
            inputGains,
            overallGain,
            mergeSharpness,
            kernelSigmas,
            rawWidth,
            rawHeight,
            outputWidth,
            outputHeight,
            cfaPattern,
            outputPlanarF16,
        )
        check(result == 0) { "MGC MergeRgbRaw16F16 failed with status=$result" }
        outputPlanarF16.position(0)
        outputPlanarF16.limit(outputPlanarF16.capacity())
    }

    /** Reuses the uploaded planar F16 allocation as the Spatial-noise AOT's planar Q14 input. */
    fun convertPlanarF16ToFixed16(buffer: ByteBuffer, sampleCount: Int) {
        val result = nativeConvertPlanarF16ToFixed16(buffer, sampleCount)
        check(result == 0) { "MGC planar F16-to-Q14 conversion failed with status=$result" }
        buffer.position(0)
        buffer.limit(buffer.capacity())
    }

    private external fun nativeMerge(
        rawBuffers: Array<ByteBuffer>,
        rawOffsets: IntArray,
        rawRowStrides: IntArray,
        alignment: ByteBuffer,
        alignmentWidth: Int,
        alignmentHeight: Int,
        rejection: ByteBuffer,
        rejectionWidth: Int,
        rejectionHeight: Int,
        frameWeights: FloatArray,
        whiteBalanceGains: FloatArray,
        inputBlackLevelsRgb: FloatArray,
        inputBlackLevelsRggb: FloatArray,
        inputGains: FloatArray,
        overallGain: Float,
        mergeSharpness: Float,
        kernelSigmas: FloatArray,
        rawWidth: Int,
        rawHeight: Int,
        outputWidth: Int,
        outputHeight: Int,
        cfaPattern: Int,
        outputPlanarF16: ByteBuffer,
    ): Int

    private external fun nativeConvertPlanarF16ToFixed16(
        buffer: ByteBuffer,
        sampleCount: Int,
    ): Int
}
