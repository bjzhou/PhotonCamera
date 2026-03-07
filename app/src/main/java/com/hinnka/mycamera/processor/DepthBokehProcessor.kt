package com.hinnka.mycamera.processor

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.PointF
import com.hinnka.mycamera.gallery.PhotoManager
import com.hinnka.mycamera.ml.DepthEstimator
import com.hinnka.mycamera.utils.PLog

import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock

/**
 * Handles the post-processing of the Depth Map for high-quality optical bokeh.
 * This class coordinates the Vulkan compute pipeline for edge refinement (Guided Filter)
 * and realistic bokeh convolution.
 */
class DepthBokehProcessor(context: Context) {
    private val processor = OglBokehProcessor()
    private val depthEstimator = DepthEstimator(context)
    private val mutex = Mutex()

    /**
     * Applies optical-grade computational bokeh to the high-res image.
     * 
     * @param originalImage The high resolution RGB image (e.g. 12MP).
     * @param focusPoint The normalized coordinates (0.0 - 1.0) where the user focused.
     * @param aperture The simulated aperture value (e.g., 1.4 for heavy blur, 16.0 for none).
     * @return A new Bitmap with the bokeh applied.
     */
    suspend fun applyHighQualityBokeh(
        context: Context,
        photoId: String?,
        originalImage: Bitmap,
        focusX: Float?,
        focusY: Float?,
        aperture: Float
    ): Bitmap = mutex.withLock {
        if (aperture > 16.0f || aperture <= 0f) {
            return originalImage
        }

        var depthMap: Bitmap? = null
        var depthFile: java.io.File? = null
        if (photoId != null) {
            depthFile = PhotoManager.getDepthFile(context, photoId)
            if (depthFile.exists()) {
                depthMap = BitmapFactory.decodeFile(depthFile.absolutePath)
            }
        }

        if (depthMap == null) {
            depthMap = depthEstimator.estimateDepth(originalImage)

            if (depthMap != null && depthFile != null) {
                try {
                    java.io.FileOutputStream(depthFile).use { out ->
                        depthMap.compress(Bitmap.CompressFormat.PNG, 100, out)
                    }
                } catch (e: Exception) {
                    e.printStackTrace()
                }
            }
        }

        var result: Bitmap? = null
        if (depthMap != null) {
            result = processor.applyBokeh(
                originalImage,
                depthMap,
                focusX ?: 0.5f,
                focusY ?: 0.5f,
                aperture
            )
        }

        return result ?: originalImage
    }

    fun close() {
        depthEstimator.close()
    }
}

