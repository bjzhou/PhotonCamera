package com.hinnka.mycamera.processor

import android.graphics.Bitmap
import android.graphics.ColorSpace
import android.media.Image
import android.util.Log
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import androidx.core.graphics.createBitmap
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.utils.BitmapUtils
import java.nio.ByteOrder
import kotlin.math.roundToInt

data class RawStackResult(
    val stackedRgbBuffer: ByteBuffer,
    val fusedBayerBuffer: ByteBuffer,
    val width: Int,
    val height: Int,
    val isNormalizedSensorData: Boolean,
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
    fun processBurst(
        images: List<SafeImage>,
        rotation: Int,
        aspectRatio: AspectRatio?,
        outputPath: String? = null,
        enableSuperResolution: Boolean = false,
        useVulkan: Boolean = true,
        colorSpace: ColorSpace,
    ): Bitmap? {
        if (images.isEmpty()) return null

        val width = images[0].width
        val height = images[0].height

        val scale = if (enableSuperResolution) 2 else 1
        val startTime = System.currentTimeMillis()

        if (useVulkan) {
            PLog.i(
                TAG,
                "Starting Vulkan stacking process for ${images.size} frames ($width x $height). SR=$enableSuperResolution"
            )
            val stackerPtr = createVulkanStackerNative(width, height, enableSuperResolution)
            if (stackerPtr != 0L) {
                try {
                    for (image in images) {
                        image.use {
                            val hardwareBuffer = it.image.hardwareBuffer
                            if (hardwareBuffer != null) {
                                addVulkanFrameNative(stackerPtr, hardwareBuffer)
                            } else {
                                PLog.w(TAG, "Image has no hardware buffer, skipping")
                            }
                        }
                    }
                    PLog.d(TAG, "Stack frames processed")

                    val dimensions = BitmapUtils.calculateProcessedRect(width, height, aspectRatio, null, rotation)
                    val targetW = dimensions.width() * scale
                    val targetH = dimensions.height() * scale
                    val previewBitmap = try {
                        createBitmap(targetW, targetH, colorSpace = colorSpace)
                    } catch (e: OutOfMemoryError) {
                        PLog.e(TAG, "OOM creating Vulkan stack bitmap ($targetW x $targetH)", e)
                        return null
                    }

                    processVulkanStackNative(stackerPtr, previewBitmap, rotation)

                    PLog.i(TAG, "Vulkan stacking completed in ${System.currentTimeMillis() - startTime}ms")
                    return previewBitmap
                } catch (e: Exception) {
                    PLog.e(TAG, "Error during Vulkan stacking", e)
                } finally {
                    releaseVulkanStackerNative(stackerPtr)
                }
            }
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

            val dimensions = BitmapUtils.calculateProcessedRect(width, height, aspectRatio, null, rotation)
            val targetW = dimensions.width() * scale
            val targetH = dimensions.height() * scale
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
                aspectRatio?.heightRatio ?: height,
                outputPath
            )

            PLog.i(TAG, "Legacy stacking completed in ${System.currentTimeMillis() - startTime}ms")
            return previewBitmap
        } finally {
            releaseStackerNative(stackerPtr)
        }
    }

    fun processBurstRaw(
        images: List<SafeImage>,
        cfaPattern: Int,
        enableSuperResolution: Boolean = false,
        superResolutionScale: Float = 1.5f,
        useVulkan: Boolean = true,
        masterBlackLevel: FloatArray = floatArrayOf(0f, 0f, 0f, 0f),
        whiteLevel: Int = 1023,
        whiteBalanceGains: FloatArray = floatArrayOf(1f, 1f, 1f, 1f),
        noiseModel: FloatArray = floatArrayOf(0f, 0f),
        lensShading: FloatArray? = null,
        lensShadingWidth: Int = 0,
        lensShadingHeight: Int = 0,
    ): RawStackResult? {
        val width = images[0].width
        val height = images[0].height

        PLog.d(
            TAG,
            "Starting RAW stacking for ${images.size} frames. Pattern=$cfaPattern SR=$enableSuperResolution scale=$superResolutionScale Vulkan=$useVulkan WL=$whiteLevel"
        )
        val outputScale = if (enableSuperResolution) superResolutionScale.coerceIn(1.0f, 2.0f) else 1.0f
        val useNativeSuperResolution = outputScale > 1.0f

        if (useVulkan) {
            val vulkanStackerPtr = createVulkanRawStackerNative(
                width, height, enableSuperResolution, outputScale,
                masterBlackLevel, whiteLevel, whiteBalanceGains, noiseModel,
                lensShading, lensShadingWidth, lensShadingHeight
            )
            if (vulkanStackerPtr != 0L) {
                PLog.i(TAG, "Using Vulkan RAW stacker + native LibRaw demosaic")
                try {
                    for (image in images) {
                        image.use {
                            if (image.width != width || image.height != height) return@use
                            val buffer = image.planes[0].buffer
                            val rowStride = image.planes[0].rowStride
                            addVulkanRawFrameNative(vulkanStackerPtr, buffer, rowStride, cfaPattern)
                        }
                    }

                    val outWidth = (width * outputScale).roundToInt()
                    val outHeight = (height * outputScale).roundToInt()
                    val fusedBayerBuffer = try {
                        ByteBuffer.allocateDirect(outWidth * outHeight * 2)
                            .order(ByteOrder.nativeOrder())
                    } catch (e: OutOfMemoryError) {
                        PLog.e(TAG, "OOM allocating Vulkan fused Bayer buffer", e)
                        return null
                    }

                    val stackedBuffer = try {
                        ByteBuffer.allocateDirect(outWidth * outHeight * 6)
                            .order(ByteOrder.nativeOrder())
                    } catch (e: OutOfMemoryError) {
                        PLog.e(TAG, "OOM allocating Vulkan stacked RGB buffer", e)
                        return null
                    }

                    val fusedOk = processVulkanRawStackNative(vulkanStackerPtr, fusedBayerBuffer)
                    if (fusedOk) {
                        val demosaicOk = demosaicStackedRawWithLibRawNative(
                            fusedBayerBuffer,
                            outWidth,
                            outHeight,
                            cfaPattern,
                            floatArrayOf(0f, 0f, 0f, 0f),
                            65535,
                            whiteBalanceGains,
                            stackedBuffer
                        )
                        if (demosaicOk) {
                            fusedBayerBuffer.rewind()
                            stackedBuffer.rewind()
                            PLog.i(TAG, "Vulkan RAW stacking and native LibRaw demosaic completed successfully")
                            return RawStackResult(
                                stackedRgbBuffer = stackedBuffer,
                                fusedBayerBuffer = fusedBayerBuffer,
                                width = outWidth,
                                height = outHeight,
                                isNormalizedSensorData = true
                            )
                        }
                        PLog.w(TAG, "Vulkan fused Bayer demosaic failed, falling back to CPU")
                    } else {
                        PLog.w(TAG, "Vulkan RAW stacking failed, falling back to CPU")
                    }
                } catch (e: Exception) {
                    PLog.e(TAG, "Vulkan RAW stacking error: ${e.message}, falling back to CPU")
                } finally {
                    releaseVulkanRawStackerNative(vulkanStackerPtr)
                }
            } else {
                PLog.w(TAG, "Failed to create Vulkan RAW stacker, falling back to CPU")
            }
        }

        PLog.i(TAG, "Using CPU RAW stacker + native LibRaw demosaic")
        val stackerPtr = createRawStackerNative(width, height, useNativeSuperResolution)
        if (stackerPtr == 0L) {
            PLog.e(TAG, "Failed to create CPU raw stacker")
            return null
        }

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
            val fusedBayerBuffer = try {
                ByteBuffer.allocateDirect(stackedWidth * stackedHeight * 2)
                    .order(ByteOrder.nativeOrder())
            } catch (e: OutOfMemoryError) {
                PLog.e(TAG, "OOM allocating fused Bayer buffer", e)
                return null
            }
            processRawStackWithBufferNative(stackerPtr, fusedBayerBuffer)

            val stackedRgbBuffer = try {
                ByteBuffer.allocateDirect(stackedWidth * stackedHeight * 6)
                    .order(ByteOrder.nativeOrder())
            } catch (e: OutOfMemoryError) {
                PLog.e(TAG, "OOM allocating stacked RGB buffer", e)
                return null
            }

            val success = demosaicStackedRawWithLibRawNative(
                fusedBayerBuffer,
                stackedWidth,
                stackedHeight,
                cfaPattern,
                masterBlackLevel,
                whiteLevel,
                whiteBalanceGains,
                stackedRgbBuffer
            )
            if (!success) {
                PLog.e(TAG, "Native LibRaw demosaic failed")
                return null
            }

            fusedBayerBuffer.rewind()
            stackedRgbBuffer.rewind()
            PLog.i(TAG, "CPU RAW stacking and native LibRaw demosaic completed successfully")
            return RawStackResult(
                stackedRgbBuffer = stackedRgbBuffer,
                fusedBayerBuffer = fusedBayerBuffer,
                width = stackedWidth,
                height = stackedHeight,
                isNormalizedSensorData = false
            )

        } finally {
            releaseRawStackerNative(stackerPtr)
        }
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
        targetHR: Int,
        outputPath: String?
    )

    private external fun releaseStackerNative(stackerPtr: Long)

    private external fun createVulkanStackerNative(width: Int, height: Int, enableSuperRes: Boolean): Long
    private external fun addVulkanFrameNative(
        stackerPtr: Long,
        hardwareBuffer: android.hardware.HardwareBuffer
    ): Boolean

    private external fun processVulkanStackNative(stackerPtr: Long, outBitmap: Bitmap?, rotation: Int): Boolean
    private external fun releaseVulkanStackerNative(stackerPtr: Long)

    private external fun createRawStackerNative(width: Int, height: Int, enableSuperRes: Boolean): Long
    private external fun stageRawFrameNative(stackerPtr: Long, rawData: ByteBuffer, rowStride: Int, cfaPattern: Int)
    private external fun processRawFrameNative(stackerPtr: Long, index: Int)
    private external fun clearStagedRawFramesNative(stackerPtr: Long)
    private external fun processRawStackWithBufferNative(stackerPtr: Long, outputBuffer: ByteBuffer)
    private external fun demosaicStackedRawWithLibRawNative(
        fusedBayerBuffer: ByteBuffer,
        width: Int,
        height: Int,
        cfaPattern: Int,
        blackLevel: FloatArray,
        whiteLevel: Int,
        wbGains: FloatArray,
        outputBuffer: ByteBuffer
    ): Boolean
    private external fun releaseRawStackerNative(stackerPtr: Long)

    // Vulkan RAW Stacker
    private external fun createVulkanRawStackerNative(
        width: Int, height: Int, enableSuperRes: Boolean, superResScale: Float,
        blackLevel: FloatArray, whiteLevel: Int, wbGains: FloatArray, noiseModel: FloatArray,
        lensShadingMap: FloatArray?, shadingMapWidth: Int, shadingMapHeight: Int
    ): Long

    private external fun addVulkanRawFrameNative(
        stackerPtr: Long,
        rawData: ByteBuffer,
        rowStride: Int,
        cfaPattern: Int
    ): Boolean

    private external fun processVulkanRawStackNative(stackerPtr: Long, outputBuffer: ByteBuffer): Boolean
    private external fun releaseVulkanRawStackerNative(stackerPtr: Long)
}
