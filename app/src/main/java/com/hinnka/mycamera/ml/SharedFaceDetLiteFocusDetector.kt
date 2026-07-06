package com.hinnka.mycamera.ml

import android.content.Context
import android.graphics.Bitmap
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext

object SharedFaceDetLiteFocusDetector {
    private val mutex = Mutex()
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
        withContext(Dispatchers.Default) {
            mutex.withLock {
                detector?.close()
                detector = null
            }
        }
    }

    private suspend fun <T> withDetector(
        context: Context,
        block: (FaceDetLiteFocusDetector) -> T,
    ): T = withContext(Dispatchers.Default) {
        mutex.withLock {
            val activeDetector = detector ?: FaceDetLiteFocusDetector(context.applicationContext).also {
                detector = it
            }
            block(activeDetector)
        }
    }
}
