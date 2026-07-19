package com.hinnka.mycamera.processor

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import com.hinnka.mycamera.gallery.GalleryManager
import com.hinnka.mycamera.ml.SharedDepthEstimator
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock

/**
 * Handles the post-processing of the Depth Map for high-quality optical bokeh.
 * This class coordinates the GPU compute pipeline for edge refinement (Guided Filter)
 * and realistic bokeh convolution.
 */
class DepthBokehProcessor(context: Context) {
    companion object {
        private const val TAG = "DepthBokehProcessor"
    }

    private val appContext = context.applicationContext
    private val processor = OglBokehProcessor()
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
            depthFile = GalleryManager.getDepthFile(context, photoId)
            if (depthFile.exists()) {
                depthMap = BitmapFactory.decodeFile(depthFile.absolutePath)
            }
        }

        if (depthMap == null) {
            val depthGuide = ensureArgb8888(originalImage)
            depthMap = try {
                SharedDepthEstimator.estimateDepth(appContext, depthGuide)
            } finally {
                if (depthGuide !== originalImage && !depthGuide.isRecycled) {
                    depthGuide.recycle()
                }
            }

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
            val preparedDepth = DepthBokehDepthPreprocessor.prepare(
                depthMap,
                focusX ?: 0.5f,
                focusY ?: 0.5f
            )
            PLog.d(
                TAG,
                "Prepared bokeh depth: inverted=${preparedDepth.inverted} focusDepth=${preparedDepth.focusDepth} normalScore=${preparedDepth.normalScore} invertedScore=${preparedDepth.invertedScore}"
            )
            val bokehResult = processor.applyBokeh(
                originalImage,
                preparedDepth.depthMap,
                focusX ?: 0.5f,
                focusY ?: 0.5f,
                aperture
            )
            result = bokehResult
        }

        return result ?: originalImage
    }

    /**
     * The depth estimator consumes an 8-bit display-referred guide. The bokeh
     * renderer itself receives the original bitmap so a linear RGBA_F16 HDR
     * reference keeps both its encoding and values above 1.0.
     */
    private fun ensureArgb8888(bitmap: Bitmap): Bitmap {
        if (bitmap.config == Bitmap.Config.ARGB_8888) return bitmap
        PLog.d(TAG, "Converting bitmap from ${bitmap.config} to ARGB_8888 for bokeh processing (${bitmap.width}x${bitmap.height})")
        val converted = bitmap.copy(Bitmap.Config.ARGB_8888, false)
        return converted ?: bitmap
    }

    fun close() = Unit
}
