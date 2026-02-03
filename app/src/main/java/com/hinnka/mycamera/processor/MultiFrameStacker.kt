package com.hinnka.mycamera.processor

import android.graphics.Bitmap
import android.hardware.camera2.CameraCharacteristics
import android.media.Image
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import androidx.core.graphics.createBitmap
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.utils.BitmapUtils
import java.nio.ByteOrder

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
        enableSuperResolution: Boolean = false
    ): Bitmap? {
        if (images.isEmpty()) return null

        val width = images[0].width
        val height = images[0].height

        // If SR is enabled, the output will be 2x size
        val scale = if (enableSuperResolution) 2 else 1

        PLog.i(TAG, "Starting stacking process for ${images.size} frames ($width x $height). SR=$enableSuperResolution")
        val startTime = System.currentTimeMillis()

        val stackerPtr = createStackerNative(width, height, enableSuperResolution)
        if (stackerPtr == 0L) {
            PLog.e(TAG, "Failed to create native stacker")
            return null
        }

        try {
            val stagedIndices = mutableListOf<Int>()
            for ((index, image) in images.withIndex()) {
                image.use {
                    // Validate dimensions
                    if (image.width != width || image.height != height) {
                        PLog.w(TAG, "Skipping frame $index due to dimension mismatch")
                        return@use
                    }

                    val planes = image.planes
                    val yBuffer = planes[0].buffer
                    val uBuffer = planes[1].buffer
                    val vBuffer = planes[2].buffer

                    val yRowStride = planes[0].rowStride
                    val uvRowStride = planes[1].rowStride
                    val uvPixelStride = planes[1].pixelStride

                    stageFrameNative(
                        stackerPtr,
                        yBuffer, uBuffer, vBuffer,
                        yRowStride, uvRowStride, uvPixelStride,
                        image.format
                    )
                    stagedIndices.add(stagedIndices.size)
                }
            }

            // High-latency processing happens here, after all Images are closed
            for (idx in stagedIndices) {
                processFrameNative(stackerPtr, idx)
            }
            // Optional: clear native memory when done
            clearStagedFramesNative(stackerPtr)

            val dimensions = BitmapUtils.calculateProcessedRect(width, height, aspectRatio, null, rotation)

            // Apply scale to output dimensions
            val targetW = dimensions.width() * scale
            val targetH = dimensions.height() * scale

            val previewBitmap = createBitmap(targetW, targetH)

            val tw = aspectRatio?.widthRatio ?: width
            val th = aspectRatio?.heightRatio ?: height

            synchronized(previewBitmap) {
                if (!previewBitmap.isRecycled) {
                    processStackNative(stackerPtr, previewBitmap, rotation, tw, th, outputPath)
                }
            }

            PLog.i(TAG, "Stacking completed in ${System.currentTimeMillis() - startTime}ms")
            return previewBitmap

        } catch (e: Exception) {
            PLog.e(TAG, "Error during stacking", e)
            return null
        } finally {
            releaseStackerNative(stackerPtr)
        }
    }

    fun processBurstRaw(
        images: List<SafeImage>,
        characteristics: CameraCharacteristics,
        enableSuperResolution: Boolean = false
    ): ByteBuffer? {
        var stackerPtr = 0L

        val width = images[0].width
        val height = images[0].height

        val sensorCfa = characteristics.get(CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT) ?: 0
        PLog.d(
            TAG,
            "Starting multi-frame stacking for ${images.size} frames. Pattern=$sensorCfa SR=$enableSuperResolution"
        )

        stackerPtr = createRawStackerNative(width, height, enableSuperResolution)
        if (stackerPtr == 0L) {
            PLog.e(TAG, "Failed to create raw stacker")
            return null
        }

        val stagedIndices = mutableListOf<Int>()
        for (image in images) {
            image.use {
                if (image.width != width || image.height != height) return@use
                val buffer = image.planes[0].buffer
                val rowStride = image.planes[0].rowStride
                stageRawFrameNative(stackerPtr, buffer, rowStride, sensorCfa)
                stagedIndices.add(stagedIndices.size)
            }
        }
        for (idx in stagedIndices) {
            processRawFrameNative(stackerPtr, idx)
        }
        clearStagedRawFramesNative(stackerPtr)

        // 3. Process Stack
        val scale = getRawStackerScaleNative(stackerPtr)
        val stackedBuffer = ByteBuffer.allocateDirect(width * height * scale * scale * 2).order(ByteOrder.nativeOrder())
        processRawStackWithBufferNative(stackerPtr, stackedBuffer)

        releaseRawStackerNative(stackerPtr)
        stackerPtr = 0L
        return stackedBuffer
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

    private external fun createRawStackerNative(width: Int, height: Int, useSuperRes: Boolean): Long
    private external fun getRawStackerScaleNative(stackerPtr: Long): Int
    private external fun stageRawFrameNative(stackerPtr: Long, rawData: ByteBuffer, rowStride: Int, cfaPattern: Int)
    private external fun processRawFrameNative(stackerPtr: Long, index: Int)
    private external fun clearStagedRawFramesNative(stackerPtr: Long)
    private external fun processRawStackWithBufferNative(stackerPtr: Long, outputBuffer: ByteBuffer)
    private external fun releaseRawStackerNative(stackerPtr: Long)
}
