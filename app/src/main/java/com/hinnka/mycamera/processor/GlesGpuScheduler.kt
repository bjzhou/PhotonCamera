package com.hinnka.mycamera.processor

import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.GLES30
import android.opengl.GLES31
import android.os.Process
import com.hinnka.mycamera.utils.PLog
import java.util.ArrayDeque

object GlesGpuScheduler {
    private const val EGL_CONTEXT_MINOR_VERSION_KHR = 0x30FB
    private const val EGL_CONTEXT_PRIORITY_LEVEL_IMG = 0x3100
    private const val EGL_CONTEXT_PRIORITY_LOW_IMG = 0x3103
    private const val EGL_IMG_CONTEXT_PRIORITY = "EGL_IMG_context_priority"
    private const val GPU_CHECKPOINT_WAIT_NS = 1_000_000L
    private const val GPU_CHECKPOINT_SLEEP_MS = 1L
    private const val GPU_UI_BREATHING_ROOM_MS = 2L

    /**
     * Keeps independent GPU passes in flight without queuing a consumer behind its producer.
     *
     * Mali drivers can fail to retire a producer fence when a dependent consumer has already
     * been submitted after it. Resource declarations let the scheduler retire every conflicting
     * producer before the consumer is encoded, while unrelated passes still share the window.
     */
    class PassWindow(
        private val tag: String,
        private val maxInFlight: Int = 2,
    ) {
        private data class PendingPass(
            val label: String,
            val sync: Long,
            val reads: LongArray,
            val writes: LongArray,
        )

        private data class ActivePass(
            val label: String,
            val reads: LongArray,
            val writes: LongArray,
        )

        private val pending = ArrayDeque<PendingPass>(maxInFlight)
        private var activePass: ActivePass? = null

        init {
            require(maxInFlight > 0) { "GPU pass window capacity must be positive" }
        }

        fun beginPass(
            label: String,
            reads: LongArray = longArrayOf(),
            writes: LongArray = longArrayOf(),
        ) {
            check(activePass == null) {
                "GPU pass ${activePass?.label ?: "unknown"} was not ended before $label"
            }

            var newestConflictIndex = -1
            pending.forEachIndexed { index, pass ->
                if (hasHazard(pass, reads, writes)) {
                    newestConflictIndex = index
                }
            }
            if (newestConflictIndex >= 0) {
                waitThrough(newestConflictIndex, label, "resource hazard")
            }
            if (pending.size >= maxInFlight) {
                waitThrough(0, label, "window full")
            }
            activePass = ActivePass(label, reads.copyOf(), writes.copyOf())
        }

        fun endPass() {
            val pass = checkNotNull(activePass) { "GPU pass ended without beginPass" }
            activePass = null
            val sync = GLES30.glFenceSync(GLES30.GL_SYNC_GPU_COMMANDS_COMPLETE, 0)
            if (sync == 0L) {
                PLog.w(tag, "Failed to allocate GPU pass fence label=${pass.label}; completing queue")
                GLES30.glFinish()
                deletePendingFences()
                return
            }
            pending.addLast(PendingPass(pass.label, sync, pass.reads, pass.writes))
        }

        /**
         * Retires pending users before a texture or buffer is overwritten, recycled, or deleted.
         */
        fun awaitResources(label: String, resources: LongArray) {
            check(activePass == null) {
                "Cannot retire resources while ${activePass?.label ?: "a pass"} is active"
            }
            var newestUserIndex = -1
            pending.forEachIndexed { index, pass ->
                if (intersects(resources, pass.reads) || intersects(resources, pass.writes)) {
                    newestUserIndex = index
                }
            }
            if (newestUserIndex >= 0) {
                waitThrough(newestUserIndex, label, "resource retirement")
            }
        }

        /**
         * Use after a later component/tile checkpoint has completed every command in this window.
         */
        fun clearAfterCheckpoint() {
            check(activePass == null) {
                "Cannot clear GPU pass window while ${activePass?.label ?: "a pass"} is active"
            }
            deletePendingFences()
        }

        /**
         * Completes outstanding passes before their resources or GL context are destroyed.
         */
        fun drain(label: String) {
            if (activePass != null) {
                PLog.w(
                    tag,
                    "GPU pass window draining with an unterminated pass " +
                        "active=${activePass?.label} boundary=$label",
                )
                GLES30.glFinish()
                activePass = null
                deletePendingFences()
                return
            }
            while (pending.isNotEmpty()) {
                waitThrough(0, label, "drain")
            }
        }

        private fun waitThrough(index: Int, nextLabel: String, reason: String) {
            val target = pending.elementAt(index)
            try {
                var flags = GLES30.GL_SYNC_FLUSH_COMMANDS_BIT
                var result: Int
                do {
                    result = GLES30.glClientWaitSync(
                        target.sync,
                        flags,
                        GPU_CHECKPOINT_WAIT_NS,
                    )
                    flags = 0
                } while (result == GLES30.GL_TIMEOUT_EXPIRED)

                if (result == GLES30.GL_WAIT_FAILED) {
                    PLog.w(
                        tag,
                        "GPU pass window wait failed target=${target.label} next=$nextLabel " +
                            "reason=$reason",
                    )
                    GLES30.glFinish()
                }
            } catch (e: RuntimeException) {
                PLog.w(
                    tag,
                    "GPU pass window wait threw target=${target.label} next=$nextLabel " +
                        "reason=$reason",
                    e,
                )
                GLES30.glFinish()
            } finally {
                repeat(index + 1) {
                    GLES30.glDeleteSync(pending.removeFirst().sync)
                }
            }
        }

        private fun hasHazard(
            pendingPass: PendingPass,
            reads: LongArray,
            writes: LongArray,
        ): Boolean {
            return intersects(reads, pendingPass.writes) ||
                intersects(writes, pendingPass.reads) ||
                intersects(writes, pendingPass.writes)
        }

        private fun intersects(first: LongArray, second: LongArray): Boolean {
            for (left in first) {
                if (left == NO_RESOURCE) continue
                for (right in second) {
                    if (left == right) return true
                }
            }
            return false
        }

        private fun deletePendingFences() {
            while (pending.isNotEmpty()) {
                GLES30.glDeleteSync(pending.removeFirst().sync)
            }
        }
    }

