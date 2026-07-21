package com.hinnka.mycamera.processor

import android.graphics.Bitmap
import android.graphics.ColorSpace
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.MultiFrameConfig
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.raw.DngProfileGainTableMap
import com.hinnka.mycamera.raw.RawProfileToneMapMode
import com.hinnka.mycamera.utils.BitmapUtils

enum class RawStackBufferLayout {
    CFA,
    LINEAR_RGB,
}

/**
 * Opaque LinearRaw texture exported by the stacker into the persistent RAW renderer context.
 * It may only be consumed or released on that context's GL dispatcher.
 */
data class GpuLinearRgbSource(
    val textureId: Int,
    val width: Int,
    val height: Int,
    val samplesPerPixel: Int = 4,
)

data class RawStackResult(
    var fusedBayerBuffer: ByteBuffer?,
    val width: Int,
    val height: Int,
    val isNormalizedSensorData: Boolean,
    val blackLevel: FloatArray = floatArrayOf(0f, 0f, 0f, 0f),
    val fusedBayerUsesNativeAllocator: Boolean = false,
    val profileGainTableMap: DngProfileGainTableMap? = null,
    val profileToneMapMode: RawProfileToneMapMode = RawProfileToneMapMode.Default,
    val diagnostics: RawStackDiagnostics? = null,
    val bufferLayout: RawStackBufferLayout = RawStackBufferLayout.CFA,
    val inputRowStepSamples: Int? = null,
    val inputColStepSamples: Int? = null,
    val baselineExposureEv: Float? = null,
    val gpuLinearRgbSource: GpuLinearRgbSource? = null,
)

enum class YuvHdrStackFrameRole {
    ZERO_EV,
    HIGH_EV,
    LOW_EV,
}

data class YuvHdrStackFrame(
    val image: SafeImage,
    val exposureProduct: Float,
    val role: YuvHdrStackFrameRole,
)

/**
 * Multi-Frame Stacker
 * 
 * Manages the native stacking process for burst captures.
 * Aligns and merges multiple frames to reduce noise and improve quality.
 */
object MultiFrameStacker {
    private const val TAG = "MultiFrameStacker"

    /**
     * Process a burst of images and return a stacked Bitmap.
     * 
     * @param images List of captured Images (YUV_420_888).
     * @return Stacked Bitmap (ARGB_8888), or null if failed.
     */
    @Synchronized
    fun processBurst(
        images: List<SafeImage>,
        rotation: Int,
        aspectRatio: AspectRatio?,
        enableSuperResolution: Boolean = false,
        colorSpace: ColorSpace,
    ): Bitmap? {
        if (images.isEmpty()) return null

        val width = images[0].width
        val height = images[0].height

        val scale = if (enableSuperResolution) 2 else 1
        val dimensions = BitmapUtils.calculateProcessedRect(width, height, aspectRatio, null, rotation)
        val targetW = dimensions.width() * scale
        val targetH = dimensions.height() * scale

        val inputFormat = images[0].format
        if (!GlesYuvStacker.supportsImageFormat(inputFormat)) {
            PLog.w(TAG, "GLES streaming stacker does not support image format=$inputFormat")
            images.forEach { it.close() }
            return null
        }
        RawStackRuntimeDebug.i(TAG) {
            "Starting GLES streaming stacking process for ${images.size} frames ($width x $height). SR=$enableSuperResolution"
        }
        return try {
            GlesYuvStacker(
                width = width,
                height = height,
                outputWidth = targetW,
                outputHeight = targetH,
                rotation = rotation,
                colorSpace = colorSpace,
                inputFormat = inputFormat,
                enableSuperResolution = enableSuperResolution,
            ).process(images).also { result ->
                if (result == null) {
                    PLog.w(TAG, "GLES streaming stacker failed")
                }
            }
        } finally {
            images.forEach { it.close() }
        }
    }

