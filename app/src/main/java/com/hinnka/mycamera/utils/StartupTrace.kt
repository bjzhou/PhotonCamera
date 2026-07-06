package com.hinnka.mycamera.utils

import android.os.Process
import android.os.SystemClock
import java.util.concurrent.atomic.AtomicBoolean

object StartupTrace {
    private const val TAG = "StartupTrace"
    const val ENABLED = false
    private val processStartElapsedMs = Process.getStartElapsedRealtime()
    private val fullyDrawnReported = AtomicBoolean(false)

    fun mark(stage: String, detail: String? = null) {
        if (!ENABLED) return
        val sinceProcessStart = SystemClock.elapsedRealtime() - processStartElapsedMs
        val suffix = detail?.takeIf { it.isNotBlank() }?.let { " | $it" } ?: ""
        PLog.i(TAG, "$stage @ ${sinceProcessStart}ms$suffix")
    }

    inline fun <T> measure(stage: String, detail: String? = null, block: () -> T): T {
        if (!ENABLED) return block()
        val start = SystemClock.elapsedRealtime()
        return try {
            block()
        } finally {
            val duration = SystemClock.elapsedRealtime() - start
            val suffix = detail?.takeIf { it.isNotBlank() }?.let { " | $it" } ?: ""
            mark("$stage finished in ${duration}ms", suffix)
        }
    }

    fun reportFullyDrawn(stage: String) {
        if (!ENABLED) return
        if (fullyDrawnReported.compareAndSet(false, true)) {
            mark(stage)
        }
    }
}
