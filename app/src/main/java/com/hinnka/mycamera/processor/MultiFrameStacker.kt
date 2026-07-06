package com.hinnka.mycamera.processor

import android.graphics.Bitmap
import android.graphics.ColorSpace
import android.graphics.Rect
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import androidx.core.graphics.createBitmap
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.raw.DngProfileGainTableMap
import com.hinnka.mycamera.utils.BitmapUtils
import com.hinnka.mycamera.utils.LargeDirectBuffer

data class RawStackResult(
    var fusedBayerBuffer: ByteBuffer?,
    val width: Int,
    val height: Int,
    val isNormalizedSensorData: Boolean,
    val blackLevel: FloatArray = floatArrayOf(0f, 0f, 0f, 0f),
    val fusedBayerUsesNativeAllocator: Boolean = false,
    val profileGainTableMap: DngProfileGainTableMap? = null,
)

data class RawHdrStackFrame(
    val image: SafeImage,
    val exposureProduct: Double,
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
            if (enableSuperResolution) {
                PLog.w(TAG, "GLES streaming stacker does not support SR yet; GPU fallback disabled")
                images.forEach { it.close() }
                return null
            }
            if (!GlesYuvStacker.supportsImageFormat(inputFormat)) {
                PLog.w(TAG, "GLES streaming stacker does not support image format=$inputFormat; GPU fallback disabled")
                images.forEach { it.close() }
                return null
            }
            PLog.i(
                TAG,
                "Starting GLES streaming stacking process for ${images.size} frames ($width x $height)"
            )
            val glesBitmap = GlesYuvStacker(
                width = width,
                height = height,
                outputWidth = targetW,
                outputHeight = targetH,
                rotation = rotation,
                colorSpace = colorSpace,
                inputFormat = inputFormat,
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
        PLog.i(
            TAG,
            "Starting legacy stacking process for ${images.size} frames ($width x $height). SR=$enableSuperResolution"
        )
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

            PLog.i(TAG, "Legacy stacking completed in ${System.currentTimeMillis() - startTime}ms")
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
    fun processHdrBurstRaw(
        shortFrame: RawHdrStackFrame,
        normalFrames: List<RawHdrStackFrame>,
        cfaPattern: Int,
        useGpuAcceleration: Boolean = true,
        masterBlackLevel: FloatArray = floatArrayOf(0f, 0f, 0f, 0f),
        whiteLevel: Int = 1023,
        noiseModel: FloatArray = floatArrayOf(0f, 0f),
        lensShading: FloatArray? = null,
        lensShadingWidth: Int = 0,
        lensShadingHeight: Int = 0,
        colorCorrectionMatrix: FloatArray? = null,
        pgtmStatsBounds: Rect? = null,
    ): RawStackResult? {
        if (normalFrames.isEmpty()) {
            shortFrame.image.close()
            return null
        }
        val width = shortFrame.image.width
        val height = shortFrame.image.height
        PLog.d(
            TAG,
            "Starting RAW HDR stacking for short+${normalFrames.size} normal frames. " +
                "Pattern=$cfaPattern GPU=$useGpuAcceleration BL=${masterBlackLevel.joinToString()} WL=$whiteLevel"
        )
        if (!useGpuAcceleration) {
            PLog.w(TAG, "RAW HDR denoise stack requires GLES; GPU acceleration setting is ignored")
        }
        PLog.i(TAG, "Using GLES RAW HDR stacker")
        return GlesRawStacker(
            width = width,
            height = height,
            cfaPattern = cfaPattern,
            blackLevel = masterBlackLevel,
            whiteLevel = whiteLevel,
            noiseModel = noiseModel,
            lensShading = lensShading,
            lensShadingWidth = lensShadingWidth,
            lensShadingHeight = lensShadingHeight,
            colorCorrectionMatrix = colorCorrectionMatrix,
            pgtmStatsBounds = pgtmStatsBounds,
        ).processHdr(
            shortFrame = GlesRawStacker.HdrInputFrame(shortFrame.image, shortFrame.exposureProduct),
            normalFrames = normalFrames.map { GlesRawStacker.HdrInputFrame(it.image, it.exposureProduct) },
        )
    }

    @Synchronized
    fun processBurstRaw(
        images: List<SafeImage>,
        cfaPattern: Int,
        enableSuperResolution: Boolean = false,
        superResolutionScale: Float = 1.5f,
        useGpuAcceleration: Boolean = true,
        masterBlackLevel: FloatArray = floatArrayOf(0f, 0f, 0f, 0f),
        whiteLevel: Int = 1023,
        whiteBalanceGains: FloatArray = floatArrayOf(1f, 1f, 1f, 1f),
        noiseModel: FloatArray = floatArrayOf(0f, 0f),
        lensShading: FloatArray? = null,
        lensShadingWidth: Int = 0,
        lensShadingHeight: Int = 0,
        applyLensShadingCorrection: Boolean = true,
    ): RawStackResult? {
        val width = images[0].width
        val height = images[0].height

        PLog.d(
            TAG,
            "Starting RAW stacking for ${images.size} frames. Pattern=$cfaPattern SR=$enableSuperResolution scale=$superResolutionScale GPU=$useGpuAcceleration BL=${masterBlackLevel.joinToString()} WL=$whiteLevel"
        )
        val outputScale = if (enableSuperResolution) superResolutionScale.coerceIn(1.0f, 2.0f) else 1.0f
        val useNativeSuperResolution = outputScale > 1.0f

        if (useGpuAcceleration && !enableSuperResolution) {
            PLog.i(TAG, "Using GLES RAW stacker")
            val stackLensShading = lensShading.takeIf { applyLensShadingCorrection }
            return GlesRawStacker(
                width = width,
                height = height,
                cfaPattern = cfaPattern,
                blackLevel = masterBlackLevel,
                whiteLevel = whiteLevel,
                noiseModel = noiseModel,
                lensShading = stackLensShading,
                lensShadingWidth = if (stackLensShading != null) lensShadingWidth else 0,
                lensShadingHeight = if (stackLensShading != null) lensShadingHeight else 0,
            ).process(images)
        } else if (useGpuAcceleration && enableSuperResolution) {
            PLog.w(TAG, "GLES RAW stacker does not support SR; falling back to CPU RAW stacker")
        }

        PLog.i(TAG, "Using CPU RAW stacker")
        val stackerPtr = createRawStackerNative(width, height, useNativeSuperResolution)
        if (stackerPtr == 0L) {
            PLog.e(TAG, "Failed to create CPU raw stacker")
            return null
        }

        var cpuFusedBayerBuffer: ByteBuffer? = null
        var returnsCpuFusedBayer = false
        try {
            val stagedIndices = mutableListOf<Int>()
            for (image in images) {
                image.use {
                    if (image.width != width || image.height != height) return@use
                    val buffer = image.planes[0].buffer
                    val rowStride = image.planes[0].rowStride
                    stageRawFrameNative(stackerPtr, buffer, rowStride, cfaPattern)
                    stagedIndices.add(stagedIndices.size)
                }
            }
            for (idx in stagedIndices) {
                processRawFrameNative(stackerPtr, idx)
            }
            clearStagedRawFramesNative(stackerPtr)

            val stackedWidth = if (useNativeSuperResolution) width * 2 else width
            val stackedHeight = if (useNativeSuperResolution) height * 2 else height
            val outputByteCount = stackedWidth.toLong() * stackedHeight.toLong() * 2L
            cpuFusedBayerBuffer = allocateFusedBayerBuffer(outputByteCount, "CPU") ?: return null
            processRawStackWithBufferNative(stackerPtr, cpuFusedBayerBuffer)

            cpuFusedBayerBuffer.rewind()
            PLog.i(TAG, "CPU RAW stacking completed successfully")
            returnsCpuFusedBayer = true
            return RawStackResult(
                fusedBayerBuffer = cpuFusedBayerBuffer,
                width = stackedWidth,
                height = stackedHeight,
                isNormalizedSensorData = false,
                blackLevel = masterBlackLevel.copyOf(),
                fusedBayerUsesNativeAllocator = true,
            )

        } finally {
            releaseRawStackerNative(stackerPtr)
            if (!returnsCpuFusedBayer) {
                LargeDirectBuffer.free(cpuFusedBayerBuffer)
            }
        }
    }

    private fun allocateFusedBayerBuffer(byteCount: Long, label: String): ByteBuffer? {
        if (byteCount <= 0L || byteCount > Int.MAX_VALUE) {
            PLog.e(TAG, "$label fused Bayer buffer size is invalid: $byteCount")
            return null
        }
        return LargeDirectBuffer.allocate(byteCount, "$label fused Bayer")
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

    private external fun createRawStackerNative(width: Int, height: Int, enableSuperRes: Boolean): Long
    private external fun stageRawFrameNative(stackerPtr: Long, rawData: ByteBuffer, rowStride: Int, cfaPattern: Int)
    private external fun processRawFrameNative(stackerPtr: Long, index: Int)
    private external fun clearStagedRawFramesNative(stackerPtr: Long)
    private external fun processRawStackWithBufferNative(stackerPtr: Long, outputBuffer: ByteBuffer)
    private external fun releaseRawStackerNative(stackerPtr: Long)

}
