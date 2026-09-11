package com.hinnka.mycamera.processor

import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

data class CaptureProcessingState(
    val pendingCount: Int = 0,
    val completedCount: Long = 0,
)

/** Owns each shot until its entire merge, render and save operation has finished. */
object CaptureProcessingQueue {
    private class Request(val images: List<SafeImage>, val process: suspend () -> Unit)

    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    // Memory is bounded at camera admission by the 50 reserved/acquired ImageReader slots.
    private val requests = Channel<Request>(Channel.UNLIMITED)
    private val mutableState = MutableStateFlow(CaptureProcessingState())
    val state = mutableState.asStateFlow()

    init {
        scope.launch {
            for (request in requests) {
                try {
                    request.process()
                } catch (e: Exception) {
                    PLog.e("CaptureProcessingQueue", "Capture processing failed", e)
                } finally {
                    request.images.forEach { it.close() }
                    mutableState.update {
                        it.copy(pendingCount = it.pendingCount - 1, completedCount = it.completedCount + 1)
                    }
                }
            }
        }
    }

    fun enqueue(images: List<SafeImage>, process: suspend () -> Unit) {
        mutableState.update { it.copy(pendingCount = it.pendingCount + 1) }
        check(requests.trySend(Request(images, process)).isSuccess)
    }
}
