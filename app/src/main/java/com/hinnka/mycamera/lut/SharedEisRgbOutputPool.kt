package com.hinnka.mycamera.lut

import android.hardware.HardwareBuffer
import android.opengl.GLES30
import com.hinnka.mycamera.processor.GlesHardwareBufferImage

/** Recording-thread targets: one preview in flight, one pending, and one producer slot. */
internal class SharedEisRgbOutputPool(private val width: Int, private val height: Int) : AutoCloseable {
    private val slots = mutableListOf<Slot>()
    private var closed = false

    fun acquire(): Lease? {
        check(!closed)
        slots.firstOrNull { it.acquire() }?.let { return Lease(it) }
        if (slots.size == 3) return null
        val slot = Slot()
        slots += slot
        check(slot.acquire())
        return Lease(slot)
    }

    inner class Lease internal constructor(private val slot: Slot) : AutoCloseable {
        val target get() = slot.target
        private var transferred = false

        fun finish(timestampNs: Long): SharedEisRgbFrame {
            check(!transferred)
            val ready = GlSamplingFence.insert()
            GLES30.glFlush()
            transferred = true
            return SharedEisRgbFrame(slot.buffer, timestampNs, width, height, ready, slot::releaseLease)
        }

        override fun close() {
            if (!transferred) slot.releaseLease()
        }
    }

    internal inner class Slot {
        val buffer = HardwareBuffer.create(
            width, height, HardwareBuffer.RGBA_8888, 1,
            HardwareBuffer.USAGE_GPU_COLOR_OUTPUT or HardwareBuffer.USAGE_GPU_SAMPLED_IMAGE,
        )
        private var imageHandle = 0L
        private var textureId = 0
        private var framebufferId = 0
        private var leased = false
        private var retired = false
        val target get() = MgcEisRenderer.OutputTarget(textureId, framebufferId, width, height)

        init {
            try {
                imageHandle = GlesHardwareBufferImage.create(buffer)
                check(imageHandle != 0L) { "Cannot import EIS RGB output buffer" }
                val ids = IntArray(1)
                GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
                GLES30.glGenTextures(1, ids, 0)
                textureId = ids[0]
                check(GlesHardwareBufferImage.bind2D(imageHandle, textureId)) { "Cannot bind EIS RGB output" }
                GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
                GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
                GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
                GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
                GLES30.glGenFramebuffers(1, ids, 0)
                framebufferId = ids[0]
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
                GLES30.glFramebufferTexture2D(
                    GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, textureId, 0,
                )
                check(GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) == GLES30.GL_FRAMEBUFFER_COMPLETE) {
                    "EIS RGB output framebuffer incomplete"
                }
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            } catch (error: Throwable) {
                retire()
                throw error
            }
        }

        @Synchronized
        fun acquire(): Boolean {
            if (retired || leased) return false
            leased = true
            return true
        }

        @Synchronized
        fun releaseLease() {
            check(leased)
            leased = false
            if (retired) buffer.close()
        }

        /** Producer GL names are local; a preview lease retains its own EGLImage import. */
        @Synchronized
        fun retire() {
            if (retired) return
            retired = true
            if (framebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebufferId), 0)
            if (textureId != 0) GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
            if (imageHandle != 0L) GlesHardwareBufferImage.destroy(imageHandle)
            framebufferId = 0
            textureId = 0
            imageHandle = 0L
            if (!leased) buffer.close()
        }
    }

    override fun close() {
        if (closed) return
        closed = true
        // Complete any encoder sampling before retiring producer-side imports.
        GLES30.glFinish()
        slots.forEach { it.retire() }
        slots.clear()
    }
}
