package com.hinnka.mycamera.video

import android.graphics.SurfaceTexture
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureRequest
import android.media.MediaRecorder
import android.os.Build
import android.util.Range
import android.util.Size
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs

object VideoCapabilitiesResolver {

    private const val TAG = "VideoCapabilitiesResolver"
    private const val VIDEO_PREVIEW_SHORT_EDGE = 1080
    private const val VIDEO_PREVIEW_ASPECT_TOLERANCE = 0.01f

    fun resolve(
        characteristics: CameraCharacteristics,
        requestedConfig: VideoConfig,
        availableTonemapModes: IntArray = intArrayOf(),
        availableVideoStabilizationModes: IntArray = intArrayOf(),
        availableOpticalStabilizationModes: IntArray = intArrayOf(),
        algorithmicStabilizationSupported: Boolean = false,
        isFlashSupported: Boolean = false
    ): VideoCapabilitySnapshot {
        val streamConfigMap = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
        val previewOutputSizes = streamConfigMap?.getOutputSizes(SurfaceTexture::class.java)?.toList().orEmpty()
        val recordingOutputSizes = resolveRecordingOutputSizes(characteristics)
        val sensorOrientation = characteristics.get(CameraCharacteristics.SENSOR_ORIENTATION) ?: 0
        val activeArray = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)
        val openGateAspect = resolveOpenGatePortraitAspectRatio(activeArray, sensorOrientation)

        val availableResolutions = VideoResolutionPreset.entries.filter { preset ->
            findBestOutputSize(recordingOutputSizes, preset, requestedConfig.aspectRatio, openGateAspect) != null &&
                findBestOutputSize(previewOutputSizes, preset, requestedConfig.aspectRatio, openGateAspect) != null
        }

        val resolvedResolution = requestedConfig.resolution.takeIf { availableResolutions.contains(it) }
            ?: availableResolutions.firstOrNull()
            ?: VideoResolutionPreset.FHD_1080P

        val recordingSizesByResolution = availableResolutions.mapNotNull { preset ->
            findBestOutputSize(recordingOutputSizes, preset, requestedConfig.aspectRatio, openGateAspect)
                ?.let { preset to it }
        }.toMap()
        val cameraInputSizesByResolution = availableResolutions.mapNotNull { preset ->
            findBestOutputSize(previewOutputSizes, preset, requestedConfig.aspectRatio, openGateAspect)
                ?.let { preset to it }
        }.toMap()

        val recordingSize = recordingSizesByResolution[resolvedResolution]
            ?: resolvedResolution.resolveOutputSize(
                requestedConfig.aspectRatio.getPortraitAspectRatio(openGateAspect)
            )

        val previewSize = findFixedPreviewOutputSize(
            outputSizes = previewOutputSizes,
            aspectRatio = requestedConfig.aspectRatio,
            openGatePortraitAspectRatio = openGateAspect
        ) ?: VideoResolutionPreset.FHD_1080P.resolveOutputSize(
            requestedConfig.aspectRatio.getPortraitAspectRatio(openGateAspect)
        )
        val cameraInputSize = cameraInputSizesByResolution[resolvedResolution] ?: previewSize

        val availableFps = resolveAvailableFps(
            characteristics = characteristics,
            cameraInputSize = cameraInputSize,
            previewSize = previewSize
        )
        val resolvedFps = requestedConfig.fps.takeIf { availableFps.contains(it) }
            ?: availableFps.firstOrNull()
            ?: VideoFpsPreset.FPS_30

        /*PLog.d(
            TAG,
            "Resolved video capabilities: resolution=${resolvedResolution.displayName}, " +
                "recording=${recordingSize.width}x${recordingSize.height}, " +
                "cameraInput=${cameraInputSize.width}x${cameraInputSize.height}, " +
                "preview=${previewSize.width}x${previewSize.height}, " +
                "fps=${availableFps.map { it.fps }}"
        )*/

