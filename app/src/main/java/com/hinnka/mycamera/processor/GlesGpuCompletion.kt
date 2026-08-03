package com.hinnka.mycamera.processor

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog

internal enum class GpuStackCompletionStage(val logKey: String) {
    NORMAL_ALIGNMENT("normalAlignment"),
    LONG_ALIGNMENT("longAlignment"),
    HIGHLIGHT_ALIGNMENT("highlightAlignment"),
    TILED_RECONSTRUCTION("tiledReconstruction"),
    CHROMA_POSTPROCESS("chromaPostprocess"),
    FINAL_EXPORT("finalExport"),
}

internal data class GpuStackStageWait(
    val stage: GpuStackCompletionStage,
    val waitMs: Long,
)

internal data class GpuStackQueueTiming(
    val stageWaits: List<GpuStackStageWait>,
) {
    val totalWaitMs: Long = stageWaits.sumOf(GpuStackStageWait::waitMs)

    fun logFields(): String = stageWaits.joinToString(separator = " ") {
        "${it.stage.logKey}=${it.waitMs}ms"
    }
}

internal data class GpuStackCompletionCheckpoint(
    val stage: GpuStackCompletionStage,
    val sync: Long,
)

/**
 * Ordered stacker completion checkpoints whose ownership follows the exported GPU texture.
 *
 * Checkpoints are inserted without waiting. The first CPU synchronization consumer waits them in
 * order, which attributes the outstanding queue tail to the stage that submitted it while the GPU
 * continues processing later checkpoints.
 */
class GpuStackCompletionTimeline internal constructor(
    private val checkpoints: MutableList<GpuStackCompletionCheckpoint>,
) {
    internal fun awaitPending(
        syncPoint: String,
        checkGlError: (String) -> Unit,
    ): GpuStackQueueTiming? {
        if (checkpoints.isEmpty()) return null
        val pending = checkpoints.toList()
        checkpoints.clear()
        val waits = ArrayList<GpuStackStageWait>(pending.size)
        try {
            pending.forEach { checkpoint ->
                val waitMs = GlesGpuCompletion.awaitSync(
                    sync = checkpoint.sync,
                    label = "RAW stack ${checkpoint.stage.logKey} at $syncPoint",
                )
                waits += GpuStackStageWait(checkpoint.stage, waitMs)
            }
            checkGlError("RAW stack completion timeline $syncPoint")
        } finally {
            pending.forEach { checkpoint ->
                GLES30.glDeleteSync(checkpoint.sync)
            }
        }
        return GpuStackQueueTiming(waits).also { timing ->
            PLog.i(
                TAG,
                "GLES RAW stacking GPU queue timing syncPoint=$syncPoint " +
                    "total=${timing.totalWaitMs}ms ${timing.logFields()}",
            )
        }
    }

    internal fun releasePending() {
        checkpoints.forEach { checkpoint ->
            GLES30.glDeleteSync(checkpoint.sync)
        }
        checkpoints.clear()
    }

    private companion object {
        const val TAG = "GlesGpuCompletion"
    }
}

/**
 * Separates completion of previously submitted GPU work from the transfer that follows it.
 *
 * Measuring only glReadPixels() attributes all queued GPU work to "readback", because that call is
 * commonly the first synchronization point. Waiting on an explicit fence first makes subsequent
 * transfer timings describe the transfer itself instead of the whole pending command queue.
 */
internal object GlesGpuCompletion {
    private const val WAIT_SLICE_NS = 100_000_000L
    private const val TAG = "GlesGpuCompletion"

    internal class StackTimelineRecorder {
        private val checkpoints = mutableListOf<GpuStackCompletionCheckpoint>()
        private var disabled = false
        private var ownershipTransferred = false

        fun mark(stage: GpuStackCompletionStage) {
            if (disabled || ownershipTransferred) return
            val sync = GLES30.glFenceSync(GLES30.GL_SYNC_GPU_COMMANDS_COMPLETE, 0)
            if (sync == 0L) {
                PLog.w(
                    TAG,
                    "Unable to create RAW stack GPU checkpoint stage=${stage.logKey}; " +
                        "stage timing disabled",
                )
                disabled = true
                releasePending()
                return
            }
            checkpoints += GpuStackCompletionCheckpoint(stage, sync)
        }

        fun finish(): GpuStackCompletionTimeline? {
            if (disabled || ownershipTransferred || checkpoints.isEmpty()) {
                releasePending()
                return null
            }
            ownershipTransferred = true
            GLES30.glFlush()
            return GpuStackCompletionTimeline(checkpoints.toMutableList()).also {
                checkpoints.clear()
            }
        }

        fun releasePending() {
            if (ownershipTransferred) return
            checkpoints.forEach { checkpoint ->
                GLES30.glDeleteSync(checkpoint.sync)
            }
            checkpoints.clear()
        }
    }

    fun awaitSubmittedWork(label: String, checkGlError: (String) -> Unit): Long {
        val sync = GLES30.glFenceSync(GLES30.GL_SYNC_GPU_COMMANDS_COMPLETE, 0)
        check(sync != 0L) { "Unable to create GPU completion fence for $label" }
        GLES30.glFlush()
        try {
            val waitMs = awaitSync(sync, label)
            checkGlError("GPU completion fence $label")
            return waitMs
        } finally {
            GLES30.glDeleteSync(sync)
        }
    }

    internal fun awaitSync(sync: Long, label: String): Long {
        val startNs = System.nanoTime()
        while (true) {
            when (
                GLES30.glClientWaitSync(
                    sync,
                    GLES30.GL_SYNC_FLUSH_COMMANDS_BIT,
                    WAIT_SLICE_NS,
                )
            ) {
                GLES30.GL_ALREADY_SIGNALED,
                GLES30.GL_CONDITION_SATISFIED -> break

                GLES30.GL_TIMEOUT_EXPIRED -> Unit
                GLES30.GL_WAIT_FAILED -> error("GPU completion wait failed for $label")
                else -> error("Unexpected GPU completion wait result for $label")
            }
        }
        return (System.nanoTime() - startNs) / 1_000_000L
    }
}
