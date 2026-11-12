package com.hinnka.mycamera.video

import android.graphics.ImageFormat
import android.graphics.SurfaceTexture
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureRequest
import android.os.Build
import android.util.Range
import android.util.Size
import com.hinnka.mycamera.camera.readMetadataOrNull
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs

object VideoCapabilitiesResolver {

    private const val TAG = "VideoCapabilitiesResolver"
    private const val VIDEO_PREVIEW_ASPECT_TOLERANCE = 0.01f
    private const val EIGHT_MP_SOURCE_MIN_PIXELS = 7_500_000L
    private const val EIGHT_MP_SOURCE_MAX_PIXELS = 12_000_000L
    private const val EIGHT_MP_SOURCE_ASPECT_TOLERANCE = 0.04f

    fun resolve(
        characteristics: CameraCharacteristics,
        requestedConfig: VideoConfig,
        algorithmicStabilizationSupported: Boolean = false,
    ): VideoCapabilitySnapshot {
        // Resolve from one metadata snapshot. Session caches are cleared while reopening,
        // which must not turn a supported user selection into an unsupported capability.
        val availableVideoStabilizationModes = characteristics.get(
            CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES
        ) ?: intArrayOf()
        val availableOpticalStabilizationModes = characteristics.get(
            CameraCharacteristics.LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION
        ) ?: intArrayOf()
        val isFlashSupported = characteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE) ?: false
        val streamConfigMap = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
        val yuvOutputSizes = streamConfigMap?.getOutputSizes(ImageFormat.YUV_420_888)?.toList().orEmpty()
        val usesYuv = requestedConfig.effectiveInputMode == VideoInputMode.YUV
        val oesOutputSizes = streamConfigMap?.getOutputSizes(SurfaceTexture::class.java)?.toList().orEmpty()
        val inputOutputSizes = if (usesYuv) yuvOutputSizes else oesOutputSizes
        val sensorOrientation = characteristics.get(CameraCharacteristics.SENSOR_ORIENTATION) ?: 0
        val activeArray = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)
        val openGateAspect = resolveOpenGatePortraitAspectRatio(activeArray, sensorOrientation)

        val availableResolutions = VideoResolutionPreset.entries.filter { preset ->
            preset.isAvailableFor(requestedConfig.aspectRatio) &&
                findBestOutputSize(inputOutputSizes, preset, requestedConfig.aspectRatio, openGateAspect) != null
        }

        val cameraInputSizesByResolution = availableResolutions.mapNotNull { preset ->
            findBestOutputSize(inputOutputSizes, preset, requestedConfig.aspectRatio, openGateAspect)
                ?.let { preset to it }
        }.toMap()
        val recordingSizesByResolution = cameraInputSizesByResolution
        val enhancedStabilizationInputSizesByResolution = availableResolutions.mapNotNull { preset ->
            findBestOutputSize(yuvOutputSizes, preset, requestedConfig.aspectRatio, openGateAspect)
                ?.let { preset to it }
        }.toMap()

        val resolvedResolution = requestedConfig.resolution.takeIf { availableResolutions.contains(it) }
            ?: availableResolutions.firstOrNull()
            ?: VideoResolutionPreset.FHD_1080P

        val recordingSize = recordingSizesByResolution[resolvedResolution]
            ?: resolvedResolution.resolveOutputSize(
                requestedConfig.aspectRatio.getPortraitAspectRatio(openGateAspect)
            )

        val cameraInputSize = cameraInputSizesByResolution[resolvedResolution]
            ?: inputOutputSizes.maxByOrNull { it.width.toLong() * it.height }
            ?: recordingSize
        val previewSize = if (usesYuv) cameraInputSize else {
            findFixedPreviewOutputSize(oesOutputSizes, requestedConfig.aspectRatio, openGateAspect)
                ?: cameraInputSize
        }

        val availableFps = resolveAvailableFps(
            characteristics = characteristics,
            cameraInputSize = cameraInputSize,
            previewSize = previewSize,
            usesYuv = usesYuv,
        )
        val resolvedFps = requestedConfig.fps.takeIf { availableFps.contains(it) }
            ?: availableFps.firstOrNull()
            ?: VideoFpsPreset.FPS_30

        val enhancedCameraInputSize =
            enhancedStabilizationInputSizesByResolution[resolvedResolution]
        val enhancedStabilizationAvailable = algorithmicStabilizationSupported &&
            enhancedCameraInputSize != null

        /*PLog.d(
            TAG,
            "Resolved video capabilities: resolution=${resolvedResolution.displayName}, " +
                "recording=${recordingSize.width}x${recordingSize.height}, " +
                "cameraInput=${cameraInputSize.width}x${cameraInputSize.height}, " +
                "preview=${previewSize.width}x${previewSize.height}, " +
                "fps=${availableFps.map { it.fps }}"
        )*/

        // Log 由 app 侧从 HAL sRGB 输出逆变换得到，不依赖 HAL tonemap 能力。
        val availableLogProfiles = VideoLogProfile.entries.toList()

        val availableStabilizationModes = mutableListOf(VideoStabilizationMode.OFF)
        if (supportsElectronicStabilization(availableVideoStabilizationModes)) {
            availableStabilizationModes.add(VideoStabilizationMode.EIS)
        }
        if (availableOpticalStabilizationModes.contains(CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE_ON)) {
            availableStabilizationModes.add(VideoStabilizationMode.OIS)
        }
        if (enhancedStabilizationAvailable) {
            availableStabilizationModes.add(VideoStabilizationMode.ENHANCED)
        }
        
        val resolvedStabilizationMode = if (availableStabilizationModes.contains(requestedConfig.stabilizationMode)) {
            requestedConfig.stabilizationMode
        } else {
            if (availableStabilizationModes.contains(VideoStabilizationMode.OIS)) VideoStabilizationMode.OIS
            else if (availableStabilizationModes.contains(VideoStabilizationMode.EIS)) VideoStabilizationMode.EIS
            else VideoStabilizationMode.OFF
        }

        // A rejected EIS+ request must also resolve sizes for the restored input format.
        if (requestedConfig.inputMode.withStabilization(resolvedStabilizationMode) !=
            requestedConfig.effectiveInputMode
        ) {
            return resolve(characteristics, requestedConfig.copy(stabilizationMode = resolvedStabilizationMode),
                algorithmicStabilizationSupported = false)
        }
        return VideoCapabilitySnapshot(
            config = requestedConfig.copy(
                resolution = resolvedResolution,
                fps = resolvedFps,
                logProfile = requestedConfig.logProfile,
                bitrate = requestedConfig.bitrate,
                stabilizationMode = resolvedStabilizationMode,
                torchEnabled = requestedConfig.torchEnabled && isFlashSupported
            ),
            capabilities = VideoCapabilities(
                availableResolutions = availableResolutions,
                availableFps = availableFps,
                availableAspectRatios = VideoAspectRatio.entries.toList(),
                availableLogProfiles = availableLogProfiles,
                availableBitrates = VideoBitratePreset.entries.toList(),
                cameraInputSizesByResolution = cameraInputSizesByResolution,
                enhancedStabilizationInputSizesByResolution =
                    enhancedStabilizationInputSizesByResolution,
                recordingSizesByResolution = recordingSizesByResolution,
                openGatePortraitAspectRatio = openGateAspect,
                availableStabilizationModes = availableStabilizationModes,
                supportsTorch = isFlashSupported
            ),
            previewSize = previewSize,
            recordingSize = recordingSize
        )
    }

    private fun supportsElectronicStabilization(availableVideoStabilizationModes: IntArray): Boolean {
        return availableVideoStabilizationModes.contains(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE_ON) ||
            supportsPreviewStabilization(availableVideoStabilizationModes)
    }

    private fun supportsPreviewStabilization(availableVideoStabilizationModes: IntArray): Boolean {
        return Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU &&
            availableVideoStabilizationModes.contains(
                CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE_PREVIEW_STABILIZATION
            )
    }

    private fun findBestOutputSize(
        outputSizes: List<Size>,
        preset: VideoResolutionPreset,
        aspectRatio: VideoAspectRatio,
        openGatePortraitAspectRatio: Float
    ): Size? {
        if (outputSizes.isEmpty()) return null

        val targetAspect = aspectRatio.getPortraitAspectRatio(openGatePortraitAspectRatio)
        if (aspectRatio == VideoAspectRatio.OPEN_GATE && preset == VideoResolutionPreset.MAX) {
            // Prefer the largest full-sensor stream, allowing the same aspect
            // tolerance as the preview selection.
            val aspectMatchedSizes = outputSizes.filter {
                abs(getPortraitAspectRatio(it) - targetAspect) <= VIDEO_PREVIEW_ASPECT_TOLERANCE
            }
            return if (aspectMatchedSizes.isNotEmpty()) {
                aspectMatchedSizes.maxByOrNull { it.width.toLong() * it.height.toLong() }
            } else {
                outputSizes.minWithOrNull(
                    compareBy<Size> { abs(getPortraitAspectRatio(it) - targetAspect) }
                        .thenByDescending { it.width.toLong() * it.height.toLong() }
                )
            }
        }
        if (preset == VideoResolutionPreset.MAX) return null
        if (aspectRatio == VideoAspectRatio.OPEN_GATE) {
            // Full-sensor stream whose long edge covers the preset, closest to the
            // preset size, allowing the same aspect tolerance as the preview selection.
            val coveringSizes = outputSizes.filter { maxOf(it.width, it.height) >= preset.longEdge }
            val aspectMatchedSizes = coveringSizes.filter {
                abs(getPortraitAspectRatio(it) - targetAspect) <= VIDEO_PREVIEW_ASPECT_TOLERANCE
            }
            return if (aspectMatchedSizes.isNotEmpty()) {
                aspectMatchedSizes.minByOrNull { it.width.toLong() * it.height.toLong() }
            } else {
                coveringSizes.minWithOrNull(
                    compareBy<Size> { abs(getPortraitAspectRatio(it) - targetAspect) }
                        .thenBy { it.width.toLong() * it.height.toLong() }
                )
            }
        }
        val coveringSize = outputSizes
            .filter { maxOf(it.width, it.height) >= preset.longEdge }
            .sortedWith(
                compareBy<Size> { abs(getPortraitAspectRatio(it) - targetAspect) }
                    .thenBy { abs(maxOf(it.width, it.height) - preset.longEdge) }
                    .thenByDescending { it.width.toLong() * it.height.toLong() }
            )
            .firstOrNull()
        if (coveringSize != null || preset != VideoResolutionPreset.UHD_2160P) return coveringSize
        // 8MP 级 4:3 传感器（常见于前摄/超广角）没有长边 ≥3840 的流，但像素量与 4K 相当；
        // 录制经 GL 渲染裁切缩放到编码尺寸，因此允许以该流作为 4K 输入源。
        return outputSizes
            .filter(::isEightMpFourThreeSource)
            .maxByOrNull { it.width.toLong() * it.height.toLong() }
    }

    private fun isEightMpFourThreeSource(size: Size): Boolean {
        val pixels = size.width.toLong() * size.height.toLong()
        return pixels in EIGHT_MP_SOURCE_MIN_PIXELS until EIGHT_MP_SOURCE_MAX_PIXELS &&
            abs(getPortraitAspectRatio(size) - 3f / 4f) <= EIGHT_MP_SOURCE_ASPECT_TOLERANCE
    }

    private fun findFixedPreviewOutputSize(
        outputSizes: List<Size>,
        aspectRatio: VideoAspectRatio,
        openGatePortraitAspectRatio: Float
    ): Size? {
        val validSizes = outputSizes
            .filter { it.width > 0 && it.height > 0 }
            .distinctBy { it.width to it.height }
        if (validSizes.isEmpty()) return null

        val targetAspect = aspectRatio.getPortraitAspectRatio(openGatePortraitAspectRatio)
        val aspectMatchedSizes = validSizes.filter {
            abs(getPortraitAspectRatio(it) - targetAspect) <= VIDEO_PREVIEW_ASPECT_TOLERANCE
        }
        val candidates = aspectMatchedSizes.ifEmpty { validSizes }
        val sizesWithinLimit = candidates.filter {
            minOf(it.width, it.height) <= 1080 && maxOf(it.width, it.height) <= 1920
        }

        return if (sizesWithinLimit.isNotEmpty()) {
            sizesWithinLimit.sortedWith(
                compareByDescending<Size> { minOf(it.width, it.height) }
                    .thenBy { abs(getPortraitAspectRatio(it) - targetAspect) }
                    .thenByDescending { it.width.toLong() * it.height.toLong() }
            ).first()
        } else {
            candidates.sortedWith(
                compareBy<Size> { minOf(it.width, it.height) }
                    .thenBy { abs(getPortraitAspectRatio(it) - targetAspect) }
                    .thenBy { it.width.toLong() * it.height.toLong() }
            ).first()
        }
    }

    private fun resolveAvailableFps(
        characteristics: CameraCharacteristics,
        cameraInputSize: Size,
        previewSize: Size,
        usesYuv: Boolean,
    ): List<VideoFpsPreset> {
        val outputRanges = characteristics.readMetadataOrNull(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES)
            ?: return emptyList()
        if (outputRanges.isEmpty()) return emptyList()
        val minFrameDurationNs = resolveMinFrameDurationNs(characteristics, cameraInputSize, previewSize, usesYuv)
        val maxFpsByDuration = if (minFrameDurationNs > 0) {
            (1_000_000_000.0 / minFrameDurationNs.toDouble()).toInt()
        } else {
            Int.MAX_VALUE
        }

        val strictAvailableFps = VideoFpsPreset.entries.filter { preset ->
            preset.fps <= maxFpsByDuration && outputRanges.any { range ->
                supportsFps(range, preset.fps)
            }
        }

        if (strictAvailableFps.isNotEmpty()) {
            val advertisedMaxFps = strictAvailableFps.maxOf { it.fps }
            if (advertisedMaxFps >= 50) {
                return strictAvailableFps
            }

            val optimisticFps = VideoFpsPreset.entries.filter { it.fps > advertisedMaxFps }
            if (optimisticFps.isNotEmpty()) {
                /*PLog.w(
                    TAG,
                    "Camera reports max $advertisedMaxFps fps only, keeping optimistic presets=${optimisticFps.map { it.fps }} " +
                        "for cameraInput=${cameraInputSize.width}x${cameraInputSize.height}"
                )*/
                return (strictAvailableFps + optimisticFps).distinctBy { it.fps }
            }
        }

        return strictAvailableFps.ifEmpty {
            listOf(VideoFpsPreset.FPS_30)
        }
    }

    private fun supportsFps(range: Range<Int>, fps: Int): Boolean {
        return range.upper >= fps && range.lower <= fps
    }

    private fun resolveMinFrameDurationNs(
        characteristics: CameraCharacteristics,
        cameraInputSize: Size,
        previewSize: Size,
        usesYuv: Boolean,
    ): Long {
        val streamConfigMap = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
        if (streamConfigMap == null) return 0L

        return try {
            if (usesYuv) {
                streamConfigMap.getOutputMinFrameDuration(ImageFormat.YUV_420_888, cameraInputSize)
            } else {
                maxOf(
                    streamConfigMap.getOutputMinFrameDuration(SurfaceTexture::class.java, cameraInputSize),
                    streamConfigMap.getOutputMinFrameDuration(SurfaceTexture::class.java, previewSize),
                )
            }
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to query video input min frame duration for $cameraInputSize: ${e.message}")
            0L
        }
    }

    private fun getPortraitAspectRatio(size: Size): Float {
        val width = minOf(size.width, size.height).coerceAtLeast(1)
        val height = maxOf(size.width, size.height).coerceAtLeast(1)
        return width.toFloat() / height.toFloat()
    }
}
