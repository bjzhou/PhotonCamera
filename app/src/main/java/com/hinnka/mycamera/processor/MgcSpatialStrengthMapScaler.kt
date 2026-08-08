package com.hinnka.mycamera.processor

import com.hinnka.mycamera.raw.MgcSpatialStrengthMap

/** Host-side resampling around the untouched MGC Spatial strength AOT output. */
internal object MgcSpatialStrengthMapScaler {
    init {
        System.loadLibrary("my-native-lib")
    }

    fun scaleBilinear(
        source: MgcSpatialStrengthMap,
        targetWidth: Int,
        targetHeight: Int,
    ): MgcSpatialStrengthMap {
        require(targetWidth > 0 && targetHeight > 0)
        if (source.width == targetWidth && source.height == targetHeight) return source
        val targetCount = targetWidth.toLong() * targetHeight
        require(targetCount <= Int.MAX_VALUE)
        val output = ShortArray(targetCount.toInt())
        check(
            nativeScaleBilinearU16(
                source = source.q8,
                sourceWidth = source.width,
                sourceHeight = source.height,
                destination = output,
                destinationWidth = targetWidth,
                destinationHeight = targetHeight,
            )
        ) {
            "Unable to scale MGC Spatial strength map " +
                "${source.width}x${source.height} to ${targetWidth}x$targetHeight"
        }
        return MgcSpatialStrengthMap(targetWidth, targetHeight, output)
    }

    private external fun nativeScaleBilinearU16(
        source: ShortArray,
        sourceWidth: Int,
        sourceHeight: Int,
        destination: ShortArray,
        destinationWidth: Int,
        destinationHeight: Int,
    ): Boolean
}