    @Synchronized
    fun processHdrBurstYuv(
        frames: List<YuvHdrStackFrame>,
        fusionExposureProducts: FloatArray?,
        rotation: Int,
        aspectRatio: AspectRatio?,
        colorSpace: ColorSpace,
    ): Bitmap? {
        if (frames.size < 3) return null
        val images = frames.map { it.image }
        val width = images[0].width
        val height = images[0].height
        val dimensions = BitmapUtils.calculateProcessedRect(width, height, aspectRatio, null, rotation)
        val inputFormat = images[0].format

        if (!GlesYuvStacker.supportsImageFormat(inputFormat)) {
            PLog.w(TAG, "GLES HDR YUV stacker does not support image format=$inputFormat")
            images.forEach { it.close() }
            return null
        }

        val result = try {
            GlesYuvStacker(
                width = width,
                height = height,
                outputWidth = dimensions.width(),
                outputHeight = dimensions.height(),
                rotation = rotation,
                colorSpace = colorSpace,
                inputFormat = inputFormat,
            ).processHdr(
                frames = frames.map {
                    GlesYuvStacker.HdrInputFrame(
                        image = it.image,
                        exposureProduct = it.exposureProduct,
                        role = when (it.role) {
                            YuvHdrStackFrameRole.ZERO_EV -> GlesYuvStacker.HdrFrameRole.ZERO_EV
                            YuvHdrStackFrameRole.HIGH_EV -> GlesYuvStacker.HdrFrameRole.HIGH_EV
                            YuvHdrStackFrameRole.LOW_EV -> GlesYuvStacker.HdrFrameRole.LOW_EV
                        },
                    )
                },
                exposureProducts = fusionExposureProducts,
            )
        } finally {
            images.forEach { it.close() }
        }
        return result
    }

    @Synchronized
    fun processBurstRaw(
        frames: List<RawStackFrame>,
        cfaPattern: Int,
        outputScale: Float = 1f,
        masterBlackLevel: FloatArray = floatArrayOf(0f, 0f, 0f, 0f),
        whiteLevel: Int = 1023,
        whiteBalanceGains: FloatArray = floatArrayOf(1f, 1f, 1f, 1f),
        noiseModel: FloatArray = floatArrayOf(0f, 0f),
        rawNoiseModel: RawNoiseModel = RawNoiseModel.fromLegacyNoiseModel(noiseModel),
        lensShading: FloatArray? = null,
        lensShadingWidth: Int = 0,
        lensShadingHeight: Int = 0,
        applyLensShadingCorrection: Boolean = true,
        useCurrentGlContext: Boolean = false,
        exportGpuLinearRgbSource: Boolean = false,
    ): RawStackResult? {
        if (frames.isEmpty()) return null
        val images = frames.map { it.image }
        val width = images[0].width
        val height = images[0].height

        RawStackRuntimeDebug.d(TAG) {
            "Starting RAW Radiance fusion for ${images.size} frames. Pattern=$cfaPattern " +
                "outputScale=${MultiFrameConfig.normalizeOutputScale(outputScale)} " +
                "BL=${masterBlackLevel.joinToString()} WL=$whiteLevel"
        }
        val normalizedOutputScale = MultiFrameConfig.normalizeOutputScale(outputScale)
        val stackLensShading = validLensShadingOrNull(
            lensShading = lensShading,
            width = lensShadingWidth,
            height = lensShadingHeight,
            enabled = applyLensShadingCorrection,
        )
        return GlesRawRadianceFusion(
            width = width,
            height = height,
            cfaPattern = cfaPattern,
            blackLevel = masterBlackLevel,
            whiteLevel = whiteLevel,
            whiteBalanceGains = whiteBalanceGains,
            noiseModel = noiseModel,
            rawNoiseModel = rawNoiseModel,
            lensShading = stackLensShading,
            lensShadingWidth = if (stackLensShading != null) lensShadingWidth else 0,
            lensShadingHeight = if (stackLensShading != null) lensShadingHeight else 0,
            outputScale = normalizedOutputScale,
            debugConfig = RawStackRuntimeDebug.debugConfig,
            useCurrentGlContext = useCurrentGlContext,
            exportGpuLinearRgbSource = exportGpuLinearRgbSource,
        ).processFrames(frames)
    }

    private fun validLensShadingOrNull(
        lensShading: FloatArray?,
        width: Int,
        height: Int,
        enabled: Boolean,
    ): FloatArray? {
        if (!enabled || lensShading == null || width <= 0 || height <= 0) return null
        return lensShading.takeIf { it.size >= width * height * 4 }
    }

}
