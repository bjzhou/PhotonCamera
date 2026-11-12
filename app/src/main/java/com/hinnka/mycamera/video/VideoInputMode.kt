package com.hinnka.mycamera.video

import com.hinnka.mycamera.camera.NoiseReductionLevel

enum class VideoInputMode {
    OES,
    YUV;

    fun withStabilization(mode: VideoStabilizationMode): VideoInputMode =
        if (mode == VideoStabilizationMode.ENHANCED) YUV else this

    fun resolveNoiseReduction(level: Int): Int =
        if (this == YUV && level == NoiseReductionLevel.HIGH_QUALITY) NoiseReductionLevel.FAST
        else NoiseReductionLevel.normalize(level)

    fun allowsOppoSuperStabilization(): Boolean = this == OES
}

/** Apply interdependent video preferences as one camera configuration. */
data class VideoPipelineSettings(
    val inputMode: VideoInputMode,
    val stabilizationMode: VideoStabilizationMode,
    val noiseReduction: Int,
    val edge: Int,
    val oppoSuperStabilization: Boolean,
)
