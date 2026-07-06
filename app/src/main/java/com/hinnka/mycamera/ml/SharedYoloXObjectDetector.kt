package com.hinnka.mycamera.ml

import android.content.Context
import com.hinnka.mycamera.data.AiFocusTargetMode
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext

object SharedYoloXObjectDetector {
    private val mutex = Mutex()
    private var detector: YoloXObjectDetector? = null

    suspend fun prewarm(context: Context) {
        withDetector(context) { }
    }

    suspend fun detect(
        context: Context,
        bitmap: android.graphics.Bitmap,
        targetMode: AiFocusTargetMode,
        scoreThreshold: Float,
    ): List<YoloXObjectDetector.Detection> {
        return withDetector(context) { detector ->
            detector.targetMode = targetMode
            detector.scoreThreshold = scoreThreshold.coerceIn(0.05f, 0.95f)
            detector.detect(bitmap)
        }
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
        block: (YoloXObjectDetector) -> T,
    ): T = withContext(Dispatchers.Default) {
        mutex.withLock {
            val activeDetector = detector ?: YoloXObjectDetector(context.applicationContext).also {
                detector = it
            }
            block(activeDetector)
        }
    }
}
