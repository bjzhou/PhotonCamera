package com.hinnka.mycamera.raw

import kotlin.math.ceil
import kotlin.math.log2

/** V25 FinishShot -> CreateProcessRawParams resolution policy, independent of sharpening SNR. */
internal class MgcFinishResolution private constructor(val log2Downsample: Int) {
    val downsampleFactor = 1 shl log2Downsample
    val needsGuidedUpsample = downsampleFactor > 1
    // GuidedUpsample's regression coefficients use a further 2x grid.
    val processingPeriod = if (needsGuidedUpsample) downsampleFactor * 2 else 1

    companion object {
        /**
         * 0x2E8F62C: max(output / crop); 0x333889C: snap (0.9, 1.1) to 1.
         * 0x343B0F8: ceil(log2(4 / scale)), clamped to levels 1..2.
         * The original flag defaults to -1; a nonnegative value overrides the level.
         * Photon has no override setting and uses the original automatic policy.
         */
        fun resolve(cropWidth: Int, cropHeight: Int, outputWidth: Int, outputHeight: Int,
                    scaleOverride: Float = -1f, levelOverride: Int = -1): MgcFinishResolution {
            require(cropWidth > 0 && cropHeight > 0 && outputWidth > 0 && outputHeight > 0)
            var scale = if (scaleOverride > 0f) scaleOverride else
                maxOf(outputWidth.toFloat() / cropWidth, outputHeight.toFloat() / cropHeight)
            require(scale.isFinite() && scale > 0f)
            if (scale > 0.9f && scale < 1.1f) scale = 1f
            val level = if (levelOverride >= 0) levelOverride else
                if (ceil(log2(4f / scale)) > 1f) 2 else 1
            // These are the V25 BoxDownsample/GuidedUpsample specializations we carry.
            require(level in 0..2)
            return MgcFinishResolution(level)
        }
    }
}
