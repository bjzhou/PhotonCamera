package com.hinnka.mycamera.processor

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import com.hinnka.mycamera.gallery.GalleryManager
import com.hinnka.mycamera.ml.RelativeDepthMap
import com.hinnka.mycamera.ml.RelativeDepthMapFile
import com.hinnka.mycamera.ml.SharedDepthEstimator
import com.hinnka.mycamera.ml.SharedSubjectMaskEstimator
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
     * @param bokehStyle The optical point-spread profile used for defocused highlights.
     * @return A new Bitmap with the bokeh applied.
     */
    suspend fun applyHighQualityBokeh(
        context: Context,
        photoId: String?,
        originalImage: Bitmap,
        focusX: Float?,
        focusY: Float?,
        aperture: Float,
        bokehStyle: BokehStyle = BokehStyle.DEFAULT,
    ): Bitmap = mutex.withLock {
        if (aperture > 16.0f || aperture <= 0f) {
            return originalImage
        }

        var depthMap: RelativeDepthMap? = null
        var floatDepthFile: java.io.File? = null
        if (photoId != null) {
            floatDepthFile = GalleryManager.getFloatDepthFile(context, photoId)
            if (floatDepthFile.exists()) {
                depthMap = try {
                    RelativeDepthMapFile.read(floatDepthFile)
                } catch (error: Exception) {
                    PLog.w(TAG, "Unable to read floating-point depth cache", error)
                    null
                }
            }

            // Existing photos may only have the former 8-bit PNG cache. Read it
            // once and migrate it without changing its already-quantized values.
            if (depthMap == null) {
                val legacyDepthFile = GalleryManager.getDepthFile(context, photoId)
                if (legacyDepthFile.exists()) {
                    val legacyBitmap = BitmapFactory.decodeFile(legacyDepthFile.absolutePath)
                    if (legacyBitmap != null) {
                        try {
                            depthMap = RelativeDepthMap.fromBitmap(legacyBitmap)
                        } finally {
                            legacyBitmap.recycle()
                        }
                    }
                }
            }
        }

        if (depthMap == null) {
            depthMap = SharedDepthEstimator.estimateDepth(appContext, originalImage)

            if (depthMap != null && floatDepthFile != null) {
                try {
                    RelativeDepthMapFile.write(floatDepthFile, depthMap)
                } catch (error: Exception) {
                    PLog.w(TAG, "Unable to write floating-point depth cache", error)
                }
            }
        } else if (floatDepthFile != null && !floatDepthFile.exists()) {
            // Persist a successfully migrated legacy cache as the new versioned format.
            try {
                RelativeDepthMapFile.write(floatDepthFile, depthMap)
            } catch (error: Exception) {
                PLog.w(TAG, "Unable to migrate floating-point depth cache", error)
            }
        }

        var result: Bitmap? = null
        if (depthMap != null) {
            val subjectMask = SharedSubjectMaskEstimator.estimateMask(appContext, originalImage, depthMap)
            if (subjectMask == null) {
                PLog.e(TAG, "U2NetP subject mask unavailable; bokeh was not applied")
                return@withLock originalImage
            }
            val resolvedFocusX = focusX ?: 0.5f
            val resolvedFocusY = focusY ?: 0.5f
            val focusMask = subjectMask.sample(resolvedFocusX, resolvedFocusY)
            val preparedDepth = DepthBokehDepthPreprocessor.prepare(
                depthMap,
                resolvedFocusX,
                resolvedFocusY,
                subjectMask,
            )
            PLog.d(
                TAG,
                "Prepared bokeh depth: inverted=${preparedDepth.inverted} focusDepth=${preparedDepth.focusDepth} focusMask=$focusMask normalScore=${preparedDepth.normalScore} invertedScore=${preparedDepth.invertedScore}"
            )
            val bokehResult = processor.applyBokeh(
                originalImage,
                preparedDepth.depthMap,
                subjectMask,
                preparedDepth.focusDepth,
                aperture,
                bokehStyle,
                protectSubject = focusMask >= 0.5f,
            )
            result = bokehResult
        }

        return result ?: originalImage
    }

    fun close() = Unit
}
