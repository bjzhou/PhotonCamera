package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import java.util.concurrent.Executors

object SharedDepthEstimator {
    private val mutex = Mutex()
    private val estimatorDispatcher = Executors.newSingleThreadExecutor { runnable ->
        Thread(runnable, "SharedDepthEstimator").apply {
            isDaemon = true
        }
    }.asCoroutineDispatcher()

    @Volatile
    private var estimator: DepthEstimator? = null

    suspend fun prewarm(context: Context, modelAssetName: String = DepthEstimator.MODEL_MIDAS) {
        withEstimator(context, modelAssetName) { }
    }

    suspend fun estimateDepth(
        context: Context,
        inputBitmap: Bitmap,
        modelAssetName: String = DepthEstimator.MODEL_MIDAS
    ): Bitmap? {
        return withEstimator(context, modelAssetName) { estimator ->
            estimator.estimateDepth(inputBitmap)
        }
    }

    private suspend fun <T> withEstimator(
        context: Context,
        modelAssetName: String,
        block: (DepthEstimator) -> T
    ): T = withContext(estimatorDispatcher) {
        mutex.withLock {
            val current = estimator
            val resolved = if (current?.modelAssetName == modelAssetName) {
                current
            } else {
                current?.close()
                DepthEstimator(context.applicationContext, modelAssetName).also {
                    estimator = it
                }
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
