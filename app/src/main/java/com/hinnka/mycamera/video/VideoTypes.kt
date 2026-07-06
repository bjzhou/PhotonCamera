package com.hinnka.mycamera.video

import android.graphics.Rect
import android.os.Environment
import android.util.Size
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.color.TransferCurve
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt

enum class VideoStabilizationMode(val displayName: String) {
    OIS("OIS"),
    EIS("EIS"),
    OFF("OFF")
}

enum class CaptureMode {
    PHOTO,
    QUICK_SHOT,
    VIDEO
}

enum class VideoAspectRatio {
    RATIO_16_9,
    RATIO_21_9,
    OPEN_GATE;

    fun getDisplayName(): String {
        return when (this) {
            RATIO_16_9 -> "16:9"
            RATIO_21_9 -> "21:9"
            OPEN_GATE -> "Open Gate"
        }
    }

    fun getPortraitAspectRatio(openGatePortraitAspectRatio: Float): Float {
        return when (this) {
            RATIO_16_9 -> 9f / 16f
            RATIO_21_9 -> 9f / 21f
            OPEN_GATE -> openGatePortraitAspectRatio
        }
    }
}

enum class VideoResolutionPreset(
    val displayName: String,
    val shortEdge: Int,
    val longEdge: Int
) {
    UHD_2160P("2160p", 2160, 3840),
    FHD_1080P("1080p", 1080, 1920),
    HD_720P("720p", 720, 1280);

    fun resolveOutputSize(portraitAspectRatio: Float): Size {
        val clampedAspect = portraitAspectRatio.coerceIn(0.1f, 1.0f)
        val height = longEdge
        val width = (height * clampedAspect).toInt().align16()

        return Size(width, height.align16())
    }
}

enum class VideoFpsPreset(val fps: Int) {
    FPS_24(24),
    FPS_25(25),
    FPS_30(30),
    FPS_50(50),
    FPS_60(60);

    fun getDisplayName(): String = fps.toString()
}

enum class VideoBitratePreset(val bitrateMbps: Int) {
    P1(30),
    P2(60),
    P3(90),
    P4(120),
    P5(250);
}

enum class VideoCodec(val displayName: String, val mimeType: String) {
    H264("H.264", "video/avc"),
    H265("H.265", "video/hevc");
}

enum class VideoRecordingPath(val relativePath: String?) {
    DCIM_PHOTON(Environment.DIRECTORY_DCIM + "/PhotonCamera"),
    EXTERNAL_TREE(null);

    companion object {
        fun fromPersistedName(name: String?): VideoRecordingPath {
            return entries.firstOrNull { it.name == name } ?: DCIM_PHOTON
        }
    }
}

enum class VideoLogProfile(
    val displayName: String,
    val logCurve: TransferCurve,
    val colorSpace: ColorSpace
) {
    OFF("Off", TransferCurve.SRGB, ColorSpace.SRGB),
    APPLE_LOG2("Apple-Log2", TransferCurve.APPLE_LOG, ColorSpace.AppleLog2),
    FLOG2_BT2020("F-Log2", TransferCurve.FLOG2, ColorSpace.BT2020),
    V_LOG("V-Log", TransferCurve.VLOG, ColorSpace.VGamut),
    LOGC4_ARRI4("LogC4", TransferCurve.LOGC4, ColorSpace.ARRI4),
    LOG3G10_RED("Log3G10", TransferCurve.LOG3G10, ColorSpace.RED),
    LLOG_BT2020("L-Log", TransferCurve.LLOG, ColorSpace.BT2020),
    ACESCCT_AP1("ACEScct", TransferCurve.ACES_CCT, ColorSpace.ACES_AP1);

    val isEnabled: Boolean
        get() = this != OFF
}

data class VideoConfig(
    val resolution: VideoResolutionPreset = VideoResolutionPreset.FHD_1080P,
    val fps: VideoFpsPreset = VideoFpsPreset.FPS_30,
    val aspectRatio: VideoAspectRatio = VideoAspectRatio.RATIO_16_9,
    val logProfile: VideoLogProfile = VideoLogProfile.OFF,
    val bitrate: VideoBitratePreset = VideoBitratePreset.P1,
    val codec: VideoCodec = VideoCodec.H264,
    val audioInputId: String = VIDEO_AUDIO_INPUT_AUTO,
    val recordingPath: VideoRecordingPath = VideoRecordingPath.DCIM_PHOTON,
    val recordingTreeUri: String? = null,
    val stabilizationMode: VideoStabilizationMode = VideoStabilizationMode.OIS,
    val torchEnabled: Boolean = false
) {
    fun resolveOutputSize(openGatePortraitAspectRatio: Float): Size {
        return resolution.resolveOutputSize(
            aspectRatio.getPortraitAspectRatio(openGatePortraitAspectRatio)
        )
    }
}

data class VideoCapabilities(
    val availableResolutions: List<VideoResolutionPreset> = emptyList(),
    val availableFps: List<VideoFpsPreset> = emptyList(),
    val availableAspectRatios: List<VideoAspectRatio> = VideoAspectRatio.entries.toList(),
    val availableLogProfiles: List<VideoLogProfile> = listOf(VideoLogProfile.OFF),
    val availableBitrates: List<VideoBitratePreset> = VideoBitratePreset.entries.toList(),
    val availableCodecs: List<VideoCodec> = VideoCodec.entries.toList(),
    val previewSizesByResolution: Map<VideoResolutionPreset, Size> = emptyMap(),
    val openGatePortraitAspectRatio: Float = 3f / 4f,
    val availableStabilizationModes: List<VideoStabilizationMode> = emptyList(),
    val supportsTorch: Boolean = false,
    val linearTonemapSupported: Boolean = false
)

data class VideoRecordingState(
    val isRecording: Boolean = false,
    val isPaused: Boolean = false,
    val elapsedMs: Long = 0L
)

data class VideoCapabilitySnapshot(
    val config: VideoConfig,
    val capabilities: VideoCapabilities,
    val previewSize: Size
)

fun resolveOpenGatePortraitAspectRatio(
    activeArraySize: Rect?,
    sensorOrientation: Int
): Float {
    val rect = activeArraySize ?: return 3f / 4f
    val width = max(1, rect.width())
    val height = max(1, rect.height())
    return if (sensorOrientation % 180 == 0) {
        min(width, height).toFloat() / max(width, height).toFloat()
    } else {
        min(height, width).toFloat() / max(height, width).toFloat()
    }.coerceIn(0.1f, 1f)
}

private fun Int.align16(): Int {
    return (this / 16 * 16).coerceAtLeast(16)
}
