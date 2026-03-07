package com.hinnka.mycamera.preview

import android.content.Context
import android.graphics.Bitmap
import android.graphics.ImageFormat
import android.graphics.Rect
import android.graphics.YuvImage
import android.media.Image
import android.media.ImageReader
import android.util.Log
import com.hinnka.mycamera.ml.DepthEstimator
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import java.io.ByteArrayOutputStream
import java.nio.ByteBuffer

/**
 * Processor for intercepting the real-time preview stream,
 * converting frames to Bitmaps, and feeding them to the DepthEstimator.
 */
class PreviewDepthProcessor(private val context: Context) {
    private val scope = CoroutineScope(Dispatchers.Default + Job())
    private var depthEstimator: DepthEstimator? = null
    
    private var isProcessing = false

    // Expose the latest depth map as a StateFlow for the UI or GL pipeline
    private val _latestDepthMap = MutableStateFlow<Bitmap?>(null)
    val latestDepthMap = _latestDepthMap.asStateFlow()

    init {
        // Initialize DepthEstimator
        scope.launch {
            depthEstimator = DepthEstimator(context)
        }
    }

    /**
     * Process a bitmap from the GL preview stream.
     * Drops frames if the previous frame is still processing.
     */
    fun processBitmap(bitmap: Bitmap) {
        if (isProcessing) {
            return
        }

        val estimator = depthEstimator
        if (estimator == null) {
            return
        }

        isProcessing = true
        
        // Process on background thread
        scope.launch {
            try {
                val depthMap = estimator.estimateDepth(bitmap)
                _latestDepthMap.value = depthMap
            } catch (e: Exception) {
                Log.e(TAG, "Error processing preview bitmap for depth", e)
            } finally {
                isProcessing = false
            }
        }
    }

    fun release() {
        depthEstimator?.close()
        depthEstimator = null
    }

    companion object {
        private const val TAG = "PreviewDepthProcessor"
    }
}
