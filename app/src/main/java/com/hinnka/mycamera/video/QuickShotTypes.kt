package com.hinnka.mycamera.video

import android.graphics.SurfaceTexture
import android.hardware.camera2.CameraCharacteristics
import android.util.Size
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs

enum class QuickShotResolutionPreset(
    val displayName: String,
    val targetLongEdge: Int?
) {
    FHD_1080P("1080p", 1920),
    QHD_2K("2K", 2560),
    UHD_4K("4K", 3840),
    FULL("Full", null);
}

data class QuickShotConfig(
    val resolution: QuickShotResolutionPreset = QuickShotResolutionPreset.FHD_1080P
)

data class QuickShotCapabilities(
    val availableResolutions: List<QuickShotResolutionPreset> = emptyList(),
    val previewSizesByResolution: Map<QuickShotResolutionPreset, Size> = emptyMap()
)

data class QuickShotCapabilitySnapshot(
    val config: QuickShotConfig,
    val capabilities: QuickShotCapabilities,
    val previewSize: Size
)

data class QuickShotOutputSize(
    val width: Int,
    val height: Int
) {
    val longEdge: Int
        get() = maxOf(width, height)

    val area: Long
        get() = width.toLong() * height.toLong()

    fun portraitAspectRatio(): Float {
        val shortEdge = minOf(width, height).coerceAtLeast(1)
        return shortEdge.toFloat() / longEdge.coerceAtLeast(1).toFloat()
    }

    fun toAndroidSize(): Size = Size(width, height)
}

data class QuickShotSizeSnapshot(
    val config: QuickShotConfig,
    val availableResolutions: List<QuickShotResolutionPreset>,
    val previewSizesByResolution: Map<QuickShotResolutionPreset, QuickShotOutputSize>,
    val previewSize: QuickShotOutputSize
)

object QuickShotCapabilitiesResolver {
    private const val TAG = "QuickShotCapabilitiesResolver"
    private val FALLBACK_SIZE = QuickShotOutputSize(1440, 1920)

    fun resolve(
        characteristics: CameraCharacteristics,
        requestedConfig: QuickShotConfig,
        aspectRatio: AspectRatio
    ): QuickShotCapabilitySnapshot {
        val streamConfigMap = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
        val previewOutputSizes = try {
            streamConfigMap?.getOutputSizes(SurfaceTexture::class.java)
                ?.map { QuickShotOutputSize(it.width, it.height) }
                .orEmpty()
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to query quick-shot preview sizes: ${e.message}")
            emptyList()
        }
        val sizeSnapshot = resolveFromOutputSizes(
            outputSizes = previewOutputSizes,
            requestedConfig = requestedConfig,
            portraitAspectRatio = aspectRatio.getValue(isLandscape = false)
        )
        return QuickShotCapabilitySnapshot(
            config = sizeSnapshot.config,
            capabilities = QuickShotCapabilities(
                availableResolutions = sizeSnapshot.availableResolutions,
                previewSizesByResolution = sizeSnapshot.previewSizesByResolution.mapValues { it.value.toAndroidSize() }
            ),
            previewSize = sizeSnapshot.previewSize.toAndroidSize()
        )
    }

    fun resolveFromOutputSizes(
        outputSizes: List<QuickShotOutputSize>,
        requestedConfig: QuickShotConfig,
        portraitAspectRatio: Float
    ): QuickShotSizeSnapshot {
        val sanitizedSizes = outputSizes
            .filter { it.width > 0 && it.height > 0 }
            .distinct()

        if (sanitizedSizes.isEmpty()) {
            return QuickShotSizeSnapshot(
                config = requestedConfig.copy(resolution = QuickShotResolutionPreset.FHD_1080P),
                availableResolutions = listOf(QuickShotResolutionPreset.FHD_1080P),
                previewSizesByResolution = mapOf(QuickShotResolutionPreset.FHD_1080P to FALLBACK_SIZE),
                previewSize = FALLBACK_SIZE
            )
        }

        val availableSizes = QuickShotResolutionPreset.entries.mapNotNull { preset ->
            val size = findBestOutputSize(sanitizedSizes, preset, portraitAspectRatio)
            size?.let { preset to it }
        }
        val availableResolutions = availableSizes.map { it.first }
        val resolvedResolution = requestedConfig.resolution.takeIf { it in availableResolutions }
            ?: availableResolutions.firstOrNull()
            ?: QuickShotResolutionPreset.FHD_1080P
        val previewSizesByResolution = availableSizes.toMap()
        val previewSize = previewSizesByResolution[resolvedResolution]
            ?: findFullSize(sanitizedSizes, portraitAspectRatio)
            ?: FALLBACK_SIZE

        return QuickShotSizeSnapshot(
            config = requestedConfig.copy(resolution = resolvedResolution),
            availableResolutions = availableResolutions.ifEmpty { listOf(resolvedResolution) },
            previewSizesByResolution = previewSizesByResolution.ifEmpty { mapOf(resolvedResolution to previewSize) },
            previewSize = previewSize
        )
    }

    private fun findBestOutputSize(
        outputSizes: List<QuickShotOutputSize>,
        preset: QuickShotResolutionPreset,
        portraitAspectRatio: Float
    ): QuickShotOutputSize? {
        if (preset == QuickShotResolutionPreset.FULL) {
            return findFullSize(outputSizes, portraitAspectRatio)
        }
        val targetLongEdge = preset.targetLongEdge ?: return null
        return outputSizes
            .filter { it.longEdge >= targetLongEdge }
            .sortedWith(
                compareBy<QuickShotOutputSize> { abs(it.portraitAspectRatio() - portraitAspectRatio) }
                    .thenBy { abs(it.longEdge - targetLongEdge) }
                    .thenBy { it.area }
            )
            .firstOrNull()
    }

    private fun findFullSize(
        outputSizes: List<QuickShotOutputSize>,
        portraitAspectRatio: Float
    ): QuickShotOutputSize? {
        return outputSizes
            .sortedWith(
                compareByDescending<QuickShotOutputSize> { it.area }
                    .thenBy { abs(it.portraitAspectRatio() - portraitAspectRatio) }
            )
            .firstOrNull()
    }
}
