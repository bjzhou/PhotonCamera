package com.hinnka.mycamera.video

import android.media.MediaCodecInfo
import android.media.MediaFormat
import com.hinnka.mycamera.raw.ColorSpace

enum class VideoEncodedColorPipeline {
    SDR_DISPLAY,
    CUSTOM_LOG,
    HLG10
}

data class VideoEncoderColorRequest(
    val logProfile: VideoLogProfile = VideoLogProfile.OFF,
    val hasActiveLut: Boolean = false,
    /** Force 8-bit HLG when there is no end-to-end 10-bit camera source, or after setup retry. */
    val force8BitHlg: Boolean = false
)

data class VideoEncoderColorConfig(
    val pipeline: VideoEncodedColorPipeline,
    val colorStandard: Int?,
    val colorTransfer: Int?,
    val colorRange: Int = MediaFormat.COLOR_RANGE_LIMITED,
    val codecProfile: Int? = null,
    val prefer10BitInputSurface: Boolean = false,
    val debugName: String,
    /** HLG10 must not silently feed an 8-bit EGL surface into a Main10 encoder. */
    val require10BitInputSurface: Boolean = false
) {
    fun applyTo(format: MediaFormat) {
        colorStandard?.let { format.setInteger(MediaFormat.KEY_COLOR_STANDARD, it) }
        colorTransfer?.let { format.setInteger(MediaFormat.KEY_COLOR_TRANSFER, it) }
        format.setInteger(MediaFormat.KEY_COLOR_RANGE, colorRange)
        codecProfile?.let { format.setInteger(MediaFormat.KEY_PROFILE, it) }
    }

    companion object {
        fun sdrDisplay(debugName: String = "sdr-display"): VideoEncoderColorConfig {
            return VideoEncoderColorConfig(
                pipeline = VideoEncodedColorPipeline.SDR_DISPLAY,
                colorStandard = MediaFormat.COLOR_STANDARD_BT709,
                colorTransfer = MediaFormat.COLOR_TRANSFER_SDR_VIDEO,
                colorRange = MediaFormat.COLOR_RANGE_LIMITED,
                codecProfile = null,
                prefer10BitInputSurface = false,
                debugName = debugName
            )
        }
    }
}

fun resolveVideoEncoderColorConfig(
    codecInfo: MediaCodecInfo,
    codecMime: String,
    request: VideoEncoderColorRequest
): VideoEncoderColorConfig {
    // HLG is an HDR output transfer, not a camera Log curve. Keep the transfer
    // function and Rec.2020 primaries even when a compatible creative LUT is active.
    if (request.logProfile == VideoLogProfile.HLG10) {
        val codecProfile = if (request.force8BitHlg) null else resolve10BitProfile(codecInfo, codecMime)
        val is10Bit = codecProfile != null
        return VideoEncoderColorConfig(
            pipeline = VideoEncodedColorPipeline.HLG10,
            colorStandard = MediaFormat.COLOR_STANDARD_BT2020,
            colorTransfer = MediaFormat.COLOR_TRANSFER_HLG,
            colorRange = MediaFormat.COLOR_RANGE_LIMITED,
            codecProfile = codecProfile,
            prefer10BitInputSurface = is10Bit,
            debugName = if (is10Bit) "hlg10-main10" else "hlg-8bit-fallback",
            require10BitInputSurface = is10Bit
        )
    }

    val customLogRequested = request.logProfile.isEnabled && !request.hasActiveLut
    if (!customLogRequested) {
        val debugName = if (request.logProfile.isEnabled && request.hasActiveLut) {
            "baked-display-from-log"
        } else {
            "sdr-display"
        }
        return VideoEncoderColorConfig.sdrDisplay(debugName = debugName)
    }

    val colorStandard = resolveContainerColorStandard(request.logProfile.colorSpace)
    val codecProfile = resolve10BitProfile(codecInfo, codecMime)
    return VideoEncoderColorConfig(
        pipeline = VideoEncodedColorPipeline.CUSTOM_LOG,
        colorStandard = colorStandard,
        // Android/ISO container metadata没有 Apple Log / V-Log / LogC4 等传递函数枚举。
        // 为了让播放器不对 Log 视频进行 HDR 色调映射而丢失灰片效果，
        // 必须将其显式标记为 SDR 传递函数（避免 10-bit 编码时被默认当成 HLG/PQ）
        colorTransfer = MediaFormat.COLOR_TRANSFER_SDR_VIDEO,
        colorRange = MediaFormat.COLOR_RANGE_LIMITED,
        codecProfile = codecProfile,
        prefer10BitInputSurface = codecProfile != null,
        debugName = "custom-log-${request.logProfile.name.lowercase()}"
    )
}

private fun resolve10BitProfile(codecInfo: MediaCodecInfo, codecMime: String): Int? {
    val capabilities = runCatching { codecInfo.getCapabilitiesForType(codecMime) }.getOrNull() ?: return null
    val supportedProfiles = capabilities.profileLevels.map { it.profile }.toSet()
    return when (codecMime) {
        MediaFormat.MIMETYPE_VIDEO_HEVC -> {
            MediaCodecInfo.CodecProfileLevel.HEVCProfileMain10.takeIf { supportedProfiles.contains(it) }
        }
        MediaFormat.MIMETYPE_VIDEO_AVC -> {
            MediaCodecInfo.CodecProfileLevel.AVCProfileHigh10.takeIf { supportedProfiles.contains(it) }
        }
        else -> null
    }
}

private fun resolveContainerColorStandard(colorSpace: ColorSpace): Int {
    return when (colorSpace) {
        ColorSpace.SRGB -> MediaFormat.COLOR_STANDARD_BT709
        else -> MediaFormat.COLOR_STANDARD_BT2020
    }
}
