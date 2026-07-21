package com.hinnka.mycamera.processor

import android.graphics.Bitmap
import android.graphics.ColorSpace
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import androidx.core.graphics.createBitmap
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

    init {
        try {
            System.loadLibrary("my-native-lib")
        } catch (e: UnsatisfiedLinkError) {
            PLog.e(TAG, "Failed to load native library", e)
        }
    }

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
        useGpuAcceleration: Boolean = true,
        colorSpace: ColorSpace,
    ): Bitmap? {
        if (images.isEmpty()) return null

        val width = images[0].width
        val height = images[0].height

        val scale = if (enableSuperResolution) 2 else 1
        val startTime = System.currentTimeMillis()
        val dimensions = BitmapUtils.calculateProcessedRect(width, height, aspectRatio, null, rotation)
        val targetW = dimensions.width() * scale
        val targetH = dimensions.height() * scale

        val inputFormat = images[0].format
        if (useGpuAcceleration) {
            if (!GlesYuvStacker.supportsImageFormat(inputFormat)) {
                PLog.w(TAG, "GLES streaming stacker does not support image format=$inputFormat; GPU fallback disabled")
                images.forEach { it.close() }
                return null
            }
            RawStackRuntimeDebug.i(TAG) {
                "Starting GLES streaming stacking process for ${images.size} frames ($width x $height). SR=$enableSuperResolution"
            }
            val glesBitmap = GlesYuvStacker(
                width = width,
                height = height,
                outputWidth = targetW,
                outputHeight = targetH,
                rotation = rotation,
                colorSpace = colorSpace,
                inputFormat = inputFormat,
                enableSuperResolution = enableSuperResolution,
            ).process(images)
            if (glesBitmap != null) {
                images.forEach { it.close() }
                return glesBitmap
            }
            PLog.w(TAG, "GLES streaming stacker failed; GPU fallback disabled")
            images.forEach { it.close() }
            return null
        }

        // Fallback or legacy path
        RawStackRuntimeDebug.i(TAG) {
            "Starting legacy stacking process for ${images.size} frames ($width x $height). SR=$enableSuperResolution"
        }
        val stackerPtr = createStackerNative(width, height, enableSuperResolution)
        if (stackerPtr == 0L) return null

        try {
            val stagedIndices = mutableListOf<Int>()
            for (image in images) {
                image.use {
                    val planes = image.planes
                    stageFrameNative(
                        stackerPtr,
                        planes[0].buffer, planes[1].buffer, planes[2].buffer,
                        planes[0].rowStride, planes[1].rowStride, planes[1].pixelStride,
                        image.format
                    )
                    stagedIndices.add(stagedIndices.size)
                }
            }

            for (idx in stagedIndices) {
                processFrameNative(stackerPtr, idx)
            }
            clearStagedFramesNative(stackerPtr)

            val previewBitmap = try {
                createBitmap(targetW, targetH, colorSpace = colorSpace)
            } catch (e: OutOfMemoryError) {
                PLog.e(TAG, "OOM creating legacy stack bitmap ($targetW x $targetH)", e)
                return null
            }

            processStackNative(
                stackerPtr,
                previewBitmap,
                rotation,
                aspectRatio?.widthRatio ?: width,
                aspectRatio?.heightRatio ?: height
            )

            RawStackRuntimeDebug.i(TAG) {
                "Legacy stacking completed in ${System.currentTimeMillis() - startTime}ms"
            }
            return previewBitmap
        } finally {
            releaseStackerNative(stackerPtr)
        }
    }

    @Synchronized
    fun processHdrBurstYuv(
        frames: List<YuvHdrStackFrame>,
        fusionExposureProducts: FloatArray?,
        rotation: Int,
        aspectRatio: AspectRatio?,
        useGpuAcceleration: Boolean = true,
        colorSpace: ColorSpace,
    ): Bitmap? {
        if (frames.size < 3) return null
        val images = frames.map { it.image }
        val width = images[0].width
        val height = images[0].height
        val dimensions = BitmapUtils.calculateProcessedRect(width, height, aspectRatio, null, rotation)
        val inputFormat = images[0].format

        if (!useGpuAcceleration) {
            PLog.w(TAG, "YUV HDR denoise stack requires GLES; GPU acceleration setting is ignored")
        }
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

    // --- Native Methods ---

    private external fun createStackerNative(width: Int, height: Int, enableSuperRes: Boolean): Long

    private external fun stageFrameNative(
        stackerPtr: Long,
        yBuffer: ByteBuffer, uBuffer: ByteBuffer, vBuffer: ByteBuffer,
        yRowStride: Int, uvRowStride: Int, uvPixelStride: Int,
        format: Int
    )

    private external fun processFrameNative(stackerPtr: Long, index: Int)
    private external fun clearStagedFramesNative(stackerPtr: Long)

    private external fun processStackNative(
        stackerPtr: Long,
        outBitmap: Bitmap?,
        rotation: Int,
        targetWR: Int,
        targetHR: Int
    )

    private external fun releaseStackerNative(stackerPtr: Long)


}