    private const val NO_RESOURCE = 0L
    private const val BUFFER_RESOURCE_NAMESPACE = 1L shl 32

    fun textureResource(texture: Int): Long {
        return if (texture == 0) NO_RESOURCE else texture.toLong() and 0xffff_ffffL
    }

    fun bufferResource(buffer: Int): Long {
        return if (buffer == 0) {
            NO_RESOURCE
        } else {
            BUFFER_RESOURCE_NAMESPACE or (buffer.toLong() and 0xffff_ffffL)
        }
    }

    /**
     * VGN/Radiance is a long mixed image/sampler/framebuffer dependency chain. Keep one
     * conservative visibility contract on every driver; scheduling and resource lifetime are
     * optimized independently.
     */
    fun memoryBarrier() {
        GLES31.glMemoryBarrier(GLES31.GL_ALL_BARRIER_BITS)
    }

    fun createBackgroundContext(display: EGLDisplay, config: EGLConfig, tag: String): EGLContext {
        if (supportsLowPriorityContext(display)) {
            val lowPriorityContext = EGL14.eglCreateContext(
                display,
                config,
                EGL14.EGL_NO_CONTEXT,
                intArrayOf(
                    EGL14.EGL_CONTEXT_CLIENT_VERSION,
                    3,
                    EGL_CONTEXT_MINOR_VERSION_KHR,
                    1,
                    EGL_CONTEXT_PRIORITY_LEVEL_IMG,
                    EGL_CONTEXT_PRIORITY_LOW_IMG,
                    EGL14.EGL_NONE,
                ),
                0,
            )
            if (lowPriorityContext != EGL14.EGL_NO_CONTEXT) {
                return lowPriorityContext
            }
            EGL14.eglGetError()
        }

        val context31 = EGL14.eglCreateContext(
            display,
            config,
            EGL14.EGL_NO_CONTEXT,
            intArrayOf(
                EGL14.EGL_CONTEXT_CLIENT_VERSION,
                3,
                EGL_CONTEXT_MINOR_VERSION_KHR,
                1,
                EGL14.EGL_NONE,
            ),
            0,
        )
        if (context31 != EGL14.EGL_NO_CONTEXT) {
            return context31
        }
        EGL14.eglGetError()

        return EGL14.eglCreateContext(
            display,
            config,
            EGL14.EGL_NO_CONTEXT,
            intArrayOf(EGL14.EGL_CONTEXT_CLIENT_VERSION, 3, EGL14.EGL_NONE),
            0,
        )
    }

    fun lowerCurrentThreadPriority(tag: String): Int? {
        return try {
            val tid = Process.myTid()
            val originalPriority = Process.getThreadPriority(tid)
            if (originalPriority < Process.THREAD_PRIORITY_BACKGROUND) {
                Process.setThreadPriority(tid, Process.THREAD_PRIORITY_BACKGROUND)
            }
            originalPriority
        } catch (e: RuntimeException) {
            PLog.w(tag, "Failed to lower GLES stacker thread priority", e)
            null
        }
    }

    fun restoreCurrentThreadPriority(originalPriority: Int?, tag: String) {
        if (originalPriority == null) return
        try {
            Process.setThreadPriority(Process.myTid(), originalPriority)
        } catch (e: RuntimeException) {
            PLog.w(tag, "Failed to restore GLES stacker thread priority", e)
        }
    }

    fun yieldToUiRenderer() {
        GLES30.glFlush()
        Thread.yield()
    }

    fun waitForGpuCheckpoint(tag: String, label: String) {
        val sync = GLES30.glFenceSync(GLES30.GL_SYNC_GPU_COMMANDS_COMPLETE, 0)
        if (sync == 0L) {
            yieldToUiRenderer()
            return
        }
        try {
            var flags = GLES30.GL_SYNC_FLUSH_COMMANDS_BIT
            var result: Int
            do {
                result = GLES30.glClientWaitSync(sync, flags, GPU_CHECKPOINT_WAIT_NS)
                flags = 0
                if (result == GLES30.GL_TIMEOUT_EXPIRED) {
                    try {
                        Thread.sleep(GPU_CHECKPOINT_SLEEP_MS)
                    } catch (e: InterruptedException) {
                        Thread.currentThread().interrupt()
                        break
                    }
                }
            } while (result == GLES30.GL_TIMEOUT_EXPIRED)

            if (result == GLES30.GL_WAIT_FAILED) {
                PLog.w(tag, "GLES background GPU checkpoint $label failed")
            }
        } catch (e: RuntimeException) {
            PLog.w(tag, "Failed to wait for GLES background checkpoint $label", e)
        } finally {
            GLES30.glDeleteSync(sync)
            try {
                Thread.sleep(GPU_UI_BREATHING_ROOM_MS)
            } catch (e: InterruptedException) {
                Thread.currentThread().interrupt()
            }
        }
    }

    private fun supportsLowPriorityContext(display: EGLDisplay): Boolean {
        return EGL14.eglQueryString(display, EGL14.EGL_EXTENSIONS)
            ?.split(' ')
            ?.contains(EGL_IMG_CONTEXT_PRIORITY) == true
    }
}
