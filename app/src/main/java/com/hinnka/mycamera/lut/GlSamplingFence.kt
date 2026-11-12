package com.hinnka.mycamera.lut

import android.opengl.EGL14
import android.opengl.EGL15
import android.opengl.EGLDisplay
import android.opengl.EGLSync
import android.opengl.GLES30
import java.util.concurrent.atomic.AtomicBoolean

/** A GPU completion lease; the originating display must outlive the lease. */
internal class GlSamplingFence private constructor(
    private val display: EGLDisplay,
    private val sync: EGLSync,
) : AutoCloseable {
    private val closed = AtomicBoolean(false)

    fun await() {
        check(!closed.get())
        if (sync == EGL15.EGL_NO_SYNC) return
        val result = EGL15.eglClientWaitSync(
            display, sync, EGL15.EGL_SYNC_FLUSH_COMMANDS_BIT, EGL15.EGL_FOREVER,
        )
        if (result != EGL15.EGL_CONDITION_SATISFIED) {
            // Keep a failed consumer wait from returning a buffer still sampled by this context.
            GLES30.glFinish()
            error("GPU sampling fence wait failed: $result")
        }
    }

    override fun close() {
        if (closed.compareAndSet(false, true) && sync != EGL15.EGL_NO_SYNC) {
            EGL15.eglDestroySync(display, sync)
        }
    }

    companion object {
        fun insert(): GlSamplingFence {
            val display = EGL14.eglGetCurrentDisplay()
            val sync = if (display == EGL14.EGL_NO_DISPLAY) EGL15.EGL_NO_SYNC else {
                EGL15.eglCreateSync(display, EGL15.EGL_SYNC_FENCE, longArrayOf(EGL14.EGL_NONE.toLong()), 0)
            }
            if (sync == EGL15.EGL_NO_SYNC) GLES30.glFinish()
            return GlSamplingFence(display, sync)
        }
    }
}
