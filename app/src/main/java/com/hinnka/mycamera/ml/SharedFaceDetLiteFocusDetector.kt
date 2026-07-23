package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import java.util.concurrent.Executors

object SharedFaceDetLiteFocusDetector {
    private val mutex = Mutex()
    // TFLite's OpenGL delegate must be created, invoked, and closed on the same OS thread.
    private val detectorDispatcher = Executors.newSingleThreadExecutor { runnable ->
        Thread(runnable, "SharedFaceDetLiteFocusDetector").apply {
            isDaemon = true
        }
    }.asCoroutineDispatcher()
    private var detector: FaceDetLiteFocusDetector? = null

    suspend fun prewarm(context: Context) {
        withDetector(context) {
            Unit
        }
    }

    suspend fun detect(
        context: Context,
        bitmap: Bitmap,
        minScore: Float,
    ): FaceDetLiteFocusDetector.FaceFocus? = withDetector(context) { detector ->
        detector.detect(bitmap, minScore)
    }

    suspend fun release() {
        withContext(detectorDispatcher) {
            mutex.withLock {
                detector?.close()
                detector = null
            }
        }
    }

    private suspend fun <T> withDetector(
        context: Context,
        block: (FaceDetLiteFocusDetector) -> T,
    ): T = withContext(detectorDispatcher) {
        mutex.withLock {
            val activeDetector = detector ?: FaceDetLiteFocusDetector(context.applicationContext).also {
                detector = it
            }
            block(activeDetector)
        }
    }
}
