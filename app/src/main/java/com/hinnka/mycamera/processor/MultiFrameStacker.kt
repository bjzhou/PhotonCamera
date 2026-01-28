package com.hinnka.mycamera.processor

import android.graphics.Bitmap
import android.hardware.camera2.CameraCharacteristics
import android.media.Image
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import androidx.core.graphics.createBitmap
import com.hinnka.mycamera.camera.AspectRatio
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
        images: List<Image>,
        rotation: Int,
        aspectRatio: AspectRatio?,
        outputPath: String? = null
    ): Bitmap? {
        if (images.isEmpty()) return null

        val width = images[0].width
        val height = images[0].height

        PLog.i(TAG, "Starting stacking process for ${images.size} frames ($width x $height)")
        val startTime = System.currentTimeMillis()

        val stackerPtr = createStackerNative(width, height)
        if (stackerPtr == 0L) {
            PLog.e(TAG, "Failed to create native stacker")
            return null
        }

        try {
            for ((index, image) in images.withIndex()) {
                // Validate dimensions
                if (image.width != width || image.height != height) {
                    PLog.w(TAG, "Skipping frame $index due to dimension mismatch")
                    continue
                }

                val planes = image.planes
                val yBuffer = planes[0].buffer
                val uBuffer = planes[1].buffer
                val vBuffer = planes[2].buffer

                val yRowStride = planes[0].rowStride
                val uvRowStride = planes[1].rowStride
                val uvPixelStride = planes[1].pixelStride

                addToStackNative(
                    stackerPtr,
                    yBuffer, uBuffer, vBuffer,
                    yRowStride, uvRowStride, uvPixelStride,
                    image.format
                )
            }

            val dimensions = BitmapUtils.calculateProcessedRect(width, height, aspectRatio, null, rotation)
            val previewBitmap = createBitmap(dimensions.width(), dimensions.height())

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
        images: List<Image>,
        characteristics: CameraCharacteristics
    ): ByteBuffer? {
        var stackerPtr = 0L

        val width = images[0].width
        val height = images[0].height

        val sensorCfa = characteristics.get(CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT) ?: 0
        PLog.d(TAG, "Starting multi-frame stacking for ${images.size} frames. Pattern=$sensorCfa")

        stackerPtr = createRawStackerNative(width, height)
        if (stackerPtr == 0L) {
            PLog.e(TAG, "Failed to create raw stacker")
            return null
        }

        // 2. Add frames
        for (image in images) {
            if (image.width != width || image.height != height) continue
            val buffer = image.planes[0].buffer
            val rowStride = image.planes[0].rowStride
            addToRawStackNative(stackerPtr, buffer, rowStride, sensorCfa)
        }

        // 3. Process Stack
        val stackedBuffer = ByteBuffer.allocateDirect(width * height * 2).order(ByteOrder.nativeOrder())
        processRawStackWithBufferNative(stackerPtr, stackedBuffer)

        releaseRawStackerNative(stackerPtr)
        stackerPtr = 0L
        return stackedBuffer
    }

    // --- Native Methods ---

    private external fun createStackerNative(width: Int, height: Int): Long

    private external fun addToStackNative(
        stackerPtr: Long,
        yBuffer: ByteBuffer, uBuffer: ByteBuffer, vBuffer: ByteBuffer,
        yRowStride: Int, uvRowStride: Int, uvPixelStride: Int,
        format: Int
    )

    private external fun processStackNative(
        stackerPtr: Long,
        outBitmap: Bitmap?,
        rotation: Int,
        targetWR: Int,
        targetHR: Int,
        outputPath: String?
    )

    private external fun releaseStackerNative(stackerPtr: Long)

    private external fun createRawStackerNative(width: Int, height: Int): Long
    private external fun addToRawStackNative(stackerPtr: Long, rawData: ByteBuffer, rowStride: Int, cfaPattern: Int)
    private external fun processRawStackWithBufferNative(stackerPtr: Long, outputBuffer: ByteBuffer)
    private external fun releaseRawStackerNative(stackerPtr: Long)
}
