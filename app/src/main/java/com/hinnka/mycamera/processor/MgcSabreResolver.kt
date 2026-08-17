package com.hinnka.mycamera.processor

import java.nio.ByteBuffer

/** JNI boundary for MGC 9.6.080 V24's statically lifted ResolveSabreHalide AOT kernel. */
internal object MgcSabreResolver {
    init {
        System.loadLibrary("my-native-lib")
    }

    fun resolve(
        accumulatedColorRgba16f: ByteBuffer,
        outputRgb16Planar: ByteBuffer,
        width: Int,
        height: Int,
        cfaPattern: Int,
        finalBlackLevel: FloatArray,
        finalGains: FloatArray,
        demosaicWhiteLevel: Int,
        outputWhiteLevel: Float,
        demosaicBlendScale: Float,
        demosaicBlendBias: Float,
        demosaicSharpnessScale: Float,
    ) {
        val result = nativeResolve(
            accumulatedColorRgba16f,
            outputRgb16Planar,
            width,
            height,
            cfaPattern,
            finalBlackLevel,
            finalGains,
            demosaicWhiteLevel,
            outputWhiteLevel,
            demosaicBlendScale,
            demosaicBlendBias,
            demosaicSharpnessScale,
        )
        check(result == 0) { "MGC ResolveSabreHalide failed with status=$result" }
        outputRgb16Planar.position(0)
        outputRgb16Planar.limit(outputRgb16Planar.capacity())
    }

    private external fun nativeResolve(
        accumulatedColorRgba16f: ByteBuffer,
        outputRgb16Planar: ByteBuffer,
        width: Int,
        height: Int,
        cfaPattern: Int,
        finalBlackLevel: FloatArray,
        finalGains: FloatArray,
        demosaicWhiteLevel: Int,
        outputWhiteLevel: Float,
        demosaicBlendScale: Float,
        demosaicBlendBias: Float,
        demosaicSharpnessScale: Float,
    ): Int
}