        val linearTonemapSupported = availableTonemapModes.contains(CaptureRequest.TONEMAP_MODE_CONTRAST_CURVE) ||
            availableTonemapModes.contains(CaptureRequest.TONEMAP_MODE_GAMMA_VALUE)
        val availableLogProfiles = if (linearTonemapSupported) {
            VideoLogProfile.entries.toList()
        } else {
            listOf(VideoLogProfile.OFF)
        }
        val resolvedLogProfile = requestedConfig.logProfile.takeIf { availableLogProfiles.contains(it) }
            ?: availableLogProfiles.first()

        val availableStabilizationModes = mutableListOf(VideoStabilizationMode.OFF)
        if (supportsElectronicStabilization(availableVideoStabilizationModes)) {
            availableStabilizationModes.add(VideoStabilizationMode.EIS)
        }
        if (availableOpticalStabilizationModes.contains(CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE_ON)) {
            availableStabilizationModes.add(VideoStabilizationMode.OIS)
        }
        val enhancedCameraInputSize = cameraInputSizesByResolution[VideoResolutionPreset.FHD_1080P]
        val enhancedStabilizationAvailable = algorithmicStabilizationSupported &&
            enhancedCameraInputSize != null
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

        return VideoCapabilitySnapshot(
            config = requestedConfig.copy(
                resolution = resolvedResolution,
                fps = resolvedFps,
                logProfile = resolvedLogProfile,
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
                recordingSizesByResolution = recordingSizesByResolution,
                openGatePortraitAspectRatio = openGateAspect,
                availableStabilizationModes = availableStabilizationModes,
                supportsTorch = isFlashSupported,
                linearTonemapSupported = linearTonemapSupported
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
        return outputSizes
            .filter { maxOf(it.width, it.height) >= preset.longEdge }
            .sortedWith(
                compareBy<Size> { abs(getPortraitAspectRatio(it) - targetAspect) }
                    .thenBy { abs(maxOf(it.width, it.height) - preset.longEdge) }
                    .thenByDescending { it.width.toLong() * it.height.toLong() }
            )
            .firstOrNull()
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
            minOf(it.width, it.height) <= VIDEO_PREVIEW_SHORT_EDGE
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
        previewSize: Size
    ): List<VideoFpsPreset> {
        val outputRanges = characteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES)
            ?: emptyArray()
        val minFrameDurationNs = resolveMinFrameDurationNs(characteristics, cameraInputSize, previewSize)
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

    private fun resolveRecordingOutputSizes(characteristics: CameraCharacteristics): List<Size> {
        val streamConfigMap = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
        return try {
            streamConfigMap?.getOutputSizes(MediaRecorder::class.java)?.toList().orEmpty()
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to query MediaRecorder output sizes: ${e.message}")
            emptyList()
        }.ifEmpty {
            streamConfigMap?.getOutputSizes(SurfaceTexture::class.java)?.toList().orEmpty()
        }
    }

    private fun resolveMinFrameDurationNs(
        characteristics: CameraCharacteristics,
        cameraInputSize: Size,
        previewSize: Size
    ): Long {
        val streamConfigMap = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
        if (streamConfigMap == null) return 0L

        val cameraInputDurationNs = queryMinFrameDurationNs(
            streamConfigMap = streamConfigMap,
            outputClass = SurfaceTexture::class.java,
            outputSize = cameraInputSize,
            label = "recording SurfaceTexture"
        )
        val previewDurationNs = queryMinFrameDurationNs(
            streamConfigMap = streamConfigMap,
            outputClass = SurfaceTexture::class.java,
            outputSize = previewSize,
            label = "preview SurfaceTexture"
        )
        return maxOf(cameraInputDurationNs, previewDurationNs)
    }

    private fun <T> queryMinFrameDurationNs(
        streamConfigMap: android.hardware.camera2.params.StreamConfigurationMap,
        outputClass: Class<T>,
        outputSize: Size,
        label: String
    ): Long {
        return try {
            streamConfigMap.getOutputMinFrameDuration(outputClass, outputSize)
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to query $label min frame duration for $outputSize: ${e.message}")
            0L
        }
    }

    private fun getPortraitAspectRatio(size: Size): Float {
        val width = minOf(size.width, size.height).coerceAtLeast(1)
        val height = maxOf(size.width, size.height).coerceAtLeast(1)
        return width.toFloat() / height.toFloat()
    }
}
