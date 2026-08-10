package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import java.util.concurrent.Executors

object SharedDepthEstimator {
    private const val TAG = "SharedDepthEstimator"
    private val mutex = Mutex()
    private val estimatorDispatcher = Executors.newSingleThreadExecutor { runnable ->
        Thread(runnable, "SharedDepthEstimator").apply {
            isDaemon = true
        }
    }.asCoroutineDispatcher()

    @Volatile
    private var estimator: DepthEstimator? = null

    suspend fun prewarm(context: Context) {
        if (!DepthModelManager.isInstalled(context)) {
            throw IllegalStateException("Depth Anything V2 model is not installed")
        }
        withEstimator(context) { }
    }

    suspend fun estimateDepth(
        context: Context,
        inputBitmap: Bitmap
    ): RelativeDepthMap? {
        if (!DepthModelManager.isInstalled(context)) {
            return null
        }
        return try {
            withEstimator(context) { estimator ->
                estimator.estimateDepth(inputBitmap)
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Depth Anything V2 inference is unavailable", e)
            null
        }
    }

    private suspend fun <T> withEstimator(
        context: Context,
        block: (DepthEstimator) -> T
    ): T = withContext(estimatorDispatcher) {
        mutex.withLock {
            val resolved = estimator ?: DepthEstimator(context.applicationContext).also { created ->
                if (!created.isReady) {
                    created.close()
                    throw IllegalStateException("Depth Anything V2 interpreter initialization failed")
                }
                estimator = created
            }
            block(resolved)
        }
    }

    suspend fun close() {
        withContext(estimatorDispatcher) {
            mutex.withLock {
                estimator?.close()
                estimator = null
            }
        }
    }
}
